//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for Unique Switch Blocks[6][4]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Tue Aug 20 23:36:48 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for sb_6__4_ -----
module sb_6__4_(pReset,
                prog_clk,
                chany_top_in,
                top_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_,
                top_right_grid_left_width_0_height_0_subtile_1__pin_inpad_0_,
                top_right_grid_left_width_0_height_0_subtile_2__pin_inpad_0_,
                top_right_grid_left_width_0_height_0_subtile_3__pin_inpad_0_,
                top_right_grid_left_width_0_height_0_subtile_4__pin_inpad_0_,
                top_right_grid_left_width_0_height_0_subtile_5__pin_inpad_0_,
                top_right_grid_left_width_0_height_0_subtile_6__pin_inpad_0_,
                top_right_grid_left_width_0_height_0_subtile_7__pin_inpad_0_,
                chany_bottom_in,
                bottom_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_,
                bottom_right_grid_left_width_0_height_0_subtile_1__pin_inpad_0_,
                bottom_right_grid_left_width_0_height_0_subtile_2__pin_inpad_0_,
                bottom_right_grid_left_width_0_height_0_subtile_3__pin_inpad_0_,
                bottom_right_grid_left_width_0_height_0_subtile_4__pin_inpad_0_,
                bottom_right_grid_left_width_0_height_0_subtile_5__pin_inpad_0_,
                bottom_right_grid_left_width_0_height_0_subtile_6__pin_inpad_0_,
                bottom_right_grid_left_width_0_height_0_subtile_7__pin_inpad_0_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_3_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_7_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_11_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_15_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_19_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_23_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_27_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_31_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_0_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_4_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_8_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_12_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_16_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_20_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_24_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_28_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_32_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_1_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_5_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_9_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_13_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_17_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_21_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_25_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_29_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_33_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_2_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_6_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_10_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_14_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_18_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_22_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_26_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_30_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_34_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_3_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_7_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_11_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_15_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_19_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_23_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_27_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_31_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_ovalid_0_0_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_ovalid_4_0_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_ovch_3_0_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_oack_1_0_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_oack_3_0_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_ordy_0_0_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_ordy_2_0_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_ordy_4_0_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_olck_1_0_,
                bottom_left_grid_right_width_0_height_0_subtile_0__pin_olck_3_0_,
                chanx_left_in,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_2_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_6_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_10_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_14_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_18_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_22_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_26_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_30_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_34_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_3_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_7_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_11_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_15_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_19_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_23_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_27_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_31_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_0_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_4_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_8_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_12_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_16_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_20_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_24_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_28_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_32_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_1_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_5_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_9_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_13_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_17_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_21_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_25_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_29_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_33_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_2_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_6_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_10_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_14_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_18_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_22_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_26_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_30_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_34_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_ovalid_3_0_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_ovch_2_0_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_0_1_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_2_1_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_4_1_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_1_1_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_3_1_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_0_1_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_2_1_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_4_1_,
                ccff_head,
                chany_top_out,
                chany_bottom_out,
                chanx_left_out,
                ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] pReset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:41] chany_top_in;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_1__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_2__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_3__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_4__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_5__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_6__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_7__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:41] chany_bottom_in;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_1__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_2__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_3__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_4__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_5__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_6__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] bottom_right_grid_left_width_0_height_0_subtile_7__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_3_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_7_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_11_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_15_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_19_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_23_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_27_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_31_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_0_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_4_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_8_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_12_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_16_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_20_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_24_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_28_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_32_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_1_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_5_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_9_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_13_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_17_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_21_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_25_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_29_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_33_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_2_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_6_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_10_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_14_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_18_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_22_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_26_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_30_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_34_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_3_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_7_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_11_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_15_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_19_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_23_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_27_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_31_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_ovalid_0_0_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_ovalid_4_0_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_ovch_3_0_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_oack_1_0_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_oack_3_0_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_ordy_0_0_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_ordy_2_0_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_ordy_4_0_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_olck_1_0_;
//----- INPUT PORTS -----
input [0:0] bottom_left_grid_right_width_0_height_0_subtile_0__pin_olck_3_0_;
//----- INPUT PORTS -----
input [0:41] chanx_left_in;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_2_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_6_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_10_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_14_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_18_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_22_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_26_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_30_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_34_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_3_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_7_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_11_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_15_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_19_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_23_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_27_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_31_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_0_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_4_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_8_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_12_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_16_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_20_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_24_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_28_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_32_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_1_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_5_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_9_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_13_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_17_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_21_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_25_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_29_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_33_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_2_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_6_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_10_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_14_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_18_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_22_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_26_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_30_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_34_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_ovalid_3_0_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_ovch_2_0_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_0_1_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_2_1_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_4_1_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_1_1_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_3_1_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_0_1_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_2_1_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_4_1_;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:41] chany_top_out;
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
wire [0:9] mux_2level_tapbuf_size19_0_sram;
wire [0:9] mux_2level_tapbuf_size19_0_sram_inv;
wire [0:9] mux_2level_tapbuf_size19_1_sram;
wire [0:9] mux_2level_tapbuf_size19_1_sram_inv;
wire [0:0] mux_2level_tapbuf_size19_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size19_mem_1_ccff_tail;
wire [0:9] mux_2level_tapbuf_size20_0_sram;
wire [0:9] mux_2level_tapbuf_size20_0_sram_inv;
wire [0:9] mux_2level_tapbuf_size20_1_sram;
wire [0:9] mux_2level_tapbuf_size20_1_sram_inv;
wire [0:0] mux_2level_tapbuf_size20_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size20_mem_1_ccff_tail;
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
wire [0:9] mux_2level_tapbuf_size21_6_sram;
wire [0:9] mux_2level_tapbuf_size21_6_sram_inv;
wire [0:0] mux_2level_tapbuf_size21_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size21_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size21_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size21_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size21_mem_4_ccff_tail;
wire [0:0] mux_2level_tapbuf_size21_mem_5_ccff_tail;
wire [0:0] mux_2level_tapbuf_size21_mem_6_ccff_tail;
wire [0:5] mux_2level_tapbuf_size5_0_sram;
wire [0:5] mux_2level_tapbuf_size5_0_sram_inv;
wire [0:5] mux_2level_tapbuf_size5_1_sram;
wire [0:5] mux_2level_tapbuf_size5_1_sram_inv;
wire [0:5] mux_2level_tapbuf_size5_2_sram;
wire [0:5] mux_2level_tapbuf_size5_2_sram_inv;
wire [0:0] mux_2level_tapbuf_size5_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size5_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size5_mem_2_ccff_tail;
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
wire [0:5] mux_2level_tapbuf_size7_10_sram;
wire [0:5] mux_2level_tapbuf_size7_10_sram_inv;
wire [0:5] mux_2level_tapbuf_size7_11_sram;
wire [0:5] mux_2level_tapbuf_size7_11_sram_inv;
wire [0:5] mux_2level_tapbuf_size7_12_sram;
wire [0:5] mux_2level_tapbuf_size7_12_sram_inv;
wire [0:5] mux_2level_tapbuf_size7_13_sram;
wire [0:5] mux_2level_tapbuf_size7_13_sram_inv;
wire [0:5] mux_2level_tapbuf_size7_14_sram;
wire [0:5] mux_2level_tapbuf_size7_14_sram_inv;
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
wire [0:0] mux_2level_tapbuf_size7_mem_14_ccff_tail;
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
// ----- Net sink id 0 -----
	assign chany_bottom_out[1] = chany_top_in[0];
// ----- Local connection due to Wire 1 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[2] = chany_top_in[1];
// ----- Local connection due to Wire 2 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[3] = chany_top_in[2];
// ----- Local connection due to Wire 4 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[5] = chany_top_in[4];
// ----- Local connection due to Wire 5 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[6] = chany_top_in[5];
// ----- Local connection due to Wire 6 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[7] = chany_top_in[6];
// ----- Local connection due to Wire 8 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[9] = chany_top_in[8];
// ----- Local connection due to Wire 9 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[10] = chany_top_in[9];
// ----- Local connection due to Wire 10 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[11] = chany_top_in[10];
// ----- Local connection due to Wire 12 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[13] = chany_top_in[12];
// ----- Local connection due to Wire 13 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[14] = chany_top_in[13];
// ----- Local connection due to Wire 14 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[15] = chany_top_in[14];
// ----- Local connection due to Wire 16 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[17] = chany_top_in[16];
// ----- Local connection due to Wire 17 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[18] = chany_top_in[17];
// ----- Local connection due to Wire 18 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[19] = chany_top_in[18];
// ----- Local connection due to Wire 20 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[21] = chany_top_in[20];
// ----- Local connection due to Wire 21 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[22] = chany_top_in[21];
// ----- Local connection due to Wire 22 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[23] = chany_top_in[22];
// ----- Local connection due to Wire 24 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[25] = chany_top_in[24];
// ----- Local connection due to Wire 25 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[26] = chany_top_in[25];
// ----- Local connection due to Wire 26 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[27] = chany_top_in[26];
// ----- Local connection due to Wire 28 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[29] = chany_top_in[28];
// ----- Local connection due to Wire 29 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[30] = chany_top_in[29];
// ----- Local connection due to Wire 30 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[31] = chany_top_in[30];
// ----- Local connection due to Wire 32 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[33] = chany_top_in[32];
// ----- Local connection due to Wire 33 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[34] = chany_top_in[33];
// ----- Local connection due to Wire 34 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[35] = chany_top_in[34];
// ----- Local connection due to Wire 36 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[37] = chany_top_in[36];
// ----- Local connection due to Wire 37 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[38] = chany_top_in[37];
// ----- Local connection due to Wire 38 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[39] = chany_top_in[38];
// ----- Local connection due to Wire 40 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[41] = chany_top_in[40];
// ----- Local connection due to Wire 50 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[1] = chany_bottom_in[0];
// ----- Local connection due to Wire 51 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[2] = chany_bottom_in[1];
// ----- Local connection due to Wire 52 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[3] = chany_bottom_in[2];
// ----- Local connection due to Wire 54 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[5] = chany_bottom_in[4];
// ----- Local connection due to Wire 55 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[6] = chany_bottom_in[5];
// ----- Local connection due to Wire 56 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[7] = chany_bottom_in[6];
// ----- Local connection due to Wire 58 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[9] = chany_bottom_in[8];
// ----- Local connection due to Wire 59 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[10] = chany_bottom_in[9];
// ----- Local connection due to Wire 60 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[11] = chany_bottom_in[10];
// ----- Local connection due to Wire 62 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[13] = chany_bottom_in[12];
// ----- Local connection due to Wire 63 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[14] = chany_bottom_in[13];
// ----- Local connection due to Wire 64 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[15] = chany_bottom_in[14];
// ----- Local connection due to Wire 66 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[17] = chany_bottom_in[16];
// ----- Local connection due to Wire 67 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[18] = chany_bottom_in[17];
// ----- Local connection due to Wire 68 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[19] = chany_bottom_in[18];
// ----- Local connection due to Wire 70 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[21] = chany_bottom_in[20];
// ----- Local connection due to Wire 71 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[22] = chany_bottom_in[21];
// ----- Local connection due to Wire 72 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[23] = chany_bottom_in[22];
// ----- Local connection due to Wire 74 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[25] = chany_bottom_in[24];
// ----- Local connection due to Wire 75 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[26] = chany_bottom_in[25];
// ----- Local connection due to Wire 76 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[27] = chany_bottom_in[26];
// ----- Local connection due to Wire 78 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[29] = chany_bottom_in[28];
// ----- Local connection due to Wire 79 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[30] = chany_bottom_in[29];
// ----- Local connection due to Wire 80 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[31] = chany_bottom_in[30];
// ----- Local connection due to Wire 82 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[33] = chany_bottom_in[32];
// ----- Local connection due to Wire 83 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[34] = chany_bottom_in[33];
// ----- Local connection due to Wire 84 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[35] = chany_bottom_in[34];
// ----- Local connection due to Wire 86 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[37] = chany_bottom_in[36];
// ----- Local connection due to Wire 87 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[38] = chany_bottom_in[37];
// ----- Local connection due to Wire 88 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[39] = chany_bottom_in[38];
// ----- Local connection due to Wire 90 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[41] = chany_bottom_in[40];
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	mux_2level_tapbuf_size7 mux_top_track_0 (
		.in({top_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_1__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_6__pin_inpad_0_, chanx_left_in[0], chanx_left_in[11], chanx_left_in[22], chanx_left_in[33]}),
		.sram(mux_2level_tapbuf_size7_0_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_0_sram_inv[0:5]),
		.out(chany_top_out[0]));

	mux_2level_tapbuf_size7 mux_top_track_40 (
		.in({top_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_5__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_6__pin_inpad_0_, chanx_left_in[6], chanx_left_in[17], chanx_left_in[28], chanx_left_in[39]}),
		.sram(mux_2level_tapbuf_size7_1_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_1_sram_inv[0:5]),
		.out(chany_top_out[20]));

	mux_2level_tapbuf_size7 mux_top_track_48 (
		.in({top_right_grid_left_width_0_height_0_subtile_1__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_6__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_7__pin_inpad_0_, chanx_left_in[5], chanx_left_in[16], chanx_left_in[27], chanx_left_in[38]}),
		.sram(mux_2level_tapbuf_size7_2_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_2_sram_inv[0:5]),
		.out(chany_top_out[24]));

	mux_2level_tapbuf_size7 mux_left_track_9 (
		.in({chany_bottom_in[4], chany_bottom_in[15], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_18_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_26_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_31_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_0_1_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_4_1_}),
		.sram(mux_2level_tapbuf_size7_3_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_3_sram_inv[0:5]),
		.out(chanx_left_out[4]));

	mux_2level_tapbuf_size7 mux_left_track_11 (
		.in({chany_bottom_in[5], chany_bottom_in[19], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_22_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_30_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_10_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_2_1_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_1_1_}),
		.sram(mux_2level_tapbuf_size7_4_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_4_sram_inv[0:5]),
		.out(chanx_left_out[5]));

	mux_2level_tapbuf_size7 mux_left_track_27 (
		.in({chany_top_in[38], chany_bottom_in[16], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_14_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_19_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_27_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_32_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_ovch_2_0_}),
		.sram(mux_2level_tapbuf_size7_5_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_5_sram_inv[0:5]),
		.out(chanx_left_out[13]));

	mux_2level_tapbuf_size7 mux_left_track_31 (
		.in({chany_top_in[36], chany_bottom_in[18], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_22_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_27_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_0_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_10_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_2_1_}),
		.sram(mux_2level_tapbuf_size7_6_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_6_sram_inv[0:5]),
		.out(chanx_left_out[15]));

	mux_2level_tapbuf_size7 mux_left_track_39 (
		.in({chany_top_in[30], chany_bottom_in[24], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_8_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_16_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_21_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_26_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_0_1_}),
		.sram(mux_2level_tapbuf_size7_7_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_7_sram_inv[0:5]),
		.out(chanx_left_out[19]));

	mux_2level_tapbuf_size7 mux_left_track_47 (
		.in({chany_top_in[25], chany_bottom_in[29], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_14_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_19_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_24_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_32_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_ovch_2_0_}),
		.sram(mux_2level_tapbuf_size7_8_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_8_sram_inv[0:5]),
		.out(chanx_left_out[23]));

	mux_2level_tapbuf_size7 mux_left_track_55 (
		.in({chany_top_in[20], chany_bottom_in[34], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_30_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_5_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_13_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_18_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_1_1_}),
		.sram(mux_2level_tapbuf_size7_9_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_9_sram_inv[0:5]),
		.out(chanx_left_out[27]));

	mux_2level_tapbuf_size7 mux_left_track_57 (
		.in({chany_top_in[18], chany_bottom_in[36], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_34_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_9_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_17_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_22_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_3_1_}),
		.sram(mux_2level_tapbuf_size7_10_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_10_sram_inv[0:5]),
		.out(chanx_left_out[28]));

	mux_2level_tapbuf_size7 mux_left_track_59 (
		.in({chany_top_in[17], chany_bottom_in[37], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_8_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_13_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_21_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_26_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_0_1_}),
		.sram(mux_2level_tapbuf_size7_11_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_11_sram_inv[0:5]),
		.out(chanx_left_out[29]));

	mux_2level_tapbuf_size7 mux_left_track_73 (
		.in({chany_top_in[8], chany_top_in[27], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_26_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_31_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_6_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_14_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_4_1_}),
		.sram(mux_2level_tapbuf_size7_12_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_12_sram_inv[0:5]),
		.out(chanx_left_out[36]));

	mux_2level_tapbuf_size7 mux_left_track_77 (
		.in({chany_top_in[5], chany_top_in[19], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_34_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_9_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_14_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_22_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_3_1_}),
		.sram(mux_2level_tapbuf_size7_13_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_13_sram_inv[0:5]),
		.out(chanx_left_out[38]));

	mux_2level_tapbuf_size7 mux_left_track_79 (
		.in({chany_top_in[4], chany_top_in[15], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_8_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_13_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_18_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_26_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_0_1_}),
		.sram(mux_2level_tapbuf_size7_14_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_14_sram_inv[0:5]),
		.out(chanx_left_out[39]));

	mux_2level_tapbuf_size7_mem mem_top_track_0 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(mux_2level_tapbuf_size7_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_0_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_0_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_top_track_40 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_1_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_1_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_top_track_48 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_2_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_2_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_left_track_9 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_3_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_3_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_left_track_11 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_4_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_4_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_left_track_27 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_5_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_5_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_left_track_31 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_6_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_6_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_left_track_39 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size9_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_7_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_7_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_7_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_left_track_47 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_8_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_8_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_8_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_left_track_55 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_9_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_9_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_9_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_left_track_57 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_9_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_10_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_10_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_10_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_left_track_59 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_10_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_11_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_11_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_11_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_left_track_73 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size9_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_12_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_12_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_12_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_left_track_77 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_13_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_13_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_13_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_left_track_79 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_13_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_14_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_14_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_14_sram_inv[0:5]));

	mux_2level_tapbuf_size6 mux_top_track_8 (
		.in({top_right_grid_left_width_0_height_0_subtile_1__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_2__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_7__pin_inpad_0_, chanx_left_in[10], chanx_left_in[21], chanx_left_in[32]}),
		.sram(mux_2level_tapbuf_size6_0_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_0_sram_inv[0:5]),
		.out(chany_top_out[4]));

	mux_2level_tapbuf_size6 mux_top_track_24 (
		.in({top_right_grid_left_width_0_height_0_subtile_3__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_4__pin_inpad_0_, chanx_left_in[8], chanx_left_in[19], chanx_left_in[30], chanx_left_in[41]}),
		.sram(mux_2level_tapbuf_size6_1_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_1_sram_inv[0:5]),
		.out(chany_top_out[12]));

	mux_2level_tapbuf_size6 mux_top_track_32 (
		.in({top_right_grid_left_width_0_height_0_subtile_4__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_5__pin_inpad_0_, chanx_left_in[7], chanx_left_in[18], chanx_left_in[29], chanx_left_in[40]}),
		.sram(mux_2level_tapbuf_size6_2_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_2_sram_inv[0:5]),
		.out(chany_top_out[16]));

	mux_2level_tapbuf_size6 mux_top_track_56 (
		.in({top_right_grid_left_width_0_height_0_subtile_2__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_7__pin_inpad_0_, chanx_left_in[4], chanx_left_in[15], chanx_left_in[26], chanx_left_in[37]}),
		.sram(mux_2level_tapbuf_size6_3_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_3_sram_inv[0:5]),
		.out(chany_top_out[28]));

	mux_2level_tapbuf_size6 mux_top_track_80 (
		.in({top_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_5__pin_inpad_0_, chanx_left_in[1], chanx_left_in[12], chanx_left_in[23], chanx_left_in[34]}),
		.sram(mux_2level_tapbuf_size6_4_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_4_sram_inv[0:5]),
		.out(chany_top_out[40]));

	mux_2level_tapbuf_size6 mux_left_track_29 (
		.in({chany_top_in[37], chany_bottom_in[17], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_18_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_23_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_31_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_0_1_}),
		.sram(mux_2level_tapbuf_size6_5_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_5_sram_inv[0:5]),
		.out(chanx_left_out[14]));

	mux_2level_tapbuf_size6 mux_left_track_75 (
		.in({chany_top_in[6], chany_top_in[23], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_30_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_10_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_18_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_1_1_}),
		.sram(mux_2level_tapbuf_size6_6_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_6_sram_inv[0:5]),
		.out(chanx_left_out[37]));

	mux_2level_tapbuf_size6_mem mem_top_track_8 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_0_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_0_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_top_track_24 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size5_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_1_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_1_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_top_track_32 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_2_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_2_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_top_track_56 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_3_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_3_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_top_track_80 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size5_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_4_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_4_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_left_track_29 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_5_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_5_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_left_track_75 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_12_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_6_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_6_sram_inv[0:5]));

	mux_2level_tapbuf_size5 mux_top_track_16 (
		.in({top_right_grid_left_width_0_height_0_subtile_2__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_3__pin_inpad_0_, chanx_left_in[9], chanx_left_in[20], chanx_left_in[31]}),
		.sram(mux_2level_tapbuf_size5_0_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size5_0_sram_inv[0:5]),
		.out(chany_top_out[8]));

	mux_2level_tapbuf_size5 mux_top_track_64 (
		.in({top_right_grid_left_width_0_height_0_subtile_3__pin_inpad_0_, chanx_left_in[3], chanx_left_in[14], chanx_left_in[25], chanx_left_in[36]}),
		.sram(mux_2level_tapbuf_size5_1_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size5_1_sram_inv[0:5]),
		.out(chany_top_out[32]));

	mux_2level_tapbuf_size5 mux_top_track_72 (
		.in({top_right_grid_left_width_0_height_0_subtile_4__pin_inpad_0_, chanx_left_in[2], chanx_left_in[13], chanx_left_in[24], chanx_left_in[35]}),
		.sram(mux_2level_tapbuf_size5_2_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size5_2_sram_inv[0:5]),
		.out(chany_top_out[36]));

	mux_2level_tapbuf_size5_mem mem_top_track_16 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size5_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size5_0_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size5_0_sram_inv[0:5]));

	mux_2level_tapbuf_size5_mem mem_top_track_64 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size5_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size5_1_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size5_1_sram_inv[0:5]));

	mux_2level_tapbuf_size5_mem mem_top_track_72 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size5_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size5_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size5_2_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size5_2_sram_inv[0:5]));

	mux_2level_tapbuf_size21 mux_bottom_track_1 (
		.in({bottom_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_, bottom_right_grid_left_width_0_height_0_subtile_1__pin_inpad_0_, bottom_right_grid_left_width_0_height_0_subtile_6__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_15_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_19_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_4_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_24_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_28_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_13_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_33_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_2_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_22_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_7_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_11_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_31_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_oack_3_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_ordy_0_0_, chanx_left_in[1], chanx_left_in[12], chanx_left_in[23], chanx_left_in[34]}),
		.sram(mux_2level_tapbuf_size21_0_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size21_0_sram_inv[0:9]),
		.out(chany_bottom_out[0]));

	mux_2level_tapbuf_size21 mux_bottom_track_9 (
		.in({bottom_right_grid_left_width_0_height_0_subtile_1__pin_inpad_0_, bottom_right_grid_left_width_0_height_0_subtile_2__pin_inpad_0_, bottom_right_grid_left_width_0_height_0_subtile_7__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_19_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_23_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_8_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_28_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_32_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_17_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_2_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_6_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_26_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_11_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_15_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_ovalid_0_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_ordy_0_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_ordy_2_0_, chanx_left_in[2], chanx_left_in[13], chanx_left_in[24], chanx_left_in[35]}),
		.sram(mux_2level_tapbuf_size21_1_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size21_1_sram_inv[0:9]),
		.out(chany_bottom_out[4]));

	mux_2level_tapbuf_size21 mux_bottom_track_17 (
		.in({bottom_right_grid_left_width_0_height_0_subtile_2__pin_inpad_0_, bottom_right_grid_left_width_0_height_0_subtile_3__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_3_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_23_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_27_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_12_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_32_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_1_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_21_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_6_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_10_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_30_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_15_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_19_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_ovalid_4_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_ordy_2_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_ordy_4_0_, chanx_left_in[3], chanx_left_in[14], chanx_left_in[25], chanx_left_in[36]}),
		.sram(mux_2level_tapbuf_size21_2_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size21_2_sram_inv[0:9]),
		.out(chany_bottom_out[8]));

	mux_2level_tapbuf_size21 mux_bottom_track_25 (
		.in({bottom_right_grid_left_width_0_height_0_subtile_3__pin_inpad_0_, bottom_right_grid_left_width_0_height_0_subtile_4__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_7_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_27_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_31_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_16_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_1_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_5_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_25_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_10_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_14_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_34_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_19_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_23_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_ovch_3_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_ordy_4_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_olck_1_0_, chanx_left_in[4], chanx_left_in[15], chanx_left_in[26], chanx_left_in[37]}),
		.sram(mux_2level_tapbuf_size21_3_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size21_3_sram_inv[0:9]),
		.out(chany_bottom_out[12]));

	mux_2level_tapbuf_size21 mux_bottom_track_33 (
		.in({bottom_right_grid_left_width_0_height_0_subtile_4__pin_inpad_0_, bottom_right_grid_left_width_0_height_0_subtile_5__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_11_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_31_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_20_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_5_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_9_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_29_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_14_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_18_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_3_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_23_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_27_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_oack_1_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_olck_1_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_olck_3_0_, chanx_left_in[5], chanx_left_in[16], chanx_left_in[27], chanx_left_in[38]}),
		.sram(mux_2level_tapbuf_size21_4_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size21_4_sram_inv[0:9]),
		.out(chany_bottom_out[16]));

	mux_2level_tapbuf_size21 mux_bottom_track_41 (
		.in({bottom_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_, bottom_right_grid_left_width_0_height_0_subtile_5__pin_inpad_0_, bottom_right_grid_left_width_0_height_0_subtile_6__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_15_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_4_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_24_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_9_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_13_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_33_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_18_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_22_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_7_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_27_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_31_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_oack_3_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_olck_3_0_, chanx_left_in[6], chanx_left_in[17], chanx_left_in[28], chanx_left_in[39]}),
		.sram(mux_2level_tapbuf_size21_5_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size21_5_sram_inv[0:9]),
		.out(chany_bottom_out[20]));

	mux_2level_tapbuf_size21 mux_bottom_track_81 (
		.in({bottom_right_grid_left_width_0_height_0_subtile_0__pin_inpad_0_, bottom_right_grid_left_width_0_height_0_subtile_5__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_11_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_15_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_20_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_24_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_9_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_29_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_33_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_18_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_3_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_7_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_27_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_oack_1_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_oack_3_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_olck_3_0_, chanx_left_in[0], chanx_left_in[11], chanx_left_in[22], chanx_left_in[33]}),
		.sram(mux_2level_tapbuf_size21_6_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size21_6_sram_inv[0:9]),
		.out(chany_bottom_out[40]));

	mux_2level_tapbuf_size21_mem mem_bottom_track_1 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size21_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size21_0_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size21_0_sram_inv[0:9]));

	mux_2level_tapbuf_size21_mem mem_bottom_track_9 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size21_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size21_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size21_1_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size21_1_sram_inv[0:9]));

	mux_2level_tapbuf_size21_mem mem_bottom_track_17 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size21_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size21_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size21_2_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size21_2_sram_inv[0:9]));

	mux_2level_tapbuf_size21_mem mem_bottom_track_25 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size21_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size21_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size21_3_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size21_3_sram_inv[0:9]));

	mux_2level_tapbuf_size21_mem mem_bottom_track_33 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size21_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size21_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size21_4_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size21_4_sram_inv[0:9]));

	mux_2level_tapbuf_size21_mem mem_bottom_track_41 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size21_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size21_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size21_5_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size21_5_sram_inv[0:9]));

	mux_2level_tapbuf_size21_mem mem_bottom_track_81 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size19_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size21_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size21_6_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size21_6_sram_inv[0:9]));

	mux_2level_tapbuf_size20 mux_bottom_track_49 (
		.in({bottom_right_grid_left_width_0_height_0_subtile_1__pin_inpad_0_, bottom_right_grid_left_width_0_height_0_subtile_6__pin_inpad_0_, bottom_right_grid_left_width_0_height_0_subtile_7__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_19_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_4_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_8_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_28_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_13_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_17_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_2_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_22_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_26_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_11_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_31_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_ovalid_0_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_ordy_0_0_, chanx_left_in[7], chanx_left_in[18], chanx_left_in[29], chanx_left_in[40]}),
		.sram(mux_2level_tapbuf_size20_0_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size20_0_sram_inv[0:9]),
		.out(chany_bottom_out[24]));

	mux_2level_tapbuf_size20 mux_bottom_track_57 (
		.in({bottom_right_grid_left_width_0_height_0_subtile_2__pin_inpad_0_, bottom_right_grid_left_width_0_height_0_subtile_7__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_3_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_23_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_8_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_12_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_32_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_17_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_21_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_6_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_26_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_30_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_15_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_ovalid_0_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_ovalid_4_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_ordy_2_0_, chanx_left_in[8], chanx_left_in[19], chanx_left_in[30], chanx_left_in[41]}),
		.sram(mux_2level_tapbuf_size20_1_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size20_1_sram_inv[0:9]),
		.out(chany_bottom_out[28]));

	mux_2level_tapbuf_size20_mem mem_bottom_track_49 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size21_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size20_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size20_0_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size20_0_sram_inv[0:9]));

	mux_2level_tapbuf_size20_mem mem_bottom_track_57 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size20_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size20_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size20_1_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size20_1_sram_inv[0:9]));

	mux_2level_tapbuf_size19 mux_bottom_track_65 (
		.in({bottom_right_grid_left_width_0_height_0_subtile_3__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_3_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_7_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_27_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_12_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_16_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_1_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_21_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_25_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_10_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_30_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_34_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_19_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_ovalid_4_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_ovch_3_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_ordy_4_0_, chanx_left_in[9], chanx_left_in[20], chanx_left_in[31]}),
		.sram(mux_2level_tapbuf_size19_0_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size19_0_sram_inv[0:9]),
		.out(chany_bottom_out[32]));

	mux_2level_tapbuf_size19 mux_bottom_track_73 (
		.in({bottom_right_grid_left_width_0_height_0_subtile_4__pin_inpad_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_7_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_11_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_31_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_16_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_20_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_5_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_25_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_29_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_14_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_34_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_3_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_23_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_ovch_3_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_oack_1_0_, bottom_left_grid_right_width_0_height_0_subtile_0__pin_olck_1_0_, chanx_left_in[10], chanx_left_in[21], chanx_left_in[32]}),
		.sram(mux_2level_tapbuf_size19_1_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size19_1_sram_inv[0:9]),
		.out(chany_bottom_out[36]));

	mux_2level_tapbuf_size19_mem mem_bottom_track_65 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size20_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size19_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size19_0_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size19_0_sram_inv[0:9]));

	mux_2level_tapbuf_size19_mem mem_bottom_track_73 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size19_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size19_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size19_1_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size19_1_sram_inv[0:9]));

	mux_2level_tapbuf_size11 mux_left_track_1 (
		.in({chany_top_in[0], chany_top_in[3], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_2_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_10_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_15_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_4_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_20_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_1_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_25_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_30_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_ovalid_3_0_}),
		.sram(mux_2level_tapbuf_size11_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_0_sram_inv[0:7]),
		.out(chanx_left_out[0]));

	mux_2level_tapbuf_size11 mux_left_track_3 (
		.in({chany_bottom_in[0], chany_bottom_in[3], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_6_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_14_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_19_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_24_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_5_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_29_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_2_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_34_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_ovch_2_0_}),
		.sram(mux_2level_tapbuf_size11_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_1_sram_inv[0:7]),
		.out(chanx_left_out[1]));

	mux_2level_tapbuf_size11 mux_left_track_67 (
		.in({chany_top_in[12], chany_top_in[39], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_6_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_14_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_3_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_19_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_0_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_24_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_29_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_2_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_ovch_2_0_}),
		.sram(mux_2level_tapbuf_size11_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_2_sram_inv[0:7]),
		.out(chanx_left_out[33]));

	mux_2level_tapbuf_size11 mux_left_track_83 (
		.in({chany_top_in[1], chany_top_in[7], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_6_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_3_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_11_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_0_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_16_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_21_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_26_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_34_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_4_1_}),
		.sram(mux_2level_tapbuf_size11_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_3_sram_inv[0:7]),
		.out(chanx_left_out[41]));

	mux_2level_tapbuf_size11_mem mem_left_track_1 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size21_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size11_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_0_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_left_track_3 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size11_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size11_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_1_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_left_track_67 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size9_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size11_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_2_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_left_track_83 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size9_mem_4_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_3_sram_inv[0:7]));

	mux_2level_tapbuf_size10 mux_left_track_5 (
		.in({chany_bottom_in[1], chany_bottom_in[7], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_10_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_18_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_23_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_28_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_33_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_6_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_ovalid_3_0_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_0_1_}),
		.sram(mux_2level_tapbuf_size10_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_0_sram_inv[0:7]),
		.out(chanx_left_out[2]));

	mux_2level_tapbuf_size10 mux_left_track_15 (
		.in({chany_bottom_in[8], chany_bottom_in[27], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_30_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_3_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_0_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_8_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_13_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_18_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_1_1_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_0_1_}),
		.sram(mux_2level_tapbuf_size10_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_1_sram_inv[0:7]),
		.out(chanx_left_out[7]));

	mux_2level_tapbuf_size10 mux_left_track_33 (
		.in({chany_top_in[34], chany_bottom_in[20], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_2_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_26_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_31_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_4_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_1_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_9_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_14_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_4_1_}),
		.sram(mux_2level_tapbuf_size10_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_2_sram_inv[0:7]),
		.out(chanx_left_out[16]));

	mux_2level_tapbuf_size10 mux_left_track_53 (
		.in({chany_top_in[21], chany_bottom_in[33], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_26_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_31_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_4_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_1_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_9_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_6_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_14_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_4_1_}),
		.sram(mux_2level_tapbuf_size10_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_3_sram_inv[0:7]),
		.out(chanx_left_out[26]));

	mux_2level_tapbuf_size10 mux_left_track_69 (
		.in({chany_top_in[10], chany_top_in[35], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_18_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_23_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_4_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_28_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_1_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_33_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_6_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_0_1_}),
		.sram(mux_2level_tapbuf_size10_4_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_4_sram_inv[0:7]),
		.out(chanx_left_out[34]));

	mux_2level_tapbuf_size10_mem mem_left_track_5 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size11_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_0_sram_inv[0:7]));

	mux_2level_tapbuf_size10_mem mem_left_track_15 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_1_sram_inv[0:7]));

	mux_2level_tapbuf_size10_mem mem_left_track_33 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_2_sram_inv[0:7]));

	mux_2level_tapbuf_size10_mem mem_left_track_53 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_3_sram_inv[0:7]));

	mux_2level_tapbuf_size10_mem mem_left_track_69 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size11_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_4_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_4_sram_inv[0:7]));

	mux_2level_tapbuf_size8 mux_left_track_7 (
		.in({chany_bottom_in[2], chany_bottom_in[11], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_14_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_22_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_27_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_32_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_ovch_2_0_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_2_1_}),
		.sram(mux_2level_tapbuf_size8_0_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_0_sram_inv[0:5]),
		.out(chanx_left_out[3]));

	mux_2level_tapbuf_size8 mux_left_track_13 (
		.in({chany_bottom_in[6], chany_bottom_in[23], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_26_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_34_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_9_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_14_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_4_1_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_3_1_}),
		.sram(mux_2level_tapbuf_size8_1_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_1_sram_inv[0:5]),
		.out(chanx_left_out[6]));

	mux_2level_tapbuf_size8 mux_left_track_23 (
		.in({chany_bottom_in[13], chany_bottom_in[41], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_11_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_19_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_24_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_29_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_34_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_4_1_}),
		.sram(mux_2level_tapbuf_size8_2_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_2_sram_inv[0:5]),
		.out(chanx_left_out[11]));

	mux_2level_tapbuf_size8 mux_left_track_25 (
		.in({chany_top_in[40], chany_bottom_in[14], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_10_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_15_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_23_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_28_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_33_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_ovalid_3_0_}),
		.sram(mux_2level_tapbuf_size8_3_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_3_sram_inv[0:5]),
		.out(chanx_left_out[12]));

	mux_2level_tapbuf_size8 mux_left_track_41 (
		.in({chany_top_in[29], chany_bottom_in[25], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_7_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_12_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_20_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_25_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_30_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_2_1_}),
		.sram(mux_2level_tapbuf_size8_4_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_4_sram_inv[0:5]),
		.out(chanx_left_out[20]));

	mux_2level_tapbuf_size8 mux_left_track_43 (
		.in({chany_top_in[28], chany_bottom_in[26], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_11_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_16_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_24_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_29_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_34_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_4_1_}),
		.sram(mux_2level_tapbuf_size8_5_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_5_sram_inv[0:5]),
		.out(chanx_left_out[21]));

	mux_2level_tapbuf_size8 mux_left_track_45 (
		.in({chany_top_in[26], chany_bottom_in[28], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_10_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_15_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_20_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_28_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_33_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_ovalid_3_0_}),
		.sram(mux_2level_tapbuf_size8_6_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_6_sram_inv[0:5]),
		.out(chanx_left_out[22]));

	mux_2level_tapbuf_size8 mux_left_track_49 (
		.in({chany_top_in[24], chany_bottom_in[30], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_2_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_18_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_23_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_28_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_1_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_0_1_}),
		.sram(mux_2level_tapbuf_size8_7_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_7_sram_inv[0:5]),
		.out(chanx_left_out[24]));

	mux_2level_tapbuf_size8 mux_left_track_61 (
		.in({chany_top_in[16], chany_bottom_in[38], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_7_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_12_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_17_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_25_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_30_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_2_1_}),
		.sram(mux_2level_tapbuf_size8_8_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_8_sram_inv[0:5]),
		.out(chanx_left_out[30]));

	mux_2level_tapbuf_size8 mux_left_track_63 (
		.in({chany_top_in[14], chany_bottom_in[40], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_11_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_16_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_21_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_29_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_34_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_4_1_}),
		.sram(mux_2level_tapbuf_size8_9_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_9_sram_inv[0:5]),
		.out(chanx_left_out[31]));

	mux_2level_tapbuf_size8_mem mem_left_track_7 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_0_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_0_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_left_track_13 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_1_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_1_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_left_track_23 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size9_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_2_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_2_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_left_track_25 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_3_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_3_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_left_track_41 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_7_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_4_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_4_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_left_track_43 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_5_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_5_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_left_track_45 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_6_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_6_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_left_track_49 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_8_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_7_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_7_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_7_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_left_track_61 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_11_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_8_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_8_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_8_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_left_track_63 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_8_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_9_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_9_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_9_sram_inv[0:5]));

	mux_2level_tapbuf_size12 mux_left_track_17 (
		.in({chany_bottom_in[9], chany_bottom_in[31], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_2_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_34_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_7_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_4_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_12_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_1_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_17_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_22_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_3_1_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_2_1_}),
		.sram(mux_2level_tapbuf_size12_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_0_sram_inv[0:7]),
		.out(chanx_left_out[8]));

	mux_2level_tapbuf_size12 mux_left_track_19 (
		.in({chany_bottom_in[10], chany_bottom_in[35], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_6_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_3_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_11_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_16_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_5_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_21_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_2_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_26_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_0_1_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_4_1_}),
		.sram(mux_2level_tapbuf_size12_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_1_sram_inv[0:7]),
		.out(chanx_left_out[9]));

	mux_2level_tapbuf_size12 mux_left_track_35 (
		.in({chany_top_in[33], chany_bottom_in[21], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_6_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_30_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_3_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_0_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_8_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_5_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_13_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_2_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_18_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_1_1_}),
		.sram(mux_2level_tapbuf_size12_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_2_sram_inv[0:7]),
		.out(chanx_left_out[17]));

	mux_2level_tapbuf_size12 mux_left_track_51 (
		.in({chany_top_in[22], chany_bottom_in[32], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_6_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_22_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_3_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_27_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_0_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_32_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_5_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_2_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_10_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_2_1_}),
		.sram(mux_2level_tapbuf_size12_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_3_sram_inv[0:7]),
		.out(chanx_left_out[25]));

	mux_2level_tapbuf_size12_mem mem_left_track_17 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_0_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_track_19 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_1_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_track_35 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_2_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_track_51 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_7_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_3_sram_inv[0:7]));

	mux_2level_tapbuf_size9 mux_left_track_21 (
		.in({chany_bottom_in[12], chany_bottom_in[39], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_7_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_15_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_20_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_25_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_6_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_30_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_2_1_}),
		.sram(mux_2level_tapbuf_size9_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size9_0_sram_inv[0:7]),
		.out(chanx_left_out[10]));

	mux_2level_tapbuf_size9 mux_left_track_37 (
		.in({chany_top_in[32], chany_bottom_in[22], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_34_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_4_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_12_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_17_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_6_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_22_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_3_1_}),
		.sram(mux_2level_tapbuf_size9_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size9_1_sram_inv[0:7]),
		.out(chanx_left_out[18]));

	mux_2level_tapbuf_size9 mux_left_track_65 (
		.in({chany_top_in[13], chany_top_in[41], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_2_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_10_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_15_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_20_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_25_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_33_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_ovalid_3_0_}),
		.sram(mux_2level_tapbuf_size9_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size9_2_sram_inv[0:7]),
		.out(chanx_left_out[32]));

	mux_2level_tapbuf_size9 mux_left_track_71 (
		.in({chany_top_in[9], chany_top_in[31], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_22_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_27_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_32_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_5_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_2_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_10_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_2_1_}),
		.sram(mux_2level_tapbuf_size9_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size9_3_sram_inv[0:7]),
		.out(chanx_left_out[35]));

	mux_2level_tapbuf_size9 mux_left_track_81 (
		.in({chany_top_in[2], chany_top_in[11], left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_2_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_7_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_12_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_17_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_22_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_30_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_2_1_}),
		.sram(mux_2level_tapbuf_size9_4_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size9_4_sram_inv[0:7]),
		.out(chanx_left_out[40]));

	mux_2level_tapbuf_size9_mem mem_left_track_21 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size9_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size9_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size9_0_sram_inv[0:7]));

	mux_2level_tapbuf_size9_mem mem_left_track_37 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size9_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size9_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size9_1_sram_inv[0:7]));

	mux_2level_tapbuf_size9_mem mem_left_track_65 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_9_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size9_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size9_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size9_2_sram_inv[0:7]));

	mux_2level_tapbuf_size9_mem mem_left_track_71 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size9_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size9_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size9_3_sram_inv[0:7]));

	mux_2level_tapbuf_size9_mem mem_left_track_81 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_14_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size9_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size9_4_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size9_4_sram_inv[0:7]));

endmodule
// ----- END Verilog module for sb_6__4_ -----

//----- Default net type -----
`default_nettype wire



