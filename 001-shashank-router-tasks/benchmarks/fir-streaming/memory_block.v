module memory_block # (
    parameter DATAW = 32,
    parameter DEPTH = 64,
    parameter ADDRW = 6   
)(
    input                      clk,
    input                      rst,
    input      [ADDRW-1:0]     waddr,
    input                      wen,
    input      [DATAW-1:0]     wdata,
    input      [ADDRW-1:0]     raddr,
    output reg [DATAW-1:0]     rdata
);
    reg [DATAW-1:0] mem [DEPTH-1:0];
    
    always @(posedge clk) begin
        rdata <= mem[raddr];
        if (wen) begin
            mem[waddr] <= wdata;
        end
    end

endmodule