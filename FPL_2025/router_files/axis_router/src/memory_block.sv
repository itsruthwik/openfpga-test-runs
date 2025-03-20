
module memory_block # (
    parameter DATAW = 128,
    parameter DEPTH = 64,
    parameter ADDRW = $clog2(DEPTH),
    // Use -1 to indicate no hardcoded init; 0 or 1 for the two hardcoded alternatives
    parameter int WEIGHTS_INIT_SEL = -1  
)(
    input  logic                 clk,
    input  logic                 rst,
    input  logic [ADDRW-1:0]     waddr,
    input  logic                 wen,
    input  logic [DATAW-1:0]     wdata,
    input  logic [ADDRW-1:0]     raddr,
    output logic [DATAW-1:0]     rdata
);

    // Internal memory array
    logic [DATAW-1:0] mem [0:DEPTH-1];

    // hardcodes initializations 
    localparam logic [DATAW-1:0] MEM_INIT_0_VALUE = 128'h01010101010101010101010101010101; // mem 0_1
    localparam logic [DATAW-1:0] MEM_INIT_1_VALUE = 128'h00010001000100010001000100010001; // mem 1_0

    generate
        if (WEIGHTS_INIT_SEL == 0) begin : init_mem0
            initial begin
                for (int i = 0; i < DEPTH; i++) begin
                    mem[i] = MEM_INIT_0_VALUE;
                end
            end
        end else if (WEIGHTS_INIT_SEL == 1) begin : init_mem1
            initial begin
                for (int i = 0; i < DEPTH; i++) begin
                    mem[i] = MEM_INIT_1_VALUE;
                end
            end
        end
        // no iniyt for  WEIGHTS_INIT_SEL = -1
    endgenerate

    // synchronous read and write
    always_ff @(posedge clk) begin
        if (rst) begin
            rdata <= '0;
        end else begin
            rdata <= mem[raddr];
            if (wen) begin
                mem[waddr] <= wdata;
            end
        end
    end

endmodule