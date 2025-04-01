module dcfifo_mixed #(
    parameter WIDTH_IN = 512,        // Width of input data
    parameter WIDTH_OUT = 128,       // Width of output data
    parameter DEPTH = 8,             // FIFO depth (in write-width words)
    parameter EXTRA_SYNC_STAGES = 0, // Additional synchronization stages
    parameter SHOWAHEAD = "OFF",     // Show-ahead mode ("ON"/"OFF")
    parameter ADDR_WIDTH = 3,        // Address width for depth, log2(DEPTH)
    parameter RD_ADDR_WIDTH = 5,     // Read address width for mixed width
    parameter RATIO = 4              // WIDTH_IN/WIDTH_OUT (must be power of 2)
)(
    input                       aclr,
    input  [WIDTH_IN-1:0]       data,
    input                       rdclk,
    input                       rdreq,
    input                       wrclk,
    input                       wrreq,
    output reg [WIDTH_OUT-1:0]  q,
    output                      rdempty,
    output                      wrfull,
    output     [ADDR_WIDTH:0]   wrusedw
);
    // Memory array to store data
    reg [WIDTH_IN-1:0] mem [0:(1<<ADDR_WIDTH)-1];
    
    // Write domain pointers
    reg [ADDR_WIDTH:0] wr_ptr_bin = 0;
    reg [ADDR_WIDTH:0] wr_ptr_gray = 0;
    
    // Read domain pointers (wider to account for sub-word addressing)
    reg [RD_ADDR_WIDTH:0] rd_ptr_bin = 0;
    reg [RD_ADDR_WIDTH:0] rd_ptr_gray = 0;
    
    // Synchronized pointers (2 stages + extra)
    reg [ADDR_WIDTH:0] rd_ptr_gray_sync1 = 0;
    reg [ADDR_WIDTH:0] rd_ptr_gray_sync2 = 0;
    reg [ADDR_WIDTH:0] rd_ptr_gray_sync3 = 0;
    reg [RD_ADDR_WIDTH:0] wr_ptr_gray_sync1 = 0;
    reg [RD_ADDR_WIDTH:0] wr_ptr_gray_sync2 = 0;
    reg [RD_ADDR_WIDTH:0] wr_ptr_gray_sync3 = 0;
    
    // Read and write signals
    wire rdreq_allowed;
    wire wrreq_allowed;
    
    // Temp signals
    wire [ADDR_WIDTH:0] wr_ptr_gray_next;
    wire [RD_ADDR_WIDTH:0] rd_ptr_gray_next;
    reg [ADDR_WIDTH:0] rd_ptr_gray_sync;
    reg [RD_ADDR_WIDTH:0] wr_ptr_gray_sync;
    reg [ADDR_WIDTH:0] rd_ptr_bin_sync;  // Scaled for write domain
    
    // Binary to Gray code conversion
    assign wr_ptr_gray_next = (wr_ptr_bin + wrreq_allowed) ^ ((wr_ptr_bin + wrreq_allowed) >> 1);
    assign rd_ptr_gray_next = (rd_ptr_bin + rdreq_allowed) ^ ((rd_ptr_bin + rdreq_allowed) >> 1);
    
    // Domain conversion for pointers
    wire [ADDR_WIDTH:0] rd_ptr_bin_scaled;
    assign rd_ptr_bin_scaled = rd_ptr_bin / RATIO; // Scale for comparison
    
    // Select appropriate sync stage based on parameter
    always @(*) begin
        if (EXTRA_SYNC_STAGES == 0) begin
            wr_ptr_gray_sync = wr_ptr_gray_sync2;
            rd_ptr_gray_sync = rd_ptr_gray_sync2;
        end else begin
            wr_ptr_gray_sync = wr_ptr_gray_sync3;
            rd_ptr_gray_sync = rd_ptr_gray_sync3;
        end
    end
    
    // Gray code to binary converter for read pointer in write domain
    always @(*) begin
        rd_ptr_bin_sync = 0;
        rd_ptr_bin_sync[ADDR_WIDTH] = rd_ptr_gray_sync[ADDR_WIDTH];
        rd_ptr_bin_sync[ADDR_WIDTH-1] = rd_ptr_gray_sync[ADDR_WIDTH-1] ^ rd_ptr_bin_sync[ADDR_WIDTH];
        if (ADDR_WIDTH > 1) 
            rd_ptr_bin_sync[ADDR_WIDTH-2] = rd_ptr_gray_sync[ADDR_WIDTH-2] ^ rd_ptr_bin_sync[ADDR_WIDTH-1];
        if (ADDR_WIDTH > 2) 
            rd_ptr_bin_sync[ADDR_WIDTH-3] = rd_ptr_gray_sync[ADDR_WIDTH-3] ^ rd_ptr_bin_sync[ADDR_WIDTH-2];
        if (ADDR_WIDTH > 3) 
            rd_ptr_bin_sync[ADDR_WIDTH-4] = rd_ptr_gray_sync[ADDR_WIDTH-4] ^ rd_ptr_bin_sync[ADDR_WIDTH-3];
        // Can add more bits if needed
    end
    
    // FIFO status flags (adjusted for mixed width)
    assign rdempty = (rd_ptr_bin == (wr_ptr_bin * RATIO));
    assign wrfull = ((wr_ptr_bin[ADDR_WIDTH-1:0] == rd_ptr_bin_sync[ADDR_WIDTH-1:0]) && 
                    (wr_ptr_bin[ADDR_WIDTH] != rd_ptr_bin_sync[ADDR_WIDTH]));
    
    // FIFO usage counter (for write side)
    assign wrusedw = wr_ptr_bin - rd_ptr_bin_sync;
    
    // Control signals
    assign wrreq_allowed = wrreq && !wrfull;
    assign rdreq_allowed = rdreq && !rdempty;
    
    // Write logic
    always @(posedge wrclk or posedge aclr) begin
        if (aclr) begin
            wr_ptr_bin <= 0;
            wr_ptr_gray <= 0;
        end else begin
            if (wrreq_allowed) begin
                mem[wr_ptr_bin[ADDR_WIDTH-1:0]] <= data;
                wr_ptr_bin <= wr_ptr_bin + 1'b1;
                wr_ptr_gray <= wr_ptr_gray_next;
            end
        end
    end
    
    // Read logic with width conversion
    reg [WIDTH_IN-1:0] read_data;
    reg [RD_ADDR_WIDTH-ADDR_WIDTH-1:0] word_offset;
    
    // Extract sub-word based on read pointer
    always @(*) begin
        word_offset = rd_ptr_bin[RD_ADDR_WIDTH-1:0] & (RATIO - 1);  // Get lower bits
        read_data = mem[rd_ptr_bin[RD_ADDR_WIDTH-1:ADDR_WIDTH-ADDR_WIDTH]];
        
        case (word_offset)
            2'b00: q = read_data[WIDTH_OUT-1:0];
            2'b01: q = read_data[2*WIDTH_OUT-1:WIDTH_OUT];
            2'b10: q = read_data[3*WIDTH_OUT-1:2*WIDTH_OUT];
            2'b11: q = read_data[4*WIDTH_OUT-1:3*WIDTH_OUT];
        endcase
    end
    
    // Read pointer update
    always @(posedge rdclk or posedge aclr) begin
        if (aclr) begin
            rd_ptr_bin <= 0;
            rd_ptr_gray <= 0;
        end else begin
            if (rdreq_allowed) begin
                rd_ptr_bin <= rd_ptr_bin + 1'b1;
                rd_ptr_gray <= rd_ptr_gray_next;
            end
        end
    end
    
    // Synchronize write pointer to read domain
    always @(posedge rdclk or posedge aclr) begin
        if (aclr) begin
            wr_ptr_gray_sync1 <= 0;
            wr_ptr_gray_sync2 <= 0;
            wr_ptr_gray_sync3 <= 0;
        end else begin
            wr_ptr_gray_sync1 <= wr_ptr_gray * RATIO;  // Scale for read domain
            wr_ptr_gray_sync2 <= wr_ptr_gray_sync1;
            if (EXTRA_SYNC_STAGES > 0)
                wr_ptr_gray_sync3 <= wr_ptr_gray_sync2;
        end
    end
    
    // Synchronize read pointer to write domain
    always @(posedge wrclk or posedge aclr) begin
        if (aclr) begin
            rd_ptr_gray_sync1 <= 0;
            rd_ptr_gray_sync2 <= 0;
            rd_ptr_gray_sync3 <= 0;
        end else begin
            rd_ptr_gray_sync1 <= rd_ptr_gray / RATIO;  // Scale for write domain
            rd_ptr_gray_sync2 <= rd_ptr_gray_sync1;
            if (EXTRA_SYNC_STAGES > 0)
                rd_ptr_gray_sync3 <= rd_ptr_gray_sync2;
        end
    end

endmodule