module mux_demux_1_15 #(
    parameter TID_WIDTH = 2,
    parameter TDEST_WIDTH = 4,
    parameter TDATA_WIDTH = 128
) (
    input  wire clk,
    input  wire rst_n,
   
    // injection port
    input   wire                            axis_in_tvalid_0,
        input   wire                           axis_in_tvalid_1,
        input   wire                           axis_in_tvalid_2,
        input   wire                           axis_in_tvalid_3,
        input   wire                           axis_in_tvalid_4,
        input   wire                           axis_in_tvalid_5,
        input   wire                           axis_in_tvalid_6,
        input   wire                           axis_in_tvalid_7,
        input   wire                           axis_in_tvalid_8,
        input   wire                           axis_in_tvalid_9,
        input   wire                           axis_in_tvalid_10,
        input   wire                           axis_in_tvalid_11,   
        input   wire                           axis_in_tvalid_12,
        input   wire                           axis_in_tvalid_13,
        input   wire                           axis_in_tvalid_14,
        input   wire                           axis_in_tvalid_15,


    output  logic                           axis_in_tready_0,
        output  logic                           axis_in_tready_1,
        output  logic                           axis_in_tready_2,
        output  logic                           axis_in_tready_3,
        output  logic                           axis_in_tready_4,
        output  logic                           axis_in_tready_5,
        output  logic                           axis_in_tready_6,
        output  logic                           axis_in_tready_7,
        output  logic                           axis_in_tready_8,
        output  logic                           axis_in_tready_9,
        output  logic                           axis_in_tready_10,
        output  logic                           axis_in_tready_11,
        output  logic                           axis_in_tready_12,
        output  logic                           axis_in_tready_13,
        output  logic                           axis_in_tready_14,
        output  logic                           axis_in_tready_15,



    input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_0,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_1,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_2,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_3,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_4,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_5,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_6,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_7,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_8,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_9,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_10,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_11,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_12,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_13,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_14,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_15,



    input   wire                            axis_in_tlast_0,
        input   wire                            axis_in_tlast_1,
        input   wire                            axis_in_tlast_2,
        input   wire                            axis_in_tlast_3,
        input   wire                            axis_in_tlast_4,
        input   wire                            axis_in_tlast_5,
        input   wire                            axis_in_tlast_6,
        input   wire                            axis_in_tlast_7,
        input   wire                            axis_in_tlast_8,
        input   wire                            axis_in_tlast_9,
        input   wire                            axis_in_tlast_10,
        input   wire                            axis_in_tlast_11,
        input   wire                            axis_in_tlast_12,
        input   wire                            axis_in_tlast_13,
        input   wire                            axis_in_tlast_14,
        input   wire                            axis_in_tlast_15,


    input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_0,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_1,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_2,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_3,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_4,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_5,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_6,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_7,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_8,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_9,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_10,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_11,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_12,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_13,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_14,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_15,

    input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_0,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_1,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_2,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_3,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_4,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_5,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_6,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_7,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_8,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_9,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_10,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_11,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_12,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_13,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_14,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_15,

    output  logic                           axis_out_tvalid_0,
        output  logic                           axis_out_tvalid_1,
        output  logic                           axis_out_tvalid_2,
        output  logic                           axis_out_tvalid_3,
        output  logic                           axis_out_tvalid_4,
        output  logic                           axis_out_tvalid_5,
        output  logic                           axis_out_tvalid_6,
        output  logic                           axis_out_tvalid_7,
        output  logic                           axis_out_tvalid_8,
        output  logic                           axis_out_tvalid_9,
        output  logic                           axis_out_tvalid_10,
        output  logic                           axis_out_tvalid_11,
        output  logic                           axis_out_tvalid_12,
        output  logic                           axis_out_tvalid_13,
        output  logic                           axis_out_tvalid_14,
        output  logic                           axis_out_tvalid_15,


    input   wire                            axis_out_tready_0,
        input   wire                            axis_out_tready_1,
        input   wire                            axis_out_tready_2,
        input   wire                            axis_out_tready_3,
        input   wire                            axis_out_tready_4,
        input   wire                            axis_out_tready_5,
        input   wire                            axis_out_tready_6,
        input   wire                            axis_out_tready_7,
        input   wire                            axis_out_tready_8,
        input   wire                            axis_out_tready_9,
        input   wire                            axis_out_tready_10,
        input   wire                            axis_out_tready_11,
        input   wire                            axis_out_tready_12,
        input   wire                            axis_out_tready_13,
        input   wire                            axis_out_tready_14,
        input   wire                            axis_out_tready_15,

    output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_0,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_1,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_2,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_3,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_4,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_5,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_6,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_7,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_8,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_9,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_10,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_11,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_12,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_13,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_14,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_15,

    output  logic                           axis_out_tlast_0,
        output  logic                           axis_out_tlast_1,
        output  logic                           axis_out_tlast_2,
        output  logic                           axis_out_tlast_3,
        output  logic                           axis_out_tlast_4,
        output  logic                           axis_out_tlast_5,
        output  logic                           axis_out_tlast_6,
        output  logic                           axis_out_tlast_7,
        output  logic                           axis_out_tlast_8,
        output  logic                           axis_out_tlast_9,
        output  logic                           axis_out_tlast_10,
        output  logic                           axis_out_tlast_11,
        output  logic                           axis_out_tlast_12,
        output  logic                           axis_out_tlast_13,
        output  logic                           axis_out_tlast_14,
        output  logic                           axis_out_tlast_15,

    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_0,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_1,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_2,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_3,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_4,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_5,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_6,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_7,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_8,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_9,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_10,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_11,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_12,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_13,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_14,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_15,

    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_0,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_1,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_2,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_3,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_4,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_5,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_6,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_7,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_8,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_9,   
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_10,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_11,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_12,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_13,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_14,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_15
);

        logic [TDATA_WIDTH-1:0] temp_data;
        logic [TDATA_WIDTH-1:0] temp_data2;
        logic [TDATA_WIDTH-1:0] temp_data3;
        logic [TDATA_WIDTH-1:0] temp_data4;
        logic [TDATA_WIDTH-1:0] temp_data5;


always_comb begin
    // from port 0 to all other ports
// demux
if (axis_in_tvalid_0) begin
   case (axis_in_tdest_0)
        // 4'b0000: begin
        //     axis_out_tvalid_0 = axis_in_tvalid_0;
        //     axis_out_tdata_0 = axis_in_tdata_0;
        //     axis_out_tid_0 = axis_in_tid_0;
        //     axis_out_tdest_0 = axis_in_tdest_0;
        //     axis_out_tlast_0 = axis_in_tlast_0;
        //     axis_in_tready_0 = axis_out_tready_0;
        // end
        4'b0001: begin
            axis_out_tvalid_1 = axis_in_tvalid_0;
            axis_out_tdata_1 = axis_in_tdata_0;
            axis_out_tid_1 = axis_in_tid_0;
            axis_out_tdest_1 = axis_in_tdest_0;
            axis_out_tlast_1 = axis_in_tlast_0;
            axis_in_tready_0 = axis_out_tready_1;
        end
        4'b0010: begin
            axis_out_tvalid_2 = axis_in_tvalid_0;
            axis_out_tdata_2 = axis_in_tdata_0;
            axis_out_tid_2 = axis_in_tid_0;
            axis_out_tdest_2 = axis_in_tdest_0;
            axis_out_tlast_2 = axis_in_tlast_0;
            axis_in_tready_0 = axis_out_tready_2;
        end
        4'b0011: begin
            axis_out_tvalid_3 = axis_in_tvalid_0;
            axis_out_tdata_3 = axis_in_tdata_0;
            axis_out_tid_3 = axis_in_tid_0;
            axis_out_tdest_3 = axis_in_tdest_0;
            axis_out_tlast_3 = axis_in_tlast_0;
            axis_in_tready_0 = axis_out_tready_3;
        end
        4'b0100: begin
            axis_out_tvalid_4 = axis_in_tvalid_0;
            axis_out_tdata_4 = axis_in_tdata_0;
            axis_out_tid_4 = axis_in_tid_0;
            axis_out_tdest_4 = axis_in_tdest_0;
            axis_out_tlast_4 = axis_in_tlast_0;
            axis_in_tready_0 = axis_out_tready_4;
        end
        4'b0101: begin
            axis_out_tvalid_5 = axis_in_tvalid_0;
            axis_out_tdata_5 = axis_in_tdata_0;
            axis_out_tid_5 = axis_in_tid_0;
            axis_out_tdest_5 = axis_in_tdest_0;
            axis_out_tlast_5 = axis_in_tlast_0;
            axis_in_tready_0 = axis_out_tready_5;
        end
        4'b0110: begin
            axis_out_tvalid_6 = axis_in_tvalid_0;
            axis_out_tdata_6 = axis_in_tdata_0;
            axis_out_tid_6 = axis_in_tid_0;
            axis_out_tdest_6 = axis_in_tdest_0;
            axis_out_tlast_6 = axis_in_tlast_0;
            axis_in_tready_0 = axis_out_tready_6;
        end
        4'b0111: begin
            axis_out_tvalid_7 = axis_in_tvalid_0;
            axis_out_tdata_7 = axis_in_tdata_0;
            axis_out_tid_7 = axis_in_tid_0;
            axis_out_tdest_7 = axis_in_tdest_0;
            axis_out_tlast_7 = axis_in_tlast_0;
            axis_in_tready_0 = axis_out_tready_7;
        end
        4'b1000: begin
            axis_out_tvalid_8 = axis_in_tvalid_0;
            axis_out_tdata_8 = axis_in_tdata_0;
            axis_out_tid_8 = axis_in_tid_0;
            axis_out_tdest_8 = axis_in_tdest_0;
            axis_out_tlast_8 = axis_in_tlast_0;
            axis_in_tready_0 = axis_out_tready_8;
        end
        4'b1001: begin
            axis_out_tvalid_9 = axis_in_tvalid_0;
            axis_out_tdata_9 = axis_in_tdata_0;
            axis_out_tid_9 = axis_in_tid_0;
            axis_out_tdest_9 = axis_in_tdest_0;
            axis_out_tlast_9 = axis_in_tlast_0;
            axis_in_tready_0 = axis_out_tready_9;
        end
        4'b1010: begin
            axis_out_tvalid_10 = axis_in_tvalid_0;
            axis_out_tdata_10 = axis_in_tdata_0;
            axis_out_tid_10 = axis_in_tid_0;
            axis_out_tdest_10 = axis_in_tdest_0;
            axis_out_tlast_10 = axis_in_tlast_0;
            axis_in_tready_0 = axis_out_tready_10;
        end
        4'b1011: begin
            axis_out_tvalid_11 = axis_in_tvalid_0;
            axis_out_tdata_11 = axis_in_tdata_0;
            axis_out_tid_11 = axis_in_tid_0;
            axis_out_tdest_11 = axis_in_tdest_0;
            axis_out_tlast_11 = axis_in_tlast_0;
            axis_in_tready_0 = axis_out_tready_11;
        end
        4'b1100: begin
            axis_out_tvalid_12 = axis_in_tvalid_0;
            axis_out_tdata_12 = axis_in_tdata_0;
            axis_out_tid_12 = axis_in_tid_0;
            axis_out_tdest_12 = axis_in_tdest_0;
            axis_out_tlast_12 = axis_in_tlast_0;
            axis_in_tready_0 = axis_out_tready_12;
        end
        4'b1101: begin
            axis_out_tvalid_13 = axis_in_tvalid_0;
            axis_out_tdata_13 = axis_in_tdata_0;
            axis_out_tid_13 = axis_in_tid_0;
            axis_out_tdest_13 = axis_in_tdest_0;
            axis_out_tlast_13 = axis_in_tlast_0;
            axis_in_tready_0 = axis_out_tready_13;
        end
        4'b1110: begin
            axis_out_tvalid_14 = axis_in_tvalid_0;
            axis_out_tdata_14 = axis_in_tdata_0;
            axis_out_tid_14 = axis_in_tid_0;
            axis_out_tdest_14 = axis_in_tdest_0;
            axis_out_tlast_14 = axis_in_tlast_0;
            axis_in_tready_0 = axis_out_tready_14;
        end
        4'b1111: begin
            axis_out_tvalid_15 = axis_in_tvalid_0;
            axis_out_tdata_15 = axis_in_tdata_0;
            axis_out_tid_15 = axis_in_tid_0;
            axis_out_tdest_15 = axis_in_tdest_0;
            axis_out_tlast_15 = axis_in_tlast_0;
            axis_in_tready_0 = axis_out_tready_15;
        end
        default: begin
            // axis_out_tvalid_0 = 1'b0;
            // axis_out_tdata_0 = 0;
            // axis_out_tid_0 = 0;
            // axis_out_tdest_0 = 0;
            // axis_out_tlast_0 = 1'b0;
            // axis_in_tready_0 = 1'b0;

            axis_out_tvalid_1 = 1'b0;
            axis_out_tdata_1 = 0;
            axis_out_tid_1 = 0;
            axis_out_tdest_1 = 0;
            axis_out_tlast_1 = 1'b0;
            // axis_in_tready_1 = 1'b0;

            axis_out_tvalid_2 = 1'b0;
            axis_out_tdata_2 = 0;
            axis_out_tid_2 = 0;
            axis_out_tdest_2 = 0;
            axis_out_tlast_2 = 1'b0;
            // axis_in_tready_2 = 1'b0;

            axis_out_tvalid_3 = 1'b0;
            axis_out_tdata_3 = 0;
            axis_out_tid_3 = 0;
            axis_out_tdest_3 = 0;
            axis_out_tlast_3 = 1'b0;
            // axis_in_tready_3 = 1'b0;

            axis_out_tvalid_4 = 1'b0;
            axis_out_tdata_4 = 0;
            axis_out_tid_4 = 0;
            axis_out_tdest_4 = 0;
            axis_out_tlast_4 = 1'b0;
            // axis_in_tready_4 = 1'b0;
            
            axis_out_tvalid_5 = 1'b0;
            axis_out_tdata_5 = 0;
            axis_out_tid_5 = 0;
            axis_out_tdest_5 = 0;
            axis_out_tlast_5 = 1'b0;
            // axis_in_tready_5 = 1'b0;

            axis_out_tvalid_6 = 1'b0;
            axis_out_tdata_6 = 0;
            axis_out_tid_6 = 0;
            axis_out_tdest_6 = 0;
            axis_out_tlast_6 = 1'b0;
            // axis_in_tready_6 = 1'b0;

            axis_out_tvalid_7 = 1'b0;
            axis_out_tdata_7 = 0;
            axis_out_tid_7 = 0;
            axis_out_tdest_7 = 0;
            axis_out_tlast_7 = 1'b0;
            // axis_in_tready_7 = 1'b0;

            axis_out_tvalid_8 = 1'b0;
            axis_out_tdata_8 = 0;
            axis_out_tid_8 = 0;
            axis_out_tdest_8 = 0;
            axis_out_tlast_8 = 1'b0;
            // axis_in_tready_8 = 1'b0;

            axis_out_tvalid_9 = 1'b0;
            axis_out_tdata_9 = 0;
            axis_out_tid_9 = 0;
            axis_out_tdest_9 = 0;
            axis_out_tlast_9 = 1'b0;
            // axis_in_tready_9 = 1'b0;

            axis_out_tvalid_10 = 1'b0;
            axis_out_tdata_10 = 0;
            axis_out_tid_10 = 0;
            axis_out_tdest_10 = 0;
            axis_out_tlast_10 = 1'b0;
            // axis_in_tready_10 = 1'b0;

            axis_out_tvalid_11 = 1'b0;
            axis_out_tdata_11 = 0;
            axis_out_tid_11 = 0;
            axis_out_tdest_11 = 0;
            axis_out_tlast_11 = 1'b0;
            // axis_in_tready_11 = 1'b0;

            axis_out_tvalid_12 = 1'b0;
            axis_out_tdata_12 = 0;
            axis_out_tid_12 = 0;
            axis_out_tdest_12 = 0;
            axis_out_tlast_12 = 1'b0;
            // axis_in_tready_12 = 1'b0;

            axis_out_tvalid_13 = 1'b0;
            axis_out_tdata_13 = 0;
            axis_out_tid_13 = 0;
            axis_out_tdest_13 = 0;
            axis_out_tlast_13 = 1'b0;
            // axis_in_tready_13 = 1'b0;

            axis_out_tvalid_14 = 1'b0;
            axis_out_tdata_14 = 0;
            axis_out_tid_14 = 0;
            axis_out_tdest_14 = 0;
            axis_out_tlast_14 = 1'b0;
            // axis_in_tready_14 = 1'b0;

            axis_out_tvalid_15 = 1'b0;
            axis_out_tdata_15 = 0;
            axis_out_tid_15 = 0;
            axis_out_tdest_15 = 0;
            axis_out_tlast_15 = 1'b0;
            // axis_in_tready_15 = 1'b0;
        end
    endcase 
end

end


always_comb begin
     // from all other ports to port 0
// mux

    if (axis_in_tvalid_1) begin
        axis_out_tvalid_0 = axis_in_tvalid_1;
        axis_out_tdata_0 = axis_in_tdata_1;
        axis_out_tid_0 = axis_in_tid_1;
        axis_out_tdest_0 = axis_in_tdest_1;
        axis_out_tlast_0 = axis_in_tlast_1;
        axis_in_tready_1 = axis_out_tready_0;
    end 
    else if (axis_in_tvalid_2) begin
        axis_out_tvalid_0 = axis_in_tvalid_2;
        axis_out_tdata_0 = axis_in_tdata_2;
        axis_out_tid_0 = axis_in_tid_2;
        axis_out_tdest_0 = axis_in_tdest_2;
        axis_out_tlast_0 = axis_in_tlast_2;
        axis_in_tready_2 = axis_out_tready_0;
    end 
    else if (axis_in_tvalid_3) begin
        axis_out_tvalid_0 = axis_in_tvalid_3;
        axis_out_tdata_0 = axis_in_tdata_3;
        axis_out_tid_0 = axis_in_tid_3;
        axis_out_tdest_0 = axis_in_tdest_3;
        axis_out_tlast_0 = axis_in_tlast_3;
        axis_in_tready_3 = axis_out_tready_0;
    end 
    else if (axis_in_tvalid_4) begin
        axis_out_tvalid_0 = axis_in_tvalid_4;
        axis_out_tdata_0 = axis_in_tdata_4;
        axis_out_tid_0 = axis_in_tid_4;
        axis_out_tdest_0 = axis_in_tdest_4;
        axis_out_tlast_0 = axis_in_tlast_4;
        axis_in_tready_4 = axis_out_tready_0;
    end 
    else if (axis_in_tvalid_5) begin
        axis_out_tvalid_0 = axis_in_tvalid_5;
        axis_out_tdata_0 = axis_in_tdata_5;
        axis_out_tid_0 = axis_in_tid_5;
        axis_out_tdest_0 = axis_in_tdest_5;
        axis_out_tlast_0 = axis_in_tlast_5;
        axis_in_tready_5 = axis_out_tready_0;
    end 
    else if (axis_in_tvalid_6) begin
        axis_out_tvalid_0 = axis_in_tvalid_6;
        axis_out_tdata_0 = axis_in_tdata_6;
        axis_out_tid_0 = axis_in_tid_6;
        axis_out_tdest_0 = axis_in_tdest_6;
        axis_out_tlast_0 = axis_in_tlast_6;
        axis_in_tready_6 = axis_out_tready_0;
    end 
    else if (axis_in_tvalid_7) begin
        axis_out_tvalid_0 = axis_in_tvalid_7;
        axis_out_tdata_0 = axis_in_tdata_7;
        axis_out_tid_0 = axis_in_tid_7;
        axis_out_tdest_0 = axis_in_tdest_7;
        axis_out_tlast_0 = axis_in_tlast_7;
        axis_in_tready_7 = axis_out_tready_0;
    end 
    else if (axis_in_tvalid_8) begin
        axis_out_tvalid_0 = axis_in_tvalid_8;
        axis_out_tdata_0 = axis_in_tdata_8;
        axis_out_tid_0 = axis_in_tid_8;
        axis_out_tdest_0 = axis_in_tdest_8;
        axis_out_tlast_0 = axis_in_tlast_8;
        axis_in_tready_8 = axis_out_tready_0;
    end 
    else if (axis_in_tvalid_9) begin
        axis_out_tvalid_0 = axis_in_tvalid_9;
        axis_out_tdata_0 = axis_in_tdata_9;
        axis_out_tid_0 = axis_in_tid_9;
        axis_out_tdest_0 = axis_in_tdest_9;
        axis_out_tlast_0 = axis_in_tlast_9;
        axis_in_tready_9 = axis_out_tready_0;
    end 
    else if (axis_in_tvalid_10) begin
        axis_out_tvalid_0 = axis_in_tvalid_10;
        axis_out_tdata_0 = axis_in_tdata_10;
        axis_out_tid_0 = axis_in_tid_10;
        axis_out_tdest_0 = axis_in_tdest_10;
        axis_out_tlast_0 = axis_in_tlast_10;
        axis_in_tready_10 = axis_out_tready_0;
    end 
    else if (axis_in_tvalid_11) begin
        axis_out_tvalid_0 = axis_in_tvalid_11;
        axis_out_tdata_0 = axis_in_tdata_11;
        axis_out_tid_0 = axis_in_tid_11;
        axis_out_tdest_0 = axis_in_tdest_11;
        axis_out_tlast_0 = axis_in_tlast_11;
        axis_in_tready_11 = axis_out_tready_0;
    end
    else if (axis_in_tvalid_12) begin
        axis_out_tvalid_0 = axis_in_tvalid_12;
        axis_out_tdata_0 = axis_in_tdata_12;
        axis_out_tid_0 = axis_in_tid_12;
        axis_out_tdest_0 = axis_in_tdest_12;
        axis_out_tlast_0 = axis_in_tlast_12;
        axis_in_tready_12 = axis_out_tready_0;
    end 
    else if (axis_in_tvalid_13) begin
        axis_out_tvalid_0 = axis_in_tvalid_13;
        axis_out_tdata_0 = axis_in_tdata_13;
        axis_out_tid_0 = axis_in_tid_13;
        axis_out_tdest_0 = axis_in_tdest_13;
        axis_out_tlast_0 = axis_in_tlast_13;
        axis_in_tready_13 = axis_out_tready_0;
    end 
    else if (axis_in_tvalid_14) begin
        axis_out_tvalid_0 = axis_in_tvalid_14;
        axis_out_tdata_0 = axis_in_tdata_14;
        axis_out_tid_0 = axis_in_tid_14;
        axis_out_tdest_0 = axis_in_tdest_14;
        axis_out_tlast_0 = axis_in_tlast_14;
        axis_in_tready_14 = axis_out_tready_0;
    end 
    else if (axis_in_tvalid_15) begin
        axis_out_tvalid_0 = axis_in_tvalid_15;
        axis_out_tdata_0 = axis_in_tdata_15;
        axis_out_tid_0 = axis_in_tid_15;
        axis_out_tdest_0 = axis_in_tdest_15;
        axis_out_tlast_0 = axis_in_tlast_15;
        axis_in_tready_15 = axis_out_tready_0;
    end
    else begin
        // axis_out_tvalid_0 = 1'b0;
        // axis_out_tdata_0 = {TDATA_WIDTH{1'b0}};
        // axis_out_tid_0 = {TID_WIDTH{1'b0}};
        // axis_out_tdest_0 = {TDEST_WIDTH{1'b0}};
        // axis_out_tlast_0 = 1'b0;
        // temp logic

        // temp_data = axis_in_tdata_15 ^ axis_in_tdata_14 ^ axis_in_tdata_13 ^ axis_in_tdata_12 ^ axis_in_tdata_11 ^ axis_in_tdata_10 ^ axis_in_tdata_9 ^ axis_in_tdata_8 ^ axis_in_tdata_7 ^ axis_in_tdata_6 ^ axis_in_tdata_5 ^ axis_in_tdata_4 ^ axis_in_tdata_3 ^ axis_in_tdata_2 ^ axis_in_tdata_1;
        
        // temp_data2 = temp_data ^ {TDATA_WIDTH{1'b1}};
        // temp_data3 = temp_data * temp_data2;


        // axis_out_tvalid_0 = ^temp_data3;
        // axis_out_tdata_0 = temp_data3;  
        // axis_out_tid_0 = {TID_WIDTH{^temp_data3}};
        // axis_out_tdest_0 = {TDEST_WIDTH{^temp_data3}};
        // axis_out_tlast_0 = ^temp_data3;
        
        axis_out_tvalid_0 = axis_in_tvalid_10;
        axis_out_tdata_0 = axis_in_tdata_10;
        axis_out_tid_0 = axis_in_tid_10;
        axis_out_tdest_0 = axis_in_tdest_10;
        axis_out_tlast_0 = axis_in_tlast_10;
    end
end

endmodule