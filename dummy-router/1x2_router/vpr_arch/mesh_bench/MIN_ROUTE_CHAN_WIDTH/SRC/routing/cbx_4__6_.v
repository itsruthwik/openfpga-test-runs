//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for Unique Connection Blocks[4][6]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Tue Aug 20 23:36:48 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for cbx_4__6_ -----
module cbx_4__6_(pReset,
                 prog_clk,
                 chanx_left_in,
                 chanx_right_in,
                 ccff_head,
                 chanx_left_out,
                 chanx_right_out,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_outpad_0_,
                 top_grid_bottom_width_0_height_0_subtile_1__pin_outpad_0_,
                 top_grid_bottom_width_0_height_0_subtile_2__pin_outpad_0_,
                 top_grid_bottom_width_0_height_0_subtile_3__pin_outpad_0_,
                 top_grid_bottom_width_0_height_0_subtile_4__pin_outpad_0_,
                 top_grid_bottom_width_0_height_0_subtile_5__pin_outpad_0_,
                 top_grid_bottom_width_0_height_0_subtile_6__pin_outpad_0_,
                 top_grid_bottom_width_0_height_0_subtile_7__pin_outpad_0_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_rst__0_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_my_ypos_1_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_0_3_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_0_7_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_0_11_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_0_15_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_0_19_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_0_23_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_0_27_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_0_31_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_0_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_4_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_8_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_12_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_16_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_20_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_24_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_28_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_32_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_1_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_5_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_9_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_13_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_17_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_21_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_25_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_29_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_33_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_2_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_6_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_10_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_14_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_18_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_22_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_26_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_30_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_34_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_3_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_7_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_11_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_15_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_19_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_23_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_27_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_31_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_ivalid_0_0_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_ivalid_4_0_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_ivch_3_0_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_iack_1_0_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_iack_3_0_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_ilck_0_0_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_ilck_2_0_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_ilck_4_0_,
                 ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] pReset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:41] chanx_left_in;
//----- INPUT PORTS -----
input [0:41] chanx_right_in;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:41] chanx_left_out;
//----- OUTPUT PORTS -----
output [0:41] chanx_right_out;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_1__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_2__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_3__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_4__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_5__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_6__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_7__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_rst__0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_my_ypos_1_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_0_3_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_0_7_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_0_11_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_0_15_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_0_19_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_0_23_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_0_27_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_0_31_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_4_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_8_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_12_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_16_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_20_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_24_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_28_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_32_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_1_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_5_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_9_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_13_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_17_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_21_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_25_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_29_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_33_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_2_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_6_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_10_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_14_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_18_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_22_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_26_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_30_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_34_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_3_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_7_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_11_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_15_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_19_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_23_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_27_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_31_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_ivalid_0_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_ivalid_4_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_ivch_3_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_iack_1_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_iack_3_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_ilck_0_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_ilck_2_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_ilck_4_0_;
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
wire [0:7] mux_2level_tapbuf_size14_17_sram;
wire [0:7] mux_2level_tapbuf_size14_17_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_18_sram;
wire [0:7] mux_2level_tapbuf_size14_18_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_19_sram;
wire [0:7] mux_2level_tapbuf_size14_19_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_1_sram;
wire [0:7] mux_2level_tapbuf_size14_1_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_20_sram;
wire [0:7] mux_2level_tapbuf_size14_20_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_21_sram;
wire [0:7] mux_2level_tapbuf_size14_21_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_22_sram;
wire [0:7] mux_2level_tapbuf_size14_22_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_23_sram;
wire [0:7] mux_2level_tapbuf_size14_23_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_24_sram;
wire [0:7] mux_2level_tapbuf_size14_24_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_25_sram;
wire [0:7] mux_2level_tapbuf_size14_25_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_26_sram;
wire [0:7] mux_2level_tapbuf_size14_26_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_27_sram;
wire [0:7] mux_2level_tapbuf_size14_27_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_28_sram;
wire [0:7] mux_2level_tapbuf_size14_28_sram_inv;
wire [0:7] mux_2level_tapbuf_size14_29_sram;
wire [0:7] mux_2level_tapbuf_size14_29_sram_inv;
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
wire [0:0] mux_2level_tapbuf_size14_mem_17_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_18_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_19_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_20_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_21_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_22_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_23_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_24_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_25_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_26_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_27_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_28_ccff_tail;
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
	assign chanx_left_out[0] = chanx_right_in[0];
// ----- Local connection due to Wire 43 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[1] = chanx_right_in[1];
// ----- Local connection due to Wire 44 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[2] = chanx_right_in[2];
// ----- Local connection due to Wire 45 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[3] = chanx_right_in[3];
// ----- Local connection due to Wire 46 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[4] = chanx_right_in[4];
// ----- Local connection due to Wire 47 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[5] = chanx_right_in[5];
// ----- Local connection due to Wire 48 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[6] = chanx_right_in[6];
// ----- Local connection due to Wire 49 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[7] = chanx_right_in[7];
// ----- Local connection due to Wire 50 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[8] = chanx_right_in[8];
// ----- Local connection due to Wire 51 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[9] = chanx_right_in[9];
// ----- Local connection due to Wire 52 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[10] = chanx_right_in[10];
// ----- Local connection due to Wire 53 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[11] = chanx_right_in[11];
// ----- Local connection due to Wire 54 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[12] = chanx_right_in[12];
// ----- Local connection due to Wire 55 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[13] = chanx_right_in[13];
// ----- Local connection due to Wire 56 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[14] = chanx_right_in[14];
// ----- Local connection due to Wire 57 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[15] = chanx_right_in[15];
// ----- Local connection due to Wire 58 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[16] = chanx_right_in[16];
// ----- Local connection due to Wire 59 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[17] = chanx_right_in[17];
// ----- Local connection due to Wire 60 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[18] = chanx_right_in[18];
// ----- Local connection due to Wire 61 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[19] = chanx_right_in[19];
// ----- Local connection due to Wire 62 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[20] = chanx_right_in[20];
// ----- Local connection due to Wire 63 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[21] = chanx_right_in[21];
// ----- Local connection due to Wire 64 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[22] = chanx_right_in[22];
// ----- Local connection due to Wire 65 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[23] = chanx_right_in[23];
// ----- Local connection due to Wire 66 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[24] = chanx_right_in[24];
// ----- Local connection due to Wire 67 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[25] = chanx_right_in[25];
// ----- Local connection due to Wire 68 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[26] = chanx_right_in[26];
// ----- Local connection due to Wire 69 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[27] = chanx_right_in[27];
// ----- Local connection due to Wire 70 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[28] = chanx_right_in[28];
// ----- Local connection due to Wire 71 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[29] = chanx_right_in[29];
// ----- Local connection due to Wire 72 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[30] = chanx_right_in[30];
// ----- Local connection due to Wire 73 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[31] = chanx_right_in[31];
// ----- Local connection due to Wire 74 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[32] = chanx_right_in[32];
// ----- Local connection due to Wire 75 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[33] = chanx_right_in[33];
// ----- Local connection due to Wire 76 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[34] = chanx_right_in[34];
// ----- Local connection due to Wire 77 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[35] = chanx_right_in[35];
// ----- Local connection due to Wire 78 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[36] = chanx_right_in[36];
// ----- Local connection due to Wire 79 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[37] = chanx_right_in[37];
// ----- Local connection due to Wire 80 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[38] = chanx_right_in[38];
// ----- Local connection due to Wire 81 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[39] = chanx_right_in[39];
// ----- Local connection due to Wire 82 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[40] = chanx_right_in[40];
// ----- Local connection due to Wire 83 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[41] = chanx_right_in[41];
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	mux_2level_tapbuf_size14 mux_bottom_ipin_0 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18], chanx_left_in[24], chanx_right_in[24], chanx_left_in[30], chanx_right_in[30], chanx_left_in[36], chanx_right_in[36]}),
		.sram(mux_2level_tapbuf_size14_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_0_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_outpad_0_));

	mux_2level_tapbuf_size14 mux_bottom_ipin_1 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31], chanx_left_in[37], chanx_right_in[37]}),
		.sram(mux_2level_tapbuf_size14_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_1_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_1__pin_outpad_0_));

	mux_2level_tapbuf_size14 mux_bottom_ipin_2 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14], chanx_left_in[20], chanx_right_in[20], chanx_left_in[26], chanx_right_in[26], chanx_left_in[32], chanx_right_in[32], chanx_left_in[38], chanx_right_in[38]}),
		.sram(mux_2level_tapbuf_size14_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_2_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_2__pin_outpad_0_));

	mux_2level_tapbuf_size14 mux_bottom_ipin_3 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27], chanx_left_in[33], chanx_right_in[33], chanx_left_in[39], chanx_right_in[39]}),
		.sram(mux_2level_tapbuf_size14_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_3_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_3__pin_outpad_0_));

	mux_2level_tapbuf_size14 mux_bottom_ipin_4 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16], chanx_left_in[22], chanx_right_in[22], chanx_left_in[28], chanx_right_in[28], chanx_left_in[34], chanx_right_in[34], chanx_left_in[40], chanx_right_in[40]}),
		.sram(mux_2level_tapbuf_size14_4_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_4_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_4__pin_outpad_0_));

	mux_2level_tapbuf_size14 mux_bottom_ipin_5 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29], chanx_left_in[35], chanx_right_in[35], chanx_left_in[41], chanx_right_in[41]}),
		.sram(mux_2level_tapbuf_size14_5_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_5_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_5__pin_outpad_0_));

	mux_2level_tapbuf_size14 mux_bottom_ipin_6 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18], chanx_left_in[24], chanx_right_in[24], chanx_left_in[30], chanx_right_in[30], chanx_left_in[36], chanx_right_in[36]}),
		.sram(mux_2level_tapbuf_size14_6_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_6_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_6__pin_outpad_0_));

	mux_2level_tapbuf_size14 mux_bottom_ipin_7 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31], chanx_left_in[37], chanx_right_in[37]}),
		.sram(mux_2level_tapbuf_size14_7_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_7_sram_inv[0:7]),
		.out(top_grid_bottom_width_0_height_0_subtile_7__pin_outpad_0_));

	mux_2level_tapbuf_size14 mux_top_ipin_0 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14], chanx_left_in[20], chanx_right_in[20], chanx_left_in[26], chanx_right_in[26], chanx_left_in[32], chanx_right_in[32], chanx_left_in[38], chanx_right_in[38]}),
		.sram(mux_2level_tapbuf_size14_8_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_8_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_rst__0_));

	mux_2level_tapbuf_size14 mux_top_ipin_2 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16], chanx_left_in[22], chanx_right_in[22], chanx_left_in[28], chanx_right_in[28], chanx_left_in[34], chanx_right_in[34], chanx_left_in[40], chanx_right_in[40]}),
		.sram(mux_2level_tapbuf_size14_9_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_9_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_0_3_));

	mux_2level_tapbuf_size14 mux_top_ipin_3 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29], chanx_left_in[35], chanx_right_in[35], chanx_left_in[41], chanx_right_in[41]}),
		.sram(mux_2level_tapbuf_size14_10_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_10_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_0_7_));

	mux_2level_tapbuf_size14 mux_top_ipin_10 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18], chanx_left_in[24], chanx_right_in[24], chanx_left_in[30], chanx_right_in[30], chanx_left_in[36], chanx_right_in[36]}),
		.sram(mux_2level_tapbuf_size14_11_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_11_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_0_));

	mux_2level_tapbuf_size14 mux_top_ipin_11 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31], chanx_left_in[37], chanx_right_in[37]}),
		.sram(mux_2level_tapbuf_size14_12_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_12_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_4_));

	mux_2level_tapbuf_size14 mux_top_ipin_12 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14], chanx_left_in[20], chanx_right_in[20], chanx_left_in[26], chanx_right_in[26], chanx_left_in[32], chanx_right_in[32], chanx_left_in[38], chanx_right_in[38]}),
		.sram(mux_2level_tapbuf_size14_13_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_13_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_8_));

	mux_2level_tapbuf_size14 mux_top_ipin_19 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27], chanx_left_in[33], chanx_right_in[33], chanx_left_in[39], chanx_right_in[39]}),
		.sram(mux_2level_tapbuf_size14_14_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_14_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_1_));

	mux_2level_tapbuf_size14 mux_top_ipin_20 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16], chanx_left_in[22], chanx_right_in[22], chanx_left_in[28], chanx_right_in[28], chanx_left_in[34], chanx_right_in[34], chanx_left_in[40], chanx_right_in[40]}),
		.sram(mux_2level_tapbuf_size14_15_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_15_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_5_));

	mux_2level_tapbuf_size14 mux_top_ipin_21 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29], chanx_left_in[35], chanx_right_in[35], chanx_left_in[41], chanx_right_in[41]}),
		.sram(mux_2level_tapbuf_size14_16_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_16_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_9_));

	mux_2level_tapbuf_size14 mux_top_ipin_28 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18], chanx_left_in[24], chanx_right_in[24], chanx_left_in[30], chanx_right_in[30], chanx_left_in[36], chanx_right_in[36]}),
		.sram(mux_2level_tapbuf_size14_17_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_17_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_2_));

	mux_2level_tapbuf_size14 mux_top_ipin_29 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31], chanx_left_in[37], chanx_right_in[37]}),
		.sram(mux_2level_tapbuf_size14_18_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_18_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_6_));

	mux_2level_tapbuf_size14 mux_top_ipin_30 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14], chanx_left_in[20], chanx_right_in[20], chanx_left_in[26], chanx_right_in[26], chanx_left_in[32], chanx_right_in[32], chanx_left_in[38], chanx_right_in[38]}),
		.sram(mux_2level_tapbuf_size14_19_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_19_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_10_));

	mux_2level_tapbuf_size14 mux_top_ipin_37 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27], chanx_left_in[33], chanx_right_in[33], chanx_left_in[39], chanx_right_in[39]}),
		.sram(mux_2level_tapbuf_size14_20_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_20_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_3_));

	mux_2level_tapbuf_size14 mux_top_ipin_38 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16], chanx_left_in[22], chanx_right_in[22], chanx_left_in[28], chanx_right_in[28], chanx_left_in[34], chanx_right_in[34], chanx_left_in[40], chanx_right_in[40]}),
		.sram(mux_2level_tapbuf_size14_21_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_21_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_7_));

	mux_2level_tapbuf_size14 mux_top_ipin_45 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29], chanx_left_in[35], chanx_right_in[35], chanx_left_in[41], chanx_right_in[41]}),
		.sram(mux_2level_tapbuf_size14_22_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_22_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_ivalid_0_0_));

	mux_2level_tapbuf_size14 mux_top_ipin_46 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18], chanx_left_in[24], chanx_right_in[24], chanx_left_in[30], chanx_right_in[30], chanx_left_in[36], chanx_right_in[36]}),
		.sram(mux_2level_tapbuf_size14_23_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_23_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_ivalid_4_0_));

	mux_2level_tapbuf_size14 mux_top_ipin_47 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31], chanx_left_in[37], chanx_right_in[37]}),
		.sram(mux_2level_tapbuf_size14_24_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_24_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_ivch_3_0_));

	mux_2level_tapbuf_size14 mux_top_ipin_48 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[8], chanx_right_in[8], chanx_left_in[14], chanx_right_in[14], chanx_left_in[20], chanx_right_in[20], chanx_left_in[26], chanx_right_in[26], chanx_left_in[32], chanx_right_in[32], chanx_left_in[38], chanx_right_in[38]}),
		.sram(mux_2level_tapbuf_size14_25_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_25_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_iack_1_0_));

	mux_2level_tapbuf_size14 mux_top_ipin_49 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27], chanx_left_in[33], chanx_right_in[33], chanx_left_in[39], chanx_right_in[39]}),
		.sram(mux_2level_tapbuf_size14_26_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_26_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_iack_3_0_));

	mux_2level_tapbuf_size14 mux_top_ipin_50 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[10], chanx_right_in[10], chanx_left_in[16], chanx_right_in[16], chanx_left_in[22], chanx_right_in[22], chanx_left_in[28], chanx_right_in[28], chanx_left_in[34], chanx_right_in[34], chanx_left_in[40], chanx_right_in[40]}),
		.sram(mux_2level_tapbuf_size14_27_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_27_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_ilck_0_0_));

	mux_2level_tapbuf_size14 mux_top_ipin_51 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29], chanx_left_in[35], chanx_right_in[35], chanx_left_in[41], chanx_right_in[41]}),
		.sram(mux_2level_tapbuf_size14_28_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_28_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_ilck_2_0_));

	mux_2level_tapbuf_size14 mux_top_ipin_52 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[6], chanx_right_in[6], chanx_left_in[12], chanx_right_in[12], chanx_left_in[18], chanx_right_in[18], chanx_left_in[24], chanx_right_in[24], chanx_left_in[30], chanx_right_in[30], chanx_left_in[36], chanx_right_in[36]}),
		.sram(mux_2level_tapbuf_size14_29_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_29_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_ilck_4_0_));

	mux_2level_tapbuf_size14_mem mem_bottom_ipin_0 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(mux_2level_tapbuf_size14_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_0_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_bottom_ipin_1 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_1_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_bottom_ipin_2 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_2_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_bottom_ipin_3 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_3_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_bottom_ipin_4 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_4_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_4_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_bottom_ipin_5 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_5_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_5_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_bottom_ipin_6 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_6_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_6_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_bottom_ipin_7 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_7_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_7_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_7_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_ipin_0 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_7_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_8_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_8_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_8_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_ipin_2 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_9_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_9_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_9_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_ipin_3 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_9_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_10_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_10_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_10_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_ipin_10 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_11_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_11_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_11_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_ipin_11 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_11_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_12_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_12_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_12_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_ipin_12 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_12_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_13_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_13_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_13_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_ipin_19 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_12_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_14_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_14_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_14_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_ipin_20 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_14_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_15_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_15_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_15_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_ipin_21 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_15_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_16_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_16_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_16_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_ipin_28 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_18_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_17_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_17_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_17_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_ipin_29 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_17_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_18_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_18_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_18_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_ipin_30 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_18_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_19_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_19_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_19_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_ipin_37 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_24_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_20_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_20_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_20_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_ipin_38 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_20_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_21_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_21_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_21_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_ipin_45 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_30_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_22_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_22_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_22_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_ipin_46 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_22_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_23_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_23_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_23_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_ipin_47 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_23_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_24_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_24_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_24_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_ipin_48 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_24_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_25_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_25_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_25_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_ipin_49 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_25_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_26_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_26_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_26_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_ipin_50 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_26_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_27_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_27_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_27_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_ipin_51 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_27_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_28_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_28_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_28_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_top_ipin_52 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_28_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_29_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_29_sram_inv[0:7]));

	mux_2level_tapbuf_size12 mux_top_ipin_1 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[9], chanx_right_in[9], chanx_left_in[16], chanx_right_in[16], chanx_left_in[23], chanx_right_in[23], chanx_left_in[30], chanx_right_in[30], chanx_left_in[37], chanx_right_in[37]}),
		.sram(mux_2level_tapbuf_size12_0_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_0_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_my_ypos_1_));

	mux_2level_tapbuf_size12 mux_top_ipin_4 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[12], chanx_right_in[12], chanx_left_in[19], chanx_right_in[19], chanx_left_in[26], chanx_right_in[26], chanx_left_in[33], chanx_right_in[33], chanx_left_in[40], chanx_right_in[40]}),
		.sram(mux_2level_tapbuf_size12_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_1_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_0_11_));

	mux_2level_tapbuf_size12 mux_top_ipin_5 (
		.in({chanx_left_in[6], chanx_right_in[6], chanx_left_in[13], chanx_right_in[13], chanx_left_in[20], chanx_right_in[20], chanx_left_in[27], chanx_right_in[27], chanx_left_in[34], chanx_right_in[34], chanx_left_in[41], chanx_right_in[41]}),
		.sram(mux_2level_tapbuf_size12_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_2_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_0_15_));

	mux_2level_tapbuf_size12 mux_top_ipin_6 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[7], chanx_right_in[7], chanx_left_in[14], chanx_right_in[14], chanx_left_in[21], chanx_right_in[21], chanx_left_in[28], chanx_right_in[28], chanx_left_in[35], chanx_right_in[35]}),
		.sram(mux_2level_tapbuf_size12_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_3_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_0_19_));

	mux_2level_tapbuf_size12 mux_top_ipin_7 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[8], chanx_right_in[8], chanx_left_in[15], chanx_right_in[15], chanx_left_in[22], chanx_right_in[22], chanx_left_in[29], chanx_right_in[29], chanx_left_in[36], chanx_right_in[36]}),
		.sram(mux_2level_tapbuf_size12_4_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_4_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_0_23_));

	mux_2level_tapbuf_size12 mux_top_ipin_8 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[9], chanx_right_in[9], chanx_left_in[16], chanx_right_in[16], chanx_left_in[23], chanx_right_in[23], chanx_left_in[30], chanx_right_in[30], chanx_left_in[37], chanx_right_in[37]}),
		.sram(mux_2level_tapbuf_size12_5_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_5_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_0_27_));

	mux_2level_tapbuf_size12 mux_top_ipin_9 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[10], chanx_right_in[10], chanx_left_in[17], chanx_right_in[17], chanx_left_in[24], chanx_right_in[24], chanx_left_in[31], chanx_right_in[31], chanx_left_in[38], chanx_right_in[38]}),
		.sram(mux_2level_tapbuf_size12_6_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_6_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_0_31_));

	mux_2level_tapbuf_size12 mux_top_ipin_13 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[7], chanx_right_in[7], chanx_left_in[14], chanx_right_in[14], chanx_left_in[21], chanx_right_in[21], chanx_left_in[28], chanx_right_in[28], chanx_left_in[35], chanx_right_in[35]}),
		.sram(mux_2level_tapbuf_size12_7_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_7_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_12_));

	mux_2level_tapbuf_size12 mux_top_ipin_14 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[8], chanx_right_in[8], chanx_left_in[15], chanx_right_in[15], chanx_left_in[22], chanx_right_in[22], chanx_left_in[29], chanx_right_in[29], chanx_left_in[36], chanx_right_in[36]}),
		.sram(mux_2level_tapbuf_size12_8_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_8_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_16_));

	mux_2level_tapbuf_size12 mux_top_ipin_15 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[9], chanx_right_in[9], chanx_left_in[16], chanx_right_in[16], chanx_left_in[23], chanx_right_in[23], chanx_left_in[30], chanx_right_in[30], chanx_left_in[37], chanx_right_in[37]}),
		.sram(mux_2level_tapbuf_size12_9_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_9_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_20_));

	mux_2level_tapbuf_size12 mux_top_ipin_16 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[10], chanx_right_in[10], chanx_left_in[17], chanx_right_in[17], chanx_left_in[24], chanx_right_in[24], chanx_left_in[31], chanx_right_in[31], chanx_left_in[38], chanx_right_in[38]}),
		.sram(mux_2level_tapbuf_size12_10_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_10_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_24_));

	mux_2level_tapbuf_size12 mux_top_ipin_17 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[11], chanx_right_in[11], chanx_left_in[18], chanx_right_in[18], chanx_left_in[25], chanx_right_in[25], chanx_left_in[32], chanx_right_in[32], chanx_left_in[39], chanx_right_in[39]}),
		.sram(mux_2level_tapbuf_size12_11_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_11_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_28_));

	mux_2level_tapbuf_size12 mux_top_ipin_18 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[12], chanx_right_in[12], chanx_left_in[19], chanx_right_in[19], chanx_left_in[26], chanx_right_in[26], chanx_left_in[33], chanx_right_in[33], chanx_left_in[40], chanx_right_in[40]}),
		.sram(mux_2level_tapbuf_size12_12_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_12_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_1_32_));

	mux_2level_tapbuf_size12 mux_top_ipin_22 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[9], chanx_right_in[9], chanx_left_in[16], chanx_right_in[16], chanx_left_in[23], chanx_right_in[23], chanx_left_in[30], chanx_right_in[30], chanx_left_in[37], chanx_right_in[37]}),
		.sram(mux_2level_tapbuf_size12_13_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_13_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_13_));

	mux_2level_tapbuf_size12 mux_top_ipin_23 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[10], chanx_right_in[10], chanx_left_in[17], chanx_right_in[17], chanx_left_in[24], chanx_right_in[24], chanx_left_in[31], chanx_right_in[31], chanx_left_in[38], chanx_right_in[38]}),
		.sram(mux_2level_tapbuf_size12_14_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_14_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_17_));

	mux_2level_tapbuf_size12 mux_top_ipin_24 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[11], chanx_right_in[11], chanx_left_in[18], chanx_right_in[18], chanx_left_in[25], chanx_right_in[25], chanx_left_in[32], chanx_right_in[32], chanx_left_in[39], chanx_right_in[39]}),
		.sram(mux_2level_tapbuf_size12_15_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_15_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_21_));

	mux_2level_tapbuf_size12 mux_top_ipin_25 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[12], chanx_right_in[12], chanx_left_in[19], chanx_right_in[19], chanx_left_in[26], chanx_right_in[26], chanx_left_in[33], chanx_right_in[33], chanx_left_in[40], chanx_right_in[40]}),
		.sram(mux_2level_tapbuf_size12_16_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_16_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_25_));

	mux_2level_tapbuf_size12 mux_top_ipin_26 (
		.in({chanx_left_in[6], chanx_right_in[6], chanx_left_in[13], chanx_right_in[13], chanx_left_in[20], chanx_right_in[20], chanx_left_in[27], chanx_right_in[27], chanx_left_in[34], chanx_right_in[34], chanx_left_in[41], chanx_right_in[41]}),
		.sram(mux_2level_tapbuf_size12_17_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_17_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_29_));

	mux_2level_tapbuf_size12 mux_top_ipin_27 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[7], chanx_right_in[7], chanx_left_in[14], chanx_right_in[14], chanx_left_in[21], chanx_right_in[21], chanx_left_in[28], chanx_right_in[28], chanx_left_in[35], chanx_right_in[35]}),
		.sram(mux_2level_tapbuf_size12_18_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_18_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_33_));

	mux_2level_tapbuf_size12 mux_top_ipin_31 (
		.in({chanx_left_in[4], chanx_right_in[4], chanx_left_in[11], chanx_right_in[11], chanx_left_in[18], chanx_right_in[18], chanx_left_in[25], chanx_right_in[25], chanx_left_in[32], chanx_right_in[32], chanx_left_in[39], chanx_right_in[39]}),
		.sram(mux_2level_tapbuf_size12_19_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_19_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_14_));

	mux_2level_tapbuf_size12 mux_top_ipin_32 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[12], chanx_right_in[12], chanx_left_in[19], chanx_right_in[19], chanx_left_in[26], chanx_right_in[26], chanx_left_in[33], chanx_right_in[33], chanx_left_in[40], chanx_right_in[40]}),
		.sram(mux_2level_tapbuf_size12_20_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_20_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_18_));

	mux_2level_tapbuf_size12 mux_top_ipin_33 (
		.in({chanx_left_in[6], chanx_right_in[6], chanx_left_in[13], chanx_right_in[13], chanx_left_in[20], chanx_right_in[20], chanx_left_in[27], chanx_right_in[27], chanx_left_in[34], chanx_right_in[34], chanx_left_in[41], chanx_right_in[41]}),
		.sram(mux_2level_tapbuf_size12_21_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_21_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_22_));

	mux_2level_tapbuf_size12 mux_top_ipin_34 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[7], chanx_right_in[7], chanx_left_in[14], chanx_right_in[14], chanx_left_in[21], chanx_right_in[21], chanx_left_in[28], chanx_right_in[28], chanx_left_in[35], chanx_right_in[35]}),
		.sram(mux_2level_tapbuf_size12_22_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_22_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_26_));

	mux_2level_tapbuf_size12 mux_top_ipin_35 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[8], chanx_right_in[8], chanx_left_in[15], chanx_right_in[15], chanx_left_in[22], chanx_right_in[22], chanx_left_in[29], chanx_right_in[29], chanx_left_in[36], chanx_right_in[36]}),
		.sram(mux_2level_tapbuf_size12_23_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_23_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_30_));

	mux_2level_tapbuf_size12 mux_top_ipin_36 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[9], chanx_right_in[9], chanx_left_in[16], chanx_right_in[16], chanx_left_in[23], chanx_right_in[23], chanx_left_in[30], chanx_right_in[30], chanx_left_in[37], chanx_right_in[37]}),
		.sram(mux_2level_tapbuf_size12_24_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_24_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_3_34_));

	mux_2level_tapbuf_size12 mux_top_ipin_39 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[12], chanx_right_in[12], chanx_left_in[19], chanx_right_in[19], chanx_left_in[26], chanx_right_in[26], chanx_left_in[33], chanx_right_in[33], chanx_left_in[40], chanx_right_in[40]}),
		.sram(mux_2level_tapbuf_size12_25_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_25_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_11_));

	mux_2level_tapbuf_size12 mux_top_ipin_40 (
		.in({chanx_left_in[6], chanx_right_in[6], chanx_left_in[13], chanx_right_in[13], chanx_left_in[20], chanx_right_in[20], chanx_left_in[27], chanx_right_in[27], chanx_left_in[34], chanx_right_in[34], chanx_left_in[41], chanx_right_in[41]}),
		.sram(mux_2level_tapbuf_size12_26_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_26_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_15_));

	mux_2level_tapbuf_size12 mux_top_ipin_41 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[7], chanx_right_in[7], chanx_left_in[14], chanx_right_in[14], chanx_left_in[21], chanx_right_in[21], chanx_left_in[28], chanx_right_in[28], chanx_left_in[35], chanx_right_in[35]}),
		.sram(mux_2level_tapbuf_size12_27_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_27_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_19_));

	mux_2level_tapbuf_size12 mux_top_ipin_42 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[8], chanx_right_in[8], chanx_left_in[15], chanx_right_in[15], chanx_left_in[22], chanx_right_in[22], chanx_left_in[29], chanx_right_in[29], chanx_left_in[36], chanx_right_in[36]}),
		.sram(mux_2level_tapbuf_size12_28_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_28_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_23_));

	mux_2level_tapbuf_size12 mux_top_ipin_43 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[9], chanx_right_in[9], chanx_left_in[16], chanx_right_in[16], chanx_left_in[23], chanx_right_in[23], chanx_left_in[30], chanx_right_in[30], chanx_left_in[37], chanx_right_in[37]}),
		.sram(mux_2level_tapbuf_size12_29_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_29_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_27_));

	mux_2level_tapbuf_size12 mux_top_ipin_44 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[10], chanx_right_in[10], chanx_left_in[17], chanx_right_in[17], chanx_left_in[24], chanx_right_in[24], chanx_left_in[31], chanx_right_in[31], chanx_left_in[38], chanx_right_in[38]}),
		.sram(mux_2level_tapbuf_size12_30_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size12_30_sram_inv[0:7]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_31_));

	mux_2level_tapbuf_size12_mem mem_top_ipin_1 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_8_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_0_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_0_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_4 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_10_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_1_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_1_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_5 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_2_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_2_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_6 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_3_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_3_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_7 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_4_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_4_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_8 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_5_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_5_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_9 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_6_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_6_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_13 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_13_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_7_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_7_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_7_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_14 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_7_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_8_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_8_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_8_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_15 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_8_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_9_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_9_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_9_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_16 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_9_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_10_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_10_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_10_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_17 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_10_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_11_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_11_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_11_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_18 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_11_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_12_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_12_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_12_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_22 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_16_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_13_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_13_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_13_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_23 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_13_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_14_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_14_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_14_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_24 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_14_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_15_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_15_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_15_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_25 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_15_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_16_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_16_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_16_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_26 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_16_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_17_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_17_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_17_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_27 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_17_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_18_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_18_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_18_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_31 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_19_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_19_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_19_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_19_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_32 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_19_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_20_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_20_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_20_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_33 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_20_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_21_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_21_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_21_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_34 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_21_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_22_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_22_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_22_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_35 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_22_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_23_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_23_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_23_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_36 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_23_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_24_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_24_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_24_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_39 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_21_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_25_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_25_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_25_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_40 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_25_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_26_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_26_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_26_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_41 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_26_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_27_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_27_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_27_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_42 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_27_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_28_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_28_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_28_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_43 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_28_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_29_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_29_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_29_sram_inv[0:7]));

	mux_2level_tapbuf_size12_mem mem_top_ipin_44 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size12_mem_29_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size12_mem_30_ccff_tail),
		.mem_out(mux_2level_tapbuf_size12_30_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size12_30_sram_inv[0:7]));

endmodule
// ----- END Verilog module for cbx_4__6_ -----

//----- Default net type -----
`default_nettype wire




