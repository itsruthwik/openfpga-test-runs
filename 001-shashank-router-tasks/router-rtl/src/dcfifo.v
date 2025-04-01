module dcfifo #(
    parameter WIDTH = 32,            // Data width
    parameter DEPTH = 8,             // FIFO depth
    parameter EXTRA_SYNC_STAGES = 0, // Additional synchronization stages
    parameter SHOWAHEAD = "OFF",     // Show-ahead mode ("ON"/"OFF")
    parameter FORCE_MLAB = 0,        // Ignored (for compatibility)
    parameter ADDR_WIDTH = 3         // Address width for depth, log2(DEPTH)
)(
    input                        aclr,
    input      [WIDTH-1:0]       data,
    input                        rdclk,
    input                        rdreq,
    input                        wrclk,
    input                        wrreq,
    output reg [WIDTH-1:0]       q,
    output                       rdempty,
    output                       wrfull,
    output     [ADDR_WIDTH:0]    wrusedw
);
    // Memory array to store data
    reg [WIDTH-1:0] mem [0:(1<<ADDR_WIDTH)-1];
    
    // Pointers in binary and gray code
    reg [ADDR_WIDTH:0] wr_ptr_bin = 0;
    reg [ADDR_WIDTH:0] rd_ptr_bin = 0;
    reg [ADDR_WIDTH:0] wr_ptr_gray = 0;
    reg [ADDR_WIDTH:0] rd_ptr_gray = 0;
    
    // Synchronized pointers (2 stages + extra)
    reg [ADDR_WIDTH:0] wr_ptr_gray_sync1 = 0;
    reg [ADDR_WIDTH:0] wr_ptr_gray_sync2 = 0;
    reg [ADDR_WIDTH:0] wr_ptr_gray_sync3 = 0;
    reg [ADDR_WIDTH:0] rd_ptr_gray_sync1 = 0;
    reg [ADDR_WIDTH:0] rd_ptr_gray_sync2 = 0;
    reg [ADDR_WIDTH:0] rd_ptr_gray_sync3 = 0;
    
    // Read and write signals
    wire rdreq_allowed;
    wire wrreq_allowed;
    
    // Temp signals
    wire [ADDR_WIDTH:0] wr_ptr_gray_next;
    wire [ADDR_WIDTH:0] rd_ptr_gray_next;
    reg  [ADDR_WIDTH:0] rd_ptr_gray_sync;
    reg  [ADDR_WIDTH:0] wr_ptr_gray_sync;
    reg  [ADDR_WIDTH:0] rd_ptr_bin_sync;
    
    // Binary to Gray code conversion
    assign wr_ptr_gray_next = (wr_ptr_bin + wrreq_allowed) ^ ((wr_ptr_bin + wrreq_allowed) >> 1);
    assign rd_ptr_gray_next = (rd_ptr_bin + rdreq_allowed) ^ ((rd_ptr_bin + rdreq_allowed) >> 1);
    
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
    
    // FIFO status flags
    assign rdempty = (rd_ptr_gray == wr_ptr_gray_sync);
    assign wrfull = ((wr_ptr_gray[ADDR_WIDTH] != rd_ptr_gray_sync[ADDR_WIDTH]) && 
                    (wr_ptr_gray[ADDR_WIDTH-1:0] == rd_ptr_gray_sync[ADDR_WIDTH-1:0]));
    
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
    
    // Read logic
    always @(posedge rdclk or posedge aclr) begin
        if (aclr) begin
            rd_ptr_bin <= 0;
            rd_ptr_gray <= 0;
            q <= 0;
        end else begin
            if (SHOWAHEAD == "ON" && !rdempty) begin
                q <= mem[rd_ptr_bin[ADDR_WIDTH-1:0]];
            end else if (rdreq_allowed) begin
                q <= mem[rd_ptr_bin[ADDR_WIDTH-1:0]];
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
            wr_ptr_gray_sync1 <= wr_ptr_gray;
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
            rd_ptr_gray_sync1 <= rd_ptr_gray;
            rd_ptr_gray_sync2 <= rd_ptr_gray_sync1;
            if (EXTRA_SYNC_STAGES > 0)
                rd_ptr_gray_sync3 <= rd_ptr_gray_sync2;
        end
    end

endmodule