//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for Unique Switch Blocks[0][1]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Thu Aug  8 18:22:30 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for sb_0__1_ -----
module sb_0__1_(pReset,
                prog_clk,
                chany_top_in,
                top_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_,
                top_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_,
                top_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_,
                top_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_,
                top_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_,
                top_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_,
                top_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_,
                top_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_O_3_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_O_7_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_O_11_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_O_15_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_O_19_,
                chanx_right_in,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_10_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_14_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_18_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_2_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_6_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_10_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_14_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_18_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_22_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_26_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_30_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_34_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_3_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_7_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_11_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_15_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_19_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_23_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_27_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_31_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_0_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_4_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_8_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_12_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_16_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_20_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_24_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_28_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_32_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_1_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_5_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_9_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_13_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_17_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_21_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_25_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_29_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_33_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_2_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_6_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_10_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_14_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_18_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_22_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_26_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_30_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_34_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovalid_3_0_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovch_2_0_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_0_1_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_2_1_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_4_1_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_1_1_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_3_1_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_0_1_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_2_1_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_4_1_,
                chany_bottom_in,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_1_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_5_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_9_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_13_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_17_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_21_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_25_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_29_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_33_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_2_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_6_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_10_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_14_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_18_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_22_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_26_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_30_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_34_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_3_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_7_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_11_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_15_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_19_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_23_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_27_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_31_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_0_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_4_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_8_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_12_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_16_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_20_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_24_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_28_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_32_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_1_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_5_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_9_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_13_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_17_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_21_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_25_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_29_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_33_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovalid_2_0_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovch_1_0_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_0_0_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_2_0_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_4_0_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_1_0_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_3_0_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_0_0_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_2_0_,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_4_0_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_,
                bottom_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_,
                bottom_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_,
                bottom_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_,
                bottom_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_,
                bottom_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_,
                bottom_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_,
                bottom_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_,
                ccff_head,
                chany_top_out,
                chanx_right_out,
                chany_bottom_out,
                ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] pReset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:32] chany_top_in;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_O_3_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_O_7_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_O_11_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_O_15_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_O_19_;
//----- INPUT PORTS -----
input [0:32] chanx_right_in;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_10_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_14_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_18_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_2_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_6_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_10_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_14_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_18_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_22_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_26_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_30_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_34_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_3_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_7_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_11_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_15_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_19_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_23_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_27_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_31_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_0_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_4_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_8_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_12_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_16_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_20_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_24_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_28_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_32_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_1_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_5_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_9_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_13_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_17_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_21_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_25_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_29_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_33_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_2_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_6_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_10_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_14_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_18_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_22_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_26_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_30_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_34_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovalid_3_0_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovch_2_0_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_0_1_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_2_1_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_4_1_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_1_1_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_3_1_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_0_1_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_2_1_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_4_1_;
//----- INPUT PORTS -----
input [0:32] chany_bottom_in;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_1_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_5_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_9_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_13_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_17_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_21_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_25_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_29_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_33_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_2_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_6_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_10_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_14_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_18_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_22_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_26_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_30_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_34_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_3_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_7_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_11_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_15_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_19_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_23_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_27_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_31_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_0_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_4_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_8_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_12_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_16_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_20_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_24_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_28_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_32_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_1_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_5_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_9_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_13_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_17_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_21_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_25_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_29_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_33_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovalid_2_0_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovch_1_0_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_0_0_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_2_0_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_4_0_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_1_0_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_3_0_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_0_0_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_2_0_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_4_0_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:32] chany_top_out;
//----- OUTPUT PORTS -----
output [0:32] chanx_right_out;
//----- OUTPUT PORTS -----
output [0:32] chany_bottom_out;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:7] mux_2level_tapbuf_size10_0_sram;
wire [0:7] mux_2level_tapbuf_size10_0_sram_inv;
wire [0:7] mux_2level_tapbuf_size10_1_sram;
wire [0:7] mux_2level_tapbuf_size10_1_sram_inv;
wire [0:7] mux_2level_tapbuf_size10_2_sram;
wire [0:7] mux_2level_tapbuf_size10_2_sram_inv;
wire [0:7] mux_2level_tapbuf_size10_3_sram;
wire [0:7] mux_2level_tapbuf_size10_3_sram_inv;
wire [0:7] mux_2level_tapbuf_size10_4_sram;
wire [0:7] mux_2level_tapbuf_size10_4_sram_inv;
wire [0:0] mux_2level_tapbuf_size10_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size10_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size10_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size10_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size10_mem_4_ccff_tail;
wire [0:7] mux_2level_tapbuf_size11_0_sram;
wire [0:7] mux_2level_tapbuf_size11_0_sram_inv;
wire [0:7] mux_2level_tapbuf_size11_1_sram;
wire [0:7] mux_2level_tapbuf_size11_1_sram_inv;
wire [0:7] mux_2level_tapbuf_size11_2_sram;
wire [0:7] mux_2level_tapbuf_size11_2_sram_inv;
wire [0:0] mux_2level_tapbuf_size11_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size11_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size11_mem_2_ccff_tail;
wire [0:7] mux_2level_tapbuf_size12_0_sram;
wire [0:7] mux_2level_tapbuf_size12_0_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_1_sram;
wire [0:7] mux_2level_tapbuf_size12_1_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_2_sram;
wire [0:7] mux_2level_tapbuf_size12_2_sram_inv;
wire [0:0] mux_2level_tapbuf_size12_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_2_ccff_tail;
wire [0:7] mux_2level_tapbuf_size13_0_sram;
wire [0:7] mux_2level_tapbuf_size13_0_sram_inv;
wire [0:0] mux_2level_tapbuf_size13_mem_0_ccff_tail;
wire [0:7] mux_2level_tapbuf_size14_0_sram;
wire [0:7] mux_2level_tapbuf_size14_0_sram_inv;
wire [0:0] mux_2level_tapbuf_size14_mem_0_ccff_tail;
wire [0:7] mux_2level_tapbuf_size15_0_sram;
wire [0:7] mux_2level_tapbuf_size15_0_sram_inv;
wire [0:0] mux_2level_tapbuf_size15_mem_0_ccff_tail;
wire [0:9] mux_2level_tapbuf_size16_0_sram;
wire [0:9] mux_2level_tapbuf_size16_0_sram_inv;
wire [0:0] mux_2level_tapbuf_size16_mem_0_ccff_tail;
wire [0:9] mux_2level_tapbuf_size17_0_sram;
wire [0:9] mux_2level_tapbuf_size17_0_sram_inv;
wire [0:9] mux_2level_tapbuf_size17_1_sram;
wire [0:9] mux_2level_tapbuf_size17_1_sram_inv;
wire [0:9] mux_2level_tapbuf_size17_2_sram;
wire [0:9] mux_2level_tapbuf_size17_2_sram_inv;
wire [0:0] mux_2level_tapbuf_size17_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size17_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size17_mem_2_ccff_tail;
wire [0:9] mux_2level_tapbuf_size18_0_sram;
wire [0:9] mux_2level_tapbuf_size18_0_sram_inv;
wire [0:9] mux_2level_tapbuf_size19_0_sram;
wire [0:9] mux_2level_tapbuf_size19_0_sram_inv;
wire [0:0] mux_2level_tapbuf_size19_mem_0_ccff_tail;
wire [0:9] mux_2level_tapbuf_size20_0_sram;
wire [0:9] mux_2level_tapbuf_size20_0_sram_inv;
wire [0:9] mux_2level_tapbuf_size20_1_sram;
wire [0:9] mux_2level_tapbuf_size20_1_sram_inv;
wire [0:0] mux_2level_tapbuf_size20_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size20_mem_1_ccff_tail;
wire [0:5] mux_2level_tapbuf_size5_0_sram;
wire [0:5] mux_2level_tapbuf_size5_0_sram_inv;
wire [0:5] mux_2level_tapbuf_size5_1_sram;
wire [0:5] mux_2level_tapbuf_size5_1_sram_inv;
wire [0:5] mux_2level_tapbuf_size5_2_sram;
wire [0:5] mux_2level_tapbuf_size5_2_sram_inv;
wire [0:5] mux_2level_tapbuf_size5_3_sram;
wire [0:5] mux_2level_tapbuf_size5_3_sram_inv;
wire [0:5] mux_2level_tapbuf_size5_4_sram;
wire [0:5] mux_2level_tapbuf_size5_4_sram_inv;
wire [0:0] mux_2level_tapbuf_size5_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size5_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size5_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size5_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size5_mem_4_ccff_tail;
wire [0:5] mux_2level_tapbuf_size6_0_sram;
wire [0:5] mux_2level_tapbuf_size6_0_sram_inv;
wire [0:5] mux_2level_tapbuf_size6_1_sram;
wire [0:5] mux_2level_tapbuf_size6_1_sram_inv;
wire [0:5] mux_2level_tapbuf_size6_2_sram;
wire [0:5] mux_2level_tapbuf_size6_2_sram_inv;
wire [0:5] mux_2level_tapbuf_size6_3_sram;
wire [0:5] mux_2level_tapbuf_size6_3_sram_inv;
wire [0:5] mux_2level_tapbuf_size6_4_sram;
wire [0:5] mux_2level_tapbuf_size6_4_sram_inv;
wire [0:5] mux_2level_tapbuf_size6_5_sram;
wire [0:5] mux_2level_tapbuf_size6_5_sram_inv;
wire [0:5] mux_2level_tapbuf_size6_6_sram;
wire [0:5] mux_2level_tapbuf_size6_6_sram_inv;
wire [0:0] mux_2level_tapbuf_size6_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_4_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_5_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_6_ccff_tail;
wire [0:5] mux_2level_tapbuf_size7_0_sram;
wire [0:5] mux_2level_tapbuf_size7_0_sram_inv;
wire [0:5] mux_2level_tapbuf_size7_1_sram;
wire [0:5] mux_2level_tapbuf_size7_1_sram_inv;
wire [0:5] mux_2level_tapbuf_size7_2_sram;
wire [0:5] mux_2level_tapbuf_size7_2_sram_inv;
wire [0:5] mux_2level_tapbuf_size7_3_sram;
wire [0:5] mux_2level_tapbuf_size7_3_sram_inv;
wire [0:5] mux_2level_tapbuf_size7_4_sram;
wire [0:5] mux_2level_tapbuf_size7_4_sram_inv;
wire [0:5] mux_2level_tapbuf_size7_5_sram;
wire [0:5] mux_2level_tapbuf_size7_5_sram_inv;
wire [0:5] mux_2level_tapbuf_size7_6_sram;
wire [0:5] mux_2level_tapbuf_size7_6_sram_inv;
wire [0:5] mux_2level_tapbuf_size7_7_sram;
wire [0:5] mux_2level_tapbuf_size7_7_sram_inv;
wire [0:5] mux_2level_tapbuf_size7_8_sram;
wire [0:5] mux_2level_tapbuf_size7_8_sram_inv;
wire [0:5] mux_2level_tapbuf_size7_9_sram;
wire [0:5] mux_2level_tapbuf_size7_9_sram_inv;
wire [0:0] mux_2level_tapbuf_size7_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_4_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_5_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_6_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_7_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_8_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_9_ccff_tail;
wire [0:5] mux_2level_tapbuf_size8_0_sram;
wire [0:5] mux_2level_tapbuf_size8_0_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_1_sram;
wire [0:5] mux_2level_tapbuf_size8_1_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_2_sram;
wire [0:5] mux_2level_tapbuf_size8_2_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_3_sram;
wire [0:5] mux_2level_tapbuf_size8_3_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_4_sram;
wire [0:5] mux_2level_tapbuf_size8_4_sram_inv;
wire [0:0] mux_2level_tapbuf_size8_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_4_ccff_tail;
wire [0:7] mux_2level_tapbuf_size9_0_sram;
wire [0:7] mux_2level_tapbuf_size9_0_sram_inv;
wire [0:7] mux_2level_tapbuf_size9_1_sram;
wire [0:7] mux_2level_tapbuf_size9_1_sram_inv;
wire [0:0] mux_2level_tapbuf_size9_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size9_mem_1_ccff_tail;

// ----- BEGIN Local short connections -----
// ----- Local connection due to Wire 0 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[1] = chany_top_in[0];
// ----- Local connection due to Wire 1 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[2] = chany_top_in[1];
// ----- Local connection due to Wire 2 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[3] = chany_top_in[2];
// ----- Local connection due to Wire 4 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[5] = chany_top_in[4];
// ----- Local connection due to Wire 5 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[6] = chany_top_in[5];
// ----- Local connection due to Wire 6 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[7] = chany_top_in[6];
// ----- Local connection due to Wire 8 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[9] = chany_top_in[8];
// ----- Local connection due to Wire 9 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[10] = chany_top_in[9];
// ----- Local connection due to Wire 10 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[11] = chany_top_in[10];
// ----- Local connection due to Wire 12 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[13] = chany_top_in[12];
// ----- Local connection due to Wire 13 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[14] = chany_top_in[13];
// ----- Local connection due to Wire 14 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[15] = chany_top_in[14];
// ----- Local connection due to Wire 16 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[17] = chany_top_in[16];
// ----- Local connection due to Wire 17 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[18] = chany_top_in[17];
// ----- Local connection due to Wire 18 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[19] = chany_top_in[18];
// ----- Local connection due to Wire 20 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[21] = chany_top_in[20];
// ----- Local connection due to Wire 21 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[22] = chany_top_in[21];
// ----- Local connection due to Wire 22 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[23] = chany_top_in[22];
// ----- Local connection due to Wire 24 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[25] = chany_top_in[24];
// ----- Local connection due to Wire 25 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[26] = chany_top_in[25];
// ----- Local connection due to Wire 26 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[27] = chany_top_in[26];
// ----- Local connection due to Wire 28 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[29] = chany_top_in[28];
// ----- Local connection due to Wire 29 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[30] = chany_top_in[29];
// ----- Local connection due to Wire 30 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[31] = chany_top_in[30];
// ----- Local connection due to Wire 138 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[1] = chany_bottom_in[0];
// ----- Local connection due to Wire 139 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[2] = chany_bottom_in[1];
// ----- Local connection due to Wire 140 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[3] = chany_bottom_in[2];
// ----- Local connection due to Wire 142 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[5] = chany_bottom_in[4];
// ----- Local connection due to Wire 143 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[6] = chany_bottom_in[5];
// ----- Local connection due to Wire 144 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[7] = chany_bottom_in[6];
// ----- Local connection due to Wire 146 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[9] = chany_bottom_in[8];
// ----- Local connection due to Wire 147 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[10] = chany_bottom_in[9];
// ----- Local connection due to Wire 148 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[11] = chany_bottom_in[10];
// ----- Local connection due to Wire 150 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[13] = chany_bottom_in[12];
// ----- Local connection due to Wire 151 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[14] = chany_bottom_in[13];
// ----- Local connection due to Wire 152 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[15] = chany_bottom_in[14];
// ----- Local connection due to Wire 154 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[17] = chany_bottom_in[16];
// ----- Local connection due to Wire 155 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[18] = chany_bottom_in[17];
// ----- Local connection due to Wire 156 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[19] = chany_bottom_in[18];
// ----- Local connection due to Wire 158 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[21] = chany_bottom_in[20];
// ----- Local connection due to Wire 159 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[22] = chany_bottom_in[21];
// ----- Local connection due to Wire 160 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[23] = chany_bottom_in[22];
// ----- Local connection due to Wire 162 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[25] = chany_bottom_in[24];
// ----- Local connection due to Wire 163 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[26] = chany_bottom_in[25];
// ----- Local connection due to Wire 164 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[27] = chany_bottom_in[26];
// ----- Local connection due to Wire 166 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[29] = chany_bottom_in[28];
// ----- Local connection due to Wire 167 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[30] = chany_bottom_in[29];
// ----- Local connection due to Wire 168 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[31] = chany_bottom_in[30];
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	mux_2level_tapbuf_size8 mux_top_track_0 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_, top_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_, top_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_O_7_, chanx_right_in[1], chanx_right_in[10], chanx_right_in[19], chanx_right_in[28]}),
		.sram(mux_2level_tapbuf_size8_0_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_0_sram_inv[0:5]),
		.out(chany_top_out[0]));

	mux_2level_tapbuf_size8 mux_top_track_8 (
		.in({top_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_, top_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_, top_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_O_11_, chanx_right_in[2], chanx_right_in[11], chanx_right_in[20], chanx_right_in[29]}),
		.sram(mux_2level_tapbuf_size8_1_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_1_sram_inv[0:5]),
		.out(chany_top_out[4]));

	mux_2level_tapbuf_size8 mux_top_track_16 (
		.in({top_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_, top_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_, top_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_O_15_, chanx_right_in[3], chanx_right_in[12], chanx_right_in[21], chanx_right_in[30]}),
		.sram(mux_2level_tapbuf_size8_2_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_2_sram_inv[0:5]),
		.out(chany_top_out[8]));

	mux_2level_tapbuf_size8 mux_top_track_24 (
		.in({top_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_, top_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_O_3_, top_right_grid_left_width_0_height_0_subtile_0__pin_O_19_, chanx_right_in[4], chanx_right_in[13], chanx_right_in[22], chanx_right_in[31]}),
		.sram(mux_2level_tapbuf_size8_3_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_3_sram_inv[0:5]),
		.out(chany_top_out[12]));

	mux_2level_tapbuf_size8 mux_right_track_42 (
		.in({chany_top_in[26], right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_22_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_31_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_14_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_1_1_, chany_bottom_in[13]}),
		.sram(mux_2level_tapbuf_size8_4_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_4_sram_inv[0:5]),
		.out(chanx_right_out[21]));

	mux_2level_tapbuf_size8_mem mem_top_track_0 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(mux_2level_tapbuf_size8_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_0_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_0_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_top_track_8 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_1_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_1_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_top_track_16 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_2_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_2_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_top_track_24 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_3_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_3_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_right_track_42 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size5_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_4_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_4_sram_inv[0:5]));

	mux_2level_tapbuf_size7 mux_top_track_32 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_, top_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_, top_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_, chanx_right_in[5], chanx_right_in[14], chanx_right_in[23], chanx_right_in[32]}),
		.sram(mux_2level_tapbuf_size7_0_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_0_sram_inv[0:5]),
		.out(chany_top_out[16]));

	mux_2level_tapbuf_size7 mux_top_track_64 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_, top_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_O_3_, chanx_right_in[0], chanx_right_in[9], chanx_right_in[18], chanx_right_in[27]}),
		.sram(mux_2level_tapbuf_size7_1_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_1_sram_inv[0:5]),
		.out(chany_top_out[32]));

	mux_2level_tapbuf_size7 mux_right_track_0 (
		.in({right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_26_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_9_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_18_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovch_2_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_3_1_}),
		.sram(mux_2level_tapbuf_size7_2_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_2_sram_inv[0:5]),
		.out(chanx_right_out[0]));

	mux_2level_tapbuf_size7 mux_right_track_2 (
		.in({chany_top_in[0], chany_top_in[3], right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_30_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_13_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_22_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_0_1_}),
		.sram(mux_2level_tapbuf_size7_3_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_3_sram_inv[0:5]),
		.out(chanx_right_out[1]));

	mux_2level_tapbuf_size7 mux_right_track_4 (
		.in({chany_top_in[1], chany_top_in[7], right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_34_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_17_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_26_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_2_1_}),
		.sram(mux_2level_tapbuf_size7_4_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_4_sram_inv[0:5]),
		.out(chanx_right_out[2]));

	mux_2level_tapbuf_size7 mux_right_track_6 (
		.in({chany_top_in[2], chany_top_in[11], right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_14_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_12_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_21_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_30_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_4_1_}),
		.sram(mux_2level_tapbuf_size7_5_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_5_sram_inv[0:5]),
		.out(chanx_right_out[3]));

	mux_2level_tapbuf_size7 mux_right_track_8 (
		.in({chany_top_in[4], chany_top_in[15], right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_18_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_16_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_25_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_34_}),
		.sram(mux_2level_tapbuf_size7_6_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_6_sram_inv[0:5]),
		.out(chanx_right_out[4]));

	mux_2level_tapbuf_size7 mux_right_track_18 (
		.in({chany_top_in[10], chany_top_in[32], right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_18_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_27_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_4_1_, chany_bottom_in[29]}),
		.sram(mux_2level_tapbuf_size7_7_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_7_sram_inv[0:5]),
		.out(chanx_right_out[9]));

	mux_2level_tapbuf_size7 mux_right_track_24 (
		.in({chany_top_in[14], right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_30_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_13_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_22_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_0_1_, chany_bottom_in[25]}),
		.sram(mux_2level_tapbuf_size7_8_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_8_sram_inv[0:5]),
		.out(chanx_right_out[12]));

	mux_2level_tapbuf_size7 mux_right_track_34 (
		.in({chany_top_in[21], right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_15_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_24_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_33_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovch_2_0_, chany_bottom_in[18]}),
		.sram(mux_2level_tapbuf_size7_9_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_9_sram_inv[0:5]),
		.out(chanx_right_out[17]));

	mux_2level_tapbuf_size7_mem mem_top_track_32 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_0_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_0_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_top_track_64 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_1_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_1_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_right_track_0 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_2_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_2_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_right_track_2 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_3_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_3_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_right_track_4 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_4_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_4_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_right_track_6 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_5_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_5_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_right_track_8 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_6_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_6_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_right_track_18 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_7_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_7_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_7_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_right_track_24 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size5_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_8_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_8_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_8_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_right_track_34 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_9_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_9_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_9_sram_inv[0:5]));

	mux_2level_tapbuf_size6 mux_top_track_40 (
		.in({top_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_, top_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_, top_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_, chanx_right_in[6], chanx_right_in[15], chanx_right_in[24]}),
		.sram(mux_2level_tapbuf_size6_0_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_0_sram_inv[0:5]),
		.out(chany_top_out[20]));

	mux_2level_tapbuf_size6 mux_top_track_48 (
		.in({top_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_, top_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_, top_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_, chanx_right_in[7], chanx_right_in[16], chanx_right_in[25]}),
		.sram(mux_2level_tapbuf_size6_1_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_1_sram_inv[0:5]),
		.out(chany_top_out[24]));

	mux_2level_tapbuf_size6 mux_top_track_56 (
		.in({top_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_, top_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_O_3_, chanx_right_in[8], chanx_right_in[17], chanx_right_in[26]}),
		.sram(mux_2level_tapbuf_size6_2_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_2_sram_inv[0:5]),
		.out(chany_top_out[28]));

	mux_2level_tapbuf_size6 mux_right_track_20 (
		.in({chany_top_in[12], right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_22_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_31_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_14_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_1_1_, chany_bottom_in[28]}),
		.sram(mux_2level_tapbuf_size6_3_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_3_sram_inv[0:5]),
		.out(chanx_right_out[10]));

	mux_2level_tapbuf_size6 mux_right_track_38 (
		.in({chany_top_in[24], right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_14_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_23_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_32_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_2_1_, chany_bottom_in[16]}),
		.sram(mux_2level_tapbuf_size6_4_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_4_sram_inv[0:5]),
		.out(chanx_right_out[19]));

	mux_2level_tapbuf_size6 mux_right_track_52 (
		.in({right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_18_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_16_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_25_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_34_, chany_bottom_in[6], chany_bottom_in[23]}),
		.sram(mux_2level_tapbuf_size6_5_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_5_sram_inv[0:5]),
		.out(chanx_right_out[26]));

	mux_2level_tapbuf_size6 mux_right_track_58 (
		.in({right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_19_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_28_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_0_1_, chany_bottom_in[2], chany_bottom_in[11]}),
		.sram(mux_2level_tapbuf_size6_6_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_6_sram_inv[0:5]),
		.out(chanx_right_out[29]));

	mux_2level_tapbuf_size6_mem mem_top_track_40 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_0_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_0_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_top_track_48 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_1_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_1_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_top_track_56 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_2_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_2_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_right_track_20 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_7_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_3_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_3_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_right_track_38 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size5_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_4_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_4_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_right_track_52 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size9_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_5_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_5_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_right_track_58 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size5_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_6_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_6_sram_inv[0:5]));

	mux_2level_tapbuf_size9 mux_right_track_10 (
		.in({chany_top_in[5], chany_top_in[19], right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_3_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_11_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_20_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_29_}),
		.sram(mux_2level_tapbuf_size9_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size9_0_sram_inv[0:7]),
		.out(chanx_right_out[5]));

	mux_2level_tapbuf_size9 mux_right_track_50 (
		.in({right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_14_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_12_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_21_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_30_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovch_2_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_4_1_, chany_bottom_in[8], chany_bottom_in[27]}),
		.sram(mux_2level_tapbuf_size9_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size9_1_sram_inv[0:7]),
		.out(chanx_right_out[25]));

	mux_2level_tapbuf_size9_mem mem_right_track_10 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size9_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size9_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size9_0_sram_inv[0:7]));

	mux_2level_tapbuf_size9_mem mem_right_track_50 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size9_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size9_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size9_1_sram_inv[0:7]));

	mux_2level_tapbuf_size11 mux_right_track_12 (
		.in({chany_top_in[6], chany_top_in[23], right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_7_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_15_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_4_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_24_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_33_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_2_}),
		.sram(mux_2level_tapbuf_size11_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_0_sram_inv[0:7]),
		.out(chanx_right_out[6]));

	mux_2level_tapbuf_size11 mux_right_track_14 (
		.in({chany_top_in[8], chany_top_in[27], right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_19_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_8_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_28_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_5_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovalid_3_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_0_1_}),
		.sram(mux_2level_tapbuf_size11_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_1_sram_inv[0:7]),
		.out(chanx_right_out[7]));

	mux_2level_tapbuf_size11 mux_right_track_62 (
		.in({right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_18_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_7_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_27_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_4_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_5_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_4_1_, chany_bottom_in[0], chany_bottom_in[3]}),
		.sram(mux_2level_tapbuf_size11_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_2_sram_inv[0:7]),
		.out(chanx_right_out[31]));

	mux_2level_tapbuf_size11_mem mem_right_track_12 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size9_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size11_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_0_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_right_track_14 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size11_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size11_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_1_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_right_track_62 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size11_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_2_sram_inv[0:7]));

	mux_2level_tapbuf_size12 mux_right_track_16 (
		.in({chany_top_in[9], chany_top_in[31], right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_14_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_23_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_32_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_9_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovch_2_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_2_1_, chany_bottom_in[30]}),
		.sram(mux_2level_tapbuf_size12_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_0_sram_inv[0:7]),
		.out(chanx_right_out[8]));

	mux_2level_tapbuf_size12 mux_right_track_28 (
		.in({chany_top_in[17], right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_14_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_3_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_7_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_4_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_12_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_21_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_30_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_4_1_, chany_bottom_in[22]}),
		.sram(mux_2level_tapbuf_size12_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_1_sram_inv[0:7]),
		.out(chanx_right_out[14]));

	mux_2level_tapbuf_size12 mux_right_track_30 (
		.in({chany_top_in[18], right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_18_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_7_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_8_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_16_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_5_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_25_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_34_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovalid_3_0_, chany_bottom_in[21]}),
		.sram(mux_2level_tapbuf_size12_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_2_sram_inv[0:7]),
		.out(chanx_right_out[15]));

	mux_2level_tapbuf_size12_mem mem_right_track_16 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size11_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_0_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_track_28 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_1_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_track_30 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_2_sram_inv[0:7]));

	mux_2level_tapbuf_size5 mux_right_track_22 (
		.in({chany_top_in[13], right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_26_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_18_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_3_1_, chany_bottom_in[26]}),
		.sram(mux_2level_tapbuf_size5_0_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size5_0_sram_inv[0:5]),
		.out(chanx_right_out[11]));

	mux_2level_tapbuf_size5 mux_right_track_36 (
		.in({chany_top_in[22], right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_19_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_28_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_0_1_, chany_bottom_in[17]}),
		.sram(mux_2level_tapbuf_size5_1_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size5_1_sram_inv[0:5]),
		.out(chanx_right_out[18]));

	mux_2level_tapbuf_size5 mux_right_track_40 (
		.in({chany_top_in[25], right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_18_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_27_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_4_1_, chany_bottom_in[14]}),
		.sram(mux_2level_tapbuf_size5_2_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size5_2_sram_inv[0:5]),
		.out(chanx_right_out[20]));

	mux_2level_tapbuf_size5 mux_right_track_54 (
		.in({right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_11_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_20_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_29_, chany_bottom_in[5], chany_bottom_in[19]}),
		.sram(mux_2level_tapbuf_size5_3_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size5_3_sram_inv[0:5]),
		.out(chanx_right_out[27]));

	mux_2level_tapbuf_size5 mux_right_track_56 (
		.in({right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_15_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_24_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_33_, chany_bottom_in[4], chany_bottom_in[15]}),
		.sram(mux_2level_tapbuf_size5_4_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size5_4_sram_inv[0:5]),
		.out(chanx_right_out[28]));

	mux_2level_tapbuf_size5_mem mem_right_track_22 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size5_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size5_0_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size5_0_sram_inv[0:5]));

	mux_2level_tapbuf_size5_mem mem_right_track_36 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_9_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size5_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size5_1_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size5_1_sram_inv[0:5]));

	mux_2level_tapbuf_size5_mem mem_right_track_40 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size5_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size5_2_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size5_2_sram_inv[0:5]));

	mux_2level_tapbuf_size5_mem mem_right_track_54 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size5_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size5_3_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size5_3_sram_inv[0:5]));

	mux_2level_tapbuf_size5_mem mem_right_track_56 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size5_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size5_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size5_4_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size5_4_sram_inv[0:5]));

	mux_2level_tapbuf_size10 mux_right_track_26 (
		.in({chany_top_in[16], right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_34_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_3_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_17_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_26_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_2_1_, chany_bottom_in[24]}),
		.sram(mux_2level_tapbuf_size10_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_0_sram_inv[0:7]),
		.out(chanx_right_out[13]));

	mux_2level_tapbuf_size10 mux_right_track_32 (
		.in({chany_top_in[20], right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_11_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_20_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_9_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_29_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovalid_3_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovch_2_0_, chany_bottom_in[20]}),
		.sram(mux_2level_tapbuf_size10_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_1_sram_inv[0:7]),
		.out(chanx_right_out[16]));

	mux_2level_tapbuf_size10 mux_right_track_44 (
		.in({chany_top_in[28], right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_26_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_3_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_4_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_18_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_3_1_, chany_bottom_in[12]}),
		.sram(mux_2level_tapbuf_size10_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_2_sram_inv[0:7]),
		.out(chanx_right_out[22]));

	mux_2level_tapbuf_size10 mux_right_track_60 (
		.in({right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_14_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_3_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_23_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_32_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_2_1_, chany_bottom_in[1], chany_bottom_in[7]}),
		.sram(mux_2level_tapbuf_size10_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_3_sram_inv[0:7]),
		.out(chanx_right_out[30]));

	mux_2level_tapbuf_size10 mux_right_track_64 (
		.in({right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_22_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_31_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_8_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_5_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_9_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_14_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovalid_3_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_1_1_}),
		.sram(mux_2level_tapbuf_size10_4_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_4_sram_inv[0:7]),
		.out(chanx_right_out[32]));

	mux_2level_tapbuf_size10_mem mem_right_track_26 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_8_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_0_sram_inv[0:7]));

	mux_2level_tapbuf_size10_mem mem_right_track_32 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_1_sram_inv[0:7]));

	mux_2level_tapbuf_size10_mem mem_right_track_44 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_2_sram_inv[0:7]));

	mux_2level_tapbuf_size10_mem mem_right_track_60 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_3_sram_inv[0:7]));

	mux_2level_tapbuf_size10_mem mem_right_track_64 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size11_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_4_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_4_sram_inv[0:7]));

	mux_2level_tapbuf_size14 mux_right_track_46 (
		.in({chany_top_in[29], right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_30_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_7_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_4_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_8_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_5_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_13_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_22_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_0_1_, chany_bottom_in[10], chany_bottom_in[32]}),
		.sram(mux_2level_tapbuf_size14_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_0_sram_inv[0:7]),
		.out(chanx_right_out[23]));

	mux_2level_tapbuf_size14_mem mem_right_track_46 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_0_sram_inv[0:7]));

	mux_2level_tapbuf_size13 mux_right_track_48 (
		.in({chany_top_in[30], right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_2_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_O_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_34_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_8_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_9_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_17_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_26_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovalid_3_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_2_1_, chany_bottom_in[9], chany_bottom_in[31]}),
		.sram(mux_2level_tapbuf_size13_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_0_sram_inv[0:7]),
		.out(chanx_right_out[24]));

	mux_2level_tapbuf_size13_mem mem_right_track_48 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_0_sram_inv[0:7]));

	mux_2level_tapbuf_size19 mux_bottom_track_1 (
		.in({chanx_right_in[7], chanx_right_in[16], chanx_right_in[25], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_1_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_5_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_2_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_6_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_3_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_7_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_4_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_8_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_5_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_9_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovch_1_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_0_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_3_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size19_0_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size19_0_sram_inv[0:9]),
		.out(chany_bottom_out[0]));

	mux_2level_tapbuf_size19_mem mem_bottom_track_1 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size19_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size19_0_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size19_0_sram_inv[0:9]));

	mux_2level_tapbuf_size16 mux_bottom_track_9 (
		.in({chanx_right_in[6], chanx_right_in[15], chanx_right_in[24], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_5_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_9_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_6_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_10_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_7_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_8_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_9_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_0_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_2_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_0_0_, bottom_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size16_0_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size16_0_sram_inv[0:9]),
		.out(chany_bottom_out[4]));

	mux_2level_tapbuf_size16_mem mem_bottom_track_9 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size19_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size16_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size16_0_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size16_0_sram_inv[0:9]));

	mux_2level_tapbuf_size15 mux_bottom_track_17 (
		.in({chanx_right_in[5], chanx_right_in[14], chanx_right_in[23], chanx_right_in[32], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_9_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_10_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_11_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_12_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_13_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_2_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_4_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_2_0_, bottom_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size15_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size15_0_sram_inv[0:7]),
		.out(chany_bottom_out[8]));

	mux_2level_tapbuf_size15_mem mem_bottom_track_17 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size16_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size15_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size15_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size15_0_sram_inv[0:7]));

	mux_2level_tapbuf_size17 mux_bottom_track_25 (
		.in({chanx_right_in[4], chanx_right_in[13], chanx_right_in[22], chanx_right_in[31], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_13_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_14_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_15_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_16_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_1_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_17_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovalid_2_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_4_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_1_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_4_0_, bottom_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size17_0_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size17_0_sram_inv[0:9]),
		.out(chany_bottom_out[12]));

	mux_2level_tapbuf_size17 mux_bottom_track_49 (
		.in({chanx_right_in[1], chanx_right_in[10], chanx_right_in[19], chanx_right_in[28], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_9_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_25_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_10_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_26_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_27_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_28_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_29_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_2_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_0_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_2_0_, bottom_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size17_1_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size17_1_sram_inv[0:9]),
		.out(chany_bottom_out[24]));

	mux_2level_tapbuf_size17 mux_bottom_track_57 (
		.in({chanx_right_in[0], chanx_right_in[9], chanx_right_in[18], chanx_right_in[27], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_29_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_30_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_31_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_32_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_1_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_33_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovalid_2_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_4_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_2_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_4_0_, bottom_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size17_2_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size17_2_sram_inv[0:9]),
		.out(chany_bottom_out[28]));

	mux_2level_tapbuf_size17_mem mem_bottom_track_25 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size15_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size17_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size17_0_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size17_0_sram_inv[0:9]));

	mux_2level_tapbuf_size17_mem mem_bottom_track_49 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size20_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size17_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size17_1_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size17_1_sram_inv[0:9]));

	mux_2level_tapbuf_size17_mem mem_bottom_track_57 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size17_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size17_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size17_2_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size17_2_sram_inv[0:9]));

	mux_2level_tapbuf_size20 mux_bottom_track_33 (
		.in({chanx_right_in[3], chanx_right_in[12], chanx_right_in[21], chanx_right_in[30], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_1_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_17_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_2_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_18_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_3_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_19_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_4_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_20_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_5_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_21_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovch_1_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_1_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_3_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size20_0_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size20_0_sram_inv[0:9]),
		.out(chany_bottom_out[16]));

	mux_2level_tapbuf_size20 mux_bottom_track_41 (
		.in({chanx_right_in[2], chanx_right_in[11], chanx_right_in[20], chanx_right_in[29], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_5_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_21_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_6_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_22_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_7_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_23_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_8_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_24_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_9_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_25_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_0_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_3_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_0_0_, bottom_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size20_1_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size20_1_sram_inv[0:9]),
		.out(chany_bottom_out[20]));

	mux_2level_tapbuf_size20_mem mem_bottom_track_33 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size17_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size20_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size20_0_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size20_0_sram_inv[0:9]));

	mux_2level_tapbuf_size20_mem mem_bottom_track_41 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size20_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size20_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size20_1_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size20_1_sram_inv[0:9]));

	mux_2level_tapbuf_size18 mux_bottom_track_65 (
		.in({chanx_right_in[8], chanx_right_in[17], chanx_right_in[26], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_1_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_33_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_2_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_34_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_3_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_4_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_1_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_5_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovalid_2_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovch_1_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_1_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_4_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size18_0_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size18_0_sram_inv[0:9]),
		.out(chany_bottom_out[32]));

	mux_2level_tapbuf_size18_mem mem_bottom_track_65 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size17_mem_2_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_2level_tapbuf_size18_0_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size18_0_sram_inv[0:9]));

endmodule
// ----- END Verilog module for sb_0__1_ -----

//----- Default net type -----
`default_nettype wire



