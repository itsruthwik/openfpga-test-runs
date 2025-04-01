module scfifo #(
    // Parameters
parameter WIDTH = 32,          // Data width
parameter DEPTH = 8,           // FIFO depth
parameter FORCE_MLAB = 0,      // Ignored (for compatibility)
parameter ADDR_WIDTH = 3      // Address width, hardcoded for DEPTH=8

) (
    clock,
    data,
    rdreq,
    sclr,
    wrreq,
    empty,
    full,
    q
);


    // Ports
    input                       clock;
    input      [WIDTH-1:0]      data;
    input                       rdreq;
    input                       sclr;
    input                       wrreq;
    output                      empty;
    output                      full;
    output     [WIDTH-1:0]      q;

    // Internal registers
    reg [WIDTH-1:0] mem [(1<<ADDR_WIDTH)-1:0];
    reg [ADDR_WIDTH:0] wr_ptr;         // Extra bit for full/empty detection
    reg [ADDR_WIDTH:0] rd_ptr;         // Extra bit for full/empty detection
    reg [WIDTH-1:0] q_reg;

    // Status flags
    reg empty_reg, full_reg;
    
    // Output assignments
    assign q = q_reg;
    assign empty = empty_reg;
    assign full = full_reg;
    
    // FIFO status
    wire empty_condition = (wr_ptr == rd_ptr);
    wire full_condition = ((wr_ptr[ADDR_WIDTH-1:0] == rd_ptr[ADDR_WIDTH-1:0]) && 
                          (wr_ptr[ADDR_WIDTH] != rd_ptr[ADDR_WIDTH]));
    
    // Combinational logic for status flags
    always @(posedge clock) begin
        if (sclr) begin
            empty_reg <= 1'b1;
            full_reg <= 1'b0;
        end else begin
            empty_reg <= empty_condition;
            full_reg <= full_condition;
        end
    end
    
    // Write operation
    always @(posedge clock) begin
        if (sclr) begin
            wr_ptr <= 0;
        end else if (wrreq && !full_reg) begin
            mem[wr_ptr[ADDR_WIDTH-1:0]] <= data;
            wr_ptr <= wr_ptr + 1'b1;
        end
    end
    
    // Read operation
    always @(posedge clock) begin
        if (sclr) begin
            rd_ptr <= 0;
            q_reg <= 0;
        end else if (rdreq && !empty_reg) begin
            q_reg <= mem[rd_ptr[ADDR_WIDTH-1:0]];
            rd_ptr <= rd_ptr + 1'b1;
        end
    end
    
endmodule