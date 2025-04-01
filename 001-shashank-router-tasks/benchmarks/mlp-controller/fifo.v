/**
FIFO Module
A peek FIFO implementation

Parameters:
DATAW: Width of data word
DEPTH: Depth of the FIFO
ADDRW: Width of FIFO address for pointer use
ALMOST_FULL_DEPTH: Depth of the FIFO at which the almost_full signal is asserted

Inputs:
push: Signal to push data to the FIFO
idata: Input Data
pop: Siginal to pop data from the FIFO

Outputs:
odata: Output Data
empty: Signal asserted when FIFO is empty
full: Signal asserted when FIFO is full
almost_full: Signal asserted when FIFO is almost full defined by ALMOST_FULL_DEPTH
**/
module fifo # (
    parameter DATAW = 32,
    parameter DEPTH = 64,
    parameter ADDRW = 6,
    parameter ALMOST_FULL_DEPTH =51
)(
    input  clk,
    input  rst,
    input  push,
    input  [DATAW-1:0] idata,
    input  pop,
    output [DATAW-1:0] odata,
    output empty,
    output full,
    output almost_full
);

// Flat memory vector instead of 2D array
reg [DEPTH*DATAW-1:0] mem;
reg [ADDRW-1:0] head_ptr, tail_ptr;
reg [ADDRW:0] remaining;

always @ (posedge clk) begin
    if (rst) begin
        head_ptr <= 0;
        tail_ptr <= 0;
        remaining <= DEPTH;
        // Optional: Clear memory (might be costly in hardware)
        // mem <= {(DEPTH*DATAW){1'b0}};
    end else begin
        if (!full && push) begin
            // Use bit slicing for memory write
            mem[tail_ptr*DATAW +: DATAW] <= idata;
            tail_ptr <= tail_ptr + 1'b1;
        end
        
        if (!empty && pop)  begin
            head_ptr <= head_ptr + 1'b1;
        end
        
        if (!empty && pop && !full && push) begin
            remaining <= remaining;
        end else if (!empty && pop) begin
            remaining <= remaining + 1'b1;
        end else if (!full && push) begin
            remaining <= remaining - 1'b1;
        end else begin
            remaining <= remaining;
        end
    end
end

assign empty = (tail_ptr == head_ptr);
assign full = (tail_ptr + 1'b1 == head_ptr);

// Use bit slicing for memory read
assign odata = mem[head_ptr*DATAW +: DATAW];
assign almost_full = (remaining < (DEPTH - ALMOST_FULL_DEPTH));

endmodule