//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for Unique Connection Blocks[1][1]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Thu Aug  8 18:22:31 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for cby_1__1_ -----
module cby_1__1_(pReset,
                 prog_clk,
                 chany_bottom_in,
                 chany_top_in,
                 ccff_head,
                 chany_bottom_out,
                 chany_top_out,
                 left_grid_right_width_0_height_0_subtile_0__pin_my_xpos_0_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_0_0_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_0_4_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_0_8_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_0_12_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_0_16_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_0_20_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_0_24_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_0_28_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_0_32_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_1_1_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_1_5_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_1_9_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_1_13_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_1_17_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_1_21_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_1_25_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_1_29_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_1_33_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_2_2_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_2_6_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_2_10_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_2_14_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_2_18_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_2_22_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_2_26_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_2_30_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_2_34_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_3_3_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_3_7_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_3_11_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_3_15_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_3_19_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_3_23_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_3_27_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_3_31_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_4_0_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_4_4_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_4_8_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_4_12_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_4_16_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_4_20_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_4_24_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_4_28_,
                 left_grid_right_width_0_height_0_subtile_0__pin_idata_4_32_,
                 left_grid_right_width_0_height_0_subtile_0__pin_ivalid_1_0_,
                 left_grid_right_width_0_height_0_subtile_0__pin_ivch_0_0_,
                 left_grid_right_width_0_height_0_subtile_0__pin_ivch_4_0_,
                 left_grid_right_width_0_height_0_subtile_0__pin_iack_1_1_,
                 left_grid_right_width_0_height_0_subtile_0__pin_iack_3_1_,
                 left_grid_right_width_0_height_0_subtile_0__pin_ilck_0_1_,
                 left_grid_right_width_0_height_0_subtile_0__pin_ilck_2_1_,
                 left_grid_right_width_0_height_0_subtile_0__pin_ilck_4_1_,
                 ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] pReset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:32] chany_bottom_in;
//----- INPUT PORTS -----
input [0:32] chany_top_in;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:32] chany_bottom_out;
//----- OUTPUT PORTS -----
output [0:32] chany_top_out;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_my_xpos_0_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_0_0_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_0_4_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_0_8_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_0_12_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_0_16_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_0_20_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_0_24_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_0_28_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_0_32_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_1_1_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_1_5_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_1_9_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_1_13_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_1_17_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_1_21_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_1_25_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_1_29_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_1_33_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_2_2_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_2_6_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_2_10_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_2_14_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_2_18_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_2_22_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_2_26_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_2_30_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_2_34_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_3_3_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_3_7_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_3_11_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_3_15_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_3_19_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_3_23_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_3_27_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_3_31_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_4_0_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_4_4_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_4_8_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_4_12_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_4_16_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_4_20_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_4_24_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_4_28_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_idata_4_32_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_ivalid_1_0_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_ivch_0_0_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_ivch_4_0_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_iack_1_1_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_iack_3_1_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_ilck_0_1_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_ilck_2_1_;
//----- OUTPUT PORTS -----
output [0:0] left_grid_right_width_0_height_0_subtile_0__pin_ilck_4_1_;
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
wire [0:0] mux_2level_tapbuf_size12_mem_5_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_6_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_7_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_8_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_9_ccff_tail;

// ----- BEGIN Local short connections -----
// ----- Local connection due to Wire 0 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[0] = chany_bottom_in[0];
// ----- Local connection due to Wire 1 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[1] = chany_bottom_in[1];
// ----- Local connection due to Wire 2 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[2] = chany_bottom_in[2];
// ----- Local connection due to Wire 3 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[3] = chany_bottom_in[3];
// ----- Local connection due to Wire 4 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[4] = chany_bottom_in[4];
// ----- Local connection due to Wire 5 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[5] = chany_bottom_in[5];
// ----- Local connection due to Wire 6 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[6] = chany_bottom_in[6];
// ----- Local connection due to Wire 7 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[7] = chany_bottom_in[7];
// ----- Local connection due to Wire 8 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[8] = chany_bottom_in[8];
// ----- Local connection due to Wire 9 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[9] = chany_bottom_in[9];
// ----- Local connection due to Wire 10 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[10] = chany_bottom_in[10];
// ----- Local connection due to Wire 11 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[11] = chany_bottom_in[11];
// ----- Local connection due to Wire 12 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[12] = chany_bottom_in[12];
// ----- Local connection due to Wire 13 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[13] = chany_bottom_in[13];
// ----- Local connection due to Wire 14 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[14] = chany_bottom_in[14];
// ----- Local connection due to Wire 15 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[15] = chany_bottom_in[15];
// ----- Local connection due to Wire 16 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[16] = chany_bottom_in[16];
// ----- Local connection due to Wire 17 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[17] = chany_bottom_in[17];
// ----- Local connection due to Wire 18 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[18] = chany_bottom_in[18];
// ----- Local connection due to Wire 19 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[19] = chany_bottom_in[19];
// ----- Local connection due to Wire 20 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[20] = chany_bottom_in[20];
// ----- Local connection due to Wire 21 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[21] = chany_bottom_in[21];
// ----- Local connection due to Wire 22 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[22] = chany_bottom_in[22];
// ----- Local connection due to Wire 23 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[23] = chany_bottom_in[23];
// ----- Local connection due to Wire 24 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[24] = chany_bottom_in[24];
// ----- Local connection due to Wire 25 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[25] = chany_bottom_in[25];
// ----- Local connection due to Wire 26 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[26] = chany_bottom_in[26];
// ----- Local connection due to Wire 27 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[27] = chany_bottom_in[27];
// ----- Local connection due to Wire 28 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[28] = chany_bottom_in[28];
// ----- Local connection due to Wire 29 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[29] = chany_bottom_in[29];
// ----- Local connection due to Wire 30 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[30] = chany_bottom_in[30];
// ----- Local connection due to Wire 31 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[31] = chany_bottom_in[31];
// ----- Local connection due to Wire 32 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[32] = chany_bottom_in[32];
// ----- Local connection due to Wire 33 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[0] = chany_top_in[0];
// ----- Local connection due to Wire 34 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[1] = chany_top_in[1];
// ----- Local connection due to Wire 35 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[2] = chany_top_in[2];
// ----- Local connection due to Wire 36 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[3] = chany_top_in[3];
// ----- Local connection due to Wire 37 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[4] = chany_top_in[4];
// ----- Local connection due to Wire 38 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[5] = chany_top_in[5];
// ----- Local connection due to Wire 39 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[6] = chany_top_in[6];
// ----- Local connection due to Wire 40 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[7] = chany_top_in[7];
// ----- Local connection due to Wire 41 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[8] = chany_top_in[8];
// ----- Local connection due to Wire 42 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[9] = chany_top_in[9];
// ----- Local connection due to Wire 43 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[10] = chany_top_in[10];
// ----- Local connection due to Wire 44 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[11] = chany_top_in[11];
// ----- Local connection due to Wire 45 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[12] = chany_top_in[12];
// ----- Local connection due to Wire 46 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[13] = chany_top_in[13];
// ----- Local connection due to Wire 47 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[14] = chany_top_in[14];
// ----- Local connection due to Wire 48 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[15] = chany_top_in[15];
// ----- Local connection due to Wire 49 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[16] = chany_top_in[16];
// ----- Local connection due to Wire 50 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[17] = chany_top_in[17];
// ----- Local connection due to Wire 51 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[18] = chany_top_in[18];
// ----- Local connection due to Wire 52 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[19] = chany_top_in[19];
// ----- Local connection due to Wire 53 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[20] = chany_top_in[20];
// ----- Local connection due to Wire 54 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[21] = chany_top_in[21];
// ----- Local connection due to Wire 55 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[22] = chany_top_in[22];
// ----- Local connection due to Wire 56 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[23] = chany_top_in[23];
// ----- Local connection due to Wire 57 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[24] = chany_top_in[24];
// ----- Local connection due to Wire 58 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[25] = chany_top_in[25];
// ----- Local connection due to Wire 59 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[26] = chany_top_in[26];
// ----- Local connection due to Wire 60 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[27] = chany_top_in[27];
// ----- Local connection due to Wire 61 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[28] = chany_top_in[28];
// ----- Local connection due to Wire 62 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[29] = chany_top_in[29];
// ----- Local connection due to Wire 63 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[30] = chany_top_in[30];
// ----- Local connection due to Wire 64 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[31] = chany_top_in[31];
// ----- Local connection due to Wire 65 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[32] = chany_top_in[32];
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	mux_2level_tapbuf_size12 mux_right_ipin_0 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[6], chany_top_in[6], chany_bottom_in[12], chany_top_in[12], chany_bottom_in[18], chany_top_in[18], chany_bottom_in[24], chany_top_in[24], chany_bottom_in[30], chany_top_in[30]}),
		.sram(mux_2level_tapbuf_size12_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_0_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_my_xpos_0_));

	mux_2level_tapbuf_size12 mux_right_ipin_1 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[13], chany_top_in[13], chany_bottom_in[19], chany_top_in[19], chany_bottom_in[25], chany_top_in[25], chany_bottom_in[31], chany_top_in[31]}),
		.sram(mux_2level_tapbuf_size12_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_1_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_0_0_));

	mux_2level_tapbuf_size12 mux_right_ipin_2 (
		.in({chany_bottom_in[2], chany_top_in[2], chany_bottom_in[8], chany_top_in[8], chany_bottom_in[14], chany_top_in[14], chany_bottom_in[20], chany_top_in[20], chany_bottom_in[26], chany_top_in[26], chany_bottom_in[32], chany_top_in[32]}),
		.sram(mux_2level_tapbuf_size12_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_2_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_0_4_));

	mux_2level_tapbuf_size12 mux_right_ipin_3 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[3], chany_top_in[3], chany_bottom_in[9], chany_top_in[9], chany_bottom_in[15], chany_top_in[15], chany_bottom_in[21], chany_top_in[21], chany_bottom_in[27], chany_top_in[27]}),
		.sram(mux_2level_tapbuf_size12_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_3_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_0_8_));

	mux_2level_tapbuf_size12 mux_right_ipin_4 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[4], chany_top_in[4], chany_bottom_in[10], chany_top_in[10], chany_bottom_in[16], chany_top_in[16], chany_bottom_in[22], chany_top_in[22], chany_bottom_in[28], chany_top_in[28]}),
		.sram(mux_2level_tapbuf_size12_4_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_4_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_0_12_));

	mux_2level_tapbuf_size12 mux_right_ipin_5 (
		.in({chany_bottom_in[2], chany_top_in[2], chany_bottom_in[5], chany_top_in[5], chany_bottom_in[11], chany_top_in[11], chany_bottom_in[17], chany_top_in[17], chany_bottom_in[23], chany_top_in[23], chany_bottom_in[29], chany_top_in[29]}),
		.sram(mux_2level_tapbuf_size12_5_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_5_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_0_16_));

	mux_2level_tapbuf_size12 mux_right_ipin_6 (
		.in({chany_bottom_in[3], chany_top_in[3], chany_bottom_in[6], chany_top_in[6], chany_bottom_in[12], chany_top_in[12], chany_bottom_in[18], chany_top_in[18], chany_bottom_in[24], chany_top_in[24], chany_bottom_in[30], chany_top_in[30]}),
		.sram(mux_2level_tapbuf_size12_6_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_6_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_0_20_));

	mux_2level_tapbuf_size12 mux_right_ipin_7 (
		.in({chany_bottom_in[4], chany_top_in[4], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[13], chany_top_in[13], chany_bottom_in[19], chany_top_in[19], chany_bottom_in[25], chany_top_in[25], chany_bottom_in[31], chany_top_in[31]}),
		.sram(mux_2level_tapbuf_size12_7_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_7_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_0_24_));

	mux_2level_tapbuf_size12 mux_right_ipin_8 (
		.in({chany_bottom_in[5], chany_top_in[5], chany_bottom_in[8], chany_top_in[8], chany_bottom_in[14], chany_top_in[14], chany_bottom_in[20], chany_top_in[20], chany_bottom_in[26], chany_top_in[26], chany_bottom_in[32], chany_top_in[32]}),
		.sram(mux_2level_tapbuf_size12_8_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_8_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_0_28_));

	mux_2level_tapbuf_size12 mux_right_ipin_9 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[6], chany_top_in[6], chany_bottom_in[9], chany_top_in[9], chany_bottom_in[15], chany_top_in[15], chany_bottom_in[21], chany_top_in[21], chany_bottom_in[27], chany_top_in[27]}),
		.sram(mux_2level_tapbuf_size12_9_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_9_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_0_32_));

	mux_2level_tapbuf_size12 mux_right_ipin_10 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[10], chany_top_in[10], chany_bottom_in[16], chany_top_in[16], chany_bottom_in[22], chany_top_in[22], chany_bottom_in[28], chany_top_in[28]}),
		.sram(mux_2level_tapbuf_size12_10_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_10_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_1_1_));

	mux_2level_tapbuf_size12 mux_right_ipin_11 (
		.in({chany_bottom_in[2], chany_top_in[2], chany_bottom_in[8], chany_top_in[8], chany_bottom_in[11], chany_top_in[11], chany_bottom_in[17], chany_top_in[17], chany_bottom_in[23], chany_top_in[23], chany_bottom_in[29], chany_top_in[29]}),
		.sram(mux_2level_tapbuf_size12_11_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_11_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_1_5_));

	mux_2level_tapbuf_size12 mux_right_ipin_12 (
		.in({chany_bottom_in[3], chany_top_in[3], chany_bottom_in[9], chany_top_in[9], chany_bottom_in[12], chany_top_in[12], chany_bottom_in[18], chany_top_in[18], chany_bottom_in[24], chany_top_in[24], chany_bottom_in[30], chany_top_in[30]}),
		.sram(mux_2level_tapbuf_size12_12_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_12_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_1_9_));

	mux_2level_tapbuf_size12 mux_right_ipin_13 (
		.in({chany_bottom_in[4], chany_top_in[4], chany_bottom_in[10], chany_top_in[10], chany_bottom_in[13], chany_top_in[13], chany_bottom_in[19], chany_top_in[19], chany_bottom_in[25], chany_top_in[25], chany_bottom_in[31], chany_top_in[31]}),
		.sram(mux_2level_tapbuf_size12_13_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_13_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_1_13_));

	mux_2level_tapbuf_size12 mux_right_ipin_14 (
		.in({chany_bottom_in[5], chany_top_in[5], chany_bottom_in[11], chany_top_in[11], chany_bottom_in[14], chany_top_in[14], chany_bottom_in[20], chany_top_in[20], chany_bottom_in[26], chany_top_in[26], chany_bottom_in[32], chany_top_in[32]}),
		.sram(mux_2level_tapbuf_size12_14_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_14_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_1_17_));

	mux_2level_tapbuf_size12 mux_right_ipin_15 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[6], chany_top_in[6], chany_bottom_in[12], chany_top_in[12], chany_bottom_in[15], chany_top_in[15], chany_bottom_in[21], chany_top_in[21], chany_bottom_in[27], chany_top_in[27]}),
		.sram(mux_2level_tapbuf_size12_15_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_15_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_1_21_));

	mux_2level_tapbuf_size12 mux_right_ipin_16 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[13], chany_top_in[13], chany_bottom_in[16], chany_top_in[16], chany_bottom_in[22], chany_top_in[22], chany_bottom_in[28], chany_top_in[28]}),
		.sram(mux_2level_tapbuf_size12_16_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_16_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_1_25_));

	mux_2level_tapbuf_size12 mux_right_ipin_17 (
		.in({chany_bottom_in[2], chany_top_in[2], chany_bottom_in[8], chany_top_in[8], chany_bottom_in[14], chany_top_in[14], chany_bottom_in[17], chany_top_in[17], chany_bottom_in[23], chany_top_in[23], chany_bottom_in[29], chany_top_in[29]}),
		.sram(mux_2level_tapbuf_size12_17_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_17_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_1_29_));

	mux_2level_tapbuf_size12 mux_right_ipin_18 (
		.in({chany_bottom_in[3], chany_top_in[3], chany_bottom_in[9], chany_top_in[9], chany_bottom_in[15], chany_top_in[15], chany_bottom_in[18], chany_top_in[18], chany_bottom_in[24], chany_top_in[24], chany_bottom_in[30], chany_top_in[30]}),
		.sram(mux_2level_tapbuf_size12_18_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_18_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_1_33_));

	mux_2level_tapbuf_size12 mux_right_ipin_19 (
		.in({chany_bottom_in[4], chany_top_in[4], chany_bottom_in[10], chany_top_in[10], chany_bottom_in[16], chany_top_in[16], chany_bottom_in[19], chany_top_in[19], chany_bottom_in[25], chany_top_in[25], chany_bottom_in[31], chany_top_in[31]}),
		.sram(mux_2level_tapbuf_size12_19_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_19_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_2_2_));

	mux_2level_tapbuf_size12 mux_right_ipin_20 (
		.in({chany_bottom_in[5], chany_top_in[5], chany_bottom_in[11], chany_top_in[11], chany_bottom_in[17], chany_top_in[17], chany_bottom_in[20], chany_top_in[20], chany_bottom_in[26], chany_top_in[26], chany_bottom_in[32], chany_top_in[32]}),
		.sram(mux_2level_tapbuf_size12_20_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_20_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_2_6_));

	mux_2level_tapbuf_size12 mux_right_ipin_21 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[6], chany_top_in[6], chany_bottom_in[12], chany_top_in[12], chany_bottom_in[18], chany_top_in[18], chany_bottom_in[21], chany_top_in[21], chany_bottom_in[27], chany_top_in[27]}),
		.sram(mux_2level_tapbuf_size12_21_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_21_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_2_10_));

	mux_2level_tapbuf_size12 mux_right_ipin_22 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[13], chany_top_in[13], chany_bottom_in[19], chany_top_in[19], chany_bottom_in[22], chany_top_in[22], chany_bottom_in[28], chany_top_in[28]}),
		.sram(mux_2level_tapbuf_size12_22_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_22_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_2_14_));

	mux_2level_tapbuf_size12 mux_right_ipin_23 (
		.in({chany_bottom_in[2], chany_top_in[2], chany_bottom_in[8], chany_top_in[8], chany_bottom_in[14], chany_top_in[14], chany_bottom_in[20], chany_top_in[20], chany_bottom_in[23], chany_top_in[23], chany_bottom_in[29], chany_top_in[29]}),
		.sram(mux_2level_tapbuf_size12_23_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_23_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_2_18_));

	mux_2level_tapbuf_size12 mux_right_ipin_24 (
		.in({chany_bottom_in[3], chany_top_in[3], chany_bottom_in[9], chany_top_in[9], chany_bottom_in[15], chany_top_in[15], chany_bottom_in[21], chany_top_in[21], chany_bottom_in[24], chany_top_in[24], chany_bottom_in[30], chany_top_in[30]}),
		.sram(mux_2level_tapbuf_size12_24_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_24_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_2_22_));

	mux_2level_tapbuf_size12 mux_right_ipin_25 (
		.in({chany_bottom_in[4], chany_top_in[4], chany_bottom_in[10], chany_top_in[10], chany_bottom_in[16], chany_top_in[16], chany_bottom_in[22], chany_top_in[22], chany_bottom_in[25], chany_top_in[25], chany_bottom_in[31], chany_top_in[31]}),
		.sram(mux_2level_tapbuf_size12_25_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_25_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_2_26_));

	mux_2level_tapbuf_size12 mux_right_ipin_26 (
		.in({chany_bottom_in[5], chany_top_in[5], chany_bottom_in[11], chany_top_in[11], chany_bottom_in[17], chany_top_in[17], chany_bottom_in[23], chany_top_in[23], chany_bottom_in[26], chany_top_in[26], chany_bottom_in[32], chany_top_in[32]}),
		.sram(mux_2level_tapbuf_size12_26_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_26_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_2_30_));

	mux_2level_tapbuf_size12 mux_right_ipin_28 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[13], chany_top_in[13], chany_bottom_in[19], chany_top_in[19], chany_bottom_in[25], chany_top_in[25], chany_bottom_in[28], chany_top_in[28]}),
		.sram(mux_2level_tapbuf_size12_27_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_27_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_3_3_));

	mux_2level_tapbuf_size12 mux_right_ipin_29 (
		.in({chany_bottom_in[2], chany_top_in[2], chany_bottom_in[8], chany_top_in[8], chany_bottom_in[14], chany_top_in[14], chany_bottom_in[20], chany_top_in[20], chany_bottom_in[26], chany_top_in[26], chany_bottom_in[29], chany_top_in[29]}),
		.sram(mux_2level_tapbuf_size12_28_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_28_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_3_7_));

	mux_2level_tapbuf_size12 mux_right_ipin_30 (
		.in({chany_bottom_in[3], chany_top_in[3], chany_bottom_in[9], chany_top_in[9], chany_bottom_in[15], chany_top_in[15], chany_bottom_in[21], chany_top_in[21], chany_bottom_in[27], chany_top_in[27], chany_bottom_in[30], chany_top_in[30]}),
		.sram(mux_2level_tapbuf_size12_29_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_29_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_3_11_));

	mux_2level_tapbuf_size12 mux_right_ipin_31 (
		.in({chany_bottom_in[4], chany_top_in[4], chany_bottom_in[10], chany_top_in[10], chany_bottom_in[16], chany_top_in[16], chany_bottom_in[22], chany_top_in[22], chany_bottom_in[28], chany_top_in[28], chany_bottom_in[31], chany_top_in[31]}),
		.sram(mux_2level_tapbuf_size12_30_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_30_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_3_15_));

	mux_2level_tapbuf_size12 mux_right_ipin_32 (
		.in({chany_bottom_in[5], chany_top_in[5], chany_bottom_in[11], chany_top_in[11], chany_bottom_in[17], chany_top_in[17], chany_bottom_in[23], chany_top_in[23], chany_bottom_in[29], chany_top_in[29], chany_bottom_in[32], chany_top_in[32]}),
		.sram(mux_2level_tapbuf_size12_31_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_31_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_3_19_));

	mux_2level_tapbuf_size12 mux_right_ipin_33 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[6], chany_top_in[6], chany_bottom_in[12], chany_top_in[12], chany_bottom_in[18], chany_top_in[18], chany_bottom_in[24], chany_top_in[24], chany_bottom_in[30], chany_top_in[30]}),
		.sram(mux_2level_tapbuf_size12_32_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_32_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_3_23_));

	mux_2level_tapbuf_size12 mux_right_ipin_34 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[13], chany_top_in[13], chany_bottom_in[19], chany_top_in[19], chany_bottom_in[25], chany_top_in[25], chany_bottom_in[31], chany_top_in[31]}),
		.sram(mux_2level_tapbuf_size12_33_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_33_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_3_27_));

	mux_2level_tapbuf_size12 mux_right_ipin_35 (
		.in({chany_bottom_in[2], chany_top_in[2], chany_bottom_in[8], chany_top_in[8], chany_bottom_in[14], chany_top_in[14], chany_bottom_in[20], chany_top_in[20], chany_bottom_in[26], chany_top_in[26], chany_bottom_in[32], chany_top_in[32]}),
		.sram(mux_2level_tapbuf_size12_34_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_34_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_3_31_));

	mux_2level_tapbuf_size12 mux_right_ipin_36 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[3], chany_top_in[3], chany_bottom_in[9], chany_top_in[9], chany_bottom_in[15], chany_top_in[15], chany_bottom_in[21], chany_top_in[21], chany_bottom_in[27], chany_top_in[27]}),
		.sram(mux_2level_tapbuf_size12_35_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_35_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_4_0_));

	mux_2level_tapbuf_size12 mux_right_ipin_37 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[4], chany_top_in[4], chany_bottom_in[10], chany_top_in[10], chany_bottom_in[16], chany_top_in[16], chany_bottom_in[22], chany_top_in[22], chany_bottom_in[28], chany_top_in[28]}),
		.sram(mux_2level_tapbuf_size12_36_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_36_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_4_4_));

	mux_2level_tapbuf_size12 mux_right_ipin_38 (
		.in({chany_bottom_in[2], chany_top_in[2], chany_bottom_in[5], chany_top_in[5], chany_bottom_in[11], chany_top_in[11], chany_bottom_in[17], chany_top_in[17], chany_bottom_in[23], chany_top_in[23], chany_bottom_in[29], chany_top_in[29]}),
		.sram(mux_2level_tapbuf_size12_37_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_37_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_4_8_));

	mux_2level_tapbuf_size12 mux_right_ipin_39 (
		.in({chany_bottom_in[3], chany_top_in[3], chany_bottom_in[6], chany_top_in[6], chany_bottom_in[12], chany_top_in[12], chany_bottom_in[18], chany_top_in[18], chany_bottom_in[24], chany_top_in[24], chany_bottom_in[30], chany_top_in[30]}),
		.sram(mux_2level_tapbuf_size12_38_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_38_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_4_12_));

	mux_2level_tapbuf_size12 mux_right_ipin_40 (
		.in({chany_bottom_in[4], chany_top_in[4], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[13], chany_top_in[13], chany_bottom_in[19], chany_top_in[19], chany_bottom_in[25], chany_top_in[25], chany_bottom_in[31], chany_top_in[31]}),
		.sram(mux_2level_tapbuf_size12_39_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_39_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_4_16_));

	mux_2level_tapbuf_size12 mux_right_ipin_41 (
		.in({chany_bottom_in[5], chany_top_in[5], chany_bottom_in[8], chany_top_in[8], chany_bottom_in[14], chany_top_in[14], chany_bottom_in[20], chany_top_in[20], chany_bottom_in[26], chany_top_in[26], chany_bottom_in[32], chany_top_in[32]}),
		.sram(mux_2level_tapbuf_size12_40_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_40_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_4_20_));

	mux_2level_tapbuf_size12 mux_right_ipin_42 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[6], chany_top_in[6], chany_bottom_in[9], chany_top_in[9], chany_bottom_in[15], chany_top_in[15], chany_bottom_in[21], chany_top_in[21], chany_bottom_in[27], chany_top_in[27]}),
		.sram(mux_2level_tapbuf_size12_41_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_41_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_4_24_));

	mux_2level_tapbuf_size12 mux_right_ipin_43 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[10], chany_top_in[10], chany_bottom_in[16], chany_top_in[16], chany_bottom_in[22], chany_top_in[22], chany_bottom_in[28], chany_top_in[28]}),
		.sram(mux_2level_tapbuf_size12_42_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_42_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_4_28_));

	mux_2level_tapbuf_size12 mux_right_ipin_44 (
		.in({chany_bottom_in[2], chany_top_in[2], chany_bottom_in[8], chany_top_in[8], chany_bottom_in[11], chany_top_in[11], chany_bottom_in[17], chany_top_in[17], chany_bottom_in[23], chany_top_in[23], chany_bottom_in[29], chany_top_in[29]}),
		.sram(mux_2level_tapbuf_size12_43_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_43_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_4_32_));

	mux_2level_tapbuf_size12 mux_right_ipin_45 (
		.in({chany_bottom_in[3], chany_top_in[3], chany_bottom_in[9], chany_top_in[9], chany_bottom_in[12], chany_top_in[12], chany_bottom_in[18], chany_top_in[18], chany_bottom_in[24], chany_top_in[24], chany_bottom_in[30], chany_top_in[30]}),
		.sram(mux_2level_tapbuf_size12_44_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_44_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_ivalid_1_0_));

	mux_2level_tapbuf_size12 mux_right_ipin_46 (
		.in({chany_bottom_in[4], chany_top_in[4], chany_bottom_in[10], chany_top_in[10], chany_bottom_in[13], chany_top_in[13], chany_bottom_in[19], chany_top_in[19], chany_bottom_in[25], chany_top_in[25], chany_bottom_in[31], chany_top_in[31]}),
		.sram(mux_2level_tapbuf_size12_45_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_45_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_ivch_0_0_));

	mux_2level_tapbuf_size12 mux_right_ipin_47 (
		.in({chany_bottom_in[5], chany_top_in[5], chany_bottom_in[11], chany_top_in[11], chany_bottom_in[14], chany_top_in[14], chany_bottom_in[20], chany_top_in[20], chany_bottom_in[26], chany_top_in[26], chany_bottom_in[32], chany_top_in[32]}),
		.sram(mux_2level_tapbuf_size12_46_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_46_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_ivch_4_0_));

	mux_2level_tapbuf_size12 mux_right_ipin_48 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[6], chany_top_in[6], chany_bottom_in[12], chany_top_in[12], chany_bottom_in[15], chany_top_in[15], chany_bottom_in[21], chany_top_in[21], chany_bottom_in[27], chany_top_in[27]}),
		.sram(mux_2level_tapbuf_size12_47_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_47_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_iack_1_1_));

	mux_2level_tapbuf_size12 mux_right_ipin_49 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[13], chany_top_in[13], chany_bottom_in[16], chany_top_in[16], chany_bottom_in[22], chany_top_in[22], chany_bottom_in[28], chany_top_in[28]}),
		.sram(mux_2level_tapbuf_size12_48_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_48_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_iack_3_1_));

	mux_2level_tapbuf_size12 mux_right_ipin_50 (
		.in({chany_bottom_in[2], chany_top_in[2], chany_bottom_in[8], chany_top_in[8], chany_bottom_in[14], chany_top_in[14], chany_bottom_in[17], chany_top_in[17], chany_bottom_in[23], chany_top_in[23], chany_bottom_in[29], chany_top_in[29]}),
		.sram(mux_2level_tapbuf_size12_49_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_49_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_ilck_0_1_));

	mux_2level_tapbuf_size12 mux_right_ipin_51 (
		.in({chany_bottom_in[3], chany_top_in[3], chany_bottom_in[9], chany_top_in[9], chany_bottom_in[15], chany_top_in[15], chany_bottom_in[18], chany_top_in[18], chany_bottom_in[24], chany_top_in[24], chany_bottom_in[30], chany_top_in[30]}),
		.sram(mux_2level_tapbuf_size12_50_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_50_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_ilck_2_1_));

	mux_2level_tapbuf_size12 mux_right_ipin_52 (
		.in({chany_bottom_in[4], chany_top_in[4], chany_bottom_in[10], chany_top_in[10], chany_bottom_in[16], chany_top_in[16], chany_bottom_in[19], chany_top_in[19], chany_bottom_in[25], chany_top_in[25], chany_bottom_in[31], chany_top_in[31]}),
		.sram(mux_2level_tapbuf_size12_51_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_51_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_ilck_4_1_));

	mux_2level_tapbuf_size12_mem mem_right_ipin_0 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(mux_2level_tapbuf_size12_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_0_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_1 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_1_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_2 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_2_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_3 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_3_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_4 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_4_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_4_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_5 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_5_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_5_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_6 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_6_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_6_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_7 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_7_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_7_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_7_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_8 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_7_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_8_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_8_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_8_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_9 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_8_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_9_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_9_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_9_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_10 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_9_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_10_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_10_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_10_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_11 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_10_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_11_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_11_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_11_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_12 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_11_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_12_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_12_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_12_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_13 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_12_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_13_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_13_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_13_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_14 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_13_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_14_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_14_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_14_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_15 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_14_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_15_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_15_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_15_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_16 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_15_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_16_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_16_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_16_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_17 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_16_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_17_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_17_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_17_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_18 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_17_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_18_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_18_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_18_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_19 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_18_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_19_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_19_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_19_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_20 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_19_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_20_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_20_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_20_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_21 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_20_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_21_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_21_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_21_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_22 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_21_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_22_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_22_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_22_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_23 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_22_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_23_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_23_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_23_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_24 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_23_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_24_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_24_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_24_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_25 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_24_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_25_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_25_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_25_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_26 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_25_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_26_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_26_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_26_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_28 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size10_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_27_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_27_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_27_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_29 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_27_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_28_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_28_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_28_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_30 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_28_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_29_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_29_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_29_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_31 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_29_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_30_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_30_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_30_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_32 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_30_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_31_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_31_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_31_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_33 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_31_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_32_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_32_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_32_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_34 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_32_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_33_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_33_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_33_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_35 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_33_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_34_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_34_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_34_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_36 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_34_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_35_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_35_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_35_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_37 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_35_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_36_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_36_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_36_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_38 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_36_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_37_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_37_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_37_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_39 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_37_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_38_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_38_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_38_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_40 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_38_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_39_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_39_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_39_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_41 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_39_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_40_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_40_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_40_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_42 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_40_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_41_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_41_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_41_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_43 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_41_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_42_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_42_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_42_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_44 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_42_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_43_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_43_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_43_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_45 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_43_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_44_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_44_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_44_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_46 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_44_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_45_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_45_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_45_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_47 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_45_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_46_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_46_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_46_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_48 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_46_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_47_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_47_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_47_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_49 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_47_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_48_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_48_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_48_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_50 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_48_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_49_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_49_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_49_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_51 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_49_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_50_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_50_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_50_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_right_ipin_52 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_50_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_51_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_51_sram_inv[0:7]));

	mux_2level_tapbuf_size10 mux_right_ipin_27 (
		.in({chany_bottom_in[2], chany_top_in[2], chany_bottom_in[10], chany_top_in[10], chany_bottom_in[18], chany_top_in[18], chany_bottom_in[26], chany_top_in[26], chany_bottom_in[27], chany_top_in[27]}),
		.sram(mux_2level_tapbuf_size10_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size10_0_sram_inv[0:7]),
		.out(left_grid_right_width_0_height_0_subtile_0__pin_idata_2_34_));

	mux_2level_tapbuf_size10_mem mem_right_ipin_27 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_26_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size10_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size10_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size10_0_sram_inv[0:7]));

endmodule
// ----- END Verilog module for cby_1__1_ -----

//----- Default net type -----
`default_nettype wire




