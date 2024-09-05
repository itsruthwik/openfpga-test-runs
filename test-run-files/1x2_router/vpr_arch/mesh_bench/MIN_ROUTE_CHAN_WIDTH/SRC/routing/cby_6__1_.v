//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for Unique Connection Blocks[6][1]
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Tue Aug 20 23:36:48 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for cby_6__1_ -----
module cby_6__1_(pReset,
                 prog_clk,
                 chany_bottom_in,
                 chany_top_in,
                 ccff_head,
                 chany_bottom_out,
                 chany_top_out,
                 right_grid_left_width_0_height_0_subtile_0__pin_outpad_0_,
                 right_grid_left_width_0_height_0_subtile_1__pin_outpad_0_,
                 right_grid_left_width_0_height_0_subtile_2__pin_outpad_0_,
                 right_grid_left_width_0_height_0_subtile_3__pin_outpad_0_,
                 right_grid_left_width_0_height_0_subtile_4__pin_outpad_0_,
                 right_grid_left_width_0_height_0_subtile_5__pin_outpad_0_,
                 right_grid_left_width_0_height_0_subtile_6__pin_outpad_0_,
                 right_grid_left_width_0_height_0_subtile_7__pin_outpad_0_,
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
output [0:0] right_grid_left_width_0_height_0_subtile_0__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_1__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_2__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_3__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_4__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_5__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_6__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] right_grid_left_width_0_height_0_subtile_7__pin_outpad_0_;
//----- OUTPUT PORTS -----
output [0:0] ccff_tail;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----


wire [0:7] mux_2level_tapbuf_size14_0_sram;
wire [0:7] mux_2level_tapbuf_size14_0_sram_inv;
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
wire [0:0] mux_2level_tapbuf_size14_mem_0_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_1_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_2_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_3_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_4_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_5_ccff_tail;
wire [0:0] mux_2level_tapbuf_size14_mem_6_ccff_tail;

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
		.out(right_grid_left_width_0_height_0_subtile_0__pin_outpad_0_));

	mux_2level_tapbuf_size14 mux_left_ipin_1 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[13], chany_top_in[13], chany_bottom_in[19], chany_top_in[19], chany_bottom_in[25], chany_top_in[25], chany_bottom_in[31], chany_top_in[31], chany_bottom_in[37], chany_top_in[37]}),
		.sram(mux_2level_tapbuf_size14_1_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_1_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_1__pin_outpad_0_));

	mux_2level_tapbuf_size14 mux_left_ipin_2 (
		.in({chany_bottom_in[2], chany_top_in[2], chany_bottom_in[8], chany_top_in[8], chany_bottom_in[14], chany_top_in[14], chany_bottom_in[20], chany_top_in[20], chany_bottom_in[26], chany_top_in[26], chany_bottom_in[32], chany_top_in[32], chany_bottom_in[38], chany_top_in[38]}),
		.sram(mux_2level_tapbuf_size14_2_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_2_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_2__pin_outpad_0_));

	mux_2level_tapbuf_size14 mux_left_ipin_3 (
		.in({chany_bottom_in[3], chany_top_in[3], chany_bottom_in[9], chany_top_in[9], chany_bottom_in[15], chany_top_in[15], chany_bottom_in[21], chany_top_in[21], chany_bottom_in[27], chany_top_in[27], chany_bottom_in[33], chany_top_in[33], chany_bottom_in[39], chany_top_in[39]}),
		.sram(mux_2level_tapbuf_size14_3_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_3_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_3__pin_outpad_0_));

	mux_2level_tapbuf_size14 mux_left_ipin_4 (
		.in({chany_bottom_in[4], chany_top_in[4], chany_bottom_in[10], chany_top_in[10], chany_bottom_in[16], chany_top_in[16], chany_bottom_in[22], chany_top_in[22], chany_bottom_in[28], chany_top_in[28], chany_bottom_in[34], chany_top_in[34], chany_bottom_in[40], chany_top_in[40]}),
		.sram(mux_2level_tapbuf_size14_4_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_4_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_4__pin_outpad_0_));

	mux_2level_tapbuf_size14 mux_left_ipin_5 (
		.in({chany_bottom_in[5], chany_top_in[5], chany_bottom_in[11], chany_top_in[11], chany_bottom_in[17], chany_top_in[17], chany_bottom_in[23], chany_top_in[23], chany_bottom_in[29], chany_top_in[29], chany_bottom_in[35], chany_top_in[35], chany_bottom_in[41], chany_top_in[41]}),
		.sram(mux_2level_tapbuf_size14_5_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_5_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_5__pin_outpad_0_));

	mux_2level_tapbuf_size14 mux_left_ipin_6 (
		.in({chany_bottom_in[0], chany_top_in[0], chany_bottom_in[6], chany_top_in[6], chany_bottom_in[12], chany_top_in[12], chany_bottom_in[18], chany_top_in[18], chany_bottom_in[24], chany_top_in[24], chany_bottom_in[30], chany_top_in[30], chany_bottom_in[36], chany_top_in[36]}),
		.sram(mux_2level_tapbuf_size14_6_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_6_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_6__pin_outpad_0_));

	mux_2level_tapbuf_size14 mux_left_ipin_7 (
		.in({chany_bottom_in[1], chany_top_in[1], chany_bottom_in[7], chany_top_in[7], chany_bottom_in[13], chany_top_in[13], chany_bottom_in[19], chany_top_in[19], chany_bottom_in[25], chany_top_in[25], chany_bottom_in[31], chany_top_in[31], chany_bottom_in[37], chany_top_in[37]}),
		.sram(mux_2level_tapbuf_size14_7_sram[0:7]),
		.sram_inv(mux_2level_tapbuf_size14_7_sram_inv[0:7]),
		.out(right_grid_left_width_0_height_0_subtile_7__pin_outpad_0_));

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

	mux_2level_tapbuf_size14_mem mem_left_ipin_4 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_3_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_4_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_4_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_4_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_left_ipin_5 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_4_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_5_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_5_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_5_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_left_ipin_6 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_5_ccff_tail),
		.ccff_tail(mux_2level_tapbuf_size14_mem_6_ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_6_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_6_sram_inv[0:7]));

	mux_2level_tapbuf_size14_mem mem_left_ipin_7 (
		.pReset(pReset),
		.prog_clk(prog_clk),
		.ccff_head(mux_2level_tapbuf_size14_mem_6_ccff_tail),
		.ccff_tail(ccff_tail),
		.mem_out(mux_2level_tapbuf_size14_7_sram[0:7]),
		.mem_outb(mux_2level_tapbuf_size14_7_sram_inv[0:7]));

endmodule
// ----- END Verilog module for cby_6__1_ -----

//----- Default net type -----
`default_nettype wire




