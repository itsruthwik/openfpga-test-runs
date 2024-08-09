//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for Unique Connection Blocks[1][0]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Thu Aug  8 17:59:28 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for cbx_1__0_ -----
module cbx_1__0_(pReset,
                 prog_clk,
                 chanx_left_in,
                 chanx_right_in,
                 ccff_head,
                 chanx_left_out,
                 chanx_right_out,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_my_xpos_1_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_1_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_5_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_9_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_13_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_17_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_21_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_25_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_29_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_33_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_2_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_6_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_10_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_14_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_18_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_22_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_26_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_30_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_34_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_3_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_7_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_11_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_15_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_19_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_23_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_27_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_31_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_0_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_4_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_8_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_12_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_16_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_20_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_24_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_28_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_32_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_1_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_5_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_9_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_13_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_17_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_21_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_25_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_29_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_33_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_ivalid_2_0_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_ivch_1_0_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_iack_0_0_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_iack_2_0_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_iack_4_0_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_ilck_1_0_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_ilck_3_0_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_,
                 bottom_grid_top_width_0_height_0_subtile_1__pin_outpad_0_,
                 bottom_grid_top_width_0_height_0_subtile_2__pin_outpad_0_,
                 bottom_grid_top_width_0_height_0_subtile_3__pin_outpad_0_,
                 bottom_grid_top_width_0_height_0_subtile_4__pin_outpad_0_,
                 bottom_grid_top_width_0_height_0_subtile_5__pin_outpad_0_,
                 bottom_grid_top_width_0_height_0_subtile_6__pin_outpad_0_,
                 bottom_grid_top_width_0_height_0_subtile_7__pin_outpad_0_,
                 ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] pReset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:32] chanx_left_in;
//----- INPUT PORTS -----
input [0:32] chanx_right_in;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:32] chanx_left_out;
//----- OUTPUT PORTS -----
output [0:32] chanx_right_out;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_my_xpos_1_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_1_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_5_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_9_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_13_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_17_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_21_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_25_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_29_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_33_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_2_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_6_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_10_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_14_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_18_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_22_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_26_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_30_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_34_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_3_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_7_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_11_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_15_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_19_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_23_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_27_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_31_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_0_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_4_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_8_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_12_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_16_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_20_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_24_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_28_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_32_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_1_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_5_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_9_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_13_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_17_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_21_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_25_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_29_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_33_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_ivalid_2_0_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_ivch_1_0_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_iack_0_0_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_iack_2_0_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_iack_4_0_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_ilck_1_0_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_ilck_3_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_1__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_2__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_3__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_4__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_5__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_6__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_7__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:7] mux_2level_tapbuf_size10_0_sram;
wire [0:7] mux_2level_tapbuf_size10_0_sram_inv;
wire [0:0] mux_2level_tapbuf_size10_mem_0_ccff_tail;
wire [0:7] mux_2level_tapbuf_size12_0_sram;
wire [0:7] mux_2level_tapbuf_size12_0_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_10_sram;
wire [0:7] mux_2level_tapbuf_size12_10_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_11_sram;
wire [0:7] mux_2level_tapbuf_size12_11_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_12_sram;
wire [0:7] mux_2level_tapbuf_size12_12_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_13_sram;
wire [0:7] mux_2level_tapbuf_size12_13_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_14_sram;
wire [0:7] mux_2level_tapbuf_size12_14_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_15_sram;
wire [0:7] mux_2level_tapbuf_size12_15_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_16_sram;
wire [0:7] mux_2level_tapbuf_size12_16_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_17_sram;
wire [0:7] mux_2level_tapbuf_size12_17_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_18_sram;
wire [0:7] mux_2level_tapbuf_size12_18_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_19_sram;
wire [0:7] mux_2level_tapbuf_size12_19_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_1_sram;
wire [0:7] mux_2level_tapbuf_size12_1_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_20_sram;
wire [0:7] mux_2level_tapbuf_size12_20_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_21_sram;
wire [0:7] mux_2level_tapbuf_size12_21_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_22_sram;
wire [0:7] mux_2level_tapbuf_size12_22_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_23_sram;
wire [0:7] mux_2level_tapbuf_size12_23_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_24_sram;
wire [0:7] mux_2level_tapbuf_size12_24_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_25_sram;
wire [0:7] mux_2level_tapbuf_size12_25_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_26_sram;
wire [0:7] mux_2level_tapbuf_size12_26_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_27_sram;
wire [0:7] mux_2level_tapbuf_size12_27_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_28_sram;
wire [0:7] mux_2level_tapbuf_size12_28_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_29_sram;
wire [0:7] mux_2level_tapbuf_size12_29_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_2_sram;
wire [0:7] mux_2level_tapbuf_size12_2_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_30_sram;
wire [0:7] mux_2level_tapbuf_size12_30_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_31_sram;
wire [0:7] mux_2level_tapbuf_size12_31_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_32_sram;
wire [0:7] mux_2level_tapbuf_size12_32_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_33_sram;
wire [0:7] mux_2level_tapbuf_size12_33_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_34_sram;
wire [0:7] mux_2level_tapbuf_size12_34_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_35_sram;
wire [0:7] mux_2level_tapbuf_size12_35_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_36_sram;
wire [0:7] mux_2level_tapbuf_size12_36_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_37_sram;
wire [0:7] mux_2level_tapbuf_size12_37_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_38_sram;
wire [0:7] mux_2level_tapbuf_size12_38_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_39_sram;
wire [0:7] mux_2level_tapbuf_size12_39_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_3_sram;
wire [0:7] mux_2level_tapbuf_size12_3_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_40_sram;
wire [0:7] mux_2level_tapbuf_size12_40_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_41_sram;
wire [0:7] mux_2level_tapbuf_size12_41_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_42_sram;
wire [0:7] mux_2level_tapbuf_size12_42_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_43_sram;
wire [0:7] mux_2level_tapbuf_size12_43_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_44_sram;
wire [0:7] mux_2level_tapbuf_size12_44_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_45_sram;
wire [0:7] mux_2level_tapbuf_size12_45_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_46_sram;
wire [0:7] mux_2level_tapbuf_size12_46_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_47_sram;
wire [0:7] mux_2level_tapbuf_size12_47_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_48_sram;
wire [0:7] mux_2level_tapbuf_size12_48_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_49_sram;
wire [0:7] mux_2level_tapbuf_size12_49_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_4_sram;
wire [0:7] mux_2level_tapbuf_size12_4_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_50_sram;
wire [0:7] mux_2level_tapbuf_size12_50_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_51_sram;
wire [0:7] mux_2level_tapbuf_size12_51_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_52_sram;
wire [0:7] mux_2level_tapbuf_size12_52_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_53_sram;
wire [0:7] mux_2level_tapbuf_size12_53_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_54_sram;
wire [0:7] mux_2level_tapbuf_size12_54_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_55_sram;
wire [0:7] mux_2level_tapbuf_size12_55_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_56_sram;
wire [0:7] mux_2level_tapbuf_size12_56_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_57_sram;
wire [0:7] mux_2level_tapbuf_size12_57_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_58_sram;
wire [0:7] mux_2level_tapbuf_size12_58_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_5_sram;
wire [0:7] mux_2level_tapbuf_size12_5_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_6_sram;
wire [0:7] mux_2level_tapbuf_size12_6_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_7_sram;
wire [0:7] mux_2level_tapbuf_size12_7_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_8_sram;
wire [0:7] mux_2level_tapbuf_size12_8_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_9_sram;
wire [0:7] mux_2level_tapbuf_size12_9_sram_inv;
wire [0:0] mux_2level_tapbuf_size12_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_10_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_11_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_12_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_13_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_14_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_15_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_16_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_17_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_18_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_19_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_20_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_21_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_22_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_23_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_24_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_25_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_26_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_27_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_28_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_29_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_30_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_31_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_32_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_33_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_34_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_35_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_36_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_37_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_38_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_39_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_40_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_41_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_42_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_43_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_44_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_45_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_46_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_47_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_48_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_49_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_4_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_50_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_51_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_52_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_53_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_54_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_55_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_56_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_57_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_5_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_6_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_7_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_8_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_9_ccff_tail;

// ----- BEGIN Local short connections -----
// ----- Local connection due to Wire 0 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[0] = chanx_left_in[0];
// ----- Local connection due to Wire 1 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[1] = chanx_left_in[1];
// ----- Local connection due to Wire 2 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[2] = chanx_left_in[2];
// ----- Local connection due to Wire 3 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[3] = chanx_left_in[3];
// ----- Local connection due to Wire 4 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[4] = chanx_left_in[4];
// ----- Local connection due to Wire 5 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[5] = chanx_left_in[5];
// ----- Local connection due to Wire 6 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[6] = chanx_left_in[6];
// ----- Local connection due to Wire 7 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[7] = chanx_left_in[7];
// ----- Local connection due to Wire 8 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[8] = chanx_left_in[8];
// ----- Local connection due to Wire 9 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[9] = chanx_left_in[9];
// ----- Local connection due to Wire 10 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[10] = chanx_left_in[10];
// ----- Local connection due to Wire 11 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[11] = chanx_left_in[11];
// ----- Local connection due to Wire 12 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[12] = chanx_left_in[12];
// ----- Local connection due to Wire 13 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[13] = chanx_left_in[13];
// ----- Local connection due to Wire 14 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[14] = chanx_left_in[14];
// ----- Local connection due to Wire 15 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[15] = chanx_left_in[15];
// ----- Local connection due to Wire 16 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[16] = chanx_left_in[16];
// ----- Local connection due to Wire 17 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[17] = chanx_left_in[17];
// ----- Local connection due to Wire 18 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[18] = chanx_left_in[18];
// ----- Local connection due to Wire 19 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[19] = chanx_left_in[19];
// ----- Local connection due to Wire 20 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[20] = chanx_left_in[20];
// ----- Local connection due to Wire 21 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[21] = chanx_left_in[21];
// ----- Local connection due to Wire 22 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[22] = chanx_left_in[22];
// ----- Local connection due to Wire 23 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[23] = chanx_left_in[23];
// ----- Local connection due to Wire 24 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[24] = chanx_left_in[24];
// ----- Local connection due to Wire 25 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[25] = chanx_left_in[25];
// ----- Local connection due to Wire 26 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[26] = chanx_left_in[26];
// ----- Local connection due to Wire 27 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[27] = chanx_left_in[27];
// ----- Local connection due to Wire 28 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[28] = chanx_left_in[28];
// ----- Local connection due to Wire 29 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[29] = chanx_left_in[29];
// ----- Local connection due to Wire 30 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[30] = chanx_left_in[30];
// ----- Local connection due to Wire 31 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[31] = chanx_left_in[31];
// ----- Local connection due to Wire 32 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[32] = chanx_left_in[32];
// ----- Local connection due to Wire 33 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[0] = chanx_right_in[0];
// ----- Local connection due to Wire 34 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[1] = chanx_right_in[1];
// ----- Local connection due to Wire 35 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[2] = chanx_right_in[2];
// ----- Local connection due to Wire 36 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[3] = chanx_right_in[3];
// ----- Local connection due to Wire 37 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[4] = chanx_right_in[4];
// ----- Local connection due to Wire 38 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[5] = chanx_right_in[5];
// ----- Local connection due to Wire 39 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[6] = chanx_right_in[6];
// ----- Local connection due to Wire 40 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[7] = chanx_right_in[7];
// ----- Local connection due to Wire 41 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[8] = chanx_right_in[8];
// ----- Local connection due to Wire 42 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[9] = chanx_right_in[9];
// ----- Local connection due to Wire 43 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[10] = chanx_right_in[10];
// ----- Local connection due to Wire 44 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[11] = chanx_right_in[11];
// ----- Local connection due to Wire 45 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[12] = chanx_right_in[12];
// ----- Local connection due to Wire 46 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[13] = chanx_right_in[13];
// ----- Local connection due to Wire 47 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[14] = chanx_right_in[14];
// ----- Local connection due to Wire 48 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[15] = chanx_right_in[15];
// ----- Local connection due to Wire 49 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[16] = chanx_right_in[16];
// ----- Local connection due to Wire 50 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[17] = chanx_right_in[17];
// ----- Local connection due to Wire 51 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[18] = chanx_right_in[18];
// ----- Local connection due to Wire 52 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[19] = chanx_right_in[19];
// ----- Local connection due to Wire 53 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[20] = chanx_right_in[20];
// ----- Local connection due to Wire 54 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[21] = chanx_right_in[21];
// ----- Local connection due to Wire 55 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[22] = chanx_right_in[22];
// ----- Local connection due to Wire 56 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[23] = chanx_right_in[23];
// ----- Local connection due to Wire 57 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[24] = chanx_right_in[24];
// ----- Local connection due to Wire 58 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[25] = chanx_right_in[25];
// ----- Local connection due to Wire 59 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[26] = chanx_right_in[26];
// ----- Local connection due to Wire 60 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[27] = chanx_right_in[27];
// ----- Local connection due to Wire 61 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[28] = chanx_right_in[28];
// ----- Local connection due to Wire 62 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[29] = chanx_right_in[29];
// ----- Local connection due to Wire 63 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[30] = chanx_right_in[30];
// ----- Local connection due to Wire 64 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[31] = chanx_right_in[31];
// ----- Local connection due to Wire 65 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[32] = chanx_right_in[32];
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	mux_2level_tapbuf_size12 mux_bottom_ipin_0 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18], chanx_left_in[24], chanx_right_in[24], chanx_left_in[30], chanx_right_in[30]}),
		.sram(mux_2level_tapbuf_size12_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_0_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_my_xpos_1_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_1 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31]}),
		.sram(mux_2level_tapbuf_size12_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_1_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_1_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_2 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14], chanx_left_in[20], chanx_right_in[20], chanx_left_in[26], chanx_right_in[26], chanx_left_in[32], chanx_right_in[32]}),
		.sram(mux_2level_tapbuf_size12_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_2_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_5_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_3 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27]}),
		.sram(mux_2level_tapbuf_size12_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_3_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_9_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_4 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16], chanx_left_in[22], chanx_right_in[22], chanx_left_in[28], chanx_right_in[28]}),
		.sram(mux_2level_tapbuf_size12_4_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_4_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_13_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_5 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29]}),
		.sram(mux_2level_tapbuf_size12_5_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_5_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_17_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_6 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18], chanx_left_in[24], chanx_right_in[24], chanx_left_in[30], chanx_right_in[30]}),
		.sram(mux_2level_tapbuf_size12_6_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_6_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_21_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_7 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31]}),
		.sram(mux_2level_tapbuf_size12_7_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_7_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_25_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_8 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14], chanx_left_in[20], chanx_right_in[20], chanx_left_in[26], chanx_right_in[26], chanx_left_in[32], chanx_right_in[32]}),
		.sram(mux_2level_tapbuf_size12_8_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_8_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_29_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_9 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27]}),
		.sram(mux_2level_tapbuf_size12_9_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_9_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_33_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_10 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16], chanx_left_in[22], chanx_right_in[22], chanx_left_in[28], chanx_right_in[28]}),
		.sram(mux_2level_tapbuf_size12_10_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_10_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_2_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_11 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[8], chanx_right_in[8], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29]}),
		.sram(mux_2level_tapbuf_size12_11_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_11_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_6_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_12 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18], chanx_left_in[24], chanx_right_in[24], chanx_left_in[30], chanx_right_in[30]}),
		.sram(mux_2level_tapbuf_size12_12_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_12_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_10_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_13 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31]}),
		.sram(mux_2level_tapbuf_size12_13_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_13_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_14_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_14 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[14], chanx_right_in[14], chanx_left_in[20], chanx_right_in[20], chanx_left_in[26], chanx_right_in[26], chanx_left_in[32], chanx_right_in[32]}),
		.sram(mux_2level_tapbuf_size12_14_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_14_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_18_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_15 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27]}),
		.sram(mux_2level_tapbuf_size12_15_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_15_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_22_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_16 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[16], chanx_right_in[16], chanx_left_in[22], chanx_right_in[22], chanx_left_in[28], chanx_right_in[28]}),
		.sram(mux_2level_tapbuf_size12_16_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_16_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_26_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_17 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29]}),
		.sram(mux_2level_tapbuf_size12_17_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_17_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_30_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_19 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31]}),
		.sram(mux_2level_tapbuf_size12_18_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_18_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_3_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_20 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[20], chanx_right_in[20], chanx_left_in[26], chanx_right_in[26], chanx_left_in[32], chanx_right_in[32]}),
		.sram(mux_2level_tapbuf_size12_19_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_19_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_7_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_21 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27]}),
		.sram(mux_2level_tapbuf_size12_20_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_20_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_11_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_22 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[22], chanx_right_in[22], chanx_left_in[28], chanx_right_in[28]}),
		.sram(mux_2level_tapbuf_size12_21_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_21_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_15_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_23 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14], chanx_left_in[20], chanx_right_in[20], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29]}),
		.sram(mux_2level_tapbuf_size12_22_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_22_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_19_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_24 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[24], chanx_right_in[24], chanx_left_in[30], chanx_right_in[30]}),
		.sram(mux_2level_tapbuf_size12_23_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_23_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_23_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_25 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16], chanx_left_in[22], chanx_right_in[22], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31]}),
		.sram(mux_2level_tapbuf_size12_24_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_24_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_27_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_26 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[26], chanx_right_in[26], chanx_left_in[32], chanx_right_in[32]}),
		.sram(mux_2level_tapbuf_size12_25_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_25_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_31_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_27 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18], chanx_left_in[24], chanx_right_in[24], chanx_left_in[27], chanx_right_in[27]}),
		.sram(mux_2level_tapbuf_size12_26_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_26_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_0_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_28 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[28], chanx_right_in[28]}),
		.sram(mux_2level_tapbuf_size12_27_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_27_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_4_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_29 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14], chanx_left_in[20], chanx_right_in[20], chanx_left_in[26], chanx_right_in[26], chanx_left_in[29], chanx_right_in[29]}),
		.sram(mux_2level_tapbuf_size12_28_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_28_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_8_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_30 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27], chanx_left_in[30], chanx_right_in[30]}),
		.sram(mux_2level_tapbuf_size12_29_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_29_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_12_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_31 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16], chanx_left_in[22], chanx_right_in[22], chanx_left_in[28], chanx_right_in[28], chanx_left_in[31], chanx_right_in[31]}),
		.sram(mux_2level_tapbuf_size12_30_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_30_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_16_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_32 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29], chanx_left_in[32], chanx_right_in[32]}),
		.sram(mux_2level_tapbuf_size12_31_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_31_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_20_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_33 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18], chanx_left_in[24], chanx_right_in[24], chanx_left_in[30], chanx_right_in[30]}),
		.sram(mux_2level_tapbuf_size12_32_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_32_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_24_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_34 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31]}),
		.sram(mux_2level_tapbuf_size12_33_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_33_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_28_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_35 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14], chanx_left_in[20], chanx_right_in[20], chanx_left_in[26], chanx_right_in[26], chanx_left_in[32], chanx_right_in[32]}),
		.sram(mux_2level_tapbuf_size12_34_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_34_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_32_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_36 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27]}),
		.sram(mux_2level_tapbuf_size12_35_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_35_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_1_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_37 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16], chanx_left_in[22], chanx_right_in[22], chanx_left_in[28], chanx_right_in[28]}),
		.sram(mux_2level_tapbuf_size12_36_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_36_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_5_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_38 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29]}),
		.sram(mux_2level_tapbuf_size12_37_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_37_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_9_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_39 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18], chanx_left_in[24], chanx_right_in[24], chanx_left_in[30], chanx_right_in[30]}),
		.sram(mux_2level_tapbuf_size12_38_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_38_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_13_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_40 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31]}),
		.sram(mux_2level_tapbuf_size12_39_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_39_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_17_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_41 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14], chanx_left_in[20], chanx_right_in[20], chanx_left_in[26], chanx_right_in[26], chanx_left_in[32], chanx_right_in[32]}),
		.sram(mux_2level_tapbuf_size12_40_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_40_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_21_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_42 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27]}),
		.sram(mux_2level_tapbuf_size12_41_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_41_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_25_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_43 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16], chanx_left_in[22], chanx_right_in[22], chanx_left_in[28], chanx_right_in[28]}),
		.sram(mux_2level_tapbuf_size12_42_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_42_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_29_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_44 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[8], chanx_right_in[8], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29]}),
		.sram(mux_2level_tapbuf_size12_43_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_43_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_33_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_45 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18], chanx_left_in[24], chanx_right_in[24], chanx_left_in[30], chanx_right_in[30]}),
		.sram(mux_2level_tapbuf_size12_44_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_44_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_ivalid_2_0_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_46 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31]}),
		.sram(mux_2level_tapbuf_size12_45_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_45_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_ivch_1_0_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_47 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[14], chanx_right_in[14], chanx_left_in[20], chanx_right_in[20], chanx_left_in[26], chanx_right_in[26], chanx_left_in[32], chanx_right_in[32]}),
		.sram(mux_2level_tapbuf_size12_46_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_46_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_iack_0_0_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_48 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27]}),
		.sram(mux_2level_tapbuf_size12_47_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_47_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_iack_2_0_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_49 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[16], chanx_right_in[16], chanx_left_in[22], chanx_right_in[22], chanx_left_in[28], chanx_right_in[28]}),
		.sram(mux_2level_tapbuf_size12_48_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_48_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_iack_4_0_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_50 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29]}),
		.sram(mux_2level_tapbuf_size12_49_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_49_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_ilck_1_0_));

	mux_2level_tapbuf_size12 mux_bottom_ipin_51 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[18], chanx_right_in[18], chanx_left_in[24], chanx_right_in[24], chanx_left_in[30], chanx_right_in[30]}),
		.sram(mux_2level_tapbuf_size12_50_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_50_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_ilck_3_0_));

	mux_2level_tapbuf_size12 mux_top_ipin_0 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31]}),
		.sram(mux_2level_tapbuf_size12_51_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_51_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_outpad_0_));

	mux_2level_tapbuf_size12 mux_top_ipin_1 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[20], chanx_right_in[20], chanx_left_in[26], chanx_right_in[26], chanx_left_in[32], chanx_right_in[32]}),
		.sram(mux_2level_tapbuf_size12_52_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_52_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_1__pin_outpad_0_));

	mux_2level_tapbuf_size12 mux_top_ipin_2 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27]}),
		.sram(mux_2level_tapbuf_size12_53_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_53_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_2__pin_outpad_0_));

	mux_2level_tapbuf_size12 mux_top_ipin_3 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[22], chanx_right_in[22], chanx_left_in[28], chanx_right_in[28]}),
		.sram(mux_2level_tapbuf_size12_54_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_54_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_3__pin_outpad_0_));

	mux_2level_tapbuf_size12 mux_top_ipin_4 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14], chanx_left_in[20], chanx_right_in[20], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29]}),
		.sram(mux_2level_tapbuf_size12_55_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_55_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_4__pin_outpad_0_));

	mux_2level_tapbuf_size12 mux_top_ipin_5 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[24], chanx_right_in[24], chanx_left_in[30], chanx_right_in[30]}),
		.sram(mux_2level_tapbuf_size12_56_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_56_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_5__pin_outpad_0_));

	mux_2level_tapbuf_size12 mux_top_ipin_6 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16], chanx_left_in[22], chanx_right_in[22], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31]}),
		.sram(mux_2level_tapbuf_size12_57_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_57_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_6__pin_outpad_0_));

	mux_2level_tapbuf_size12 mux_top_ipin_7 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[26], chanx_right_in[26], chanx_left_in[32], chanx_right_in[32]}),
		.sram(mux_2level_tapbuf_size12_58_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_58_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_7__pin_outpad_0_));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_0 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(mux_2level_tapbuf_size12_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_0_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_1 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_1_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_2 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_2_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_3 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_3_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_4 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_4_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_4_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_5 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_5_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_5_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_6 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_6_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_6_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_7 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_7_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_7_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_7_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_8 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_7_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_8_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_8_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_8_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_9 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_8_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_9_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_9_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_9_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_10 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_9_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_10_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_10_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_10_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_11 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_10_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_11_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_11_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_11_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_12 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_11_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_12_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_12_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_12_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_13 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_12_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_13_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_13_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_13_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_14 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_13_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_14_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_14_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_14_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_15 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_14_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_15_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_15_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_15_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_16 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_15_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_16_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_16_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_16_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_17 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_16_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_17_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_17_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_17_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_19 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_18_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_18_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_18_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_20 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_18_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_19_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_19_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_19_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_21 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_19_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_20_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_20_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_20_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_22 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_20_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_21_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_21_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_21_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_23 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_21_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_22_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_22_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_22_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_24 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_22_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_23_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_23_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_23_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_25 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_23_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_24_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_24_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_24_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_26 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_24_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_25_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_25_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_25_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_27 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_25_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_26_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_26_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_26_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_28 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_26_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_27_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_27_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_27_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_29 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_27_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_28_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_28_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_28_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_30 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_28_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_29_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_29_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_29_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_31 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_29_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_30_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_30_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_30_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_32 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_30_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_31_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_31_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_31_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_33 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_31_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_32_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_32_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_32_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_34 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_32_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_33_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_33_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_33_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_35 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_33_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_34_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_34_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_34_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_36 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_34_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_35_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_35_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_35_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_37 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_35_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_36_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_36_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_36_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_38 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_36_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_37_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_37_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_37_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_39 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_37_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_38_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_38_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_38_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_40 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_38_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_39_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_39_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_39_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_41 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_39_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_40_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_40_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_40_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_42 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_40_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_41_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_41_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_41_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_43 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_41_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_42_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_42_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_42_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_44 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_42_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_43_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_43_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_43_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_45 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_43_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_44_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_44_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_44_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_46 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_44_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_45_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_45_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_45_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_47 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_45_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_46_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_46_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_46_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_48 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_46_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_47_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_47_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_47_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_49 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_47_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_48_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_48_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_48_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_50 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_48_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_49_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_49_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_49_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_ipin_51 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_49_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_50_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_50_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_50_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_0 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_50_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_51_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_51_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_51_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_1 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_51_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_52_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_52_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_52_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_2 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_52_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_53_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_53_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_53_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_3 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_53_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_54_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_54_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_54_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_4 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_54_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_55_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_55_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_55_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_5 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_55_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_56_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_56_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_56_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_6 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_56_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_57_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_57_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_57_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_7 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_57_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_58_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_58_sram_inv[0:7]));

	mux_2level_tapbuf_size10 mux_bottom_ipin_18 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[9], chanx_right_in[9], chanx_left_in[17], chanx_right_in[17], chanx_left_in[18], chanx_right_in[18], chanx_left_in[26], chanx_right_in[26]}),
		.sram(mux_2level_tapbuf_size10_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_0_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_34_));

	mux_2level_tapbuf_size10_mem mem_bottom_ipin_18 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_17_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_0_sram_inv[0:7]));

endmodule
// ----- END Verilog module for cbx_1__0_ -----

//----- Default net type -----
`default_nettype wire




