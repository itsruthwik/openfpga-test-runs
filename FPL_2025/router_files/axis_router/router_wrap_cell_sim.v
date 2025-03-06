(* whitebox *)
module router_wrap (
    input wire clk_noc,
    input wire clk_usr,
    input wire rst_n,

    input wire [4:0] axis_in_tvalid,
    output  [4:0] axis_in_tready,
    input wire [159:0] axis_in_tdata,  // 5 * 32 = 160 bits
    input wire [4:0] axis_in_tlast,
    input wire [9:0] axis_in_tid,      // 5 * 2 = 10 bits
    input wire [19:0] axis_in_tdest,   // 5 * 4 = 20 bits
    
    output  [4:0] axis_out_tvalid,
    input wire [4:0] axis_out_tready,
    output  [159:0] axis_out_tdata, // 5 * 32 = 160 bits
    output  [4:0] axis_out_tlast,
    output  [9:0] axis_out_tid,     // 5 * 2 = 10 bits
    output  [19:0] axis_out_tdest   // 5 * 4 = 20 bits
);

    reg [4:0] axis_in_tready;
    reg [4:0] axis_out_tvalid;
    reg [159:0] axis_out_tdata;
    reg [4:0] axis_out_tlast;

    always@(posedge clk_noc or negedge rst_n) begin
        if (!rst_n) begin
            axis_in_tready <= 5'b0;
            axis_out_tvalid <= 5'b0;
            axis_out_tdata <= 160'b0;
            axis_out_tlast <= 5'b0;
        end else begin
            axis_in_tready <= axis_in_tvalid;
            axis_out_tvalid <= axis_out_tready;
        end
    end

endmodule