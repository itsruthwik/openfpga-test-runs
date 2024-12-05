//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for Unique Connection Blocks[2][2]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Thu Oct 17 11:38:19 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for cbx_2__2_ -----
module cbx_2__2_(pReset,
                 prog_clk,
                 chanx_left_in,
                 chanx_right_in,
                 ccff_head,
                 chanx_left_out,
                 chanx_right_out,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_I_2_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_I_6_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_I_10_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_I_14_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_I_18_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_I_22_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_I_26_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_I_30_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_I_34_,
                 top_grid_bottom_width_0_height_0_subtile_0__pin_I_38_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_0_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_1_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_2_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_3_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_4_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_5_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_6_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_7_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_8_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_9_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_10_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_11_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_12_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_13_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_14_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_15_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_16_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_17_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_18_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_19_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_20_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_21_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_22_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_23_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_24_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_25_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_26_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_27_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_28_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_29_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_30_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_31_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_32_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_33_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_34_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_0_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_1_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_2_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_3_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_4_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_5_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_6_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_7_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_8_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_9_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_10_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_11_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_12_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_13_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_14_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_15_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_16_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_17_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_18_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_19_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_20_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_21_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_22_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_23_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_24_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_25_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_26_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_27_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_28_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_29_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_30_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_31_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_32_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_33_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_34_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_ivalid_2_0_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_ivalid_4_0_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_ivch_2_0_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_ivch_4_0_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_iack_2_0_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_iack_2_1_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_iack_4_0_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_iack_4_1_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_ilck_2_0_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_ilck_2_1_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_ilck_4_0_,
                 bottom_grid_top_width_0_height_0_subtile_0__pin_ilck_4_1_,
                 ccff_tail);
//----- GLOBAL PORTS -----
input [0:0] pReset;
//----- GLOBAL PORTS -----
input [0:0] prog_clk;
//----- INPUT PORTS -----
input [0:159] chanx_left_in;
//----- INPUT PORTS -----
input [0:159] chanx_right_in;
//----- INPUT PORTS -----
input [0:0] ccff_head;
//----- OUTPUT PORTS -----
output [0:159] chanx_left_out;
//----- OUTPUT PORTS -----
output [0:159] chanx_right_out;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_I_2_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_I_6_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_I_10_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_I_14_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_I_18_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_I_22_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_I_26_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_I_30_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_I_34_;
//----- OUTPUT PORTS -----
output [0:0] top_grid_bottom_width_0_height_0_subtile_0__pin_I_38_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_1_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_2_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_3_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_4_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_5_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_6_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_7_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_8_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_9_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_10_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_11_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_12_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_13_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_14_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_15_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_16_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_17_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_18_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_19_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_20_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_21_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_22_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_23_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_24_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_25_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_26_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_27_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_28_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_29_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_30_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_31_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_32_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_33_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_34_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_1_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_2_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_3_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_4_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_5_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_6_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_7_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_8_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_9_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_10_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_11_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_12_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_13_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_14_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_15_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_16_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_17_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_18_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_19_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_20_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_21_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_22_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_23_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_24_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_25_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_26_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_27_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_28_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_29_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_30_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_31_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_32_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_33_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_34_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_ivalid_2_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_ivalid_4_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_ivch_2_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_ivch_4_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_iack_2_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_iack_2_1_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_iack_4_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_iack_4_1_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_ilck_2_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_ilck_2_1_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_ilck_4_0_;
//----- OUTPUT PORTS -----
output [0:0] bottom_grid_top_width_0_height_0_subtile_0__pin_ilck_4_1_;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:13] mux_2level_tapbuf_size48_0_sram;
wire [0:13] mux_2level_tapbuf_size48_0_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_10_sram;
wire [0:13] mux_2level_tapbuf_size48_10_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_11_sram;
wire [0:13] mux_2level_tapbuf_size48_11_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_12_sram;
wire [0:13] mux_2level_tapbuf_size48_12_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_13_sram;
wire [0:13] mux_2level_tapbuf_size48_13_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_14_sram;
wire [0:13] mux_2level_tapbuf_size48_14_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_15_sram;
wire [0:13] mux_2level_tapbuf_size48_15_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_16_sram;
wire [0:13] mux_2level_tapbuf_size48_16_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_17_sram;
wire [0:13] mux_2level_tapbuf_size48_17_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_18_sram;
wire [0:13] mux_2level_tapbuf_size48_18_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_19_sram;
wire [0:13] mux_2level_tapbuf_size48_19_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_1_sram;
wire [0:13] mux_2level_tapbuf_size48_1_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_20_sram;
wire [0:13] mux_2level_tapbuf_size48_20_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_21_sram;
wire [0:13] mux_2level_tapbuf_size48_21_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_22_sram;
wire [0:13] mux_2level_tapbuf_size48_22_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_23_sram;
wire [0:13] mux_2level_tapbuf_size48_23_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_24_sram;
wire [0:13] mux_2level_tapbuf_size48_24_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_25_sram;
wire [0:13] mux_2level_tapbuf_size48_25_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_26_sram;
wire [0:13] mux_2level_tapbuf_size48_26_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_27_sram;
wire [0:13] mux_2level_tapbuf_size48_27_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_28_sram;
wire [0:13] mux_2level_tapbuf_size48_28_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_29_sram;
wire [0:13] mux_2level_tapbuf_size48_29_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_2_sram;
wire [0:13] mux_2level_tapbuf_size48_2_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_30_sram;
wire [0:13] mux_2level_tapbuf_size48_30_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_31_sram;
wire [0:13] mux_2level_tapbuf_size48_31_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_32_sram;
wire [0:13] mux_2level_tapbuf_size48_32_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_33_sram;
wire [0:13] mux_2level_tapbuf_size48_33_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_34_sram;
wire [0:13] mux_2level_tapbuf_size48_34_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_35_sram;
wire [0:13] mux_2level_tapbuf_size48_35_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_36_sram;
wire [0:13] mux_2level_tapbuf_size48_36_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_37_sram;
wire [0:13] mux_2level_tapbuf_size48_37_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_38_sram;
wire [0:13] mux_2level_tapbuf_size48_38_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_39_sram;
wire [0:13] mux_2level_tapbuf_size48_39_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_3_sram;
wire [0:13] mux_2level_tapbuf_size48_3_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_40_sram;
wire [0:13] mux_2level_tapbuf_size48_40_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_41_sram;
wire [0:13] mux_2level_tapbuf_size48_41_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_42_sram;
wire [0:13] mux_2level_tapbuf_size48_42_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_43_sram;
wire [0:13] mux_2level_tapbuf_size48_43_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_44_sram;
wire [0:13] mux_2level_tapbuf_size48_44_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_45_sram;
wire [0:13] mux_2level_tapbuf_size48_45_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_46_sram;
wire [0:13] mux_2level_tapbuf_size48_46_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_47_sram;
wire [0:13] mux_2level_tapbuf_size48_47_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_48_sram;
wire [0:13] mux_2level_tapbuf_size48_48_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_49_sram;
wire [0:13] mux_2level_tapbuf_size48_49_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_4_sram;
wire [0:13] mux_2level_tapbuf_size48_4_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_50_sram;
wire [0:13] mux_2level_tapbuf_size48_50_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_51_sram;
wire [0:13] mux_2level_tapbuf_size48_51_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_52_sram;
wire [0:13] mux_2level_tapbuf_size48_52_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_53_sram;
wire [0:13] mux_2level_tapbuf_size48_53_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_54_sram;
wire [0:13] mux_2level_tapbuf_size48_54_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_55_sram;
wire [0:13] mux_2level_tapbuf_size48_55_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_56_sram;
wire [0:13] mux_2level_tapbuf_size48_56_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_57_sram;
wire [0:13] mux_2level_tapbuf_size48_57_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_58_sram;
wire [0:13] mux_2level_tapbuf_size48_58_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_59_sram;
wire [0:13] mux_2level_tapbuf_size48_59_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_5_sram;
wire [0:13] mux_2level_tapbuf_size48_5_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_60_sram;
wire [0:13] mux_2level_tapbuf_size48_60_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_61_sram;
wire [0:13] mux_2level_tapbuf_size48_61_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_62_sram;
wire [0:13] mux_2level_tapbuf_size48_62_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_63_sram;
wire [0:13] mux_2level_tapbuf_size48_63_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_64_sram;
wire [0:13] mux_2level_tapbuf_size48_64_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_65_sram;
wire [0:13] mux_2level_tapbuf_size48_65_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_66_sram;
wire [0:13] mux_2level_tapbuf_size48_66_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_67_sram;
wire [0:13] mux_2level_tapbuf_size48_67_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_68_sram;
wire [0:13] mux_2level_tapbuf_size48_68_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_69_sram;
wire [0:13] mux_2level_tapbuf_size48_69_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_6_sram;
wire [0:13] mux_2level_tapbuf_size48_6_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_70_sram;
wire [0:13] mux_2level_tapbuf_size48_70_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_71_sram;
wire [0:13] mux_2level_tapbuf_size48_71_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_72_sram;
wire [0:13] mux_2level_tapbuf_size48_72_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_73_sram;
wire [0:13] mux_2level_tapbuf_size48_73_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_74_sram;
wire [0:13] mux_2level_tapbuf_size48_74_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_75_sram;
wire [0:13] mux_2level_tapbuf_size48_75_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_76_sram;
wire [0:13] mux_2level_tapbuf_size48_76_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_77_sram;
wire [0:13] mux_2level_tapbuf_size48_77_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_78_sram;
wire [0:13] mux_2level_tapbuf_size48_78_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_79_sram;
wire [0:13] mux_2level_tapbuf_size48_79_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_7_sram;
wire [0:13] mux_2level_tapbuf_size48_7_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_80_sram;
wire [0:13] mux_2level_tapbuf_size48_80_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_81_sram;
wire [0:13] mux_2level_tapbuf_size48_81_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_82_sram;
wire [0:13] mux_2level_tapbuf_size48_82_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_83_sram;
wire [0:13] mux_2level_tapbuf_size48_83_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_84_sram;
wire [0:13] mux_2level_tapbuf_size48_84_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_85_sram;
wire [0:13] mux_2level_tapbuf_size48_85_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_86_sram;
wire [0:13] mux_2level_tapbuf_size48_86_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_87_sram;
wire [0:13] mux_2level_tapbuf_size48_87_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_88_sram;
wire [0:13] mux_2level_tapbuf_size48_88_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_89_sram;
wire [0:13] mux_2level_tapbuf_size48_89_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_8_sram;
wire [0:13] mux_2level_tapbuf_size48_8_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_90_sram;
wire [0:13] mux_2level_tapbuf_size48_90_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_91_sram;
wire [0:13] mux_2level_tapbuf_size48_91_sram_inv;
wire [0:13] mux_2level_tapbuf_size48_9_sram;
wire [0:13] mux_2level_tapbuf_size48_9_sram_inv;
wire [0:0] mux_2level_tapbuf_size48_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_10_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_11_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_12_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_13_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_14_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_15_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_16_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_17_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_18_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_19_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_20_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_21_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_22_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_23_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_24_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_25_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_26_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_27_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_28_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_29_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_30_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_31_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_32_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_33_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_34_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_35_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_36_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_37_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_38_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_39_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_40_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_41_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_42_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_43_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_44_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_45_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_46_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_47_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_48_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_49_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_4_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_50_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_51_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_52_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_53_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_54_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_55_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_56_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_57_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_58_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_59_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_5_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_60_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_61_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_62_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_63_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_64_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_65_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_66_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_67_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_68_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_69_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_6_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_70_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_71_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_72_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_73_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_74_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_75_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_76_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_77_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_78_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_79_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_7_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_80_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_81_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_82_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_83_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_84_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_85_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_86_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_87_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_88_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_89_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_8_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_90_ccff_tail;
wire [0:0] mux_2level_tapbuf_size48_mem_9_ccff_tail;

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
	assign chanx_right_out[104] = chanx_left_in[104];
// ----- Local connection due to Wire 105 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[105] = chanx_left_in[105];
// ----- Local connection due to Wire 106 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[106] = chanx_left_in[106];
// ----- Local connection due to Wire 107 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[107] = chanx_left_in[107];
// ----- Local connection due to Wire 108 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[108] = chanx_left_in[108];
// ----- Local connection due to Wire 109 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[109] = chanx_left_in[109];
// ----- Local connection due to Wire 110 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[110] = chanx_left_in[110];
// ----- Local connection due to Wire 111 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[111] = chanx_left_in[111];
// ----- Local connection due to Wire 112 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[112] = chanx_left_in[112];
// ----- Local connection due to Wire 113 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[113] = chanx_left_in[113];
// ----- Local connection due to Wire 114 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[114] = chanx_left_in[114];
// ----- Local connection due to Wire 115 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[115] = chanx_left_in[115];
// ----- Local connection due to Wire 116 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[116] = chanx_left_in[116];
// ----- Local connection due to Wire 117 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[117] = chanx_left_in[117];
// ----- Local connection due to Wire 118 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[118] = chanx_left_in[118];
// ----- Local connection due to Wire 119 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[119] = chanx_left_in[119];
// ----- Local connection due to Wire 120 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[120] = chanx_left_in[120];
// ----- Local connection due to Wire 121 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[121] = chanx_left_in[121];
// ----- Local connection due to Wire 122 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[122] = chanx_left_in[122];
// ----- Local connection due to Wire 123 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[123] = chanx_left_in[123];
// ----- Local connection due to Wire 124 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[124] = chanx_left_in[124];
// ----- Local connection due to Wire 125 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[125] = chanx_left_in[125];
// ----- Local connection due to Wire 126 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[126] = chanx_left_in[126];
// ----- Local connection due to Wire 127 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[127] = chanx_left_in[127];
// ----- Local connection due to Wire 128 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[128] = chanx_left_in[128];
// ----- Local connection due to Wire 129 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[129] = chanx_left_in[129];
// ----- Local connection due to Wire 130 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[130] = chanx_left_in[130];
// ----- Local connection due to Wire 131 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[131] = chanx_left_in[131];
// ----- Local connection due to Wire 132 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[132] = chanx_left_in[132];
// ----- Local connection due to Wire 133 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[133] = chanx_left_in[133];
// ----- Local connection due to Wire 134 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[134] = chanx_left_in[134];
// ----- Local connection due to Wire 135 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[135] = chanx_left_in[135];
// ----- Local connection due to Wire 136 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[136] = chanx_left_in[136];
// ----- Local connection due to Wire 137 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[137] = chanx_left_in[137];
// ----- Local connection due to Wire 138 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[138] = chanx_left_in[138];
// ----- Local connection due to Wire 139 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[139] = chanx_left_in[139];
// ----- Local connection due to Wire 140 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[140] = chanx_left_in[140];
// ----- Local connection due to Wire 141 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[141] = chanx_left_in[141];
// ----- Local connection due to Wire 142 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[142] = chanx_left_in[142];
// ----- Local connection due to Wire 143 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[143] = chanx_left_in[143];
// ----- Local connection due to Wire 144 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[144] = chanx_left_in[144];
// ----- Local connection due to Wire 145 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[145] = chanx_left_in[145];
// ----- Local connection due to Wire 146 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[146] = chanx_left_in[146];
// ----- Local connection due to Wire 147 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[147] = chanx_left_in[147];
// ----- Local connection due to Wire 148 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[148] = chanx_left_in[148];
// ----- Local connection due to Wire 149 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[149] = chanx_left_in[149];
// ----- Local connection due to Wire 150 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[150] = chanx_left_in[150];
// ----- Local connection due to Wire 151 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[151] = chanx_left_in[151];
// ----- Local connection due to Wire 152 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[152] = chanx_left_in[152];
// ----- Local connection due to Wire 153 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[153] = chanx_left_in[153];
// ----- Local connection due to Wire 154 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[154] = chanx_left_in[154];
// ----- Local connection due to Wire 155 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[155] = chanx_left_in[155];
// ----- Local connection due to Wire 156 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[156] = chanx_left_in[156];
// ----- Local connection due to Wire 157 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[157] = chanx_left_in[157];
// ----- Local connection due to Wire 158 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[158] = chanx_left_in[158];
// ----- Local connection due to Wire 159 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_right_out[159] = chanx_left_in[159];
// ----- Local connection due to Wire 160 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[0] = chanx_right_in[0];
// ----- Local connection due to Wire 161 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[1] = chanx_right_in[1];
// ----- Local connection due to Wire 162 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[2] = chanx_right_in[2];
// ----- Local connection due to Wire 163 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[3] = chanx_right_in[3];
// ----- Local connection due to Wire 164 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[4] = chanx_right_in[4];
// ----- Local connection due to Wire 165 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[5] = chanx_right_in[5];
// ----- Local connection due to Wire 166 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[6] = chanx_right_in[6];
// ----- Local connection due to Wire 167 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[7] = chanx_right_in[7];
// ----- Local connection due to Wire 168 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[8] = chanx_right_in[8];
// ----- Local connection due to Wire 169 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[9] = chanx_right_in[9];
// ----- Local connection due to Wire 170 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[10] = chanx_right_in[10];
// ----- Local connection due to Wire 171 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[11] = chanx_right_in[11];
// ----- Local connection due to Wire 172 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[12] = chanx_right_in[12];
// ----- Local connection due to Wire 173 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[13] = chanx_right_in[13];
// ----- Local connection due to Wire 174 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[14] = chanx_right_in[14];
// ----- Local connection due to Wire 175 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[15] = chanx_right_in[15];
// ----- Local connection due to Wire 176 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[16] = chanx_right_in[16];
// ----- Local connection due to Wire 177 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[17] = chanx_right_in[17];
// ----- Local connection due to Wire 178 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[18] = chanx_right_in[18];
// ----- Local connection due to Wire 179 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[19] = chanx_right_in[19];
// ----- Local connection due to Wire 180 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[20] = chanx_right_in[20];
// ----- Local connection due to Wire 181 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[21] = chanx_right_in[21];
// ----- Local connection due to Wire 182 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[22] = chanx_right_in[22];
// ----- Local connection due to Wire 183 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[23] = chanx_right_in[23];
// ----- Local connection due to Wire 184 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[24] = chanx_right_in[24];
// ----- Local connection due to Wire 185 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[25] = chanx_right_in[25];
// ----- Local connection due to Wire 186 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[26] = chanx_right_in[26];
// ----- Local connection due to Wire 187 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[27] = chanx_right_in[27];
// ----- Local connection due to Wire 188 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[28] = chanx_right_in[28];
// ----- Local connection due to Wire 189 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[29] = chanx_right_in[29];
// ----- Local connection due to Wire 190 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[30] = chanx_right_in[30];
// ----- Local connection due to Wire 191 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[31] = chanx_right_in[31];
// ----- Local connection due to Wire 192 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[32] = chanx_right_in[32];
// ----- Local connection due to Wire 193 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[33] = chanx_right_in[33];
// ----- Local connection due to Wire 194 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[34] = chanx_right_in[34];
// ----- Local connection due to Wire 195 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[35] = chanx_right_in[35];
// ----- Local connection due to Wire 196 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[36] = chanx_right_in[36];
// ----- Local connection due to Wire 197 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[37] = chanx_right_in[37];
// ----- Local connection due to Wire 198 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[38] = chanx_right_in[38];
// ----- Local connection due to Wire 199 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[39] = chanx_right_in[39];
// ----- Local connection due to Wire 200 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[40] = chanx_right_in[40];
// ----- Local connection due to Wire 201 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[41] = chanx_right_in[41];
// ----- Local connection due to Wire 202 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[42] = chanx_right_in[42];
// ----- Local connection due to Wire 203 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[43] = chanx_right_in[43];
// ----- Local connection due to Wire 204 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[44] = chanx_right_in[44];
// ----- Local connection due to Wire 205 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[45] = chanx_right_in[45];
// ----- Local connection due to Wire 206 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[46] = chanx_right_in[46];
// ----- Local connection due to Wire 207 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[47] = chanx_right_in[47];
// ----- Local connection due to Wire 208 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[48] = chanx_right_in[48];
// ----- Local connection due to Wire 209 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[49] = chanx_right_in[49];
// ----- Local connection due to Wire 210 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[50] = chanx_right_in[50];
// ----- Local connection due to Wire 211 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[51] = chanx_right_in[51];
// ----- Local connection due to Wire 212 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[52] = chanx_right_in[52];
// ----- Local connection due to Wire 213 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[53] = chanx_right_in[53];
// ----- Local connection due to Wire 214 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[54] = chanx_right_in[54];
// ----- Local connection due to Wire 215 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[55] = chanx_right_in[55];
// ----- Local connection due to Wire 216 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[56] = chanx_right_in[56];
// ----- Local connection due to Wire 217 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[57] = chanx_right_in[57];
// ----- Local connection due to Wire 218 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[58] = chanx_right_in[58];
// ----- Local connection due to Wire 219 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[59] = chanx_right_in[59];
// ----- Local connection due to Wire 220 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[60] = chanx_right_in[60];
// ----- Local connection due to Wire 221 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[61] = chanx_right_in[61];
// ----- Local connection due to Wire 222 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[62] = chanx_right_in[62];
// ----- Local connection due to Wire 223 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[63] = chanx_right_in[63];
// ----- Local connection due to Wire 224 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[64] = chanx_right_in[64];
// ----- Local connection due to Wire 225 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[65] = chanx_right_in[65];
// ----- Local connection due to Wire 226 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[66] = chanx_right_in[66];
// ----- Local connection due to Wire 227 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[67] = chanx_right_in[67];
// ----- Local connection due to Wire 228 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[68] = chanx_right_in[68];
// ----- Local connection due to Wire 229 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[69] = chanx_right_in[69];
// ----- Local connection due to Wire 230 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[70] = chanx_right_in[70];
// ----- Local connection due to Wire 231 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[71] = chanx_right_in[71];
// ----- Local connection due to Wire 232 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[72] = chanx_right_in[72];
// ----- Local connection due to Wire 233 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[73] = chanx_right_in[73];
// ----- Local connection due to Wire 234 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[74] = chanx_right_in[74];
// ----- Local connection due to Wire 235 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[75] = chanx_right_in[75];
// ----- Local connection due to Wire 236 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[76] = chanx_right_in[76];
// ----- Local connection due to Wire 237 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[77] = chanx_right_in[77];
// ----- Local connection due to Wire 238 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[78] = chanx_right_in[78];
// ----- Local connection due to Wire 239 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[79] = chanx_right_in[79];
// ----- Local connection due to Wire 240 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[80] = chanx_right_in[80];
// ----- Local connection due to Wire 241 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[81] = chanx_right_in[81];
// ----- Local connection due to Wire 242 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[82] = chanx_right_in[82];
// ----- Local connection due to Wire 243 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[83] = chanx_right_in[83];
// ----- Local connection due to Wire 244 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[84] = chanx_right_in[84];
// ----- Local connection due to Wire 245 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[85] = chanx_right_in[85];
// ----- Local connection due to Wire 246 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[86] = chanx_right_in[86];
// ----- Local connection due to Wire 247 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[87] = chanx_right_in[87];
// ----- Local connection due to Wire 248 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[88] = chanx_right_in[88];
// ----- Local connection due to Wire 249 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[89] = chanx_right_in[89];
// ----- Local connection due to Wire 250 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[90] = chanx_right_in[90];
// ----- Local connection due to Wire 251 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[91] = chanx_right_in[91];
// ----- Local connection due to Wire 252 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[92] = chanx_right_in[92];
// ----- Local connection due to Wire 253 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[93] = chanx_right_in[93];
// ----- Local connection due to Wire 254 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[94] = chanx_right_in[94];
// ----- Local connection due to Wire 255 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[95] = chanx_right_in[95];
// ----- Local connection due to Wire 256 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[96] = chanx_right_in[96];
// ----- Local connection due to Wire 257 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[97] = chanx_right_in[97];
// ----- Local connection due to Wire 258 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[98] = chanx_right_in[98];
// ----- Local connection due to Wire 259 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[99] = chanx_right_in[99];
// ----- Local connection due to Wire 260 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[100] = chanx_right_in[100];
// ----- Local connection due to Wire 261 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[101] = chanx_right_in[101];
// ----- Local connection due to Wire 262 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[102] = chanx_right_in[102];
// ----- Local connection due to Wire 263 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[103] = chanx_right_in[103];
// ----- Local connection due to Wire 264 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[104] = chanx_right_in[104];
// ----- Local connection due to Wire 265 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[105] = chanx_right_in[105];
// ----- Local connection due to Wire 266 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[106] = chanx_right_in[106];
// ----- Local connection due to Wire 267 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[107] = chanx_right_in[107];
// ----- Local connection due to Wire 268 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[108] = chanx_right_in[108];
// ----- Local connection due to Wire 269 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[109] = chanx_right_in[109];
// ----- Local connection due to Wire 270 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[110] = chanx_right_in[110];
// ----- Local connection due to Wire 271 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[111] = chanx_right_in[111];
// ----- Local connection due to Wire 272 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[112] = chanx_right_in[112];
// ----- Local connection due to Wire 273 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[113] = chanx_right_in[113];
// ----- Local connection due to Wire 274 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[114] = chanx_right_in[114];
// ----- Local connection due to Wire 275 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[115] = chanx_right_in[115];
// ----- Local connection due to Wire 276 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[116] = chanx_right_in[116];
// ----- Local connection due to Wire 277 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[117] = chanx_right_in[117];
// ----- Local connection due to Wire 278 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[118] = chanx_right_in[118];
// ----- Local connection due to Wire 279 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[119] = chanx_right_in[119];
// ----- Local connection due to Wire 280 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[120] = chanx_right_in[120];
// ----- Local connection due to Wire 281 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[121] = chanx_right_in[121];
// ----- Local connection due to Wire 282 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[122] = chanx_right_in[122];
// ----- Local connection due to Wire 283 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[123] = chanx_right_in[123];
// ----- Local connection due to Wire 284 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[124] = chanx_right_in[124];
// ----- Local connection due to Wire 285 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[125] = chanx_right_in[125];
// ----- Local connection due to Wire 286 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[126] = chanx_right_in[126];
// ----- Local connection due to Wire 287 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[127] = chanx_right_in[127];
// ----- Local connection due to Wire 288 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[128] = chanx_right_in[128];
// ----- Local connection due to Wire 289 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[129] = chanx_right_in[129];
// ----- Local connection due to Wire 290 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[130] = chanx_right_in[130];
// ----- Local connection due to Wire 291 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[131] = chanx_right_in[131];
// ----- Local connection due to Wire 292 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[132] = chanx_right_in[132];
// ----- Local connection due to Wire 293 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[133] = chanx_right_in[133];
// ----- Local connection due to Wire 294 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[134] = chanx_right_in[134];
// ----- Local connection due to Wire 295 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[135] = chanx_right_in[135];
// ----- Local connection due to Wire 296 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[136] = chanx_right_in[136];
// ----- Local connection due to Wire 297 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[137] = chanx_right_in[137];
// ----- Local connection due to Wire 298 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[138] = chanx_right_in[138];
// ----- Local connection due to Wire 299 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[139] = chanx_right_in[139];
// ----- Local connection due to Wire 300 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[140] = chanx_right_in[140];
// ----- Local connection due to Wire 301 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[141] = chanx_right_in[141];
// ----- Local connection due to Wire 302 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[142] = chanx_right_in[142];
// ----- Local connection due to Wire 303 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[143] = chanx_right_in[143];
// ----- Local connection due to Wire 304 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[144] = chanx_right_in[144];
// ----- Local connection due to Wire 305 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[145] = chanx_right_in[145];
// ----- Local connection due to Wire 306 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[146] = chanx_right_in[146];
// ----- Local connection due to Wire 307 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[147] = chanx_right_in[147];
// ----- Local connection due to Wire 308 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[148] = chanx_right_in[148];
// ----- Local connection due to Wire 309 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[149] = chanx_right_in[149];
// ----- Local connection due to Wire 310 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[150] = chanx_right_in[150];
// ----- Local connection due to Wire 311 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[151] = chanx_right_in[151];
// ----- Local connection due to Wire 312 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[152] = chanx_right_in[152];
// ----- Local connection due to Wire 313 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[153] = chanx_right_in[153];
// ----- Local connection due to Wire 314 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[154] = chanx_right_in[154];
// ----- Local connection due to Wire 315 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[155] = chanx_right_in[155];
// ----- Local connection due to Wire 316 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[156] = chanx_right_in[156];
// ----- Local connection due to Wire 317 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[157] = chanx_right_in[157];
// ----- Local connection due to Wire 318 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[158] = chanx_right_in[158];
// ----- Local connection due to Wire 319 -----
// ----- Net source id 0 -----
// ----- Net sink id 0 -----
	assign chanx_left_out[159] = chanx_right_in[159];
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	mux_2level_tapbuf_size48 mux_bottom_ipin_0 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[4], chanx_right_in[4], chanx_left_in[14], chanx_right_in[14], chanx_left_in[21], chanx_right_in[21], chanx_left_in[24], chanx_right_in[24], chanx_left_in[34], chanx_right_in[34], chanx_left_in[41], chanx_right_in[41], chanx_left_in[47], chanx_right_in[47], chanx_left_in[54], chanx_right_in[54], chanx_left_in[61], chanx_right_in[61], chanx_left_in[64], chanx_right_in[64], chanx_left_in[74], chanx_right_in[74], chanx_left_in[81], chanx_right_in[81], chanx_left_in[84], chanx_right_in[84], chanx_left_in[94], chanx_right_in[94], chanx_left_in[101], chanx_right_in[101], chanx_left_in[104], chanx_right_in[104], chanx_left_in[114], chanx_right_in[114], chanx_left_in[121], chanx_right_in[121], chanx_left_in[124], chanx_right_in[124], chanx_left_in[134], chanx_right_in[134], chanx_left_in[141], chanx_right_in[141], chanx_left_in[147], chanx_right_in[147], chanx_left_in[154], chanx_right_in[154]}),
		.sram(mux_2level_tapbuf_size48_0_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_0_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_I_2_));

	mux_2level_tapbuf_size48 mux_bottom_ipin_1 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[22], chanx_right_in[22], chanx_left_in[29], chanx_right_in[29], chanx_left_in[35], chanx_right_in[35], chanx_left_in[42], chanx_right_in[42], chanx_left_in[44], chanx_right_in[44], chanx_left_in[55], chanx_right_in[55], chanx_left_in[62], chanx_right_in[62], chanx_left_in[69], chanx_right_in[69], chanx_left_in[75], chanx_right_in[75], chanx_left_in[82], chanx_right_in[82], chanx_left_in[89], chanx_right_in[89], chanx_left_in[95], chanx_right_in[95], chanx_left_in[102], chanx_right_in[102], chanx_left_in[109], chanx_right_in[109], chanx_left_in[115], chanx_right_in[115], chanx_left_in[122], chanx_right_in[122], chanx_left_in[129], chanx_right_in[129], chanx_left_in[135], chanx_right_in[135], chanx_left_in[142], chanx_right_in[142], chanx_left_in[144], chanx_right_in[144], chanx_left_in[155], chanx_right_in[155]}),
		.sram(mux_2level_tapbuf_size48_1_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_1_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_I_6_));

	mux_2level_tapbuf_size48 mux_bottom_ipin_2 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[10], chanx_right_in[10], chanx_left_in[12], chanx_right_in[12], chanx_left_in[23], chanx_right_in[23], chanx_left_in[30], chanx_right_in[30], chanx_left_in[32], chanx_right_in[32], chanx_left_in[43], chanx_right_in[43], chanx_left_in[49], chanx_right_in[49], chanx_left_in[52], chanx_right_in[52], chanx_left_in[63], chanx_right_in[63], chanx_left_in[70], chanx_right_in[70], chanx_left_in[72], chanx_right_in[72], chanx_left_in[83], chanx_right_in[83], chanx_left_in[90], chanx_right_in[90], chanx_left_in[92], chanx_right_in[92], chanx_left_in[103], chanx_right_in[103], chanx_left_in[110], chanx_right_in[110], chanx_left_in[112], chanx_right_in[112], chanx_left_in[123], chanx_right_in[123], chanx_left_in[130], chanx_right_in[130], chanx_left_in[132], chanx_right_in[132], chanx_left_in[143], chanx_right_in[143], chanx_left_in[149], chanx_right_in[149], chanx_left_in[152], chanx_right_in[152]}),
		.sram(mux_2level_tapbuf_size48_2_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_2_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_I_10_));

	mux_2level_tapbuf_size48 mux_bottom_ipin_3 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[20], chanx_right_in[20], chanx_left_in[31], chanx_right_in[31], chanx_left_in[37], chanx_right_in[37], chanx_left_in[40], chanx_right_in[40], chanx_left_in[50], chanx_right_in[50], chanx_left_in[57], chanx_right_in[57], chanx_left_in[60], chanx_right_in[60], chanx_left_in[71], chanx_right_in[71], chanx_left_in[77], chanx_right_in[77], chanx_left_in[80], chanx_right_in[80], chanx_left_in[91], chanx_right_in[91], chanx_left_in[97], chanx_right_in[97], chanx_left_in[100], chanx_right_in[100], chanx_left_in[111], chanx_right_in[111], chanx_left_in[117], chanx_right_in[117], chanx_left_in[120], chanx_right_in[120], chanx_left_in[131], chanx_right_in[131], chanx_left_in[137], chanx_right_in[137], chanx_left_in[140], chanx_right_in[140], chanx_left_in[150], chanx_right_in[150], chanx_left_in[157], chanx_right_in[157]}),
		.sram(mux_2level_tapbuf_size48_3_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_3_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_I_14_));

	mux_2level_tapbuf_size48 mux_bottom_ipin_4 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[8], chanx_right_in[8], chanx_left_in[18], chanx_right_in[18], chanx_left_in[25], chanx_right_in[25], chanx_left_in[28], chanx_right_in[28], chanx_left_in[38], chanx_right_in[38], chanx_left_in[45], chanx_right_in[45], chanx_left_in[51], chanx_right_in[51], chanx_left_in[58], chanx_right_in[58], chanx_left_in[65], chanx_right_in[65], chanx_left_in[68], chanx_right_in[68], chanx_left_in[78], chanx_right_in[78], chanx_left_in[85], chanx_right_in[85], chanx_left_in[88], chanx_right_in[88], chanx_left_in[98], chanx_right_in[98], chanx_left_in[105], chanx_right_in[105], chanx_left_in[108], chanx_right_in[108], chanx_left_in[118], chanx_right_in[118], chanx_left_in[125], chanx_right_in[125], chanx_left_in[128], chanx_right_in[128], chanx_left_in[138], chanx_right_in[138], chanx_left_in[145], chanx_right_in[145], chanx_left_in[151], chanx_right_in[151], chanx_left_in[158], chanx_right_in[158]}),
		.sram(mux_2level_tapbuf_size48_4_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_4_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_I_18_));

	mux_2level_tapbuf_size48 mux_bottom_ipin_5 (
		.in({chanx_left_in[6], chanx_right_in[6], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[26], chanx_right_in[26], chanx_left_in[33], chanx_right_in[33], chanx_left_in[39], chanx_right_in[39], chanx_left_in[46], chanx_right_in[46], chanx_left_in[48], chanx_right_in[48], chanx_left_in[59], chanx_right_in[59], chanx_left_in[66], chanx_right_in[66], chanx_left_in[73], chanx_right_in[73], chanx_left_in[79], chanx_right_in[79], chanx_left_in[86], chanx_right_in[86], chanx_left_in[93], chanx_right_in[93], chanx_left_in[99], chanx_right_in[99], chanx_left_in[106], chanx_right_in[106], chanx_left_in[113], chanx_right_in[113], chanx_left_in[119], chanx_right_in[119], chanx_left_in[126], chanx_right_in[126], chanx_left_in[133], chanx_right_in[133], chanx_left_in[139], chanx_right_in[139], chanx_left_in[146], chanx_right_in[146], chanx_left_in[148], chanx_right_in[148], chanx_left_in[159], chanx_right_in[159]}),
		.sram(mux_2level_tapbuf_size48_5_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_5_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_I_22_));

	mux_2level_tapbuf_size48 mux_bottom_ipin_6 (
		.in({chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[16], chanx_right_in[16], chanx_left_in[27], chanx_right_in[27], chanx_left_in[33], chanx_right_in[33], chanx_left_in[36], chanx_right_in[36], chanx_left_in[47], chanx_right_in[47], chanx_left_in[53], chanx_right_in[53], chanx_left_in[56], chanx_right_in[56], chanx_left_in[67], chanx_right_in[67], chanx_left_in[73], chanx_right_in[73], chanx_left_in[76], chanx_right_in[76], chanx_left_in[87], chanx_right_in[87], chanx_left_in[93], chanx_right_in[93], chanx_left_in[96], chanx_right_in[96], chanx_left_in[107], chanx_right_in[107], chanx_left_in[113], chanx_right_in[113], chanx_left_in[116], chanx_right_in[116], chanx_left_in[127], chanx_right_in[127], chanx_left_in[133], chanx_right_in[133], chanx_left_in[136], chanx_right_in[136], chanx_left_in[147], chanx_right_in[147], chanx_left_in[153], chanx_right_in[153], chanx_left_in[156], chanx_right_in[156]}),
		.sram(mux_2level_tapbuf_size48_6_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_6_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_I_26_));

	mux_2level_tapbuf_size48 mux_bottom_ipin_7 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[4], chanx_right_in[4], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[24], chanx_right_in[24], chanx_left_in[35], chanx_right_in[35], chanx_left_in[41], chanx_right_in[41], chanx_left_in[44], chanx_right_in[44], chanx_left_in[55], chanx_right_in[55], chanx_left_in[61], chanx_right_in[61], chanx_left_in[64], chanx_right_in[64], chanx_left_in[74], chanx_right_in[74], chanx_left_in[81], chanx_right_in[81], chanx_left_in[84], chanx_right_in[84], chanx_left_in[94], chanx_right_in[94], chanx_left_in[101], chanx_right_in[101], chanx_left_in[104], chanx_right_in[104], chanx_left_in[114], chanx_right_in[114], chanx_left_in[121], chanx_right_in[121], chanx_left_in[124], chanx_right_in[124], chanx_left_in[135], chanx_right_in[135], chanx_left_in[141], chanx_right_in[141], chanx_left_in[144], chanx_right_in[144], chanx_left_in[155], chanx_right_in[155]}),
		.sram(mux_2level_tapbuf_size48_7_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_7_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_I_30_));

	mux_2level_tapbuf_size48 mux_bottom_ipin_8 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[9], chanx_right_in[9], chanx_left_in[12], chanx_right_in[12], chanx_left_in[22], chanx_right_in[22], chanx_left_in[29], chanx_right_in[29], chanx_left_in[32], chanx_right_in[32], chanx_left_in[42], chanx_right_in[42], chanx_left_in[49], chanx_right_in[49], chanx_left_in[52], chanx_right_in[52], chanx_left_in[62], chanx_right_in[62], chanx_left_in[69], chanx_right_in[69], chanx_left_in[75], chanx_right_in[75], chanx_left_in[82], chanx_right_in[82], chanx_left_in[89], chanx_right_in[89], chanx_left_in[95], chanx_right_in[95], chanx_left_in[102], chanx_right_in[102], chanx_left_in[109], chanx_right_in[109], chanx_left_in[115], chanx_right_in[115], chanx_left_in[122], chanx_right_in[122], chanx_left_in[129], chanx_right_in[129], chanx_left_in[132], chanx_right_in[132], chanx_left_in[142], chanx_right_in[142], chanx_left_in[149], chanx_right_in[149], chanx_left_in[152], chanx_right_in[152]}),
		.sram(mux_2level_tapbuf_size48_8_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_8_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_I_34_));

	mux_2level_tapbuf_size48 mux_bottom_ipin_9 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[10], chanx_right_in[10], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[30], chanx_right_in[30], chanx_left_in[37], chanx_right_in[37], chanx_left_in[43], chanx_right_in[43], chanx_left_in[50], chanx_right_in[50], chanx_left_in[57], chanx_right_in[57], chanx_left_in[63], chanx_right_in[63], chanx_left_in[70], chanx_right_in[70], chanx_left_in[72], chanx_right_in[72], chanx_left_in[83], chanx_right_in[83], chanx_left_in[90], chanx_right_in[90], chanx_left_in[92], chanx_right_in[92], chanx_left_in[103], chanx_right_in[103], chanx_left_in[110], chanx_right_in[110], chanx_left_in[112], chanx_right_in[112], chanx_left_in[123], chanx_right_in[123], chanx_left_in[130], chanx_right_in[130], chanx_left_in[137], chanx_right_in[137], chanx_left_in[143], chanx_right_in[143], chanx_left_in[150], chanx_right_in[150], chanx_left_in[157], chanx_right_in[157]}),
		.sram(mux_2level_tapbuf_size48_9_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_9_sram_inv[0:13]),
		.out(top_grid_bottom_width_0_height_0_subtile_0__pin_I_38_));

	mux_2level_tapbuf_size48 mux_top_ipin_0 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[14], chanx_right_in[14], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27], chanx_left_in[34], chanx_right_in[34], chanx_left_in[41], chanx_right_in[41], chanx_left_in[47], chanx_right_in[47], chanx_left_in[54], chanx_right_in[54], chanx_left_in[61], chanx_right_in[61], chanx_left_in[67], chanx_right_in[67], chanx_left_in[74], chanx_right_in[74], chanx_left_in[81], chanx_right_in[81], chanx_left_in[87], chanx_right_in[87], chanx_left_in[94], chanx_right_in[94], chanx_left_in[101], chanx_right_in[101], chanx_left_in[107], chanx_right_in[107], chanx_left_in[114], chanx_right_in[114], chanx_left_in[121], chanx_right_in[121], chanx_left_in[127], chanx_right_in[127], chanx_left_in[134], chanx_right_in[134], chanx_left_in[141], chanx_right_in[141], chanx_left_in[147], chanx_right_in[147], chanx_left_in[154], chanx_right_in[154]}),
		.sram(mux_2level_tapbuf_size48_10_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_10_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_0_));

	mux_2level_tapbuf_size48 mux_top_ipin_1 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[4], chanx_right_in[4], chanx_left_in[15], chanx_right_in[15], chanx_left_in[22], chanx_right_in[22], chanx_left_in[24], chanx_right_in[24], chanx_left_in[35], chanx_right_in[35], chanx_left_in[42], chanx_right_in[42], chanx_left_in[44], chanx_right_in[44], chanx_left_in[55], chanx_right_in[55], chanx_left_in[62], chanx_right_in[62], chanx_left_in[64], chanx_right_in[64], chanx_left_in[75], chanx_right_in[75], chanx_left_in[82], chanx_right_in[82], chanx_left_in[84], chanx_right_in[84], chanx_left_in[95], chanx_right_in[95], chanx_left_in[102], chanx_right_in[102], chanx_left_in[104], chanx_right_in[104], chanx_left_in[115], chanx_right_in[115], chanx_left_in[122], chanx_right_in[122], chanx_left_in[124], chanx_right_in[124], chanx_left_in[135], chanx_right_in[135], chanx_left_in[142], chanx_right_in[142], chanx_left_in[144], chanx_right_in[144], chanx_left_in[155], chanx_right_in[155]}),
		.sram(mux_2level_tapbuf_size48_11_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_11_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_1_));

	mux_2level_tapbuf_size48 mux_top_ipin_2 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[12], chanx_right_in[12], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29], chanx_left_in[32], chanx_right_in[32], chanx_left_in[43], chanx_right_in[43], chanx_left_in[49], chanx_right_in[49], chanx_left_in[52], chanx_right_in[52], chanx_left_in[63], chanx_right_in[63], chanx_left_in[69], chanx_right_in[69], chanx_left_in[72], chanx_right_in[72], chanx_left_in[83], chanx_right_in[83], chanx_left_in[89], chanx_right_in[89], chanx_left_in[92], chanx_right_in[92], chanx_left_in[103], chanx_right_in[103], chanx_left_in[109], chanx_right_in[109], chanx_left_in[112], chanx_right_in[112], chanx_left_in[123], chanx_right_in[123], chanx_left_in[129], chanx_right_in[129], chanx_left_in[132], chanx_right_in[132], chanx_left_in[143], chanx_right_in[143], chanx_left_in[149], chanx_right_in[149], chanx_left_in[152], chanx_right_in[152]}),
		.sram(mux_2level_tapbuf_size48_12_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_12_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_2_));

	mux_2level_tapbuf_size48 mux_top_ipin_3 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[10], chanx_right_in[10], chanx_left_in[17], chanx_right_in[17], chanx_left_in[20], chanx_right_in[20], chanx_left_in[30], chanx_right_in[30], chanx_left_in[37], chanx_right_in[37], chanx_left_in[40], chanx_right_in[40], chanx_left_in[50], chanx_right_in[50], chanx_left_in[57], chanx_right_in[57], chanx_left_in[60], chanx_right_in[60], chanx_left_in[70], chanx_right_in[70], chanx_left_in[77], chanx_right_in[77], chanx_left_in[80], chanx_right_in[80], chanx_left_in[90], chanx_right_in[90], chanx_left_in[97], chanx_right_in[97], chanx_left_in[100], chanx_right_in[100], chanx_left_in[110], chanx_right_in[110], chanx_left_in[117], chanx_right_in[117], chanx_left_in[120], chanx_right_in[120], chanx_left_in[130], chanx_right_in[130], chanx_left_in[137], chanx_right_in[137], chanx_left_in[140], chanx_right_in[140], chanx_left_in[150], chanx_right_in[150], chanx_left_in[157], chanx_right_in[157]}),
		.sram(mux_2level_tapbuf_size48_13_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_13_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_3_));

	mux_2level_tapbuf_size48 mux_top_ipin_4 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[18], chanx_right_in[18], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31], chanx_left_in[38], chanx_right_in[38], chanx_left_in[45], chanx_right_in[45], chanx_left_in[51], chanx_right_in[51], chanx_left_in[58], chanx_right_in[58], chanx_left_in[65], chanx_right_in[65], chanx_left_in[71], chanx_right_in[71], chanx_left_in[78], chanx_right_in[78], chanx_left_in[85], chanx_right_in[85], chanx_left_in[91], chanx_right_in[91], chanx_left_in[98], chanx_right_in[98], chanx_left_in[105], chanx_right_in[105], chanx_left_in[111], chanx_right_in[111], chanx_left_in[118], chanx_right_in[118], chanx_left_in[125], chanx_right_in[125], chanx_left_in[131], chanx_right_in[131], chanx_left_in[138], chanx_right_in[138], chanx_left_in[145], chanx_right_in[145], chanx_left_in[151], chanx_right_in[151], chanx_left_in[158], chanx_right_in[158]}),
		.sram(mux_2level_tapbuf_size48_14_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_14_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_4_));

	mux_2level_tapbuf_size48 mux_top_ipin_5 (
		.in({chanx_left_in[6], chanx_right_in[6], chanx_left_in[8], chanx_right_in[8], chanx_left_in[19], chanx_right_in[19], chanx_left_in[26], chanx_right_in[26], chanx_left_in[28], chanx_right_in[28], chanx_left_in[39], chanx_right_in[39], chanx_left_in[46], chanx_right_in[46], chanx_left_in[48], chanx_right_in[48], chanx_left_in[59], chanx_right_in[59], chanx_left_in[66], chanx_right_in[66], chanx_left_in[68], chanx_right_in[68], chanx_left_in[79], chanx_right_in[79], chanx_left_in[86], chanx_right_in[86], chanx_left_in[88], chanx_right_in[88], chanx_left_in[99], chanx_right_in[99], chanx_left_in[106], chanx_right_in[106], chanx_left_in[108], chanx_right_in[108], chanx_left_in[119], chanx_right_in[119], chanx_left_in[126], chanx_right_in[126], chanx_left_in[128], chanx_right_in[128], chanx_left_in[139], chanx_right_in[139], chanx_left_in[146], chanx_right_in[146], chanx_left_in[148], chanx_right_in[148], chanx_left_in[159], chanx_right_in[159]}),
		.sram(mux_2level_tapbuf_size48_15_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_15_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_5_));

	mux_2level_tapbuf_size48 mux_top_ipin_6 (
		.in({chanx_left_in[6], chanx_right_in[6], chanx_left_in[13], chanx_right_in[13], chanx_left_in[16], chanx_right_in[16], chanx_left_in[26], chanx_right_in[26], chanx_left_in[33], chanx_right_in[33], chanx_left_in[36], chanx_right_in[36], chanx_left_in[46], chanx_right_in[46], chanx_left_in[53], chanx_right_in[53], chanx_left_in[56], chanx_right_in[56], chanx_left_in[66], chanx_right_in[66], chanx_left_in[73], chanx_right_in[73], chanx_left_in[76], chanx_right_in[76], chanx_left_in[86], chanx_right_in[86], chanx_left_in[93], chanx_right_in[93], chanx_left_in[96], chanx_right_in[96], chanx_left_in[106], chanx_right_in[106], chanx_left_in[113], chanx_right_in[113], chanx_left_in[116], chanx_right_in[116], chanx_left_in[126], chanx_right_in[126], chanx_left_in[133], chanx_right_in[133], chanx_left_in[136], chanx_right_in[136], chanx_left_in[146], chanx_right_in[146], chanx_left_in[153], chanx_right_in[153], chanx_left_in[156], chanx_right_in[156]}),
		.sram(mux_2level_tapbuf_size48_16_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_16_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_6_));

	mux_2level_tapbuf_size48 mux_top_ipin_7 (
		.in({chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[16], chanx_right_in[16], chanx_left_in[27], chanx_right_in[27], chanx_left_in[33], chanx_right_in[33], chanx_left_in[36], chanx_right_in[36], chanx_left_in[47], chanx_right_in[47], chanx_left_in[53], chanx_right_in[53], chanx_left_in[56], chanx_right_in[56], chanx_left_in[67], chanx_right_in[67], chanx_left_in[73], chanx_right_in[73], chanx_left_in[76], chanx_right_in[76], chanx_left_in[87], chanx_right_in[87], chanx_left_in[93], chanx_right_in[93], chanx_left_in[96], chanx_right_in[96], chanx_left_in[107], chanx_right_in[107], chanx_left_in[113], chanx_right_in[113], chanx_left_in[116], chanx_right_in[116], chanx_left_in[127], chanx_right_in[127], chanx_left_in[133], chanx_right_in[133], chanx_left_in[136], chanx_right_in[136], chanx_left_in[147], chanx_right_in[147], chanx_left_in[153], chanx_right_in[153], chanx_left_in[156], chanx_right_in[156]}),
		.sram(mux_2level_tapbuf_size48_17_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_17_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_7_));

	mux_2level_tapbuf_size48 mux_top_ipin_8 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[4], chanx_right_in[4], chanx_left_in[14], chanx_right_in[14], chanx_left_in[21], chanx_right_in[21], chanx_left_in[24], chanx_right_in[24], chanx_left_in[34], chanx_right_in[34], chanx_left_in[41], chanx_right_in[41], chanx_left_in[44], chanx_right_in[44], chanx_left_in[54], chanx_right_in[54], chanx_left_in[61], chanx_right_in[61], chanx_left_in[64], chanx_right_in[64], chanx_left_in[74], chanx_right_in[74], chanx_left_in[81], chanx_right_in[81], chanx_left_in[84], chanx_right_in[84], chanx_left_in[94], chanx_right_in[94], chanx_left_in[101], chanx_right_in[101], chanx_left_in[104], chanx_right_in[104], chanx_left_in[114], chanx_right_in[114], chanx_left_in[121], chanx_right_in[121], chanx_left_in[124], chanx_right_in[124], chanx_left_in[134], chanx_right_in[134], chanx_left_in[141], chanx_right_in[141], chanx_left_in[144], chanx_right_in[144], chanx_left_in[154], chanx_right_in[154]}),
		.sram(mux_2level_tapbuf_size48_18_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_18_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_8_));

	mux_2level_tapbuf_size48 mux_top_ipin_9 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[22], chanx_right_in[22], chanx_left_in[29], chanx_right_in[29], chanx_left_in[35], chanx_right_in[35], chanx_left_in[42], chanx_right_in[42], chanx_left_in[49], chanx_right_in[49], chanx_left_in[55], chanx_right_in[55], chanx_left_in[62], chanx_right_in[62], chanx_left_in[69], chanx_right_in[69], chanx_left_in[75], chanx_right_in[75], chanx_left_in[82], chanx_right_in[82], chanx_left_in[89], chanx_right_in[89], chanx_left_in[95], chanx_right_in[95], chanx_left_in[102], chanx_right_in[102], chanx_left_in[109], chanx_right_in[109], chanx_left_in[115], chanx_right_in[115], chanx_left_in[122], chanx_right_in[122], chanx_left_in[129], chanx_right_in[129], chanx_left_in[135], chanx_right_in[135], chanx_left_in[142], chanx_right_in[142], chanx_left_in[149], chanx_right_in[149], chanx_left_in[155], chanx_right_in[155]}),
		.sram(mux_2level_tapbuf_size48_19_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_19_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_9_));

	mux_2level_tapbuf_size48 mux_top_ipin_10 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[10], chanx_right_in[10], chanx_left_in[12], chanx_right_in[12], chanx_left_in[23], chanx_right_in[23], chanx_left_in[30], chanx_right_in[30], chanx_left_in[32], chanx_right_in[32], chanx_left_in[43], chanx_right_in[43], chanx_left_in[50], chanx_right_in[50], chanx_left_in[52], chanx_right_in[52], chanx_left_in[63], chanx_right_in[63], chanx_left_in[70], chanx_right_in[70], chanx_left_in[72], chanx_right_in[72], chanx_left_in[83], chanx_right_in[83], chanx_left_in[90], chanx_right_in[90], chanx_left_in[92], chanx_right_in[92], chanx_left_in[103], chanx_right_in[103], chanx_left_in[110], chanx_right_in[110], chanx_left_in[112], chanx_right_in[112], chanx_left_in[123], chanx_right_in[123], chanx_left_in[130], chanx_right_in[130], chanx_left_in[132], chanx_right_in[132], chanx_left_in[143], chanx_right_in[143], chanx_left_in[150], chanx_right_in[150], chanx_left_in[152], chanx_right_in[152]}),
		.sram(mux_2level_tapbuf_size48_20_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_20_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_10_));

	mux_2level_tapbuf_size48 mux_top_ipin_11 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[20], chanx_right_in[20], chanx_left_in[31], chanx_right_in[31], chanx_left_in[37], chanx_right_in[37], chanx_left_in[40], chanx_right_in[40], chanx_left_in[51], chanx_right_in[51], chanx_left_in[57], chanx_right_in[57], chanx_left_in[60], chanx_right_in[60], chanx_left_in[71], chanx_right_in[71], chanx_left_in[77], chanx_right_in[77], chanx_left_in[80], chanx_right_in[80], chanx_left_in[91], chanx_right_in[91], chanx_left_in[97], chanx_right_in[97], chanx_left_in[100], chanx_right_in[100], chanx_left_in[111], chanx_right_in[111], chanx_left_in[117], chanx_right_in[117], chanx_left_in[120], chanx_right_in[120], chanx_left_in[131], chanx_right_in[131], chanx_left_in[137], chanx_right_in[137], chanx_left_in[140], chanx_right_in[140], chanx_left_in[151], chanx_right_in[151], chanx_left_in[157], chanx_right_in[157]}),
		.sram(mux_2level_tapbuf_size48_21_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_21_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_11_));

	mux_2level_tapbuf_size48 mux_top_ipin_12 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[8], chanx_right_in[8], chanx_left_in[18], chanx_right_in[18], chanx_left_in[25], chanx_right_in[25], chanx_left_in[28], chanx_right_in[28], chanx_left_in[38], chanx_right_in[38], chanx_left_in[45], chanx_right_in[45], chanx_left_in[48], chanx_right_in[48], chanx_left_in[58], chanx_right_in[58], chanx_left_in[65], chanx_right_in[65], chanx_left_in[68], chanx_right_in[68], chanx_left_in[78], chanx_right_in[78], chanx_left_in[85], chanx_right_in[85], chanx_left_in[88], chanx_right_in[88], chanx_left_in[98], chanx_right_in[98], chanx_left_in[105], chanx_right_in[105], chanx_left_in[108], chanx_right_in[108], chanx_left_in[118], chanx_right_in[118], chanx_left_in[125], chanx_right_in[125], chanx_left_in[128], chanx_right_in[128], chanx_left_in[138], chanx_right_in[138], chanx_left_in[145], chanx_right_in[145], chanx_left_in[148], chanx_right_in[148], chanx_left_in[158], chanx_right_in[158]}),
		.sram(mux_2level_tapbuf_size48_22_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_22_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_12_));

	mux_2level_tapbuf_size48 mux_top_ipin_13 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[8], chanx_right_in[8], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[28], chanx_right_in[28], chanx_left_in[39], chanx_right_in[39], chanx_left_in[45], chanx_right_in[45], chanx_left_in[48], chanx_right_in[48], chanx_left_in[59], chanx_right_in[59], chanx_left_in[65], chanx_right_in[65], chanx_left_in[68], chanx_right_in[68], chanx_left_in[79], chanx_right_in[79], chanx_left_in[85], chanx_right_in[85], chanx_left_in[88], chanx_right_in[88], chanx_left_in[99], chanx_right_in[99], chanx_left_in[105], chanx_right_in[105], chanx_left_in[108], chanx_right_in[108], chanx_left_in[119], chanx_right_in[119], chanx_left_in[125], chanx_right_in[125], chanx_left_in[128], chanx_right_in[128], chanx_left_in[139], chanx_right_in[139], chanx_left_in[145], chanx_right_in[145], chanx_left_in[148], chanx_right_in[148], chanx_left_in[159], chanx_right_in[159]}),
		.sram(mux_2level_tapbuf_size48_23_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_23_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_13_));

	mux_2level_tapbuf_size48 mux_top_ipin_14 (
		.in({chanx_left_in[6], chanx_right_in[6], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[26], chanx_right_in[26], chanx_left_in[33], chanx_right_in[33], chanx_left_in[39], chanx_right_in[39], chanx_left_in[46], chanx_right_in[46], chanx_left_in[53], chanx_right_in[53], chanx_left_in[59], chanx_right_in[59], chanx_left_in[66], chanx_right_in[66], chanx_left_in[73], chanx_right_in[73], chanx_left_in[79], chanx_right_in[79], chanx_left_in[86], chanx_right_in[86], chanx_left_in[93], chanx_right_in[93], chanx_left_in[99], chanx_right_in[99], chanx_left_in[106], chanx_right_in[106], chanx_left_in[113], chanx_right_in[113], chanx_left_in[119], chanx_right_in[119], chanx_left_in[126], chanx_right_in[126], chanx_left_in[133], chanx_right_in[133], chanx_left_in[139], chanx_right_in[139], chanx_left_in[146], chanx_right_in[146], chanx_left_in[153], chanx_right_in[153], chanx_left_in[159], chanx_right_in[159]}),
		.sram(mux_2level_tapbuf_size48_24_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_24_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_14_));

	mux_2level_tapbuf_size48 mux_top_ipin_15 (
		.in({chanx_left_in[7], chanx_right_in[7], chanx_left_in[14], chanx_right_in[14], chanx_left_in[16], chanx_right_in[16], chanx_left_in[27], chanx_right_in[27], chanx_left_in[34], chanx_right_in[34], chanx_left_in[36], chanx_right_in[36], chanx_left_in[47], chanx_right_in[47], chanx_left_in[54], chanx_right_in[54], chanx_left_in[56], chanx_right_in[56], chanx_left_in[67], chanx_right_in[67], chanx_left_in[74], chanx_right_in[74], chanx_left_in[76], chanx_right_in[76], chanx_left_in[87], chanx_right_in[87], chanx_left_in[94], chanx_right_in[94], chanx_left_in[96], chanx_right_in[96], chanx_left_in[107], chanx_right_in[107], chanx_left_in[114], chanx_right_in[114], chanx_left_in[116], chanx_right_in[116], chanx_left_in[127], chanx_right_in[127], chanx_left_in[134], chanx_right_in[134], chanx_left_in[136], chanx_right_in[136], chanx_left_in[147], chanx_right_in[147], chanx_left_in[154], chanx_right_in[154], chanx_left_in[156], chanx_right_in[156]}),
		.sram(mux_2level_tapbuf_size48_25_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_25_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_15_));

	mux_2level_tapbuf_size48 mux_top_ipin_16 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[4], chanx_right_in[4], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[24], chanx_right_in[24], chanx_left_in[35], chanx_right_in[35], chanx_left_in[41], chanx_right_in[41], chanx_left_in[44], chanx_right_in[44], chanx_left_in[55], chanx_right_in[55], chanx_left_in[61], chanx_right_in[61], chanx_left_in[64], chanx_right_in[64], chanx_left_in[75], chanx_right_in[75], chanx_left_in[81], chanx_right_in[81], chanx_left_in[84], chanx_right_in[84], chanx_left_in[95], chanx_right_in[95], chanx_left_in[101], chanx_right_in[101], chanx_left_in[104], chanx_right_in[104], chanx_left_in[115], chanx_right_in[115], chanx_left_in[121], chanx_right_in[121], chanx_left_in[124], chanx_right_in[124], chanx_left_in[135], chanx_right_in[135], chanx_left_in[141], chanx_right_in[141], chanx_left_in[144], chanx_right_in[144], chanx_left_in[155], chanx_right_in[155]}),
		.sram(mux_2level_tapbuf_size48_26_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_26_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_16_));

	mux_2level_tapbuf_size48 mux_top_ipin_17 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[9], chanx_right_in[9], chanx_left_in[12], chanx_right_in[12], chanx_left_in[22], chanx_right_in[22], chanx_left_in[29], chanx_right_in[29], chanx_left_in[32], chanx_right_in[32], chanx_left_in[42], chanx_right_in[42], chanx_left_in[49], chanx_right_in[49], chanx_left_in[52], chanx_right_in[52], chanx_left_in[62], chanx_right_in[62], chanx_left_in[69], chanx_right_in[69], chanx_left_in[72], chanx_right_in[72], chanx_left_in[82], chanx_right_in[82], chanx_left_in[89], chanx_right_in[89], chanx_left_in[92], chanx_right_in[92], chanx_left_in[102], chanx_right_in[102], chanx_left_in[109], chanx_right_in[109], chanx_left_in[112], chanx_right_in[112], chanx_left_in[122], chanx_right_in[122], chanx_left_in[129], chanx_right_in[129], chanx_left_in[132], chanx_right_in[132], chanx_left_in[142], chanx_right_in[142], chanx_left_in[149], chanx_right_in[149], chanx_left_in[152], chanx_right_in[152]}),
		.sram(mux_2level_tapbuf_size48_27_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_27_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_17_));

	mux_2level_tapbuf_size48 mux_top_ipin_18 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[10], chanx_right_in[10], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[30], chanx_right_in[30], chanx_left_in[37], chanx_right_in[37], chanx_left_in[43], chanx_right_in[43], chanx_left_in[50], chanx_right_in[50], chanx_left_in[57], chanx_right_in[57], chanx_left_in[63], chanx_right_in[63], chanx_left_in[70], chanx_right_in[70], chanx_left_in[77], chanx_right_in[77], chanx_left_in[83], chanx_right_in[83], chanx_left_in[90], chanx_right_in[90], chanx_left_in[97], chanx_right_in[97], chanx_left_in[103], chanx_right_in[103], chanx_left_in[110], chanx_right_in[110], chanx_left_in[117], chanx_right_in[117], chanx_left_in[123], chanx_right_in[123], chanx_left_in[130], chanx_right_in[130], chanx_left_in[137], chanx_right_in[137], chanx_left_in[143], chanx_right_in[143], chanx_left_in[150], chanx_right_in[150], chanx_left_in[157], chanx_right_in[157]}),
		.sram(mux_2level_tapbuf_size48_28_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_28_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_18_));

	mux_2level_tapbuf_size48 mux_top_ipin_19 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[11], chanx_right_in[11], chanx_left_in[18], chanx_right_in[18], chanx_left_in[20], chanx_right_in[20], chanx_left_in[31], chanx_right_in[31], chanx_left_in[38], chanx_right_in[38], chanx_left_in[40], chanx_right_in[40], chanx_left_in[51], chanx_right_in[51], chanx_left_in[58], chanx_right_in[58], chanx_left_in[60], chanx_right_in[60], chanx_left_in[71], chanx_right_in[71], chanx_left_in[78], chanx_right_in[78], chanx_left_in[80], chanx_right_in[80], chanx_left_in[91], chanx_right_in[91], chanx_left_in[98], chanx_right_in[98], chanx_left_in[100], chanx_right_in[100], chanx_left_in[111], chanx_right_in[111], chanx_left_in[118], chanx_right_in[118], chanx_left_in[120], chanx_right_in[120], chanx_left_in[131], chanx_right_in[131], chanx_left_in[138], chanx_right_in[138], chanx_left_in[140], chanx_right_in[140], chanx_left_in[151], chanx_right_in[151], chanx_left_in[158], chanx_right_in[158]}),
		.sram(mux_2level_tapbuf_size48_29_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_29_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_19_));

	mux_2level_tapbuf_size48 mux_top_ipin_20 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[11], chanx_right_in[11], chanx_left_in[18], chanx_right_in[18], chanx_left_in[20], chanx_right_in[20], chanx_left_in[31], chanx_right_in[31], chanx_left_in[38], chanx_right_in[38], chanx_left_in[40], chanx_right_in[40], chanx_left_in[51], chanx_right_in[51], chanx_left_in[58], chanx_right_in[58], chanx_left_in[60], chanx_right_in[60], chanx_left_in[71], chanx_right_in[71], chanx_left_in[78], chanx_right_in[78], chanx_left_in[80], chanx_right_in[80], chanx_left_in[91], chanx_right_in[91], chanx_left_in[98], chanx_right_in[98], chanx_left_in[100], chanx_right_in[100], chanx_left_in[111], chanx_right_in[111], chanx_left_in[118], chanx_right_in[118], chanx_left_in[120], chanx_right_in[120], chanx_left_in[131], chanx_right_in[131], chanx_left_in[138], chanx_right_in[138], chanx_left_in[140], chanx_right_in[140], chanx_left_in[151], chanx_right_in[151], chanx_left_in[158], chanx_right_in[158]}),
		.sram(mux_2level_tapbuf_size48_30_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_30_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_20_));

	mux_2level_tapbuf_size48 mux_top_ipin_21 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[8], chanx_right_in[8], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[28], chanx_right_in[28], chanx_left_in[39], chanx_right_in[39], chanx_left_in[45], chanx_right_in[45], chanx_left_in[48], chanx_right_in[48], chanx_left_in[59], chanx_right_in[59], chanx_left_in[65], chanx_right_in[65], chanx_left_in[68], chanx_right_in[68], chanx_left_in[79], chanx_right_in[79], chanx_left_in[85], chanx_right_in[85], chanx_left_in[88], chanx_right_in[88], chanx_left_in[99], chanx_right_in[99], chanx_left_in[105], chanx_right_in[105], chanx_left_in[108], chanx_right_in[108], chanx_left_in[119], chanx_right_in[119], chanx_left_in[125], chanx_right_in[125], chanx_left_in[128], chanx_right_in[128], chanx_left_in[139], chanx_right_in[139], chanx_left_in[145], chanx_right_in[145], chanx_left_in[148], chanx_right_in[148], chanx_left_in[159], chanx_right_in[159]}),
		.sram(mux_2level_tapbuf_size48_31_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_31_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_21_));

	mux_2level_tapbuf_size48 mux_top_ipin_22 (
		.in({chanx_left_in[6], chanx_right_in[6], chanx_left_in[13], chanx_right_in[13], chanx_left_in[16], chanx_right_in[16], chanx_left_in[26], chanx_right_in[26], chanx_left_in[33], chanx_right_in[33], chanx_left_in[36], chanx_right_in[36], chanx_left_in[46], chanx_right_in[46], chanx_left_in[53], chanx_right_in[53], chanx_left_in[56], chanx_right_in[56], chanx_left_in[66], chanx_right_in[66], chanx_left_in[73], chanx_right_in[73], chanx_left_in[76], chanx_right_in[76], chanx_left_in[86], chanx_right_in[86], chanx_left_in[93], chanx_right_in[93], chanx_left_in[96], chanx_right_in[96], chanx_left_in[106], chanx_right_in[106], chanx_left_in[113], chanx_right_in[113], chanx_left_in[116], chanx_right_in[116], chanx_left_in[126], chanx_right_in[126], chanx_left_in[133], chanx_right_in[133], chanx_left_in[136], chanx_right_in[136], chanx_left_in[146], chanx_right_in[146], chanx_left_in[153], chanx_right_in[153], chanx_left_in[156], chanx_right_in[156]}),
		.sram(mux_2level_tapbuf_size48_32_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_32_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_22_));

	mux_2level_tapbuf_size48 mux_top_ipin_23 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[14], chanx_right_in[14], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27], chanx_left_in[34], chanx_right_in[34], chanx_left_in[41], chanx_right_in[41], chanx_left_in[47], chanx_right_in[47], chanx_left_in[54], chanx_right_in[54], chanx_left_in[61], chanx_right_in[61], chanx_left_in[67], chanx_right_in[67], chanx_left_in[74], chanx_right_in[74], chanx_left_in[81], chanx_right_in[81], chanx_left_in[87], chanx_right_in[87], chanx_left_in[94], chanx_right_in[94], chanx_left_in[101], chanx_right_in[101], chanx_left_in[107], chanx_right_in[107], chanx_left_in[114], chanx_right_in[114], chanx_left_in[121], chanx_right_in[121], chanx_left_in[127], chanx_right_in[127], chanx_left_in[134], chanx_right_in[134], chanx_left_in[141], chanx_right_in[141], chanx_left_in[147], chanx_right_in[147], chanx_left_in[154], chanx_right_in[154]}),
		.sram(mux_2level_tapbuf_size48_33_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_33_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_23_));

	mux_2level_tapbuf_size48 mux_top_ipin_24 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[4], chanx_right_in[4], chanx_left_in[15], chanx_right_in[15], chanx_left_in[22], chanx_right_in[22], chanx_left_in[24], chanx_right_in[24], chanx_left_in[35], chanx_right_in[35], chanx_left_in[42], chanx_right_in[42], chanx_left_in[44], chanx_right_in[44], chanx_left_in[55], chanx_right_in[55], chanx_left_in[62], chanx_right_in[62], chanx_left_in[64], chanx_right_in[64], chanx_left_in[75], chanx_right_in[75], chanx_left_in[82], chanx_right_in[82], chanx_left_in[84], chanx_right_in[84], chanx_left_in[95], chanx_right_in[95], chanx_left_in[102], chanx_right_in[102], chanx_left_in[104], chanx_right_in[104], chanx_left_in[115], chanx_right_in[115], chanx_left_in[122], chanx_right_in[122], chanx_left_in[124], chanx_right_in[124], chanx_left_in[135], chanx_right_in[135], chanx_left_in[142], chanx_right_in[142], chanx_left_in[144], chanx_right_in[144], chanx_left_in[155], chanx_right_in[155]}),
		.sram(mux_2level_tapbuf_size48_34_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_34_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_24_));

	mux_2level_tapbuf_size48 mux_top_ipin_25 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[12], chanx_right_in[12], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29], chanx_left_in[32], chanx_right_in[32], chanx_left_in[43], chanx_right_in[43], chanx_left_in[49], chanx_right_in[49], chanx_left_in[52], chanx_right_in[52], chanx_left_in[63], chanx_right_in[63], chanx_left_in[69], chanx_right_in[69], chanx_left_in[72], chanx_right_in[72], chanx_left_in[83], chanx_right_in[83], chanx_left_in[89], chanx_right_in[89], chanx_left_in[92], chanx_right_in[92], chanx_left_in[103], chanx_right_in[103], chanx_left_in[109], chanx_right_in[109], chanx_left_in[112], chanx_right_in[112], chanx_left_in[123], chanx_right_in[123], chanx_left_in[129], chanx_right_in[129], chanx_left_in[132], chanx_right_in[132], chanx_left_in[143], chanx_right_in[143], chanx_left_in[149], chanx_right_in[149], chanx_left_in[152], chanx_right_in[152]}),
		.sram(mux_2level_tapbuf_size48_35_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_35_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_25_));

	mux_2level_tapbuf_size48 mux_top_ipin_26 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[10], chanx_right_in[10], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[30], chanx_right_in[30], chanx_left_in[37], chanx_right_in[37], chanx_left_in[43], chanx_right_in[43], chanx_left_in[50], chanx_right_in[50], chanx_left_in[57], chanx_right_in[57], chanx_left_in[63], chanx_right_in[63], chanx_left_in[70], chanx_right_in[70], chanx_left_in[77], chanx_right_in[77], chanx_left_in[83], chanx_right_in[83], chanx_left_in[90], chanx_right_in[90], chanx_left_in[97], chanx_right_in[97], chanx_left_in[103], chanx_right_in[103], chanx_left_in[110], chanx_right_in[110], chanx_left_in[117], chanx_right_in[117], chanx_left_in[123], chanx_right_in[123], chanx_left_in[130], chanx_right_in[130], chanx_left_in[137], chanx_right_in[137], chanx_left_in[143], chanx_right_in[143], chanx_left_in[150], chanx_right_in[150], chanx_left_in[157], chanx_right_in[157]}),
		.sram(mux_2level_tapbuf_size48_36_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_36_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_26_));

	mux_2level_tapbuf_size48 mux_top_ipin_27 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[10], chanx_right_in[10], chanx_left_in[17], chanx_right_in[17], chanx_left_in[20], chanx_right_in[20], chanx_left_in[30], chanx_right_in[30], chanx_left_in[37], chanx_right_in[37], chanx_left_in[40], chanx_right_in[40], chanx_left_in[50], chanx_right_in[50], chanx_left_in[57], chanx_right_in[57], chanx_left_in[60], chanx_right_in[60], chanx_left_in[70], chanx_right_in[70], chanx_left_in[77], chanx_right_in[77], chanx_left_in[80], chanx_right_in[80], chanx_left_in[90], chanx_right_in[90], chanx_left_in[97], chanx_right_in[97], chanx_left_in[100], chanx_right_in[100], chanx_left_in[110], chanx_right_in[110], chanx_left_in[117], chanx_right_in[117], chanx_left_in[120], chanx_right_in[120], chanx_left_in[130], chanx_right_in[130], chanx_left_in[137], chanx_right_in[137], chanx_left_in[140], chanx_right_in[140], chanx_left_in[150], chanx_right_in[150], chanx_left_in[157], chanx_right_in[157]}),
		.sram(mux_2level_tapbuf_size48_37_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_37_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_27_));

	mux_2level_tapbuf_size48 mux_top_ipin_28 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[18], chanx_right_in[18], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31], chanx_left_in[38], chanx_right_in[38], chanx_left_in[45], chanx_right_in[45], chanx_left_in[51], chanx_right_in[51], chanx_left_in[58], chanx_right_in[58], chanx_left_in[65], chanx_right_in[65], chanx_left_in[71], chanx_right_in[71], chanx_left_in[78], chanx_right_in[78], chanx_left_in[85], chanx_right_in[85], chanx_left_in[91], chanx_right_in[91], chanx_left_in[98], chanx_right_in[98], chanx_left_in[105], chanx_right_in[105], chanx_left_in[111], chanx_right_in[111], chanx_left_in[118], chanx_right_in[118], chanx_left_in[125], chanx_right_in[125], chanx_left_in[131], chanx_right_in[131], chanx_left_in[138], chanx_right_in[138], chanx_left_in[145], chanx_right_in[145], chanx_left_in[151], chanx_right_in[151], chanx_left_in[158], chanx_right_in[158]}),
		.sram(mux_2level_tapbuf_size48_38_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_38_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_28_));

	mux_2level_tapbuf_size48 mux_top_ipin_29 (
		.in({chanx_left_in[6], chanx_right_in[6], chanx_left_in[8], chanx_right_in[8], chanx_left_in[19], chanx_right_in[19], chanx_left_in[26], chanx_right_in[26], chanx_left_in[28], chanx_right_in[28], chanx_left_in[39], chanx_right_in[39], chanx_left_in[46], chanx_right_in[46], chanx_left_in[48], chanx_right_in[48], chanx_left_in[59], chanx_right_in[59], chanx_left_in[66], chanx_right_in[66], chanx_left_in[68], chanx_right_in[68], chanx_left_in[79], chanx_right_in[79], chanx_left_in[86], chanx_right_in[86], chanx_left_in[88], chanx_right_in[88], chanx_left_in[99], chanx_right_in[99], chanx_left_in[106], chanx_right_in[106], chanx_left_in[108], chanx_right_in[108], chanx_left_in[119], chanx_right_in[119], chanx_left_in[126], chanx_right_in[126], chanx_left_in[128], chanx_right_in[128], chanx_left_in[139], chanx_right_in[139], chanx_left_in[146], chanx_right_in[146], chanx_left_in[148], chanx_right_in[148], chanx_left_in[159], chanx_right_in[159]}),
		.sram(mux_2level_tapbuf_size48_39_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_39_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_29_));

	mux_2level_tapbuf_size48 mux_top_ipin_30 (
		.in({chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[16], chanx_right_in[16], chanx_left_in[27], chanx_right_in[27], chanx_left_in[33], chanx_right_in[33], chanx_left_in[36], chanx_right_in[36], chanx_left_in[47], chanx_right_in[47], chanx_left_in[53], chanx_right_in[53], chanx_left_in[56], chanx_right_in[56], chanx_left_in[67], chanx_right_in[67], chanx_left_in[73], chanx_right_in[73], chanx_left_in[76], chanx_right_in[76], chanx_left_in[87], chanx_right_in[87], chanx_left_in[93], chanx_right_in[93], chanx_left_in[96], chanx_right_in[96], chanx_left_in[107], chanx_right_in[107], chanx_left_in[113], chanx_right_in[113], chanx_left_in[116], chanx_right_in[116], chanx_left_in[127], chanx_right_in[127], chanx_left_in[133], chanx_right_in[133], chanx_left_in[136], chanx_right_in[136], chanx_left_in[147], chanx_right_in[147], chanx_left_in[153], chanx_right_in[153], chanx_left_in[156], chanx_right_in[156]}),
		.sram(mux_2level_tapbuf_size48_40_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_40_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_30_));

	mux_2level_tapbuf_size48 mux_top_ipin_31 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[4], chanx_right_in[4], chanx_left_in[14], chanx_right_in[14], chanx_left_in[21], chanx_right_in[21], chanx_left_in[24], chanx_right_in[24], chanx_left_in[34], chanx_right_in[34], chanx_left_in[41], chanx_right_in[41], chanx_left_in[44], chanx_right_in[44], chanx_left_in[54], chanx_right_in[54], chanx_left_in[61], chanx_right_in[61], chanx_left_in[64], chanx_right_in[64], chanx_left_in[74], chanx_right_in[74], chanx_left_in[81], chanx_right_in[81], chanx_left_in[84], chanx_right_in[84], chanx_left_in[94], chanx_right_in[94], chanx_left_in[101], chanx_right_in[101], chanx_left_in[104], chanx_right_in[104], chanx_left_in[114], chanx_right_in[114], chanx_left_in[121], chanx_right_in[121], chanx_left_in[124], chanx_right_in[124], chanx_left_in[134], chanx_right_in[134], chanx_left_in[141], chanx_right_in[141], chanx_left_in[144], chanx_right_in[144], chanx_left_in[154], chanx_right_in[154]}),
		.sram(mux_2level_tapbuf_size48_41_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_41_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_31_));

	mux_2level_tapbuf_size48 mux_top_ipin_32 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[22], chanx_right_in[22], chanx_left_in[29], chanx_right_in[29], chanx_left_in[35], chanx_right_in[35], chanx_left_in[42], chanx_right_in[42], chanx_left_in[49], chanx_right_in[49], chanx_left_in[55], chanx_right_in[55], chanx_left_in[62], chanx_right_in[62], chanx_left_in[69], chanx_right_in[69], chanx_left_in[75], chanx_right_in[75], chanx_left_in[82], chanx_right_in[82], chanx_left_in[89], chanx_right_in[89], chanx_left_in[95], chanx_right_in[95], chanx_left_in[102], chanx_right_in[102], chanx_left_in[109], chanx_right_in[109], chanx_left_in[115], chanx_right_in[115], chanx_left_in[122], chanx_right_in[122], chanx_left_in[129], chanx_right_in[129], chanx_left_in[135], chanx_right_in[135], chanx_left_in[142], chanx_right_in[142], chanx_left_in[149], chanx_right_in[149], chanx_left_in[155], chanx_right_in[155]}),
		.sram(mux_2level_tapbuf_size48_42_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_42_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_32_));

	mux_2level_tapbuf_size48 mux_top_ipin_33 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[9], chanx_right_in[9], chanx_left_in[12], chanx_right_in[12], chanx_left_in[22], chanx_right_in[22], chanx_left_in[29], chanx_right_in[29], chanx_left_in[32], chanx_right_in[32], chanx_left_in[42], chanx_right_in[42], chanx_left_in[49], chanx_right_in[49], chanx_left_in[52], chanx_right_in[52], chanx_left_in[62], chanx_right_in[62], chanx_left_in[69], chanx_right_in[69], chanx_left_in[72], chanx_right_in[72], chanx_left_in[82], chanx_right_in[82], chanx_left_in[89], chanx_right_in[89], chanx_left_in[92], chanx_right_in[92], chanx_left_in[102], chanx_right_in[102], chanx_left_in[109], chanx_right_in[109], chanx_left_in[112], chanx_right_in[112], chanx_left_in[122], chanx_right_in[122], chanx_left_in[129], chanx_right_in[129], chanx_left_in[132], chanx_right_in[132], chanx_left_in[142], chanx_right_in[142], chanx_left_in[149], chanx_right_in[149], chanx_left_in[152], chanx_right_in[152]}),
		.sram(mux_2level_tapbuf_size48_43_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_43_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_33_));

	mux_2level_tapbuf_size48 mux_top_ipin_34 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[10], chanx_right_in[10], chanx_left_in[12], chanx_right_in[12], chanx_left_in[23], chanx_right_in[23], chanx_left_in[30], chanx_right_in[30], chanx_left_in[32], chanx_right_in[32], chanx_left_in[43], chanx_right_in[43], chanx_left_in[50], chanx_right_in[50], chanx_left_in[52], chanx_right_in[52], chanx_left_in[63], chanx_right_in[63], chanx_left_in[70], chanx_right_in[70], chanx_left_in[72], chanx_right_in[72], chanx_left_in[83], chanx_right_in[83], chanx_left_in[90], chanx_right_in[90], chanx_left_in[92], chanx_right_in[92], chanx_left_in[103], chanx_right_in[103], chanx_left_in[110], chanx_right_in[110], chanx_left_in[112], chanx_right_in[112], chanx_left_in[123], chanx_right_in[123], chanx_left_in[130], chanx_right_in[130], chanx_left_in[132], chanx_right_in[132], chanx_left_in[143], chanx_right_in[143], chanx_left_in[150], chanx_right_in[150], chanx_left_in[152], chanx_right_in[152]}),
		.sram(mux_2level_tapbuf_size48_44_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_44_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_2_34_));

	mux_2level_tapbuf_size48 mux_top_ipin_35 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[20], chanx_right_in[20], chanx_left_in[31], chanx_right_in[31], chanx_left_in[37], chanx_right_in[37], chanx_left_in[40], chanx_right_in[40], chanx_left_in[51], chanx_right_in[51], chanx_left_in[57], chanx_right_in[57], chanx_left_in[60], chanx_right_in[60], chanx_left_in[71], chanx_right_in[71], chanx_left_in[77], chanx_right_in[77], chanx_left_in[80], chanx_right_in[80], chanx_left_in[91], chanx_right_in[91], chanx_left_in[97], chanx_right_in[97], chanx_left_in[100], chanx_right_in[100], chanx_left_in[111], chanx_right_in[111], chanx_left_in[117], chanx_right_in[117], chanx_left_in[120], chanx_right_in[120], chanx_left_in[131], chanx_right_in[131], chanx_left_in[137], chanx_right_in[137], chanx_left_in[140], chanx_right_in[140], chanx_left_in[151], chanx_right_in[151], chanx_left_in[157], chanx_right_in[157]}),
		.sram(mux_2level_tapbuf_size48_45_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_45_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_0_));

	mux_2level_tapbuf_size48 mux_top_ipin_36 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[8], chanx_right_in[8], chanx_left_in[18], chanx_right_in[18], chanx_left_in[25], chanx_right_in[25], chanx_left_in[28], chanx_right_in[28], chanx_left_in[38], chanx_right_in[38], chanx_left_in[45], chanx_right_in[45], chanx_left_in[48], chanx_right_in[48], chanx_left_in[58], chanx_right_in[58], chanx_left_in[65], chanx_right_in[65], chanx_left_in[68], chanx_right_in[68], chanx_left_in[78], chanx_right_in[78], chanx_left_in[85], chanx_right_in[85], chanx_left_in[88], chanx_right_in[88], chanx_left_in[98], chanx_right_in[98], chanx_left_in[105], chanx_right_in[105], chanx_left_in[108], chanx_right_in[108], chanx_left_in[118], chanx_right_in[118], chanx_left_in[125], chanx_right_in[125], chanx_left_in[128], chanx_right_in[128], chanx_left_in[138], chanx_right_in[138], chanx_left_in[145], chanx_right_in[145], chanx_left_in[148], chanx_right_in[148], chanx_left_in[158], chanx_right_in[158]}),
		.sram(mux_2level_tapbuf_size48_46_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_46_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_1_));

	mux_2level_tapbuf_size48 mux_top_ipin_37 (
		.in({chanx_left_in[6], chanx_right_in[6], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[26], chanx_right_in[26], chanx_left_in[33], chanx_right_in[33], chanx_left_in[39], chanx_right_in[39], chanx_left_in[46], chanx_right_in[46], chanx_left_in[53], chanx_right_in[53], chanx_left_in[59], chanx_right_in[59], chanx_left_in[66], chanx_right_in[66], chanx_left_in[73], chanx_right_in[73], chanx_left_in[79], chanx_right_in[79], chanx_left_in[86], chanx_right_in[86], chanx_left_in[93], chanx_right_in[93], chanx_left_in[99], chanx_right_in[99], chanx_left_in[106], chanx_right_in[106], chanx_left_in[113], chanx_right_in[113], chanx_left_in[119], chanx_right_in[119], chanx_left_in[126], chanx_right_in[126], chanx_left_in[133], chanx_right_in[133], chanx_left_in[139], chanx_right_in[139], chanx_left_in[146], chanx_right_in[146], chanx_left_in[153], chanx_right_in[153], chanx_left_in[159], chanx_right_in[159]}),
		.sram(mux_2level_tapbuf_size48_47_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_47_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_2_));

	mux_2level_tapbuf_size48 mux_top_ipin_38 (
		.in({chanx_left_in[7], chanx_right_in[7], chanx_left_in[14], chanx_right_in[14], chanx_left_in[16], chanx_right_in[16], chanx_left_in[27], chanx_right_in[27], chanx_left_in[34], chanx_right_in[34], chanx_left_in[36], chanx_right_in[36], chanx_left_in[47], chanx_right_in[47], chanx_left_in[54], chanx_right_in[54], chanx_left_in[56], chanx_right_in[56], chanx_left_in[67], chanx_right_in[67], chanx_left_in[74], chanx_right_in[74], chanx_left_in[76], chanx_right_in[76], chanx_left_in[87], chanx_right_in[87], chanx_left_in[94], chanx_right_in[94], chanx_left_in[96], chanx_right_in[96], chanx_left_in[107], chanx_right_in[107], chanx_left_in[114], chanx_right_in[114], chanx_left_in[116], chanx_right_in[116], chanx_left_in[127], chanx_right_in[127], chanx_left_in[134], chanx_right_in[134], chanx_left_in[136], chanx_right_in[136], chanx_left_in[147], chanx_right_in[147], chanx_left_in[154], chanx_right_in[154], chanx_left_in[156], chanx_right_in[156]}),
		.sram(mux_2level_tapbuf_size48_48_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_48_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_3_));

	mux_2level_tapbuf_size48 mux_top_ipin_39 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[4], chanx_right_in[4], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[24], chanx_right_in[24], chanx_left_in[35], chanx_right_in[35], chanx_left_in[41], chanx_right_in[41], chanx_left_in[44], chanx_right_in[44], chanx_left_in[55], chanx_right_in[55], chanx_left_in[61], chanx_right_in[61], chanx_left_in[64], chanx_right_in[64], chanx_left_in[75], chanx_right_in[75], chanx_left_in[81], chanx_right_in[81], chanx_left_in[84], chanx_right_in[84], chanx_left_in[95], chanx_right_in[95], chanx_left_in[101], chanx_right_in[101], chanx_left_in[104], chanx_right_in[104], chanx_left_in[115], chanx_right_in[115], chanx_left_in[121], chanx_right_in[121], chanx_left_in[124], chanx_right_in[124], chanx_left_in[135], chanx_right_in[135], chanx_left_in[141], chanx_right_in[141], chanx_left_in[144], chanx_right_in[144], chanx_left_in[155], chanx_right_in[155]}),
		.sram(mux_2level_tapbuf_size48_49_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_49_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_4_));

	mux_2level_tapbuf_size48 mux_top_ipin_40 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[4], chanx_right_in[4], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[24], chanx_right_in[24], chanx_left_in[35], chanx_right_in[35], chanx_left_in[41], chanx_right_in[41], chanx_left_in[44], chanx_right_in[44], chanx_left_in[55], chanx_right_in[55], chanx_left_in[61], chanx_right_in[61], chanx_left_in[64], chanx_right_in[64], chanx_left_in[75], chanx_right_in[75], chanx_left_in[81], chanx_right_in[81], chanx_left_in[84], chanx_right_in[84], chanx_left_in[95], chanx_right_in[95], chanx_left_in[101], chanx_right_in[101], chanx_left_in[104], chanx_right_in[104], chanx_left_in[115], chanx_right_in[115], chanx_left_in[121], chanx_right_in[121], chanx_left_in[124], chanx_right_in[124], chanx_left_in[135], chanx_right_in[135], chanx_left_in[141], chanx_right_in[141], chanx_left_in[144], chanx_right_in[144], chanx_left_in[155], chanx_right_in[155]}),
		.sram(mux_2level_tapbuf_size48_50_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_50_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_5_));

	mux_2level_tapbuf_size48 mux_top_ipin_41 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[9], chanx_right_in[9], chanx_left_in[12], chanx_right_in[12], chanx_left_in[22], chanx_right_in[22], chanx_left_in[29], chanx_right_in[29], chanx_left_in[32], chanx_right_in[32], chanx_left_in[42], chanx_right_in[42], chanx_left_in[49], chanx_right_in[49], chanx_left_in[52], chanx_right_in[52], chanx_left_in[62], chanx_right_in[62], chanx_left_in[69], chanx_right_in[69], chanx_left_in[72], chanx_right_in[72], chanx_left_in[82], chanx_right_in[82], chanx_left_in[89], chanx_right_in[89], chanx_left_in[92], chanx_right_in[92], chanx_left_in[102], chanx_right_in[102], chanx_left_in[109], chanx_right_in[109], chanx_left_in[112], chanx_right_in[112], chanx_left_in[122], chanx_right_in[122], chanx_left_in[129], chanx_right_in[129], chanx_left_in[132], chanx_right_in[132], chanx_left_in[142], chanx_right_in[142], chanx_left_in[149], chanx_right_in[149], chanx_left_in[152], chanx_right_in[152]}),
		.sram(mux_2level_tapbuf_size48_51_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_51_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_6_));

	mux_2level_tapbuf_size48 mux_top_ipin_42 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[10], chanx_right_in[10], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[30], chanx_right_in[30], chanx_left_in[37], chanx_right_in[37], chanx_left_in[43], chanx_right_in[43], chanx_left_in[50], chanx_right_in[50], chanx_left_in[57], chanx_right_in[57], chanx_left_in[63], chanx_right_in[63], chanx_left_in[70], chanx_right_in[70], chanx_left_in[77], chanx_right_in[77], chanx_left_in[83], chanx_right_in[83], chanx_left_in[90], chanx_right_in[90], chanx_left_in[97], chanx_right_in[97], chanx_left_in[103], chanx_right_in[103], chanx_left_in[110], chanx_right_in[110], chanx_left_in[117], chanx_right_in[117], chanx_left_in[123], chanx_right_in[123], chanx_left_in[130], chanx_right_in[130], chanx_left_in[137], chanx_right_in[137], chanx_left_in[143], chanx_right_in[143], chanx_left_in[150], chanx_right_in[150], chanx_left_in[157], chanx_right_in[157]}),
		.sram(mux_2level_tapbuf_size48_52_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_52_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_7_));

	mux_2level_tapbuf_size48 mux_top_ipin_43 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[11], chanx_right_in[11], chanx_left_in[18], chanx_right_in[18], chanx_left_in[20], chanx_right_in[20], chanx_left_in[31], chanx_right_in[31], chanx_left_in[38], chanx_right_in[38], chanx_left_in[40], chanx_right_in[40], chanx_left_in[51], chanx_right_in[51], chanx_left_in[58], chanx_right_in[58], chanx_left_in[60], chanx_right_in[60], chanx_left_in[71], chanx_right_in[71], chanx_left_in[78], chanx_right_in[78], chanx_left_in[80], chanx_right_in[80], chanx_left_in[91], chanx_right_in[91], chanx_left_in[98], chanx_right_in[98], chanx_left_in[100], chanx_right_in[100], chanx_left_in[111], chanx_right_in[111], chanx_left_in[118], chanx_right_in[118], chanx_left_in[120], chanx_right_in[120], chanx_left_in[131], chanx_right_in[131], chanx_left_in[138], chanx_right_in[138], chanx_left_in[140], chanx_right_in[140], chanx_left_in[151], chanx_right_in[151], chanx_left_in[158], chanx_right_in[158]}),
		.sram(mux_2level_tapbuf_size48_53_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_53_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_8_));

	mux_2level_tapbuf_size48 mux_top_ipin_44 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[8], chanx_right_in[8], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[28], chanx_right_in[28], chanx_left_in[39], chanx_right_in[39], chanx_left_in[45], chanx_right_in[45], chanx_left_in[48], chanx_right_in[48], chanx_left_in[59], chanx_right_in[59], chanx_left_in[65], chanx_right_in[65], chanx_left_in[68], chanx_right_in[68], chanx_left_in[79], chanx_right_in[79], chanx_left_in[85], chanx_right_in[85], chanx_left_in[88], chanx_right_in[88], chanx_left_in[99], chanx_right_in[99], chanx_left_in[105], chanx_right_in[105], chanx_left_in[108], chanx_right_in[108], chanx_left_in[119], chanx_right_in[119], chanx_left_in[125], chanx_right_in[125], chanx_left_in[128], chanx_right_in[128], chanx_left_in[139], chanx_right_in[139], chanx_left_in[145], chanx_right_in[145], chanx_left_in[148], chanx_right_in[148], chanx_left_in[159], chanx_right_in[159]}),
		.sram(mux_2level_tapbuf_size48_54_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_54_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_9_));

	mux_2level_tapbuf_size48 mux_top_ipin_45 (
		.in({chanx_left_in[6], chanx_right_in[6], chanx_left_in[13], chanx_right_in[13], chanx_left_in[16], chanx_right_in[16], chanx_left_in[26], chanx_right_in[26], chanx_left_in[33], chanx_right_in[33], chanx_left_in[36], chanx_right_in[36], chanx_left_in[46], chanx_right_in[46], chanx_left_in[53], chanx_right_in[53], chanx_left_in[56], chanx_right_in[56], chanx_left_in[66], chanx_right_in[66], chanx_left_in[73], chanx_right_in[73], chanx_left_in[76], chanx_right_in[76], chanx_left_in[86], chanx_right_in[86], chanx_left_in[93], chanx_right_in[93], chanx_left_in[96], chanx_right_in[96], chanx_left_in[106], chanx_right_in[106], chanx_left_in[113], chanx_right_in[113], chanx_left_in[116], chanx_right_in[116], chanx_left_in[126], chanx_right_in[126], chanx_left_in[133], chanx_right_in[133], chanx_left_in[136], chanx_right_in[136], chanx_left_in[146], chanx_right_in[146], chanx_left_in[153], chanx_right_in[153], chanx_left_in[156], chanx_right_in[156]}),
		.sram(mux_2level_tapbuf_size48_55_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_55_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_10_));

	mux_2level_tapbuf_size48 mux_top_ipin_46 (
		.in({chanx_left_in[7], chanx_right_in[7], chanx_left_in[14], chanx_right_in[14], chanx_left_in[16], chanx_right_in[16], chanx_left_in[27], chanx_right_in[27], chanx_left_in[34], chanx_right_in[34], chanx_left_in[36], chanx_right_in[36], chanx_left_in[47], chanx_right_in[47], chanx_left_in[54], chanx_right_in[54], chanx_left_in[56], chanx_right_in[56], chanx_left_in[67], chanx_right_in[67], chanx_left_in[74], chanx_right_in[74], chanx_left_in[76], chanx_right_in[76], chanx_left_in[87], chanx_right_in[87], chanx_left_in[94], chanx_right_in[94], chanx_left_in[96], chanx_right_in[96], chanx_left_in[107], chanx_right_in[107], chanx_left_in[114], chanx_right_in[114], chanx_left_in[116], chanx_right_in[116], chanx_left_in[127], chanx_right_in[127], chanx_left_in[134], chanx_right_in[134], chanx_left_in[136], chanx_right_in[136], chanx_left_in[147], chanx_right_in[147], chanx_left_in[154], chanx_right_in[154], chanx_left_in[156], chanx_right_in[156]}),
		.sram(mux_2level_tapbuf_size48_56_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_56_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_11_));

	mux_2level_tapbuf_size48 mux_top_ipin_47 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[14], chanx_right_in[14], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27], chanx_left_in[34], chanx_right_in[34], chanx_left_in[41], chanx_right_in[41], chanx_left_in[47], chanx_right_in[47], chanx_left_in[54], chanx_right_in[54], chanx_left_in[61], chanx_right_in[61], chanx_left_in[67], chanx_right_in[67], chanx_left_in[74], chanx_right_in[74], chanx_left_in[81], chanx_right_in[81], chanx_left_in[87], chanx_right_in[87], chanx_left_in[94], chanx_right_in[94], chanx_left_in[101], chanx_right_in[101], chanx_left_in[107], chanx_right_in[107], chanx_left_in[114], chanx_right_in[114], chanx_left_in[121], chanx_right_in[121], chanx_left_in[127], chanx_right_in[127], chanx_left_in[134], chanx_right_in[134], chanx_left_in[141], chanx_right_in[141], chanx_left_in[147], chanx_right_in[147], chanx_left_in[154], chanx_right_in[154]}),
		.sram(mux_2level_tapbuf_size48_57_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_57_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_12_));

	mux_2level_tapbuf_size48 mux_top_ipin_48 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[4], chanx_right_in[4], chanx_left_in[15], chanx_right_in[15], chanx_left_in[22], chanx_right_in[22], chanx_left_in[24], chanx_right_in[24], chanx_left_in[35], chanx_right_in[35], chanx_left_in[42], chanx_right_in[42], chanx_left_in[44], chanx_right_in[44], chanx_left_in[55], chanx_right_in[55], chanx_left_in[62], chanx_right_in[62], chanx_left_in[64], chanx_right_in[64], chanx_left_in[75], chanx_right_in[75], chanx_left_in[82], chanx_right_in[82], chanx_left_in[84], chanx_right_in[84], chanx_left_in[95], chanx_right_in[95], chanx_left_in[102], chanx_right_in[102], chanx_left_in[104], chanx_right_in[104], chanx_left_in[115], chanx_right_in[115], chanx_left_in[122], chanx_right_in[122], chanx_left_in[124], chanx_right_in[124], chanx_left_in[135], chanx_right_in[135], chanx_left_in[142], chanx_right_in[142], chanx_left_in[144], chanx_right_in[144], chanx_left_in[155], chanx_right_in[155]}),
		.sram(mux_2level_tapbuf_size48_58_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_58_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_13_));

	mux_2level_tapbuf_size48 mux_top_ipin_49 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[12], chanx_right_in[12], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29], chanx_left_in[32], chanx_right_in[32], chanx_left_in[43], chanx_right_in[43], chanx_left_in[49], chanx_right_in[49], chanx_left_in[52], chanx_right_in[52], chanx_left_in[63], chanx_right_in[63], chanx_left_in[69], chanx_right_in[69], chanx_left_in[72], chanx_right_in[72], chanx_left_in[83], chanx_right_in[83], chanx_left_in[89], chanx_right_in[89], chanx_left_in[92], chanx_right_in[92], chanx_left_in[103], chanx_right_in[103], chanx_left_in[109], chanx_right_in[109], chanx_left_in[112], chanx_right_in[112], chanx_left_in[123], chanx_right_in[123], chanx_left_in[129], chanx_right_in[129], chanx_left_in[132], chanx_right_in[132], chanx_left_in[143], chanx_right_in[143], chanx_left_in[149], chanx_right_in[149], chanx_left_in[152], chanx_right_in[152]}),
		.sram(mux_2level_tapbuf_size48_59_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_59_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_14_));

	mux_2level_tapbuf_size48 mux_top_ipin_50 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[10], chanx_right_in[10], chanx_left_in[17], chanx_right_in[17], chanx_left_in[20], chanx_right_in[20], chanx_left_in[30], chanx_right_in[30], chanx_left_in[37], chanx_right_in[37], chanx_left_in[40], chanx_right_in[40], chanx_left_in[50], chanx_right_in[50], chanx_left_in[57], chanx_right_in[57], chanx_left_in[60], chanx_right_in[60], chanx_left_in[70], chanx_right_in[70], chanx_left_in[77], chanx_right_in[77], chanx_left_in[80], chanx_right_in[80], chanx_left_in[90], chanx_right_in[90], chanx_left_in[97], chanx_right_in[97], chanx_left_in[100], chanx_right_in[100], chanx_left_in[110], chanx_right_in[110], chanx_left_in[117], chanx_right_in[117], chanx_left_in[120], chanx_right_in[120], chanx_left_in[130], chanx_right_in[130], chanx_left_in[137], chanx_right_in[137], chanx_left_in[140], chanx_right_in[140], chanx_left_in[150], chanx_right_in[150], chanx_left_in[157], chanx_right_in[157]}),
		.sram(mux_2level_tapbuf_size48_60_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_60_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_15_));

	mux_2level_tapbuf_size48 mux_top_ipin_51 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[18], chanx_right_in[18], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31], chanx_left_in[38], chanx_right_in[38], chanx_left_in[45], chanx_right_in[45], chanx_left_in[51], chanx_right_in[51], chanx_left_in[58], chanx_right_in[58], chanx_left_in[65], chanx_right_in[65], chanx_left_in[71], chanx_right_in[71], chanx_left_in[78], chanx_right_in[78], chanx_left_in[85], chanx_right_in[85], chanx_left_in[91], chanx_right_in[91], chanx_left_in[98], chanx_right_in[98], chanx_left_in[105], chanx_right_in[105], chanx_left_in[111], chanx_right_in[111], chanx_left_in[118], chanx_right_in[118], chanx_left_in[125], chanx_right_in[125], chanx_left_in[131], chanx_right_in[131], chanx_left_in[138], chanx_right_in[138], chanx_left_in[145], chanx_right_in[145], chanx_left_in[151], chanx_right_in[151], chanx_left_in[158], chanx_right_in[158]}),
		.sram(mux_2level_tapbuf_size48_61_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_61_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_16_));

	mux_2level_tapbuf_size48 mux_top_ipin_52 (
		.in({chanx_left_in[6], chanx_right_in[6], chanx_left_in[8], chanx_right_in[8], chanx_left_in[19], chanx_right_in[19], chanx_left_in[26], chanx_right_in[26], chanx_left_in[28], chanx_right_in[28], chanx_left_in[39], chanx_right_in[39], chanx_left_in[46], chanx_right_in[46], chanx_left_in[48], chanx_right_in[48], chanx_left_in[59], chanx_right_in[59], chanx_left_in[66], chanx_right_in[66], chanx_left_in[68], chanx_right_in[68], chanx_left_in[79], chanx_right_in[79], chanx_left_in[86], chanx_right_in[86], chanx_left_in[88], chanx_right_in[88], chanx_left_in[99], chanx_right_in[99], chanx_left_in[106], chanx_right_in[106], chanx_left_in[108], chanx_right_in[108], chanx_left_in[119], chanx_right_in[119], chanx_left_in[126], chanx_right_in[126], chanx_left_in[128], chanx_right_in[128], chanx_left_in[139], chanx_right_in[139], chanx_left_in[146], chanx_right_in[146], chanx_left_in[148], chanx_right_in[148], chanx_left_in[159], chanx_right_in[159]}),
		.sram(mux_2level_tapbuf_size48_62_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_62_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_17_));

	mux_2level_tapbuf_size48 mux_top_ipin_53 (
		.in({chanx_left_in[6], chanx_right_in[6], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[26], chanx_right_in[26], chanx_left_in[33], chanx_right_in[33], chanx_left_in[39], chanx_right_in[39], chanx_left_in[46], chanx_right_in[46], chanx_left_in[53], chanx_right_in[53], chanx_left_in[59], chanx_right_in[59], chanx_left_in[66], chanx_right_in[66], chanx_left_in[73], chanx_right_in[73], chanx_left_in[79], chanx_right_in[79], chanx_left_in[86], chanx_right_in[86], chanx_left_in[93], chanx_right_in[93], chanx_left_in[99], chanx_right_in[99], chanx_left_in[106], chanx_right_in[106], chanx_left_in[113], chanx_right_in[113], chanx_left_in[119], chanx_right_in[119], chanx_left_in[126], chanx_right_in[126], chanx_left_in[133], chanx_right_in[133], chanx_left_in[139], chanx_right_in[139], chanx_left_in[146], chanx_right_in[146], chanx_left_in[153], chanx_right_in[153], chanx_left_in[159], chanx_right_in[159]}),
		.sram(mux_2level_tapbuf_size48_63_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_63_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_18_));

	mux_2level_tapbuf_size48 mux_top_ipin_54 (
		.in({chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[16], chanx_right_in[16], chanx_left_in[27], chanx_right_in[27], chanx_left_in[33], chanx_right_in[33], chanx_left_in[36], chanx_right_in[36], chanx_left_in[47], chanx_right_in[47], chanx_left_in[53], chanx_right_in[53], chanx_left_in[56], chanx_right_in[56], chanx_left_in[67], chanx_right_in[67], chanx_left_in[73], chanx_right_in[73], chanx_left_in[76], chanx_right_in[76], chanx_left_in[87], chanx_right_in[87], chanx_left_in[93], chanx_right_in[93], chanx_left_in[96], chanx_right_in[96], chanx_left_in[107], chanx_right_in[107], chanx_left_in[113], chanx_right_in[113], chanx_left_in[116], chanx_right_in[116], chanx_left_in[127], chanx_right_in[127], chanx_left_in[133], chanx_right_in[133], chanx_left_in[136], chanx_right_in[136], chanx_left_in[147], chanx_right_in[147], chanx_left_in[153], chanx_right_in[153], chanx_left_in[156], chanx_right_in[156]}),
		.sram(mux_2level_tapbuf_size48_64_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_64_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_19_));

	mux_2level_tapbuf_size48 mux_top_ipin_55 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[4], chanx_right_in[4], chanx_left_in[14], chanx_right_in[14], chanx_left_in[21], chanx_right_in[21], chanx_left_in[24], chanx_right_in[24], chanx_left_in[34], chanx_right_in[34], chanx_left_in[41], chanx_right_in[41], chanx_left_in[44], chanx_right_in[44], chanx_left_in[54], chanx_right_in[54], chanx_left_in[61], chanx_right_in[61], chanx_left_in[64], chanx_right_in[64], chanx_left_in[74], chanx_right_in[74], chanx_left_in[81], chanx_right_in[81], chanx_left_in[84], chanx_right_in[84], chanx_left_in[94], chanx_right_in[94], chanx_left_in[101], chanx_right_in[101], chanx_left_in[104], chanx_right_in[104], chanx_left_in[114], chanx_right_in[114], chanx_left_in[121], chanx_right_in[121], chanx_left_in[124], chanx_right_in[124], chanx_left_in[134], chanx_right_in[134], chanx_left_in[141], chanx_right_in[141], chanx_left_in[144], chanx_right_in[144], chanx_left_in[154], chanx_right_in[154]}),
		.sram(mux_2level_tapbuf_size48_65_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_65_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_20_));

	mux_2level_tapbuf_size48 mux_top_ipin_56 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[22], chanx_right_in[22], chanx_left_in[29], chanx_right_in[29], chanx_left_in[35], chanx_right_in[35], chanx_left_in[42], chanx_right_in[42], chanx_left_in[49], chanx_right_in[49], chanx_left_in[55], chanx_right_in[55], chanx_left_in[62], chanx_right_in[62], chanx_left_in[69], chanx_right_in[69], chanx_left_in[75], chanx_right_in[75], chanx_left_in[82], chanx_right_in[82], chanx_left_in[89], chanx_right_in[89], chanx_left_in[95], chanx_right_in[95], chanx_left_in[102], chanx_right_in[102], chanx_left_in[109], chanx_right_in[109], chanx_left_in[115], chanx_right_in[115], chanx_left_in[122], chanx_right_in[122], chanx_left_in[129], chanx_right_in[129], chanx_left_in[135], chanx_right_in[135], chanx_left_in[142], chanx_right_in[142], chanx_left_in[149], chanx_right_in[149], chanx_left_in[155], chanx_right_in[155]}),
		.sram(mux_2level_tapbuf_size48_66_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_66_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_21_));

	mux_2level_tapbuf_size48 mux_top_ipin_57 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[10], chanx_right_in[10], chanx_left_in[12], chanx_right_in[12], chanx_left_in[23], chanx_right_in[23], chanx_left_in[30], chanx_right_in[30], chanx_left_in[32], chanx_right_in[32], chanx_left_in[43], chanx_right_in[43], chanx_left_in[50], chanx_right_in[50], chanx_left_in[52], chanx_right_in[52], chanx_left_in[63], chanx_right_in[63], chanx_left_in[70], chanx_right_in[70], chanx_left_in[72], chanx_right_in[72], chanx_left_in[83], chanx_right_in[83], chanx_left_in[90], chanx_right_in[90], chanx_left_in[92], chanx_right_in[92], chanx_left_in[103], chanx_right_in[103], chanx_left_in[110], chanx_right_in[110], chanx_left_in[112], chanx_right_in[112], chanx_left_in[123], chanx_right_in[123], chanx_left_in[130], chanx_right_in[130], chanx_left_in[132], chanx_right_in[132], chanx_left_in[143], chanx_right_in[143], chanx_left_in[150], chanx_right_in[150], chanx_left_in[152], chanx_right_in[152]}),
		.sram(mux_2level_tapbuf_size48_67_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_67_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_22_));

	mux_2level_tapbuf_size48 mux_top_ipin_58 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[20], chanx_right_in[20], chanx_left_in[31], chanx_right_in[31], chanx_left_in[37], chanx_right_in[37], chanx_left_in[40], chanx_right_in[40], chanx_left_in[51], chanx_right_in[51], chanx_left_in[57], chanx_right_in[57], chanx_left_in[60], chanx_right_in[60], chanx_left_in[71], chanx_right_in[71], chanx_left_in[77], chanx_right_in[77], chanx_left_in[80], chanx_right_in[80], chanx_left_in[91], chanx_right_in[91], chanx_left_in[97], chanx_right_in[97], chanx_left_in[100], chanx_right_in[100], chanx_left_in[111], chanx_right_in[111], chanx_left_in[117], chanx_right_in[117], chanx_left_in[120], chanx_right_in[120], chanx_left_in[131], chanx_right_in[131], chanx_left_in[137], chanx_right_in[137], chanx_left_in[140], chanx_right_in[140], chanx_left_in[151], chanx_right_in[151], chanx_left_in[157], chanx_right_in[157]}),
		.sram(mux_2level_tapbuf_size48_68_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_68_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_23_));

	mux_2level_tapbuf_size48 mux_top_ipin_59 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[8], chanx_right_in[8], chanx_left_in[18], chanx_right_in[18], chanx_left_in[25], chanx_right_in[25], chanx_left_in[28], chanx_right_in[28], chanx_left_in[38], chanx_right_in[38], chanx_left_in[45], chanx_right_in[45], chanx_left_in[48], chanx_right_in[48], chanx_left_in[58], chanx_right_in[58], chanx_left_in[65], chanx_right_in[65], chanx_left_in[68], chanx_right_in[68], chanx_left_in[78], chanx_right_in[78], chanx_left_in[85], chanx_right_in[85], chanx_left_in[88], chanx_right_in[88], chanx_left_in[98], chanx_right_in[98], chanx_left_in[105], chanx_right_in[105], chanx_left_in[108], chanx_right_in[108], chanx_left_in[118], chanx_right_in[118], chanx_left_in[125], chanx_right_in[125], chanx_left_in[128], chanx_right_in[128], chanx_left_in[138], chanx_right_in[138], chanx_left_in[145], chanx_right_in[145], chanx_left_in[148], chanx_right_in[148], chanx_left_in[158], chanx_right_in[158]}),
		.sram(mux_2level_tapbuf_size48_69_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_69_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_24_));

	mux_2level_tapbuf_size48 mux_top_ipin_60 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[8], chanx_right_in[8], chanx_left_in[18], chanx_right_in[18], chanx_left_in[25], chanx_right_in[25], chanx_left_in[28], chanx_right_in[28], chanx_left_in[38], chanx_right_in[38], chanx_left_in[45], chanx_right_in[45], chanx_left_in[48], chanx_right_in[48], chanx_left_in[58], chanx_right_in[58], chanx_left_in[65], chanx_right_in[65], chanx_left_in[68], chanx_right_in[68], chanx_left_in[78], chanx_right_in[78], chanx_left_in[85], chanx_right_in[85], chanx_left_in[88], chanx_right_in[88], chanx_left_in[98], chanx_right_in[98], chanx_left_in[105], chanx_right_in[105], chanx_left_in[108], chanx_right_in[108], chanx_left_in[118], chanx_right_in[118], chanx_left_in[125], chanx_right_in[125], chanx_left_in[128], chanx_right_in[128], chanx_left_in[138], chanx_right_in[138], chanx_left_in[145], chanx_right_in[145], chanx_left_in[148], chanx_right_in[148], chanx_left_in[158], chanx_right_in[158]}),
		.sram(mux_2level_tapbuf_size48_70_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_70_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_25_));

	mux_2level_tapbuf_size48 mux_top_ipin_61 (
		.in({chanx_left_in[6], chanx_right_in[6], chanx_left_in[13], chanx_right_in[13], chanx_left_in[19], chanx_right_in[19], chanx_left_in[26], chanx_right_in[26], chanx_left_in[33], chanx_right_in[33], chanx_left_in[39], chanx_right_in[39], chanx_left_in[46], chanx_right_in[46], chanx_left_in[53], chanx_right_in[53], chanx_left_in[59], chanx_right_in[59], chanx_left_in[66], chanx_right_in[66], chanx_left_in[73], chanx_right_in[73], chanx_left_in[79], chanx_right_in[79], chanx_left_in[86], chanx_right_in[86], chanx_left_in[93], chanx_right_in[93], chanx_left_in[99], chanx_right_in[99], chanx_left_in[106], chanx_right_in[106], chanx_left_in[113], chanx_right_in[113], chanx_left_in[119], chanx_right_in[119], chanx_left_in[126], chanx_right_in[126], chanx_left_in[133], chanx_right_in[133], chanx_left_in[139], chanx_right_in[139], chanx_left_in[146], chanx_right_in[146], chanx_left_in[153], chanx_right_in[153], chanx_left_in[159], chanx_right_in[159]}),
		.sram(mux_2level_tapbuf_size48_71_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_71_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_26_));

	mux_2level_tapbuf_size48 mux_top_ipin_62 (
		.in({chanx_left_in[7], chanx_right_in[7], chanx_left_in[14], chanx_right_in[14], chanx_left_in[16], chanx_right_in[16], chanx_left_in[27], chanx_right_in[27], chanx_left_in[34], chanx_right_in[34], chanx_left_in[36], chanx_right_in[36], chanx_left_in[47], chanx_right_in[47], chanx_left_in[54], chanx_right_in[54], chanx_left_in[56], chanx_right_in[56], chanx_left_in[67], chanx_right_in[67], chanx_left_in[74], chanx_right_in[74], chanx_left_in[76], chanx_right_in[76], chanx_left_in[87], chanx_right_in[87], chanx_left_in[94], chanx_right_in[94], chanx_left_in[96], chanx_right_in[96], chanx_left_in[107], chanx_right_in[107], chanx_left_in[114], chanx_right_in[114], chanx_left_in[116], chanx_right_in[116], chanx_left_in[127], chanx_right_in[127], chanx_left_in[134], chanx_right_in[134], chanx_left_in[136], chanx_right_in[136], chanx_left_in[147], chanx_right_in[147], chanx_left_in[154], chanx_right_in[154], chanx_left_in[156], chanx_right_in[156]}),
		.sram(mux_2level_tapbuf_size48_72_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_72_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_27_));

	mux_2level_tapbuf_size48 mux_top_ipin_63 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[4], chanx_right_in[4], chanx_left_in[15], chanx_right_in[15], chanx_left_in[21], chanx_right_in[21], chanx_left_in[24], chanx_right_in[24], chanx_left_in[35], chanx_right_in[35], chanx_left_in[41], chanx_right_in[41], chanx_left_in[44], chanx_right_in[44], chanx_left_in[55], chanx_right_in[55], chanx_left_in[61], chanx_right_in[61], chanx_left_in[64], chanx_right_in[64], chanx_left_in[75], chanx_right_in[75], chanx_left_in[81], chanx_right_in[81], chanx_left_in[84], chanx_right_in[84], chanx_left_in[95], chanx_right_in[95], chanx_left_in[101], chanx_right_in[101], chanx_left_in[104], chanx_right_in[104], chanx_left_in[115], chanx_right_in[115], chanx_left_in[121], chanx_right_in[121], chanx_left_in[124], chanx_right_in[124], chanx_left_in[135], chanx_right_in[135], chanx_left_in[141], chanx_right_in[141], chanx_left_in[144], chanx_right_in[144], chanx_left_in[155], chanx_right_in[155]}),
		.sram(mux_2level_tapbuf_size48_73_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_73_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_28_));

	mux_2level_tapbuf_size48 mux_top_ipin_64 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[9], chanx_right_in[9], chanx_left_in[12], chanx_right_in[12], chanx_left_in[22], chanx_right_in[22], chanx_left_in[29], chanx_right_in[29], chanx_left_in[32], chanx_right_in[32], chanx_left_in[42], chanx_right_in[42], chanx_left_in[49], chanx_right_in[49], chanx_left_in[52], chanx_right_in[52], chanx_left_in[62], chanx_right_in[62], chanx_left_in[69], chanx_right_in[69], chanx_left_in[72], chanx_right_in[72], chanx_left_in[82], chanx_right_in[82], chanx_left_in[89], chanx_right_in[89], chanx_left_in[92], chanx_right_in[92], chanx_left_in[102], chanx_right_in[102], chanx_left_in[109], chanx_right_in[109], chanx_left_in[112], chanx_right_in[112], chanx_left_in[122], chanx_right_in[122], chanx_left_in[129], chanx_right_in[129], chanx_left_in[132], chanx_right_in[132], chanx_left_in[142], chanx_right_in[142], chanx_left_in[149], chanx_right_in[149], chanx_left_in[152], chanx_right_in[152]}),
		.sram(mux_2level_tapbuf_size48_74_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_74_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_29_));

	mux_2level_tapbuf_size48 mux_top_ipin_65 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[10], chanx_right_in[10], chanx_left_in[17], chanx_right_in[17], chanx_left_in[23], chanx_right_in[23], chanx_left_in[30], chanx_right_in[30], chanx_left_in[37], chanx_right_in[37], chanx_left_in[43], chanx_right_in[43], chanx_left_in[50], chanx_right_in[50], chanx_left_in[57], chanx_right_in[57], chanx_left_in[63], chanx_right_in[63], chanx_left_in[70], chanx_right_in[70], chanx_left_in[77], chanx_right_in[77], chanx_left_in[83], chanx_right_in[83], chanx_left_in[90], chanx_right_in[90], chanx_left_in[97], chanx_right_in[97], chanx_left_in[103], chanx_right_in[103], chanx_left_in[110], chanx_right_in[110], chanx_left_in[117], chanx_right_in[117], chanx_left_in[123], chanx_right_in[123], chanx_left_in[130], chanx_right_in[130], chanx_left_in[137], chanx_right_in[137], chanx_left_in[143], chanx_right_in[143], chanx_left_in[150], chanx_right_in[150], chanx_left_in[157], chanx_right_in[157]}),
		.sram(mux_2level_tapbuf_size48_75_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_75_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_30_));

	mux_2level_tapbuf_size48 mux_top_ipin_66 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[11], chanx_right_in[11], chanx_left_in[17], chanx_right_in[17], chanx_left_in[20], chanx_right_in[20], chanx_left_in[31], chanx_right_in[31], chanx_left_in[37], chanx_right_in[37], chanx_left_in[40], chanx_right_in[40], chanx_left_in[51], chanx_right_in[51], chanx_left_in[57], chanx_right_in[57], chanx_left_in[60], chanx_right_in[60], chanx_left_in[71], chanx_right_in[71], chanx_left_in[77], chanx_right_in[77], chanx_left_in[80], chanx_right_in[80], chanx_left_in[91], chanx_right_in[91], chanx_left_in[97], chanx_right_in[97], chanx_left_in[100], chanx_right_in[100], chanx_left_in[111], chanx_right_in[111], chanx_left_in[117], chanx_right_in[117], chanx_left_in[120], chanx_right_in[120], chanx_left_in[131], chanx_right_in[131], chanx_left_in[137], chanx_right_in[137], chanx_left_in[140], chanx_right_in[140], chanx_left_in[151], chanx_right_in[151], chanx_left_in[157], chanx_right_in[157]}),
		.sram(mux_2level_tapbuf_size48_76_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_76_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_31_));

	mux_2level_tapbuf_size48 mux_top_ipin_67 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[11], chanx_right_in[11], chanx_left_in[18], chanx_right_in[18], chanx_left_in[20], chanx_right_in[20], chanx_left_in[31], chanx_right_in[31], chanx_left_in[38], chanx_right_in[38], chanx_left_in[40], chanx_right_in[40], chanx_left_in[51], chanx_right_in[51], chanx_left_in[58], chanx_right_in[58], chanx_left_in[60], chanx_right_in[60], chanx_left_in[71], chanx_right_in[71], chanx_left_in[78], chanx_right_in[78], chanx_left_in[80], chanx_right_in[80], chanx_left_in[91], chanx_right_in[91], chanx_left_in[98], chanx_right_in[98], chanx_left_in[100], chanx_right_in[100], chanx_left_in[111], chanx_right_in[111], chanx_left_in[118], chanx_right_in[118], chanx_left_in[120], chanx_right_in[120], chanx_left_in[131], chanx_right_in[131], chanx_left_in[138], chanx_right_in[138], chanx_left_in[140], chanx_right_in[140], chanx_left_in[151], chanx_right_in[151], chanx_left_in[158], chanx_right_in[158]}),
		.sram(mux_2level_tapbuf_size48_77_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_77_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_32_));

	mux_2level_tapbuf_size48 mux_top_ipin_68 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[8], chanx_right_in[8], chanx_left_in[19], chanx_right_in[19], chanx_left_in[25], chanx_right_in[25], chanx_left_in[28], chanx_right_in[28], chanx_left_in[39], chanx_right_in[39], chanx_left_in[45], chanx_right_in[45], chanx_left_in[48], chanx_right_in[48], chanx_left_in[59], chanx_right_in[59], chanx_left_in[65], chanx_right_in[65], chanx_left_in[68], chanx_right_in[68], chanx_left_in[79], chanx_right_in[79], chanx_left_in[85], chanx_right_in[85], chanx_left_in[88], chanx_right_in[88], chanx_left_in[99], chanx_right_in[99], chanx_left_in[105], chanx_right_in[105], chanx_left_in[108], chanx_right_in[108], chanx_left_in[119], chanx_right_in[119], chanx_left_in[125], chanx_right_in[125], chanx_left_in[128], chanx_right_in[128], chanx_left_in[139], chanx_right_in[139], chanx_left_in[145], chanx_right_in[145], chanx_left_in[148], chanx_right_in[148], chanx_left_in[159], chanx_right_in[159]}),
		.sram(mux_2level_tapbuf_size48_78_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_78_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_33_));

	mux_2level_tapbuf_size48 mux_top_ipin_69 (
		.in({chanx_left_in[6], chanx_right_in[6], chanx_left_in[13], chanx_right_in[13], chanx_left_in[16], chanx_right_in[16], chanx_left_in[26], chanx_right_in[26], chanx_left_in[33], chanx_right_in[33], chanx_left_in[36], chanx_right_in[36], chanx_left_in[46], chanx_right_in[46], chanx_left_in[53], chanx_right_in[53], chanx_left_in[56], chanx_right_in[56], chanx_left_in[66], chanx_right_in[66], chanx_left_in[73], chanx_right_in[73], chanx_left_in[76], chanx_right_in[76], chanx_left_in[86], chanx_right_in[86], chanx_left_in[93], chanx_right_in[93], chanx_left_in[96], chanx_right_in[96], chanx_left_in[106], chanx_right_in[106], chanx_left_in[113], chanx_right_in[113], chanx_left_in[116], chanx_right_in[116], chanx_left_in[126], chanx_right_in[126], chanx_left_in[133], chanx_right_in[133], chanx_left_in[136], chanx_right_in[136], chanx_left_in[146], chanx_right_in[146], chanx_left_in[153], chanx_right_in[153], chanx_left_in[156], chanx_right_in[156]}),
		.sram(mux_2level_tapbuf_size48_79_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_79_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_idata_4_34_));

	mux_2level_tapbuf_size48 mux_top_ipin_70 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[7], chanx_right_in[7], chanx_left_in[14], chanx_right_in[14], chanx_left_in[21], chanx_right_in[21], chanx_left_in[27], chanx_right_in[27], chanx_left_in[34], chanx_right_in[34], chanx_left_in[41], chanx_right_in[41], chanx_left_in[47], chanx_right_in[47], chanx_left_in[54], chanx_right_in[54], chanx_left_in[61], chanx_right_in[61], chanx_left_in[67], chanx_right_in[67], chanx_left_in[74], chanx_right_in[74], chanx_left_in[81], chanx_right_in[81], chanx_left_in[87], chanx_right_in[87], chanx_left_in[94], chanx_right_in[94], chanx_left_in[101], chanx_right_in[101], chanx_left_in[107], chanx_right_in[107], chanx_left_in[114], chanx_right_in[114], chanx_left_in[121], chanx_right_in[121], chanx_left_in[127], chanx_right_in[127], chanx_left_in[134], chanx_right_in[134], chanx_left_in[141], chanx_right_in[141], chanx_left_in[147], chanx_right_in[147], chanx_left_in[154], chanx_right_in[154]}),
		.sram(mux_2level_tapbuf_size48_80_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_80_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_ivalid_2_0_));

	mux_2level_tapbuf_size48 mux_top_ipin_71 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[4], chanx_right_in[4], chanx_left_in[15], chanx_right_in[15], chanx_left_in[22], chanx_right_in[22], chanx_left_in[24], chanx_right_in[24], chanx_left_in[35], chanx_right_in[35], chanx_left_in[42], chanx_right_in[42], chanx_left_in[44], chanx_right_in[44], chanx_left_in[55], chanx_right_in[55], chanx_left_in[62], chanx_right_in[62], chanx_left_in[64], chanx_right_in[64], chanx_left_in[75], chanx_right_in[75], chanx_left_in[82], chanx_right_in[82], chanx_left_in[84], chanx_right_in[84], chanx_left_in[95], chanx_right_in[95], chanx_left_in[102], chanx_right_in[102], chanx_left_in[104], chanx_right_in[104], chanx_left_in[115], chanx_right_in[115], chanx_left_in[122], chanx_right_in[122], chanx_left_in[124], chanx_right_in[124], chanx_left_in[135], chanx_right_in[135], chanx_left_in[142], chanx_right_in[142], chanx_left_in[144], chanx_right_in[144], chanx_left_in[155], chanx_right_in[155]}),
		.sram(mux_2level_tapbuf_size48_81_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_81_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_ivalid_4_0_));

	mux_2level_tapbuf_size48 mux_top_ipin_72 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[9], chanx_right_in[9], chanx_left_in[12], chanx_right_in[12], chanx_left_in[23], chanx_right_in[23], chanx_left_in[29], chanx_right_in[29], chanx_left_in[32], chanx_right_in[32], chanx_left_in[43], chanx_right_in[43], chanx_left_in[49], chanx_right_in[49], chanx_left_in[52], chanx_right_in[52], chanx_left_in[63], chanx_right_in[63], chanx_left_in[69], chanx_right_in[69], chanx_left_in[72], chanx_right_in[72], chanx_left_in[83], chanx_right_in[83], chanx_left_in[89], chanx_right_in[89], chanx_left_in[92], chanx_right_in[92], chanx_left_in[103], chanx_right_in[103], chanx_left_in[109], chanx_right_in[109], chanx_left_in[112], chanx_right_in[112], chanx_left_in[123], chanx_right_in[123], chanx_left_in[129], chanx_right_in[129], chanx_left_in[132], chanx_right_in[132], chanx_left_in[143], chanx_right_in[143], chanx_left_in[149], chanx_right_in[149], chanx_left_in[152], chanx_right_in[152]}),
		.sram(mux_2level_tapbuf_size48_82_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_82_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_ivch_2_0_));

	mux_2level_tapbuf_size48 mux_top_ipin_73 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[10], chanx_right_in[10], chanx_left_in[12], chanx_right_in[12], chanx_left_in[23], chanx_right_in[23], chanx_left_in[30], chanx_right_in[30], chanx_left_in[32], chanx_right_in[32], chanx_left_in[43], chanx_right_in[43], chanx_left_in[50], chanx_right_in[50], chanx_left_in[52], chanx_right_in[52], chanx_left_in[63], chanx_right_in[63], chanx_left_in[70], chanx_right_in[70], chanx_left_in[72], chanx_right_in[72], chanx_left_in[83], chanx_right_in[83], chanx_left_in[90], chanx_right_in[90], chanx_left_in[92], chanx_right_in[92], chanx_left_in[103], chanx_right_in[103], chanx_left_in[110], chanx_right_in[110], chanx_left_in[112], chanx_right_in[112], chanx_left_in[123], chanx_right_in[123], chanx_left_in[130], chanx_right_in[130], chanx_left_in[132], chanx_right_in[132], chanx_left_in[143], chanx_right_in[143], chanx_left_in[150], chanx_right_in[150], chanx_left_in[152], chanx_right_in[152]}),
		.sram(mux_2level_tapbuf_size48_83_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_83_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_ivch_4_0_));

	mux_2level_tapbuf_size48 mux_top_ipin_74 (
		.in({chanx_left_in[0], chanx_right_in[0], chanx_left_in[10], chanx_right_in[10], chanx_left_in[17], chanx_right_in[17], chanx_left_in[20], chanx_right_in[20], chanx_left_in[30], chanx_right_in[30], chanx_left_in[37], chanx_right_in[37], chanx_left_in[40], chanx_right_in[40], chanx_left_in[50], chanx_right_in[50], chanx_left_in[57], chanx_right_in[57], chanx_left_in[60], chanx_right_in[60], chanx_left_in[70], chanx_right_in[70], chanx_left_in[77], chanx_right_in[77], chanx_left_in[80], chanx_right_in[80], chanx_left_in[90], chanx_right_in[90], chanx_left_in[97], chanx_right_in[97], chanx_left_in[100], chanx_right_in[100], chanx_left_in[110], chanx_right_in[110], chanx_left_in[117], chanx_right_in[117], chanx_left_in[120], chanx_right_in[120], chanx_left_in[130], chanx_right_in[130], chanx_left_in[137], chanx_right_in[137], chanx_left_in[140], chanx_right_in[140], chanx_left_in[150], chanx_right_in[150], chanx_left_in[157], chanx_right_in[157]}),
		.sram(mux_2level_tapbuf_size48_84_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_84_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_iack_2_0_));

	mux_2level_tapbuf_size48 mux_top_ipin_75 (
		.in({chanx_left_in[5], chanx_right_in[5], chanx_left_in[11], chanx_right_in[11], chanx_left_in[18], chanx_right_in[18], chanx_left_in[25], chanx_right_in[25], chanx_left_in[31], chanx_right_in[31], chanx_left_in[38], chanx_right_in[38], chanx_left_in[45], chanx_right_in[45], chanx_left_in[51], chanx_right_in[51], chanx_left_in[58], chanx_right_in[58], chanx_left_in[65], chanx_right_in[65], chanx_left_in[71], chanx_right_in[71], chanx_left_in[78], chanx_right_in[78], chanx_left_in[85], chanx_right_in[85], chanx_left_in[91], chanx_right_in[91], chanx_left_in[98], chanx_right_in[98], chanx_left_in[105], chanx_right_in[105], chanx_left_in[111], chanx_right_in[111], chanx_left_in[118], chanx_right_in[118], chanx_left_in[125], chanx_right_in[125], chanx_left_in[131], chanx_right_in[131], chanx_left_in[138], chanx_right_in[138], chanx_left_in[145], chanx_right_in[145], chanx_left_in[151], chanx_right_in[151], chanx_left_in[158], chanx_right_in[158]}),
		.sram(mux_2level_tapbuf_size48_85_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_85_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_iack_2_1_));

	mux_2level_tapbuf_size48 mux_top_ipin_76 (
		.in({chanx_left_in[6], chanx_right_in[6], chanx_left_in[8], chanx_right_in[8], chanx_left_in[19], chanx_right_in[19], chanx_left_in[26], chanx_right_in[26], chanx_left_in[28], chanx_right_in[28], chanx_left_in[39], chanx_right_in[39], chanx_left_in[46], chanx_right_in[46], chanx_left_in[48], chanx_right_in[48], chanx_left_in[59], chanx_right_in[59], chanx_left_in[66], chanx_right_in[66], chanx_left_in[68], chanx_right_in[68], chanx_left_in[79], chanx_right_in[79], chanx_left_in[86], chanx_right_in[86], chanx_left_in[88], chanx_right_in[88], chanx_left_in[99], chanx_right_in[99], chanx_left_in[106], chanx_right_in[106], chanx_left_in[108], chanx_right_in[108], chanx_left_in[119], chanx_right_in[119], chanx_left_in[126], chanx_right_in[126], chanx_left_in[128], chanx_right_in[128], chanx_left_in[139], chanx_right_in[139], chanx_left_in[146], chanx_right_in[146], chanx_left_in[148], chanx_right_in[148], chanx_left_in[159], chanx_right_in[159]}),
		.sram(mux_2level_tapbuf_size48_86_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_86_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_iack_4_0_));

	mux_2level_tapbuf_size48 mux_top_ipin_77 (
		.in({chanx_left_in[7], chanx_right_in[7], chanx_left_in[13], chanx_right_in[13], chanx_left_in[16], chanx_right_in[16], chanx_left_in[27], chanx_right_in[27], chanx_left_in[33], chanx_right_in[33], chanx_left_in[36], chanx_right_in[36], chanx_left_in[47], chanx_right_in[47], chanx_left_in[53], chanx_right_in[53], chanx_left_in[56], chanx_right_in[56], chanx_left_in[67], chanx_right_in[67], chanx_left_in[73], chanx_right_in[73], chanx_left_in[76], chanx_right_in[76], chanx_left_in[87], chanx_right_in[87], chanx_left_in[93], chanx_right_in[93], chanx_left_in[96], chanx_right_in[96], chanx_left_in[107], chanx_right_in[107], chanx_left_in[113], chanx_right_in[113], chanx_left_in[116], chanx_right_in[116], chanx_left_in[127], chanx_right_in[127], chanx_left_in[133], chanx_right_in[133], chanx_left_in[136], chanx_right_in[136], chanx_left_in[147], chanx_right_in[147], chanx_left_in[153], chanx_right_in[153], chanx_left_in[156], chanx_right_in[156]}),
		.sram(mux_2level_tapbuf_size48_87_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_87_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_iack_4_1_));

	mux_2level_tapbuf_size48 mux_top_ipin_78 (
		.in({chanx_left_in[1], chanx_right_in[1], chanx_left_in[4], chanx_right_in[4], chanx_left_in[14], chanx_right_in[14], chanx_left_in[21], chanx_right_in[21], chanx_left_in[24], chanx_right_in[24], chanx_left_in[34], chanx_right_in[34], chanx_left_in[41], chanx_right_in[41], chanx_left_in[44], chanx_right_in[44], chanx_left_in[54], chanx_right_in[54], chanx_left_in[61], chanx_right_in[61], chanx_left_in[64], chanx_right_in[64], chanx_left_in[74], chanx_right_in[74], chanx_left_in[81], chanx_right_in[81], chanx_left_in[84], chanx_right_in[84], chanx_left_in[94], chanx_right_in[94], chanx_left_in[101], chanx_right_in[101], chanx_left_in[104], chanx_right_in[104], chanx_left_in[114], chanx_right_in[114], chanx_left_in[121], chanx_right_in[121], chanx_left_in[124], chanx_right_in[124], chanx_left_in[134], chanx_right_in[134], chanx_left_in[141], chanx_right_in[141], chanx_left_in[144], chanx_right_in[144], chanx_left_in[154], chanx_right_in[154]}),
		.sram(mux_2level_tapbuf_size48_88_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_88_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_ilck_2_0_));

	mux_2level_tapbuf_size48 mux_top_ipin_79 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[22], chanx_right_in[22], chanx_left_in[29], chanx_right_in[29], chanx_left_in[35], chanx_right_in[35], chanx_left_in[42], chanx_right_in[42], chanx_left_in[49], chanx_right_in[49], chanx_left_in[55], chanx_right_in[55], chanx_left_in[62], chanx_right_in[62], chanx_left_in[69], chanx_right_in[69], chanx_left_in[75], chanx_right_in[75], chanx_left_in[82], chanx_right_in[82], chanx_left_in[89], chanx_right_in[89], chanx_left_in[95], chanx_right_in[95], chanx_left_in[102], chanx_right_in[102], chanx_left_in[109], chanx_right_in[109], chanx_left_in[115], chanx_right_in[115], chanx_left_in[122], chanx_right_in[122], chanx_left_in[129], chanx_right_in[129], chanx_left_in[135], chanx_right_in[135], chanx_left_in[142], chanx_right_in[142], chanx_left_in[149], chanx_right_in[149], chanx_left_in[155], chanx_right_in[155]}),
		.sram(mux_2level_tapbuf_size48_89_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_89_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_ilck_2_1_));

	mux_2level_tapbuf_size48 mux_top_ipin_80 (
		.in({chanx_left_in[2], chanx_right_in[2], chanx_left_in[9], chanx_right_in[9], chanx_left_in[15], chanx_right_in[15], chanx_left_in[22], chanx_right_in[22], chanx_left_in[29], chanx_right_in[29], chanx_left_in[35], chanx_right_in[35], chanx_left_in[42], chanx_right_in[42], chanx_left_in[49], chanx_right_in[49], chanx_left_in[55], chanx_right_in[55], chanx_left_in[62], chanx_right_in[62], chanx_left_in[69], chanx_right_in[69], chanx_left_in[75], chanx_right_in[75], chanx_left_in[82], chanx_right_in[82], chanx_left_in[89], chanx_right_in[89], chanx_left_in[95], chanx_right_in[95], chanx_left_in[102], chanx_right_in[102], chanx_left_in[109], chanx_right_in[109], chanx_left_in[115], chanx_right_in[115], chanx_left_in[122], chanx_right_in[122], chanx_left_in[129], chanx_right_in[129], chanx_left_in[135], chanx_right_in[135], chanx_left_in[142], chanx_right_in[142], chanx_left_in[149], chanx_right_in[149], chanx_left_in[155], chanx_right_in[155]}),
		.sram(mux_2level_tapbuf_size48_90_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_90_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_ilck_4_0_));

	mux_2level_tapbuf_size48 mux_top_ipin_81 (
		.in({chanx_left_in[3], chanx_right_in[3], chanx_left_in[10], chanx_right_in[10], chanx_left_in[12], chanx_right_in[12], chanx_left_in[23], chanx_right_in[23], chanx_left_in[30], chanx_right_in[30], chanx_left_in[32], chanx_right_in[32], chanx_left_in[43], chanx_right_in[43], chanx_left_in[50], chanx_right_in[50], chanx_left_in[52], chanx_right_in[52], chanx_left_in[63], chanx_right_in[63], chanx_left_in[70], chanx_right_in[70], chanx_left_in[72], chanx_right_in[72], chanx_left_in[83], chanx_right_in[83], chanx_left_in[90], chanx_right_in[90], chanx_left_in[92], chanx_right_in[92], chanx_left_in[103], chanx_right_in[103], chanx_left_in[110], chanx_right_in[110], chanx_left_in[112], chanx_right_in[112], chanx_left_in[123], chanx_right_in[123], chanx_left_in[130], chanx_right_in[130], chanx_left_in[132], chanx_right_in[132], chanx_left_in[143], chanx_right_in[143], chanx_left_in[150], chanx_right_in[150], chanx_left_in[152], chanx_right_in[152]}),
		.sram(mux_2level_tapbuf_size48_91_sram[0:13]),
		.sram_inv(mux_2level_tapbuf_size48_91_sram_inv[0:13]),
		.out(bottom_grid_top_width_0_height_0_subtile_0__pin_ilck_4_1_));

	mux_2level_tapbuf_size48_mem mem_bottom_ipin_0 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(ccff_head),
		.ccff_tail(mux_2level_tapbuf_size48_mem_0_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_0_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_0_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_bottom_ipin_1 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_0_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_1_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_1_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_1_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_bottom_ipin_2 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_1_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_2_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_2_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_2_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_bottom_ipin_3 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_2_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_3_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_3_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_3_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_bottom_ipin_4 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_4_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_4_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_bottom_ipin_5 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_5_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_5_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_bottom_ipin_6 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_6_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_6_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_bottom_ipin_7 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_6_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_7_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_7_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_7_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_bottom_ipin_8 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_7_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_8_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_8_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_8_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_bottom_ipin_9 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_8_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_9_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_9_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_9_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_0 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_9_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_10_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_10_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_10_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_1 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_10_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_11_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_11_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_11_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_2 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_11_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_12_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_12_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_12_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_3 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_12_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_13_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_13_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_13_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_4 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_13_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_14_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_14_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_14_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_5 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_14_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_15_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_15_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_15_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_6 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_15_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_16_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_16_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_16_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_7 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_16_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_17_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_17_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_17_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_8 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_17_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_18_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_18_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_18_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_9 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_18_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_19_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_19_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_19_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_10 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_19_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_20_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_20_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_20_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_11 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_20_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_21_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_21_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_21_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_12 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_21_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_22_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_22_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_22_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_13 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_22_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_23_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_23_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_23_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_14 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_23_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_24_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_24_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_24_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_15 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_24_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_25_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_25_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_25_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_16 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_25_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_26_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_26_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_26_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_17 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_26_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_27_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_27_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_27_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_18 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_27_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_28_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_28_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_28_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_19 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_28_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_29_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_29_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_29_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_20 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_29_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_30_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_30_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_30_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_21 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_30_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_31_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_31_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_31_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_22 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_31_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_32_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_32_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_32_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_23 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_32_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_33_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_33_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_33_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_24 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_33_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_34_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_34_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_34_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_25 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_34_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_35_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_35_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_35_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_26 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_35_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_36_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_36_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_36_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_27 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_36_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_37_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_37_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_37_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_28 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_37_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_38_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_38_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_38_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_29 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_38_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_39_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_39_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_39_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_30 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_39_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_40_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_40_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_40_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_31 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_40_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_41_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_41_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_41_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_32 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_41_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_42_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_42_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_42_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_33 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_42_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_43_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_43_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_43_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_34 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_43_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_44_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_44_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_44_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_35 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_44_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_45_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_45_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_45_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_36 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_45_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_46_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_46_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_46_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_37 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_46_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_47_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_47_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_47_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_38 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_47_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_48_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_48_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_48_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_39 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_48_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_49_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_49_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_49_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_40 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_49_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_50_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_50_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_50_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_41 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_50_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_51_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_51_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_51_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_42 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_51_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_52_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_52_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_52_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_43 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_52_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_53_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_53_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_53_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_44 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_53_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_54_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_54_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_54_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_45 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_54_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_55_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_55_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_55_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_46 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_55_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_56_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_56_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_56_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_47 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_56_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_57_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_57_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_57_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_48 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_57_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_58_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_58_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_58_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_49 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_58_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_59_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_59_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_59_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_50 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_59_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_60_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_60_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_60_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_51 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_60_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_61_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_61_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_61_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_52 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_61_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_62_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_62_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_62_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_53 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_62_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_63_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_63_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_63_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_54 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_63_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_64_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_64_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_64_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_55 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_64_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_65_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_65_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_65_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_56 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_65_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_66_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_66_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_66_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_57 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_66_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_67_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_67_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_67_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_58 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_67_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_68_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_68_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_68_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_59 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_68_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_69_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_69_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_69_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_60 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_69_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_70_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_70_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_70_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_61 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_70_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_71_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_71_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_71_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_62 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_71_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_72_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_72_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_72_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_63 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_72_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_73_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_73_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_73_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_64 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_73_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_74_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_74_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_74_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_65 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_74_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_75_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_75_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_75_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_66 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_75_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_76_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_76_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_76_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_67 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_76_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_77_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_77_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_77_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_68 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_77_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_78_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_78_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_78_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_69 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_78_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_79_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_79_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_79_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_70 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_79_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_80_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_80_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_80_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_71 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_80_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_81_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_81_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_81_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_72 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_81_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_82_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_82_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_82_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_73 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_82_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_83_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_83_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_83_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_74 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_83_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_84_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_84_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_84_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_75 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_84_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_85_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_85_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_85_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_76 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_85_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_86_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_86_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_86_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_77 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_86_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_87_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_87_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_87_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_78 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_87_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_88_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_88_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_88_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_79 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_88_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_89_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_89_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_89_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_80 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_89_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size48_mem_90_ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_90_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_90_sram_inv[0:13]));

	mux_2level_tapbuf_size48_mem mem_top_ipin_81 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size48_mem_90_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_2level_tapbuf_size48_91_sram[0:13]),
		.mem_outb(mux_2level_tapbuf_size48_91_sram_inv[0:13]));

endmodule
// ----- END Verilog module for cbx_2__2_ -----

//----- Default net type -----
`default_nettype wire




