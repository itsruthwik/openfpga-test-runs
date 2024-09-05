//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for Unique Switch Blocks[3][6]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Tue Aug 20 23:36:48 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for sb_3__6_ -----
module sb_3__6_(pReset,
                prog_clk,
                chanx_right_in,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_,
                right_top_grid_bottom_width_0_height_0_subtile_1__pin_inpad_0_,
                right_top_grid_bottom_width_0_height_0_subtile_2__pin_inpad_0_,
                right_top_grid_bottom_width_0_height_0_subtile_3__pin_inpad_0_,
                right_top_grid_bottom_width_0_height_0_subtile_4__pin_inpad_0_,
                right_top_grid_bottom_width_0_height_0_subtile_5__pin_inpad_0_,
                right_top_grid_bottom_width_0_height_0_subtile_6__pin_inpad_0_,
                right_top_grid_bottom_width_0_height_0_subtile_7__pin_inpad_0_,
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
                chanx_left_in,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_,
                left_top_grid_bottom_width_0_height_0_subtile_1__pin_inpad_0_,
                left_top_grid_bottom_width_0_height_0_subtile_2__pin_inpad_0_,
                left_top_grid_bottom_width_0_height_0_subtile_3__pin_inpad_0_,
                left_top_grid_bottom_width_0_height_0_subtile_4__pin_inpad_0_,
                left_top_grid_bottom_width_0_height_0_subtile_5__pin_inpad_0_,
                left_top_grid_bottom_width_0_height_0_subtile_6__pin_inpad_0_,
                left_top_grid_bottom_width_0_height_0_subtile_7__pin_inpad_0_,
                ccff_head,
                chanx_right_out,
                chany_bottom_out,
                chanx_left_out,
                ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] pReset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:41] chanx_right_in;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_1__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_2__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_3__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_4__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_5__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_6__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_7__pin_inpad_0_;
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
input [0:41] chany_bottom_in;
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
input [0:41] chanx_left_in;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_1__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_2__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_3__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_4__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_5__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_6__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_7__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:41] chanx_right_out;
//----- OUTPUT PORTS -----
output [0:41] chany_bottom_out;
//----- OUTPUT PORTS -----
output [0:41] chanx_left_out;
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
wire [0:7] mux_2level_tapbuf_size11_3_sram;
wire [0:7] mux_2level_tapbuf_size11_3_sram_inv;
wire [0:0] mux_2level_tapbuf_size11_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size11_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size11_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size11_mem_3_ccff_tail;
wire [0:7] mux_2level_tapbuf_size12_0_sram;
wire [0:7] mux_2level_tapbuf_size12_0_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_1_sram;
wire [0:7] mux_2level_tapbuf_size12_1_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_2_sram;
wire [0:7] mux_2level_tapbuf_size12_2_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_3_sram;
wire [0:7] mux_2level_tapbuf_size12_3_sram_inv;
wire [0:0] mux_2level_tapbuf_size12_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_3_ccff_tail;
wire [0:7] mux_2level_tapbuf_size13_0_sram;
wire [0:7] mux_2level_tapbuf_size13_0_sram_inv;
wire [0:0] mux_2level_tapbuf_size13_mem_0_ccff_tail;
wire [0:9] mux_2level_tapbuf_size20_0_sram;
wire [0:9] mux_2level_tapbuf_size20_0_sram_inv;
wire [0:9] mux_2level_tapbuf_size20_1_sram;
wire [0:9] mux_2level_tapbuf_size20_1_sram_inv;
wire [0:9] mux_2level_tapbuf_size20_2_sram;
wire [0:9] mux_2level_tapbuf_size20_2_sram_inv;
wire [0:9] mux_2level_tapbuf_size20_3_sram;
wire [0:9] mux_2level_tapbuf_size20_3_sram_inv;
wire [0:0] mux_2level_tapbuf_size20_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size20_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size20_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size20_mem_3_ccff_tail;
wire [0:9] mux_2level_tapbuf_size21_0_sram;
wire [0:9] mux_2level_tapbuf_size21_0_sram_inv;
wire [0:9] mux_2level_tapbuf_size21_1_sram;
wire [0:9] mux_2level_tapbuf_size21_1_sram_inv;
wire [0:9] mux_2level_tapbuf_size21_2_sram;
wire [0:9] mux_2level_tapbuf_size21_2_sram_inv;
wire [0:9] mux_2level_tapbuf_size21_3_sram;
wire [0:9] mux_2level_tapbuf_size21_3_sram_inv;
wire [0:9] mux_2level_tapbuf_size21_4_sram;
wire [0:9] mux_2level_tapbuf_size21_4_sram_inv;
wire [0:9] mux_2level_tapbuf_size21_5_sram;
wire [0:9] mux_2level_tapbuf_size21_5_sram_inv;
wire [0:0] mux_2level_tapbuf_size21_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size21_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size21_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size21_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size21_mem_4_ccff_tail;
wire [0:0] mux_2level_tapbuf_size21_mem_5_ccff_tail;
wire [0:9] mux_2level_tapbuf_size22_0_sram;
wire [0:9] mux_2level_tapbuf_size22_0_sram_inv;
wire [0:0] mux_2level_tapbuf_size22_mem_0_ccff_tail;
wire [0:5] mux_2level_tapbuf_size5_0_sram;
wire [0:5] mux_2level_tapbuf_size5_0_sram_inv;
wire [0:5] mux_2level_tapbuf_size5_1_sram;
wire [0:5] mux_2level_tapbuf_size5_1_sram_inv;
wire [0:5] mux_2level_tapbuf_size5_2_sram;
wire [0:5] mux_2level_tapbuf_size5_2_sram_inv;
wire [0:0] mux_2level_tapbuf_size5_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size5_mem_1_ccff_tail;
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
wire [0:0] mux_2level_tapbuf_size6_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_4_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_5_ccff_tail;
wire [0:5] mux_2level_tapbuf_size7_0_sram;
wire [0:5] mux_2level_tapbuf_size7_0_sram_inv;
wire [0:5] mux_2level_tapbuf_size7_10_sram;
wire [0:5] mux_2level_tapbuf_size7_10_sram_inv;
wire [0:5] mux_2level_tapbuf_size7_11_sram;
wire [0:5] mux_2level_tapbuf_size7_11_sram_inv;
wire [0:5] mux_2level_tapbuf_size7_12_sram;
wire [0:5] mux_2level_tapbuf_size7_12_sram_inv;
wire [0:5] mux_2level_tapbuf_size7_13_sram;
wire [0:5] mux_2level_tapbuf_size7_13_sram_inv;
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
wire [0:0] mux_2level_tapbuf_size7_mem_10_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_11_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_12_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_13_ccff_tail;
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
wire [0:5] mux_2level_tapbuf_size8_10_sram;
wire [0:5] mux_2level_tapbuf_size8_10_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_1_sram;
wire [0:5] mux_2level_tapbuf_size8_1_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_2_sram;
wire [0:5] mux_2level_tapbuf_size8_2_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_3_sram;
wire [0:5] mux_2level_tapbuf_size8_3_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_4_sram;
wire [0:5] mux_2level_tapbuf_size8_4_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_5_sram;
wire [0:5] mux_2level_tapbuf_size8_5_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_6_sram;
wire [0:5] mux_2level_tapbuf_size8_6_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_7_sram;
wire [0:5] mux_2level_tapbuf_size8_7_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_8_sram;
wire [0:5] mux_2level_tapbuf_size8_8_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_9_sram;
wire [0:5] mux_2level_tapbuf_size8_9_sram_inv;
wire [0:0] mux_2level_tapbuf_size8_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_10_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_4_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_5_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_6_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_7_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_8_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_9_ccff_tail;
wire [0:7] mux_2level_tapbuf_size9_0_sram;
wire [0:7] mux_2level_tapbuf_size9_0_sram_inv;
wire [0:7] mux_2level_tapbuf_size9_1_sram;
wire [0:7] mux_2level_tapbuf_size9_1_sram_inv;
wire [0:7] mux_2level_tapbuf_size9_2_sram;
wire [0:7] mux_2level_tapbuf_size9_2_sram_inv;
wire [0:7] mux_2level_tapbuf_size9_3_sram;
wire [0:7] mux_2level_tapbuf_size9_3_sram_inv;
wire [0:7] mux_2level_tapbuf_size9_4_sram;
wire [0:7] mux_2level_tapbuf_size9_4_sram_inv;
wire [0:0] mux_2level_tapbuf_size9_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size9_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size9_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size9_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size9_mem_4_ccff_tail;

// ----- BEGIN Local short connections -----
// ----- Local connection due to Wire 0 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[1] = chanx_right_in[0];
// ----- Local connection due to Wire 1 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[2] = chanx_right_in[1];
// ----- Local connection due to Wire 2 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[3] = chanx_right_in[2];
// ----- Local connection due to Wire 4 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[5] = chanx_right_in[4];
// ----- Local connection due to Wire 5 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[6] = chanx_right_in[5];
// ----- Local connection due to Wire 6 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[7] = chanx_right_in[6];
// ----- Local connection due to Wire 8 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[9] = chanx_right_in[8];
// ----- Local connection due to Wire 9 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[10] = chanx_right_in[9];
// ----- Local connection due to Wire 10 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[11] = chanx_right_in[10];
// ----- Local connection due to Wire 12 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[13] = chanx_right_in[12];
// ----- Local connection due to Wire 13 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[14] = chanx_right_in[13];
// ----- Local connection due to Wire 14 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[15] = chanx_right_in[14];
// ----- Local connection due to Wire 16 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[17] = chanx_right_in[16];
// ----- Local connection due to Wire 17 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[18] = chanx_right_in[17];
// ----- Local connection due to Wire 18 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[19] = chanx_right_in[18];
// ----- Local connection due to Wire 20 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[21] = chanx_right_in[20];
// ----- Local connection due to Wire 21 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[22] = chanx_right_in[21];
// ----- Local connection due to Wire 22 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[23] = chanx_right_in[22];
// ----- Local connection due to Wire 24 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[25] = chanx_right_in[24];
// ----- Local connection due to Wire 25 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[26] = chanx_right_in[25];
// ----- Local connection due to Wire 26 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[27] = chanx_right_in[26];
// ----- Local connection due to Wire 28 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[29] = chanx_right_in[28];
// ----- Local connection due to Wire 29 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[30] = chanx_right_in[29];
// ----- Local connection due to Wire 30 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[31] = chanx_right_in[30];
// ----- Local connection due to Wire 32 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[33] = chanx_right_in[32];
// ----- Local connection due to Wire 33 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[34] = chanx_right_in[33];
// ----- Local connection due to Wire 34 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[35] = chanx_right_in[34];
// ----- Local connection due to Wire 36 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[37] = chanx_right_in[36];
// ----- Local connection due to Wire 37 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[38] = chanx_right_in[37];
// ----- Local connection due to Wire 38 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[39] = chanx_right_in[38];
// ----- Local connection due to Wire 40 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[41] = chanx_right_in[40];
// ----- Local connection due to Wire 200 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[1] = chanx_left_in[0];
// ----- Local connection due to Wire 201 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[2] = chanx_left_in[1];
// ----- Local connection due to Wire 202 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[3] = chanx_left_in[2];
// ----- Local connection due to Wire 204 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[5] = chanx_left_in[4];
// ----- Local connection due to Wire 205 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[6] = chanx_left_in[5];
// ----- Local connection due to Wire 206 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[7] = chanx_left_in[6];
// ----- Local connection due to Wire 208 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[9] = chanx_left_in[8];
// ----- Local connection due to Wire 209 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[10] = chanx_left_in[9];
// ----- Local connection due to Wire 210 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[11] = chanx_left_in[10];
// ----- Local connection due to Wire 212 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[13] = chanx_left_in[12];
// ----- Local connection due to Wire 213 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[14] = chanx_left_in[13];
// ----- Local connection due to Wire 214 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[15] = chanx_left_in[14];
// ----- Local connection due to Wire 216 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[17] = chanx_left_in[16];
// ----- Local connection due to Wire 217 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[18] = chanx_left_in[17];
// ----- Local connection due to Wire 218 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[19] = chanx_left_in[18];
// ----- Local connection due to Wire 220 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[21] = chanx_left_in[20];
// ----- Local connection due to Wire 221 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[22] = chanx_left_in[21];
// ----- Local connection due to Wire 222 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[23] = chanx_left_in[22];
// ----- Local connection due to Wire 224 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[25] = chanx_left_in[24];
// ----- Local connection due to Wire 225 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[26] = chanx_left_in[25];
// ----- Local connection due to Wire 226 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[27] = chanx_left_in[26];
// ----- Local connection due to Wire 228 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[29] = chanx_left_in[28];
// ----- Local connection due to Wire 229 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[30] = chanx_left_in[29];
// ----- Local connection due to Wire 230 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[31] = chanx_left_in[30];
// ----- Local connection due to Wire 232 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[33] = chanx_left_in[32];
// ----- Local connection due to Wire 233 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[34] = chanx_left_in[33];
// ----- Local connection due to Wire 234 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[35] = chanx_left_in[34];
// ----- Local connection due to Wire 236 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[37] = chanx_left_in[36];
// ----- Local connection due to Wire 237 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[38] = chanx_left_in[37];
// ----- Local connection due to Wire 238 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[39] = chanx_left_in[38];
// ----- Local connection due to Wire 240 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[41] = chanx_left_in[40];
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	mux_2level_tapbuf_size21 mux_right_track_0 (
		.in({right_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_, right_top_grid_bottom_width_0_height_0_subtile_1__pin_inpad_0_, right_top_grid_bottom_width_0_height_0_subtile_6__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_14_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_18_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_3_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_23_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_27_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_12_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_32_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_21_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_30_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_2_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_4_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_4_1_, chany_bottom_in[9], chany_bottom_in[20], chany_bottom_in[31]}),
		.sram(mux_2level_tapbuf_size21_0_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size21_0_sram_inv[0:9]),
		.out(chanx_right_out[0]));

	mux_2level_tapbuf_size21 mux_right_track_8 (
		.in({right_top_grid_bottom_width_0_height_0_subtile_1__pin_inpad_0_, right_top_grid_bottom_width_0_height_0_subtile_2__pin_inpad_0_, right_top_grid_bottom_width_0_height_0_subtile_7__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_18_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_22_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_7_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_27_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_31_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_16_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_5_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_25_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_14_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_34_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_4_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_1_1_, chany_bottom_in[8], chany_bottom_in[19], chany_bottom_in[30], chany_bottom_in[41]}),
		.sram(mux_2level_tapbuf_size21_1_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size21_1_sram_inv[0:9]),
		.out(chanx_right_out[4]));

	mux_2level_tapbuf_size21 mux_right_track_16 (
		.in({right_top_grid_bottom_width_0_height_0_subtile_2__pin_inpad_0_, right_top_grid_bottom_width_0_height_0_subtile_3__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_22_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_26_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_11_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_31_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_20_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_5_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_9_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_29_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_14_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_18_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovalid_3_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_1_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_3_1_, chany_bottom_in[7], chany_bottom_in[18], chany_bottom_in[29], chany_bottom_in[40]}),
		.sram(mux_2level_tapbuf_size21_2_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size21_2_sram_inv[0:9]),
		.out(chanx_right_out[8]));

	mux_2level_tapbuf_size21 mux_right_track_24 (
		.in({right_top_grid_bottom_width_0_height_0_subtile_3__pin_inpad_0_, right_top_grid_bottom_width_0_height_0_subtile_4__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_26_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_30_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_15_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_4_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_24_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_9_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_13_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_33_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_18_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_22_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovch_2_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_3_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_0_1_, chany_bottom_in[6], chany_bottom_in[17], chany_bottom_in[28], chany_bottom_in[39]}),
		.sram(mux_2level_tapbuf_size21_3_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size21_3_sram_inv[0:9]),
		.out(chanx_right_out[12]));

	mux_2level_tapbuf_size21 mux_right_track_32 (
		.in({right_top_grid_bottom_width_0_height_0_subtile_4__pin_inpad_0_, right_top_grid_bottom_width_0_height_0_subtile_5__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_30_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_34_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_19_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_4_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_8_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_28_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_13_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_17_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_22_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_26_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_0_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_0_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_2_1_, chany_bottom_in[5], chany_bottom_in[16], chany_bottom_in[27], chany_bottom_in[38]}),
		.sram(mux_2level_tapbuf_size21_4_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size21_4_sram_inv[0:9]),
		.out(chanx_right_out[16]));

	mux_2level_tapbuf_size21 mux_right_track_48 (
		.in({right_top_grid_bottom_width_0_height_0_subtile_1__pin_inpad_0_, right_top_grid_bottom_width_0_height_0_subtile_6__pin_inpad_0_, right_top_grid_bottom_width_0_height_0_subtile_7__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_18_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_3_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_7_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_27_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_12_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_16_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_21_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_25_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_30_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_34_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_4_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_4_1_, chany_bottom_in[3], chany_bottom_in[14], chany_bottom_in[25], chany_bottom_in[36]}),
		.sram(mux_2level_tapbuf_size21_5_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size21_5_sram_inv[0:9]),
		.out(chanx_right_out[24]));

	mux_2level_tapbuf_size21_mem mem_right_track_0 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(mux_2level_tapbuf_size21_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size21_0_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size21_0_sram_inv[0:9]));

	mux_2level_tapbuf_size21_mem mem_right_track_8 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size21_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size21_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size21_1_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size21_1_sram_inv[0:9]));

	mux_2level_tapbuf_size21_mem mem_right_track_16 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size21_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size21_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size21_2_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size21_2_sram_inv[0:9]));

	mux_2level_tapbuf_size21_mem mem_right_track_24 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size21_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size21_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size21_3_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size21_3_sram_inv[0:9]));

	mux_2level_tapbuf_size21_mem mem_right_track_32 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size21_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size21_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size21_4_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size21_4_sram_inv[0:9]));

	mux_2level_tapbuf_size21_mem mem_right_track_48 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size22_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size21_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size21_5_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size21_5_sram_inv[0:9]));

	mux_2level_tapbuf_size22 mux_right_track_40 (
		.in({right_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_, right_top_grid_bottom_width_0_height_0_subtile_5__pin_inpad_0_, right_top_grid_bottom_width_0_height_0_subtile_6__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_14_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_34_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_3_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_23_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_8_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_12_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_32_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_17_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_21_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_26_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_30_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_2_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_2_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_4_1_, chany_bottom_in[4], chany_bottom_in[15], chany_bottom_in[26], chany_bottom_in[37]}),
		.sram(mux_2level_tapbuf_size22_0_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size22_0_sram_inv[0:9]),
		.out(chanx_right_out[20]));

	mux_2level_tapbuf_size22_mem mem_right_track_40 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size21_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size22_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size22_0_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size22_0_sram_inv[0:9]));

	mux_2level_tapbuf_size20 mux_right_track_56 (
		.in({right_top_grid_bottom_width_0_height_0_subtile_2__pin_inpad_0_, right_top_grid_bottom_width_0_height_0_subtile_7__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_22_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_7_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_11_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_31_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_16_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_20_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_5_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_25_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_29_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_14_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_34_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovalid_3_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_1_1_, chany_bottom_in[2], chany_bottom_in[13], chany_bottom_in[24], chany_bottom_in[35]}),
		.sram(mux_2level_tapbuf_size20_0_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size20_0_sram_inv[0:9]),
		.out(chanx_right_out[28]));

	mux_2level_tapbuf_size20 mux_right_track_64 (
		.in({right_top_grid_bottom_width_0_height_0_subtile_3__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_26_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_11_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_15_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_20_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_24_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_9_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_29_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_33_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_18_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovalid_3_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovch_2_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_3_1_, chany_bottom_in[1], chany_bottom_in[12], chany_bottom_in[23], chany_bottom_in[34]}),
		.sram(mux_2level_tapbuf_size20_1_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size20_1_sram_inv[0:9]),
		.out(chanx_right_out[32]));

	mux_2level_tapbuf_size20 mux_right_track_72 (
		.in({right_top_grid_bottom_width_0_height_0_subtile_4__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_30_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_15_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_19_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_4_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_24_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_28_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_13_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_33_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_22_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovch_2_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_0_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_0_1_, chany_bottom_in[0], chany_bottom_in[11], chany_bottom_in[22], chany_bottom_in[33]}),
		.sram(mux_2level_tapbuf_size20_2_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size20_2_sram_inv[0:9]),
		.out(chanx_right_out[36]));

	mux_2level_tapbuf_size20 mux_right_track_80 (
		.in({right_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_, right_top_grid_bottom_width_0_height_0_subtile_5__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_14_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_34_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_19_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_23_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_8_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_28_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_32_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_17_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_26_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_0_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_2_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_2_1_, chany_bottom_in[10], chany_bottom_in[21], chany_bottom_in[32]}),
		.sram(mux_2level_tapbuf_size20_3_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size20_3_sram_inv[0:9]),
		.out(chanx_right_out[40]));

	mux_2level_tapbuf_size20_mem mem_right_track_56 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size21_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size20_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size20_0_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size20_0_sram_inv[0:9]));

	mux_2level_tapbuf_size20_mem mem_right_track_64 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size20_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size20_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size20_1_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size20_1_sram_inv[0:9]));

	mux_2level_tapbuf_size20_mem mem_right_track_72 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size20_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size20_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size20_2_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size20_2_sram_inv[0:9]));

	mux_2level_tapbuf_size20_mem mem_right_track_80 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size20_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size20_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size20_3_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size20_3_sram_inv[0:9]));

	mux_2level_tapbuf_size13 mux_bottom_track_1 (
		.in({bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_1_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_9_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_6_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_14_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_3_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_19_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_24_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_29_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovalid_2_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_2_0_, chanx_left_in[1], chanx_left_in[7]}),
		.sram(mux_2level_tapbuf_size13_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_0_sram_inv[0:7]),
		.out(chany_bottom_out[0]));

	mux_2level_tapbuf_size13_mem mem_bottom_track_1 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size20_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_0_sram_inv[0:7]));

	mux_2level_tapbuf_size12 mux_bottom_track_3 (
		.in({bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_5_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_13_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_18_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_23_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_4_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_28_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_1_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_33_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovch_1_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_4_0_, chanx_left_in[2], chanx_left_in[11]}),
		.sram(mux_2level_tapbuf_size12_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_0_sram_inv[0:7]),
		.out(chany_bottom_out[1]));

	mux_2level_tapbuf_size12 mux_bottom_track_17 (
		.in({bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_1_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_33_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_6_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_3_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_11_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_16_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_21_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_3_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_2_0_, chanx_left_in[12], chanx_left_in[39]}),
		.sram(mux_2level_tapbuf_size12_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_1_sram_inv[0:7]),
		.out(chany_bottom_out[8]));

	mux_2level_tapbuf_size12 mux_bottom_track_19 (
		.in({bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_5_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_2_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_10_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_15_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_4_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_20_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_1_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_25_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_0_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_4_0_, chanx_left_in[13], chanx_left_in[41]}),
		.sram(mux_2level_tapbuf_size12_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_2_sram_inv[0:7]),
		.out(chany_bottom_out[9]));

	mux_2level_tapbuf_size12 mux_bottom_track_35 (
		.in({chanx_right_in[30], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_5_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_29_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_2_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_34_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_7_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_4_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_12_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_1_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_17_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_0_0_, chanx_left_in[24]}),
		.sram(mux_2level_tapbuf_size12_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_3_sram_inv[0:7]),
		.out(chany_bottom_out[17]));

	mux_2level_tapbuf_size12_mem mem_bottom_track_3 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_0_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_track_17 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size9_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_1_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_track_19 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_2_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_bottom_track_35 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_3_sram_inv[0:7]));

	mux_2level_tapbuf_size10 mux_bottom_track_5 (
		.in({bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_9_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_17_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_22_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_27_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_32_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_5_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovalid_2_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_0_0_, chanx_left_in[4], chanx_left_in[15]}),
		.sram(mux_2level_tapbuf_size10_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_0_sram_inv[0:7]),
		.out(chany_bottom_out[2]));

	mux_2level_tapbuf_size10 mux_bottom_track_33 (
		.in({chanx_right_in[32], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_1_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_25_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_30_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_3_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_8_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_13_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_3_0_, chanx_left_in[22]}),
		.sram(mux_2level_tapbuf_size10_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_1_sram_inv[0:7]),
		.out(chany_bottom_out[16]));

	mux_2level_tapbuf_size10 mux_bottom_track_37 (
		.in({chanx_right_in[29], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_33_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_6_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_3_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_11_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_16_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_5_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_21_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_2_0_, chanx_left_in[25]}),
		.sram(mux_2level_tapbuf_size10_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_2_sram_inv[0:7]),
		.out(chany_bottom_out[18]));

	mux_2level_tapbuf_size10 mux_bottom_track_65 (
		.in({chanx_right_in[10], chanx_right_in[35], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_1_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_9_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_14_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_19_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_24_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_32_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovalid_2_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_3_0_}),
		.sram(mux_2level_tapbuf_size10_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_3_sram_inv[0:7]),
		.out(chany_bottom_out[32]));

	mux_2level_tapbuf_size10 mux_bottom_track_83 (
		.in({bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_5_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_2_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_10_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_15_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_20_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_25_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_33_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_0_0_, chanx_left_in[0], chanx_left_in[3]}),
		.sram(mux_2level_tapbuf_size10_4_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_4_sram_inv[0:7]),
		.out(chany_bottom_out[41]));

	mux_2level_tapbuf_size10_mem mem_bottom_track_5 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_0_sram_inv[0:7]));

	mux_2level_tapbuf_size10_mem mem_bottom_track_33 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_1_sram_inv[0:7]));

	mux_2level_tapbuf_size10_mem mem_bottom_track_37 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_2_sram_inv[0:7]));

	mux_2level_tapbuf_size10_mem mem_bottom_track_65 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_9_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_3_sram_inv[0:7]));

	mux_2level_tapbuf_size10_mem mem_bottom_track_83 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_10_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_4_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_4_sram_inv[0:7]));

	mux_2level_tapbuf_size8 mux_bottom_track_7 (
		.in({bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_13_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_21_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_26_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_31_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovch_1_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_2_0_, chanx_left_in[5], chanx_left_in[19]}),
		.sram(mux_2level_tapbuf_size8_0_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_0_sram_inv[0:5]),
		.out(chany_bottom_out[3]));

	mux_2level_tapbuf_size8 mux_bottom_track_11 (
		.in({bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_21_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_29_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_34_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_9_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_2_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_1_0_, chanx_left_in[8], chanx_left_in[27]}),
		.sram(mux_2level_tapbuf_size8_1_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_1_sram_inv[0:5]),
		.out(chany_bottom_out[5]));

	mux_2level_tapbuf_size8 mux_bottom_track_13 (
		.in({bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_25_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_33_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_8_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_13_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_4_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_3_0_, chanx_left_in[9], chanx_left_in[31]}),
		.sram(mux_2level_tapbuf_size8_2_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_2_sram_inv[0:5]),
		.out(chany_bottom_out[6]));

	mux_2level_tapbuf_size8 mux_bottom_track_23 (
		.in({chanx_right_in[38], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_10_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_18_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_23_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_28_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_33_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_4_0_, chanx_left_in[16]}),
		.sram(mux_2level_tapbuf_size8_3_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_3_sram_inv[0:5]),
		.out(chany_bottom_out[11]));

	mux_2level_tapbuf_size8 mux_bottom_track_27 (
		.in({chanx_right_in[36], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_13_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_18_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_26_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_31_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovch_1_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_2_0_, chanx_left_in[18]}),
		.sram(mux_2level_tapbuf_size8_4_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_4_sram_inv[0:5]),
		.out(chany_bottom_out[13]));

	mux_2level_tapbuf_size8 mux_bottom_track_43 (
		.in({chanx_right_in[25], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_10_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_15_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_23_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_28_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_33_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_2_0_, chanx_left_in[29]}),
		.sram(mux_2level_tapbuf_size8_5_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_5_sram_inv[0:5]),
		.out(chany_bottom_out[21]));

	mux_2level_tapbuf_size8 mux_bottom_track_47 (
		.in({chanx_right_in[22], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_13_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_18_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_23_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_31_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovch_1_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_1_0_, chanx_left_in[32]}),
		.sram(mux_2level_tapbuf_size8_6_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_6_sram_inv[0:5]),
		.out(chany_bottom_out[23]));

	mux_2level_tapbuf_size8 mux_bottom_track_49 (
		.in({chanx_right_in[21], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_1_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_17_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_22_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_27_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_3_0_, chanx_left_in[33]}),
		.sram(mux_2level_tapbuf_size8_7_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_7_sram_inv[0:5]),
		.out(chany_bottom_out[24]));

	mux_2level_tapbuf_size8 mux_bottom_track_55 (
		.in({chanx_right_in[17], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_29_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_34_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_4_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_12_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_17_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_4_0_, chanx_left_in[37]}),
		.sram(mux_2level_tapbuf_size8_8_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_8_sram_inv[0:5]),
		.out(chany_bottom_out[27]));

	mux_2level_tapbuf_size8 mux_bottom_track_63 (
		.in({chanx_right_in[12], chanx_right_in[39], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_10_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_15_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_20_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_28_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_33_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_1_0_}),
		.sram(mux_2level_tapbuf_size8_9_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_9_sram_inv[0:5]),
		.out(chany_bottom_out[31]));

	mux_2level_tapbuf_size8 mux_bottom_track_81 (
		.in({chanx_right_in[0], chanx_right_in[3], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_1_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_11_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_16_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_21_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_29_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_3_0_}),
		.sram(mux_2level_tapbuf_size8_10_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_10_sram_inv[0:5]),
		.out(chany_bottom_out[40]));

	mux_2level_tapbuf_size8_mem mem_bottom_track_7 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_0_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_0_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_bottom_track_11 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_1_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_1_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_bottom_track_13 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_2_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_2_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_bottom_track_23 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size9_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_3_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_3_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_bottom_track_27 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size9_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_4_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_4_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_bottom_track_43 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_5_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_5_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_bottom_track_47 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size9_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_6_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_6_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_bottom_track_49 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_7_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_7_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_7_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_bottom_track_55 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size11_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_8_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_8_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_8_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_bottom_track_63 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_9_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_9_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_9_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_bottom_track_81 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_10_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_10_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_10_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_10_sram_inv[0:5]));

	mux_2level_tapbuf_size7 mux_bottom_track_9 (
		.in({bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_17_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_25_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_30_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_0_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_4_0_, chanx_left_in[6], chanx_left_in[23]}),
		.sram(mux_2level_tapbuf_size7_0_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_0_sram_inv[0:5]),
		.out(chany_bottom_out[4]));

	mux_2level_tapbuf_size7 mux_bottom_track_31 (
		.in({chanx_right_in[33], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_21_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_26_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_34_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_9_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_1_0_, chanx_left_in[21]}),
		.sram(mux_2level_tapbuf_size7_1_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_1_sram_inv[0:5]),
		.out(chany_bottom_out[15]));

	mux_2level_tapbuf_size7 mux_bottom_track_39 (
		.in({chanx_right_in[28], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_7_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_15_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_20_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_25_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_4_0_, chanx_left_in[26]}),
		.sram(mux_2level_tapbuf_size7_2_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_2_sram_inv[0:5]),
		.out(chany_bottom_out[19]));

	mux_2level_tapbuf_size7 mux_bottom_track_41 (
		.in({chanx_right_in[26], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_11_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_19_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_24_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_29_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_0_0_, chanx_left_in[28]}),
		.sram(mux_2level_tapbuf_size7_3_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_3_sram_inv[0:5]),
		.out(chany_bottom_out[20]));

	mux_2level_tapbuf_size7 mux_bottom_track_57 (
		.in({chanx_right_in[16], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_33_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_8_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_16_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_21_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_0_0_, chanx_left_in[38]}),
		.sram(mux_2level_tapbuf_size7_4_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_4_sram_inv[0:5]),
		.out(chany_bottom_out[28]));

	mux_2level_tapbuf_size7 mux_bottom_track_59 (
		.in({chanx_right_in[14], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_7_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_12_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_20_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_25_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_2_0_, chanx_left_in[40]}),
		.sram(mux_2level_tapbuf_size7_5_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_5_sram_inv[0:5]),
		.out(chany_bottom_out[29]));

	mux_2level_tapbuf_size7 mux_bottom_track_61 (
		.in({chanx_right_in[13], chanx_right_in[41], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_11_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_16_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_24_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_29_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_4_0_}),
		.sram(mux_2level_tapbuf_size7_6_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_6_sram_inv[0:5]),
		.out(chany_bottom_out[30]));

	mux_2level_tapbuf_size7 mux_bottom_track_73 (
		.in({chanx_right_in[5], chanx_right_in[19], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_25_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_30_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_5_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_13_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_0_0_}),
		.sram(mux_2level_tapbuf_size7_7_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_7_sram_inv[0:5]),
		.out(chany_bottom_out[36]));

	mux_2level_tapbuf_size7 mux_bottom_track_75 (
		.in({chanx_right_in[4], chanx_right_in[15], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_29_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_34_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_9_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_17_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_2_0_}),
		.sram(mux_2level_tapbuf_size7_8_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_8_sram_inv[0:5]),
		.out(chany_bottom_out[37]));

	mux_2level_tapbuf_size7 mux_bottom_track_77 (
		.in({chanx_right_in[2], chanx_right_in[11], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_33_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_8_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_13_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_21_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_4_0_}),
		.sram(mux_2level_tapbuf_size7_9_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_9_sram_inv[0:5]),
		.out(chany_bottom_out[38]));

	mux_2level_tapbuf_size7 mux_bottom_track_79 (
		.in({chanx_right_in[1], chanx_right_in[7], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_7_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_12_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_17_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_25_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_1_0_}),
		.sram(mux_2level_tapbuf_size7_10_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_10_sram_inv[0:5]),
		.out(chany_bottom_out[39]));

	mux_2level_tapbuf_size7 mux_left_track_9 (
		.in({chany_bottom_in[0], chany_bottom_in[11], chany_bottom_in[22], chany_bottom_in[33], left_top_grid_bottom_width_0_height_0_subtile_1__pin_inpad_0_, left_top_grid_bottom_width_0_height_0_subtile_2__pin_inpad_0_, left_top_grid_bottom_width_0_height_0_subtile_7__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size7_11_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_11_sram_inv[0:5]),
		.out(chanx_left_out[4]));

	mux_2level_tapbuf_size7 mux_left_track_41 (
		.in({chany_bottom_in[4], chany_bottom_in[15], chany_bottom_in[26], chany_bottom_in[37], left_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_, left_top_grid_bottom_width_0_height_0_subtile_5__pin_inpad_0_, left_top_grid_bottom_width_0_height_0_subtile_6__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size7_12_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_12_sram_inv[0:5]),
		.out(chanx_left_out[20]));

	mux_2level_tapbuf_size7 mux_left_track_49 (
		.in({chany_bottom_in[5], chany_bottom_in[16], chany_bottom_in[27], chany_bottom_in[38], left_top_grid_bottom_width_0_height_0_subtile_1__pin_inpad_0_, left_top_grid_bottom_width_0_height_0_subtile_6__pin_inpad_0_, left_top_grid_bottom_width_0_height_0_subtile_7__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size7_13_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_13_sram_inv[0:5]),
		.out(chanx_left_out[24]));

	mux_2level_tapbuf_size7_mem mem_bottom_track_9 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_0_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_0_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_bottom_track_31 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_1_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_1_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_bottom_track_39 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_2_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_2_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_bottom_track_41 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_3_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_3_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_bottom_track_57 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_8_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_4_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_4_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_bottom_track_59 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_5_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_5_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_bottom_track_61 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_6_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_6_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_bottom_track_73 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size9_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_7_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_7_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_7_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_bottom_track_75 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_7_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_8_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_8_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_8_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_bottom_track_77 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_8_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_9_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_9_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_9_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_bottom_track_79 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_9_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_10_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_10_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_10_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_left_track_9 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_11_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_11_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_11_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_left_track_41 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_12_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_12_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_12_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_left_track_49 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_12_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_13_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_13_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_13_sram_inv[0:5]));

	mux_2level_tapbuf_size9 mux_bottom_track_15 (
		.in({bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_29_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_2_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_7_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_12_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_17_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_1_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_0_0_, chanx_left_in[10], chanx_left_in[35]}),
		.sram(mux_2level_tapbuf_size9_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size9_0_sram_inv[0:7]),
		.out(chany_bottom_out[7]));

	mux_2level_tapbuf_size9 mux_bottom_track_21 (
		.in({chanx_right_in[40], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_6_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_14_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_19_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_24_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_5_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_29_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_2_0_, chanx_left_in[14]}),
		.sram(mux_2level_tapbuf_size9_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size9_1_sram_inv[0:7]),
		.out(chany_bottom_out[10]));

	mux_2level_tapbuf_size9 mux_bottom_track_25 (
		.in({chanx_right_in[37], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_9_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_14_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_22_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_27_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_32_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovalid_2_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_0_0_, chanx_left_in[17]}),
		.sram(mux_2level_tapbuf_size9_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size9_2_sram_inv[0:7]),
		.out(chany_bottom_out[12]));

	mux_2level_tapbuf_size9 mux_bottom_track_45 (
		.in({chanx_right_in[24], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_9_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_14_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_19_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_27_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_32_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovalid_2_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_4_0_, chanx_left_in[30]}),
		.sram(mux_2level_tapbuf_size9_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size9_3_sram_inv[0:7]),
		.out(chany_bottom_out[22]));

	mux_2level_tapbuf_size9 mux_bottom_track_71 (
		.in({chanx_right_in[6], chanx_right_in[23], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_21_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_26_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_31_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_4_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_1_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_9_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_4_0_}),
		.sram(mux_2level_tapbuf_size9_4_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size9_4_sram_inv[0:7]),
		.out(chany_bottom_out[35]));

	mux_2level_tapbuf_size9_mem mem_bottom_track_15 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size9_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size9_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size9_0_sram_inv[0:7]));

	mux_2level_tapbuf_size9_mem mem_bottom_track_21 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size9_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size9_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size9_1_sram_inv[0:7]));

	mux_2level_tapbuf_size9_mem mem_bottom_track_25 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size9_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size9_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size9_2_sram_inv[0:7]));

	mux_2level_tapbuf_size9_mem mem_bottom_track_45 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size9_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size9_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size9_3_sram_inv[0:7]));

	mux_2level_tapbuf_size9_mem mem_bottom_track_71 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size11_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size9_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size9_4_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size9_4_sram_inv[0:7]));

	mux_2level_tapbuf_size6 mux_bottom_track_29 (
		.in({chanx_right_in[34], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_17_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_22_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_30_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_4_0_, chanx_left_in[20]}),
		.sram(mux_2level_tapbuf_size6_0_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_0_sram_inv[0:5]),
		.out(chany_bottom_out[14]));

	mux_2level_tapbuf_size6 mux_left_track_1 (
		.in({chany_bottom_in[10], chany_bottom_in[21], chany_bottom_in[32], left_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_, left_top_grid_bottom_width_0_height_0_subtile_1__pin_inpad_0_, left_top_grid_bottom_width_0_height_0_subtile_6__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size6_1_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_1_sram_inv[0:5]),
		.out(chanx_left_out[0]));

	mux_2level_tapbuf_size6 mux_left_track_17 (
		.in({chany_bottom_in[1], chany_bottom_in[12], chany_bottom_in[23], chany_bottom_in[34], left_top_grid_bottom_width_0_height_0_subtile_2__pin_inpad_0_, left_top_grid_bottom_width_0_height_0_subtile_3__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size6_2_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_2_sram_inv[0:5]),
		.out(chanx_left_out[8]));

	mux_2level_tapbuf_size6 mux_left_track_25 (
		.in({chany_bottom_in[2], chany_bottom_in[13], chany_bottom_in[24], chany_bottom_in[35], left_top_grid_bottom_width_0_height_0_subtile_3__pin_inpad_0_, left_top_grid_bottom_width_0_height_0_subtile_4__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size6_3_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_3_sram_inv[0:5]),
		.out(chanx_left_out[12]));

	mux_2level_tapbuf_size6 mux_left_track_33 (
		.in({chany_bottom_in[3], chany_bottom_in[14], chany_bottom_in[25], chany_bottom_in[36], left_top_grid_bottom_width_0_height_0_subtile_4__pin_inpad_0_, left_top_grid_bottom_width_0_height_0_subtile_5__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size6_4_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_4_sram_inv[0:5]),
		.out(chanx_left_out[16]));

	mux_2level_tapbuf_size6 mux_left_track_57 (
		.in({chany_bottom_in[6], chany_bottom_in[17], chany_bottom_in[28], chany_bottom_in[39], left_top_grid_bottom_width_0_height_0_subtile_2__pin_inpad_0_, left_top_grid_bottom_width_0_height_0_subtile_7__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size6_5_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_5_sram_inv[0:5]),
		.out(chanx_left_out[28]));

	mux_2level_tapbuf_size6_mem mem_bottom_track_29 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_0_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_0_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_left_track_1 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_1_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_1_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_left_track_17 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_11_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_2_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_2_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_left_track_25 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_3_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_3_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_left_track_33 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_4_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_4_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_left_track_57 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_13_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_5_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_5_sram_inv[0:5]));

	mux_2level_tapbuf_size11 mux_bottom_track_51 (
		.in({chanx_right_in[20], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_5_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_21_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_2_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_26_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_31_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_4_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_1_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_9_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_0_0_, chanx_left_in[34]}),
		.sram(mux_2level_tapbuf_size11_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_0_sram_inv[0:7]),
		.out(chany_bottom_out[25]));

	mux_2level_tapbuf_size11 mux_bottom_track_53 (
		.in({chanx_right_in[18], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_25_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_6_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_30_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_3_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_8_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_5_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_13_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_2_0_, chanx_left_in[36]}),
		.sram(mux_2level_tapbuf_size11_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_1_sram_inv[0:7]),
		.out(chany_bottom_out[26]));

	mux_2level_tapbuf_size11 mux_bottom_track_67 (
		.in({chanx_right_in[9], chanx_right_in[31], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_5_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_13_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_2_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_18_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_23_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_28_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_1_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovch_1_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_0_0_}),
		.sram(mux_2level_tapbuf_size11_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_2_sram_inv[0:7]),
		.out(chany_bottom_out[33]));

	mux_2level_tapbuf_size11 mux_bottom_track_69 (
		.in({chanx_right_in[8], chanx_right_in[27], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_17_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_6_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_22_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_3_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_27_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_32_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_5_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_2_0_}),
		.sram(mux_2level_tapbuf_size11_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_3_sram_inv[0:7]),
		.out(chany_bottom_out[34]));

	mux_2level_tapbuf_size11_mem mem_bottom_track_51 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_7_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size11_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_0_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_bottom_track_53 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size11_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size11_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_1_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_bottom_track_67 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size11_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_2_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_bottom_track_69 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size11_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size11_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_3_sram_inv[0:7]));

	mux_2level_tapbuf_size5 mux_left_track_65 (
		.in({chany_bottom_in[7], chany_bottom_in[18], chany_bottom_in[29], chany_bottom_in[40], left_top_grid_bottom_width_0_height_0_subtile_3__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size5_0_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size5_0_sram_inv[0:5]),
		.out(chanx_left_out[32]));

	mux_2level_tapbuf_size5 mux_left_track_73 (
		.in({chany_bottom_in[8], chany_bottom_in[19], chany_bottom_in[30], chany_bottom_in[41], left_top_grid_bottom_width_0_height_0_subtile_4__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size5_1_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size5_1_sram_inv[0:5]),
		.out(chanx_left_out[36]));

	mux_2level_tapbuf_size5 mux_left_track_81 (
		.in({chany_bottom_in[9], chany_bottom_in[20], chany_bottom_in[31], left_top_grid_bottom_width_0_height_0_subtile_0__pin_inpad_0_, left_top_grid_bottom_width_0_height_0_subtile_5__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size5_2_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size5_2_sram_inv[0:5]),
		.out(chanx_left_out[40]));

	mux_2level_tapbuf_size5_mem mem_left_track_65 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size5_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size5_0_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size5_0_sram_inv[0:5]));

	mux_2level_tapbuf_size5_mem mem_left_track_73 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size5_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size5_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size5_1_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size5_1_sram_inv[0:5]));

	mux_2level_tapbuf_size5_mem mem_left_track_81 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size5_mem_1_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_2level_tapbuf_size5_2_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size5_2_sram_inv[0:5]));

endmodule
// ----- END Verilog module for sb_3__6_ -----

//----- Default net type -----
`default_nettype wire



