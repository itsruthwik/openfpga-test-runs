//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for Unique Switch Blocks[0][0]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Thu Aug  8 17:59:28 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for sb_0__0_ -----
module sb_0__0_(pReset,
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
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_1_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_5_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_9_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_13_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_17_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_21_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_25_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_29_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_33_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_2_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_6_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_10_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_14_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_18_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_22_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_26_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_30_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_34_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_3_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_7_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_11_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_15_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_19_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_23_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_27_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_31_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_0_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_4_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_8_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_12_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_16_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_20_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_24_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_28_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_32_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_1_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_5_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_9_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_13_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_17_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_21_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_25_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_29_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_33_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_ovalid_2_0_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_ovch_1_0_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_oack_0_0_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_oack_2_0_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_oack_4_0_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_ordy_1_0_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_ordy_3_0_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_olck_0_0_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_olck_2_0_,
                top_right_grid_left_width_0_height_0_subtile_0__pin_olck_4_0_,
                chanx_right_in,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_0_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_4_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_8_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_12_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_16_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_20_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_24_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_28_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_32_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_1_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_5_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_9_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_13_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_17_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_21_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_25_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_29_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_33_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_2_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_6_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_10_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_14_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_18_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_22_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_26_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_30_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_34_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_3_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_7_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_11_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_15_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_19_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_23_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_27_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_31_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_0_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_4_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_8_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_12_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_16_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_20_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_24_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_28_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_32_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_ovalid_1_0_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_ovch_0_0_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_ovch_4_0_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_oack_1_1_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_oack_3_1_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_ordy_0_1_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_ordy_2_1_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_ordy_4_1_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_olck_1_1_,
                right_top_grid_bottom_width_0_height_0_subtile_0__pin_olck_3_1_,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_,
                right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_,
                right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_,
                right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_,
                right_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_,
                right_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_,
                right_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_,
                right_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_,
                ccff_head,
                chany_top_out,
                chanx_right_out,
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
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_1_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_5_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_9_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_13_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_17_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_21_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_25_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_29_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_33_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_2_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_6_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_10_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_14_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_18_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_22_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_26_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_30_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_34_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_3_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_7_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_11_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_15_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_19_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_23_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_27_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_31_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_0_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_4_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_8_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_12_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_16_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_20_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_24_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_28_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_32_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_1_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_5_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_9_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_13_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_17_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_21_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_25_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_29_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_33_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_ovalid_2_0_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_ovch_1_0_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_oack_0_0_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_oack_2_0_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_oack_4_0_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_ordy_1_0_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_ordy_3_0_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_olck_0_0_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_olck_2_0_;
//----- INPUT PORTS -----
input [0:0] top_right_grid_left_width_0_height_0_subtile_0__pin_olck_4_0_;
//----- INPUT PORTS -----
input [0:32] chanx_right_in;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_0_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_4_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_8_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_12_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_16_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_20_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_24_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_28_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_32_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_1_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_5_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_9_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_13_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_17_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_21_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_25_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_29_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_33_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_2_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_6_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_10_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_14_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_18_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_22_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_26_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_30_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_34_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_3_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_7_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_11_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_15_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_19_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_23_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_27_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_31_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_0_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_4_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_8_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_12_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_16_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_20_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_24_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_28_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_32_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_ovalid_1_0_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_ovch_0_0_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_ovch_4_0_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_oack_1_1_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_oack_3_1_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_ordy_0_1_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_ordy_2_1_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_ordy_4_1_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_olck_1_1_;
//----- INPUT PORTS -----
input [0:0] right_top_grid_bottom_width_0_height_0_subtile_0__pin_olck_3_1_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] right_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:32] chany_top_out;
//----- OUTPUT PORTS -----
output [0:32] chanx_right_out;
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
wire [0:7] mux_2level_tapbuf_size10_5_sram;
wire [0:7] mux_2level_tapbuf_size10_5_sram_inv;
wire [0:7] mux_2level_tapbuf_size10_6_sram;
wire [0:7] mux_2level_tapbuf_size10_6_sram_inv;
wire [0:0] mux_2level_tapbuf_size10_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size10_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size10_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size10_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size10_mem_4_ccff_tail;
wire [0:0] mux_2level_tapbuf_size10_mem_5_ccff_tail;
wire [0:0] mux_2level_tapbuf_size10_mem_6_ccff_tail;
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
wire [0:7] mux_2level_tapbuf_size12_4_sram;
wire [0:7] mux_2level_tapbuf_size12_4_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_5_sram;
wire [0:7] mux_2level_tapbuf_size12_5_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_6_sram;
wire [0:7] mux_2level_tapbuf_size12_6_sram_inv;
wire [0:7] mux_2level_tapbuf_size12_7_sram;
wire [0:7] mux_2level_tapbuf_size12_7_sram_inv;
wire [0:0] mux_2level_tapbuf_size12_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_4_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_5_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_6_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_7_ccff_tail;
wire [0:7] mux_2level_tapbuf_size13_0_sram;
wire [0:7] mux_2level_tapbuf_size13_0_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_1_sram;
wire [0:7] mux_2level_tapbuf_size13_1_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_2_sram;
wire [0:7] mux_2level_tapbuf_size13_2_sram_inv;
wire [0:7] mux_2level_tapbuf_size13_3_sram;
wire [0:7] mux_2level_tapbuf_size13_3_sram_inv;
wire [0:0] mux_2level_tapbuf_size13_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size13_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size13_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size13_mem_3_ccff_tail;
wire [0:5] mux_2level_tapbuf_size5_0_sram;
wire [0:5] mux_2level_tapbuf_size5_0_sram_inv;
wire [0:5] mux_2level_tapbuf_size5_1_sram;
wire [0:5] mux_2level_tapbuf_size5_1_sram_inv;
wire [0:5] mux_2level_tapbuf_size5_2_sram;
wire [0:5] mux_2level_tapbuf_size5_2_sram_inv;
wire [0:5] mux_2level_tapbuf_size5_3_sram;
wire [0:5] mux_2level_tapbuf_size5_3_sram_inv;
wire [0:0] mux_2level_tapbuf_size5_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size5_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size5_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size5_mem_3_ccff_tail;
wire [0:5] mux_2level_tapbuf_size6_0_sram;
wire [0:5] mux_2level_tapbuf_size6_0_sram_inv;
wire [0:5] mux_2level_tapbuf_size6_10_sram;
wire [0:5] mux_2level_tapbuf_size6_10_sram_inv;
wire [0:5] mux_2level_tapbuf_size6_11_sram;
wire [0:5] mux_2level_tapbuf_size6_11_sram_inv;
wire [0:5] mux_2level_tapbuf_size6_12_sram;
wire [0:5] mux_2level_tapbuf_size6_12_sram_inv;
wire [0:5] mux_2level_tapbuf_size6_13_sram;
wire [0:5] mux_2level_tapbuf_size6_13_sram_inv;
wire [0:5] mux_2level_tapbuf_size6_14_sram;
wire [0:5] mux_2level_tapbuf_size6_14_sram_inv;
wire [0:5] mux_2level_tapbuf_size6_15_sram;
wire [0:5] mux_2level_tapbuf_size6_15_sram_inv;
wire [0:5] mux_2level_tapbuf_size6_16_sram;
wire [0:5] mux_2level_tapbuf_size6_16_sram_inv;
wire [0:5] mux_2level_tapbuf_size6_17_sram;
wire [0:5] mux_2level_tapbuf_size6_17_sram_inv;
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
wire [0:5] mux_2level_tapbuf_size6_7_sram;
wire [0:5] mux_2level_tapbuf_size6_7_sram_inv;
wire [0:5] mux_2level_tapbuf_size6_8_sram;
wire [0:5] mux_2level_tapbuf_size6_8_sram_inv;
wire [0:5] mux_2level_tapbuf_size6_9_sram;
wire [0:5] mux_2level_tapbuf_size6_9_sram_inv;
wire [0:0] mux_2level_tapbuf_size6_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_10_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_11_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_12_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_13_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_14_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_15_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_16_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_4_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_5_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_6_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_7_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_8_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_9_ccff_tail;
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
wire [0:0] mux_2level_tapbuf_size7_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_4_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_5_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_6_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_7_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_8_ccff_tail;
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
wire [0:0] mux_2level_tapbuf_size8_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_4_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_5_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_6_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_7_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_8_ccff_tail;
wire [0:7] mux_2level_tapbuf_size9_0_sram;
wire [0:7] mux_2level_tapbuf_size9_0_sram_inv;
wire [0:7] mux_2level_tapbuf_size9_1_sram;
wire [0:7] mux_2level_tapbuf_size9_1_sram_inv;
wire [0:7] mux_2level_tapbuf_size9_2_sram;
wire [0:7] mux_2level_tapbuf_size9_2_sram_inv;
wire [0:0] mux_2level_tapbuf_size9_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size9_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size9_mem_2_ccff_tail;

// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	mux_2level_tapbuf_size10 mux_top_track_0 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_, top_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_5_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_13_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_2_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_22_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_31_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_ordy_3_0_, chanx_right_in[1]}),
		.sram(mux_2level_tapbuf_size10_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_0_sram_inv[0:7]),
		.out(chany_top_out[0]));

	mux_2level_tapbuf_size10 mux_top_track_6 (
		.in({top_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_, top_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_25_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_34_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_8_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_9_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_17_, top_right_grid_left_width_0_height_0_subtile_0__pin_ovch_1_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_olck_4_0_, chanx_right_in[4]}),
		.sram(mux_2level_tapbuf_size10_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_1_sram_inv[0:7]),
		.out(chany_top_out[3]));

	mux_2level_tapbuf_size10 mux_top_track_22 (
		.in({top_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_13_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_22_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_31_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_8_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_5_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_9_, top_right_grid_left_width_0_height_0_subtile_0__pin_ovch_1_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_olck_4_0_, chanx_right_in[12]}),
		.sram(mux_2level_tapbuf_size10_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_2_sram_inv[0:7]),
		.out(chany_top_out[11]));

	mux_2level_tapbuf_size10 mux_top_track_38 (
		.in({top_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_10_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_19_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_8_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_28_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_5_, top_right_grid_left_width_0_height_0_subtile_0__pin_ovalid_2_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_ovch_1_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_olck_4_0_, chanx_right_in[20]}),
		.sram(mux_2level_tapbuf_size10_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_3_sram_inv[0:7]),
		.out(chany_top_out[19]));

	mux_2level_tapbuf_size10 mux_right_track_2 (
		.in({chany_top_in[0], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_4_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_8_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_5_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_13_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_2_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_22_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_31_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_0_, right_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size10_4_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_4_sram_inv[0:7]),
		.out(chanx_right_out[1]));

	mux_2level_tapbuf_size10 mux_right_track_22 (
		.in({chany_top_in[10], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_9_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_10_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_18_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_7_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_27_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_4_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_ovalid_1_0_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_ovch_0_0_, right_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size10_5_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_5_sram_inv[0:7]),
		.out(chanx_right_out[11]));

	mux_2level_tapbuf_size10 mux_right_track_56 (
		.in({chany_top_in[27], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_24_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_33_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_10_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_7_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_8_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_16_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_ovch_0_0_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_ordy_2_1_, right_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size10_6_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_6_sram_inv[0:7]),
		.out(chanx_right_out[28]));

	mux_2level_tapbuf_size10_mem mem_top_track_0 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(mux_2level_tapbuf_size10_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_0_sram_inv[0:7]));

	mux_2level_tapbuf_size10_mem mem_top_track_6 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_1_sram_inv[0:7]));

	mux_2level_tapbuf_size10_mem mem_top_track_22 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_2_sram_inv[0:7]));

	mux_2level_tapbuf_size10_mem mem_top_track_38 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_3_sram_inv[0:7]));

	mux_2level_tapbuf_size10_mem mem_right_track_2 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_4_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_4_sram_inv[0:7]));

	mux_2level_tapbuf_size10_mem mem_right_track_22 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_5_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_5_sram_inv[0:7]));

	mux_2level_tapbuf_size10_mem mem_right_track_56 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_6_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_6_sram_inv[0:7]));

	mux_2level_tapbuf_size12 mux_top_track_2 (
		.in({top_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_, top_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_9_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_17_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_6_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_26_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_3_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_4_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_1_, top_right_grid_left_width_0_height_0_subtile_0__pin_olck_0_0_, chanx_right_in[2]}),
		.sram(mux_2level_tapbuf_size12_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_0_sram_inv[0:7]),
		.out(chany_top_out[1]));

	mux_2level_tapbuf_size12 mux_top_track_18 (
		.in({top_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_5_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_9_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_6_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_14_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_3_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_23_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_32_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_1_, top_right_grid_left_width_0_height_0_subtile_0__pin_olck_0_0_, chanx_right_in[10]}),
		.sram(mux_2level_tapbuf_size12_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_1_sram_inv[0:7]),
		.out(chany_top_out[9]));

	mux_2level_tapbuf_size12 mux_top_track_20 (
		.in({top_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_9_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_10_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_18_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_7_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_27_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_4_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_1_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_5_, top_right_grid_left_width_0_height_0_subtile_0__pin_ovalid_2_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_olck_2_0_, chanx_right_in[11]}),
		.sram(mux_2level_tapbuf_size12_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_2_sram_inv[0:7]),
		.out(chany_top_out[10]));

	mux_2level_tapbuf_size12 mux_top_track_54 (
		.in({top_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_33_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_10_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_7_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_8_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_16_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_5_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_25_, top_right_grid_left_width_0_height_0_subtile_0__pin_ovalid_2_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_olck_2_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_olck_4_0_, chanx_right_in[28]}),
		.sram(mux_2level_tapbuf_size12_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_3_sram_inv[0:7]),
		.out(chany_top_out[27]));

	mux_2level_tapbuf_size12 mux_right_track_20 (
		.in({chany_top_in[9], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_8_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_5_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_9_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_6_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_14_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_3_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_23_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_0_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_32_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_ovalid_1_0_, right_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size12_4_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_4_sram_inv[0:7]),
		.out(chanx_right_out[10]));

	mux_2level_tapbuf_size12 mux_right_track_36 (
		.in({chany_top_in[17], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_8_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_28_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_5_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_2_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_6_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_3_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_11_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_0_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_20_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_ordy_4_1_, right_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size12_5_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_5_sram_inv[0:7]),
		.out(chanx_right_out[18]));

	mux_2level_tapbuf_size12 mux_right_track_38 (
		.in({chany_top_in[18], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_32_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_9_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_6_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_10_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_7_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_15_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_4_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_24_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_ovalid_1_0_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_olck_1_1_, right_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size12_6_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_6_sram_inv[0:7]),
		.out(chanx_right_out[19]));

	mux_2level_tapbuf_size12 mux_right_track_52 (
		.in({chany_top_in[25], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_8_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_16_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_5_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_25_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_2_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_34_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_3_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_0_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_oack_3_1_, right_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size12_7_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_7_sram_inv[0:7]),
		.out(chanx_right_out[26]));

	mux_2level_tapbuf_size12_mem mem_top_track_2 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_0_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_track_18 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_1_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_track_20 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_2_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_track_54 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_3_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_track_20 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size9_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_4_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_4_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_track_36 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size9_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_5_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_5_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_track_38 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_6_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_6_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_track_52 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size9_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_7_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_7_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_7_sram_inv[0:7]));

	mux_2level_tapbuf_size13 mux_top_track_4 (
		.in({top_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_, top_left_grid_right_width_0_height_0_subtile_3__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_21_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_10_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_30_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_7_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_4_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_8_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_5_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_13_, top_right_grid_left_width_0_height_0_subtile_0__pin_ovalid_2_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_olck_2_0_, chanx_right_in[3]}),
		.sram(mux_2level_tapbuf_size13_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_0_sram_inv[0:7]),
		.out(chany_top_out[2]));

	mux_2level_tapbuf_size13 mux_top_track_36 (
		.in({top_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_9_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_6_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_10_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_7_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_15_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_4_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_24_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_1_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_33_, top_right_grid_left_width_0_height_0_subtile_0__pin_ovalid_2_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_olck_2_0_, chanx_right_in[19]}),
		.sram(mux_2level_tapbuf_size13_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_1_sram_inv[0:7]),
		.out(chany_top_out[18]));

	mux_2level_tapbuf_size13 mux_top_track_52 (
		.in({top_left_grid_right_width_0_height_0_subtile_2__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_9_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_29_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_6_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_3_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_7_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_4_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_12_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_1_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_21_, top_right_grid_left_width_0_height_0_subtile_0__pin_olck_0_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_olck_2_0_, chanx_right_in[27]}),
		.sram(mux_2level_tapbuf_size13_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_2_sram_inv[0:7]),
		.out(chany_top_out[26]));

	mux_2level_tapbuf_size13 mux_right_track_54 (
		.in({chany_top_in[26], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_20_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_9_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_29_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_6_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_3_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_7_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_4_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_12_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_ovalid_1_0_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_ordy_0_1_, right_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size13_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_3_sram_inv[0:7]),
		.out(chanx_right_out[27]));

	mux_2level_tapbuf_size13_mem mem_top_track_4 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_0_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_top_track_36 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size11_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_1_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_top_track_52 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size11_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_2_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_right_track_54 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_7_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_3_sram_inv[0:7]));

	mux_2level_tapbuf_size7 mux_top_track_8 (
		.in({top_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_, top_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_29_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_12_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_21_, top_right_grid_left_width_0_height_0_subtile_0__pin_oack_0_0_, chanx_right_in[5]}),
		.sram(mux_2level_tapbuf_size7_0_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_0_sram_inv[0:5]),
		.out(chany_top_out[4]));

	mux_2level_tapbuf_size7 mux_top_track_10 (
		.in({top_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_, top_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_33_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_16_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_25_, top_right_grid_left_width_0_height_0_subtile_0__pin_oack_2_0_, chanx_right_in[6]}),
		.sram(mux_2level_tapbuf_size7_1_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_1_sram_inv[0:5]),
		.out(chany_top_out[5]));

	mux_2level_tapbuf_size7 mux_top_track_12 (
		.in({top_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_, top_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_11_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_20_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_29_, top_right_grid_left_width_0_height_0_subtile_0__pin_oack_4_0_, chanx_right_in[7]}),
		.sram(mux_2level_tapbuf_size7_2_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_2_sram_inv[0:5]),
		.out(chany_top_out[6]));

	mux_2level_tapbuf_size7 mux_top_track_14 (
		.in({top_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_1_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_15_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_24_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_33_, top_right_grid_left_width_0_height_0_subtile_0__pin_ordy_1_0_, chanx_right_in[8]}),
		.sram(mux_2level_tapbuf_size7_3_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_3_sram_inv[0:5]),
		.out(chany_top_out[7]));

	mux_2level_tapbuf_size7 mux_top_track_44 (
		.in({top_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_13_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_22_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_31_, top_right_grid_left_width_0_height_0_subtile_0__pin_oack_2_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_oack_4_0_, chanx_right_in[23]}),
		.sram(mux_2level_tapbuf_size7_4_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_4_sram_inv[0:5]),
		.out(chany_top_out[22]));

	mux_2level_tapbuf_size7 mux_right_track_0 (
		.in({chany_top_in[32], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_0_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_4_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_1_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_18_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_27_, right_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size7_5_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_5_sram_inv[0:5]),
		.out(chanx_right_out[0]));

	mux_2level_tapbuf_size7 mux_right_track_32 (
		.in({chany_top_in[15], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_0_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_20_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_29_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_12_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_ordy_0_1_, right_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size7_6_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_6_sram_inv[0:5]),
		.out(chanx_right_out[16]));

	mux_2level_tapbuf_size7 mux_right_track_42 (
		.in({chany_top_in[20], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_14_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_23_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_32_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_ovch_4_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size7_7_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_7_sram_inv[0:5]),
		.out(chanx_right_out[21]));

	mux_2level_tapbuf_size7 mux_right_track_58 (
		.in({chany_top_in[28], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_28_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_11_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_20_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_ovch_4_0_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_ordy_4_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size7_8_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_8_sram_inv[0:5]),
		.out(chanx_right_out[29]));

	mux_2level_tapbuf_size7_mem mem_top_track_8 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_0_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_0_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_top_track_10 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_1_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_1_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_top_track_12 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_2_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_2_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_top_track_14 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_3_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_3_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_top_track_44 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_4_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_4_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_right_track_0 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_8_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_5_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_5_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_right_track_32 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_13_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_6_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_6_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_right_track_42 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_8_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_7_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_7_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_7_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_right_track_58 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_8_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_8_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_8_sram_inv[0:5]));

	mux_2level_tapbuf_size8 mux_top_track_16 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_1_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_5_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_2_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_19_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_28_, top_right_grid_left_width_0_height_0_subtile_0__pin_ordy_3_0_, chanx_right_in[9]}),
		.sram(mux_2level_tapbuf_size8_0_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_0_sram_inv[0:5]),
		.out(chany_top_out[8]));

	mux_2level_tapbuf_size8 mux_top_track_32 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_1_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_33_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_2_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_16_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_25_, top_right_grid_left_width_0_height_0_subtile_0__pin_ordy_3_0_, chanx_right_in[17]}),
		.sram(mux_2level_tapbuf_size8_1_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_1_sram_inv[0:5]),
		.out(chany_top_out[16]));

	mux_2level_tapbuf_size8 mux_top_track_40 (
		.in({top_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_14_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_23_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_32_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_9_, top_right_grid_left_width_0_height_0_subtile_0__pin_ovch_1_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_oack_0_0_, chanx_right_in[21]}),
		.sram(mux_2level_tapbuf_size8_2_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_2_sram_inv[0:5]),
		.out(chany_top_out[20]));

	mux_2level_tapbuf_size8 mux_top_track_48 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_1_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_21_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_30_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_13_, top_right_grid_left_width_0_height_0_subtile_0__pin_ordy_1_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_ordy_3_0_, chanx_right_in[25]}),
		.sram(mux_2level_tapbuf_size8_3_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_3_sram_inv[0:5]),
		.out(chany_top_out[24]));

	mux_2level_tapbuf_size8 mux_top_track_56 (
		.in({top_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_11_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_20_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_9_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_29_, top_right_grid_left_width_0_height_0_subtile_0__pin_ovch_1_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_olck_4_0_, chanx_right_in[29]}),
		.sram(mux_2level_tapbuf_size8_4_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_4_sram_inv[0:5]),
		.out(chany_top_out[28]));

	mux_2level_tapbuf_size8 mux_right_track_8 (
		.in({chany_top_in[3], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_16_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_25_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_34_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_8_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_ovch_4_0_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_oack_3_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size8_5_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_5_sram_inv[0:5]),
		.out(chanx_right_out[4]));

	mux_2level_tapbuf_size8 mux_right_track_16 (
		.in({chany_top_in[7], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_0_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_32_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_1_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_15_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_24_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_olck_1_1_, right_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size8_6_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_6_sram_inv[0:5]),
		.out(chanx_right_out[8]));

	mux_2level_tapbuf_size8 mux_right_track_24 (
		.in({chany_top_in[11], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_13_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_22_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_31_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_8_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_ovch_0_0_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_ovch_4_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size8_7_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_7_sram_inv[0:5]),
		.out(chanx_right_out[12]));

	mux_2level_tapbuf_size8 mux_right_track_40 (
		.in({chany_top_in[19], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_10_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_19_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_8_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_28_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_ovch_0_0_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_olck_3_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size8_8_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_8_sram_inv[0:5]),
		.out(chanx_right_out[20]));

	mux_2level_tapbuf_size8_mem mem_top_track_16 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_0_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_0_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_top_track_32 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_1_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_1_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_top_track_40 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_2_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_2_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_top_track_48 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_3_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_3_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_top_track_56 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_4_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_4_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_right_track_8 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size11_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_5_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_5_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_right_track_16 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_11_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_6_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_6_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_right_track_24 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_7_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_7_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_7_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_right_track_40 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_8_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_8_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_8_sram_inv[0:5]));

	mux_2level_tapbuf_size6 mux_top_track_24 (
		.in({top_left_grid_right_width_0_height_0_subtile_4__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_17_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_26_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_9_, top_right_grid_left_width_0_height_0_subtile_0__pin_oack_0_0_, chanx_right_in[13]}),
		.sram(mux_2level_tapbuf_size6_0_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_0_sram_inv[0:5]),
		.out(chany_top_out[12]));

	mux_2level_tapbuf_size6 mux_top_track_26 (
		.in({top_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_21_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_30_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_13_, top_right_grid_left_width_0_height_0_subtile_0__pin_oack_2_0_, chanx_right_in[14]}),
		.sram(mux_2level_tapbuf_size6_1_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_1_sram_inv[0:5]),
		.out(chany_top_out[13]));

	mux_2level_tapbuf_size6 mux_top_track_28 (
		.in({top_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_25_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_34_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_17_, top_right_grid_left_width_0_height_0_subtile_0__pin_oack_4_0_, chanx_right_in[15]}),
		.sram(mux_2level_tapbuf_size6_2_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_2_sram_inv[0:5]),
		.out(chany_top_out[14]));

	mux_2level_tapbuf_size6 mux_top_track_30 (
		.in({top_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_29_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_12_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_21_, top_right_grid_left_width_0_height_0_subtile_0__pin_ordy_1_0_, chanx_right_in[16]}),
		.sram(mux_2level_tapbuf_size6_3_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_3_sram_inv[0:5]),
		.out(chany_top_out[15]));

	mux_2level_tapbuf_size6 mux_top_track_42 (
		.in({top_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_18_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_27_, top_right_grid_left_width_0_height_0_subtile_0__pin_oack_0_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_oack_2_0_, chanx_right_in[22]}),
		.sram(mux_2level_tapbuf_size6_4_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_4_sram_inv[0:5]),
		.out(chany_top_out[21]));

	mux_2level_tapbuf_size6 mux_top_track_46 (
		.in({top_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_17_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_26_, top_right_grid_left_width_0_height_0_subtile_0__pin_oack_4_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_ordy_1_0_, chanx_right_in[24]}),
		.sram(mux_2level_tapbuf_size6_5_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_5_sram_inv[0:5]),
		.out(chany_top_out[23]));

	mux_2level_tapbuf_size6 mux_top_track_58 (
		.in({top_left_grid_right_width_0_height_0_subtile_5__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_15_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_24_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_33_, top_right_grid_left_width_0_height_0_subtile_0__pin_oack_0_0_, chanx_right_in[30]}),
		.sram(mux_2level_tapbuf_size6_6_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_6_sram_inv[0:5]),
		.out(chany_top_out[29]));

	mux_2level_tapbuf_size6 mux_top_track_62 (
		.in({top_left_grid_right_width_0_height_0_subtile_7__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_14_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_23_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_32_, top_right_grid_left_width_0_height_0_subtile_0__pin_oack_4_0_, chanx_right_in[32]}),
		.sram(mux_2level_tapbuf_size6_7_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_7_sram_inv[0:5]),
		.out(chany_top_out[31]));

	mux_2level_tapbuf_size6 mux_top_track_64 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_1_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_18_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_27_, top_right_grid_left_width_0_height_0_subtile_0__pin_ordy_1_0_, chanx_right_in[0]}),
		.sram(mux_2level_tapbuf_size6_8_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_8_sram_inv[0:5]),
		.out(chany_top_out[32]));

	mux_2level_tapbuf_size6 mux_right_track_10 (
		.in({chany_top_in[4], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_20_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_29_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_12_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_ordy_0_1_, right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size6_9_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_9_sram_inv[0:5]),
		.out(chanx_right_out[5]));

	mux_2level_tapbuf_size6 mux_right_track_12 (
		.in({chany_top_in[5], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_24_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_33_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_16_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_ordy_2_1_, right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size6_10_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_10_sram_inv[0:5]),
		.out(chanx_right_out[6]));

	mux_2level_tapbuf_size6 mux_right_track_14 (
		.in({chany_top_in[6], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_28_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_11_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_20_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_ordy_4_1_, right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size6_11_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_11_sram_inv[0:5]),
		.out(chanx_right_out[7]));

	mux_2level_tapbuf_size6 mux_right_track_28 (
		.in({chany_top_in[13], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_12_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_21_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_30_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_oack_1_1_, right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size6_12_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_12_sram_inv[0:5]),
		.out(chanx_right_out[14]));

	mux_2level_tapbuf_size6 mux_right_track_30 (
		.in({chany_top_in[14], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_16_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_25_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_34_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_oack_3_1_, right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size6_13_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_13_sram_inv[0:5]),
		.out(chanx_right_out[15]));

	mux_2level_tapbuf_size6 mux_right_track_46 (
		.in({chany_top_in[22], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_13_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_22_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_31_, right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size6_14_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_14_sram_inv[0:5]),
		.out(chanx_right_out[23]));

	mux_2level_tapbuf_size6 mux_right_track_48 (
		.in({chany_top_in[23], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_0_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_17_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_26_, right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size6_15_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_15_sram_inv[0:5]),
		.out(chanx_right_out[24]));

	mux_2level_tapbuf_size6 mux_right_track_60 (
		.in({chany_top_in[29], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_32_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_15_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_24_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_olck_1_1_, right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size6_16_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_16_sram_inv[0:5]),
		.out(chanx_right_out[30]));

	mux_2level_tapbuf_size6 mux_right_track_64 (
		.in({chany_top_in[31], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_0_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_14_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_23_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_32_, right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size6_17_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_17_sram_inv[0:5]),
		.out(chanx_right_out[32]));

	mux_2level_tapbuf_size6_mem mem_top_track_24 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_0_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_0_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_top_track_26 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_1_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_1_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_top_track_28 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_2_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_2_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_top_track_30 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_3_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_3_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_top_track_42 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_4_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_4_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_top_track_46 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_5_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_5_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_top_track_58 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_6_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_6_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_top_track_62 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size5_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_7_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_7_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_7_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_top_track_64 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_7_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_8_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_8_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_8_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_right_track_10 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_9_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_9_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_9_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_right_track_12 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_9_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_10_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_10_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_10_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_right_track_14 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_10_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_11_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_11_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_11_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_right_track_28 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size5_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_12_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_12_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_12_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_right_track_30 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_12_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_13_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_13_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_13_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_right_track_46 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size5_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_14_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_14_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_14_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_right_track_48 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_14_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_15_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_15_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_15_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_right_track_60 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_8_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_16_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_16_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_16_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_right_track_64 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size5_mem_3_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_17_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_17_sram_inv[0:5]));

	mux_2level_tapbuf_size11 mux_top_track_34 (
		.in({top_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_5_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_2_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_6_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_3_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_11_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_20_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_29_, top_right_grid_left_width_0_height_0_subtile_0__pin_olck_0_0_, chanx_right_in[18]}),
		.sram(mux_2level_tapbuf_size11_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_0_sram_inv[0:7]),
		.out(chany_top_out[17]));

	mux_2level_tapbuf_size11 mux_top_track_50 (
		.in({top_left_grid_right_width_0_height_0_subtile_1__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_5_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_25_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_2_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_34_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_3_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_17_, top_right_grid_left_width_0_height_0_subtile_0__pin_ordy_3_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_olck_0_0_, chanx_right_in[26]}),
		.sram(mux_2level_tapbuf_size11_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_1_sram_inv[0:7]),
		.out(chany_top_out[25]));

	mux_2level_tapbuf_size11 mux_right_track_4 (
		.in({chany_top_in[1], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_8_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_9_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_17_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_6_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_26_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_3_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_0_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_4_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_ovalid_1_0_, right_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size11_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_2_sram_inv[0:7]),
		.out(chanx_right_out[2]));

	mux_2level_tapbuf_size11 mux_right_track_6 (
		.in({chany_top_in[2], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_12_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_21_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_10_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_30_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_7_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_4_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_8_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_ovch_0_0_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_oack_1_1_, right_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size11_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_3_sram_inv[0:7]),
		.out(chanx_right_out[3]));

	mux_2level_tapbuf_size11_mem mem_top_track_34 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size11_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_0_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_top_track_50 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size11_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_1_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_right_track_4 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size11_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_2_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_right_track_6 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size11_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size11_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_3_sram_inv[0:7]));

	mux_2level_tapbuf_size5 mux_top_track_60 (
		.in({top_left_grid_right_width_0_height_0_subtile_6__pin_inpad_0_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_19_, top_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_28_, top_right_grid_left_width_0_height_0_subtile_0__pin_oack_2_0_, chanx_right_in[31]}),
		.sram(mux_2level_tapbuf_size5_0_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size5_0_sram_inv[0:5]),
		.out(chany_top_out[30]));

	mux_2level_tapbuf_size5 mux_right_track_26 (
		.in({chany_top_in[12], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_17_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_26_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_ovch_4_0_, right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size5_1_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size5_1_sram_inv[0:5]),
		.out(chanx_right_out[13]));

	mux_2level_tapbuf_size5 mux_right_track_44 (
		.in({chany_top_in[21], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_18_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_27_, right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size5_2_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size5_2_sram_inv[0:5]),
		.out(chanx_right_out[22]));

	mux_2level_tapbuf_size5 mux_right_track_62 (
		.in({chany_top_in[30], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_19_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_28_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_olck_3_1_, right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size5_3_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size5_3_sram_inv[0:5]),
		.out(chanx_right_out[31]));

	mux_2level_tapbuf_size5_mem mem_top_track_60 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size5_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size5_0_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size5_0_sram_inv[0:5]));

	mux_2level_tapbuf_size5_mem mem_right_track_26 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_7_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size5_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size5_1_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size5_1_sram_inv[0:5]));

	mux_2level_tapbuf_size5_mem mem_right_track_44 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_7_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size5_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size5_2_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size5_2_sram_inv[0:5]));

	mux_2level_tapbuf_size5_mem mem_right_track_62 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_16_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size5_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size5_3_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size5_3_sram_inv[0:5]));

	mux_2level_tapbuf_size9 mux_right_track_18 (
		.in({chany_top_in[8], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_4_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_1_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_5_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_2_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_19_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_28_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_olck_3_1_, right_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size9_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size9_0_sram_inv[0:7]),
		.out(chanx_right_out[9]));

	mux_2level_tapbuf_size9 mux_right_track_34 (
		.in({chany_top_in[16], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_4_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_24_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_1_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_33_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_2_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_16_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_ordy_2_1_, right_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size9_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size9_1_sram_inv[0:7]),
		.out(chanx_right_out[17]));

	mux_2level_tapbuf_size9 mux_right_track_50 (
		.in({chany_top_in[24], right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_4_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_12_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_1_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_21_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_30_, right_top_grid_bottom_width_0_height_0_subtile_0__pin_oack_1_1_, right_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size9_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size9_2_sram_inv[0:7]),
		.out(chanx_right_out[25]));

	mux_2level_tapbuf_size9_mem mem_right_track_18 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size9_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size9_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size9_0_sram_inv[0:7]));

	mux_2level_tapbuf_size9_mem mem_right_track_34 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size9_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size9_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size9_1_sram_inv[0:7]));

	mux_2level_tapbuf_size9_mem mem_right_track_50 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_15_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size9_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size9_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size9_2_sram_inv[0:7]));

endmodule
// ----- END Verilog module for sb_0__0_ -----

//----- Default net type -----
`default_nettype wire



