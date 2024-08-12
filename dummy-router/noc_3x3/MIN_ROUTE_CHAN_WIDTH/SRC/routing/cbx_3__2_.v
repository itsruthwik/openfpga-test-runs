//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for Unique Connection Blocks[3][2]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Sun Aug 11 23:03:55 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for cbx_3__2_ -----
module cbx_3__2_(pReset,
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
                 ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] pReset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:103] chanx_left_in;
//----- INPUT PORTS -----
input [0:103] chanx_right_in;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:103] chanx_left_out;
//----- OUTPUT PORTS -----
output [0:103] chanx_right_out;
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
output [0:0] ccff_tail;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:13] mux_2level_tapbuf_size36_0_sram;
wire [0:13] mux_2level_tapbuf_size36_0_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_10_sram;
wire [0:13] mux_2level_tapbuf_size36_10_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_11_sram;
wire [0:13] mux_2level_tapbuf_size36_11_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_12_sram;
wire [0:13] mux_2level_tapbuf_size36_12_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_13_sram;
wire [0:13] mux_2level_tapbuf_size36_13_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_14_sram;
wire [0:13] mux_2level_tapbuf_size36_14_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_15_sram;
wire [0:13] mux_2level_tapbuf_size36_15_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_16_sram;
wire [0:13] mux_2level_tapbuf_size36_16_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_17_sram;
wire [0:13] mux_2level_tapbuf_size36_17_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_18_sram;
wire [0:13] mux_2level_tapbuf_size36_18_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_19_sram;
wire [0:13] mux_2level_tapbuf_size36_19_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_1_sram;
wire [0:13] mux_2level_tapbuf_size36_1_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_20_sram;
wire [0:13] mux_2level_tapbuf_size36_20_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_21_sram;
wire [0:13] mux_2level_tapbuf_size36_21_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_22_sram;
wire [0:13] mux_2level_tapbuf_size36_22_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_23_sram;
wire [0:13] mux_2level_tapbuf_size36_23_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_24_sram;
wire [0:13] mux_2level_tapbuf_size36_24_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_25_sram;
wire [0:13] mux_2level_tapbuf_size36_25_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_26_sram;
wire [0:13] mux_2level_tapbuf_size36_26_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_27_sram;
wire [0:13] mux_2level_tapbuf_size36_27_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_28_sram;
wire [0:13] mux_2level_tapbuf_size36_28_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_29_sram;
wire [0:13] mux_2level_tapbuf_size36_29_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_2_sram;
wire [0:13] mux_2level_tapbuf_size36_2_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_30_sram;
wire [0:13] mux_2level_tapbuf_size36_30_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_31_sram;
wire [0:13] mux_2level_tapbuf_size36_31_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_32_sram;
wire [0:13] mux_2level_tapbuf_size36_32_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_33_sram;
wire [0:13] mux_2level_tapbuf_size36_33_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_34_sram;
wire [0:13] mux_2level_tapbuf_size36_34_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_35_sram;
wire [0:13] mux_2level_tapbuf_size36_35_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_36_sram;
wire [0:13] mux_2level_tapbuf_size36_36_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_37_sram;
wire [0:13] mux_2level_tapbuf_size36_37_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_38_sram;
wire [0:13] mux_2level_tapbuf_size36_38_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_39_sram;
wire [0:13] mux_2level_tapbuf_size36_39_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_3_sram;
wire [0:13] mux_2level_tapbuf_size36_3_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_40_sram;
wire [0:13] mux_2level_tapbuf_size36_40_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_41_sram;
wire [0:13] mux_2level_tapbuf_size36_41_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_42_sram;
wire [0:13] mux_2level_tapbuf_size36_42_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_43_sram;
wire [0:13] mux_2level_tapbuf_size36_43_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_44_sram;
wire [0:13] mux_2level_tapbuf_size36_44_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_45_sram;
wire [0:13] mux_2level_tapbuf_size36_45_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_46_sram;
wire [0:13] mux_2level_tapbuf_size36_46_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_47_sram;
wire [0:13] mux_2level_tapbuf_size36_47_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_48_sram;
wire [0:13] mux_2level_tapbuf_size36_48_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_49_sram;
wire [0:13] mux_2level_tapbuf_size36_49_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_4_sram;
wire [0:13] mux_2level_tapbuf_size36_4_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_50_sram;
wire [0:13] mux_2level_tapbuf_size36_50_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_51_sram;
wire [0:13] mux_2level_tapbuf_size36_51_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_5_sram;
wire [0:13] mux_2level_tapbuf_size36_5_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_6_sram;
wire [0:13] mux_2level_tapbuf_size36_6_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_7_sram;
wire [0:13] mux_2level_tapbuf_size36_7_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_8_sram;
wire [0:13] mux_2level_tapbuf_size36_8_sram_inv;
wire [0:13] mux_2level_tapbuf_size36_9_sram;
wire [0:13] mux_2level_tapbuf_size36_9_sram_inv;
wire [0:0] mux_2level_tapbuf_size36_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_10_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_11_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_12_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_13_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_14_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_15_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_16_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_17_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_18_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_19_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_20_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_21_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_22_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_23_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_24_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_25_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_26_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_27_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_28_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_29_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_30_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_31_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_32_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_33_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_34_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_35_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_36_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_37_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_38_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_39_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_40_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_41_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_42_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_43_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_44_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_45_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_46_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_47_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_48_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_49_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_4_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_50_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_5_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_6_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_7_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_8_ccff_tail;
wire [0:0] mux_2level_tapbuf_size36_mem_9_ccff_tail;

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
	assign chanx_right_out[33] = chanx_left_in[33];
// ----- Local connection due to Wire 34 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[34] = chanx_left_in[34];
// ----- Local connection due to Wire 35 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[35] = chanx_left_in[35];
// ----- Local connection due to Wire 36 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[36] = chanx_left_in[36];
// ----- Local connection due to Wire 37 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[37] = chanx_left_in[37];
// ----- Local connection due to Wire 38 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[38] = chanx_left_in[38];
// ----- Local connection due to Wire 39 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[39] = chanx_left_in[39];
// ----- Local connection due to Wire 40 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[40] = chanx_left_in[40];
// ----- Local connection due to Wire 41 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[41] = chanx_left_in[41];
// ----- Local connection due to Wire 42 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[42] = chanx_left_in[42];
// ----- Local connection due to Wire 43 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[43] = chanx_left_in[43];
// ----- Local connection due to Wire 44 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[44] = chanx_left_in[44];
// ----- Local connection due to Wire 45 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[45] = chanx_left_in[45];
// ----- Local connection due to Wire 46 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[46] = chanx_left_in[46];
// ----- Local connection due to Wire 47 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[47] = chanx_left_in[47];
// ----- Local connection due to Wire 48 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[48] = chanx_left_in[48];
// ----- Local connection due to Wire 49 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[49] = chanx_left_in[49];
// ----- Local connection due to Wire 50 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[50] = chanx_left_in[50];
// ----- Local connection due to Wire 51 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[51] = chanx_left_in[51];
// ----- Local connection due to Wire 52 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[52] = chanx_left_in[52];
// ----- Local connection due to Wire 53 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[53] = chanx_left_in[53];
// ----- Local connection due to Wire 54 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[54] = chanx_left_in[54];
// ----- Local connection due to Wire 55 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[55] = chanx_left_in[55];
// ----- Local connection due to Wire 56 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[56] = chanx_left_in[56];
// ----- Local connection due to Wire 57 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[57] = chanx_left_in[57];
// ----- Local connection due to Wire 58 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[58] = chanx_left_in[58];
// ----- Local connection due to Wire 59 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[59] = chanx_left_in[59];
// ----- Local connection due to Wire 60 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[60] = chanx_left_in[60];
// ----- Local connection due to Wire 61 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[61] = chanx_left_in[61];
// ----- Local connection due to Wire 62 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[62] = chanx_left_in[62];
// ----- Local connection due to Wire 63 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[63] = chanx_left_in[63];
// ----- Local connection due to Wire 64 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[64] = chanx_left_in[64];
// ----- Local connection due to Wire 65 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[65] = chanx_left_in[65];
// ----- Local connection due to Wire 66 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[66] = chanx_left_in[66];
// ----- Local connection due to Wire 67 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[67] = chanx_left_in[67];
// ----- Local connection due to Wire 68 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[68] = chanx_left_in[68];
// ----- Local connection due to Wire 69 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[69] = chanx_left_in[69];
// ----- Local connection due to Wire 70 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[70] = chanx_left_in[70];
// ----- Local connection due to Wire 71 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[71] = chanx_left_in[71];
// ----- Local connection due to Wire 72 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[72] = chanx_left_in[72];
// ----- Local connection due to Wire 73 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[73] = chanx_left_in[73];
// ----- Local connection due to Wire 74 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[74] = chanx_left_in[74];
// ----- Local connection due to Wire 75 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[75] = chanx_left_in[75];
// ----- Local connection due to Wire 76 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[76] = chanx_left_in[76];
// ----- Local connection due to Wire 77 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[77] = chanx_left_in[77];
// ----- Local connection due to Wire 78 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[78] = chanx_left_in[78];
// ----- Local connection due to Wire 79 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[79] = chanx_left_in[79];
// ----- Local connection due to Wire 80 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[80] = chanx_left_in[80];
// ----- Local connection due to Wire 81 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[81] = chanx_left_in[81];
// ----- Local connection due to Wire 82 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[82] = chanx_left_in[82];
// ----- Local connection due to Wire 83 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[83] = chanx_left_in[83];
// ----- Local connection due to Wire 84 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[84] = chanx_left_in[84];
// ----- Local connection due to Wire 85 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[85] = chanx_left_in[85];
// ----- Local connection due to Wire 86 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[86] = chanx_left_in[86];
// ----- Local connection due to Wire 87 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[87] = chanx_left_in[87];
// ----- Local connection due to Wire 88 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[88] = chanx_left_in[88];
// ----- Local connection due to Wire 89 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[89] = chanx_left_in[89];
// ----- Local connection due to Wire 90 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[90] = chanx_left_in[90];
// ----- Local connection due to Wire 91 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[91] = chanx_left_in[91];
// ----- Local connection due to Wire 92 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[92] = chanx_left_in[92];
// ----- Local connection due to Wire 93 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[93] = chanx_left_in[93];
// ----- Local connection due to Wire 94 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[94] = chanx_left_in[94];
// ----- Local connection due to Wire 95 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[95] = chanx_left_in[95];
// ----- Local connection due to Wire 96 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[96] = chanx_left_in[96];
// ----- Local connection due to Wire 97 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[97] = chanx_left_in[97];
// ----- Local connection due to Wire 98 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[98] = chanx_left_in[98];
// ----- Local connection due to Wire 99 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[99] = chanx_left_in[99];
// ----- Local connection due to Wire 100 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[100] = chanx_left_in[100];
// ----- Local connection due to Wire 101 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[101] = chanx_left_in[101];
// ----- Local connection due to Wire 102 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[102] = chanx_left_in[102];
// ----- Local connection due to Wire 103 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[103] = chanx_left_in[103];
// ----- Local connection due to Wire 104 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[0] = chanx_right_in[0];
// ----- Local connection due to Wire 105 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[1] = chanx_right_in[1];
// ----- Local connection due to Wire 106 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[2] = chanx_right_in[2];
// ----- Local connection due to Wire 107 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[3] = chanx_right_in[3];
// ----- Local connection due to Wire 108 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[4] = chanx_right_in[4];
// ----- Local connection due to Wire 109 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[5] = chanx_right_in[5];
// ----- Local connection due to Wire 110 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[6] = chanx_right_in[6];
// ----- Local connection due to Wire 111 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[7] = chanx_right_in[7];
// ----- Local connection due to Wire 112 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[8] = chanx_right_in[8];
// ----- Local connection due to Wire 113 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[9] = chanx_right_in[9];
// ----- Local connection due to Wire 114 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[10] = chanx_right_in[10];
// ----- Local connection due to Wire 115 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[11] = chanx_right_in[11];
// ----- Local connection due to Wire 116 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[12] = chanx_right_in[12];
// ----- Local connection due to Wire 117 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[13] = chanx_right_in[13];
// ----- Local connection due to Wire 118 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[14] = chanx_right_in[14];
// ----- Local connection due to Wire 119 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[15] = chanx_right_in[15];
// ----- Local connection due to Wire 120 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[16] = chanx_right_in[16];
// ----- Local connection due to Wire 121 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[17] = chanx_right_in[17];
// ----- Local connection due to Wire 122 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[18] = chanx_right_in[18];
// ----- Local connection due to Wire 123 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[19] = chanx_right_in[19];
// ----- Local connection due to Wire 124 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[20] = chanx_right_in[20];
// ----- Local connection due to Wire 125 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[21] = chanx_right_in[21];
// ----- Local connection due to Wire 126 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[22] = chanx_right_in[22];
// ----- Local connection due to Wire 127 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[23] = chanx_right_in[23];
// ----- Local connection due to Wire 128 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[24] = chanx_right_in[24];
// ----- Local connection due to Wire 129 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[25] = chanx_right_in[25];
// ----- Local connection due to Wire 130 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[26] = chanx_right_in[26];
// ----- Local connection due to Wire 131 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[27] = chanx_right_in[27];
// ----- Local connection due to Wire 132 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[28] = chanx_right_in[28];
// ----- Local connection due to Wire 133 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[29] = chanx_right_in[29];
// ----- Local connection due to Wire 134 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[30] = chanx_right_in[30];
// ----- Local connection due to Wire 135 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[31] = chanx_right_in[31];
// ----- Local connection due to Wire 136 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[32] = chanx_right_in[32];
// ----- Local connection due to Wire 137 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[33] = chanx_right_in[33];
// ----- Local connection due to Wire 138 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[34] = chanx_right_in[34];
// ----- Local connection due to Wire 139 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[35] = chanx_right_in[35];
// ----- Local connection due to Wire 140 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[36] = chanx_right_in[36];
// ----- Local connection due to Wire 141 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[37] = chanx_right_in[37];
// ----- Local connection due to Wire 142 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[38] = chanx_right_in[38];
// ----- Local connection due to Wire 143 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[39] = chanx_right_in[39];
// ----- Local connection due to Wire 144 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[40] = chanx_right_in[40];
// ----- Local connection due to Wire 145 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[41] = chanx_right_in[41];
// ----- Local connection due to Wire 146 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[42] = chanx_right_in[42];
// ----- Local connection due to Wire 147 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[43] = chanx_right_in[43];
// ----- Local connection due to Wire 148 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[44] = chanx_right_in[44];
// ----- Local connection due to Wire 149 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[45] = chanx_right_in[45];
// ----- Local connection due to Wire 150 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[46] = chanx_right_in[46];
// ----- Local connection due to Wire 151 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[47] = chanx_right_in[47];
// ----- Local connection due to Wire 152 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[48] = chanx_right_in[48];
// ----- Local connection due to Wire 153 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[49] = chanx_right_in[49];
// ----- Local connection due to Wire 154 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[50] = chanx_right_in[50];
// ----- Local connection due to Wire 155 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[51] = chanx_right_in[51];
// ----- Local connection due to Wire 156 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[52] = chanx_right_in[52];
// ----- Local connection due to Wire 157 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[53] = chanx_right_in[53];
// ----- Local connection due to Wire 158 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[54] = chanx_right_in[54];
// ----- Local connection due to Wire 159 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[55] = chanx_right_in[55];
// ----- Local connection due to Wire 160 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[56] = chanx_right_in[56];
// ----- Local connection due to Wire 161 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[57] = chanx_right_in[57];
// ----- Local connection due to Wire 162 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[58] = chanx_right_in[58];
// ----- Local connection due to Wire 163 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[59] = chanx_right_in[59];
// ----- Local connection due to Wire 164 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[60] = chanx_right_in[60];
// ----- Local connection due to Wire 165 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[61] = chanx_right_in[61];
// ----- Local connection due to Wire 166 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[62] = chanx_right_in[62];
// ----- Local connection due to Wire 167 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[63] = chanx_right_in[63];
// ----- Local connection due to Wire 168 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[64] = chanx_right_in[64];
// ----- Local connection due to Wire 169 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[65] = chanx_right_in[65];
// ----- Local connection due to Wire 170 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[66] = chanx_right_in[66];
// ----- Local connection due to Wire 171 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[67] = chanx_right_in[67];
// ----- Local connection due to Wire 172 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[68] = chanx_right_in[68];
// ----- Local connection due to Wire 173 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[69] = chanx_right_in[69];
// ----- Local connection due to Wire 174 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[70] = chanx_right_in[70];
// ----- Local connection due to Wire 175 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[71] = chanx_right_in[71];
// ----- Local connection due to Wire 176 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[72] = chanx_right_in[72];
// ----- Local connection due to Wire 177 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[73] = chanx_right_in[73];
// ----- Local connection due to Wire 178 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[74] = chanx_right_in[74];
// ----- Local connection due to Wire 179 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[75] = chanx_right_in[75];
// ----- Local connection due to Wire 180 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[76] = chanx_right_in[76];
// ----- Local connection due to Wire 181 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[77] = chanx_right_in[77];
// ----- Local connection due to Wire 182 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[78] = chanx_right_in[78];
// ----- Local connection due to Wire 183 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[79] = chanx_right_in[79];
// ----- Local connection due to Wire 184 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[80] = chanx_right_in[80];
// ----- Local connection due to Wire 185 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[81] = chanx_right_in[81];
// ----- Local connection due to Wire 186 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[82] = chanx_right_in[82];
// ----- Local connection due to Wire 187 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[83] = chanx_right_in[83];
// ----- Local connection due to Wire 188 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[84] = chanx_right_in[84];
// ----- Local connection due to Wire 189 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[85] = chanx_right_in[85];
// ----- Local connection due to Wire 190 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[86] = chanx_right_in[86];
// ----- Local connection due to Wire 191 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[87] = chanx_right_in[87];
// ----- Local connection due to Wire 192 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[88] = chanx_right_in[88];
// ----- Local connection due to Wire 193 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[89] = chanx_right_in[89];
// ----- Local connection due to Wire 194 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[90] = chanx_right_in[90];
// ----- Local connection due to Wire 195 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[91] = chanx_right_in[91];
// ----- Local connection due to Wire 196 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[92] = chanx_right_in[92];
// ----- Local connection due to Wire 197 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[93] = chanx_right_in[93];
// ----- Local connection due to Wire 198 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[94] = chanx_right_in[94];
// ----- Local connection due to Wire 199 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[95] = chanx_right_in[95];
// ----- Local connection due to Wire 200 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[96] = chanx_right_in[96];
// ----- Local connection due to Wire 201 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[97] = chanx_right_in[97];
// ----- Local connection due to Wire 202 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[98] = chanx_right_in[98];
// ----- Local connection due to Wire 203 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[99] = chanx_right_in[99];
// ----- Local connection due to Wire 204 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[100] = chanx_right_in[100];
// ----- Local connection due to Wire 205 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[101] = chanx_right_in[101];
// ----- Local connection due to Wire 206 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[102] = chanx_right_in[102];
// ----- Local connection due to Wire 207 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[103] = chanx_right_in[103];
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	mux_2level_tapbuf_size36 mux_bottom_ipin_0 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18], chanx_left_in[24], chanx_right_in[24], chanx_left_in[30], chanx_right_in[30], chanx_left_in[36], chanx_right_in[36], chanx_left_in[42], chanx_right_in[42], chanx_left_in[48], chanx_right_in[48], chanx_left_in[54], chanx_right_in[54], chanx_left_in[60], chanx_right_in[60], chanx_left_in[66], chanx_right_in[66], chanx_left_in[72], chanx_right_in[72], chanx_left_in[78], chanx_right_in[78], chanx_left_in[84], chanx_right_in[84], chanx_left_in[90], chanx_right_in[90], chanx_left_in[96], chanx_right_in[96], chanx_left_in[102], chanx_right_in[102]}),
		.sram(mux_2level_tapbuf_size36_0_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_0_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_my_xpos_1_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_1 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31], chanx_left_in[37], chanx_right_in[37], chanx_left_in[43], chanx_right_in[43], chanx_left_in[49], chanx_right_in[49], chanx_left_in[55], chanx_right_in[55], chanx_left_in[61], chanx_right_in[61], chanx_left_in[67], chanx_right_in[67], chanx_left_in[73], chanx_right_in[73], chanx_left_in[79], chanx_right_in[79], chanx_left_in[85], chanx_right_in[85], chanx_left_in[91], chanx_right_in[91], chanx_left_in[97], chanx_right_in[97], chanx_left_in[103], chanx_right_in[103]}),
		.sram(mux_2level_tapbuf_size36_1_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_1_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_1_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_2 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[2], chanx_right_in[2], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14], chanx_left_in[20], chanx_right_in[20], chanx_left_in[26], chanx_right_in[26], chanx_left_in[32], chanx_right_in[32], chanx_left_in[38], chanx_right_in[38], chanx_left_in[44], chanx_right_in[44], chanx_left_in[50], chanx_right_in[50], chanx_left_in[56], chanx_right_in[56], chanx_left_in[62], chanx_right_in[62], chanx_left_in[68], chanx_right_in[68], chanx_left_in[74], chanx_right_in[74], chanx_left_in[80], chanx_right_in[80], chanx_left_in[86], chanx_right_in[86], chanx_left_in[92], chanx_right_in[92], chanx_left_in[98], chanx_right_in[98]}),
		.sram(mux_2level_tapbuf_size36_2_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_2_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_5_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_3 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27], chanx_left_in[33], chanx_right_in[33], chanx_left_in[39], chanx_right_in[39], chanx_left_in[45], chanx_right_in[45], chanx_left_in[51], chanx_right_in[51], chanx_left_in[57], chanx_right_in[57], chanx_left_in[63], chanx_right_in[63], chanx_left_in[69], chanx_right_in[69], chanx_left_in[75], chanx_right_in[75], chanx_left_in[81], chanx_right_in[81], chanx_left_in[87], chanx_right_in[87], chanx_left_in[93], chanx_right_in[93], chanx_left_in[99], chanx_right_in[99]}),
		.sram(mux_2level_tapbuf_size36_3_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_3_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_9_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_4 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16], chanx_left_in[22], chanx_right_in[22], chanx_left_in[28], chanx_right_in[28], chanx_left_in[34], chanx_right_in[34], chanx_left_in[40], chanx_right_in[40], chanx_left_in[46], chanx_right_in[46], chanx_left_in[52], chanx_right_in[52], chanx_left_in[58], chanx_right_in[58], chanx_left_in[64], chanx_right_in[64], chanx_left_in[70], chanx_right_in[70], chanx_left_in[76], chanx_right_in[76], chanx_left_in[82], chanx_right_in[82], chanx_left_in[88], chanx_right_in[88], chanx_left_in[94], chanx_right_in[94], chanx_left_in[100], chanx_right_in[100]}),
		.sram(mux_2level_tapbuf_size36_4_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_4_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_13_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_5 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29], chanx_left_in[35], chanx_right_in[35], chanx_left_in[41], chanx_right_in[41], chanx_left_in[47], chanx_right_in[47], chanx_left_in[53], chanx_right_in[53], chanx_left_in[59], chanx_right_in[59], chanx_left_in[65], chanx_right_in[65], chanx_left_in[71], chanx_right_in[71], chanx_left_in[77], chanx_right_in[77], chanx_left_in[83], chanx_right_in[83], chanx_left_in[89], chanx_right_in[89], chanx_left_in[95], chanx_right_in[95], chanx_left_in[101], chanx_right_in[101]}),
		.sram(mux_2level_tapbuf_size36_5_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_5_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_17_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_6 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18], chanx_left_in[24], chanx_right_in[24], chanx_left_in[30], chanx_right_in[30], chanx_left_in[36], chanx_right_in[36], chanx_left_in[42], chanx_right_in[42], chanx_left_in[48], chanx_right_in[48], chanx_left_in[54], chanx_right_in[54], chanx_left_in[60], chanx_right_in[60], chanx_left_in[66], chanx_right_in[66], chanx_left_in[72], chanx_right_in[72], chanx_left_in[78], chanx_right_in[78], chanx_left_in[84], chanx_right_in[84], chanx_left_in[90], chanx_right_in[90], chanx_left_in[96], chanx_right_in[96], chanx_left_in[102], chanx_right_in[102]}),
		.sram(mux_2level_tapbuf_size36_6_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_6_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_21_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_7 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31], chanx_left_in[37], chanx_right_in[37], chanx_left_in[43], chanx_right_in[43], chanx_left_in[49], chanx_right_in[49], chanx_left_in[55], chanx_right_in[55], chanx_left_in[61], chanx_right_in[61], chanx_left_in[67], chanx_right_in[67], chanx_left_in[73], chanx_right_in[73], chanx_left_in[79], chanx_right_in[79], chanx_left_in[85], chanx_right_in[85], chanx_left_in[91], chanx_right_in[91], chanx_left_in[97], chanx_right_in[97], chanx_left_in[103], chanx_right_in[103]}),
		.sram(mux_2level_tapbuf_size36_7_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_7_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_25_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_8 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14], chanx_left_in[20], chanx_right_in[20], chanx_left_in[26], chanx_right_in[26], chanx_left_in[32], chanx_right_in[32], chanx_left_in[38], chanx_right_in[38], chanx_left_in[44], chanx_right_in[44], chanx_left_in[50], chanx_right_in[50], chanx_left_in[56], chanx_right_in[56], chanx_left_in[62], chanx_right_in[62], chanx_left_in[68], chanx_right_in[68], chanx_left_in[74], chanx_right_in[74], chanx_left_in[80], chanx_right_in[80], chanx_left_in[86], chanx_right_in[86], chanx_left_in[92], chanx_right_in[92], chanx_left_in[98], chanx_right_in[98]}),
		.sram(mux_2level_tapbuf_size36_8_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_8_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_29_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_9 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27], chanx_left_in[33], chanx_right_in[33], chanx_left_in[39], chanx_right_in[39], chanx_left_in[45], chanx_right_in[45], chanx_left_in[51], chanx_right_in[51], chanx_left_in[57], chanx_right_in[57], chanx_left_in[63], chanx_right_in[63], chanx_left_in[69], chanx_right_in[69], chanx_left_in[75], chanx_right_in[75], chanx_left_in[81], chanx_right_in[81], chanx_left_in[87], chanx_right_in[87], chanx_left_in[93], chanx_right_in[93], chanx_left_in[99], chanx_right_in[99]}),
		.sram(mux_2level_tapbuf_size36_9_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_9_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_0_33_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_10 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[8], chanx_right_in[8], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16], chanx_left_in[22], chanx_right_in[22], chanx_left_in[28], chanx_right_in[28], chanx_left_in[34], chanx_right_in[34], chanx_left_in[40], chanx_right_in[40], chanx_left_in[46], chanx_right_in[46], chanx_left_in[52], chanx_right_in[52], chanx_left_in[58], chanx_right_in[58], chanx_left_in[64], chanx_right_in[64], chanx_left_in[70], chanx_right_in[70], chanx_left_in[76], chanx_right_in[76], chanx_left_in[82], chanx_right_in[82], chanx_left_in[88], chanx_right_in[88], chanx_left_in[94], chanx_right_in[94], chanx_left_in[100], chanx_right_in[100]}),
		.sram(mux_2level_tapbuf_size36_10_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_10_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_2_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_11 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29], chanx_left_in[35], chanx_right_in[35], chanx_left_in[41], chanx_right_in[41], chanx_left_in[47], chanx_right_in[47], chanx_left_in[53], chanx_right_in[53], chanx_left_in[59], chanx_right_in[59], chanx_left_in[65], chanx_right_in[65], chanx_left_in[71], chanx_right_in[71], chanx_left_in[77], chanx_right_in[77], chanx_left_in[83], chanx_right_in[83], chanx_left_in[89], chanx_right_in[89], chanx_left_in[95], chanx_right_in[95], chanx_left_in[101], chanx_right_in[101]}),
		.sram(mux_2level_tapbuf_size36_11_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_11_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_6_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_12 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18], chanx_left_in[24], chanx_right_in[24], chanx_left_in[30], chanx_right_in[30], chanx_left_in[36], chanx_right_in[36], chanx_left_in[42], chanx_right_in[42], chanx_left_in[48], chanx_right_in[48], chanx_left_in[54], chanx_right_in[54], chanx_left_in[60], chanx_right_in[60], chanx_left_in[66], chanx_right_in[66], chanx_left_in[72], chanx_right_in[72], chanx_left_in[78], chanx_right_in[78], chanx_left_in[84], chanx_right_in[84], chanx_left_in[90], chanx_right_in[90], chanx_left_in[96], chanx_right_in[96], chanx_left_in[102], chanx_right_in[102]}),
		.sram(mux_2level_tapbuf_size36_12_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_12_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_10_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_13 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31], chanx_left_in[37], chanx_right_in[37], chanx_left_in[43], chanx_right_in[43], chanx_left_in[49], chanx_right_in[49], chanx_left_in[55], chanx_right_in[55], chanx_left_in[61], chanx_right_in[61], chanx_left_in[67], chanx_right_in[67], chanx_left_in[73], chanx_right_in[73], chanx_left_in[79], chanx_right_in[79], chanx_left_in[85], chanx_right_in[85], chanx_left_in[91], chanx_right_in[91], chanx_left_in[97], chanx_right_in[97], chanx_left_in[103], chanx_right_in[103]}),
		.sram(mux_2level_tapbuf_size36_13_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_13_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_14_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_14 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[14], chanx_right_in[14], chanx_left_in[20], chanx_right_in[20], chanx_left_in[26], chanx_right_in[26], chanx_left_in[32], chanx_right_in[32], chanx_left_in[38], chanx_right_in[38], chanx_left_in[44], chanx_right_in[44], chanx_left_in[50], chanx_right_in[50], chanx_left_in[56], chanx_right_in[56], chanx_left_in[62], chanx_right_in[62], chanx_left_in[68], chanx_right_in[68], chanx_left_in[74], chanx_right_in[74], chanx_left_in[80], chanx_right_in[80], chanx_left_in[86], chanx_right_in[86], chanx_left_in[92], chanx_right_in[92], chanx_left_in[98], chanx_right_in[98]}),
		.sram(mux_2level_tapbuf_size36_14_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_14_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_18_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_15 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27], chanx_left_in[33], chanx_right_in[33], chanx_left_in[39], chanx_right_in[39], chanx_left_in[45], chanx_right_in[45], chanx_left_in[51], chanx_right_in[51], chanx_left_in[57], chanx_right_in[57], chanx_left_in[63], chanx_right_in[63], chanx_left_in[69], chanx_right_in[69], chanx_left_in[75], chanx_right_in[75], chanx_left_in[81], chanx_right_in[81], chanx_left_in[87], chanx_right_in[87], chanx_left_in[93], chanx_right_in[93], chanx_left_in[99], chanx_right_in[99]}),
		.sram(mux_2level_tapbuf_size36_15_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_15_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_22_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_16 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14], chanx_left_in[16], chanx_right_in[16], chanx_left_in[22], chanx_right_in[22], chanx_left_in[28], chanx_right_in[28], chanx_left_in[34], chanx_right_in[34], chanx_left_in[40], chanx_right_in[40], chanx_left_in[46], chanx_right_in[46], chanx_left_in[52], chanx_right_in[52], chanx_left_in[58], chanx_right_in[58], chanx_left_in[64], chanx_right_in[64], chanx_left_in[70], chanx_right_in[70], chanx_left_in[76], chanx_right_in[76], chanx_left_in[82], chanx_right_in[82], chanx_left_in[88], chanx_right_in[88], chanx_left_in[94], chanx_right_in[94], chanx_left_in[100], chanx_right_in[100]}),
		.sram(mux_2level_tapbuf_size36_16_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_16_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_26_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_17 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29], chanx_left_in[35], chanx_right_in[35], chanx_left_in[41], chanx_right_in[41], chanx_left_in[47], chanx_right_in[47], chanx_left_in[53], chanx_right_in[53], chanx_left_in[59], chanx_right_in[59], chanx_left_in[65], chanx_right_in[65], chanx_left_in[71], chanx_right_in[71], chanx_left_in[77], chanx_right_in[77], chanx_left_in[83], chanx_right_in[83], chanx_left_in[89], chanx_right_in[89], chanx_left_in[95], chanx_right_in[95], chanx_left_in[101], chanx_right_in[101]}),
		.sram(mux_2level_tapbuf_size36_17_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_17_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_30_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_18 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16], chanx_left_in[18], chanx_right_in[18], chanx_left_in[24], chanx_right_in[24], chanx_left_in[30], chanx_right_in[30], chanx_left_in[36], chanx_right_in[36], chanx_left_in[42], chanx_right_in[42], chanx_left_in[48], chanx_right_in[48], chanx_left_in[54], chanx_right_in[54], chanx_left_in[60], chanx_right_in[60], chanx_left_in[66], chanx_right_in[66], chanx_left_in[72], chanx_right_in[72], chanx_left_in[78], chanx_right_in[78], chanx_left_in[84], chanx_right_in[84], chanx_left_in[90], chanx_right_in[90], chanx_left_in[96], chanx_right_in[96], chanx_left_in[102], chanx_right_in[102]}),
		.sram(mux_2level_tapbuf_size36_18_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_18_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_1_34_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_19 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31], chanx_left_in[37], chanx_right_in[37], chanx_left_in[43], chanx_right_in[43], chanx_left_in[49], chanx_right_in[49], chanx_left_in[55], chanx_right_in[55], chanx_left_in[61], chanx_right_in[61], chanx_left_in[67], chanx_right_in[67], chanx_left_in[73], chanx_right_in[73], chanx_left_in[79], chanx_right_in[79], chanx_left_in[85], chanx_right_in[85], chanx_left_in[91], chanx_right_in[91], chanx_left_in[97], chanx_right_in[97], chanx_left_in[103], chanx_right_in[103]}),
		.sram(mux_2level_tapbuf_size36_19_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_19_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_3_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_20 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18], chanx_left_in[20], chanx_right_in[20], chanx_left_in[26], chanx_right_in[26], chanx_left_in[32], chanx_right_in[32], chanx_left_in[38], chanx_right_in[38], chanx_left_in[44], chanx_right_in[44], chanx_left_in[50], chanx_right_in[50], chanx_left_in[56], chanx_right_in[56], chanx_left_in[62], chanx_right_in[62], chanx_left_in[68], chanx_right_in[68], chanx_left_in[74], chanx_right_in[74], chanx_left_in[80], chanx_right_in[80], chanx_left_in[86], chanx_right_in[86], chanx_left_in[92], chanx_right_in[92], chanx_left_in[98], chanx_right_in[98]}),
		.sram(mux_2level_tapbuf_size36_20_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_20_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_7_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_21 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27], chanx_left_in[33], chanx_right_in[33], chanx_left_in[39], chanx_right_in[39], chanx_left_in[45], chanx_right_in[45], chanx_left_in[51], chanx_right_in[51], chanx_left_in[57], chanx_right_in[57], chanx_left_in[63], chanx_right_in[63], chanx_left_in[69], chanx_right_in[69], chanx_left_in[75], chanx_right_in[75], chanx_left_in[81], chanx_right_in[81], chanx_left_in[87], chanx_right_in[87], chanx_left_in[93], chanx_right_in[93], chanx_left_in[99], chanx_right_in[99]}),
		.sram(mux_2level_tapbuf_size36_21_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_21_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_11_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_22 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14], chanx_left_in[20], chanx_right_in[20], chanx_left_in[22], chanx_right_in[22], chanx_left_in[28], chanx_right_in[28], chanx_left_in[34], chanx_right_in[34], chanx_left_in[40], chanx_right_in[40], chanx_left_in[46], chanx_right_in[46], chanx_left_in[52], chanx_right_in[52], chanx_left_in[58], chanx_right_in[58], chanx_left_in[64], chanx_right_in[64], chanx_left_in[70], chanx_right_in[70], chanx_left_in[76], chanx_right_in[76], chanx_left_in[82], chanx_right_in[82], chanx_left_in[88], chanx_right_in[88], chanx_left_in[94], chanx_right_in[94], chanx_left_in[100], chanx_right_in[100]}),
		.sram(mux_2level_tapbuf_size36_22_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_22_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_15_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_23 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29], chanx_left_in[35], chanx_right_in[35], chanx_left_in[41], chanx_right_in[41], chanx_left_in[47], chanx_right_in[47], chanx_left_in[53], chanx_right_in[53], chanx_left_in[59], chanx_right_in[59], chanx_left_in[65], chanx_right_in[65], chanx_left_in[71], chanx_right_in[71], chanx_left_in[77], chanx_right_in[77], chanx_left_in[83], chanx_right_in[83], chanx_left_in[89], chanx_right_in[89], chanx_left_in[95], chanx_right_in[95], chanx_left_in[101], chanx_right_in[101]}),
		.sram(mux_2level_tapbuf_size36_23_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_23_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_19_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_24 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16], chanx_left_in[22], chanx_right_in[22], chanx_left_in[24], chanx_right_in[24], chanx_left_in[30], chanx_right_in[30], chanx_left_in[36], chanx_right_in[36], chanx_left_in[42], chanx_right_in[42], chanx_left_in[48], chanx_right_in[48], chanx_left_in[54], chanx_right_in[54], chanx_left_in[60], chanx_right_in[60], chanx_left_in[66], chanx_right_in[66], chanx_left_in[72], chanx_right_in[72], chanx_left_in[78], chanx_right_in[78], chanx_left_in[84], chanx_right_in[84], chanx_left_in[90], chanx_right_in[90], chanx_left_in[96], chanx_right_in[96], chanx_left_in[102], chanx_right_in[102]}),
		.sram(mux_2level_tapbuf_size36_24_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_24_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_23_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_25 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31], chanx_left_in[37], chanx_right_in[37], chanx_left_in[43], chanx_right_in[43], chanx_left_in[49], chanx_right_in[49], chanx_left_in[55], chanx_right_in[55], chanx_left_in[61], chanx_right_in[61], chanx_left_in[67], chanx_right_in[67], chanx_left_in[73], chanx_right_in[73], chanx_left_in[79], chanx_right_in[79], chanx_left_in[85], chanx_right_in[85], chanx_left_in[91], chanx_right_in[91], chanx_left_in[97], chanx_right_in[97], chanx_left_in[103], chanx_right_in[103]}),
		.sram(mux_2level_tapbuf_size36_25_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_25_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_27_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_26 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18], chanx_left_in[24], chanx_right_in[24], chanx_left_in[26], chanx_right_in[26], chanx_left_in[32], chanx_right_in[32], chanx_left_in[38], chanx_right_in[38], chanx_left_in[44], chanx_right_in[44], chanx_left_in[50], chanx_right_in[50], chanx_left_in[56], chanx_right_in[56], chanx_left_in[62], chanx_right_in[62], chanx_left_in[68], chanx_right_in[68], chanx_left_in[74], chanx_right_in[74], chanx_left_in[80], chanx_right_in[80], chanx_left_in[86], chanx_right_in[86], chanx_left_in[92], chanx_right_in[92], chanx_left_in[98], chanx_right_in[98]}),
		.sram(mux_2level_tapbuf_size36_26_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_26_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_2_31_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_27 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[27], chanx_right_in[27], chanx_left_in[33], chanx_right_in[33], chanx_left_in[39], chanx_right_in[39], chanx_left_in[45], chanx_right_in[45], chanx_left_in[51], chanx_right_in[51], chanx_left_in[57], chanx_right_in[57], chanx_left_in[63], chanx_right_in[63], chanx_left_in[69], chanx_right_in[69], chanx_left_in[75], chanx_right_in[75], chanx_left_in[81], chanx_right_in[81], chanx_left_in[87], chanx_right_in[87], chanx_left_in[93], chanx_right_in[93], chanx_left_in[99], chanx_right_in[99]}),
		.sram(mux_2level_tapbuf_size36_27_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_27_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_0_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_28 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14], chanx_left_in[20], chanx_right_in[20], chanx_left_in[26], chanx_right_in[26], chanx_left_in[28], chanx_right_in[28], chanx_left_in[34], chanx_right_in[34], chanx_left_in[40], chanx_right_in[40], chanx_left_in[46], chanx_right_in[46], chanx_left_in[52], chanx_right_in[52], chanx_left_in[58], chanx_right_in[58], chanx_left_in[64], chanx_right_in[64], chanx_left_in[70], chanx_right_in[70], chanx_left_in[76], chanx_right_in[76], chanx_left_in[82], chanx_right_in[82], chanx_left_in[88], chanx_right_in[88], chanx_left_in[94], chanx_right_in[94], chanx_left_in[100], chanx_right_in[100]}),
		.sram(mux_2level_tapbuf_size36_28_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_28_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_4_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_29 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27], chanx_left_in[29], chanx_right_in[29], chanx_left_in[35], chanx_right_in[35], chanx_left_in[41], chanx_right_in[41], chanx_left_in[47], chanx_right_in[47], chanx_left_in[53], chanx_right_in[53], chanx_left_in[59], chanx_right_in[59], chanx_left_in[65], chanx_right_in[65], chanx_left_in[71], chanx_right_in[71], chanx_left_in[77], chanx_right_in[77], chanx_left_in[83], chanx_right_in[83], chanx_left_in[89], chanx_right_in[89], chanx_left_in[95], chanx_right_in[95], chanx_left_in[101], chanx_right_in[101]}),
		.sram(mux_2level_tapbuf_size36_29_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_29_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_8_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_30 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16], chanx_left_in[22], chanx_right_in[22], chanx_left_in[28], chanx_right_in[28], chanx_left_in[30], chanx_right_in[30], chanx_left_in[36], chanx_right_in[36], chanx_left_in[42], chanx_right_in[42], chanx_left_in[48], chanx_right_in[48], chanx_left_in[54], chanx_right_in[54], chanx_left_in[60], chanx_right_in[60], chanx_left_in[66], chanx_right_in[66], chanx_left_in[72], chanx_right_in[72], chanx_left_in[78], chanx_right_in[78], chanx_left_in[84], chanx_right_in[84], chanx_left_in[90], chanx_right_in[90], chanx_left_in[96], chanx_right_in[96], chanx_left_in[102], chanx_right_in[102]}),
		.sram(mux_2level_tapbuf_size36_30_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_30_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_12_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_31 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29], chanx_left_in[31], chanx_right_in[31], chanx_left_in[37], chanx_right_in[37], chanx_left_in[43], chanx_right_in[43], chanx_left_in[49], chanx_right_in[49], chanx_left_in[55], chanx_right_in[55], chanx_left_in[61], chanx_right_in[61], chanx_left_in[67], chanx_right_in[67], chanx_left_in[73], chanx_right_in[73], chanx_left_in[79], chanx_right_in[79], chanx_left_in[85], chanx_right_in[85], chanx_left_in[91], chanx_right_in[91], chanx_left_in[97], chanx_right_in[97], chanx_left_in[103], chanx_right_in[103]}),
		.sram(mux_2level_tapbuf_size36_31_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_31_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_16_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_32 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18], chanx_left_in[24], chanx_right_in[24], chanx_left_in[30], chanx_right_in[30], chanx_left_in[32], chanx_right_in[32], chanx_left_in[38], chanx_right_in[38], chanx_left_in[44], chanx_right_in[44], chanx_left_in[50], chanx_right_in[50], chanx_left_in[56], chanx_right_in[56], chanx_left_in[62], chanx_right_in[62], chanx_left_in[68], chanx_right_in[68], chanx_left_in[74], chanx_right_in[74], chanx_left_in[80], chanx_right_in[80], chanx_left_in[86], chanx_right_in[86], chanx_left_in[92], chanx_right_in[92], chanx_left_in[98], chanx_right_in[98]}),
		.sram(mux_2level_tapbuf_size36_32_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_32_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_20_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_33 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31], chanx_left_in[33], chanx_right_in[33], chanx_left_in[39], chanx_right_in[39], chanx_left_in[45], chanx_right_in[45], chanx_left_in[51], chanx_right_in[51], chanx_left_in[57], chanx_right_in[57], chanx_left_in[63], chanx_right_in[63], chanx_left_in[69], chanx_right_in[69], chanx_left_in[75], chanx_right_in[75], chanx_left_in[81], chanx_right_in[81], chanx_left_in[87], chanx_right_in[87], chanx_left_in[93], chanx_right_in[93], chanx_left_in[99], chanx_right_in[99]}),
		.sram(mux_2level_tapbuf_size36_33_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_33_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_24_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_34 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14], chanx_left_in[20], chanx_right_in[20], chanx_left_in[26], chanx_right_in[26], chanx_left_in[32], chanx_right_in[32], chanx_left_in[34], chanx_right_in[34], chanx_left_in[40], chanx_right_in[40], chanx_left_in[46], chanx_right_in[46], chanx_left_in[52], chanx_right_in[52], chanx_left_in[58], chanx_right_in[58], chanx_left_in[64], chanx_right_in[64], chanx_left_in[70], chanx_right_in[70], chanx_left_in[76], chanx_right_in[76], chanx_left_in[82], chanx_right_in[82], chanx_left_in[88], chanx_right_in[88], chanx_left_in[94], chanx_right_in[94], chanx_left_in[100], chanx_right_in[100]}),
		.sram(mux_2level_tapbuf_size36_34_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_34_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_28_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_35 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27], chanx_left_in[33], chanx_right_in[33], chanx_left_in[35], chanx_right_in[35], chanx_left_in[41], chanx_right_in[41], chanx_left_in[47], chanx_right_in[47], chanx_left_in[53], chanx_right_in[53], chanx_left_in[59], chanx_right_in[59], chanx_left_in[65], chanx_right_in[65], chanx_left_in[71], chanx_right_in[71], chanx_left_in[77], chanx_right_in[77], chanx_left_in[83], chanx_right_in[83], chanx_left_in[89], chanx_right_in[89], chanx_left_in[95], chanx_right_in[95], chanx_left_in[101], chanx_right_in[101]}),
		.sram(mux_2level_tapbuf_size36_35_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_35_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_3_32_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_36 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16], chanx_left_in[22], chanx_right_in[22], chanx_left_in[28], chanx_right_in[28], chanx_left_in[34], chanx_right_in[34], chanx_left_in[36], chanx_right_in[36], chanx_left_in[42], chanx_right_in[42], chanx_left_in[48], chanx_right_in[48], chanx_left_in[54], chanx_right_in[54], chanx_left_in[60], chanx_right_in[60], chanx_left_in[66], chanx_right_in[66], chanx_left_in[72], chanx_right_in[72], chanx_left_in[78], chanx_right_in[78], chanx_left_in[84], chanx_right_in[84], chanx_left_in[90], chanx_right_in[90], chanx_left_in[96], chanx_right_in[96], chanx_left_in[102], chanx_right_in[102]}),
		.sram(mux_2level_tapbuf_size36_36_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_36_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_1_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_37 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29], chanx_left_in[35], chanx_right_in[35], chanx_left_in[37], chanx_right_in[37], chanx_left_in[43], chanx_right_in[43], chanx_left_in[49], chanx_right_in[49], chanx_left_in[55], chanx_right_in[55], chanx_left_in[61], chanx_right_in[61], chanx_left_in[67], chanx_right_in[67], chanx_left_in[73], chanx_right_in[73], chanx_left_in[79], chanx_right_in[79], chanx_left_in[85], chanx_right_in[85], chanx_left_in[91], chanx_right_in[91], chanx_left_in[97], chanx_right_in[97], chanx_left_in[103], chanx_right_in[103]}),
		.sram(mux_2level_tapbuf_size36_37_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_37_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_5_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_38 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18], chanx_left_in[24], chanx_right_in[24], chanx_left_in[30], chanx_right_in[30], chanx_left_in[36], chanx_right_in[36], chanx_left_in[38], chanx_right_in[38], chanx_left_in[44], chanx_right_in[44], chanx_left_in[50], chanx_right_in[50], chanx_left_in[56], chanx_right_in[56], chanx_left_in[62], chanx_right_in[62], chanx_left_in[68], chanx_right_in[68], chanx_left_in[74], chanx_right_in[74], chanx_left_in[80], chanx_right_in[80], chanx_left_in[86], chanx_right_in[86], chanx_left_in[92], chanx_right_in[92], chanx_left_in[98], chanx_right_in[98]}),
		.sram(mux_2level_tapbuf_size36_38_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_38_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_9_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_39 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31], chanx_left_in[37], chanx_right_in[37], chanx_left_in[39], chanx_right_in[39], chanx_left_in[45], chanx_right_in[45], chanx_left_in[51], chanx_right_in[51], chanx_left_in[57], chanx_right_in[57], chanx_left_in[63], chanx_right_in[63], chanx_left_in[69], chanx_right_in[69], chanx_left_in[75], chanx_right_in[75], chanx_left_in[81], chanx_right_in[81], chanx_left_in[87], chanx_right_in[87], chanx_left_in[93], chanx_right_in[93], chanx_left_in[99], chanx_right_in[99]}),
		.sram(mux_2level_tapbuf_size36_39_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_39_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_13_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_40 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14], chanx_left_in[20], chanx_right_in[20], chanx_left_in[26], chanx_right_in[26], chanx_left_in[32], chanx_right_in[32], chanx_left_in[38], chanx_right_in[38], chanx_left_in[40], chanx_right_in[40], chanx_left_in[46], chanx_right_in[46], chanx_left_in[52], chanx_right_in[52], chanx_left_in[58], chanx_right_in[58], chanx_left_in[64], chanx_right_in[64], chanx_left_in[70], chanx_right_in[70], chanx_left_in[76], chanx_right_in[76], chanx_left_in[82], chanx_right_in[82], chanx_left_in[88], chanx_right_in[88], chanx_left_in[94], chanx_right_in[94], chanx_left_in[100], chanx_right_in[100]}),
		.sram(mux_2level_tapbuf_size36_40_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_40_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_17_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_41 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27], chanx_left_in[33], chanx_right_in[33], chanx_left_in[39], chanx_right_in[39], chanx_left_in[41], chanx_right_in[41], chanx_left_in[47], chanx_right_in[47], chanx_left_in[53], chanx_right_in[53], chanx_left_in[59], chanx_right_in[59], chanx_left_in[65], chanx_right_in[65], chanx_left_in[71], chanx_right_in[71], chanx_left_in[77], chanx_right_in[77], chanx_left_in[83], chanx_right_in[83], chanx_left_in[89], chanx_right_in[89], chanx_left_in[95], chanx_right_in[95], chanx_left_in[101], chanx_right_in[101]}),
		.sram(mux_2level_tapbuf_size36_41_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_41_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_21_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_42 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16], chanx_left_in[22], chanx_right_in[22], chanx_left_in[28], chanx_right_in[28], chanx_left_in[34], chanx_right_in[34], chanx_left_in[40], chanx_right_in[40], chanx_left_in[42], chanx_right_in[42], chanx_left_in[48], chanx_right_in[48], chanx_left_in[54], chanx_right_in[54], chanx_left_in[60], chanx_right_in[60], chanx_left_in[66], chanx_right_in[66], chanx_left_in[72], chanx_right_in[72], chanx_left_in[78], chanx_right_in[78], chanx_left_in[84], chanx_right_in[84], chanx_left_in[90], chanx_right_in[90], chanx_left_in[96], chanx_right_in[96], chanx_left_in[102], chanx_right_in[102]}),
		.sram(mux_2level_tapbuf_size36_42_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_42_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_25_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_43 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29], chanx_left_in[35], chanx_right_in[35], chanx_left_in[41], chanx_right_in[41], chanx_left_in[43], chanx_right_in[43], chanx_left_in[49], chanx_right_in[49], chanx_left_in[55], chanx_right_in[55], chanx_left_in[61], chanx_right_in[61], chanx_left_in[67], chanx_right_in[67], chanx_left_in[73], chanx_right_in[73], chanx_left_in[79], chanx_right_in[79], chanx_left_in[85], chanx_right_in[85], chanx_left_in[91], chanx_right_in[91], chanx_left_in[97], chanx_right_in[97], chanx_left_in[103], chanx_right_in[103]}),
		.sram(mux_2level_tapbuf_size36_43_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_43_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_29_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_44 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18], chanx_left_in[24], chanx_right_in[24], chanx_left_in[30], chanx_right_in[30], chanx_left_in[36], chanx_right_in[36], chanx_left_in[42], chanx_right_in[42], chanx_left_in[44], chanx_right_in[44], chanx_left_in[50], chanx_right_in[50], chanx_left_in[56], chanx_right_in[56], chanx_left_in[62], chanx_right_in[62], chanx_left_in[68], chanx_right_in[68], chanx_left_in[74], chanx_right_in[74], chanx_left_in[80], chanx_right_in[80], chanx_left_in[86], chanx_right_in[86], chanx_left_in[92], chanx_right_in[92], chanx_left_in[98], chanx_right_in[98]}),
		.sram(mux_2level_tapbuf_size36_44_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_44_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_idata_4_33_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_45 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31], chanx_left_in[37], chanx_right_in[37], chanx_left_in[43], chanx_right_in[43], chanx_left_in[45], chanx_right_in[45], chanx_left_in[51], chanx_right_in[51], chanx_left_in[57], chanx_right_in[57], chanx_left_in[63], chanx_right_in[63], chanx_left_in[69], chanx_right_in[69], chanx_left_in[75], chanx_right_in[75], chanx_left_in[81], chanx_right_in[81], chanx_left_in[87], chanx_right_in[87], chanx_left_in[93], chanx_right_in[93], chanx_left_in[99], chanx_right_in[99]}),
		.sram(mux_2level_tapbuf_size36_45_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_45_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_ivalid_2_0_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_46 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14], chanx_left_in[20], chanx_right_in[20], chanx_left_in[26], chanx_right_in[26], chanx_left_in[32], chanx_right_in[32], chanx_left_in[38], chanx_right_in[38], chanx_left_in[44], chanx_right_in[44], chanx_left_in[46], chanx_right_in[46], chanx_left_in[52], chanx_right_in[52], chanx_left_in[58], chanx_right_in[58], chanx_left_in[64], chanx_right_in[64], chanx_left_in[70], chanx_right_in[70], chanx_left_in[76], chanx_right_in[76], chanx_left_in[82], chanx_right_in[82], chanx_left_in[88], chanx_right_in[88], chanx_left_in[94], chanx_right_in[94], chanx_left_in[100], chanx_right_in[100]}),
		.sram(mux_2level_tapbuf_size36_46_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_46_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_ivch_1_0_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_47 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27], chanx_left_in[33], chanx_right_in[33], chanx_left_in[39], chanx_right_in[39], chanx_left_in[45], chanx_right_in[45], chanx_left_in[47], chanx_right_in[47], chanx_left_in[53], chanx_right_in[53], chanx_left_in[59], chanx_right_in[59], chanx_left_in[65], chanx_right_in[65], chanx_left_in[71], chanx_right_in[71], chanx_left_in[77], chanx_right_in[77], chanx_left_in[83], chanx_right_in[83], chanx_left_in[89], chanx_right_in[89], chanx_left_in[95], chanx_right_in[95], chanx_left_in[101], chanx_right_in[101]}),
		.sram(mux_2level_tapbuf_size36_47_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_47_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_iack_0_0_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_48 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16], chanx_left_in[22], chanx_right_in[22], chanx_left_in[28], chanx_right_in[28], chanx_left_in[34], chanx_right_in[34], chanx_left_in[40], chanx_right_in[40], chanx_left_in[46], chanx_right_in[46], chanx_left_in[48], chanx_right_in[48], chanx_left_in[54], chanx_right_in[54], chanx_left_in[60], chanx_right_in[60], chanx_left_in[66], chanx_right_in[66], chanx_left_in[72], chanx_right_in[72], chanx_left_in[78], chanx_right_in[78], chanx_left_in[84], chanx_right_in[84], chanx_left_in[90], chanx_right_in[90], chanx_left_in[96], chanx_right_in[96], chanx_left_in[102], chanx_right_in[102]}),
		.sram(mux_2level_tapbuf_size36_48_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_48_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_iack_2_0_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_49 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29], chanx_left_in[35], chanx_right_in[35], chanx_left_in[41], chanx_right_in[41], chanx_left_in[47], chanx_right_in[47], chanx_left_in[49], chanx_right_in[49], chanx_left_in[55], chanx_right_in[55], chanx_left_in[61], chanx_right_in[61], chanx_left_in[67], chanx_right_in[67], chanx_left_in[73], chanx_right_in[73], chanx_left_in[79], chanx_right_in[79], chanx_left_in[85], chanx_right_in[85], chanx_left_in[91], chanx_right_in[91], chanx_left_in[97], chanx_right_in[97], chanx_left_in[103], chanx_right_in[103]}),
		.sram(mux_2level_tapbuf_size36_49_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_49_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_iack_4_0_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_50 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18], chanx_left_in[24], chanx_right_in[24], chanx_left_in[30], chanx_right_in[30], chanx_left_in[36], chanx_right_in[36], chanx_left_in[42], chanx_right_in[42], chanx_left_in[48], chanx_right_in[48], chanx_left_in[50], chanx_right_in[50], chanx_left_in[56], chanx_right_in[56], chanx_left_in[62], chanx_right_in[62], chanx_left_in[68], chanx_right_in[68], chanx_left_in[74], chanx_right_in[74], chanx_left_in[80], chanx_right_in[80], chanx_left_in[86], chanx_right_in[86], chanx_left_in[92], chanx_right_in[92], chanx_left_in[98], chanx_right_in[98]}),
		.sram(mux_2level_tapbuf_size36_50_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_50_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_ilck_1_0_));

	mux_2level_tapbuf_size36 mux_bottom_ipin_51 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31], chanx_left_in[37], chanx_right_in[37], chanx_left_in[43], chanx_right_in[43], chanx_left_in[49], chanx_right_in[49], chanx_left_in[51], chanx_right_in[51], chanx_left_in[57], chanx_right_in[57], chanx_left_in[63], chanx_right_in[63], chanx_left_in[69], chanx_right_in[69], chanx_left_in[75], chanx_right_in[75], chanx_left_in[81], chanx_right_in[81], chanx_left_in[87], chanx_right_in[87], chanx_left_in[93], chanx_right_in[93], chanx_left_in[99], chanx_right_in[99]}),
		.sram(mux_2level_tapbuf_size36_51_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size36_51_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_ilck_3_0_));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_0 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(mux_2level_tapbuf_size36_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_0_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_0_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_1 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_1_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_1_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_2 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_2_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_2_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_3 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_3_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_3_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_4 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_4_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_4_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_5 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_5_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_5_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_6 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_6_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_6_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_7 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_7_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_7_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_7_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_8 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_7_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_8_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_8_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_8_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_9 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_8_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_9_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_9_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_9_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_10 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_9_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_10_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_10_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_10_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_11 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_10_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_11_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_11_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_11_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_12 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_11_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_12_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_12_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_12_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_13 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_12_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_13_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_13_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_13_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_14 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_13_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_14_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_14_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_14_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_15 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_14_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_15_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_15_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_15_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_16 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_15_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_16_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_16_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_16_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_17 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_16_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_17_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_17_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_17_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_18 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_17_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_18_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_18_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_18_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_19 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_18_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_19_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_19_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_19_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_20 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_19_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_20_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_20_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_20_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_21 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_20_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_21_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_21_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_21_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_22 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_21_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_22_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_22_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_22_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_23 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_22_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_23_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_23_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_23_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_24 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_23_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_24_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_24_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_24_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_25 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_24_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_25_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_25_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_25_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_26 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_25_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_26_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_26_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_26_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_27 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_26_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_27_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_27_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_27_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_28 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_27_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_28_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_28_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_28_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_29 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_28_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_29_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_29_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_29_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_30 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_29_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_30_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_30_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_30_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_31 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_30_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_31_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_31_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_31_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_32 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_31_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_32_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_32_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_32_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_33 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_32_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_33_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_33_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_33_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_34 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_33_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_34_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_34_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_34_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_35 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_34_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_35_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_35_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_35_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_36 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_35_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_36_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_36_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_36_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_37 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_36_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_37_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_37_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_37_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_38 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_37_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_38_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_38_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_38_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_39 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_38_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_39_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_39_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_39_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_40 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_39_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_40_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_40_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_40_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_41 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_40_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_41_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_41_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_41_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_42 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_41_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_42_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_42_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_42_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_43 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_42_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_43_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_43_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_43_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_44 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_43_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_44_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_44_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_44_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_45 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_44_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_45_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_45_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_45_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_46 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_45_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_46_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_46_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_46_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_47 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_46_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_47_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_47_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_47_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_48 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_47_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_48_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_48_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_48_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_49 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_48_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_49_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_49_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_49_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_50 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_49_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size36_mem_50_ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_50_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_50_sram_inv[0:13]));

	mux_2level_tapbuf_size36_mem mem_bottom_ipin_51 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size36_mem_50_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_2level_tapbuf_size36_51_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size36_51_sram_inv[0:13]));

endmodule
// ----- END Verilog module for cbx_3__2_ -----

//----- Default net type -----
`default_nettype wire




