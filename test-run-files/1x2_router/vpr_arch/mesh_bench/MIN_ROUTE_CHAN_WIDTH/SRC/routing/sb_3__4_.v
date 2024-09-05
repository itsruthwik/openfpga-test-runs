//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for Unique Switch Blocks[3][4]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Tue Aug 20 23:36:48 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for sb_3__4_ -----
module sb_3__4_(pReset,
                prog_clk,
                chany_top_in,
                chanx_right_in,
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
                ccff_head,
                chany_top_out,
                chanx_right_out,
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
input [0:41] chanx_right_in;
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
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:41] chany_top_out;
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


wire [0:9] mux_2level_tapbuf_size20_0_sram;
wire [0:9] mux_2level_tapbuf_size20_0_sram_inv;
wire [0:0] mux_2level_tapbuf_size20_mem_0_ccff_tail;
wire [0:9] mux_2level_tapbuf_size21_0_sram;
wire [0:9] mux_2level_tapbuf_size21_0_sram_inv;
wire [0:9] mux_2level_tapbuf_size21_1_sram;
wire [0:9] mux_2level_tapbuf_size21_1_sram_inv;
wire [0:9] mux_2level_tapbuf_size21_2_sram;
wire [0:9] mux_2level_tapbuf_size21_2_sram_inv;
wire [0:0] mux_2level_tapbuf_size21_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size21_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size21_mem_2_ccff_tail;
wire [0:9] mux_2level_tapbuf_size22_0_sram;
wire [0:9] mux_2level_tapbuf_size22_0_sram_inv;
wire [0:9] mux_2level_tapbuf_size22_1_sram;
wire [0:9] mux_2level_tapbuf_size22_1_sram_inv;
wire [0:9] mux_2level_tapbuf_size22_2_sram;
wire [0:9] mux_2level_tapbuf_size22_2_sram_inv;
wire [0:9] mux_2level_tapbuf_size22_3_sram;
wire [0:9] mux_2level_tapbuf_size22_3_sram_inv;
wire [0:9] mux_2level_tapbuf_size22_4_sram;
wire [0:9] mux_2level_tapbuf_size22_4_sram_inv;
wire [0:0] mux_2level_tapbuf_size22_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size22_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size22_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size22_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size22_mem_4_ccff_tail;
wire [0:9] mux_2level_tapbuf_size23_0_sram;
wire [0:9] mux_2level_tapbuf_size23_0_sram_inv;
wire [0:9] mux_2level_tapbuf_size23_10_sram;
wire [0:9] mux_2level_tapbuf_size23_10_sram_inv;
wire [0:9] mux_2level_tapbuf_size23_11_sram;
wire [0:9] mux_2level_tapbuf_size23_11_sram_inv;
wire [0:9] mux_2level_tapbuf_size23_12_sram;
wire [0:9] mux_2level_tapbuf_size23_12_sram_inv;
wire [0:9] mux_2level_tapbuf_size23_1_sram;
wire [0:9] mux_2level_tapbuf_size23_1_sram_inv;
wire [0:9] mux_2level_tapbuf_size23_2_sram;
wire [0:9] mux_2level_tapbuf_size23_2_sram_inv;
wire [0:9] mux_2level_tapbuf_size23_3_sram;
wire [0:9] mux_2level_tapbuf_size23_3_sram_inv;
wire [0:9] mux_2level_tapbuf_size23_4_sram;
wire [0:9] mux_2level_tapbuf_size23_4_sram_inv;
wire [0:9] mux_2level_tapbuf_size23_5_sram;
wire [0:9] mux_2level_tapbuf_size23_5_sram_inv;
wire [0:9] mux_2level_tapbuf_size23_6_sram;
wire [0:9] mux_2level_tapbuf_size23_6_sram_inv;
wire [0:9] mux_2level_tapbuf_size23_7_sram;
wire [0:9] mux_2level_tapbuf_size23_7_sram_inv;
wire [0:9] mux_2level_tapbuf_size23_8_sram;
wire [0:9] mux_2level_tapbuf_size23_8_sram_inv;
wire [0:9] mux_2level_tapbuf_size23_9_sram;
wire [0:9] mux_2level_tapbuf_size23_9_sram_inv;
wire [0:0] mux_2level_tapbuf_size23_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size23_mem_10_ccff_tail;
wire [0:0] mux_2level_tapbuf_size23_mem_11_ccff_tail;
wire [0:0] mux_2level_tapbuf_size23_mem_12_ccff_tail;
wire [0:0] mux_2level_tapbuf_size23_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size23_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size23_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size23_mem_4_ccff_tail;
wire [0:0] mux_2level_tapbuf_size23_mem_5_ccff_tail;
wire [0:0] mux_2level_tapbuf_size23_mem_6_ccff_tail;
wire [0:0] mux_2level_tapbuf_size23_mem_7_ccff_tail;
wire [0:0] mux_2level_tapbuf_size23_mem_8_ccff_tail;
wire [0:0] mux_2level_tapbuf_size23_mem_9_ccff_tail;
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
wire [0:0] mux_2level_tapbuf_size7_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_4_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_5_ccff_tail;
wire [0:0] mux_2level_tapbuf_size7_mem_6_ccff_tail;
wire [0:5] mux_2level_tapbuf_size8_0_sram;
wire [0:5] mux_2level_tapbuf_size8_0_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_10_sram;
wire [0:5] mux_2level_tapbuf_size8_10_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_11_sram;
wire [0:5] mux_2level_tapbuf_size8_11_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_12_sram;
wire [0:5] mux_2level_tapbuf_size8_12_sram_inv;
wire [0:5] mux_2level_tapbuf_size8_13_sram;
wire [0:5] mux_2level_tapbuf_size8_13_sram_inv;
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
wire [0:0] mux_2level_tapbuf_size8_mem_11_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_12_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_13_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_4_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_5_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_6_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_7_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_8_ccff_tail;
wire [0:0] mux_2level_tapbuf_size8_mem_9_ccff_tail;

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
// ----- Local connection due to Wire 32 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[33] = chany_top_in[32];
// ----- Local connection due to Wire 33 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[34] = chany_top_in[33];
// ----- Local connection due to Wire 34 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[35] = chany_top_in[34];
// ----- Local connection due to Wire 36 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[37] = chany_top_in[36];
// ----- Local connection due to Wire 37 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[38] = chany_top_in[37];
// ----- Local connection due to Wire 38 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[39] = chany_top_in[38];
// ----- Local connection due to Wire 40 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chany_bottom_out[41] = chany_top_in[40];
// ----- Local connection due to Wire 42 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[1] = chanx_right_in[0];
// ----- Local connection due to Wire 43 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[2] = chanx_right_in[1];
// ----- Local connection due to Wire 44 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[3] = chanx_right_in[2];
// ----- Local connection due to Wire 46 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[5] = chanx_right_in[4];
// ----- Local connection due to Wire 47 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[6] = chanx_right_in[5];
// ----- Local connection due to Wire 48 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[7] = chanx_right_in[6];
// ----- Local connection due to Wire 50 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[9] = chanx_right_in[8];
// ----- Local connection due to Wire 51 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[10] = chanx_right_in[9];
// ----- Local connection due to Wire 52 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[11] = chanx_right_in[10];
// ----- Local connection due to Wire 54 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[13] = chanx_right_in[12];
// ----- Local connection due to Wire 55 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[14] = chanx_right_in[13];
// ----- Local connection due to Wire 56 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[15] = chanx_right_in[14];
// ----- Local connection due to Wire 58 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[17] = chanx_right_in[16];
// ----- Local connection due to Wire 59 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[18] = chanx_right_in[17];
// ----- Local connection due to Wire 60 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[19] = chanx_right_in[18];
// ----- Local connection due to Wire 62 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[21] = chanx_right_in[20];
// ----- Local connection due to Wire 63 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[22] = chanx_right_in[21];
// ----- Local connection due to Wire 64 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[23] = chanx_right_in[22];
// ----- Local connection due to Wire 66 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[25] = chanx_right_in[24];
// ----- Local connection due to Wire 67 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[26] = chanx_right_in[25];
// ----- Local connection due to Wire 68 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[27] = chanx_right_in[26];
// ----- Local connection due to Wire 70 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[29] = chanx_right_in[28];
// ----- Local connection due to Wire 71 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[30] = chanx_right_in[29];
// ----- Local connection due to Wire 72 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[31] = chanx_right_in[30];
// ----- Local connection due to Wire 74 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[33] = chanx_right_in[32];
// ----- Local connection due to Wire 75 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[34] = chanx_right_in[33];
// ----- Local connection due to Wire 76 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[35] = chanx_right_in[34];
// ----- Local connection due to Wire 78 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[37] = chanx_right_in[36];
// ----- Local connection due to Wire 79 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[38] = chanx_right_in[37];
// ----- Local connection due to Wire 80 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[39] = chanx_right_in[38];
// ----- Local connection due to Wire 82 -----
// ----- Net source id 0 -----
// ----- Net sink id 2 -----
	assign chanx_left_out[41] = chanx_right_in[40];
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
// ----- Local connection due to Wire 170 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[33] = chany_bottom_in[32];
// ----- Local connection due to Wire 171 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[34] = chany_bottom_in[33];
// ----- Local connection due to Wire 172 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[35] = chany_bottom_in[34];
// ----- Local connection due to Wire 174 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[37] = chany_bottom_in[36];
// ----- Local connection due to Wire 175 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[38] = chany_bottom_in[37];
// ----- Local connection due to Wire 176 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[39] = chany_bottom_in[38];
// ----- Local connection due to Wire 178 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[41] = chany_bottom_in[40];
// ----- Local connection due to Wire 234 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[1] = chanx_left_in[0];
// ----- Local connection due to Wire 235 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[2] = chanx_left_in[1];
// ----- Local connection due to Wire 236 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[3] = chanx_left_in[2];
// ----- Local connection due to Wire 238 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[5] = chanx_left_in[4];
// ----- Local connection due to Wire 239 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[6] = chanx_left_in[5];
// ----- Local connection due to Wire 240 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[7] = chanx_left_in[6];
// ----- Local connection due to Wire 242 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[9] = chanx_left_in[8];
// ----- Local connection due to Wire 243 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[10] = chanx_left_in[9];
// ----- Local connection due to Wire 244 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[11] = chanx_left_in[10];
// ----- Local connection due to Wire 246 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[13] = chanx_left_in[12];
// ----- Local connection due to Wire 247 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[14] = chanx_left_in[13];
// ----- Local connection due to Wire 248 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[15] = chanx_left_in[14];
// ----- Local connection due to Wire 250 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[17] = chanx_left_in[16];
// ----- Local connection due to Wire 251 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[18] = chanx_left_in[17];
// ----- Local connection due to Wire 252 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[19] = chanx_left_in[18];
// ----- Local connection due to Wire 254 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[21] = chanx_left_in[20];
// ----- Local connection due to Wire 255 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[22] = chanx_left_in[21];
// ----- Local connection due to Wire 256 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[23] = chanx_left_in[22];
// ----- Local connection due to Wire 258 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[25] = chanx_left_in[24];
// ----- Local connection due to Wire 259 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[26] = chanx_left_in[25];
// ----- Local connection due to Wire 260 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[27] = chanx_left_in[26];
// ----- Local connection due to Wire 262 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[29] = chanx_left_in[28];
// ----- Local connection due to Wire 263 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[30] = chanx_left_in[29];
// ----- Local connection due to Wire 264 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[31] = chanx_left_in[30];
// ----- Local connection due to Wire 266 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[33] = chanx_left_in[32];
// ----- Local connection due to Wire 267 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[34] = chanx_left_in[33];
// ----- Local connection due to Wire 268 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[35] = chanx_left_in[34];
// ----- Local connection due to Wire 270 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[37] = chanx_left_in[36];
// ----- Local connection due to Wire 271 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[38] = chanx_left_in[37];
// ----- Local connection due to Wire 272 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[39] = chanx_left_in[38];
// ----- Local connection due to Wire 274 -----
// ----- Net source id 0 -----
// ----- Net sink id 1 -----
	assign chanx_right_out[41] = chanx_left_in[40];
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	mux_2level_tapbuf_size8 mux_top_track_0 (
		.in({chanx_right_in[1], chanx_right_in[7], chanx_right_in[16], chanx_right_in[30], chanx_left_in[0], chanx_left_in[3], chanx_left_in[14], chanx_left_in[29]}),
		.sram(mux_2level_tapbuf_size8_0_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_0_sram_inv[0:5]),
		.out(chany_top_out[0]));

	mux_2level_tapbuf_size8 mux_top_track_24 (
		.in({chanx_right_in[5], chanx_right_in[19:20], chanx_right_in[34], chanx_left_in[10], chanx_left_in[25], chanx_left_in[35], chanx_left_in[40]}),
		.sram(mux_2level_tapbuf_size8_1_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_1_sram_inv[0:5]),
		.out(chany_top_out[12]));

	mux_2level_tapbuf_size8 mux_top_track_32 (
		.in({chanx_right_in[6], chanx_right_in[21], chanx_right_in[23], chanx_right_in[36], chanx_left_in[9], chanx_left_in[24], chanx_left_in[31], chanx_left_in[38]}),
		.sram(mux_2level_tapbuf_size8_2_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_2_sram_inv[0:5]),
		.out(chany_top_out[16]));

	mux_2level_tapbuf_size8 mux_top_track_40 (
		.in({chanx_right_in[8], chanx_right_in[22], chanx_right_in[27], chanx_right_in[37], chanx_left_in[8], chanx_left_in[22], chanx_left_in[27], chanx_left_in[37]}),
		.sram(mux_2level_tapbuf_size8_3_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_3_sram_inv[0:5]),
		.out(chany_top_out[20]));

	mux_2level_tapbuf_size8 mux_top_track_48 (
		.in({chanx_right_in[9], chanx_right_in[24], chanx_right_in[31], chanx_right_in[38], chanx_left_in[6], chanx_left_in[21], chanx_left_in[23], chanx_left_in[36]}),
		.sram(mux_2level_tapbuf_size8_4_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_4_sram_inv[0:5]),
		.out(chany_top_out[24]));

	mux_2level_tapbuf_size8 mux_top_track_56 (
		.in({chanx_right_in[10], chanx_right_in[25], chanx_right_in[35], chanx_right_in[40], chanx_left_in[5], chanx_left_in[19:20], chanx_left_in[34]}),
		.sram(mux_2level_tapbuf_size8_5_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_5_sram_inv[0:5]),
		.out(chany_top_out[28]));

	mux_2level_tapbuf_size8 mux_top_track_80 (
		.in({chanx_right_in[0], chanx_right_in[3], chanx_right_in[14], chanx_right_in[29], chanx_left_in[1], chanx_left_in[7], chanx_left_in[16], chanx_left_in[30]}),
		.sram(mux_2level_tapbuf_size8_6_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_6_sram_inv[0:5]),
		.out(chany_top_out[40]));

	mux_2level_tapbuf_size8 mux_left_track_25 (
		.in({chany_top_in[10], chany_top_in[25], chany_top_in[35], chany_top_in[40], chany_bottom_in[2], chany_bottom_in[11], chany_bottom_in[17], chany_bottom_in[32]}),
		.sram(mux_2level_tapbuf_size8_7_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_7_sram_inv[0:5]),
		.out(chanx_left_out[12]));

	mux_2level_tapbuf_size8 mux_left_track_33 (
		.in({chany_top_in[9], chany_top_in[24], chany_top_in[31], chany_top_in[38], chany_bottom_in[4], chany_bottom_in[15], chany_bottom_in[18], chany_bottom_in[33]}),
		.sram(mux_2level_tapbuf_size8_8_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_8_sram_inv[0:5]),
		.out(chanx_left_out[16]));

	mux_2level_tapbuf_size8 mux_left_track_41 (
		.in({chany_top_in[8], chany_top_in[22], chany_top_in[27], chany_top_in[37], chany_bottom_in[5], chany_bottom_in[19:20], chany_bottom_in[34]}),
		.sram(mux_2level_tapbuf_size8_9_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_9_sram_inv[0:5]),
		.out(chanx_left_out[20]));

	mux_2level_tapbuf_size8 mux_left_track_49 (
		.in({chany_top_in[6], chany_top_in[21], chany_top_in[23], chany_top_in[36], chany_bottom_in[6], chany_bottom_in[21], chany_bottom_in[23], chany_bottom_in[36]}),
		.sram(mux_2level_tapbuf_size8_10_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_10_sram_inv[0:5]),
		.out(chanx_left_out[24]));

	mux_2level_tapbuf_size8 mux_left_track_57 (
		.in({chany_top_in[5], chany_top_in[19:20], chany_top_in[34], chany_bottom_in[8], chany_bottom_in[22], chany_bottom_in[27], chany_bottom_in[37]}),
		.sram(mux_2level_tapbuf_size8_11_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_11_sram_inv[0:5]),
		.out(chanx_left_out[28]));

	mux_2level_tapbuf_size8 mux_left_track_65 (
		.in({chany_top_in[4], chany_top_in[15], chany_top_in[18], chany_top_in[33], chany_bottom_in[9], chany_bottom_in[24], chany_bottom_in[31], chany_bottom_in[38]}),
		.sram(mux_2level_tapbuf_size8_12_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_12_sram_inv[0:5]),
		.out(chanx_left_out[32]));

	mux_2level_tapbuf_size8 mux_left_track_73 (
		.in({chany_top_in[2], chany_top_in[11], chany_top_in[17], chany_top_in[32], chany_bottom_in[10], chany_bottom_in[25], chany_bottom_in[35], chany_bottom_in[40]}),
		.sram(mux_2level_tapbuf_size8_13_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size8_13_sram_inv[0:5]),
		.out(chanx_left_out[36]));

	mux_2level_tapbuf_size8_mem mem_top_track_0 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(mux_2level_tapbuf_size8_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_0_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_0_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_top_track_24 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_1_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_1_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_top_track_32 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_2_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_2_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_top_track_40 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_3_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_3_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_top_track_48 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_4_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_4_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_top_track_56 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_5_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_5_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_top_track_80 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_6_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_6_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_left_track_25 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_7_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_7_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_7_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_left_track_33 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_7_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_8_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_8_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_8_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_left_track_41 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_8_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_9_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_9_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_9_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_left_track_49 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_9_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_10_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_10_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_10_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_left_track_57 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_10_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_11_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_11_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_11_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_left_track_65 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_11_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_12_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_12_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_12_sram_inv[0:5]));

	mux_2level_tapbuf_size8_mem mem_left_track_73 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_12_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size8_mem_13_ccff_tail),
		.mem_out(mux_2level_tapbuf_size8_13_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size8_13_sram_inv[0:5]));

	mux_2level_tapbuf_size7 mux_top_track_8 (
		.in({chanx_right_in[2], chanx_right_in[11], chanx_right_in[17], chanx_right_in[32], chanx_left_in[13], chanx_left_in[28], chanx_left_in[41]}),
		.sram(mux_2level_tapbuf_size7_0_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_0_sram_inv[0:5]),
		.out(chany_top_out[4]));

	mux_2level_tapbuf_size7 mux_top_track_16 (
		.in({chanx_right_in[4], chanx_right_in[15], chanx_right_in[18], chanx_right_in[33], chanx_left_in[12], chanx_left_in[26], chanx_left_in[39]}),
		.sram(mux_2level_tapbuf_size7_1_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_1_sram_inv[0:5]),
		.out(chany_top_out[8]));

	mux_2level_tapbuf_size7 mux_top_track_64 (
		.in({chanx_right_in[12], chanx_right_in[26], chanx_right_in[39], chanx_left_in[4], chanx_left_in[15], chanx_left_in[18], chanx_left_in[33]}),
		.sram(mux_2level_tapbuf_size7_2_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_2_sram_inv[0:5]),
		.out(chany_top_out[32]));

	mux_2level_tapbuf_size7 mux_top_track_72 (
		.in({chanx_right_in[13], chanx_right_in[28], chanx_right_in[41], chanx_left_in[2], chanx_left_in[11], chanx_left_in[17], chanx_left_in[32]}),
		.sram(mux_2level_tapbuf_size7_3_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_3_sram_inv[0:5]),
		.out(chany_top_out[36]));

	mux_2level_tapbuf_size7 mux_left_track_1 (
		.in({chany_top_in[0], chany_top_in[3], chany_top_in[14], chany_top_in[29], chany_bottom_in[13], chany_bottom_in[28], chany_bottom_in[41]}),
		.sram(mux_2level_tapbuf_size7_4_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_4_sram_inv[0:5]),
		.out(chanx_left_out[0]));

	mux_2level_tapbuf_size7 mux_left_track_9 (
		.in({chany_top_in[13], chany_top_in[28], chany_top_in[41], chany_bottom_in[0], chany_bottom_in[3], chany_bottom_in[14], chany_bottom_in[29]}),
		.sram(mux_2level_tapbuf_size7_5_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_5_sram_inv[0:5]),
		.out(chanx_left_out[4]));

	mux_2level_tapbuf_size7 mux_left_track_17 (
		.in({chany_top_in[12], chany_top_in[26], chany_top_in[39], chany_bottom_in[1], chany_bottom_in[7], chany_bottom_in[16], chany_bottom_in[30]}),
		.sram(mux_2level_tapbuf_size7_6_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_6_sram_inv[0:5]),
		.out(chanx_left_out[8]));

	mux_2level_tapbuf_size7 mux_left_track_81 (
		.in({chany_top_in[1], chany_top_in[7], chany_top_in[16], chany_top_in[30], chany_bottom_in[12], chany_bottom_in[26], chany_bottom_in[39]}),
		.sram(mux_2level_tapbuf_size7_7_sram[0:5]),
		.sram_inv(mux_2level_tapbuf_size7_7_sram_inv[0:5]),
		.out(chanx_left_out[40]));

	mux_2level_tapbuf_size7_mem mem_top_track_8 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_0_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_0_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_top_track_16 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_1_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_1_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_top_track_64 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_2_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_2_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_top_track_72 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_3_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_3_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_left_track_1 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size21_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_4_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_4_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_left_track_9 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_5_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_5_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_left_track_17 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size7_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size7_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_6_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_6_sram_inv[0:5]));

	mux_2level_tapbuf_size7_mem mem_left_track_81 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_13_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_2level_tapbuf_size7_7_sram[0:5]),
		.mem_outb(mux_2level_tapbuf_size7_7_sram_inv[0:5]));

	mux_2level_tapbuf_size21 mux_right_track_0 (
		.in({chany_top_in[13], chany_top_in[28], chany_top_in[41], right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_26_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_11_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_15_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_20_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_24_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_9_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_29_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_33_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_18_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovalid_3_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovch_2_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_3_1_, chany_bottom_in[12], chany_bottom_in[26], chany_bottom_in[39]}),
		.sram(mux_2level_tapbuf_size21_0_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size21_0_sram_inv[0:9]),
		.out(chanx_right_out[0]));

	mux_2level_tapbuf_size21 mux_bottom_track_73 (
		.in({chanx_right_in[0], chanx_right_in[3], chanx_right_in[14], chanx_right_in[29], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_17_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_2_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_6_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_26_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_11_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_15_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_20_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_24_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_9_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_29_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_33_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_4_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_4_0_, chanx_left_in[13], chanx_left_in[28], chanx_left_in[41]}),
		.sram(mux_2level_tapbuf_size21_1_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size21_1_sram_inv[0:9]),
		.out(chany_bottom_out[36]));

	mux_2level_tapbuf_size21 mux_bottom_track_81 (
		.in({chanx_right_in[13], chanx_right_in[28], chanx_right_in[41], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_1_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_21_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_6_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_10_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_30_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_15_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_19_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_4_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_24_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_28_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_13_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_33_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovalid_2_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_1_0_, chanx_left_in[0], chanx_left_in[3], chanx_left_in[14], chanx_left_in[29]}),
		.sram(mux_2level_tapbuf_size21_2_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size21_2_sram_inv[0:9]),
		.out(chany_bottom_out[40]));

	mux_2level_tapbuf_size21_mem mem_right_track_0 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size8_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size21_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size21_0_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size21_0_sram_inv[0:9]));

	mux_2level_tapbuf_size21_mem mem_bottom_track_73 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size22_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size21_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size21_1_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size21_1_sram_inv[0:9]));

	mux_2level_tapbuf_size21_mem mem_bottom_track_81 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size21_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size21_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size21_2_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size21_2_sram_inv[0:9]));

	mux_2level_tapbuf_size23 mux_right_track_8 (
		.in({chany_top_in[0], chany_top_in[3], chany_top_in[14], chany_top_in[29], right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_30_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_15_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_19_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_4_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_24_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_28_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_13_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_33_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_22_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovch_2_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_0_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_0_1_, chany_bottom_in[10], chany_bottom_in[25], chany_bottom_in[35], chany_bottom_in[40]}),
		.sram(mux_2level_tapbuf_size23_0_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size23_0_sram_inv[0:9]),
		.out(chanx_right_out[4]));

	mux_2level_tapbuf_size23 mux_right_track_16 (
		.in({chany_top_in[1], chany_top_in[7], chany_top_in[16], chany_top_in[30], right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_14_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_34_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_19_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_23_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_8_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_28_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_32_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_17_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_26_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_0_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_2_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_2_1_, chany_bottom_in[9], chany_bottom_in[24], chany_bottom_in[31], chany_bottom_in[38]}),
		.sram(mux_2level_tapbuf_size23_1_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size23_1_sram_inv[0:9]),
		.out(chanx_right_out[8]));

	mux_2level_tapbuf_size23 mux_right_track_24 (
		.in({chany_top_in[2], chany_top_in[11], chany_top_in[17], chany_top_in[32], right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_14_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_18_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_3_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_23_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_27_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_12_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_32_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_21_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_30_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_2_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_4_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_4_1_, chany_bottom_in[8], chany_bottom_in[22], chany_bottom_in[27], chany_bottom_in[37]}),
		.sram(mux_2level_tapbuf_size23_2_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size23_2_sram_inv[0:9]),
		.out(chanx_right_out[12]));

	mux_2level_tapbuf_size23 mux_right_track_40 (
		.in({chany_top_in[5], chany_top_in[19:20], chany_top_in[34], right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_22_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_26_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_11_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_31_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_20_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_5_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_9_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_29_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_14_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_18_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovalid_3_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_1_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_3_1_, chany_bottom_in[5], chany_bottom_in[19:20], chany_bottom_in[34]}),
		.sram(mux_2level_tapbuf_size23_3_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size23_3_sram_inv[0:9]),
		.out(chanx_right_out[20]));

	mux_2level_tapbuf_size23 mux_right_track_48 (
		.in({chany_top_in[6], chany_top_in[21], chany_top_in[23], chany_top_in[36], right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_26_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_30_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_15_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_4_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_24_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_9_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_13_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_33_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_18_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_22_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovch_2_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_3_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_0_1_, chany_bottom_in[4], chany_bottom_in[15], chany_bottom_in[18], chany_bottom_in[33]}),
		.sram(mux_2level_tapbuf_size23_4_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size23_4_sram_inv[0:9]),
		.out(chanx_right_out[24]));

	mux_2level_tapbuf_size23 mux_right_track_56 (
		.in({chany_top_in[8], chany_top_in[22], chany_top_in[27], chany_top_in[37], right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_30_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_34_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_19_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_4_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_8_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_28_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_13_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_17_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_22_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_26_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_0_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_0_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_2_1_, chany_bottom_in[2], chany_bottom_in[11], chany_bottom_in[17], chany_bottom_in[32]}),
		.sram(mux_2level_tapbuf_size23_5_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size23_5_sram_inv[0:9]),
		.out(chanx_right_out[28]));

	mux_2level_tapbuf_size23 mux_right_track_64 (
		.in({chany_top_in[9], chany_top_in[24], chany_top_in[31], chany_top_in[38], right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_14_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_34_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_3_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_23_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_8_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_12_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_32_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_17_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_21_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_6_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_26_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_30_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_2_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_2_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_4_1_, chany_bottom_in[1], chany_bottom_in[7], chany_bottom_in[16], chany_bottom_in[30]}),
		.sram(mux_2level_tapbuf_size23_6_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size23_6_sram_inv[0:9]),
		.out(chanx_right_out[32]));

	mux_2level_tapbuf_size23 mux_bottom_track_9 (
		.in({chanx_right_in[10], chanx_right_in[25], chanx_right_in[35], chanx_right_in[40], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_5_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_9_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_29_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_14_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_18_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_3_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_23_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_27_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_12_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_32_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_1_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_21_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovch_1_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_0_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_0_0_, chanx_left_in[2], chanx_left_in[11], chanx_left_in[17], chanx_left_in[32]}),
		.sram(mux_2level_tapbuf_size23_7_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size23_7_sram_inv[0:9]),
		.out(chany_bottom_out[4]));

	mux_2level_tapbuf_size23 mux_bottom_track_17 (
		.in({chanx_right_in[9], chanx_right_in[24], chanx_right_in[31], chanx_right_in[38], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_9_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_13_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_33_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_18_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_22_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_7_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_27_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_31_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_16_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_1_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_5_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_25_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_0_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_2_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_2_0_, chanx_left_in[4], chanx_left_in[15], chanx_left_in[18], chanx_left_in[33]}),
		.sram(mux_2level_tapbuf_size23_8_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size23_8_sram_inv[0:9]),
		.out(chany_bottom_out[8]));

	mux_2level_tapbuf_size23 mux_bottom_track_25 (
		.in({chanx_right_in[8], chanx_right_in[22], chanx_right_in[27], chanx_right_in[37], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_13_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_17_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_2_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_22_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_26_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_11_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_31_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_20_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_5_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_9_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_29_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_2_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_4_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_4_0_, chanx_left_in[5], chanx_left_in[19:20], chanx_left_in[34]}),
		.sram(mux_2level_tapbuf_size23_9_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size23_9_sram_inv[0:9]),
		.out(chany_bottom_out[12]));

	mux_2level_tapbuf_size23 mux_bottom_track_41 (
		.in({chanx_right_in[5], chanx_right_in[19:20], chanx_right_in[34], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_1_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_21_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_25_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_10_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_30_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_34_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_19_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_4_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_8_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_28_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_13_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_17_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovalid_2_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_1_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_3_0_, chanx_left_in[8], chanx_left_in[22], chanx_left_in[27], chanx_left_in[37]}),
		.sram(mux_2level_tapbuf_size23_10_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size23_10_sram_inv[0:9]),
		.out(chany_bottom_out[20]));

	mux_2level_tapbuf_size23 mux_bottom_track_49 (
		.in({chanx_right_in[4], chanx_right_in[15], chanx_right_in[18], chanx_right_in[33], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_5_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_25_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_29_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_14_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_34_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_3_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_23_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_8_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_12_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_32_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_17_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_21_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovch_1_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_3_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_0_0_, chanx_left_in[9], chanx_left_in[24], chanx_left_in[31], chanx_left_in[38]}),
		.sram(mux_2level_tapbuf_size23_11_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size23_11_sram_inv[0:9]),
		.out(chany_bottom_out[24]));

	mux_2level_tapbuf_size23 mux_bottom_track_57 (
		.in({chanx_right_in[2], chanx_right_in[11], chanx_right_in[17], chanx_right_in[32], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_9_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_29_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_33_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_18_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_3_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_7_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_27_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_12_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_16_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_1_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_21_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_25_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_0_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_0_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_2_0_, chanx_left_in[10], chanx_left_in[25], chanx_left_in[35], chanx_left_in[40]}),
		.sram(mux_2level_tapbuf_size23_12_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size23_12_sram_inv[0:9]),
		.out(chany_bottom_out[28]));

	mux_2level_tapbuf_size23_mem mem_right_track_8 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size21_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size23_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size23_0_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size23_0_sram_inv[0:9]));

	mux_2level_tapbuf_size23_mem mem_right_track_16 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size23_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size23_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size23_1_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size23_1_sram_inv[0:9]));

	mux_2level_tapbuf_size23_mem mem_right_track_24 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size23_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size23_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size23_2_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size23_2_sram_inv[0:9]));

	mux_2level_tapbuf_size23_mem mem_right_track_40 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size22_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size23_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size23_3_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size23_3_sram_inv[0:9]));

	mux_2level_tapbuf_size23_mem mem_right_track_48 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size23_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size23_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size23_4_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size23_4_sram_inv[0:9]));

	mux_2level_tapbuf_size23_mem mem_right_track_56 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size23_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size23_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size23_5_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size23_5_sram_inv[0:9]));

	mux_2level_tapbuf_size23_mem mem_right_track_64 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size23_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size23_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size23_6_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size23_6_sram_inv[0:9]));

	mux_2level_tapbuf_size23_mem mem_bottom_track_9 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size22_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size23_mem_7_ccff_tail),
		.mem_out(mux_2level_tapbuf_size23_7_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size23_7_sram_inv[0:9]));

	mux_2level_tapbuf_size23_mem mem_bottom_track_17 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size23_mem_7_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size23_mem_8_ccff_tail),
		.mem_out(mux_2level_tapbuf_size23_8_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size23_8_sram_inv[0:9]));

	mux_2level_tapbuf_size23_mem mem_bottom_track_25 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size23_mem_8_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size23_mem_9_ccff_tail),
		.mem_out(mux_2level_tapbuf_size23_9_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size23_9_sram_inv[0:9]));

	mux_2level_tapbuf_size23_mem mem_bottom_track_41 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size22_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size23_mem_10_ccff_tail),
		.mem_out(mux_2level_tapbuf_size23_10_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size23_10_sram_inv[0:9]));

	mux_2level_tapbuf_size23_mem mem_bottom_track_49 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size23_mem_10_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size23_mem_11_ccff_tail),
		.mem_out(mux_2level_tapbuf_size23_11_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size23_11_sram_inv[0:9]));

	mux_2level_tapbuf_size23_mem mem_bottom_track_57 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size23_mem_11_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size23_mem_12_ccff_tail),
		.mem_out(mux_2level_tapbuf_size23_12_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size23_12_sram_inv[0:9]));

	mux_2level_tapbuf_size22 mux_right_track_32 (
		.in({chany_top_in[4], chany_top_in[15], chany_top_in[18], chany_top_in[33], right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_18_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_22_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_7_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_27_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_31_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_16_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_5_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_25_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_14_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_34_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_4_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_1_1_, chany_bottom_in[6], chany_bottom_in[21], chany_bottom_in[23], chany_bottom_in[36]}),
		.sram(mux_2level_tapbuf_size22_0_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size22_0_sram_inv[0:9]),
		.out(chanx_right_out[16]));

	mux_2level_tapbuf_size22 mux_right_track_72 (
		.in({chany_top_in[10], chany_top_in[25], chany_top_in[35], chany_top_in[40], right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_18_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_3_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_7_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_27_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_12_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_16_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_21_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_25_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_10_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_30_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_34_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_oack_4_1_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_olck_4_1_, chany_bottom_in[0], chany_bottom_in[3], chany_bottom_in[14], chany_bottom_in[29]}),
		.sram(mux_2level_tapbuf_size22_1_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size22_1_sram_inv[0:9]),
		.out(chanx_right_out[36]));

	mux_2level_tapbuf_size22 mux_bottom_track_1 (
		.in({chanx_right_in[12], chanx_right_in[26], chanx_right_in[39], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_1_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_5_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_25_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_10_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_14_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_34_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_19_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_23_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_8_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_28_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_32_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_17_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovalid_2_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ovch_1_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_3_0_, chanx_left_in[1], chanx_left_in[7], chanx_left_in[16], chanx_left_in[30]}),
		.sram(mux_2level_tapbuf_size22_2_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size22_2_sram_inv[0:9]),
		.out(chany_bottom_out[0]));

	mux_2level_tapbuf_size22 mux_bottom_track_33 (
		.in({chanx_right_in[6], chanx_right_in[21], chanx_right_in[23], chanx_right_in[36], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_17_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_21_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_6_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_26_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_30_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_15_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_4_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_24_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_9_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_13_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_33_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_4_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_ordy_1_0_, chanx_left_in[6], chanx_left_in[21], chanx_left_in[23], chanx_left_in[36]}),
		.sram(mux_2level_tapbuf_size22_3_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size22_3_sram_inv[0:9]),
		.out(chany_bottom_out[16]));

	mux_2level_tapbuf_size22 mux_bottom_track_65 (
		.in({chanx_right_in[1], chanx_right_in[7], chanx_right_in[16], chanx_right_in[30], bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_13_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_0_33_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_2_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_1_22_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_7_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_11_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_2_31_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_16_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_3_20_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_5_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_25_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_odata_4_29_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_oack_2_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_2_0_, bottom_right_grid_left_width_0_height_0_subtile_0__pin_olck_4_0_, chanx_left_in[12], chanx_left_in[26], chanx_left_in[39]}),
		.sram(mux_2level_tapbuf_size22_4_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size22_4_sram_inv[0:9]),
		.out(chany_bottom_out[32]));

	mux_2level_tapbuf_size22_mem mem_right_track_32 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size23_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size22_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size22_0_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size22_0_sram_inv[0:9]));

	mux_2level_tapbuf_size22_mem mem_right_track_72 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size23_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size22_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size22_1_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size22_1_sram_inv[0:9]));

	mux_2level_tapbuf_size22_mem mem_bottom_track_1 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size20_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size22_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size22_2_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size22_2_sram_inv[0:9]));

	mux_2level_tapbuf_size22_mem mem_bottom_track_33 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size23_mem_9_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size22_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size22_3_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size22_3_sram_inv[0:9]));

	mux_2level_tapbuf_size22_mem mem_bottom_track_65 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size23_mem_12_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size22_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size22_4_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size22_4_sram_inv[0:9]));

	mux_2level_tapbuf_size20 mux_right_track_80 (
		.in({chany_top_in[12], chany_top_in[26], chany_top_in[39], right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_2_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_0_22_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_7_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_11_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_1_31_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_16_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_2_20_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_5_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_25_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_3_29_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_14_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_odata_4_34_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ovalid_3_0_, right_bottom_grid_top_width_0_height_0_subtile_0__pin_ordy_1_1_, chany_bottom_in[13], chany_bottom_in[28], chany_bottom_in[41]}),
		.sram(mux_2level_tapbuf_size20_0_sram[0:9]),
		.sram_inv(mux_2level_tapbuf_size20_0_sram_inv[0:9]),
		.out(chanx_right_out[40]));

	mux_2level_tapbuf_size20_mem mem_right_track_80 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size22_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size20_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size20_0_sram[0:9]),
		.mem_outb(mux_2level_tapbuf_size20_0_sram_inv[0:9]));

endmodule
// ----- END Verilog module for sb_3__4_ -----

//----- Default net type -----
`default_nettype wire



