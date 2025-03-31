module memory_block # (
    parameter DATAW, // = 128,
    parameter DEPTH, // = 64,
    parameter ADDRW, // = $clog2(DEPTH),
)(
    input  logic                 clk,
    input  logic                 rst,
    input  logic [ADDRW-1:0]     waddr,
    input  logic                 wen,
    input  logic [DATAW-1:0]     wdata,
    input  logic [ADDRW-1:0]     raddr,
    output logic [DATAW-1:0]     rdata
);
    logic [DATAW-1:0] mem [0:DEPTH-1];
    
    always_ff @(posedge clk) begin
        rdata <= mem[raddr];
        if (wen) begin
            mem[waddr] <= wdata;
        end
    end

endmodule