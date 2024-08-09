//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: FPGA Verilog Testbench for Formal Top-level netlist of Design: mesh_bench
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Thu Aug  8 17:59:29 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

module mesh_bench_top_formal_verification_random_tb;
// ----- Default clock port is added here since benchmark does not contain one -------
	reg [0:0] clk;

// ----- Shared inputs -------
	reg [0:0] i_data_0_0_;
	reg [0:0] i_data_0_1_;
	reg [0:0] i_data_0_2_;
	reg [0:0] i_data_0_3_;
	reg [0:0] i_data_0_4_;
	reg [0:0] i_data_0_5_;
	reg [0:0] i_data_0_6_;
	reg [0:0] i_data_0_7_;
	reg [0:0] i_data_0_8_;
	reg [0:0] i_data_0_9_;
	reg [0:0] i_data_0_10_;
	reg [0:0] i_data_0_11_;
	reg [0:0] i_data_0_12_;
	reg [0:0] i_data_0_13_;
	reg [0:0] i_data_0_14_;
	reg [0:0] i_data_0_15_;
	reg [0:0] i_data_0_16_;
	reg [0:0] i_data_0_17_;
	reg [0:0] i_data_0_18_;
	reg [0:0] i_data_0_19_;
	reg [0:0] i_data_0_20_;
	reg [0:0] i_data_0_21_;
	reg [0:0] i_data_0_22_;
	reg [0:0] i_data_0_23_;
	reg [0:0] i_data_0_24_;
	reg [0:0] i_data_0_25_;
	reg [0:0] i_data_0_26_;
	reg [0:0] i_data_0_27_;
	reg [0:0] i_data_0_28_;
	reg [0:0] i_data_0_29_;
	reg [0:0] i_data_0_30_;
	reg [0:0] i_data_0_31_;
	reg [0:0] i_data_0_32_;
	reg [0:0] i_data_0_33_;
	reg [0:0] i_data_0_34_;
	reg [0:0] i_valid_0;
	reg [0:0] i_vch_0;
	reg [0:0] i_ack_0_0_;
	reg [0:0] i_ack_0_1_;
	reg [0:0] i_lck_0_0_;
	reg [0:0] i_lck_0_1_;
	reg [0:0] i_data_1_0_;
	reg [0:0] i_data_1_1_;
	reg [0:0] i_data_1_2_;
	reg [0:0] i_data_1_3_;
	reg [0:0] i_data_1_4_;
	reg [0:0] i_data_1_5_;
	reg [0:0] i_data_1_6_;
	reg [0:0] i_data_1_7_;
	reg [0:0] i_data_1_8_;
	reg [0:0] i_data_1_9_;
	reg [0:0] i_data_1_10_;
	reg [0:0] i_data_1_11_;
	reg [0:0] i_data_1_12_;
	reg [0:0] i_data_1_13_;
	reg [0:0] i_data_1_14_;
	reg [0:0] i_data_1_15_;
	reg [0:0] i_data_1_16_;
	reg [0:0] i_data_1_17_;
	reg [0:0] i_data_1_18_;
	reg [0:0] i_data_1_19_;
	reg [0:0] i_data_1_20_;
	reg [0:0] i_data_1_21_;
	reg [0:0] i_data_1_22_;
	reg [0:0] i_data_1_23_;
	reg [0:0] i_data_1_24_;
	reg [0:0] i_data_1_25_;
	reg [0:0] i_data_1_26_;
	reg [0:0] i_data_1_27_;
	reg [0:0] i_data_1_28_;
	reg [0:0] i_data_1_29_;
	reg [0:0] i_data_1_30_;
	reg [0:0] i_data_1_31_;
	reg [0:0] i_data_1_32_;
	reg [0:0] i_data_1_33_;
	reg [0:0] i_data_1_34_;
	reg [0:0] i_valid_1;
	reg [0:0] i_vch_1;
	reg [0:0] i_ack_1_0_;
	reg [0:0] i_ack_1_1_;
	reg [0:0] i_lck_1_0_;
	reg [0:0] i_lck_1_1_;
	reg [0:0] rst_;

// ----- FPGA fabric outputs -------
	wire [0:0] o_data_0_0__gfpga;
	wire [0:0] o_data_0_1__gfpga;
	wire [0:0] o_data_0_2__gfpga;
	wire [0:0] o_data_0_3__gfpga;
	wire [0:0] o_data_0_4__gfpga;
	wire [0:0] o_data_0_5__gfpga;
	wire [0:0] o_data_0_6__gfpga;
	wire [0:0] o_data_0_7__gfpga;
	wire [0:0] o_data_0_8__gfpga;
	wire [0:0] o_data_0_9__gfpga;
	wire [0:0] o_data_0_10__gfpga;
	wire [0:0] o_data_0_11__gfpga;
	wire [0:0] o_data_0_12__gfpga;
	wire [0:0] o_data_0_13__gfpga;
	wire [0:0] o_data_0_14__gfpga;
	wire [0:0] o_data_0_15__gfpga;
	wire [0:0] o_data_0_16__gfpga;
	wire [0:0] o_data_0_17__gfpga;
	wire [0:0] o_data_0_18__gfpga;
	wire [0:0] o_data_0_19__gfpga;
	wire [0:0] o_data_0_20__gfpga;
	wire [0:0] o_data_0_21__gfpga;
	wire [0:0] o_data_0_22__gfpga;
	wire [0:0] o_data_0_23__gfpga;
	wire [0:0] o_data_0_24__gfpga;
	wire [0:0] o_data_0_25__gfpga;
	wire [0:0] o_data_0_26__gfpga;
	wire [0:0] o_data_0_27__gfpga;
	wire [0:0] o_data_0_28__gfpga;
	wire [0:0] o_data_0_29__gfpga;
	wire [0:0] o_data_0_30__gfpga;
	wire [0:0] o_data_0_31__gfpga;
	wire [0:0] o_data_0_32__gfpga;
	wire [0:0] o_data_0_33__gfpga;
	wire [0:0] o_data_0_34__gfpga;
	wire [0:0] o_valid_0_gfpga;
	wire [0:0] o_vch_0_gfpga;
	wire [0:0] o_ack_0_0__gfpga;
	wire [0:0] o_ack_0_1__gfpga;
	wire [0:0] o_lck_0_0__gfpga;
	wire [0:0] o_lck_0_1__gfpga;
	wire [0:0] o_rdy_0_0__gfpga;
	wire [0:0] o_rdy_0_1__gfpga;
	wire [0:0] o_data_1_0__gfpga;
	wire [0:0] o_data_1_1__gfpga;
	wire [0:0] o_data_1_2__gfpga;
	wire [0:0] o_data_1_3__gfpga;
	wire [0:0] o_data_1_4__gfpga;
	wire [0:0] o_data_1_5__gfpga;
	wire [0:0] o_data_1_6__gfpga;
	wire [0:0] o_data_1_7__gfpga;
	wire [0:0] o_data_1_8__gfpga;
	wire [0:0] o_data_1_9__gfpga;
	wire [0:0] o_data_1_10__gfpga;
	wire [0:0] o_data_1_11__gfpga;
	wire [0:0] o_data_1_12__gfpga;
	wire [0:0] o_data_1_13__gfpga;
	wire [0:0] o_data_1_14__gfpga;
	wire [0:0] o_data_1_15__gfpga;
	wire [0:0] o_data_1_16__gfpga;
	wire [0:0] o_data_1_17__gfpga;
	wire [0:0] o_data_1_18__gfpga;
	wire [0:0] o_data_1_19__gfpga;
	wire [0:0] o_data_1_20__gfpga;
	wire [0:0] o_data_1_21__gfpga;
	wire [0:0] o_data_1_22__gfpga;
	wire [0:0] o_data_1_23__gfpga;
	wire [0:0] o_data_1_24__gfpga;
	wire [0:0] o_data_1_25__gfpga;
	wire [0:0] o_data_1_26__gfpga;
	wire [0:0] o_data_1_27__gfpga;
	wire [0:0] o_data_1_28__gfpga;
	wire [0:0] o_data_1_29__gfpga;
	wire [0:0] o_data_1_30__gfpga;
	wire [0:0] o_data_1_31__gfpga;
	wire [0:0] o_data_1_32__gfpga;
	wire [0:0] o_data_1_33__gfpga;
	wire [0:0] o_data_1_34__gfpga;
	wire [0:0] o_valid_1_gfpga;
	wire [0:0] o_vch_1_gfpga;
	wire [0:0] o_ack_1_0__gfpga;
	wire [0:0] o_ack_1_1__gfpga;
	wire [0:0] o_lck_1_0__gfpga;
	wire [0:0] o_lck_1_1__gfpga;
	wire [0:0] o_rdy_1_0__gfpga;
	wire [0:0] o_rdy_1_1__gfpga;

// ----- Benchmark outputs -------
	wire [0:0] o_data_0_0__bench;
	wire [0:0] o_data_0_1__bench;
	wire [0:0] o_data_0_2__bench;
	wire [0:0] o_data_0_3__bench;
	wire [0:0] o_data_0_4__bench;
	wire [0:0] o_data_0_5__bench;
	wire [0:0] o_data_0_6__bench;
	wire [0:0] o_data_0_7__bench;
	wire [0:0] o_data_0_8__bench;
	wire [0:0] o_data_0_9__bench;
	wire [0:0] o_data_0_10__bench;
	wire [0:0] o_data_0_11__bench;
	wire [0:0] o_data_0_12__bench;
	wire [0:0] o_data_0_13__bench;
	wire [0:0] o_data_0_14__bench;
	wire [0:0] o_data_0_15__bench;
	wire [0:0] o_data_0_16__bench;
	wire [0:0] o_data_0_17__bench;
	wire [0:0] o_data_0_18__bench;
	wire [0:0] o_data_0_19__bench;
	wire [0:0] o_data_0_20__bench;
	wire [0:0] o_data_0_21__bench;
	wire [0:0] o_data_0_22__bench;
	wire [0:0] o_data_0_23__bench;
	wire [0:0] o_data_0_24__bench;
	wire [0:0] o_data_0_25__bench;
	wire [0:0] o_data_0_26__bench;
	wire [0:0] o_data_0_27__bench;
	wire [0:0] o_data_0_28__bench;
	wire [0:0] o_data_0_29__bench;
	wire [0:0] o_data_0_30__bench;
	wire [0:0] o_data_0_31__bench;
	wire [0:0] o_data_0_32__bench;
	wire [0:0] o_data_0_33__bench;
	wire [0:0] o_data_0_34__bench;
	wire [0:0] o_valid_0_bench;
	wire [0:0] o_vch_0_bench;
	wire [0:0] o_ack_0_0__bench;
	wire [0:0] o_ack_0_1__bench;
	wire [0:0] o_lck_0_0__bench;
	wire [0:0] o_lck_0_1__bench;
	wire [0:0] o_rdy_0_0__bench;
	wire [0:0] o_rdy_0_1__bench;
	wire [0:0] o_data_1_0__bench;
	wire [0:0] o_data_1_1__bench;
	wire [0:0] o_data_1_2__bench;
	wire [0:0] o_data_1_3__bench;
	wire [0:0] o_data_1_4__bench;
	wire [0:0] o_data_1_5__bench;
	wire [0:0] o_data_1_6__bench;
	wire [0:0] o_data_1_7__bench;
	wire [0:0] o_data_1_8__bench;
	wire [0:0] o_data_1_9__bench;
	wire [0:0] o_data_1_10__bench;
	wire [0:0] o_data_1_11__bench;
	wire [0:0] o_data_1_12__bench;
	wire [0:0] o_data_1_13__bench;
	wire [0:0] o_data_1_14__bench;
	wire [0:0] o_data_1_15__bench;
	wire [0:0] o_data_1_16__bench;
	wire [0:0] o_data_1_17__bench;
	wire [0:0] o_data_1_18__bench;
	wire [0:0] o_data_1_19__bench;
	wire [0:0] o_data_1_20__bench;
	wire [0:0] o_data_1_21__bench;
	wire [0:0] o_data_1_22__bench;
	wire [0:0] o_data_1_23__bench;
	wire [0:0] o_data_1_24__bench;
	wire [0:0] o_data_1_25__bench;
	wire [0:0] o_data_1_26__bench;
	wire [0:0] o_data_1_27__bench;
	wire [0:0] o_data_1_28__bench;
	wire [0:0] o_data_1_29__bench;
	wire [0:0] o_data_1_30__bench;
	wire [0:0] o_data_1_31__bench;
	wire [0:0] o_data_1_32__bench;
	wire [0:0] o_data_1_33__bench;
	wire [0:0] o_data_1_34__bench;
	wire [0:0] o_valid_1_bench;
	wire [0:0] o_vch_1_bench;
	wire [0:0] o_ack_1_0__bench;
	wire [0:0] o_ack_1_1__bench;
	wire [0:0] o_lck_1_0__bench;
	wire [0:0] o_lck_1_1__bench;
	wire [0:0] o_rdy_1_0__bench;
	wire [0:0] o_rdy_1_1__bench;

// ----- Output vectors checking flags -------
	reg [0:0] o_data_0_0__flag;
	reg [0:0] o_data_0_1__flag;
	reg [0:0] o_data_0_2__flag;
	reg [0:0] o_data_0_3__flag;
	reg [0:0] o_data_0_4__flag;
	reg [0:0] o_data_0_5__flag;
	reg [0:0] o_data_0_6__flag;
	reg [0:0] o_data_0_7__flag;
	reg [0:0] o_data_0_8__flag;
	reg [0:0] o_data_0_9__flag;
	reg [0:0] o_data_0_10__flag;
	reg [0:0] o_data_0_11__flag;
	reg [0:0] o_data_0_12__flag;
	reg [0:0] o_data_0_13__flag;
	reg [0:0] o_data_0_14__flag;
	reg [0:0] o_data_0_15__flag;
	reg [0:0] o_data_0_16__flag;
	reg [0:0] o_data_0_17__flag;
	reg [0:0] o_data_0_18__flag;
	reg [0:0] o_data_0_19__flag;
	reg [0:0] o_data_0_20__flag;
	reg [0:0] o_data_0_21__flag;
	reg [0:0] o_data_0_22__flag;
	reg [0:0] o_data_0_23__flag;
	reg [0:0] o_data_0_24__flag;
	reg [0:0] o_data_0_25__flag;
	reg [0:0] o_data_0_26__flag;
	reg [0:0] o_data_0_27__flag;
	reg [0:0] o_data_0_28__flag;
	reg [0:0] o_data_0_29__flag;
	reg [0:0] o_data_0_30__flag;
	reg [0:0] o_data_0_31__flag;
	reg [0:0] o_data_0_32__flag;
	reg [0:0] o_data_0_33__flag;
	reg [0:0] o_data_0_34__flag;
	reg [0:0] o_valid_0_flag;
	reg [0:0] o_vch_0_flag;
	reg [0:0] o_ack_0_0__flag;
	reg [0:0] o_ack_0_1__flag;
	reg [0:0] o_lck_0_0__flag;
	reg [0:0] o_lck_0_1__flag;
	reg [0:0] o_rdy_0_0__flag;
	reg [0:0] o_rdy_0_1__flag;
	reg [0:0] o_data_1_0__flag;
	reg [0:0] o_data_1_1__flag;
	reg [0:0] o_data_1_2__flag;
	reg [0:0] o_data_1_3__flag;
	reg [0:0] o_data_1_4__flag;
	reg [0:0] o_data_1_5__flag;
	reg [0:0] o_data_1_6__flag;
	reg [0:0] o_data_1_7__flag;
	reg [0:0] o_data_1_8__flag;
	reg [0:0] o_data_1_9__flag;
	reg [0:0] o_data_1_10__flag;
	reg [0:0] o_data_1_11__flag;
	reg [0:0] o_data_1_12__flag;
	reg [0:0] o_data_1_13__flag;
	reg [0:0] o_data_1_14__flag;
	reg [0:0] o_data_1_15__flag;
	reg [0:0] o_data_1_16__flag;
	reg [0:0] o_data_1_17__flag;
	reg [0:0] o_data_1_18__flag;
	reg [0:0] o_data_1_19__flag;
	reg [0:0] o_data_1_20__flag;
	reg [0:0] o_data_1_21__flag;
	reg [0:0] o_data_1_22__flag;
	reg [0:0] o_data_1_23__flag;
	reg [0:0] o_data_1_24__flag;
	reg [0:0] o_data_1_25__flag;
	reg [0:0] o_data_1_26__flag;
	reg [0:0] o_data_1_27__flag;
	reg [0:0] o_data_1_28__flag;
	reg [0:0] o_data_1_29__flag;
	reg [0:0] o_data_1_30__flag;
	reg [0:0] o_data_1_31__flag;
	reg [0:0] o_data_1_32__flag;
	reg [0:0] o_data_1_33__flag;
	reg [0:0] o_data_1_34__flag;
	reg [0:0] o_valid_1_flag;
	reg [0:0] o_vch_1_flag;
	reg [0:0] o_ack_1_0__flag;
	reg [0:0] o_ack_1_1__flag;
	reg [0:0] o_lck_1_0__flag;
	reg [0:0] o_lck_1_1__flag;
	reg [0:0] o_rdy_1_0__flag;
	reg [0:0] o_rdy_1_1__flag;

// ----- Error counter -------
	integer nb_error= 0;

// ----- FPGA fabric instanciation -------
	mesh_bench_top_formal_verification FPGA_DUT(
		i_data_0_0_,
		i_data_0_1_,
		i_data_0_2_,
		i_data_0_3_,
		i_data_0_4_,
		i_data_0_5_,
		i_data_0_6_,
		i_data_0_7_,
		i_data_0_8_,
		i_data_0_9_,
		i_data_0_10_,
		i_data_0_11_,
		i_data_0_12_,
		i_data_0_13_,
		i_data_0_14_,
		i_data_0_15_,
		i_data_0_16_,
		i_data_0_17_,
		i_data_0_18_,
		i_data_0_19_,
		i_data_0_20_,
		i_data_0_21_,
		i_data_0_22_,
		i_data_0_23_,
		i_data_0_24_,
		i_data_0_25_,
		i_data_0_26_,
		i_data_0_27_,
		i_data_0_28_,
		i_data_0_29_,
		i_data_0_30_,
		i_data_0_31_,
		i_data_0_32_,
		i_data_0_33_,
		i_data_0_34_,
		i_valid_0,
		i_vch_0,
		i_ack_0_0_,
		i_ack_0_1_,
		i_lck_0_0_,
		i_lck_0_1_,
		i_data_1_0_,
		i_data_1_1_,
		i_data_1_2_,
		i_data_1_3_,
		i_data_1_4_,
		i_data_1_5_,
		i_data_1_6_,
		i_data_1_7_,
		i_data_1_8_,
		i_data_1_9_,
		i_data_1_10_,
		i_data_1_11_,
		i_data_1_12_,
		i_data_1_13_,
		i_data_1_14_,
		i_data_1_15_,
		i_data_1_16_,
		i_data_1_17_,
		i_data_1_18_,
		i_data_1_19_,
		i_data_1_20_,
		i_data_1_21_,
		i_data_1_22_,
		i_data_1_23_,
		i_data_1_24_,
		i_data_1_25_,
		i_data_1_26_,
		i_data_1_27_,
		i_data_1_28_,
		i_data_1_29_,
		i_data_1_30_,
		i_data_1_31_,
		i_data_1_32_,
		i_data_1_33_,
		i_data_1_34_,
		i_valid_1,
		i_vch_1,
		i_ack_1_0_,
		i_ack_1_1_,
		i_lck_1_0_,
		i_lck_1_1_,
		clk,
		rst_,
		o_data_0_0__gfpga,
		o_data_0_1__gfpga,
		o_data_0_2__gfpga,
		o_data_0_3__gfpga,
		o_data_0_4__gfpga,
		o_data_0_5__gfpga,
		o_data_0_6__gfpga,
		o_data_0_7__gfpga,
		o_data_0_8__gfpga,
		o_data_0_9__gfpga,
		o_data_0_10__gfpga,
		o_data_0_11__gfpga,
		o_data_0_12__gfpga,
		o_data_0_13__gfpga,
		o_data_0_14__gfpga,
		o_data_0_15__gfpga,
		o_data_0_16__gfpga,
		o_data_0_17__gfpga,
		o_data_0_18__gfpga,
		o_data_0_19__gfpga,
		o_data_0_20__gfpga,
		o_data_0_21__gfpga,
		o_data_0_22__gfpga,
		o_data_0_23__gfpga,
		o_data_0_24__gfpga,
		o_data_0_25__gfpga,
		o_data_0_26__gfpga,
		o_data_0_27__gfpga,
		o_data_0_28__gfpga,
		o_data_0_29__gfpga,
		o_data_0_30__gfpga,
		o_data_0_31__gfpga,
		o_data_0_32__gfpga,
		o_data_0_33__gfpga,
		o_data_0_34__gfpga,
		o_valid_0_gfpga,
		o_vch_0_gfpga,
		o_ack_0_0__gfpga,
		o_ack_0_1__gfpga,
		o_lck_0_0__gfpga,
		o_lck_0_1__gfpga,
		o_rdy_0_0__gfpga,
		o_rdy_0_1__gfpga,
		o_data_1_0__gfpga,
		o_data_1_1__gfpga,
		o_data_1_2__gfpga,
		o_data_1_3__gfpga,
		o_data_1_4__gfpga,
		o_data_1_5__gfpga,
		o_data_1_6__gfpga,
		o_data_1_7__gfpga,
		o_data_1_8__gfpga,
		o_data_1_9__gfpga,
		o_data_1_10__gfpga,
		o_data_1_11__gfpga,
		o_data_1_12__gfpga,
		o_data_1_13__gfpga,
		o_data_1_14__gfpga,
		o_data_1_15__gfpga,
		o_data_1_16__gfpga,
		o_data_1_17__gfpga,
		o_data_1_18__gfpga,
		o_data_1_19__gfpga,
		o_data_1_20__gfpga,
		o_data_1_21__gfpga,
		o_data_1_22__gfpga,
		o_data_1_23__gfpga,
		o_data_1_24__gfpga,
		o_data_1_25__gfpga,
		o_data_1_26__gfpga,
		o_data_1_27__gfpga,
		o_data_1_28__gfpga,
		o_data_1_29__gfpga,
		o_data_1_30__gfpga,
		o_data_1_31__gfpga,
		o_data_1_32__gfpga,
		o_data_1_33__gfpga,
		o_data_1_34__gfpga,
		o_valid_1_gfpga,
		o_vch_1_gfpga,
		o_ack_1_0__gfpga,
		o_ack_1_1__gfpga,
		o_lck_1_0__gfpga,
		o_lck_1_1__gfpga,
		o_rdy_1_0__gfpga,
		o_rdy_1_1__gfpga
	);
// ----- End FPGA Fabric Instanication -------

// ----- Reference Benchmark Instanication -------
	mesh_bench REF_DUT(
		i_data_0_0_,
		i_data_0_1_,
		i_data_0_2_,
		i_data_0_3_,
		i_data_0_4_,
		i_data_0_5_,
		i_data_0_6_,
		i_data_0_7_,
		i_data_0_8_,
		i_data_0_9_,
		i_data_0_10_,
		i_data_0_11_,
		i_data_0_12_,
		i_data_0_13_,
		i_data_0_14_,
		i_data_0_15_,
		i_data_0_16_,
		i_data_0_17_,
		i_data_0_18_,
		i_data_0_19_,
		i_data_0_20_,
		i_data_0_21_,
		i_data_0_22_,
		i_data_0_23_,
		i_data_0_24_,
		i_data_0_25_,
		i_data_0_26_,
		i_data_0_27_,
		i_data_0_28_,
		i_data_0_29_,
		i_data_0_30_,
		i_data_0_31_,
		i_data_0_32_,
		i_data_0_33_,
		i_data_0_34_,
		i_valid_0,
		i_vch_0,
		i_ack_0_0_,
		i_ack_0_1_,
		i_lck_0_0_,
		i_lck_0_1_,
		i_data_1_0_,
		i_data_1_1_,
		i_data_1_2_,
		i_data_1_3_,
		i_data_1_4_,
		i_data_1_5_,
		i_data_1_6_,
		i_data_1_7_,
		i_data_1_8_,
		i_data_1_9_,
		i_data_1_10_,
		i_data_1_11_,
		i_data_1_12_,
		i_data_1_13_,
		i_data_1_14_,
		i_data_1_15_,
		i_data_1_16_,
		i_data_1_17_,
		i_data_1_18_,
		i_data_1_19_,
		i_data_1_20_,
		i_data_1_21_,
		i_data_1_22_,
		i_data_1_23_,
		i_data_1_24_,
		i_data_1_25_,
		i_data_1_26_,
		i_data_1_27_,
		i_data_1_28_,
		i_data_1_29_,
		i_data_1_30_,
		i_data_1_31_,
		i_data_1_32_,
		i_data_1_33_,
		i_data_1_34_,
		i_valid_1,
		i_vch_1,
		i_ack_1_0_,
		i_ack_1_1_,
		i_lck_1_0_,
		i_lck_1_1_,
		clk,
		rst_,
		o_data_0_0__bench,
		o_data_0_1__bench,
		o_data_0_2__bench,
		o_data_0_3__bench,
		o_data_0_4__bench,
		o_data_0_5__bench,
		o_data_0_6__bench,
		o_data_0_7__bench,
		o_data_0_8__bench,
		o_data_0_9__bench,
		o_data_0_10__bench,
		o_data_0_11__bench,
		o_data_0_12__bench,
		o_data_0_13__bench,
		o_data_0_14__bench,
		o_data_0_15__bench,
		o_data_0_16__bench,
		o_data_0_17__bench,
		o_data_0_18__bench,
		o_data_0_19__bench,
		o_data_0_20__bench,
		o_data_0_21__bench,
		o_data_0_22__bench,
		o_data_0_23__bench,
		o_data_0_24__bench,
		o_data_0_25__bench,
		o_data_0_26__bench,
		o_data_0_27__bench,
		o_data_0_28__bench,
		o_data_0_29__bench,
		o_data_0_30__bench,
		o_data_0_31__bench,
		o_data_0_32__bench,
		o_data_0_33__bench,
		o_data_0_34__bench,
		o_valid_0_bench,
		o_vch_0_bench,
		o_ack_0_0__bench,
		o_ack_0_1__bench,
		o_lck_0_0__bench,
		o_lck_0_1__bench,
		o_rdy_0_0__bench,
		o_rdy_0_1__bench,
		o_data_1_0__bench,
		o_data_1_1__bench,
		o_data_1_2__bench,
		o_data_1_3__bench,
		o_data_1_4__bench,
		o_data_1_5__bench,
		o_data_1_6__bench,
		o_data_1_7__bench,
		o_data_1_8__bench,
		o_data_1_9__bench,
		o_data_1_10__bench,
		o_data_1_11__bench,
		o_data_1_12__bench,
		o_data_1_13__bench,
		o_data_1_14__bench,
		o_data_1_15__bench,
		o_data_1_16__bench,
		o_data_1_17__bench,
		o_data_1_18__bench,
		o_data_1_19__bench,
		o_data_1_20__bench,
		o_data_1_21__bench,
		o_data_1_22__bench,
		o_data_1_23__bench,
		o_data_1_24__bench,
		o_data_1_25__bench,
		o_data_1_26__bench,
		o_data_1_27__bench,
		o_data_1_28__bench,
		o_data_1_29__bench,
		o_data_1_30__bench,
		o_data_1_31__bench,
		o_data_1_32__bench,
		o_data_1_33__bench,
		o_data_1_34__bench,
		o_valid_1_bench,
		o_vch_1_bench,
		o_ack_1_0__bench,
		o_ack_1_1__bench,
		o_lck_1_0__bench,
		o_lck_1_1__bench,
		o_rdy_1_0__bench,
		o_rdy_1_1__bench
	);
// ----- End reference Benchmark Instanication -------

// ----- Clock 'clk' Initialization -------
	initial begin
		clk[0] <= 1'b0;
		while(1) begin
			#1
			clk[0] <= !clk[0];
		end
	end

// ----- Begin reset signal generation -----
// ----- End reset signal generation -----

// ----- Input Initialization -------
	initial begin
		i_data_0_0_ <= 1'b0;
		i_data_0_1_ <= 1'b0;
		i_data_0_2_ <= 1'b0;
		i_data_0_3_ <= 1'b0;
		i_data_0_4_ <= 1'b0;
		i_data_0_5_ <= 1'b0;
		i_data_0_6_ <= 1'b0;
		i_data_0_7_ <= 1'b0;
		i_data_0_8_ <= 1'b0;
		i_data_0_9_ <= 1'b0;
		i_data_0_10_ <= 1'b0;
		i_data_0_11_ <= 1'b0;
		i_data_0_12_ <= 1'b0;
		i_data_0_13_ <= 1'b0;
		i_data_0_14_ <= 1'b0;
		i_data_0_15_ <= 1'b0;
		i_data_0_16_ <= 1'b0;
		i_data_0_17_ <= 1'b0;
		i_data_0_18_ <= 1'b0;
		i_data_0_19_ <= 1'b0;
		i_data_0_20_ <= 1'b0;
		i_data_0_21_ <= 1'b0;
		i_data_0_22_ <= 1'b0;
		i_data_0_23_ <= 1'b0;
		i_data_0_24_ <= 1'b0;
		i_data_0_25_ <= 1'b0;
		i_data_0_26_ <= 1'b0;
		i_data_0_27_ <= 1'b0;
		i_data_0_28_ <= 1'b0;
		i_data_0_29_ <= 1'b0;
		i_data_0_30_ <= 1'b0;
		i_data_0_31_ <= 1'b0;
		i_data_0_32_ <= 1'b0;
		i_data_0_33_ <= 1'b0;
		i_data_0_34_ <= 1'b0;
		i_valid_0 <= 1'b0;
		i_vch_0 <= 1'b0;
		i_ack_0_0_ <= 1'b0;
		i_ack_0_1_ <= 1'b0;
		i_lck_0_0_ <= 1'b0;
		i_lck_0_1_ <= 1'b0;
		i_data_1_0_ <= 1'b0;
		i_data_1_1_ <= 1'b0;
		i_data_1_2_ <= 1'b0;
		i_data_1_3_ <= 1'b0;
		i_data_1_4_ <= 1'b0;
		i_data_1_5_ <= 1'b0;
		i_data_1_6_ <= 1'b0;
		i_data_1_7_ <= 1'b0;
		i_data_1_8_ <= 1'b0;
		i_data_1_9_ <= 1'b0;
		i_data_1_10_ <= 1'b0;
		i_data_1_11_ <= 1'b0;
		i_data_1_12_ <= 1'b0;
		i_data_1_13_ <= 1'b0;
		i_data_1_14_ <= 1'b0;
		i_data_1_15_ <= 1'b0;
		i_data_1_16_ <= 1'b0;
		i_data_1_17_ <= 1'b0;
		i_data_1_18_ <= 1'b0;
		i_data_1_19_ <= 1'b0;
		i_data_1_20_ <= 1'b0;
		i_data_1_21_ <= 1'b0;
		i_data_1_22_ <= 1'b0;
		i_data_1_23_ <= 1'b0;
		i_data_1_24_ <= 1'b0;
		i_data_1_25_ <= 1'b0;
		i_data_1_26_ <= 1'b0;
		i_data_1_27_ <= 1'b0;
		i_data_1_28_ <= 1'b0;
		i_data_1_29_ <= 1'b0;
		i_data_1_30_ <= 1'b0;
		i_data_1_31_ <= 1'b0;
		i_data_1_32_ <= 1'b0;
		i_data_1_33_ <= 1'b0;
		i_data_1_34_ <= 1'b0;
		i_valid_1 <= 1'b0;
		i_vch_1 <= 1'b0;
		i_ack_1_0_ <= 1'b0;
		i_ack_1_1_ <= 1'b0;
		i_lck_1_0_ <= 1'b0;
		i_lck_1_1_ <= 1'b0;
		rst_ <= 1'b0;

		o_data_0_0__flag[0] <= 1'b0;
		o_data_0_1__flag[0] <= 1'b0;
		o_data_0_2__flag[0] <= 1'b0;
		o_data_0_3__flag[0] <= 1'b0;
		o_data_0_4__flag[0] <= 1'b0;
		o_data_0_5__flag[0] <= 1'b0;
		o_data_0_6__flag[0] <= 1'b0;
		o_data_0_7__flag[0] <= 1'b0;
		o_data_0_8__flag[0] <= 1'b0;
		o_data_0_9__flag[0] <= 1'b0;
		o_data_0_10__flag[0] <= 1'b0;
		o_data_0_11__flag[0] <= 1'b0;
		o_data_0_12__flag[0] <= 1'b0;
		o_data_0_13__flag[0] <= 1'b0;
		o_data_0_14__flag[0] <= 1'b0;
		o_data_0_15__flag[0] <= 1'b0;
		o_data_0_16__flag[0] <= 1'b0;
		o_data_0_17__flag[0] <= 1'b0;
		o_data_0_18__flag[0] <= 1'b0;
		o_data_0_19__flag[0] <= 1'b0;
		o_data_0_20__flag[0] <= 1'b0;
		o_data_0_21__flag[0] <= 1'b0;
		o_data_0_22__flag[0] <= 1'b0;
		o_data_0_23__flag[0] <= 1'b0;
		o_data_0_24__flag[0] <= 1'b0;
		o_data_0_25__flag[0] <= 1'b0;
		o_data_0_26__flag[0] <= 1'b0;
		o_data_0_27__flag[0] <= 1'b0;
		o_data_0_28__flag[0] <= 1'b0;
		o_data_0_29__flag[0] <= 1'b0;
		o_data_0_30__flag[0] <= 1'b0;
		o_data_0_31__flag[0] <= 1'b0;
		o_data_0_32__flag[0] <= 1'b0;
		o_data_0_33__flag[0] <= 1'b0;
		o_data_0_34__flag[0] <= 1'b0;
		o_valid_0_flag[0] <= 1'b0;
		o_vch_0_flag[0] <= 1'b0;
		o_ack_0_0__flag[0] <= 1'b0;
		o_ack_0_1__flag[0] <= 1'b0;
		o_lck_0_0__flag[0] <= 1'b0;
		o_lck_0_1__flag[0] <= 1'b0;
		o_rdy_0_0__flag[0] <= 1'b0;
		o_rdy_0_1__flag[0] <= 1'b0;
		o_data_1_0__flag[0] <= 1'b0;
		o_data_1_1__flag[0] <= 1'b0;
		o_data_1_2__flag[0] <= 1'b0;
		o_data_1_3__flag[0] <= 1'b0;
		o_data_1_4__flag[0] <= 1'b0;
		o_data_1_5__flag[0] <= 1'b0;
		o_data_1_6__flag[0] <= 1'b0;
		o_data_1_7__flag[0] <= 1'b0;
		o_data_1_8__flag[0] <= 1'b0;
		o_data_1_9__flag[0] <= 1'b0;
		o_data_1_10__flag[0] <= 1'b0;
		o_data_1_11__flag[0] <= 1'b0;
		o_data_1_12__flag[0] <= 1'b0;
		o_data_1_13__flag[0] <= 1'b0;
		o_data_1_14__flag[0] <= 1'b0;
		o_data_1_15__flag[0] <= 1'b0;
		o_data_1_16__flag[0] <= 1'b0;
		o_data_1_17__flag[0] <= 1'b0;
		o_data_1_18__flag[0] <= 1'b0;
		o_data_1_19__flag[0] <= 1'b0;
		o_data_1_20__flag[0] <= 1'b0;
		o_data_1_21__flag[0] <= 1'b0;
		o_data_1_22__flag[0] <= 1'b0;
		o_data_1_23__flag[0] <= 1'b0;
		o_data_1_24__flag[0] <= 1'b0;
		o_data_1_25__flag[0] <= 1'b0;
		o_data_1_26__flag[0] <= 1'b0;
		o_data_1_27__flag[0] <= 1'b0;
		o_data_1_28__flag[0] <= 1'b0;
		o_data_1_29__flag[0] <= 1'b0;
		o_data_1_30__flag[0] <= 1'b0;
		o_data_1_31__flag[0] <= 1'b0;
		o_data_1_32__flag[0] <= 1'b0;
		o_data_1_33__flag[0] <= 1'b0;
		o_data_1_34__flag[0] <= 1'b0;
		o_valid_1_flag[0] <= 1'b0;
		o_vch_1_flag[0] <= 1'b0;
		o_ack_1_0__flag[0] <= 1'b0;
		o_ack_1_1__flag[0] <= 1'b0;
		o_lck_1_0__flag[0] <= 1'b0;
		o_lck_1_1__flag[0] <= 1'b0;
		o_rdy_1_0__flag[0] <= 1'b0;
		o_rdy_1_1__flag[0] <= 1'b0;
	end

// ----- Input Stimulus -------
	always@(negedge clk[0]) begin
		i_data_0_0_ <= $random;
		i_data_0_1_ <= $random;
		i_data_0_2_ <= $random;
		i_data_0_3_ <= $random;
		i_data_0_4_ <= $random;
		i_data_0_5_ <= $random;
		i_data_0_6_ <= $random;
		i_data_0_7_ <= $random;
		i_data_0_8_ <= $random;
		i_data_0_9_ <= $random;
		i_data_0_10_ <= $random;
		i_data_0_11_ <= $random;
		i_data_0_12_ <= $random;
		i_data_0_13_ <= $random;
		i_data_0_14_ <= $random;
		i_data_0_15_ <= $random;
		i_data_0_16_ <= $random;
		i_data_0_17_ <= $random;
		i_data_0_18_ <= $random;
		i_data_0_19_ <= $random;
		i_data_0_20_ <= $random;
		i_data_0_21_ <= $random;
		i_data_0_22_ <= $random;
		i_data_0_23_ <= $random;
		i_data_0_24_ <= $random;
		i_data_0_25_ <= $random;
		i_data_0_26_ <= $random;
		i_data_0_27_ <= $random;
		i_data_0_28_ <= $random;
		i_data_0_29_ <= $random;
		i_data_0_30_ <= $random;
		i_data_0_31_ <= $random;
		i_data_0_32_ <= $random;
		i_data_0_33_ <= $random;
		i_data_0_34_ <= $random;
		i_valid_0 <= $random;
		i_vch_0 <= $random;
		i_ack_0_0_ <= $random;
		i_ack_0_1_ <= $random;
		i_lck_0_0_ <= $random;
		i_lck_0_1_ <= $random;
		i_data_1_0_ <= $random;
		i_data_1_1_ <= $random;
		i_data_1_2_ <= $random;
		i_data_1_3_ <= $random;
		i_data_1_4_ <= $random;
		i_data_1_5_ <= $random;
		i_data_1_6_ <= $random;
		i_data_1_7_ <= $random;
		i_data_1_8_ <= $random;
		i_data_1_9_ <= $random;
		i_data_1_10_ <= $random;
		i_data_1_11_ <= $random;
		i_data_1_12_ <= $random;
		i_data_1_13_ <= $random;
		i_data_1_14_ <= $random;
		i_data_1_15_ <= $random;
		i_data_1_16_ <= $random;
		i_data_1_17_ <= $random;
		i_data_1_18_ <= $random;
		i_data_1_19_ <= $random;
		i_data_1_20_ <= $random;
		i_data_1_21_ <= $random;
		i_data_1_22_ <= $random;
		i_data_1_23_ <= $random;
		i_data_1_24_ <= $random;
		i_data_1_25_ <= $random;
		i_data_1_26_ <= $random;
		i_data_1_27_ <= $random;
		i_data_1_28_ <= $random;
		i_data_1_29_ <= $random;
		i_data_1_30_ <= $random;
		i_data_1_31_ <= $random;
		i_data_1_32_ <= $random;
		i_data_1_33_ <= $random;
		i_data_1_34_ <= $random;
		i_valid_1 <= $random;
		i_vch_1 <= $random;
		i_ack_1_0_ <= $random;
		i_ack_1_1_ <= $random;
		i_lck_1_0_ <= $random;
		i_lck_1_1_ <= $random;
		rst_ <= $random;
	end

// ----- Begin checking output vectors -------
// ----- Skip the first falling edge of clock, it is for initialization -------
	reg [0:0] sim_start;

	always@(negedge clk[0]) begin
		if (1'b1 == sim_start[0]) begin
			sim_start[0] <= ~sim_start[0];
		end else 
begin
			if(!(o_data_0_0__gfpga === o_data_0_0__bench) && !(o_data_0_0__bench === 1'bx)) begin
				o_data_0_0__flag <= 1'b1;
			end else begin
				o_data_0_0__flag<= 1'b0;
			end
			if(!(o_data_0_1__gfpga === o_data_0_1__bench) && !(o_data_0_1__bench === 1'bx)) begin
				o_data_0_1__flag <= 1'b1;
			end else begin
				o_data_0_1__flag<= 1'b0;
			end
			if(!(o_data_0_2__gfpga === o_data_0_2__bench) && !(o_data_0_2__bench === 1'bx)) begin
				o_data_0_2__flag <= 1'b1;
			end else begin
				o_data_0_2__flag<= 1'b0;
			end
			if(!(o_data_0_3__gfpga === o_data_0_3__bench) && !(o_data_0_3__bench === 1'bx)) begin
				o_data_0_3__flag <= 1'b1;
			end else begin
				o_data_0_3__flag<= 1'b0;
			end
			if(!(o_data_0_4__gfpga === o_data_0_4__bench) && !(o_data_0_4__bench === 1'bx)) begin
				o_data_0_4__flag <= 1'b1;
			end else begin
				o_data_0_4__flag<= 1'b0;
			end
			if(!(o_data_0_5__gfpga === o_data_0_5__bench) && !(o_data_0_5__bench === 1'bx)) begin
				o_data_0_5__flag <= 1'b1;
			end else begin
				o_data_0_5__flag<= 1'b0;
			end
			if(!(o_data_0_6__gfpga === o_data_0_6__bench) && !(o_data_0_6__bench === 1'bx)) begin
				o_data_0_6__flag <= 1'b1;
			end else begin
				o_data_0_6__flag<= 1'b0;
			end
			if(!(o_data_0_7__gfpga === o_data_0_7__bench) && !(o_data_0_7__bench === 1'bx)) begin
				o_data_0_7__flag <= 1'b1;
			end else begin
				o_data_0_7__flag<= 1'b0;
			end
			if(!(o_data_0_8__gfpga === o_data_0_8__bench) && !(o_data_0_8__bench === 1'bx)) begin
				o_data_0_8__flag <= 1'b1;
			end else begin
				o_data_0_8__flag<= 1'b0;
			end
			if(!(o_data_0_9__gfpga === o_data_0_9__bench) && !(o_data_0_9__bench === 1'bx)) begin
				o_data_0_9__flag <= 1'b1;
			end else begin
				o_data_0_9__flag<= 1'b0;
			end
			if(!(o_data_0_10__gfpga === o_data_0_10__bench) && !(o_data_0_10__bench === 1'bx)) begin
				o_data_0_10__flag <= 1'b1;
			end else begin
				o_data_0_10__flag<= 1'b0;
			end
			if(!(o_data_0_11__gfpga === o_data_0_11__bench) && !(o_data_0_11__bench === 1'bx)) begin
				o_data_0_11__flag <= 1'b1;
			end else begin
				o_data_0_11__flag<= 1'b0;
			end
			if(!(o_data_0_12__gfpga === o_data_0_12__bench) && !(o_data_0_12__bench === 1'bx)) begin
				o_data_0_12__flag <= 1'b1;
			end else begin
				o_data_0_12__flag<= 1'b0;
			end
			if(!(o_data_0_13__gfpga === o_data_0_13__bench) && !(o_data_0_13__bench === 1'bx)) begin
				o_data_0_13__flag <= 1'b1;
			end else begin
				o_data_0_13__flag<= 1'b0;
			end
			if(!(o_data_0_14__gfpga === o_data_0_14__bench) && !(o_data_0_14__bench === 1'bx)) begin
				o_data_0_14__flag <= 1'b1;
			end else begin
				o_data_0_14__flag<= 1'b0;
			end
			if(!(o_data_0_15__gfpga === o_data_0_15__bench) && !(o_data_0_15__bench === 1'bx)) begin
				o_data_0_15__flag <= 1'b1;
			end else begin
				o_data_0_15__flag<= 1'b0;
			end
			if(!(o_data_0_16__gfpga === o_data_0_16__bench) && !(o_data_0_16__bench === 1'bx)) begin
				o_data_0_16__flag <= 1'b1;
			end else begin
				o_data_0_16__flag<= 1'b0;
			end
			if(!(o_data_0_17__gfpga === o_data_0_17__bench) && !(o_data_0_17__bench === 1'bx)) begin
				o_data_0_17__flag <= 1'b1;
			end else begin
				o_data_0_17__flag<= 1'b0;
			end
			if(!(o_data_0_18__gfpga === o_data_0_18__bench) && !(o_data_0_18__bench === 1'bx)) begin
				o_data_0_18__flag <= 1'b1;
			end else begin
				o_data_0_18__flag<= 1'b0;
			end
			if(!(o_data_0_19__gfpga === o_data_0_19__bench) && !(o_data_0_19__bench === 1'bx)) begin
				o_data_0_19__flag <= 1'b1;
			end else begin
				o_data_0_19__flag<= 1'b0;
			end
			if(!(o_data_0_20__gfpga === o_data_0_20__bench) && !(o_data_0_20__bench === 1'bx)) begin
				o_data_0_20__flag <= 1'b1;
			end else begin
				o_data_0_20__flag<= 1'b0;
			end
			if(!(o_data_0_21__gfpga === o_data_0_21__bench) && !(o_data_0_21__bench === 1'bx)) begin
				o_data_0_21__flag <= 1'b1;
			end else begin
				o_data_0_21__flag<= 1'b0;
			end
			if(!(o_data_0_22__gfpga === o_data_0_22__bench) && !(o_data_0_22__bench === 1'bx)) begin
				o_data_0_22__flag <= 1'b1;
			end else begin
				o_data_0_22__flag<= 1'b0;
			end
			if(!(o_data_0_23__gfpga === o_data_0_23__bench) && !(o_data_0_23__bench === 1'bx)) begin
				o_data_0_23__flag <= 1'b1;
			end else begin
				o_data_0_23__flag<= 1'b0;
			end
			if(!(o_data_0_24__gfpga === o_data_0_24__bench) && !(o_data_0_24__bench === 1'bx)) begin
				o_data_0_24__flag <= 1'b1;
			end else begin
				o_data_0_24__flag<= 1'b0;
			end
			if(!(o_data_0_25__gfpga === o_data_0_25__bench) && !(o_data_0_25__bench === 1'bx)) begin
				o_data_0_25__flag <= 1'b1;
			end else begin
				o_data_0_25__flag<= 1'b0;
			end
			if(!(o_data_0_26__gfpga === o_data_0_26__bench) && !(o_data_0_26__bench === 1'bx)) begin
				o_data_0_26__flag <= 1'b1;
			end else begin
				o_data_0_26__flag<= 1'b0;
			end
			if(!(o_data_0_27__gfpga === o_data_0_27__bench) && !(o_data_0_27__bench === 1'bx)) begin
				o_data_0_27__flag <= 1'b1;
			end else begin
				o_data_0_27__flag<= 1'b0;
			end
			if(!(o_data_0_28__gfpga === o_data_0_28__bench) && !(o_data_0_28__bench === 1'bx)) begin
				o_data_0_28__flag <= 1'b1;
			end else begin
				o_data_0_28__flag<= 1'b0;
			end
			if(!(o_data_0_29__gfpga === o_data_0_29__bench) && !(o_data_0_29__bench === 1'bx)) begin
				o_data_0_29__flag <= 1'b1;
			end else begin
				o_data_0_29__flag<= 1'b0;
			end
			if(!(o_data_0_30__gfpga === o_data_0_30__bench) && !(o_data_0_30__bench === 1'bx)) begin
				o_data_0_30__flag <= 1'b1;
			end else begin
				o_data_0_30__flag<= 1'b0;
			end
			if(!(o_data_0_31__gfpga === o_data_0_31__bench) && !(o_data_0_31__bench === 1'bx)) begin
				o_data_0_31__flag <= 1'b1;
			end else begin
				o_data_0_31__flag<= 1'b0;
			end
			if(!(o_data_0_32__gfpga === o_data_0_32__bench) && !(o_data_0_32__bench === 1'bx)) begin
				o_data_0_32__flag <= 1'b1;
			end else begin
				o_data_0_32__flag<= 1'b0;
			end
			if(!(o_data_0_33__gfpga === o_data_0_33__bench) && !(o_data_0_33__bench === 1'bx)) begin
				o_data_0_33__flag <= 1'b1;
			end else begin
				o_data_0_33__flag<= 1'b0;
			end
			if(!(o_data_0_34__gfpga === o_data_0_34__bench) && !(o_data_0_34__bench === 1'bx)) begin
				o_data_0_34__flag <= 1'b1;
			end else begin
				o_data_0_34__flag<= 1'b0;
			end
			if(!(o_valid_0_gfpga === o_valid_0_bench) && !(o_valid_0_bench === 1'bx)) begin
				o_valid_0_flag <= 1'b1;
			end else begin
				o_valid_0_flag<= 1'b0;
			end
			if(!(o_vch_0_gfpga === o_vch_0_bench) && !(o_vch_0_bench === 1'bx)) begin
				o_vch_0_flag <= 1'b1;
			end else begin
				o_vch_0_flag<= 1'b0;
			end
			if(!(o_ack_0_0__gfpga === o_ack_0_0__bench) && !(o_ack_0_0__bench === 1'bx)) begin
				o_ack_0_0__flag <= 1'b1;
			end else begin
				o_ack_0_0__flag<= 1'b0;
			end
			if(!(o_ack_0_1__gfpga === o_ack_0_1__bench) && !(o_ack_0_1__bench === 1'bx)) begin
				o_ack_0_1__flag <= 1'b1;
			end else begin
				o_ack_0_1__flag<= 1'b0;
			end
			if(!(o_lck_0_0__gfpga === o_lck_0_0__bench) && !(o_lck_0_0__bench === 1'bx)) begin
				o_lck_0_0__flag <= 1'b1;
			end else begin
				o_lck_0_0__flag<= 1'b0;
			end
			if(!(o_lck_0_1__gfpga === o_lck_0_1__bench) && !(o_lck_0_1__bench === 1'bx)) begin
				o_lck_0_1__flag <= 1'b1;
			end else begin
				o_lck_0_1__flag<= 1'b0;
			end
			if(!(o_rdy_0_0__gfpga === o_rdy_0_0__bench) && !(o_rdy_0_0__bench === 1'bx)) begin
				o_rdy_0_0__flag <= 1'b1;
			end else begin
				o_rdy_0_0__flag<= 1'b0;
			end
			if(!(o_rdy_0_1__gfpga === o_rdy_0_1__bench) && !(o_rdy_0_1__bench === 1'bx)) begin
				o_rdy_0_1__flag <= 1'b1;
			end else begin
				o_rdy_0_1__flag<= 1'b0;
			end
			if(!(o_data_1_0__gfpga === o_data_1_0__bench) && !(o_data_1_0__bench === 1'bx)) begin
				o_data_1_0__flag <= 1'b1;
			end else begin
				o_data_1_0__flag<= 1'b0;
			end
			if(!(o_data_1_1__gfpga === o_data_1_1__bench) && !(o_data_1_1__bench === 1'bx)) begin
				o_data_1_1__flag <= 1'b1;
			end else begin
				o_data_1_1__flag<= 1'b0;
			end
			if(!(o_data_1_2__gfpga === o_data_1_2__bench) && !(o_data_1_2__bench === 1'bx)) begin
				o_data_1_2__flag <= 1'b1;
			end else begin
				o_data_1_2__flag<= 1'b0;
			end
			if(!(o_data_1_3__gfpga === o_data_1_3__bench) && !(o_data_1_3__bench === 1'bx)) begin
				o_data_1_3__flag <= 1'b1;
			end else begin
				o_data_1_3__flag<= 1'b0;
			end
			if(!(o_data_1_4__gfpga === o_data_1_4__bench) && !(o_data_1_4__bench === 1'bx)) begin
				o_data_1_4__flag <= 1'b1;
			end else begin
				o_data_1_4__flag<= 1'b0;
			end
			if(!(o_data_1_5__gfpga === o_data_1_5__bench) && !(o_data_1_5__bench === 1'bx)) begin
				o_data_1_5__flag <= 1'b1;
			end else begin
				o_data_1_5__flag<= 1'b0;
			end
			if(!(o_data_1_6__gfpga === o_data_1_6__bench) && !(o_data_1_6__bench === 1'bx)) begin
				o_data_1_6__flag <= 1'b1;
			end else begin
				o_data_1_6__flag<= 1'b0;
			end
			if(!(o_data_1_7__gfpga === o_data_1_7__bench) && !(o_data_1_7__bench === 1'bx)) begin
				o_data_1_7__flag <= 1'b1;
			end else begin
				o_data_1_7__flag<= 1'b0;
			end
			if(!(o_data_1_8__gfpga === o_data_1_8__bench) && !(o_data_1_8__bench === 1'bx)) begin
				o_data_1_8__flag <= 1'b1;
			end else begin
				o_data_1_8__flag<= 1'b0;
			end
			if(!(o_data_1_9__gfpga === o_data_1_9__bench) && !(o_data_1_9__bench === 1'bx)) begin
				o_data_1_9__flag <= 1'b1;
			end else begin
				o_data_1_9__flag<= 1'b0;
			end
			if(!(o_data_1_10__gfpga === o_data_1_10__bench) && !(o_data_1_10__bench === 1'bx)) begin
				o_data_1_10__flag <= 1'b1;
			end else begin
				o_data_1_10__flag<= 1'b0;
			end
			if(!(o_data_1_11__gfpga === o_data_1_11__bench) && !(o_data_1_11__bench === 1'bx)) begin
				o_data_1_11__flag <= 1'b1;
			end else begin
				o_data_1_11__flag<= 1'b0;
			end
			if(!(o_data_1_12__gfpga === o_data_1_12__bench) && !(o_data_1_12__bench === 1'bx)) begin
				o_data_1_12__flag <= 1'b1;
			end else begin
				o_data_1_12__flag<= 1'b0;
			end
			if(!(o_data_1_13__gfpga === o_data_1_13__bench) && !(o_data_1_13__bench === 1'bx)) begin
				o_data_1_13__flag <= 1'b1;
			end else begin
				o_data_1_13__flag<= 1'b0;
			end
			if(!(o_data_1_14__gfpga === o_data_1_14__bench) && !(o_data_1_14__bench === 1'bx)) begin
				o_data_1_14__flag <= 1'b1;
			end else begin
				o_data_1_14__flag<= 1'b0;
			end
			if(!(o_data_1_15__gfpga === o_data_1_15__bench) && !(o_data_1_15__bench === 1'bx)) begin
				o_data_1_15__flag <= 1'b1;
			end else begin
				o_data_1_15__flag<= 1'b0;
			end
			if(!(o_data_1_16__gfpga === o_data_1_16__bench) && !(o_data_1_16__bench === 1'bx)) begin
				o_data_1_16__flag <= 1'b1;
			end else begin
				o_data_1_16__flag<= 1'b0;
			end
			if(!(o_data_1_17__gfpga === o_data_1_17__bench) && !(o_data_1_17__bench === 1'bx)) begin
				o_data_1_17__flag <= 1'b1;
			end else begin
				o_data_1_17__flag<= 1'b0;
			end
			if(!(o_data_1_18__gfpga === o_data_1_18__bench) && !(o_data_1_18__bench === 1'bx)) begin
				o_data_1_18__flag <= 1'b1;
			end else begin
				o_data_1_18__flag<= 1'b0;
			end
			if(!(o_data_1_19__gfpga === o_data_1_19__bench) && !(o_data_1_19__bench === 1'bx)) begin
				o_data_1_19__flag <= 1'b1;
			end else begin
				o_data_1_19__flag<= 1'b0;
			end
			if(!(o_data_1_20__gfpga === o_data_1_20__bench) && !(o_data_1_20__bench === 1'bx)) begin
				o_data_1_20__flag <= 1'b1;
			end else begin
				o_data_1_20__flag<= 1'b0;
			end
			if(!(o_data_1_21__gfpga === o_data_1_21__bench) && !(o_data_1_21__bench === 1'bx)) begin
				o_data_1_21__flag <= 1'b1;
			end else begin
				o_data_1_21__flag<= 1'b0;
			end
			if(!(o_data_1_22__gfpga === o_data_1_22__bench) && !(o_data_1_22__bench === 1'bx)) begin
				o_data_1_22__flag <= 1'b1;
			end else begin
				o_data_1_22__flag<= 1'b0;
			end
			if(!(o_data_1_23__gfpga === o_data_1_23__bench) && !(o_data_1_23__bench === 1'bx)) begin
				o_data_1_23__flag <= 1'b1;
			end else begin
				o_data_1_23__flag<= 1'b0;
			end
			if(!(o_data_1_24__gfpga === o_data_1_24__bench) && !(o_data_1_24__bench === 1'bx)) begin
				o_data_1_24__flag <= 1'b1;
			end else begin
				o_data_1_24__flag<= 1'b0;
			end
			if(!(o_data_1_25__gfpga === o_data_1_25__bench) && !(o_data_1_25__bench === 1'bx)) begin
				o_data_1_25__flag <= 1'b1;
			end else begin
				o_data_1_25__flag<= 1'b0;
			end
			if(!(o_data_1_26__gfpga === o_data_1_26__bench) && !(o_data_1_26__bench === 1'bx)) begin
				o_data_1_26__flag <= 1'b1;
			end else begin
				o_data_1_26__flag<= 1'b0;
			end
			if(!(o_data_1_27__gfpga === o_data_1_27__bench) && !(o_data_1_27__bench === 1'bx)) begin
				o_data_1_27__flag <= 1'b1;
			end else begin
				o_data_1_27__flag<= 1'b0;
			end
			if(!(o_data_1_28__gfpga === o_data_1_28__bench) && !(o_data_1_28__bench === 1'bx)) begin
				o_data_1_28__flag <= 1'b1;
			end else begin
				o_data_1_28__flag<= 1'b0;
			end
			if(!(o_data_1_29__gfpga === o_data_1_29__bench) && !(o_data_1_29__bench === 1'bx)) begin
				o_data_1_29__flag <= 1'b1;
			end else begin
				o_data_1_29__flag<= 1'b0;
			end
			if(!(o_data_1_30__gfpga === o_data_1_30__bench) && !(o_data_1_30__bench === 1'bx)) begin
				o_data_1_30__flag <= 1'b1;
			end else begin
				o_data_1_30__flag<= 1'b0;
			end
			if(!(o_data_1_31__gfpga === o_data_1_31__bench) && !(o_data_1_31__bench === 1'bx)) begin
				o_data_1_31__flag <= 1'b1;
			end else begin
				o_data_1_31__flag<= 1'b0;
			end
			if(!(o_data_1_32__gfpga === o_data_1_32__bench) && !(o_data_1_32__bench === 1'bx)) begin
				o_data_1_32__flag <= 1'b1;
			end else begin
				o_data_1_32__flag<= 1'b0;
			end
			if(!(o_data_1_33__gfpga === o_data_1_33__bench) && !(o_data_1_33__bench === 1'bx)) begin
				o_data_1_33__flag <= 1'b1;
			end else begin
				o_data_1_33__flag<= 1'b0;
			end
			if(!(o_data_1_34__gfpga === o_data_1_34__bench) && !(o_data_1_34__bench === 1'bx)) begin
				o_data_1_34__flag <= 1'b1;
			end else begin
				o_data_1_34__flag<= 1'b0;
			end
			if(!(o_valid_1_gfpga === o_valid_1_bench) && !(o_valid_1_bench === 1'bx)) begin
				o_valid_1_flag <= 1'b1;
			end else begin
				o_valid_1_flag<= 1'b0;
			end
			if(!(o_vch_1_gfpga === o_vch_1_bench) && !(o_vch_1_bench === 1'bx)) begin
				o_vch_1_flag <= 1'b1;
			end else begin
				o_vch_1_flag<= 1'b0;
			end
			if(!(o_ack_1_0__gfpga === o_ack_1_0__bench) && !(o_ack_1_0__bench === 1'bx)) begin
				o_ack_1_0__flag <= 1'b1;
			end else begin
				o_ack_1_0__flag<= 1'b0;
			end
			if(!(o_ack_1_1__gfpga === o_ack_1_1__bench) && !(o_ack_1_1__bench === 1'bx)) begin
				o_ack_1_1__flag <= 1'b1;
			end else begin
				o_ack_1_1__flag<= 1'b0;
			end
			if(!(o_lck_1_0__gfpga === o_lck_1_0__bench) && !(o_lck_1_0__bench === 1'bx)) begin
				o_lck_1_0__flag <= 1'b1;
			end else begin
				o_lck_1_0__flag<= 1'b0;
			end
			if(!(o_lck_1_1__gfpga === o_lck_1_1__bench) && !(o_lck_1_1__bench === 1'bx)) begin
				o_lck_1_1__flag <= 1'b1;
			end else begin
				o_lck_1_1__flag<= 1'b0;
			end
			if(!(o_rdy_1_0__gfpga === o_rdy_1_0__bench) && !(o_rdy_1_0__bench === 1'bx)) begin
				o_rdy_1_0__flag <= 1'b1;
			end else begin
				o_rdy_1_0__flag<= 1'b0;
			end
			if(!(o_rdy_1_1__gfpga === o_rdy_1_1__bench) && !(o_rdy_1_1__bench === 1'bx)) begin
				o_rdy_1_1__flag <= 1'b1;
			end else begin
				o_rdy_1_1__flag<= 1'b0;
			end
		end
	end

	always@(posedge o_data_0_0__flag) begin
		if(o_data_0_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_1__flag) begin
		if(o_data_0_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_2__flag) begin
		if(o_data_0_2__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_2__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_3__flag) begin
		if(o_data_0_3__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_3__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_4__flag) begin
		if(o_data_0_4__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_4__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_5__flag) begin
		if(o_data_0_5__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_5__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_6__flag) begin
		if(o_data_0_6__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_6__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_7__flag) begin
		if(o_data_0_7__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_7__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_8__flag) begin
		if(o_data_0_8__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_8__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_9__flag) begin
		if(o_data_0_9__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_9__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_10__flag) begin
		if(o_data_0_10__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_10__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_11__flag) begin
		if(o_data_0_11__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_11__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_12__flag) begin
		if(o_data_0_12__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_12__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_13__flag) begin
		if(o_data_0_13__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_13__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_14__flag) begin
		if(o_data_0_14__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_14__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_15__flag) begin
		if(o_data_0_15__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_15__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_16__flag) begin
		if(o_data_0_16__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_16__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_17__flag) begin
		if(o_data_0_17__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_17__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_18__flag) begin
		if(o_data_0_18__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_18__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_19__flag) begin
		if(o_data_0_19__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_19__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_20__flag) begin
		if(o_data_0_20__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_20__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_21__flag) begin
		if(o_data_0_21__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_21__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_22__flag) begin
		if(o_data_0_22__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_22__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_23__flag) begin
		if(o_data_0_23__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_23__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_24__flag) begin
		if(o_data_0_24__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_24__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_25__flag) begin
		if(o_data_0_25__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_25__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_26__flag) begin
		if(o_data_0_26__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_26__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_27__flag) begin
		if(o_data_0_27__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_27__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_28__flag) begin
		if(o_data_0_28__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_28__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_29__flag) begin
		if(o_data_0_29__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_29__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_30__flag) begin
		if(o_data_0_30__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_30__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_31__flag) begin
		if(o_data_0_31__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_31__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_32__flag) begin
		if(o_data_0_32__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_32__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_33__flag) begin
		if(o_data_0_33__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_33__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_0_34__flag) begin
		if(o_data_0_34__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_0_34__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_valid_0_flag) begin
		if(o_valid_0_flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_valid_0_gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_vch_0_flag) begin
		if(o_vch_0_flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_vch_0_gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_ack_0_0__flag) begin
		if(o_ack_0_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_ack_0_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_ack_0_1__flag) begin
		if(o_ack_0_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_ack_0_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_lck_0_0__flag) begin
		if(o_lck_0_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_lck_0_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_lck_0_1__flag) begin
		if(o_lck_0_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_lck_0_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_rdy_0_0__flag) begin
		if(o_rdy_0_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_rdy_0_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_rdy_0_1__flag) begin
		if(o_rdy_0_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_rdy_0_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_0__flag) begin
		if(o_data_1_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_1__flag) begin
		if(o_data_1_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_2__flag) begin
		if(o_data_1_2__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_2__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_3__flag) begin
		if(o_data_1_3__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_3__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_4__flag) begin
		if(o_data_1_4__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_4__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_5__flag) begin
		if(o_data_1_5__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_5__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_6__flag) begin
		if(o_data_1_6__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_6__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_7__flag) begin
		if(o_data_1_7__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_7__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_8__flag) begin
		if(o_data_1_8__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_8__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_9__flag) begin
		if(o_data_1_9__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_9__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_10__flag) begin
		if(o_data_1_10__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_10__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_11__flag) begin
		if(o_data_1_11__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_11__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_12__flag) begin
		if(o_data_1_12__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_12__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_13__flag) begin
		if(o_data_1_13__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_13__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_14__flag) begin
		if(o_data_1_14__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_14__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_15__flag) begin
		if(o_data_1_15__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_15__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_16__flag) begin
		if(o_data_1_16__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_16__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_17__flag) begin
		if(o_data_1_17__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_17__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_18__flag) begin
		if(o_data_1_18__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_18__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_19__flag) begin
		if(o_data_1_19__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_19__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_20__flag) begin
		if(o_data_1_20__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_20__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_21__flag) begin
		if(o_data_1_21__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_21__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_22__flag) begin
		if(o_data_1_22__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_22__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_23__flag) begin
		if(o_data_1_23__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_23__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_24__flag) begin
		if(o_data_1_24__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_24__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_25__flag) begin
		if(o_data_1_25__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_25__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_26__flag) begin
		if(o_data_1_26__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_26__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_27__flag) begin
		if(o_data_1_27__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_27__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_28__flag) begin
		if(o_data_1_28__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_28__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_29__flag) begin
		if(o_data_1_29__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_29__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_30__flag) begin
		if(o_data_1_30__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_30__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_31__flag) begin
		if(o_data_1_31__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_31__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_32__flag) begin
		if(o_data_1_32__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_32__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_33__flag) begin
		if(o_data_1_33__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_33__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_data_1_34__flag) begin
		if(o_data_1_34__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_data_1_34__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_valid_1_flag) begin
		if(o_valid_1_flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_valid_1_gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_vch_1_flag) begin
		if(o_vch_1_flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_vch_1_gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_ack_1_0__flag) begin
		if(o_ack_1_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_ack_1_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_ack_1_1__flag) begin
		if(o_ack_1_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_ack_1_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_lck_1_0__flag) begin
		if(o_lck_1_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_lck_1_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_lck_1_1__flag) begin
		if(o_lck_1_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_lck_1_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_rdy_1_0__flag) begin
		if(o_rdy_1_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_rdy_1_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge o_rdy_1_1__flag) begin
		if(o_rdy_1_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on o_rdy_1_1__gfpga at time = %t", $realtime);
		end
	end


// ----- Begin output waveform to VCD file-------
	initial begin
		$dumpfile("mesh_bench_formal.vcd");
		$dumpvars(1, mesh_bench_top_formal_verification_random_tb);
	end
// ----- END output waveform to VCD file -------

initial begin
	sim_start[0] <= 1'b1;
	$timeformat(-9, 2, "ns", 20);
	$display("Simulation start");
// ----- Can be changed by the user for his/her need -------
	#20
	if(nb_error == 0) begin
		$display("Simulation Succeed");
	end else begin
		$display("Simulation Failed with %d error(s)", nb_error);
	end
	$finish;
end

endmodule
// ----- END Verilog module for mesh_bench_top_formal_verification_random_tb -----

