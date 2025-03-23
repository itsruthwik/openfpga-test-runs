module memory_block # (
    parameter DATAW = 128,
    parameter DEPTH = 64,
    parameter ADDRW = $clog2(DEPTH),
    // -1 no hardcoded init; 0 or 1 for mem0, mem1
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
    // Constants
    localparam int NUM_DPRAM = DATAW / 8; 
    localparam logic [DATAW-1:0] MEM_INIT_0_VALUE = 128'h01010101010101010101010101010101; // mem 0_1
    localparam logic [DATAW-1:0] MEM_INIT_1_VALUE = 128'h00010001000100010001000100010001; // mem 1_0
    
//
    logic init_done = 1'b0;
    logic [9:0] init_addr = '0;
    logic [3:0] init_state = '0;
    logic init_wen;
    
    // addr 
    wire [9:0] dpram_waddr;
    wire [9:0] dpram_raddr;
    
    
    assign dpram_waddr = {4'b0000, waddr};
    assign dpram_raddr = {4'b0000, raddr};
    
    genvar i;
    generate
        for (i = 0; i < NUM_DPRAM; i++) begin : dpram_inst
            wire [7:0] data_in_slice = wdata[i*8+:8];
            wire [7:0] data_out_slice;
            
            assign rdata[i*8+:8] = data_out_slice;
            
            //  dpram inst
            dpram_1024x8 dpram (
                .clk(clk),
                .wen(wen),
                .ren(1'b1),  // Always read
                .waddr(dpram_waddr),
                .raddr(dpram_raddr),
                .data_in(data_in_slice),
                .data_out(data_out_slice)
            );
        end
    endgenerate
    
    logic [DATAW-1:0] init_value;
    
    // initialize weights
    always_comb begin
        if (WEIGHTS_INIT_SEL == 0)
            init_value = MEM_INIT_0_VALUE;
        else if (WEIGHTS_INIT_SEL == 1)
            init_value = MEM_INIT_1_VALUE;
        else
            init_value = '0;
    end
    
    always_ff @(posedge clk) begin
        if (rst) begin
            init_done <= 1'b0;
            init_addr <= '0;
            init_state <= '0;
            init_wen <= 1'b0;
        end
        else if (!init_done && WEIGHTS_INIT_SEL >= 0) begin
            case (init_state)
                4'd0: begin
                    init_wen <= 1'b1;
                    init_state <= 4'd1;
                end
                4'd1: begin
                    if (init_addr < DEPTH) begin
                        init_addr <= init_addr + 1'b1;
                    end
                    else begin
                        init_wen <= 1'b0;
                        init_done <= 1'b1;
                        init_state <= 4'd2;
                    end
                end
                default: begin
                end
            endcase
        end
    end
    
    //  initialization
    wire effective_wen = init_done ? wen : init_wen;
    wire [9:0] effective_waddr = init_done ? dpram_waddr : init_addr;
    wire [DATAW-1:0] effective_wdata = init_done ? wdata : init_value;
    
endmodule


// module memory_block # (
//     parameter DATAW = 128,
//     parameter DEPTH = 64,
//     parameter ADDRW = $clog2(DEPTH),
//     // -1  no hardcoded init; 0 or 1 for mem0, mem1
//     parameter int WEIGHTS_INIT_SEL = -1  
// )(
//     input  logic                 clk,
//     input  logic                 rst,
//     input  logic [ADDRW-1:0]     waddr,
//     input  logic                 wen,
//     input  logic [DATAW-1:0]     wdata,
//     input  logic [ADDRW-1:0]     raddr,
//     output logic [DATAW-1:0]     rdata
// );

//     logic [DATAW-1:0] mem [0:DEPTH-1];

    
//     localparam logic [DATAW-1:0] MEM_INIT_0_VALUE = 128'h01010101010101010101010101010101; // mem 0_1
//     localparam logic [DATAW-1:0] MEM_INIT_1_VALUE = 128'h00010001000100010001000100010001; // mem 1_0

//     generate
//         if (WEIGHTS_INIT_SEL == 0) begin : init_mem0
//             initial begin
//                 for (int i = 0; i < DEPTH; i++) begin
//                     mem[i] = MEM_INIT_0_VALUE;
//                 end
//             end
//         end else if (WEIGHTS_INIT_SEL == 1) begin : init_mem1
//             initial begin
//                 for (int i = 0; i < DEPTH; i++) begin
//                     mem[i] = MEM_INIT_1_VALUE;
//                 end
//             end
//         end
//         // no iniyt for  WEIGHTS_INIT_SEL = -1
//     endgenerate

//     // synchronous read and write
//     always_ff @(posedge clk) begin
//         if (rst) begin
//             rdata <= '0;
//         end else begin
//             rdata <= mem[raddr];
//             if (wen) begin
//                 mem[waddr] <= wdata;
//             end
//         end
//     end

// endmodule