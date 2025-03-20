module scfifo #(
    parameter lpm_width = 32,                        // Data width
    parameter lpm_numwords = 4,                      // FIFO depth
    parameter lpm_showahead = "OFF",                 // Read mode: "OFF" = normal, "ON" = show-ahead
    parameter add_ram_output_register = "ON",        // Add output register
    parameter enable_ecc = "FALSE",                  // Enable ECC (unused)
    parameter intended_device_family = "Agilex 7",   // Target device family
    parameter lpm_hint = "RAM_BLOCK_TYPE=AUTO",      // Memory type hint
    parameter overflow_checking = "OFF",             // Overflow checking (disabled)
    parameter underflow_checking = "OFF",            // Underflow checking (disabled)
    parameter use_eab = "ON",                        // Use embedded memory
    parameter lpm_type = "scfifo",                   // Module type (fixed)
    parameter lpm_widthu = $clog2(lpm_numwords)       // Address width (derived)
) (
    input  wire                   clock,           // Clock
    input  wire [lpm_width-1:0]   data,            // Input data
    input  wire                   rdreq,           // Read request
    input  wire                   sclr,            // Synchronous clear
    input  wire                   wrreq,           // Write request
    input  wire                   aclr,            // Asynchronous clear
    output wire                   empty,           // Empty flag
    output wire                   full,            // Full flag
    output wire [lpm_width-1:0]   q,               // FIFO output data
    output wire                   almost_empty,    // Almost empty flag
    output wire                   almost_full,     // Almost full flag
    output wire [1:0]             eccstatus,       // ECC status (always 0)
    output wire [lpm_widthu-1:0]  usedw            // Number of used words
);

    // Extended pointer width: one extra bit for wrap detection
    localparam ADDR_WIDTH = lpm_widthu;

    // Internal FIFO memory
    reg [lpm_width-1:0] mem [0:lpm_numwords-1];

    // Write and read pointers with one extra bit for full/empty detection
    reg [ADDR_WIDTH:0] wr_ptr;  // Range: 0 .. (lpm_numwords*2 - 1)
    reg [ADDR_WIDTH:0] rd_ptr;

    // Output register; used if add_ram_output_register == "ON"
    reg [lpm_width-1:0] q_reg;

    // Calculate internal flags
    wire empty_int = (wr_ptr == rd_ptr);
    wire full_int  = (wr_ptr[ADDR_WIDTH-1:0] == rd_ptr[ADDR_WIDTH-1:0]) &&
                     (wr_ptr[ADDR_WIDTH] != rd_ptr[ADDR_WIDTH]);

    // Compute used words count (from pointers)
    wire [ADDR_WIDTH:0] used_words = (wr_ptr >= rd_ptr) ? (wr_ptr - rd_ptr)
                                   : (lpm_numwords + wr_ptr - rd_ptr);

    // Output assignments
    assign empty = empty_int;
    assign full  = full_int;
    assign usedw = used_words[ADDR_WIDTH-1:0];
    assign eccstatus = 2'b00;
    assign almost_empty = (used_words <= 1);
    assign almost_full  = (used_words >= (lpm_numwords - 1));

    // Write pointer and memory update
    always @(posedge clock or posedge aclr) begin
        if (aclr) begin
            wr_ptr <= 0;
        end
        else if (sclr) begin
            wr_ptr <= 0;
        end
        else if (wrreq && !full_int) begin
            mem[wr_ptr[ADDR_WIDTH-1:0]] <= data;
            wr_ptr <= wr_ptr + 1'b1;
        end
    end

    // Read pointer and output update
    always @(posedge clock or posedge aclr) begin
        if (aclr) begin
            rd_ptr <= 0;
            q_reg  <= {lpm_width{1'b0}};
        end
        else if (sclr) begin
            rd_ptr <= 0;
            q_reg  <= {lpm_width{1'b0}};
        end
        else begin
            // When a read request occurs and FIFO isn't empty, update pointer and (conditionally) output
            if (rdreq && !empty_int) begin
                rd_ptr <= rd_ptr + 1'b1;
                if ((lpm_showahead == "OFF") || (add_ram_output_register == "ON"))
                    q_reg <= mem[rd_ptr[ADDR_WIDTH-1:0]];
            end
            // For show-ahead mode without an output register, continuously drive output
            if ((lpm_showahead == "ON") && !empty_int && (add_ram_output_register == "OFF")) begin
                q_reg <= mem[rd_ptr[ADDR_WIDTH-1:0]];
            end
        end
    end

    // Drive FIFO output depending on configuration
    generate
      if (add_ram_output_register == "ON")
         assign q = q_reg;
      else
         // When no output register, directly drive from memory
         assign q = mem[rd_ptr[ADDR_WIDTH-1:0]];
    endgenerate

endmodule