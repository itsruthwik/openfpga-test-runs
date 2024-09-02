//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for Unique Connection Blocks[3][4]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Tue Aug 20 23:36:48 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for cby_3__4_ -----
module cby_3__4_(pReset,
                 prog_clk,
                 chany_bottom_in,
                 chany_top_in,
                 ccff_head,
                 chany_bottom_out,
                 chany_top_out,
                 right_grid_left_width_0_height_0_subtile_0__pin_my_ypos_0_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_0_2_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_0_6_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_0_10_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_0_14_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_0_18_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_0_22_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_0_26_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_0_30_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_0_34_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_1_3_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_1_7_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_1_11_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_1_15_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_1_19_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_1_23_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_1_27_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_1_31_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_2_0_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_2_4_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_2_8_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_2_12_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_2_16_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_2_20_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_2_24_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_2_28_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_2_32_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_3_1_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_3_5_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_3_9_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_3_13_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_3_17_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_3_21_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_3_25_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_3_29_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_3_33_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_4_2_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_4_6_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_4_10_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_4_14_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_4_18_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_4_22_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_4_26_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_4_30_,
                 right_grid_left_width_0_height_0_subtile_0__pin_idata_4_34_,
                 right_grid_left_width_0_height_0_subtile_0__pin_ivalid_3_0_,
                 right_grid_left_width_0_height_0_subtile_0__pin_ivch_2_0_,
                 right_grid_left_width_0_height_0_subtile_0__pin_iack_0_1_,
                 right_grid_left_width_0_height_0_subtile_0__pin_iack_2_1_,
                 right_grid_left_width_0_height_0_subtile_0__pin_iack_4_1_,
                 right_grid_left_width_0_height_0_subtile_0__pin_ilck_1_1_,
                 right_grid_left_width_0_height_0_subtile_0__pin_ilck_3_1_,
                 ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] pReset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:41] chany_bottom_in;
//----- INPUT PORTS -----
input [0:41] chany_top_in;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:41] chany_bottom_out;
//----- OUTPUT PORTS -----
output [0:41] chany_top_out;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_my_ypos_0_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_0_2_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_0_6_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_0_10_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_0_14_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_0_18_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_0_22_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_0_26_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_0_30_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_0_34_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_1_3_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_1_7_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_1_11_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_1_15_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_1_19_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_1_23_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_1_27_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_1_31_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_2_0_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_2_4_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_2_8_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_2_12_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_2_16_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_2_20_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_2_24_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_2_28_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_2_32_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_3_1_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_3_5_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_3_9_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_3_13_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_3_17_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_3_21_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_3_25_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_3_29_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_3_33_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_4_2_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_4_6_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_4_10_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_4_14_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_4_18_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_4_22_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_4_26_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_4_30_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_idata_4_34_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_ivalid_3_0_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_ivch_2_0_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_iack_0_1_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_iack_2_1_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_iack_4_1_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_ilck_1_1_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_ilck_3_1_;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


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
wire [0:0] mux_2level_tapbuf_size12_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_4_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_5_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_6_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_7_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_8_ccff_tail;
wire [0:0] mux_2level_tapbuf_size12_mem_9_ccff_tail;
wire [0:7] mux_2level_tapbuf_size14_0_sram;
wire [0:7] mux_2level_tapbuf_size14_0_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_10_sram;
wire [0:7] mux_2level_tapbuf_size14_10_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_11_sram;
wire [0:7] mux_2level_tapbuf_size14_11_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_12_sram;
wire [0:7] mux_2level_tapbuf_size14_12_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_13_sram;
wire [0:7] mux_2level_tapbuf_size14_13_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_14_sram;
wire [0:7] mux_2level_tapbuf_size14_14_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_15_sram;
wire [0:7] mux_2level_tapbuf_size14_15_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_16_sram;
wire [0:7] mux_2level_tapbuf_size14_16_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_1_sram;
wire [0:7] mux_2level_tapbuf_size14_1_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_2_sram;
wire [0:7] mux_2level_tapbuf_size14_2_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_3_sram;
wire [0:7] mux_2level_tapbuf_size14_3_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_4_sram;
wire [0:7] mux_2level_tapbuf_size14_4_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_5_sram;
wire [0:7] mux_2level_tapbuf_size14_5_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_6_sram;
wire [0:7] mux_2level_tapbuf_size14_6_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_7_sram;
wire [0:7] mux_2level_tapbuf_size14_7_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_8_sram;
wire [0:7] mux_2level_tapbuf_size14_8_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_9_sram;
wire [0:7] mux_2level_tapbuf_size14_9_sram_inv;
wire [0:0] mux_2level_tapbuf_size14_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_10_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_11_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_12_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_13_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_14_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_15_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_16_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_4_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_5_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_6_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_7_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_8_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_9_ccff_tail;

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
	assign chany_top_out[33] = chany_bottom_in[33];
// ----- Local connection due to Wire 34 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[34] = chany_bottom_in[34];
// ----- Local connection due to Wire 35 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[35] = chany_bottom_in[35];
// ----- Local connection due to Wire 36 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[36] = chany_bottom_in[36];
// ----- Local connection due to Wire 37 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[37] = chany_bottom_in[37];
// ----- Local connection due to Wire 38 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[38] = chany_bottom_in[38];
// ----- Local connection due to Wire 39 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[39] = chany_bottom_in[39];
// ----- Local connection due to Wire 40 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[40] = chany_bottom_in[40];
// ----- Local connection due to Wire 41 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_top_out[41] = chany_bottom_in[41];
// ----- Local connection due to Wire 42 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[0] = chany_top_in[0];
// ----- Local connection due to Wire 43 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[1] = chany_top_in[1];
// ----- Local connection due to Wire 44 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[2] = chany_top_in[2];
// ----- Local connection due to Wire 45 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[3] = chany_top_in[3];
// ----- Local connection due to Wire 46 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[4] = chany_top_in[4];
// ----- Local connection due to Wire 47 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[5] = chany_top_in[5];
// ----- Local connection due to Wire 48 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[6] = chany_top_in[6];
// ----- Local connection due to Wire 49 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[7] = chany_top_in[7];
// ----- Local connection due to Wire 50 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[8] = chany_top_in[8];
// ----- Local connection due to Wire 51 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[9] = chany_top_in[9];
// ----- Local connection due to Wire 52 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[10] = chany_top_in[10];
// ----- Local connection due to Wire 53 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[11] = chany_top_in[11];
// ----- Local connection due to Wire 54 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[12] = chany_top_in[12];
// ----- Local connection due to Wire 55 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[13] = chany_top_in[13];
// ----- Local connection due to Wire 56 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[14] = chany_top_in[14];
// ----- Local connection due to Wire 57 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[15] = chany_top_in[15];
// ----- Local connection due to Wire 58 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[16] = chany_top_in[16];
// ----- Local connection due to Wire 59 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[17] = chany_top_in[17];
// ----- Local connection due to Wire 60 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[18] = chany_top_in[18];
// ----- Local connection due to Wire 61 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[19] = chany_top_in[19];
// ----- Local connection due to Wire 62 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[20] = chany_top_in[20];
// ----- Local connection due to Wire 63 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[21] = chany_top_in[21];
// ----- Local connection due to Wire 64 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[22] = chany_top_in[22];
// ----- Local connection due to Wire 65 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[23] = chany_top_in[23];
// ----- Local connection due to Wire 66 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[24] = chany_top_in[24];
// ----- Local connection due to Wire 67 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[25] = chany_top_in[25];
// ----- Local connection due to Wire 68 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[26] = chany_top_in[26];
// ----- Local connection due to Wire 69 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[27] = chany_top_in[27];
// ----- Local connection due to Wire 70 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[28] = chany_top_in[28];
// ----- Local connection due to Wire 71 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[29] = chany_top_in[29];
// ----- Local connection due to Wire 72 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[30] = chany_top_in[30];
// ----- Local connection due to Wire 73 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[31] = chany_top_in[31];
// ----- Local connection due to Wire 74 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[32] = chany_top_in[32];
// ----- Local connection due to Wire 75 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[33] = chany_top_in[33];
// ----- Local connection due to Wire 76 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[34] = chany_top_in[34];
// ----- Local connection due to Wire 77 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[35] = chany_top_in[35];
// ----- Local connection due to Wire 78 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[36] = chany_top_in[36];
// ----- Local connection due to Wire 79 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[37] = chany_top_in[37];
// ----- Local connection due to Wire 80 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[38] = chany_top_in[38];
// ----- Local connection due to Wire 81 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[39] = chany_top_in[39];
// ----- Local connection due to Wire 82 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[40] = chany_top_in[40];
// ----- Local connection due to Wire 83 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chany_bottom_out[41] = chany_top_in[41];
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	mux_2level_tapbuf_size14 mux_left_ipin_0 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[6], chany_top_in[6], chany_bottom_in[12], chany_top_in[12], chany_bottom_in[18], chany_top_in[18], chany_bottom_in[24], chany_top_in[24], chany_bottom_in[30], chany_top_in[30], chany_bottom_in[36], chany_top_in[36]}),
		.sram(mux_2level_tapbuf_size14_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_0_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_my_ypos_0_));

	mux_2level_tapbuf_size14 mux_left_ipin_1 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[13], chany_top_in[13], chany_bottom_in[19], chany_top_in[19], chany_bottom_in[25], chany_top_in[25], chany_bottom_in[31], chany_top_in[31], chany_bottom_in[37], chany_top_in[37]}),
		.sram(mux_2level_tapbuf_size14_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_1_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_0_2_));

	mux_2level_tapbuf_size14 mux_left_ipin_2 (
		.in({chany_bottom_in[2], chany_top_in[2], chany_bottom_in[8], chany_top_in[8], chany_bottom_in[14], chany_top_in[14], chany_bottom_in[20], chany_top_in[20], chany_bottom_in[26], chany_top_in[26], chany_bottom_in[32], chany_top_in[32], chany_bottom_in[38], chany_top_in[38]}),
		.sram(mux_2level_tapbuf_size14_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_2_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_0_6_));

	mux_2level_tapbuf_size14 mux_left_ipin_3 (
		.in({chany_bottom_in[3], chany_top_in[3], chany_bottom_in[9], chany_top_in[9], chany_bottom_in[15], chany_top_in[15], chany_bottom_in[21], chany_top_in[21], chany_bottom_in[27], chany_top_in[27], chany_bottom_in[33], chany_top_in[33], chany_bottom_in[39], chany_top_in[39]}),
		.sram(mux_2level_tapbuf_size14_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_3_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_0_10_));

	mux_2level_tapbuf_size14 mux_left_ipin_10 (
		.in({chany_bottom_in[4], chany_top_in[4], chany_bottom_in[10], chany_top_in[10], chany_bottom_in[16], chany_top_in[16], chany_bottom_in[22], chany_top_in[22], chany_bottom_in[28], chany_top_in[28], chany_bottom_in[34], chany_top_in[34], chany_bottom_in[40], chany_top_in[40]}),
		.sram(mux_2level_tapbuf_size14_4_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_4_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_1_3_));

	mux_2level_tapbuf_size14 mux_left_ipin_11 (
		.in({chany_bottom_in[5], chany_top_in[5], chany_bottom_in[11], chany_top_in[11], chany_bottom_in[17], chany_top_in[17], chany_bottom_in[23], chany_top_in[23], chany_bottom_in[29], chany_top_in[29], chany_bottom_in[35], chany_top_in[35], chany_bottom_in[41], chany_top_in[41]}),
		.sram(mux_2level_tapbuf_size14_5_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_5_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_1_7_));

	mux_2level_tapbuf_size14 mux_left_ipin_18 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[6], chany_top_in[6], chany_bottom_in[12], chany_top_in[12], chany_bottom_in[18], chany_top_in[18], chany_bottom_in[24], chany_top_in[24], chany_bottom_in[30], chany_top_in[30], chany_bottom_in[36], chany_top_in[36]}),
		.sram(mux_2level_tapbuf_size14_6_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_6_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_2_0_));

	mux_2level_tapbuf_size14 mux_left_ipin_19 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[13], chany_top_in[13], chany_bottom_in[19], chany_top_in[19], chany_bottom_in[25], chany_top_in[25], chany_bottom_in[31], chany_top_in[31], chany_bottom_in[37], chany_top_in[37]}),
		.sram(mux_2level_tapbuf_size14_7_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_7_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_2_4_));

	mux_2level_tapbuf_size14 mux_left_ipin_20 (
		.in({chany_bottom_in[2], chany_top_in[2], chany_bottom_in[8], chany_top_in[8], chany_bottom_in[14], chany_top_in[14], chany_bottom_in[20], chany_top_in[20], chany_bottom_in[26], chany_top_in[26], chany_bottom_in[32], chany_top_in[32], chany_bottom_in[38], chany_top_in[38]}),
		.sram(mux_2level_tapbuf_size14_8_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_8_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_2_8_));

	mux_2level_tapbuf_size14 mux_left_ipin_27 (
		.in({chany_bottom_in[3], chany_top_in[3], chany_bottom_in[9], chany_top_in[9], chany_bottom_in[15], chany_top_in[15], chany_bottom_in[21], chany_top_in[21], chany_bottom_in[27], chany_top_in[27], chany_bottom_in[33], chany_top_in[33], chany_bottom_in[39], chany_top_in[39]}),
		.sram(mux_2level_tapbuf_size14_9_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_9_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_3_1_));

	mux_2level_tapbuf_size14 mux_left_ipin_28 (
		.in({chany_bottom_in[4], chany_top_in[4], chany_bottom_in[10], chany_top_in[10], chany_bottom_in[16], chany_top_in[16], chany_bottom_in[22], chany_top_in[22], chany_bottom_in[28], chany_top_in[28], chany_bottom_in[34], chany_top_in[34], chany_bottom_in[40], chany_top_in[40]}),
		.sram(mux_2level_tapbuf_size14_10_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_10_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_3_5_));

	mux_2level_tapbuf_size14 mux_left_ipin_29 (
		.in({chany_bottom_in[5], chany_top_in[5], chany_bottom_in[11], chany_top_in[11], chany_bottom_in[17], chany_top_in[17], chany_bottom_in[23], chany_top_in[23], chany_bottom_in[29], chany_top_in[29], chany_bottom_in[35], chany_top_in[35], chany_bottom_in[41], chany_top_in[41]}),
		.sram(mux_2level_tapbuf_size14_11_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_11_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_3_9_));

	mux_2level_tapbuf_size14 mux_left_ipin_36 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[6], chany_top_in[6], chany_bottom_in[12], chany_top_in[12], chany_bottom_in[18], chany_top_in[18], chany_bottom_in[24], chany_top_in[24], chany_bottom_in[30], chany_top_in[30], chany_bottom_in[36], chany_top_in[36]}),
		.sram(mux_2level_tapbuf_size14_12_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_12_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_4_2_));

	mux_2level_tapbuf_size14 mux_left_ipin_37 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[13], chany_top_in[13], chany_bottom_in[19], chany_top_in[19], chany_bottom_in[25], chany_top_in[25], chany_bottom_in[31], chany_top_in[31], chany_bottom_in[37], chany_top_in[37]}),
		.sram(mux_2level_tapbuf_size14_13_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_13_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_4_6_));

	mux_2level_tapbuf_size14 mux_left_ipin_38 (
		.in({chany_bottom_in[2], chany_top_in[2], chany_bottom_in[8], chany_top_in[8], chany_bottom_in[14], chany_top_in[14], chany_bottom_in[20], chany_top_in[20], chany_bottom_in[26], chany_top_in[26], chany_bottom_in[32], chany_top_in[32], chany_bottom_in[38], chany_top_in[38]}),
		.sram(mux_2level_tapbuf_size14_14_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_14_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_4_10_));

	mux_2level_tapbuf_size14 mux_left_ipin_45 (
		.in({chany_bottom_in[3], chany_top_in[3], chany_bottom_in[9], chany_top_in[9], chany_bottom_in[15], chany_top_in[15], chany_bottom_in[21], chany_top_in[21], chany_bottom_in[27], chany_top_in[27], chany_bottom_in[33], chany_top_in[33], chany_bottom_in[39], chany_top_in[39]}),
		.sram(mux_2level_tapbuf_size14_15_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_15_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_ivalid_3_0_));

	mux_2level_tapbuf_size14 mux_left_ipin_46 (
		.in({chany_bottom_in[4], chany_top_in[4], chany_bottom_in[10], chany_top_in[10], chany_bottom_in[16], chany_top_in[16], chany_bottom_in[22], chany_top_in[22], chany_bottom_in[28], chany_top_in[28], chany_bottom_in[34], chany_top_in[34], chany_bottom_in[40], chany_top_in[40]}),
		.sram(mux_2level_tapbuf_size14_16_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_16_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_ivch_2_0_));

	mux_2level_tapbuf_size14_mem mem_left_ipin_0 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(mux_2level_tapbuf_size14_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_0_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_left_ipin_1 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_1_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_left_ipin_2 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_2_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_left_ipin_3 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_3_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_left_ipin_10 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_4_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_4_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_left_ipin_11 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_5_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_5_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_left_ipin_18 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_11_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_6_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_6_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_left_ipin_19 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_7_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_7_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_7_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_left_ipin_20 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_7_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_8_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_8_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_8_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_left_ipin_27 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_17_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_9_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_9_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_9_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_left_ipin_28 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_9_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_10_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_10_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_10_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_left_ipin_29 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_10_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_11_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_11_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_11_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_left_ipin_36 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_23_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_12_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_12_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_12_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_left_ipin_37 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_12_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_13_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_13_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_13_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_left_ipin_38 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_13_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_14_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_14_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_14_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_left_ipin_45 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_29_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_15_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_15_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_15_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_left_ipin_46 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_15_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_16_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_16_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_16_sram_inv[0:7]));

	mux_2level_tapbuf_size12 mux_left_ipin_4 (
		.in({chany_bottom_in[4], chany_top_in[4], chany_bottom_in[11], chany_top_in[11], chany_bottom_in[18], chany_top_in[18], chany_bottom_in[25], chany_top_in[25], chany_bottom_in[32], chany_top_in[32], chany_bottom_in[39], chany_top_in[39]}),
		.sram(mux_2level_tapbuf_size12_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_0_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_0_14_));

	mux_2level_tapbuf_size12 mux_left_ipin_5 (
		.in({chany_bottom_in[5], chany_top_in[5], chany_bottom_in[12], chany_top_in[12], chany_bottom_in[19], chany_top_in[19], chany_bottom_in[26], chany_top_in[26], chany_bottom_in[33], chany_top_in[33], chany_bottom_in[40], chany_top_in[40]}),
		.sram(mux_2level_tapbuf_size12_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_1_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_0_18_));

	mux_2level_tapbuf_size12 mux_left_ipin_6 (
		.in({chany_bottom_in[6], chany_top_in[6], chany_bottom_in[13], chany_top_in[13], chany_bottom_in[20], chany_top_in[20], chany_bottom_in[27], chany_top_in[27], chany_bottom_in[34], chany_top_in[34], chany_bottom_in[41], chany_top_in[41]}),
		.sram(mux_2level_tapbuf_size12_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_2_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_0_22_));

	mux_2level_tapbuf_size12 mux_left_ipin_7 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[14], chany_top_in[14], chany_bottom_in[21], chany_top_in[21], chany_bottom_in[28], chany_top_in[28], chany_bottom_in[35], chany_top_in[35]}),
		.sram(mux_2level_tapbuf_size12_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_3_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_0_26_));

	mux_2level_tapbuf_size12 mux_left_ipin_8 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[8], chany_top_in[8], chany_bottom_in[15], chany_top_in[15], chany_bottom_in[22], chany_top_in[22], chany_bottom_in[29], chany_top_in[29], chany_bottom_in[36], chany_top_in[36]}),
		.sram(mux_2level_tapbuf_size12_4_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_4_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_0_30_));

	mux_2level_tapbuf_size12 mux_left_ipin_9 (
		.in({chany_bottom_in[2], chany_top_in[2], chany_bottom_in[9], chany_top_in[9], chany_bottom_in[16], chany_top_in[16], chany_bottom_in[23], chany_top_in[23], chany_bottom_in[30], chany_top_in[30], chany_bottom_in[37], chany_top_in[37]}),
		.sram(mux_2level_tapbuf_size12_5_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_5_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_0_34_));

	mux_2level_tapbuf_size12 mux_left_ipin_12 (
		.in({chany_bottom_in[5], chany_top_in[5], chany_bottom_in[12], chany_top_in[12], chany_bottom_in[19], chany_top_in[19], chany_bottom_in[26], chany_top_in[26], chany_bottom_in[33], chany_top_in[33], chany_bottom_in[40], chany_top_in[40]}),
		.sram(mux_2level_tapbuf_size12_6_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_6_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_1_11_));

	mux_2level_tapbuf_size12 mux_left_ipin_13 (
		.in({chany_bottom_in[6], chany_top_in[6], chany_bottom_in[13], chany_top_in[13], chany_bottom_in[20], chany_top_in[20], chany_bottom_in[27], chany_top_in[27], chany_bottom_in[34], chany_top_in[34], chany_bottom_in[41], chany_top_in[41]}),
		.sram(mux_2level_tapbuf_size12_7_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_7_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_1_15_));

	mux_2level_tapbuf_size12 mux_left_ipin_14 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[14], chany_top_in[14], chany_bottom_in[21], chany_top_in[21], chany_bottom_in[28], chany_top_in[28], chany_bottom_in[35], chany_top_in[35]}),
		.sram(mux_2level_tapbuf_size12_8_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_8_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_1_19_));

	mux_2level_tapbuf_size12 mux_left_ipin_15 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[8], chany_top_in[8], chany_bottom_in[15], chany_top_in[15], chany_bottom_in[22], chany_top_in[22], chany_bottom_in[29], chany_top_in[29], chany_bottom_in[36], chany_top_in[36]}),
		.sram(mux_2level_tapbuf_size12_9_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_9_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_1_23_));

	mux_2level_tapbuf_size12 mux_left_ipin_16 (
		.in({chany_bottom_in[2], chany_top_in[2], chany_bottom_in[9], chany_top_in[9], chany_bottom_in[16], chany_top_in[16], chany_bottom_in[23], chany_top_in[23], chany_bottom_in[30], chany_top_in[30], chany_bottom_in[37], chany_top_in[37]}),
		.sram(mux_2level_tapbuf_size12_10_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_10_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_1_27_));

	mux_2level_tapbuf_size12 mux_left_ipin_17 (
		.in({chany_bottom_in[3], chany_top_in[3], chany_bottom_in[10], chany_top_in[10], chany_bottom_in[17], chany_top_in[17], chany_bottom_in[24], chany_top_in[24], chany_bottom_in[31], chany_top_in[31], chany_bottom_in[38], chany_top_in[38]}),
		.sram(mux_2level_tapbuf_size12_11_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_11_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_1_31_));

	mux_2level_tapbuf_size12 mux_left_ipin_21 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[14], chany_top_in[14], chany_bottom_in[21], chany_top_in[21], chany_bottom_in[28], chany_top_in[28], chany_bottom_in[35], chany_top_in[35]}),
		.sram(mux_2level_tapbuf_size12_12_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_12_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_2_12_));

	mux_2level_tapbuf_size12 mux_left_ipin_22 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[8], chany_top_in[8], chany_bottom_in[15], chany_top_in[15], chany_bottom_in[22], chany_top_in[22], chany_bottom_in[29], chany_top_in[29], chany_bottom_in[36], chany_top_in[36]}),
		.sram(mux_2level_tapbuf_size12_13_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_13_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_2_16_));

	mux_2level_tapbuf_size12 mux_left_ipin_23 (
		.in({chany_bottom_in[2], chany_top_in[2], chany_bottom_in[9], chany_top_in[9], chany_bottom_in[16], chany_top_in[16], chany_bottom_in[23], chany_top_in[23], chany_bottom_in[30], chany_top_in[30], chany_bottom_in[37], chany_top_in[37]}),
		.sram(mux_2level_tapbuf_size12_14_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_14_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_2_20_));

	mux_2level_tapbuf_size12 mux_left_ipin_24 (
		.in({chany_bottom_in[3], chany_top_in[3], chany_bottom_in[10], chany_top_in[10], chany_bottom_in[17], chany_top_in[17], chany_bottom_in[24], chany_top_in[24], chany_bottom_in[31], chany_top_in[31], chany_bottom_in[38], chany_top_in[38]}),
		.sram(mux_2level_tapbuf_size12_15_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_15_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_2_24_));

	mux_2level_tapbuf_size12 mux_left_ipin_25 (
		.in({chany_bottom_in[4], chany_top_in[4], chany_bottom_in[11], chany_top_in[11], chany_bottom_in[18], chany_top_in[18], chany_bottom_in[25], chany_top_in[25], chany_bottom_in[32], chany_top_in[32], chany_bottom_in[39], chany_top_in[39]}),
		.sram(mux_2level_tapbuf_size12_16_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_16_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_2_28_));

	mux_2level_tapbuf_size12 mux_left_ipin_26 (
		.in({chany_bottom_in[5], chany_top_in[5], chany_bottom_in[12], chany_top_in[12], chany_bottom_in[19], chany_top_in[19], chany_bottom_in[26], chany_top_in[26], chany_bottom_in[33], chany_top_in[33], chany_bottom_in[40], chany_top_in[40]}),
		.sram(mux_2level_tapbuf_size12_17_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_17_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_2_32_));

	mux_2level_tapbuf_size12 mux_left_ipin_30 (
		.in({chany_bottom_in[2], chany_top_in[2], chany_bottom_in[9], chany_top_in[9], chany_bottom_in[16], chany_top_in[16], chany_bottom_in[23], chany_top_in[23], chany_bottom_in[30], chany_top_in[30], chany_bottom_in[37], chany_top_in[37]}),
		.sram(mux_2level_tapbuf_size12_18_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_18_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_3_13_));

	mux_2level_tapbuf_size12 mux_left_ipin_31 (
		.in({chany_bottom_in[3], chany_top_in[3], chany_bottom_in[10], chany_top_in[10], chany_bottom_in[17], chany_top_in[17], chany_bottom_in[24], chany_top_in[24], chany_bottom_in[31], chany_top_in[31], chany_bottom_in[38], chany_top_in[38]}),
		.sram(mux_2level_tapbuf_size12_19_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_19_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_3_17_));

	mux_2level_tapbuf_size12 mux_left_ipin_32 (
		.in({chany_bottom_in[4], chany_top_in[4], chany_bottom_in[11], chany_top_in[11], chany_bottom_in[18], chany_top_in[18], chany_bottom_in[25], chany_top_in[25], chany_bottom_in[32], chany_top_in[32], chany_bottom_in[39], chany_top_in[39]}),
		.sram(mux_2level_tapbuf_size12_20_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_20_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_3_21_));

	mux_2level_tapbuf_size12 mux_left_ipin_33 (
		.in({chany_bottom_in[5], chany_top_in[5], chany_bottom_in[12], chany_top_in[12], chany_bottom_in[19], chany_top_in[19], chany_bottom_in[26], chany_top_in[26], chany_bottom_in[33], chany_top_in[33], chany_bottom_in[40], chany_top_in[40]}),
		.sram(mux_2level_tapbuf_size12_21_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_21_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_3_25_));

	mux_2level_tapbuf_size12 mux_left_ipin_34 (
		.in({chany_bottom_in[6], chany_top_in[6], chany_bottom_in[13], chany_top_in[13], chany_bottom_in[20], chany_top_in[20], chany_bottom_in[27], chany_top_in[27], chany_bottom_in[34], chany_top_in[34], chany_bottom_in[41], chany_top_in[41]}),
		.sram(mux_2level_tapbuf_size12_22_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_22_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_3_29_));

	mux_2level_tapbuf_size12 mux_left_ipin_35 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[14], chany_top_in[14], chany_bottom_in[21], chany_top_in[21], chany_bottom_in[28], chany_top_in[28], chany_bottom_in[35], chany_top_in[35]}),
		.sram(mux_2level_tapbuf_size12_23_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_23_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_3_33_));

	mux_2level_tapbuf_size12 mux_left_ipin_39 (
		.in({chany_bottom_in[4], chany_top_in[4], chany_bottom_in[11], chany_top_in[11], chany_bottom_in[18], chany_top_in[18], chany_bottom_in[25], chany_top_in[25], chany_bottom_in[32], chany_top_in[32], chany_bottom_in[39], chany_top_in[39]}),
		.sram(mux_2level_tapbuf_size12_24_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_24_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_4_14_));

	mux_2level_tapbuf_size12 mux_left_ipin_40 (
		.in({chany_bottom_in[5], chany_top_in[5], chany_bottom_in[12], chany_top_in[12], chany_bottom_in[19], chany_top_in[19], chany_bottom_in[26], chany_top_in[26], chany_bottom_in[33], chany_top_in[33], chany_bottom_in[40], chany_top_in[40]}),
		.sram(mux_2level_tapbuf_size12_25_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_25_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_4_18_));

	mux_2level_tapbuf_size12 mux_left_ipin_41 (
		.in({chany_bottom_in[6], chany_top_in[6], chany_bottom_in[13], chany_top_in[13], chany_bottom_in[20], chany_top_in[20], chany_bottom_in[27], chany_top_in[27], chany_bottom_in[34], chany_top_in[34], chany_bottom_in[41], chany_top_in[41]}),
		.sram(mux_2level_tapbuf_size12_26_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_26_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_4_22_));

	mux_2level_tapbuf_size12 mux_left_ipin_42 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[14], chany_top_in[14], chany_bottom_in[21], chany_top_in[21], chany_bottom_in[28], chany_top_in[28], chany_bottom_in[35], chany_top_in[35]}),
		.sram(mux_2level_tapbuf_size12_27_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_27_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_4_26_));

	mux_2level_tapbuf_size12 mux_left_ipin_43 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[8], chany_top_in[8], chany_bottom_in[15], chany_top_in[15], chany_bottom_in[22], chany_top_in[22], chany_bottom_in[29], chany_top_in[29], chany_bottom_in[36], chany_top_in[36]}),
		.sram(mux_2level_tapbuf_size12_28_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_28_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_4_30_));

	mux_2level_tapbuf_size12 mux_left_ipin_44 (
		.in({chany_bottom_in[2], chany_top_in[2], chany_bottom_in[9], chany_top_in[9], chany_bottom_in[16], chany_top_in[16], chany_bottom_in[23], chany_top_in[23], chany_bottom_in[30], chany_top_in[30], chany_bottom_in[37], chany_top_in[37]}),
		.sram(mux_2level_tapbuf_size12_29_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_29_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_idata_4_34_));

	mux_2level_tapbuf_size12 mux_left_ipin_47 (
		.in({chany_bottom_in[5], chany_top_in[5], chany_bottom_in[12], chany_top_in[12], chany_bottom_in[19], chany_top_in[19], chany_bottom_in[26], chany_top_in[26], chany_bottom_in[33], chany_top_in[33], chany_bottom_in[40], chany_top_in[40]}),
		.sram(mux_2level_tapbuf_size12_30_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_30_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_iack_0_1_));

	mux_2level_tapbuf_size12 mux_left_ipin_48 (
		.in({chany_bottom_in[6], chany_top_in[6], chany_bottom_in[13], chany_top_in[13], chany_bottom_in[20], chany_top_in[20], chany_bottom_in[27], chany_top_in[27], chany_bottom_in[34], chany_top_in[34], chany_bottom_in[41], chany_top_in[41]}),
		.sram(mux_2level_tapbuf_size12_31_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_31_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_iack_2_1_));

	mux_2level_tapbuf_size12 mux_left_ipin_49 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[14], chany_top_in[14], chany_bottom_in[21], chany_top_in[21], chany_bottom_in[28], chany_top_in[28], chany_bottom_in[35], chany_top_in[35]}),
		.sram(mux_2level_tapbuf_size12_32_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_32_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_iack_4_1_));

	mux_2level_tapbuf_size12 mux_left_ipin_50 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[8], chany_top_in[8], chany_bottom_in[15], chany_top_in[15], chany_bottom_in[22], chany_top_in[22], chany_bottom_in[29], chany_top_in[29], chany_bottom_in[36], chany_top_in[36]}),
		.sram(mux_2level_tapbuf_size12_33_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_33_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_ilck_1_1_));

	mux_2level_tapbuf_size12 mux_left_ipin_51 (
		.in({chany_bottom_in[2], chany_top_in[2], chany_bottom_in[9], chany_top_in[9], chany_bottom_in[16], chany_top_in[16], chany_bottom_in[23], chany_top_in[23], chany_bottom_in[30], chany_top_in[30], chany_bottom_in[37], chany_top_in[37]}),
		.sram(mux_2level_tapbuf_size12_34_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_34_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_0__pin_ilck_3_1_));

	mux_2level_tapbuf_size12_mem mem_left_ipin_4 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_0_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_5 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_1_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_6 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_2_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_7 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_3_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_8 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_4_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_4_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_9 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_5_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_5_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_12 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_6_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_6_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_13 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_7_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_7_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_7_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_14 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_7_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_8_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_8_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_8_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_15 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_8_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_9_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_9_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_9_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_16 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_9_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_10_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_10_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_10_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_17 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_10_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_11_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_11_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_11_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_21 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_8_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_12_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_12_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_12_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_22 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_12_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_13_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_13_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_13_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_23 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_13_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_14_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_14_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_14_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_24 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_14_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_15_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_15_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_15_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_25 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_15_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_16_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_16_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_16_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_26 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_16_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_17_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_17_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_17_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_30 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_11_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_18_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_18_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_18_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_31 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_18_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_19_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_19_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_19_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_32 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_19_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_20_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_20_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_20_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_33 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_20_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_21_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_21_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_21_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_34 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_21_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_22_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_22_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_22_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_35 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_22_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_23_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_23_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_23_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_39 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_14_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_24_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_24_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_24_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_40 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_24_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_25_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_25_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_25_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_41 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_25_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_26_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_26_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_26_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_42 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_26_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_27_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_27_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_27_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_43 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_27_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_28_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_28_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_28_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_44 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_28_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_29_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_29_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_29_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_47 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_16_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_30_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_30_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_30_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_48 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_30_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_31_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_31_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_31_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_49 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_31_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_32_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_32_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_32_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_50 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_32_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_33_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_33_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_33_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_left_ipin_51 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_33_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_34_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_34_sram_inv[0:7]));

endmodule
// ----- END Verilog module for cby_3__4_ -----

//----- Default net type -----
`default_nettype wire




