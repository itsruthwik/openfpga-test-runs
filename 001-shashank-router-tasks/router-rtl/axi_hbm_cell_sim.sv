(* whitebox *)
module axi_hbm #(
    parameter TID_WIDTH = 2,   
    parameter TDEST_WIDTH = 4,   
    parameter TDATA_WIDTH = 128
) (
    input   wire    clk,
    input   wire    rst,

    input   wire                            axis_in_tvalid,
    output  logic                           axis_in_tready,
    input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata,
    input   wire                            axis_in_tlast,
    input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid,
    input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest,
    output  logic                           axis_out_tvalid,
    input   wire                            axis_out_tready,
    output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata,
    output  logic                           axis_out_tlast,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest
);

//dummy

    always_ff @(posedge clk or negedge rst) begin
        if (~rst) begin
            axis_out_tvalid <= 1'b0;
            axis_out_tdata <= 0;
            axis_out_tlast <= 1'b0;
            axis_out_tid <= 0;
            axis_out_tdest <= 0;
        end else begin
            axis_out_tvalid <= axis_in_tvalid;
            axis_out_tdata <= axis_in_tdata;
            axis_out_tlast <= axis_in_tlast;
            axis_out_tid <= axis_in_tid;
            axis_out_tdest <= axis_in_tdest;
        end
    end

endmodule