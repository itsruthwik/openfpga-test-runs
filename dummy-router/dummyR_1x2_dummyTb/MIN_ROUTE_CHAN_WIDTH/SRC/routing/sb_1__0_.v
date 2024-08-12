//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for Unique Switch Blocks[1][0]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Thu Aug  8 17:59:28 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for sb_1__0_ -----
module sb_1__0_(pReset,
                prog_clk,
                chany_top_in,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_3_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_7_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_11_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_15_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_19_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_23_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_27_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_31_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_0_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_4_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_8_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_12_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_16_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_20_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_24_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_28_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_32_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_1_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_5_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_9_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_13_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_17_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_21_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_25_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_29_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_33_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_2_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_6_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_10_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_14_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_18_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_22_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_26_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_30_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_34_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_3_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_7_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_11_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_15_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_19_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_23_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_27_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_31_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_ovalid_0_0_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_ovalid_4_0_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_ovch_3_0_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_oack_1_0_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_oack_3_0_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_ordy_0_0_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_ordy_2_0_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_ordy_4_0_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_olck_1_0_,
                top_left_grid_right_width_0_height_0_subtile_0__pin_olck_3_0_,
                chanx_right_in,
                right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_,
                right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_,
                right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_,
                right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_,
                right_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_,
                right_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_,
                right_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_,
                right_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_,
                chanx_left_in,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_0_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_4_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_8_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_12_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_16_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_20_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_24_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_28_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_32_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_1_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_5_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_9_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_13_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_17_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_21_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_25_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_29_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_33_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_2_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_6_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_10_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_14_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_18_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_22_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_26_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_30_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_34_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_3_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_7_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_11_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_15_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_19_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_23_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_27_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_31_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_0_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_4_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_8_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_12_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_16_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_20_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_24_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_28_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_32_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_ovalid_1_0_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_ovch_0_0_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_ovch_4_0_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_oack_1_1_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_oack_3_1_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_ordy_0_1_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_ordy_2_1_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_ordy_4_1_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_olck_1_1_,
                left_top_grid_bottom_width_0_height_0_subtile_0__pin_olck_3_1_,
                left_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_,
                left_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_,
                left_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_,
                left_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_,
                left_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_,
                left_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_,
                left_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_,
                left_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_,
                ccff_head,
                chany_top_out,
                chanx_right_out,
                chanx_left_out,
                ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] pReset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:32] chany_top_in;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_3_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_7_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_11_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_15_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_19_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_23_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_27_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_31_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_0_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_4_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_8_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_12_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_16_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_20_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_24_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_28_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_32_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_1_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_5_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_9_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_13_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_17_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_21_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_25_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_29_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_33_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_2_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_6_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_10_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_14_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_18_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_22_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_26_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_30_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_34_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_3_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_7_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_11_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_15_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_19_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_23_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_27_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_31_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_ovalid_0_0_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_ovalid_4_0_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_ovch_3_0_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_oack_1_0_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_oack_3_0_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_ordy_0_0_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_ordy_2_0_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_ordy_4_0_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_olck_1_0_;
//----- INPUT PORTS -----
input [0:0] top_left_grid_right_width_0_height_0_subtile_0__pin_olck_3_0_;
//----- INPUT PORTS -----
input [0:32] chanx_right_in;
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
input [0:32] chanx_left_in;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_0_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_4_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_8_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_12_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_16_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_20_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_24_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_28_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_32_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_1_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_5_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_9_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_13_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_17_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_21_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_25_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_29_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_33_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_2_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_6_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_10_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_14_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_18_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_22_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_26_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_30_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_34_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_3_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_7_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_11_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_15_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_19_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_23_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_27_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_31_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_0_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_4_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_8_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_12_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_16_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_20_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_24_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_28_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_32_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_ovalid_1_0_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_ovch_0_0_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_ovch_4_0_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_oack_1_1_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_oack_3_1_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_ordy_0_1_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_ordy_2_1_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_ordy_4_1_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_olck_1_1_;
//----- INPUT PORTS -----
input [0:0] left_top_grid_bottom_width_0_height_0_subtile_0__pin_olck_3_1_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] left_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:32] chany_top_out;
//----- OUTPUT PORTS -----
output [0:32] chanx_right_out;
//----- OUTPUT PORTS -----
output [0:32] chanx_left_out;
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
wire [0:0] mux_2level_tapbuf_size10_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size10_mem_1_ccff_tail;
wire [0:7] mux_2level_tapbuf_size11_0_sram;
wire [0:7] mux_2level_tapbuf_size11_0_sram_inv;
wire [0:7] mux_2level_tapbuf_size11_1_sram;
wire [0:7] mux_2level_tapbuf_size11_1_sram_inv;
wire [0:7] mux_2level_tapbuf_size11_2_sram;
wire [0:7] mux_2level_tapbuf_size11_2_sram_inv;
wire [0:7] mux_2level_tapbuf_size11_3_sram;
wire [0:7] mux_2level_tapbuf_size11_3_sram_inv;
wire [0:7] mux_2level_tapbuf_size11_4_sram;
wire [0:7] mux_2level_tapbuf_size11_4_sram_inv;
wire [0:0] mux_2level_tapbuf_size11_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size11_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size11_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size11_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size11_mem_4_ccff_tail;
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
wire [0:7] mux_2level_tapbuf_size13_1_sram;
wire [0:7] mux_2level_tapbuf_size13_1_sram_inv;
wire [0:0] mux_2level_tapbuf_size13_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size13_mem_1_ccff_tail;
wire [0:7] mux_2level_tapbuf_size14_0_sram;
wire [0:7] mux_2level_tapbuf_size14_0_sram_inv;
wire [0:0] mux_2level_tapbuf_size14_mem_0_ccff_tail;
wire [0:7] mux_2level_tapbuf_size15_0_sram;
wire [0:7] mux_2level_tapbuf_size15_0_sram_inv;
wire [0:0] mux_2level_tapbuf_size15_mem_0_ccff_tail;
wire [0:9] mux_2level_tapbuf_size16_0_sram;
wire [0:9] mux_2level_tapbuf_size16_0_sram_inv;
wire [0:0] mux_2level_tapbuf_size16_mem_0_ccff_tail;
wire [0:9] mux_2level_tapbuf_size18_0_sram;
wire [0:9] mux_2level_tapbuf_size18_0_sram_inv;
wire [0:9] mux_2level_tapbuf_size19_0_sram;
wire [0:9] mux_2level_tapbuf_size19_0_sram_inv;
wire [0:9] mux_2level_tapbuf_size19_1_sram;
wire [0:9] mux_2level_tapbuf_size19_1_sram_inv;
wire [0:9] mux_2level_tapbuf_size19_2_sram;
wire [0:9] mux_2level_tapbuf_size19_2_sram_inv;
wire [0:0] mux_2level_tapbuf_size19_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size19_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size19_mem_2_ccff_tail;
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
wire [0:5] mux_2level_tapbuf_size5_5_sram;
wire [0:5] mux_2level_tapbuf_size5_5_sram_inv;
wire [0:0] mux_2level_tapbuf_size5_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size5_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size5_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size5_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size5_mem_4_ccff_tail;
wire [0:0] mux_2level_tapbuf_size5_mem_5_ccff_tail;
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
wire [0:5] mux_2level_tapbuf_size6_7_sram;
wire [0:5] mux_2level_tapbuf_size6_7_sram_inv;
wire [0:5] mux_2level_tapbuf_size6_8_sram;
wire [0:5] mux_2level_tapbuf_size6_8_sram_inv;
wire [0:0] mux_2level_tapbuf_size6_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_4_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_5_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_6_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_7_ccff_tail;
wire [0:0] mux_2level_tapbuf_size6_mem_8_ccff_tail;
wire [0:5] mux_2level_tapbuf_size7_0_sram;
wire [0:5] mux_2level_tapbuf_size7_0_sram_inv;
wire [0:5] mux_2level_tapbuf_size7_10_sram;
wire [0:5] mux_2level_tapbuf_size7_10_sram_inv;
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
wire [0:0] mux_2level_tapbuf_size8_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_1_ccff_tail;
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
// ----- Local connection due to Wire 86 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[1] = chanx_right_in[0];
// ----- Local connection due to Wire 87 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[2] = chanx_right_in[1];
// ----- Local connection due to Wire 88 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[3] = chanx_right_in[2];
// ----- Local connection due to Wire 90 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[5] = chanx_right_in[4];
// ----- Local connection due to Wire 91 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[6] = chanx_right_in[5];
// ----- Local connection due to Wire 92 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[7] = chanx_right_in[6];
// ----- Local connection due to Wire 94 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[9] = chanx_right_in[8];
// ----- Local connection due to Wire 95 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[10] = chanx_right_in[9];
// ----- Local connection due to Wire 96 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[11] = chanx_right_in[10];
// ----- Local connection due to Wire 98 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[13] = chanx_right_in[12];
// ----- Local connection due to Wire 99 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[14] = chanx_right_in[13];
// ----- Local connection due to Wire 100 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[15] = chanx_right_in[14];
// ----- Local connection due to Wire 102 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[17] = chanx_right_in[16];
// ----- Local connection due to Wire 103 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[18] = chanx_right_in[17];
// ----- Local connection due to Wire 104 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[19] = chanx_right_in[18];
// ----- Local connection due to Wire 106 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[21] = chanx_right_in[20];
// ----- Local connection due to Wire 107 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[22] = chanx_right_in[21];
// ----- Local connection due to Wire 108 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[23] = chanx_right_in[22];
// ----- Local connection due to Wire 110 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[25] = chanx_right_in[24];
// ----- Local connection due to Wire 111 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[26] = chanx_right_in[25];
// ----- Local connection due to Wire 112 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[27] = chanx_right_in[26];
// ----- Local connection due to Wire 114 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[29] = chanx_right_in[28];
// ----- Local connection due to Wire 115 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[30] = chanx_right_in[29];
// ----- Local connection due to Wire 116 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_left_out[31] = chanx_right_in[30];
// ----- Local connection due to Wire 127 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[1] = chanx_left_in[0];
// ----- Local connection due to Wire 128 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[2] = chanx_left_in[1];
// ----- Local connection due to Wire 129 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[3] = chanx_left_in[2];
// ----- Local connection due to Wire 131 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[5] = chanx_left_in[4];
// ----- Local connection due to Wire 132 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[6] = chanx_left_in[5];
// ----- Local connection due to Wire 133 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[7] = chanx_left_in[6];
// ----- Local connection due to Wire 135 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[9] = chanx_left_in[8];
// ----- Local connection due to Wire 136 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[10] = chanx_left_in[9];
// ----- Local connection due to Wire 137 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[11] = chanx_left_in[10];
// ----- Local connection due to Wire 139 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[13] = chanx_left_in[12];
// ----- Local connection due to Wire 140 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[14] = chanx_left_in[13];
// ----- Local connection due to Wire 141 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[15] = chanx_left_in[14];
// ----- Local connection due to Wire 143 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[17] = chanx_left_in[16];
// ----- Local connection due to Wire 144 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[18] = chanx_left_in[17];
// ----- Local connection due to Wire 145 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[19] = chanx_left_in[18];
// ----- Local connection due to Wire 147 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[21] = chanx_left_in[20];
// ----- Local connection due to Wire 148 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[22] = chanx_left_in[21];
// ----- Local connection due to Wire 149 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[23] = chanx_left_in[22];
// ----- Local connection due to Wire 151 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[25] = chanx_left_in[24];
// ----- Local connection due to Wire 152 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[26] = chanx_left_in[25];
// ----- Local connection due to Wire 153 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[27] = chanx_left_in[26];
// ----- Local connection due to Wire 155 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[29] = chanx_left_in[28];
// ----- Local connection due to Wire 156 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[30] = chanx_left_in[29];
// ----- Local connection due to Wire 157 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[31] = chanx_left_in[30];
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	mux_2level_tapbuf_size12 mux_top_track_0 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_3_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_7_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_4_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_12_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_1_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_21_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_30_, top_left_grid_right_width_0_height_0_subtile_0__pin_ordy_4_0_, chanx_right_in[1], chanx_right_in[7], chanx_left_in[0], chanx_left_in[3]}),
		.sram(mux_2level_tapbuf_size12_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_0_sram_inv[0:7]),
		.out(chany_top_out[0]));

	mux_2level_tapbuf_size12 mux_top_track_2 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_7_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_8_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_16_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_5_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_25_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_2_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_34_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_3_, top_left_grid_right_width_0_height_0_subtile_0__pin_ovalid_0_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_olck_1_0_, chanx_right_in[2], chanx_right_in[11]}),
		.sram(mux_2level_tapbuf_size12_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_1_sram_inv[0:7]),
		.out(chany_top_out[1]));

	mux_2level_tapbuf_size12 mux_top_track_52 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_19_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_8_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_28_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_5_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_2_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_6_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_3_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_11_, top_left_grid_right_width_0_height_0_subtile_0__pin_ovalid_0_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_olck_1_0_, chanx_left_in[9], chanx_left_in[31]}),
		.sram(mux_2level_tapbuf_size12_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_2_sram_inv[0:7]),
		.out(chany_top_out[26]));

	mux_2level_tapbuf_size12 mux_left_track_17 (
		.in({chany_top_in[7], chany_top_in[16], chany_top_in[25], left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_8_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_9_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_10_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_11_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_12_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_oack_1_1_, left_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_, left_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_, left_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size12_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_3_sram_inv[0:7]),
		.out(chanx_left_out[8]));

	mux_2level_tapbuf_size12_mem mem_top_track_0 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(mux_2level_tapbuf_size12_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_0_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_track_2 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_1_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_track_52 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_2_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_track_17 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size15_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_3_sram_inv[0:7]));

	mux_2level_tapbuf_size11 mux_top_track_4 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_11_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_20_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_9_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_29_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_6_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_3_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_7_, top_left_grid_right_width_0_height_0_subtile_0__pin_ovalid_4_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_olck_3_0_, chanx_right_in[4], chanx_right_in[15]}),
		.sram(mux_2level_tapbuf_size11_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_0_sram_inv[0:7]),
		.out(chany_top_out[2]));

	mux_2level_tapbuf_size11 mux_top_track_18 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_7_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_4_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_8_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_5_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_13_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_2_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_22_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_31_, top_left_grid_right_width_0_height_0_subtile_0__pin_ovalid_0_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_olck_1_0_, chanx_right_in[13]}),
		.sram(mux_2level_tapbuf_size11_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_1_sram_inv[0:7]),
		.out(chany_top_out[9]));

	mux_2level_tapbuf_size11 mux_top_track_20 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_8_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_9_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_17_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_6_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_26_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_3_, top_left_grid_right_width_0_height_0_subtile_0__pin_ovalid_0_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_ovalid_4_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_olck_3_0_, chanx_right_in[14], chanx_left_in[30]}),
		.sram(mux_2level_tapbuf_size11_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_2_sram_inv[0:7]),
		.out(chany_top_out[10]));

	mux_2level_tapbuf_size11 mux_top_track_34 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_7_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_27_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_4_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_1_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_5_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_2_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_19_, top_left_grid_right_width_0_height_0_subtile_0__pin_ordy_4_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_olck_1_0_, chanx_right_in[24], chanx_left_in[21]}),
		.sram(mux_2level_tapbuf_size11_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_3_sram_inv[0:7]),
		.out(chany_top_out[17]));

	mux_2level_tapbuf_size11 mux_top_track_54 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_23_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_32_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_9_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_6_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_10_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_7_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_15_, top_left_grid_right_width_0_height_0_subtile_0__pin_ovalid_4_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_olck_3_0_, chanx_left_in[8], chanx_left_in[27]}),
		.sram(mux_2level_tapbuf_size11_4_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size11_4_sram_inv[0:7]),
		.out(chany_top_out[27]));

	mux_2level_tapbuf_size11_mem mem_top_track_4 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size11_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_0_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_top_track_18 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size11_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_1_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_top_track_20 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size11_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size11_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_2_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_top_track_34 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size11_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_3_sram_inv[0:7]));

	mux_2level_tapbuf_size11_mem mem_top_track_54 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size11_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size11_4_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size11_4_sram_inv[0:7]));

	mux_2level_tapbuf_size8 mux_top_track_6 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_15_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_24_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_33_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_10_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_7_, top_left_grid_right_width_0_height_0_subtile_0__pin_ovch_3_0_, chanx_right_in[5], chanx_right_in[19]}),
		.sram(mux_2level_tapbuf_size8_0_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_0_sram_inv[0:5]),
		.out(chany_top_out[3]));

	mux_2level_tapbuf_size8 mux_top_track_16 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_3_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_4_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_1_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_18_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_27_, top_left_grid_right_width_0_height_0_subtile_0__pin_ordy_4_0_, chanx_right_in[12]}),
		.sram(mux_2level_tapbuf_size8_1_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_1_sram_inv[0:5]),
		.out(chany_top_out[8]));

	mux_2level_tapbuf_size8_mem mem_top_track_6 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size11_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_0_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_0_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_top_track_16 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_1_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_1_sram_inv[0:5]));

	mux_2level_tapbuf_size6 mux_top_track_8 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_19_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_28_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_11_, top_left_grid_right_width_0_height_0_subtile_0__pin_oack_1_0_, chanx_right_in[6], chanx_right_in[23]}),
		.sram(mux_2level_tapbuf_size6_0_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_0_sram_inv[0:5]),
		.out(chany_top_out[4]));

	mux_2level_tapbuf_size6 mux_top_track_10 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_23_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_32_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_15_, top_left_grid_right_width_0_height_0_subtile_0__pin_oack_3_0_, chanx_right_in[8], chanx_right_in[27]}),
		.sram(mux_2level_tapbuf_size6_1_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_1_sram_inv[0:5]),
		.out(chany_top_out[5]));

	mux_2level_tapbuf_size6 mux_top_track_40 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_13_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_22_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_31_, top_left_grid_right_width_0_height_0_subtile_0__pin_ovch_3_0_, chanx_right_in[28], chanx_left_in[17]}),
		.sram(mux_2level_tapbuf_size6_2_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_2_sram_inv[0:5]),
		.out(chany_top_out[20]));

	mux_2level_tapbuf_size6 mux_top_track_44 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_12_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_21_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_30_, top_left_grid_right_width_0_height_0_subtile_0__pin_oack_3_0_, chanx_right_in[30], chanx_left_in[14]}),
		.sram(mux_2level_tapbuf_size6_3_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_3_sram_inv[0:5]),
		.out(chany_top_out[22]));

	mux_2level_tapbuf_size6 mux_top_track_56 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_27_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_10_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_19_, top_left_grid_right_width_0_height_0_subtile_0__pin_ovch_3_0_, chanx_left_in[6], chanx_left_in[23]}),
		.sram(mux_2level_tapbuf_size6_4_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_4_sram_inv[0:5]),
		.out(chany_top_out[28]));

	mux_2level_tapbuf_size6 mux_top_track_58 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_31_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_14_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_23_, top_left_grid_right_width_0_height_0_subtile_0__pin_oack_1_0_, chanx_left_in[5], chanx_left_in[19]}),
		.sram(mux_2level_tapbuf_size6_5_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_5_sram_inv[0:5]),
		.out(chany_top_out[29]));

	mux_2level_tapbuf_size6 mux_top_track_62 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_13_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_22_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_31_, top_left_grid_right_width_0_height_0_subtile_0__pin_ordy_0_0_, chanx_left_in[2], chanx_left_in[11]}),
		.sram(mux_2level_tapbuf_size6_6_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_6_sram_inv[0:5]),
		.out(chany_top_out[31]));

	mux_2level_tapbuf_size6 mux_right_track_0 (
		.in({chany_top_in[8], chany_top_in[17], chany_top_in[26], right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size6_7_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_7_sram_inv[0:5]),
		.out(chanx_right_out[0]));

	mux_2level_tapbuf_size6 mux_right_track_24 (
		.in({chany_top_in[2], chany_top_in[11], chany_top_in[20], chany_top_in[29], right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size6_8_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size6_8_sram_inv[0:5]),
		.out(chanx_right_out[12]));

	mux_2level_tapbuf_size6_mem mem_top_track_8 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_0_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_0_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_top_track_10 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_1_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_1_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_top_track_40 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size9_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_2_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_2_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_top_track_44 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size5_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_3_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_3_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_top_track_56 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size11_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_4_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_4_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_top_track_58 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_5_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_5_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_top_track_62 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size5_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_6_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_6_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_right_track_0 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size9_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_7_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_7_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_7_sram_inv[0:5]));

	mux_2level_tapbuf_size6_mem mem_right_track_24 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_7_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size6_mem_8_ccff_tail),
		.mem_out(mux_2level_tapbuf_size6_8_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size6_8_sram_inv[0:5]));

	mux_2level_tapbuf_size5 mux_top_track_12 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_27_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_19_, top_left_grid_right_width_0_height_0_subtile_0__pin_ordy_0_0_, chanx_right_in[9], chanx_right_in[31]}),
		.sram(mux_2level_tapbuf_size5_0_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size5_0_sram_inv[0:5]),
		.out(chany_top_out[6]));

	mux_2level_tapbuf_size5 mux_top_track_42 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_17_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_26_, top_left_grid_right_width_0_height_0_subtile_0__pin_oack_1_0_, chanx_right_in[29], chanx_left_in[16]}),
		.sram(mux_2level_tapbuf_size5_1_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size5_1_sram_inv[0:5]),
		.out(chany_top_out[21]));

	mux_2level_tapbuf_size5 mux_top_track_46 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_16_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_25_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_34_, top_left_grid_right_width_0_height_0_subtile_0__pin_ordy_0_0_, chanx_left_in[13]}),
		.sram(mux_2level_tapbuf_size5_2_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size5_2_sram_inv[0:5]),
		.out(chany_top_out[23]));

	mux_2level_tapbuf_size5 mux_top_track_60 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_18_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_27_, top_left_grid_right_width_0_height_0_subtile_0__pin_oack_3_0_, chanx_left_in[4], chanx_left_in[15]}),
		.sram(mux_2level_tapbuf_size5_3_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size5_3_sram_inv[0:5]),
		.out(chany_top_out[30]));

	mux_2level_tapbuf_size5 mux_right_track_56 (
		.in({chany_top_in[6], chany_top_in[15], chany_top_in[24], right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size5_4_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size5_4_sram_inv[0:5]),
		.out(chanx_right_out[28]));

	mux_2level_tapbuf_size5 mux_right_track_64 (
		.in({chany_top_in[7], chany_top_in[16], chany_top_in[25], right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size5_5_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size5_5_sram_inv[0:5]),
		.out(chanx_right_out[32]));

	mux_2level_tapbuf_size5_mem mem_top_track_12 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size5_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size5_0_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size5_0_sram_inv[0:5]));

	mux_2level_tapbuf_size5_mem mem_top_track_42 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size5_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size5_1_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size5_1_sram_inv[0:5]));

	mux_2level_tapbuf_size5_mem mem_top_track_46 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size5_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size5_2_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size5_2_sram_inv[0:5]));

	mux_2level_tapbuf_size5_mem mem_top_track_60 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size5_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size5_3_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size5_3_sram_inv[0:5]));

	mux_2level_tapbuf_size5_mem mem_right_track_56 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_10_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size5_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size5_4_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size5_4_sram_inv[0:5]));

	mux_2level_tapbuf_size5_mem mem_right_track_64 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size5_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size5_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size5_5_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size5_5_sram_inv[0:5]));

	mux_2level_tapbuf_size7 mux_top_track_14 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_31_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_14_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_23_, top_left_grid_right_width_0_height_0_subtile_0__pin_ordy_2_0_, chanx_right_in[10], chanx_right_in[32]}),
		.sram(mux_2level_tapbuf_size7_0_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_0_sram_inv[0:5]),
		.out(chany_top_out[7]));

	mux_2level_tapbuf_size7 mux_top_track_24 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_16_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_25_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_34_, top_left_grid_right_width_0_height_0_subtile_0__pin_ovch_3_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_oack_1_0_, chanx_right_in[17], chanx_left_in[28]}),
		.sram(mux_2level_tapbuf_size7_1_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_1_sram_inv[0:5]),
		.out(chany_top_out[12]));

	mux_2level_tapbuf_size7 mux_top_track_26 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_11_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_20_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_29_, top_left_grid_right_width_0_height_0_subtile_0__pin_oack_1_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_oack_3_0_, chanx_right_in[18], chanx_left_in[26]}),
		.sram(mux_2level_tapbuf_size7_2_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_2_sram_inv[0:5]),
		.out(chany_top_out[13]));

	mux_2level_tapbuf_size7 mux_top_track_28 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_15_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_24_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_33_, top_left_grid_right_width_0_height_0_subtile_0__pin_oack_3_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_ordy_0_0_, chanx_right_in[20], chanx_left_in[25]}),
		.sram(mux_2level_tapbuf_size7_3_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_3_sram_inv[0:5]),
		.out(chany_top_out[14]));

	mux_2level_tapbuf_size7 mux_top_track_30 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_19_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_28_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_11_, top_left_grid_right_width_0_height_0_subtile_0__pin_ordy_0_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_ordy_2_0_, chanx_right_in[21], chanx_left_in[24]}),
		.sram(mux_2level_tapbuf_size7_4_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_4_sram_inv[0:5]),
		.out(chany_top_out[15]));

	mux_2level_tapbuf_size7 mux_top_track_48 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_3_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_11_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_20_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_29_, top_left_grid_right_width_0_height_0_subtile_0__pin_ordy_2_0_, chanx_left_in[12]}),
		.sram(mux_2level_tapbuf_size7_5_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_5_sram_inv[0:5]),
		.out(chany_top_out[24]));

	mux_2level_tapbuf_size7 mux_right_track_8 (
		.in({chany_top_in[0], chany_top_in[9], chany_top_in[18], chany_top_in[27], right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size7_6_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_6_sram_inv[0:5]),
		.out(chanx_right_out[4]));

	mux_2level_tapbuf_size7 mux_right_track_16 (
		.in({chany_top_in[1], chany_top_in[10], chany_top_in[19], chany_top_in[28], right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size7_7_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_7_sram_inv[0:5]),
		.out(chanx_right_out[8]));

	mux_2level_tapbuf_size7 mux_right_track_32 (
		.in({chany_top_in[3], chany_top_in[12], chany_top_in[21], chany_top_in[30], right_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size7_8_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_8_sram_inv[0:5]),
		.out(chanx_right_out[16]));

	mux_2level_tapbuf_size7 mux_right_track_40 (
		.in({chany_top_in[4], chany_top_in[13], chany_top_in[22], chany_top_in[31], right_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size7_9_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_9_sram_inv[0:5]),
		.out(chanx_right_out[20]));

	mux_2level_tapbuf_size7 mux_right_track_48 (
		.in({chany_top_in[5], chany_top_in[14], chany_top_in[23], chany_top_in[32], right_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_, right_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size7_10_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_10_sram_inv[0:5]),
		.out(chanx_right_out[24]));

	mux_2level_tapbuf_size7_mem mem_top_track_14 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size5_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_0_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_0_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_top_track_24 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size9_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_1_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_1_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_top_track_26 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_2_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_2_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_top_track_28 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_3_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_3_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_top_track_30 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_4_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_4_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_top_track_48 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size5_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_5_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_5_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_right_track_8 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_7_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_6_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_6_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_right_track_16 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_7_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_7_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_7_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_right_track_32 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_8_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_8_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_8_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_8_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_right_track_40 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_8_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_9_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_9_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_9_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_right_track_48 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_9_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_10_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_10_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_10_sram_inv[0:5]));

	mux_2level_tapbuf_size9 mux_top_track_22 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_12_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_21_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_10_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_30_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_7_, top_left_grid_right_width_0_height_0_subtile_0__pin_ovalid_4_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_ovch_3_0_, chanx_right_in[16], chanx_left_in[29]}),
		.sram(mux_2level_tapbuf_size9_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size9_0_sram_inv[0:7]),
		.out(chany_top_out[11]));

	mux_2level_tapbuf_size9 mux_top_track_38 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_9_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_10_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_18_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_7_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_27_, top_left_grid_right_width_0_height_0_subtile_0__pin_ovalid_4_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_olck_3_0_, chanx_right_in[26], chanx_left_in[18]}),
		.sram(mux_2level_tapbuf_size9_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size9_1_sram_inv[0:7]),
		.out(chany_top_out[19]));

	mux_2level_tapbuf_size9 mux_top_track_64 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_3_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_17_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_26_, top_left_grid_right_width_0_height_0_subtile_0__pin_ordy_2_0_, chanx_right_in[0], chanx_right_in[3], chanx_left_in[1], chanx_left_in[7]}),
		.sram(mux_2level_tapbuf_size9_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size9_2_sram_inv[0:7]),
		.out(chany_top_out[32]));

	mux_2level_tapbuf_size9_mem mem_top_track_22 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size11_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size9_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size9_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size9_0_sram_inv[0:7]));

	mux_2level_tapbuf_size9_mem mem_top_track_38 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size9_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size9_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size9_1_sram_inv[0:7]));

	mux_2level_tapbuf_size9_mem mem_top_track_64 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size6_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size9_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size9_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size9_2_sram_inv[0:7]));

	mux_2level_tapbuf_size10 mux_top_track_32 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_3_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_23_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_32_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_1_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_15_, top_left_grid_right_width_0_height_0_subtile_0__pin_ordy_2_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_ordy_4_0_, chanx_right_in[22], chanx_left_in[22]}),
		.sram(mux_2level_tapbuf_size10_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_0_sram_inv[0:7]),
		.out(chany_top_out[16]));

	mux_2level_tapbuf_size10 mux_top_track_50 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_7_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_15_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_4_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_24_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_1_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_33_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_2_, top_left_grid_right_width_0_height_0_subtile_0__pin_ordy_4_0_, chanx_left_in[10], chanx_left_in[32]}),
		.sram(mux_2level_tapbuf_size10_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_1_sram_inv[0:7]),
		.out(chany_top_out[25]));

	mux_2level_tapbuf_size10_mem mem_top_track_32 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_0_sram_inv[0:7]));

	mux_2level_tapbuf_size10_mem mem_top_track_50 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_1_sram_inv[0:7]));

	mux_2level_tapbuf_size13 mux_top_track_36 (
		.in({top_left_grid_right_width_0_height_0_subtile_0__pin_odata_0_31_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_1_8_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_5_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_2_9_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_6_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_3_14_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_3_, top_left_grid_right_width_0_height_0_subtile_0__pin_odata_4_23_, top_left_grid_right_width_0_height_0_subtile_0__pin_ovalid_0_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_olck_1_0_, top_left_grid_right_width_0_height_0_subtile_0__pin_olck_3_0_, chanx_right_in[25], chanx_left_in[20]}),
		.sram(mux_2level_tapbuf_size13_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_0_sram_inv[0:7]),
		.out(chany_top_out[18]));

	mux_2level_tapbuf_size13 mux_left_track_25 (
		.in({chany_top_in[6], chany_top_in[15], chany_top_in[24], left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_12_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_13_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_14_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_15_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_0_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_16_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_ovalid_1_0_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_oack_3_1_, left_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_, left_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size13_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size13_1_sram_inv[0:7]),
		.out(chanx_left_out[12]));

	mux_2level_tapbuf_size13_mem mem_top_track_36 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size11_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_0_sram_inv[0:7]));

	mux_2level_tapbuf_size13_mem mem_left_track_25 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size13_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size13_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size13_1_sram_inv[0:7]));

	mux_2level_tapbuf_size19 mux_left_track_1 (
		.in({chany_top_in[0], chany_top_in[9], chany_top_in[18], chany_top_in[27], left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_0_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_4_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_1_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_5_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_2_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_6_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_3_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_7_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_4_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_8_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_ovch_0_0_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_ovch_4_0_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_, left_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_, left_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size19_0_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size19_0_sram_inv[0:9]),
		.out(chanx_left_out[0]));

	mux_2level_tapbuf_size19 mux_left_track_33 (
		.in({chany_top_in[5], chany_top_in[14], chany_top_in[23], chany_top_in[32], left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_0_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_16_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_1_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_17_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_2_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_18_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_3_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_19_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_4_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_20_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_ovch_0_0_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_ordy_0_1_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_, left_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_, left_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size19_1_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size19_1_sram_inv[0:9]),
		.out(chanx_left_out[16]));

	mux_2level_tapbuf_size19 mux_left_track_41 (
		.in({chany_top_in[4], chany_top_in[13], chany_top_in[22], chany_top_in[31], left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_4_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_20_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_5_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_21_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_6_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_22_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_7_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_23_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_8_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_24_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_ovch_4_0_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_ordy_2_1_, left_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_, left_bottom_grid_top_width_0_height_0_subtile_5__pin_inpad_0_, left_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size19_2_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size19_2_sram_inv[0:9]),
		.out(chanx_left_out[20]));

	mux_2level_tapbuf_size19_mem mem_left_track_1 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size5_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size19_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size19_0_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size19_0_sram_inv[0:9]));

	mux_2level_tapbuf_size19_mem mem_left_track_33 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size13_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size19_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size19_1_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size19_1_sram_inv[0:9]));

	mux_2level_tapbuf_size19_mem mem_left_track_41 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size19_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size19_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size19_2_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size19_2_sram_inv[0:9]));

	mux_2level_tapbuf_size15 mux_left_track_9 (
		.in({chany_top_in[8], chany_top_in[17], chany_top_in[26], left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_4_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_8_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_5_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_9_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_6_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_10_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_7_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_8_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_ovch_4_0_, left_bottom_grid_top_width_0_height_0_subtile_1__pin_inpad_0_, left_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_, left_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size15_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size15_0_sram_inv[0:7]),
		.out(chanx_left_out[4]));

	mux_2level_tapbuf_size15_mem mem_left_track_9 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size19_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size15_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size15_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size15_0_sram_inv[0:7]));

	mux_2level_tapbuf_size16 mux_left_track_49 (
		.in({chany_top_in[3], chany_top_in[12], chany_top_in[21], chany_top_in[30], left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_8_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_24_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_9_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_25_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_10_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_26_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_27_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_28_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_ordy_4_1_, left_bottom_grid_top_width_0_height_0_subtile_2__pin_inpad_0_, left_bottom_grid_top_width_0_height_0_subtile_6__pin_inpad_0_, left_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size16_0_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size16_0_sram_inv[0:9]),
		.out(chanx_left_out[24]));

	mux_2level_tapbuf_size16_mem mem_left_track_49 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size19_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size16_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size16_0_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size16_0_sram_inv[0:9]));

	mux_2level_tapbuf_size14 mux_left_track_57 (
		.in({chany_top_in[2], chany_top_in[11], chany_top_in[20], chany_top_in[29], left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_28_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_29_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_30_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_31_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_0_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_32_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_ovalid_1_0_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_olck_1_1_, left_bottom_grid_top_width_0_height_0_subtile_3__pin_inpad_0_, left_bottom_grid_top_width_0_height_0_subtile_7__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size14_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_0_sram_inv[0:7]),
		.out(chanx_left_out[28]));

	mux_2level_tapbuf_size14_mem mem_left_track_57 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size16_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_0_sram_inv[0:7]));

	mux_2level_tapbuf_size18 mux_left_track_65 (
		.in({chany_top_in[1], chany_top_in[10], chany_top_in[19], chany_top_in[28], left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_0_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_0_32_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_1_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_1_33_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_2_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_2_34_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_3_3_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_0_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_odata_4_4_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_ovalid_1_0_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_ovch_0_0_, left_top_grid_bottom_width_0_height_0_subtile_0__pin_olck_3_1_, left_bottom_grid_top_width_0_height_0_subtile_0__pin_inpad_0_, left_bottom_grid_top_width_0_height_0_subtile_4__pin_inpad_0_}),
		.sram(mux_2level_tapbuf_size18_0_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size18_0_sram_inv[0:9]),
		.out(chanx_left_out[32]));

	mux_2level_tapbuf_size18_mem mem_left_track_65 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_0_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_2level_tapbuf_size18_0_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size18_0_sram_inv[0:9]));

endmodule
// ----- END Verilog module for sb_1__0_ -----

//----- Default net type -----
`default_nettype wire



