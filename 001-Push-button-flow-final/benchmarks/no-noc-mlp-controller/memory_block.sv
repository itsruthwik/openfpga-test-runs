// module memory_block # (
//     parameter DATAW = 128,
//     parameter DEPTH = 64,
//     parameter ADDRW = $clog2(DEPTH),
//     // -1 no hardcoded init; 0 or 1 for mem0, mem1
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
//     // Constants
//     localparam int NUM_DPRAM = DATAW / 8;  
//     // addr 
//     wire [9:0] dpram_waddr;
//     wire [9:0] dpram_raddr;
    
    
//     assign dpram_waddr = {4'b0000, waddr};
//     assign dpram_raddr = {4'b0000, raddr};
    
//     genvar i;
//     generate
//         for (i = 0; i < NUM_DPRAM; i++) begin : dpram_inst
//             wire [7:0] data_in_slice = wdata[i*8+:8];
//             wire [7:0] data_out_slice;
            
//             assign rdata[i*8+:8] = data_out_slice;
            
//             //  dpram inst
//             (* keep *)
//             dpram_1024x8 dpram (
//                 .clk(clk),
//                 .wen(wen),
//                 .ren(1'b1),  // Always read
//                 .waddr(dpram_waddr),
//                 .raddr(dpram_raddr),
//                 .data_in(data_in_slice),
//                 .data_out(data_out_slice)
//             );
//         end
//     endgenerate
   

// endmodule

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
    logic [DATAW-1:0] mem [0:DEPTH-1];
    
    always_ff @(posedge clk) begin
        rdata <= mem[raddr];
        if (wen) begin
            mem[waddr] <= wdata;
        end
    end

endmodule