//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: FPGA Verilog Testbench for Formal Top-level netlist of Design: router_bench
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Tue Aug 20 23:29:13 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

module router_bench_top_formal_verification_random_tb;
// ----- Default clock port is added here since benchmark does not contain one -------
	reg [0:0] clk;

// ----- Shared inputs -------
	reg [0:0] idata_0_0_;
	reg [0:0] idata_0_1_;
	reg [0:0] idata_0_2_;
	reg [0:0] idata_0_3_;
	reg [0:0] idata_0_4_;
	reg [0:0] idata_0_5_;
	reg [0:0] idata_0_6_;
	reg [0:0] idata_0_7_;
	reg [0:0] idata_0_8_;
	reg [0:0] idata_0_9_;
	reg [0:0] idata_0_10_;
	reg [0:0] idata_0_11_;
	reg [0:0] idata_0_12_;
	reg [0:0] idata_0_13_;
	reg [0:0] idata_0_14_;
	reg [0:0] idata_0_15_;
	reg [0:0] idata_0_16_;
	reg [0:0] idata_0_17_;
	reg [0:0] idata_0_18_;
	reg [0:0] idata_0_19_;
	reg [0:0] idata_0_20_;
	reg [0:0] idata_0_21_;
	reg [0:0] idata_0_22_;
	reg [0:0] idata_0_23_;
	reg [0:0] idata_0_24_;
	reg [0:0] idata_0_25_;
	reg [0:0] idata_0_26_;
	reg [0:0] idata_0_27_;
	reg [0:0] idata_0_28_;
	reg [0:0] idata_0_29_;
	reg [0:0] idata_0_30_;
	reg [0:0] idata_0_31_;
	reg [0:0] idata_0_32_;
	reg [0:0] idata_0_33_;
	reg [0:0] idata_0_34_;
	reg [0:0] ivalid_0;
	reg [0:0] ivch_0;
	reg [0:0] idata_1_0_;
	reg [0:0] idata_1_1_;
	reg [0:0] idata_1_2_;
	reg [0:0] idata_1_3_;
	reg [0:0] idata_1_4_;
	reg [0:0] idata_1_5_;
	reg [0:0] idata_1_6_;
	reg [0:0] idata_1_7_;
	reg [0:0] idata_1_8_;
	reg [0:0] idata_1_9_;
	reg [0:0] idata_1_10_;
	reg [0:0] idata_1_11_;
	reg [0:0] idata_1_12_;
	reg [0:0] idata_1_13_;
	reg [0:0] idata_1_14_;
	reg [0:0] idata_1_15_;
	reg [0:0] idata_1_16_;
	reg [0:0] idata_1_17_;
	reg [0:0] idata_1_18_;
	reg [0:0] idata_1_19_;
	reg [0:0] idata_1_20_;
	reg [0:0] idata_1_21_;
	reg [0:0] idata_1_22_;
	reg [0:0] idata_1_23_;
	reg [0:0] idata_1_24_;
	reg [0:0] idata_1_25_;
	reg [0:0] idata_1_26_;
	reg [0:0] idata_1_27_;
	reg [0:0] idata_1_28_;
	reg [0:0] idata_1_29_;
	reg [0:0] idata_1_30_;
	reg [0:0] idata_1_31_;
	reg [0:0] idata_1_32_;
	reg [0:0] idata_1_33_;
	reg [0:0] idata_1_34_;
	reg [0:0] ivalid_1;
	reg [0:0] ivch_1;
	reg [0:0] idata_2_0_;
	reg [0:0] idata_2_1_;
	reg [0:0] idata_2_2_;
	reg [0:0] idata_2_3_;
	reg [0:0] idata_2_4_;
	reg [0:0] idata_2_5_;
	reg [0:0] idata_2_6_;
	reg [0:0] idata_2_7_;
	reg [0:0] idata_2_8_;
	reg [0:0] idata_2_9_;
	reg [0:0] idata_2_10_;
	reg [0:0] idata_2_11_;
	reg [0:0] idata_2_12_;
	reg [0:0] idata_2_13_;
	reg [0:0] idata_2_14_;
	reg [0:0] idata_2_15_;
	reg [0:0] idata_2_16_;
	reg [0:0] idata_2_17_;
	reg [0:0] idata_2_18_;
	reg [0:0] idata_2_19_;
	reg [0:0] idata_2_20_;
	reg [0:0] idata_2_21_;
	reg [0:0] idata_2_22_;
	reg [0:0] idata_2_23_;
	reg [0:0] idata_2_24_;
	reg [0:0] idata_2_25_;
	reg [0:0] idata_2_26_;
	reg [0:0] idata_2_27_;
	reg [0:0] idata_2_28_;
	reg [0:0] idata_2_29_;
	reg [0:0] idata_2_30_;
	reg [0:0] idata_2_31_;
	reg [0:0] idata_2_32_;
	reg [0:0] idata_2_33_;
	reg [0:0] idata_2_34_;
	reg [0:0] ivalid_2;
	reg [0:0] ivch_2;
	reg [0:0] idata_3_0_;
	reg [0:0] idata_3_1_;
	reg [0:0] idata_3_2_;
	reg [0:0] idata_3_3_;
	reg [0:0] idata_3_4_;
	reg [0:0] idata_3_5_;
	reg [0:0] idata_3_6_;
	reg [0:0] idata_3_7_;
	reg [0:0] idata_3_8_;
	reg [0:0] idata_3_9_;
	reg [0:0] idata_3_10_;
	reg [0:0] idata_3_11_;
	reg [0:0] idata_3_12_;
	reg [0:0] idata_3_13_;
	reg [0:0] idata_3_14_;
	reg [0:0] idata_3_15_;
	reg [0:0] idata_3_16_;
	reg [0:0] idata_3_17_;
	reg [0:0] idata_3_18_;
	reg [0:0] idata_3_19_;
	reg [0:0] idata_3_20_;
	reg [0:0] idata_3_21_;
	reg [0:0] idata_3_22_;
	reg [0:0] idata_3_23_;
	reg [0:0] idata_3_24_;
	reg [0:0] idata_3_25_;
	reg [0:0] idata_3_26_;
	reg [0:0] idata_3_27_;
	reg [0:0] idata_3_28_;
	reg [0:0] idata_3_29_;
	reg [0:0] idata_3_30_;
	reg [0:0] idata_3_31_;
	reg [0:0] idata_3_32_;
	reg [0:0] idata_3_33_;
	reg [0:0] idata_3_34_;
	reg [0:0] ivalid_3;
	reg [0:0] ivch_3;
	reg [0:0] idata_4_0_;
	reg [0:0] idata_4_1_;
	reg [0:0] idata_4_2_;
	reg [0:0] idata_4_3_;
	reg [0:0] idata_4_4_;
	reg [0:0] idata_4_5_;
	reg [0:0] idata_4_6_;
	reg [0:0] idata_4_7_;
	reg [0:0] idata_4_8_;
	reg [0:0] idata_4_9_;
	reg [0:0] idata_4_10_;
	reg [0:0] idata_4_11_;
	reg [0:0] idata_4_12_;
	reg [0:0] idata_4_13_;
	reg [0:0] idata_4_14_;
	reg [0:0] idata_4_15_;
	reg [0:0] idata_4_16_;
	reg [0:0] idata_4_17_;
	reg [0:0] idata_4_18_;
	reg [0:0] idata_4_19_;
	reg [0:0] idata_4_20_;
	reg [0:0] idata_4_21_;
	reg [0:0] idata_4_22_;
	reg [0:0] idata_4_23_;
	reg [0:0] idata_4_24_;
	reg [0:0] idata_4_25_;
	reg [0:0] idata_4_26_;
	reg [0:0] idata_4_27_;
	reg [0:0] idata_4_28_;
	reg [0:0] idata_4_29_;
	reg [0:0] idata_4_30_;
	reg [0:0] idata_4_31_;
	reg [0:0] idata_4_32_;
	reg [0:0] idata_4_33_;
	reg [0:0] idata_4_34_;
	reg [0:0] ivalid_4;
	reg [0:0] ivch_4;
	reg [0:0] iack_0_0_;
	reg [0:0] iack_0_1_;
	reg [0:0] ilck_0_0_;
	reg [0:0] ilck_0_1_;
	reg [0:0] iack_1_0_;
	reg [0:0] iack_1_1_;
	reg [0:0] ilck_1_0_;
	reg [0:0] ilck_1_1_;
	reg [0:0] iack_2_0_;
	reg [0:0] iack_2_1_;
	reg [0:0] ilck_2_0_;
	reg [0:0] ilck_2_1_;
	reg [0:0] iack_3_0_;
	reg [0:0] iack_3_1_;
	reg [0:0] ilck_3_0_;
	reg [0:0] ilck_3_1_;
	reg [0:0] iack_4_0_;
	reg [0:0] iack_4_1_;
	reg [0:0] ilck_4_0_;
	reg [0:0] ilck_4_1_;
	reg [0:0] my_xpos_0_;
	reg [0:0] my_xpos_1_;
	reg [0:0] my_ypos_0_;
	reg [0:0] my_ypos_1_;
	reg [0:0] rst_;

// ----- FPGA fabric outputs -------
	wire [0:0] oack_0_0__gfpga;
	wire [0:0] oack_0_1__gfpga;
	wire [0:0] ordy_0_0__gfpga;
	wire [0:0] ordy_0_1__gfpga;
	wire [0:0] olck_0_0__gfpga;
	wire [0:0] olck_0_1__gfpga;
	wire [0:0] oack_1_0__gfpga;
	wire [0:0] oack_1_1__gfpga;
	wire [0:0] ordy_1_0__gfpga;
	wire [0:0] ordy_1_1__gfpga;
	wire [0:0] olck_1_0__gfpga;
	wire [0:0] olck_1_1__gfpga;
	wire [0:0] oack_2_0__gfpga;
	wire [0:0] oack_2_1__gfpga;
	wire [0:0] ordy_2_0__gfpga;
	wire [0:0] ordy_2_1__gfpga;
	wire [0:0] olck_2_0__gfpga;
	wire [0:0] olck_2_1__gfpga;
	wire [0:0] oack_3_0__gfpga;
	wire [0:0] oack_3_1__gfpga;
	wire [0:0] ordy_3_0__gfpga;
	wire [0:0] ordy_3_1__gfpga;
	wire [0:0] olck_3_0__gfpga;
	wire [0:0] olck_3_1__gfpga;
	wire [0:0] oack_4_0__gfpga;
	wire [0:0] oack_4_1__gfpga;
	wire [0:0] ordy_4_0__gfpga;
	wire [0:0] ordy_4_1__gfpga;
	wire [0:0] olck_4_0__gfpga;
	wire [0:0] olck_4_1__gfpga;
	wire [0:0] odata_0_0__gfpga;
	wire [0:0] odata_0_1__gfpga;
	wire [0:0] odata_0_2__gfpga;
	wire [0:0] odata_0_3__gfpga;
	wire [0:0] odata_0_4__gfpga;
	wire [0:0] odata_0_5__gfpga;
	wire [0:0] odata_0_6__gfpga;
	wire [0:0] odata_0_7__gfpga;
	wire [0:0] odata_0_8__gfpga;
	wire [0:0] odata_0_9__gfpga;
	wire [0:0] odata_0_10__gfpga;
	wire [0:0] odata_0_11__gfpga;
	wire [0:0] odata_0_12__gfpga;
	wire [0:0] odata_0_13__gfpga;
	wire [0:0] odata_0_14__gfpga;
	wire [0:0] odata_0_15__gfpga;
	wire [0:0] odata_0_16__gfpga;
	wire [0:0] odata_0_17__gfpga;
	wire [0:0] odata_0_18__gfpga;
	wire [0:0] odata_0_19__gfpga;
	wire [0:0] odata_0_20__gfpga;
	wire [0:0] odata_0_21__gfpga;
	wire [0:0] odata_0_22__gfpga;
	wire [0:0] odata_0_23__gfpga;
	wire [0:0] odata_0_24__gfpga;
	wire [0:0] odata_0_25__gfpga;
	wire [0:0] odata_0_26__gfpga;
	wire [0:0] odata_0_27__gfpga;
	wire [0:0] odata_0_28__gfpga;
	wire [0:0] odata_0_29__gfpga;
	wire [0:0] odata_0_30__gfpga;
	wire [0:0] odata_0_31__gfpga;
	wire [0:0] odata_0_32__gfpga;
	wire [0:0] odata_0_33__gfpga;
	wire [0:0] odata_0_34__gfpga;
	wire [0:0] ovalid_0_gfpga;
	wire [0:0] ovch_0_gfpga;
	wire [0:0] odata_1_0__gfpga;
	wire [0:0] odata_1_1__gfpga;
	wire [0:0] odata_1_2__gfpga;
	wire [0:0] odata_1_3__gfpga;
	wire [0:0] odata_1_4__gfpga;
	wire [0:0] odata_1_5__gfpga;
	wire [0:0] odata_1_6__gfpga;
	wire [0:0] odata_1_7__gfpga;
	wire [0:0] odata_1_8__gfpga;
	wire [0:0] odata_1_9__gfpga;
	wire [0:0] odata_1_10__gfpga;
	wire [0:0] odata_1_11__gfpga;
	wire [0:0] odata_1_12__gfpga;
	wire [0:0] odata_1_13__gfpga;
	wire [0:0] odata_1_14__gfpga;
	wire [0:0] odata_1_15__gfpga;
	wire [0:0] odata_1_16__gfpga;
	wire [0:0] odata_1_17__gfpga;
	wire [0:0] odata_1_18__gfpga;
	wire [0:0] odata_1_19__gfpga;
	wire [0:0] odata_1_20__gfpga;
	wire [0:0] odata_1_21__gfpga;
	wire [0:0] odata_1_22__gfpga;
	wire [0:0] odata_1_23__gfpga;
	wire [0:0] odata_1_24__gfpga;
	wire [0:0] odata_1_25__gfpga;
	wire [0:0] odata_1_26__gfpga;
	wire [0:0] odata_1_27__gfpga;
	wire [0:0] odata_1_28__gfpga;
	wire [0:0] odata_1_29__gfpga;
	wire [0:0] odata_1_30__gfpga;
	wire [0:0] odata_1_31__gfpga;
	wire [0:0] odata_1_32__gfpga;
	wire [0:0] odata_1_33__gfpga;
	wire [0:0] odata_1_34__gfpga;
	wire [0:0] ovalid_1_gfpga;
	wire [0:0] ovch_1_gfpga;
	wire [0:0] odata_2_0__gfpga;
	wire [0:0] odata_2_1__gfpga;
	wire [0:0] odata_2_2__gfpga;
	wire [0:0] odata_2_3__gfpga;
	wire [0:0] odata_2_4__gfpga;
	wire [0:0] odata_2_5__gfpga;
	wire [0:0] odata_2_6__gfpga;
	wire [0:0] odata_2_7__gfpga;
	wire [0:0] odata_2_8__gfpga;
	wire [0:0] odata_2_9__gfpga;
	wire [0:0] odata_2_10__gfpga;
	wire [0:0] odata_2_11__gfpga;
	wire [0:0] odata_2_12__gfpga;
	wire [0:0] odata_2_13__gfpga;
	wire [0:0] odata_2_14__gfpga;
	wire [0:0] odata_2_15__gfpga;
	wire [0:0] odata_2_16__gfpga;
	wire [0:0] odata_2_17__gfpga;
	wire [0:0] odata_2_18__gfpga;
	wire [0:0] odata_2_19__gfpga;
	wire [0:0] odata_2_20__gfpga;
	wire [0:0] odata_2_21__gfpga;
	wire [0:0] odata_2_22__gfpga;
	wire [0:0] odata_2_23__gfpga;
	wire [0:0] odata_2_24__gfpga;
	wire [0:0] odata_2_25__gfpga;
	wire [0:0] odata_2_26__gfpga;
	wire [0:0] odata_2_27__gfpga;
	wire [0:0] odata_2_28__gfpga;
	wire [0:0] odata_2_29__gfpga;
	wire [0:0] odata_2_30__gfpga;
	wire [0:0] odata_2_31__gfpga;
	wire [0:0] odata_2_32__gfpga;
	wire [0:0] odata_2_33__gfpga;
	wire [0:0] odata_2_34__gfpga;
	wire [0:0] ovalid_2_gfpga;
	wire [0:0] ovch_2_gfpga;
	wire [0:0] odata_3_0__gfpga;
	wire [0:0] odata_3_1__gfpga;
	wire [0:0] odata_3_2__gfpga;
	wire [0:0] odata_3_3__gfpga;
	wire [0:0] odata_3_4__gfpga;
	wire [0:0] odata_3_5__gfpga;
	wire [0:0] odata_3_6__gfpga;
	wire [0:0] odata_3_7__gfpga;
	wire [0:0] odata_3_8__gfpga;
	wire [0:0] odata_3_9__gfpga;
	wire [0:0] odata_3_10__gfpga;
	wire [0:0] odata_3_11__gfpga;
	wire [0:0] odata_3_12__gfpga;
	wire [0:0] odata_3_13__gfpga;
	wire [0:0] odata_3_14__gfpga;
	wire [0:0] odata_3_15__gfpga;
	wire [0:0] odata_3_16__gfpga;
	wire [0:0] odata_3_17__gfpga;
	wire [0:0] odata_3_18__gfpga;
	wire [0:0] odata_3_19__gfpga;
	wire [0:0] odata_3_20__gfpga;
	wire [0:0] odata_3_21__gfpga;
	wire [0:0] odata_3_22__gfpga;
	wire [0:0] odata_3_23__gfpga;
	wire [0:0] odata_3_24__gfpga;
	wire [0:0] odata_3_25__gfpga;
	wire [0:0] odata_3_26__gfpga;
	wire [0:0] odata_3_27__gfpga;
	wire [0:0] odata_3_28__gfpga;
	wire [0:0] odata_3_29__gfpga;
	wire [0:0] odata_3_30__gfpga;
	wire [0:0] odata_3_31__gfpga;
	wire [0:0] odata_3_32__gfpga;
	wire [0:0] odata_3_33__gfpga;
	wire [0:0] odata_3_34__gfpga;
	wire [0:0] ovalid_3_gfpga;
	wire [0:0] ovch_3_gfpga;
	wire [0:0] odata_4_0__gfpga;
	wire [0:0] odata_4_1__gfpga;
	wire [0:0] odata_4_2__gfpga;
	wire [0:0] odata_4_3__gfpga;
	wire [0:0] odata_4_4__gfpga;
	wire [0:0] odata_4_5__gfpga;
	wire [0:0] odata_4_6__gfpga;
	wire [0:0] odata_4_7__gfpga;
	wire [0:0] odata_4_8__gfpga;
	wire [0:0] odata_4_9__gfpga;
	wire [0:0] odata_4_10__gfpga;
	wire [0:0] odata_4_11__gfpga;
	wire [0:0] odata_4_12__gfpga;
	wire [0:0] odata_4_13__gfpga;
	wire [0:0] odata_4_14__gfpga;
	wire [0:0] odata_4_15__gfpga;
	wire [0:0] odata_4_16__gfpga;
	wire [0:0] odata_4_17__gfpga;
	wire [0:0] odata_4_18__gfpga;
	wire [0:0] odata_4_19__gfpga;
	wire [0:0] odata_4_20__gfpga;
	wire [0:0] odata_4_21__gfpga;
	wire [0:0] odata_4_22__gfpga;
	wire [0:0] odata_4_23__gfpga;
	wire [0:0] odata_4_24__gfpga;
	wire [0:0] odata_4_25__gfpga;
	wire [0:0] odata_4_26__gfpga;
	wire [0:0] odata_4_27__gfpga;
	wire [0:0] odata_4_28__gfpga;
	wire [0:0] odata_4_29__gfpga;
	wire [0:0] odata_4_30__gfpga;
	wire [0:0] odata_4_31__gfpga;
	wire [0:0] odata_4_32__gfpga;
	wire [0:0] odata_4_33__gfpga;
	wire [0:0] odata_4_34__gfpga;
	wire [0:0] ovalid_4_gfpga;
	wire [0:0] ovch_4_gfpga;

// ----- Benchmark outputs -------
	wire [0:0] oack_0_0__bench;
	wire [0:0] oack_0_1__bench;
	wire [0:0] ordy_0_0__bench;
	wire [0:0] ordy_0_1__bench;
	wire [0:0] olck_0_0__bench;
	wire [0:0] olck_0_1__bench;
	wire [0:0] oack_1_0__bench;
	wire [0:0] oack_1_1__bench;
	wire [0:0] ordy_1_0__bench;
	wire [0:0] ordy_1_1__bench;
	wire [0:0] olck_1_0__bench;
	wire [0:0] olck_1_1__bench;
	wire [0:0] oack_2_0__bench;
	wire [0:0] oack_2_1__bench;
	wire [0:0] ordy_2_0__bench;
	wire [0:0] ordy_2_1__bench;
	wire [0:0] olck_2_0__bench;
	wire [0:0] olck_2_1__bench;
	wire [0:0] oack_3_0__bench;
	wire [0:0] oack_3_1__bench;
	wire [0:0] ordy_3_0__bench;
	wire [0:0] ordy_3_1__bench;
	wire [0:0] olck_3_0__bench;
	wire [0:0] olck_3_1__bench;
	wire [0:0] oack_4_0__bench;
	wire [0:0] oack_4_1__bench;
	wire [0:0] ordy_4_0__bench;
	wire [0:0] ordy_4_1__bench;
	wire [0:0] olck_4_0__bench;
	wire [0:0] olck_4_1__bench;
	wire [0:0] odata_0_0__bench;
	wire [0:0] odata_0_1__bench;
	wire [0:0] odata_0_2__bench;
	wire [0:0] odata_0_3__bench;
	wire [0:0] odata_0_4__bench;
	wire [0:0] odata_0_5__bench;
	wire [0:0] odata_0_6__bench;
	wire [0:0] odata_0_7__bench;
	wire [0:0] odata_0_8__bench;
	wire [0:0] odata_0_9__bench;
	wire [0:0] odata_0_10__bench;
	wire [0:0] odata_0_11__bench;
	wire [0:0] odata_0_12__bench;
	wire [0:0] odata_0_13__bench;
	wire [0:0] odata_0_14__bench;
	wire [0:0] odata_0_15__bench;
	wire [0:0] odata_0_16__bench;
	wire [0:0] odata_0_17__bench;
	wire [0:0] odata_0_18__bench;
	wire [0:0] odata_0_19__bench;
	wire [0:0] odata_0_20__bench;
	wire [0:0] odata_0_21__bench;
	wire [0:0] odata_0_22__bench;
	wire [0:0] odata_0_23__bench;
	wire [0:0] odata_0_24__bench;
	wire [0:0] odata_0_25__bench;
	wire [0:0] odata_0_26__bench;
	wire [0:0] odata_0_27__bench;
	wire [0:0] odata_0_28__bench;
	wire [0:0] odata_0_29__bench;
	wire [0:0] odata_0_30__bench;
	wire [0:0] odata_0_31__bench;
	wire [0:0] odata_0_32__bench;
	wire [0:0] odata_0_33__bench;
	wire [0:0] odata_0_34__bench;
	wire [0:0] ovalid_0_bench;
	wire [0:0] ovch_0_bench;
	wire [0:0] odata_1_0__bench;
	wire [0:0] odata_1_1__bench;
	wire [0:0] odata_1_2__bench;
	wire [0:0] odata_1_3__bench;
	wire [0:0] odata_1_4__bench;
	wire [0:0] odata_1_5__bench;
	wire [0:0] odata_1_6__bench;
	wire [0:0] odata_1_7__bench;
	wire [0:0] odata_1_8__bench;
	wire [0:0] odata_1_9__bench;
	wire [0:0] odata_1_10__bench;
	wire [0:0] odata_1_11__bench;
	wire [0:0] odata_1_12__bench;
	wire [0:0] odata_1_13__bench;
	wire [0:0] odata_1_14__bench;
	wire [0:0] odata_1_15__bench;
	wire [0:0] odata_1_16__bench;
	wire [0:0] odata_1_17__bench;
	wire [0:0] odata_1_18__bench;
	wire [0:0] odata_1_19__bench;
	wire [0:0] odata_1_20__bench;
	wire [0:0] odata_1_21__bench;
	wire [0:0] odata_1_22__bench;
	wire [0:0] odata_1_23__bench;
	wire [0:0] odata_1_24__bench;
	wire [0:0] odata_1_25__bench;
	wire [0:0] odata_1_26__bench;
	wire [0:0] odata_1_27__bench;
	wire [0:0] odata_1_28__bench;
	wire [0:0] odata_1_29__bench;
	wire [0:0] odata_1_30__bench;
	wire [0:0] odata_1_31__bench;
	wire [0:0] odata_1_32__bench;
	wire [0:0] odata_1_33__bench;
	wire [0:0] odata_1_34__bench;
	wire [0:0] ovalid_1_bench;
	wire [0:0] ovch_1_bench;
	wire [0:0] odata_2_0__bench;
	wire [0:0] odata_2_1__bench;
	wire [0:0] odata_2_2__bench;
	wire [0:0] odata_2_3__bench;
	wire [0:0] odata_2_4__bench;
	wire [0:0] odata_2_5__bench;
	wire [0:0] odata_2_6__bench;
	wire [0:0] odata_2_7__bench;
	wire [0:0] odata_2_8__bench;
	wire [0:0] odata_2_9__bench;
	wire [0:0] odata_2_10__bench;
	wire [0:0] odata_2_11__bench;
	wire [0:0] odata_2_12__bench;
	wire [0:0] odata_2_13__bench;
	wire [0:0] odata_2_14__bench;
	wire [0:0] odata_2_15__bench;
	wire [0:0] odata_2_16__bench;
	wire [0:0] odata_2_17__bench;
	wire [0:0] odata_2_18__bench;
	wire [0:0] odata_2_19__bench;
	wire [0:0] odata_2_20__bench;
	wire [0:0] odata_2_21__bench;
	wire [0:0] odata_2_22__bench;
	wire [0:0] odata_2_23__bench;
	wire [0:0] odata_2_24__bench;
	wire [0:0] odata_2_25__bench;
	wire [0:0] odata_2_26__bench;
	wire [0:0] odata_2_27__bench;
	wire [0:0] odata_2_28__bench;
	wire [0:0] odata_2_29__bench;
	wire [0:0] odata_2_30__bench;
	wire [0:0] odata_2_31__bench;
	wire [0:0] odata_2_32__bench;
	wire [0:0] odata_2_33__bench;
	wire [0:0] odata_2_34__bench;
	wire [0:0] ovalid_2_bench;
	wire [0:0] ovch_2_bench;
	wire [0:0] odata_3_0__bench;
	wire [0:0] odata_3_1__bench;
	wire [0:0] odata_3_2__bench;
	wire [0:0] odata_3_3__bench;
	wire [0:0] odata_3_4__bench;
	wire [0:0] odata_3_5__bench;
	wire [0:0] odata_3_6__bench;
	wire [0:0] odata_3_7__bench;
	wire [0:0] odata_3_8__bench;
	wire [0:0] odata_3_9__bench;
	wire [0:0] odata_3_10__bench;
	wire [0:0] odata_3_11__bench;
	wire [0:0] odata_3_12__bench;
	wire [0:0] odata_3_13__bench;
	wire [0:0] odata_3_14__bench;
	wire [0:0] odata_3_15__bench;
	wire [0:0] odata_3_16__bench;
	wire [0:0] odata_3_17__bench;
	wire [0:0] odata_3_18__bench;
	wire [0:0] odata_3_19__bench;
	wire [0:0] odata_3_20__bench;
	wire [0:0] odata_3_21__bench;
	wire [0:0] odata_3_22__bench;
	wire [0:0] odata_3_23__bench;
	wire [0:0] odata_3_24__bench;
	wire [0:0] odata_3_25__bench;
	wire [0:0] odata_3_26__bench;
	wire [0:0] odata_3_27__bench;
	wire [0:0] odata_3_28__bench;
	wire [0:0] odata_3_29__bench;
	wire [0:0] odata_3_30__bench;
	wire [0:0] odata_3_31__bench;
	wire [0:0] odata_3_32__bench;
	wire [0:0] odata_3_33__bench;
	wire [0:0] odata_3_34__bench;
	wire [0:0] ovalid_3_bench;
	wire [0:0] ovch_3_bench;
	wire [0:0] odata_4_0__bench;
	wire [0:0] odata_4_1__bench;
	wire [0:0] odata_4_2__bench;
	wire [0:0] odata_4_3__bench;
	wire [0:0] odata_4_4__bench;
	wire [0:0] odata_4_5__bench;
	wire [0:0] odata_4_6__bench;
	wire [0:0] odata_4_7__bench;
	wire [0:0] odata_4_8__bench;
	wire [0:0] odata_4_9__bench;
	wire [0:0] odata_4_10__bench;
	wire [0:0] odata_4_11__bench;
	wire [0:0] odata_4_12__bench;
	wire [0:0] odata_4_13__bench;
	wire [0:0] odata_4_14__bench;
	wire [0:0] odata_4_15__bench;
	wire [0:0] odata_4_16__bench;
	wire [0:0] odata_4_17__bench;
	wire [0:0] odata_4_18__bench;
	wire [0:0] odata_4_19__bench;
	wire [0:0] odata_4_20__bench;
	wire [0:0] odata_4_21__bench;
	wire [0:0] odata_4_22__bench;
	wire [0:0] odata_4_23__bench;
	wire [0:0] odata_4_24__bench;
	wire [0:0] odata_4_25__bench;
	wire [0:0] odata_4_26__bench;
	wire [0:0] odata_4_27__bench;
	wire [0:0] odata_4_28__bench;
	wire [0:0] odata_4_29__bench;
	wire [0:0] odata_4_30__bench;
	wire [0:0] odata_4_31__bench;
	wire [0:0] odata_4_32__bench;
	wire [0:0] odata_4_33__bench;
	wire [0:0] odata_4_34__bench;
	wire [0:0] ovalid_4_bench;
	wire [0:0] ovch_4_bench;

// ----- Output vectors checking flags -------
	reg [0:0] oack_0_0__flag;
	reg [0:0] oack_0_1__flag;
	reg [0:0] ordy_0_0__flag;
	reg [0:0] ordy_0_1__flag;
	reg [0:0] olck_0_0__flag;
	reg [0:0] olck_0_1__flag;
	reg [0:0] oack_1_0__flag;
	reg [0:0] oack_1_1__flag;
	reg [0:0] ordy_1_0__flag;
	reg [0:0] ordy_1_1__flag;
	reg [0:0] olck_1_0__flag;
	reg [0:0] olck_1_1__flag;
	reg [0:0] oack_2_0__flag;
	reg [0:0] oack_2_1__flag;
	reg [0:0] ordy_2_0__flag;
	reg [0:0] ordy_2_1__flag;
	reg [0:0] olck_2_0__flag;
	reg [0:0] olck_2_1__flag;
	reg [0:0] oack_3_0__flag;
	reg [0:0] oack_3_1__flag;
	reg [0:0] ordy_3_0__flag;
	reg [0:0] ordy_3_1__flag;
	reg [0:0] olck_3_0__flag;
	reg [0:0] olck_3_1__flag;
	reg [0:0] oack_4_0__flag;
	reg [0:0] oack_4_1__flag;
	reg [0:0] ordy_4_0__flag;
	reg [0:0] ordy_4_1__flag;
	reg [0:0] olck_4_0__flag;
	reg [0:0] olck_4_1__flag;
	reg [0:0] odata_0_0__flag;
	reg [0:0] odata_0_1__flag;
	reg [0:0] odata_0_2__flag;
	reg [0:0] odata_0_3__flag;
	reg [0:0] odata_0_4__flag;
	reg [0:0] odata_0_5__flag;
	reg [0:0] odata_0_6__flag;
	reg [0:0] odata_0_7__flag;
	reg [0:0] odata_0_8__flag;
	reg [0:0] odata_0_9__flag;
	reg [0:0] odata_0_10__flag;
	reg [0:0] odata_0_11__flag;
	reg [0:0] odata_0_12__flag;
	reg [0:0] odata_0_13__flag;
	reg [0:0] odata_0_14__flag;
	reg [0:0] odata_0_15__flag;
	reg [0:0] odata_0_16__flag;
	reg [0:0] odata_0_17__flag;
	reg [0:0] odata_0_18__flag;
	reg [0:0] odata_0_19__flag;
	reg [0:0] odata_0_20__flag;
	reg [0:0] odata_0_21__flag;
	reg [0:0] odata_0_22__flag;
	reg [0:0] odata_0_23__flag;
	reg [0:0] odata_0_24__flag;
	reg [0:0] odata_0_25__flag;
	reg [0:0] odata_0_26__flag;
	reg [0:0] odata_0_27__flag;
	reg [0:0] odata_0_28__flag;
	reg [0:0] odata_0_29__flag;
	reg [0:0] odata_0_30__flag;
	reg [0:0] odata_0_31__flag;
	reg [0:0] odata_0_32__flag;
	reg [0:0] odata_0_33__flag;
	reg [0:0] odata_0_34__flag;
	reg [0:0] ovalid_0_flag;
	reg [0:0] ovch_0_flag;
	reg [0:0] odata_1_0__flag;
	reg [0:0] odata_1_1__flag;
	reg [0:0] odata_1_2__flag;
	reg [0:0] odata_1_3__flag;
	reg [0:0] odata_1_4__flag;
	reg [0:0] odata_1_5__flag;
	reg [0:0] odata_1_6__flag;
	reg [0:0] odata_1_7__flag;
	reg [0:0] odata_1_8__flag;
	reg [0:0] odata_1_9__flag;
	reg [0:0] odata_1_10__flag;
	reg [0:0] odata_1_11__flag;
	reg [0:0] odata_1_12__flag;
	reg [0:0] odata_1_13__flag;
	reg [0:0] odata_1_14__flag;
	reg [0:0] odata_1_15__flag;
	reg [0:0] odata_1_16__flag;
	reg [0:0] odata_1_17__flag;
	reg [0:0] odata_1_18__flag;
	reg [0:0] odata_1_19__flag;
	reg [0:0] odata_1_20__flag;
	reg [0:0] odata_1_21__flag;
	reg [0:0] odata_1_22__flag;
	reg [0:0] odata_1_23__flag;
	reg [0:0] odata_1_24__flag;
	reg [0:0] odata_1_25__flag;
	reg [0:0] odata_1_26__flag;
	reg [0:0] odata_1_27__flag;
	reg [0:0] odata_1_28__flag;
	reg [0:0] odata_1_29__flag;
	reg [0:0] odata_1_30__flag;
	reg [0:0] odata_1_31__flag;
	reg [0:0] odata_1_32__flag;
	reg [0:0] odata_1_33__flag;
	reg [0:0] odata_1_34__flag;
	reg [0:0] ovalid_1_flag;
	reg [0:0] ovch_1_flag;
	reg [0:0] odata_2_0__flag;
	reg [0:0] odata_2_1__flag;
	reg [0:0] odata_2_2__flag;
	reg [0:0] odata_2_3__flag;
	reg [0:0] odata_2_4__flag;
	reg [0:0] odata_2_5__flag;
	reg [0:0] odata_2_6__flag;
	reg [0:0] odata_2_7__flag;
	reg [0:0] odata_2_8__flag;
	reg [0:0] odata_2_9__flag;
	reg [0:0] odata_2_10__flag;
	reg [0:0] odata_2_11__flag;
	reg [0:0] odata_2_12__flag;
	reg [0:0] odata_2_13__flag;
	reg [0:0] odata_2_14__flag;
	reg [0:0] odata_2_15__flag;
	reg [0:0] odata_2_16__flag;
	reg [0:0] odata_2_17__flag;
	reg [0:0] odata_2_18__flag;
	reg [0:0] odata_2_19__flag;
	reg [0:0] odata_2_20__flag;
	reg [0:0] odata_2_21__flag;
	reg [0:0] odata_2_22__flag;
	reg [0:0] odata_2_23__flag;
	reg [0:0] odata_2_24__flag;
	reg [0:0] odata_2_25__flag;
	reg [0:0] odata_2_26__flag;
	reg [0:0] odata_2_27__flag;
	reg [0:0] odata_2_28__flag;
	reg [0:0] odata_2_29__flag;
	reg [0:0] odata_2_30__flag;
	reg [0:0] odata_2_31__flag;
	reg [0:0] odata_2_32__flag;
	reg [0:0] odata_2_33__flag;
	reg [0:0] odata_2_34__flag;
	reg [0:0] ovalid_2_flag;
	reg [0:0] ovch_2_flag;
	reg [0:0] odata_3_0__flag;
	reg [0:0] odata_3_1__flag;
	reg [0:0] odata_3_2__flag;
	reg [0:0] odata_3_3__flag;
	reg [0:0] odata_3_4__flag;
	reg [0:0] odata_3_5__flag;
	reg [0:0] odata_3_6__flag;
	reg [0:0] odata_3_7__flag;
	reg [0:0] odata_3_8__flag;
	reg [0:0] odata_3_9__flag;
	reg [0:0] odata_3_10__flag;
	reg [0:0] odata_3_11__flag;
	reg [0:0] odata_3_12__flag;
	reg [0:0] odata_3_13__flag;
	reg [0:0] odata_3_14__flag;
	reg [0:0] odata_3_15__flag;
	reg [0:0] odata_3_16__flag;
	reg [0:0] odata_3_17__flag;
	reg [0:0] odata_3_18__flag;
	reg [0:0] odata_3_19__flag;
	reg [0:0] odata_3_20__flag;
	reg [0:0] odata_3_21__flag;
	reg [0:0] odata_3_22__flag;
	reg [0:0] odata_3_23__flag;
	reg [0:0] odata_3_24__flag;
	reg [0:0] odata_3_25__flag;
	reg [0:0] odata_3_26__flag;
	reg [0:0] odata_3_27__flag;
	reg [0:0] odata_3_28__flag;
	reg [0:0] odata_3_29__flag;
	reg [0:0] odata_3_30__flag;
	reg [0:0] odata_3_31__flag;
	reg [0:0] odata_3_32__flag;
	reg [0:0] odata_3_33__flag;
	reg [0:0] odata_3_34__flag;
	reg [0:0] ovalid_3_flag;
	reg [0:0] ovch_3_flag;
	reg [0:0] odata_4_0__flag;
	reg [0:0] odata_4_1__flag;
	reg [0:0] odata_4_2__flag;
	reg [0:0] odata_4_3__flag;
	reg [0:0] odata_4_4__flag;
	reg [0:0] odata_4_5__flag;
	reg [0:0] odata_4_6__flag;
	reg [0:0] odata_4_7__flag;
	reg [0:0] odata_4_8__flag;
	reg [0:0] odata_4_9__flag;
	reg [0:0] odata_4_10__flag;
	reg [0:0] odata_4_11__flag;
	reg [0:0] odata_4_12__flag;
	reg [0:0] odata_4_13__flag;
	reg [0:0] odata_4_14__flag;
	reg [0:0] odata_4_15__flag;
	reg [0:0] odata_4_16__flag;
	reg [0:0] odata_4_17__flag;
	reg [0:0] odata_4_18__flag;
	reg [0:0] odata_4_19__flag;
	reg [0:0] odata_4_20__flag;
	reg [0:0] odata_4_21__flag;
	reg [0:0] odata_4_22__flag;
	reg [0:0] odata_4_23__flag;
	reg [0:0] odata_4_24__flag;
	reg [0:0] odata_4_25__flag;
	reg [0:0] odata_4_26__flag;
	reg [0:0] odata_4_27__flag;
	reg [0:0] odata_4_28__flag;
	reg [0:0] odata_4_29__flag;
	reg [0:0] odata_4_30__flag;
	reg [0:0] odata_4_31__flag;
	reg [0:0] odata_4_32__flag;
	reg [0:0] odata_4_33__flag;
	reg [0:0] odata_4_34__flag;
	reg [0:0] ovalid_4_flag;
	reg [0:0] ovch_4_flag;

// ----- Error counter -------
	integer nb_error= 0;

// ----- FPGA fabric instanciation -------
	router_bench_top_formal_verification FPGA_DUT(
		idata_0_0_,
		idata_0_1_,
		idata_0_2_,
		idata_0_3_,
		idata_0_4_,
		idata_0_5_,
		idata_0_6_,
		idata_0_7_,
		idata_0_8_,
		idata_0_9_,
		idata_0_10_,
		idata_0_11_,
		idata_0_12_,
		idata_0_13_,
		idata_0_14_,
		idata_0_15_,
		idata_0_16_,
		idata_0_17_,
		idata_0_18_,
		idata_0_19_,
		idata_0_20_,
		idata_0_21_,
		idata_0_22_,
		idata_0_23_,
		idata_0_24_,
		idata_0_25_,
		idata_0_26_,
		idata_0_27_,
		idata_0_28_,
		idata_0_29_,
		idata_0_30_,
		idata_0_31_,
		idata_0_32_,
		idata_0_33_,
		idata_0_34_,
		ivalid_0,
		ivch_0,
		idata_1_0_,
		idata_1_1_,
		idata_1_2_,
		idata_1_3_,
		idata_1_4_,
		idata_1_5_,
		idata_1_6_,
		idata_1_7_,
		idata_1_8_,
		idata_1_9_,
		idata_1_10_,
		idata_1_11_,
		idata_1_12_,
		idata_1_13_,
		idata_1_14_,
		idata_1_15_,
		idata_1_16_,
		idata_1_17_,
		idata_1_18_,
		idata_1_19_,
		idata_1_20_,
		idata_1_21_,
		idata_1_22_,
		idata_1_23_,
		idata_1_24_,
		idata_1_25_,
		idata_1_26_,
		idata_1_27_,
		idata_1_28_,
		idata_1_29_,
		idata_1_30_,
		idata_1_31_,
		idata_1_32_,
		idata_1_33_,
		idata_1_34_,
		ivalid_1,
		ivch_1,
		idata_2_0_,
		idata_2_1_,
		idata_2_2_,
		idata_2_3_,
		idata_2_4_,
		idata_2_5_,
		idata_2_6_,
		idata_2_7_,
		idata_2_8_,
		idata_2_9_,
		idata_2_10_,
		idata_2_11_,
		idata_2_12_,
		idata_2_13_,
		idata_2_14_,
		idata_2_15_,
		idata_2_16_,
		idata_2_17_,
		idata_2_18_,
		idata_2_19_,
		idata_2_20_,
		idata_2_21_,
		idata_2_22_,
		idata_2_23_,
		idata_2_24_,
		idata_2_25_,
		idata_2_26_,
		idata_2_27_,
		idata_2_28_,
		idata_2_29_,
		idata_2_30_,
		idata_2_31_,
		idata_2_32_,
		idata_2_33_,
		idata_2_34_,
		ivalid_2,
		ivch_2,
		idata_3_0_,
		idata_3_1_,
		idata_3_2_,
		idata_3_3_,
		idata_3_4_,
		idata_3_5_,
		idata_3_6_,
		idata_3_7_,
		idata_3_8_,
		idata_3_9_,
		idata_3_10_,
		idata_3_11_,
		idata_3_12_,
		idata_3_13_,
		idata_3_14_,
		idata_3_15_,
		idata_3_16_,
		idata_3_17_,
		idata_3_18_,
		idata_3_19_,
		idata_3_20_,
		idata_3_21_,
		idata_3_22_,
		idata_3_23_,
		idata_3_24_,
		idata_3_25_,
		idata_3_26_,
		idata_3_27_,
		idata_3_28_,
		idata_3_29_,
		idata_3_30_,
		idata_3_31_,
		idata_3_32_,
		idata_3_33_,
		idata_3_34_,
		ivalid_3,
		ivch_3,
		idata_4_0_,
		idata_4_1_,
		idata_4_2_,
		idata_4_3_,
		idata_4_4_,
		idata_4_5_,
		idata_4_6_,
		idata_4_7_,
		idata_4_8_,
		idata_4_9_,
		idata_4_10_,
		idata_4_11_,
		idata_4_12_,
		idata_4_13_,
		idata_4_14_,
		idata_4_15_,
		idata_4_16_,
		idata_4_17_,
		idata_4_18_,
		idata_4_19_,
		idata_4_20_,
		idata_4_21_,
		idata_4_22_,
		idata_4_23_,
		idata_4_24_,
		idata_4_25_,
		idata_4_26_,
		idata_4_27_,
		idata_4_28_,
		idata_4_29_,
		idata_4_30_,
		idata_4_31_,
		idata_4_32_,
		idata_4_33_,
		idata_4_34_,
		ivalid_4,
		ivch_4,
		iack_0_0_,
		iack_0_1_,
		ilck_0_0_,
		ilck_0_1_,
		iack_1_0_,
		iack_1_1_,
		ilck_1_0_,
		ilck_1_1_,
		iack_2_0_,
		iack_2_1_,
		ilck_2_0_,
		ilck_2_1_,
		iack_3_0_,
		iack_3_1_,
		ilck_3_0_,
		ilck_3_1_,
		iack_4_0_,
		iack_4_1_,
		ilck_4_0_,
		ilck_4_1_,
		my_xpos_0_,
		my_xpos_1_,
		my_ypos_0_,
		my_ypos_1_,
		clk,
		rst_,
		oack_0_0__gfpga,
		oack_0_1__gfpga,
		ordy_0_0__gfpga,
		ordy_0_1__gfpga,
		olck_0_0__gfpga,
		olck_0_1__gfpga,
		oack_1_0__gfpga,
		oack_1_1__gfpga,
		ordy_1_0__gfpga,
		ordy_1_1__gfpga,
		olck_1_0__gfpga,
		olck_1_1__gfpga,
		oack_2_0__gfpga,
		oack_2_1__gfpga,
		ordy_2_0__gfpga,
		ordy_2_1__gfpga,
		olck_2_0__gfpga,
		olck_2_1__gfpga,
		oack_3_0__gfpga,
		oack_3_1__gfpga,
		ordy_3_0__gfpga,
		ordy_3_1__gfpga,
		olck_3_0__gfpga,
		olck_3_1__gfpga,
		oack_4_0__gfpga,
		oack_4_1__gfpga,
		ordy_4_0__gfpga,
		ordy_4_1__gfpga,
		olck_4_0__gfpga,
		olck_4_1__gfpga,
		odata_0_0__gfpga,
		odata_0_1__gfpga,
		odata_0_2__gfpga,
		odata_0_3__gfpga,
		odata_0_4__gfpga,
		odata_0_5__gfpga,
		odata_0_6__gfpga,
		odata_0_7__gfpga,
		odata_0_8__gfpga,
		odata_0_9__gfpga,
		odata_0_10__gfpga,
		odata_0_11__gfpga,
		odata_0_12__gfpga,
		odata_0_13__gfpga,
		odata_0_14__gfpga,
		odata_0_15__gfpga,
		odata_0_16__gfpga,
		odata_0_17__gfpga,
		odata_0_18__gfpga,
		odata_0_19__gfpga,
		odata_0_20__gfpga,
		odata_0_21__gfpga,
		odata_0_22__gfpga,
		odata_0_23__gfpga,
		odata_0_24__gfpga,
		odata_0_25__gfpga,
		odata_0_26__gfpga,
		odata_0_27__gfpga,
		odata_0_28__gfpga,
		odata_0_29__gfpga,
		odata_0_30__gfpga,
		odata_0_31__gfpga,
		odata_0_32__gfpga,
		odata_0_33__gfpga,
		odata_0_34__gfpga,
		ovalid_0_gfpga,
		ovch_0_gfpga,
		odata_1_0__gfpga,
		odata_1_1__gfpga,
		odata_1_2__gfpga,
		odata_1_3__gfpga,
		odata_1_4__gfpga,
		odata_1_5__gfpga,
		odata_1_6__gfpga,
		odata_1_7__gfpga,
		odata_1_8__gfpga,
		odata_1_9__gfpga,
		odata_1_10__gfpga,
		odata_1_11__gfpga,
		odata_1_12__gfpga,
		odata_1_13__gfpga,
		odata_1_14__gfpga,
		odata_1_15__gfpga,
		odata_1_16__gfpga,
		odata_1_17__gfpga,
		odata_1_18__gfpga,
		odata_1_19__gfpga,
		odata_1_20__gfpga,
		odata_1_21__gfpga,
		odata_1_22__gfpga,
		odata_1_23__gfpga,
		odata_1_24__gfpga,
		odata_1_25__gfpga,
		odata_1_26__gfpga,
		odata_1_27__gfpga,
		odata_1_28__gfpga,
		odata_1_29__gfpga,
		odata_1_30__gfpga,
		odata_1_31__gfpga,
		odata_1_32__gfpga,
		odata_1_33__gfpga,
		odata_1_34__gfpga,
		ovalid_1_gfpga,
		ovch_1_gfpga,
		odata_2_0__gfpga,
		odata_2_1__gfpga,
		odata_2_2__gfpga,
		odata_2_3__gfpga,
		odata_2_4__gfpga,
		odata_2_5__gfpga,
		odata_2_6__gfpga,
		odata_2_7__gfpga,
		odata_2_8__gfpga,
		odata_2_9__gfpga,
		odata_2_10__gfpga,
		odata_2_11__gfpga,
		odata_2_12__gfpga,
		odata_2_13__gfpga,
		odata_2_14__gfpga,
		odata_2_15__gfpga,
		odata_2_16__gfpga,
		odata_2_17__gfpga,
		odata_2_18__gfpga,
		odata_2_19__gfpga,
		odata_2_20__gfpga,
		odata_2_21__gfpga,
		odata_2_22__gfpga,
		odata_2_23__gfpga,
		odata_2_24__gfpga,
		odata_2_25__gfpga,
		odata_2_26__gfpga,
		odata_2_27__gfpga,
		odata_2_28__gfpga,
		odata_2_29__gfpga,
		odata_2_30__gfpga,
		odata_2_31__gfpga,
		odata_2_32__gfpga,
		odata_2_33__gfpga,
		odata_2_34__gfpga,
		ovalid_2_gfpga,
		ovch_2_gfpga,
		odata_3_0__gfpga,
		odata_3_1__gfpga,
		odata_3_2__gfpga,
		odata_3_3__gfpga,
		odata_3_4__gfpga,
		odata_3_5__gfpga,
		odata_3_6__gfpga,
		odata_3_7__gfpga,
		odata_3_8__gfpga,
		odata_3_9__gfpga,
		odata_3_10__gfpga,
		odata_3_11__gfpga,
		odata_3_12__gfpga,
		odata_3_13__gfpga,
		odata_3_14__gfpga,
		odata_3_15__gfpga,
		odata_3_16__gfpga,
		odata_3_17__gfpga,
		odata_3_18__gfpga,
		odata_3_19__gfpga,
		odata_3_20__gfpga,
		odata_3_21__gfpga,
		odata_3_22__gfpga,
		odata_3_23__gfpga,
		odata_3_24__gfpga,
		odata_3_25__gfpga,
		odata_3_26__gfpga,
		odata_3_27__gfpga,
		odata_3_28__gfpga,
		odata_3_29__gfpga,
		odata_3_30__gfpga,
		odata_3_31__gfpga,
		odata_3_32__gfpga,
		odata_3_33__gfpga,
		odata_3_34__gfpga,
		ovalid_3_gfpga,
		ovch_3_gfpga,
		odata_4_0__gfpga,
		odata_4_1__gfpga,
		odata_4_2__gfpga,
		odata_4_3__gfpga,
		odata_4_4__gfpga,
		odata_4_5__gfpga,
		odata_4_6__gfpga,
		odata_4_7__gfpga,
		odata_4_8__gfpga,
		odata_4_9__gfpga,
		odata_4_10__gfpga,
		odata_4_11__gfpga,
		odata_4_12__gfpga,
		odata_4_13__gfpga,
		odata_4_14__gfpga,
		odata_4_15__gfpga,
		odata_4_16__gfpga,
		odata_4_17__gfpga,
		odata_4_18__gfpga,
		odata_4_19__gfpga,
		odata_4_20__gfpga,
		odata_4_21__gfpga,
		odata_4_22__gfpga,
		odata_4_23__gfpga,
		odata_4_24__gfpga,
		odata_4_25__gfpga,
		odata_4_26__gfpga,
		odata_4_27__gfpga,
		odata_4_28__gfpga,
		odata_4_29__gfpga,
		odata_4_30__gfpga,
		odata_4_31__gfpga,
		odata_4_32__gfpga,
		odata_4_33__gfpga,
		odata_4_34__gfpga,
		ovalid_4_gfpga,
		ovch_4_gfpga
	);
// ----- End FPGA Fabric Instanication -------

// ----- Reference Benchmark Instanication -------
	// router_bench REF_DUT(
	// 	idata_0_0_,
	// 	idata_0_1_,
	// 	idata_0_2_,
	// 	idata_0_3_,
	// 	idata_0_4_,
	// 	idata_0_5_,
	// 	idata_0_6_,
	// 	idata_0_7_,
	// 	idata_0_8_,
	// 	idata_0_9_,
	// 	idata_0_10_,
	// 	idata_0_11_,
	// 	idata_0_12_,
	// 	idata_0_13_,
	// 	idata_0_14_,
	// 	idata_0_15_,
	// 	idata_0_16_,
	// 	idata_0_17_,
	// 	idata_0_18_,
	// 	idata_0_19_,
	// 	idata_0_20_,
	// 	idata_0_21_,
	// 	idata_0_22_,
	// 	idata_0_23_,
	// 	idata_0_24_,
	// 	idata_0_25_,
	// 	idata_0_26_,
	// 	idata_0_27_,
	// 	idata_0_28_,
	// 	idata_0_29_,
	// 	idata_0_30_,
	// 	idata_0_31_,
	// 	idata_0_32_,
	// 	idata_0_33_,
	// 	idata_0_34_,
	// 	ivalid_0,
	// 	ivch_0,
	// 	idata_1_0_,
	// 	idata_1_1_,
	// 	idata_1_2_,
	// 	idata_1_3_,
	// 	idata_1_4_,
	// 	idata_1_5_,
	// 	idata_1_6_,
	// 	idata_1_7_,
	// 	idata_1_8_,
	// 	idata_1_9_,
	// 	idata_1_10_,
	// 	idata_1_11_,
	// 	idata_1_12_,
	// 	idata_1_13_,
	// 	idata_1_14_,
	// 	idata_1_15_,
	// 	idata_1_16_,
	// 	idata_1_17_,
	// 	idata_1_18_,
	// 	idata_1_19_,
	// 	idata_1_20_,
	// 	idata_1_21_,
	// 	idata_1_22_,
	// 	idata_1_23_,
	// 	idata_1_24_,
	// 	idata_1_25_,
	// 	idata_1_26_,
	// 	idata_1_27_,
	// 	idata_1_28_,
	// 	idata_1_29_,
	// 	idata_1_30_,
	// 	idata_1_31_,
	// 	idata_1_32_,
	// 	idata_1_33_,
	// 	idata_1_34_,
	// 	ivalid_1,
	// 	ivch_1,
	// 	idata_2_0_,
	// 	idata_2_1_,
	// 	idata_2_2_,
	// 	idata_2_3_,
	// 	idata_2_4_,
	// 	idata_2_5_,
	// 	idata_2_6_,
	// 	idata_2_7_,
	// 	idata_2_8_,
	// 	idata_2_9_,
	// 	idata_2_10_,
	// 	idata_2_11_,
	// 	idata_2_12_,
	// 	idata_2_13_,
	// 	idata_2_14_,
	// 	idata_2_15_,
	// 	idata_2_16_,
	// 	idata_2_17_,
	// 	idata_2_18_,
	// 	idata_2_19_,
	// 	idata_2_20_,
	// 	idata_2_21_,
	// 	idata_2_22_,
	// 	idata_2_23_,
	// 	idata_2_24_,
	// 	idata_2_25_,
	// 	idata_2_26_,
	// 	idata_2_27_,
	// 	idata_2_28_,
	// 	idata_2_29_,
	// 	idata_2_30_,
	// 	idata_2_31_,
	// 	idata_2_32_,
	// 	idata_2_33_,
	// 	idata_2_34_,
	// 	ivalid_2,
	// 	ivch_2,
	// 	idata_3_0_,
	// 	idata_3_1_,
	// 	idata_3_2_,
	// 	idata_3_3_,
	// 	idata_3_4_,
	// 	idata_3_5_,
	// 	idata_3_6_,
	// 	idata_3_7_,
	// 	idata_3_8_,
	// 	idata_3_9_,
	// 	idata_3_10_,
	// 	idata_3_11_,
	// 	idata_3_12_,
	// 	idata_3_13_,
	// 	idata_3_14_,
	// 	idata_3_15_,
	// 	idata_3_16_,
	// 	idata_3_17_,
	// 	idata_3_18_,
	// 	idata_3_19_,
	// 	idata_3_20_,
	// 	idata_3_21_,
	// 	idata_3_22_,
	// 	idata_3_23_,
	// 	idata_3_24_,
	// 	idata_3_25_,
	// 	idata_3_26_,
	// 	idata_3_27_,
	// 	idata_3_28_,
	// 	idata_3_29_,
	// 	idata_3_30_,
	// 	idata_3_31_,
	// 	idata_3_32_,
	// 	idata_3_33_,
	// 	idata_3_34_,
	// 	ivalid_3,
	// 	ivch_3,
	// 	idata_4_0_,
	// 	idata_4_1_,
	// 	idata_4_2_,
	// 	idata_4_3_,
	// 	idata_4_4_,
	// 	idata_4_5_,
	// 	idata_4_6_,
	// 	idata_4_7_,
	// 	idata_4_8_,
	// 	idata_4_9_,
	// 	idata_4_10_,
	// 	idata_4_11_,
	// 	idata_4_12_,
	// 	idata_4_13_,
	// 	idata_4_14_,
	// 	idata_4_15_,
	// 	idata_4_16_,
	// 	idata_4_17_,
	// 	idata_4_18_,
	// 	idata_4_19_,
	// 	idata_4_20_,
	// 	idata_4_21_,
	// 	idata_4_22_,
	// 	idata_4_23_,
	// 	idata_4_24_,
	// 	idata_4_25_,
	// 	idata_4_26_,
	// 	idata_4_27_,
	// 	idata_4_28_,
	// 	idata_4_29_,
	// 	idata_4_30_,
	// 	idata_4_31_,
	// 	idata_4_32_,
	// 	idata_4_33_,
	// 	idata_4_34_,
	// 	ivalid_4,
	// 	ivch_4,
	// 	iack_0_0_,
	// 	iack_0_1_,
	// 	ilck_0_0_,
	// 	ilck_0_1_,
	// 	iack_1_0_,
	// 	iack_1_1_,
	// 	ilck_1_0_,
	// 	ilck_1_1_,
	// 	iack_2_0_,
	// 	iack_2_1_,
	// 	ilck_2_0_,
	// 	ilck_2_1_,
	// 	iack_3_0_,
	// 	iack_3_1_,
	// 	ilck_3_0_,
	// 	ilck_3_1_,
	// 	iack_4_0_,
	// 	iack_4_1_,
	// 	ilck_4_0_,
	// 	ilck_4_1_,
	// 	my_xpos_0_,
	// 	my_xpos_1_,
	// 	my_ypos_0_,
	// 	my_ypos_1_,
	// 	clk,
	// 	rst_,
	// 	oack_0_0__bench,
	// 	oack_0_1__bench,
	// 	ordy_0_0__bench,
	// 	ordy_0_1__bench,
	// 	olck_0_0__bench,
	// 	olck_0_1__bench,
	// 	oack_1_0__bench,
	// 	oack_1_1__bench,
	// 	ordy_1_0__bench,
	// 	ordy_1_1__bench,
	// 	olck_1_0__bench,
	// 	olck_1_1__bench,
	// 	oack_2_0__bench,
	// 	oack_2_1__bench,
	// 	ordy_2_0__bench,
	// 	ordy_2_1__bench,
	// 	olck_2_0__bench,
	// 	olck_2_1__bench,
	// 	oack_3_0__bench,
	// 	oack_3_1__bench,
	// 	ordy_3_0__bench,
	// 	ordy_3_1__bench,
	// 	olck_3_0__bench,
	// 	olck_3_1__bench,
	// 	oack_4_0__bench,
	// 	oack_4_1__bench,
	// 	ordy_4_0__bench,
	// 	ordy_4_1__bench,
	// 	olck_4_0__bench,
	// 	olck_4_1__bench,
	// 	odata_0_0__bench,
	// 	odata_0_1__bench,
	// 	odata_0_2__bench,
	// 	odata_0_3__bench,
	// 	odata_0_4__bench,
	// 	odata_0_5__bench,
	// 	odata_0_6__bench,
	// 	odata_0_7__bench,
	// 	odata_0_8__bench,
	// 	odata_0_9__bench,
	// 	odata_0_10__bench,
	// 	odata_0_11__bench,
	// 	odata_0_12__bench,
	// 	odata_0_13__bench,
	// 	odata_0_14__bench,
	// 	odata_0_15__bench,
	// 	odata_0_16__bench,
	// 	odata_0_17__bench,
	// 	odata_0_18__bench,
	// 	odata_0_19__bench,
	// 	odata_0_20__bench,
	// 	odata_0_21__bench,
	// 	odata_0_22__bench,
	// 	odata_0_23__bench,
	// 	odata_0_24__bench,
	// 	odata_0_25__bench,
	// 	odata_0_26__bench,
	// 	odata_0_27__bench,
	// 	odata_0_28__bench,
	// 	odata_0_29__bench,
	// 	odata_0_30__bench,
	// 	odata_0_31__bench,
	// 	odata_0_32__bench,
	// 	odata_0_33__bench,
	// 	odata_0_34__bench,
	// 	ovalid_0_bench,
	// 	ovch_0_bench,
	// 	odata_1_0__bench,
	// 	odata_1_1__bench,
	// 	odata_1_2__bench,
	// 	odata_1_3__bench,
	// 	odata_1_4__bench,
	// 	odata_1_5__bench,
	// 	odata_1_6__bench,
	// 	odata_1_7__bench,
	// 	odata_1_8__bench,
	// 	odata_1_9__bench,
	// 	odata_1_10__bench,
	// 	odata_1_11__bench,
	// 	odata_1_12__bench,
	// 	odata_1_13__bench,
	// 	odata_1_14__bench,
	// 	odata_1_15__bench,
	// 	odata_1_16__bench,
	// 	odata_1_17__bench,
	// 	odata_1_18__bench,
	// 	odata_1_19__bench,
	// 	odata_1_20__bench,
	// 	odata_1_21__bench,
	// 	odata_1_22__bench,
	// 	odata_1_23__bench,
	// 	odata_1_24__bench,
	// 	odata_1_25__bench,
	// 	odata_1_26__bench,
	// 	odata_1_27__bench,
	// 	odata_1_28__bench,
	// 	odata_1_29__bench,
	// 	odata_1_30__bench,
	// 	odata_1_31__bench,
	// 	odata_1_32__bench,
	// 	odata_1_33__bench,
	// 	odata_1_34__bench,
	// 	ovalid_1_bench,
	// 	ovch_1_bench,
	// 	odata_2_0__bench,
	// 	odata_2_1__bench,
	// 	odata_2_2__bench,
	// 	odata_2_3__bench,
	// 	odata_2_4__bench,
	// 	odata_2_5__bench,
	// 	odata_2_6__bench,
	// 	odata_2_7__bench,
	// 	odata_2_8__bench,
	// 	odata_2_9__bench,
	// 	odata_2_10__bench,
	// 	odata_2_11__bench,
	// 	odata_2_12__bench,
	// 	odata_2_13__bench,
	// 	odata_2_14__bench,
	// 	odata_2_15__bench,
	// 	odata_2_16__bench,
	// 	odata_2_17__bench,
	// 	odata_2_18__bench,
	// 	odata_2_19__bench,
	// 	odata_2_20__bench,
	// 	odata_2_21__bench,
	// 	odata_2_22__bench,
	// 	odata_2_23__bench,
	// 	odata_2_24__bench,
	// 	odata_2_25__bench,
	// 	odata_2_26__bench,
	// 	odata_2_27__bench,
	// 	odata_2_28__bench,
	// 	odata_2_29__bench,
	// 	odata_2_30__bench,
	// 	odata_2_31__bench,
	// 	odata_2_32__bench,
	// 	odata_2_33__bench,
	// 	odata_2_34__bench,
	// 	ovalid_2_bench,
	// 	ovch_2_bench,
	// 	odata_3_0__bench,
	// 	odata_3_1__bench,
	// 	odata_3_2__bench,
	// 	odata_3_3__bench,
	// 	odata_3_4__bench,
	// 	odata_3_5__bench,
	// 	odata_3_6__bench,
	// 	odata_3_7__bench,
	// 	odata_3_8__bench,
	// 	odata_3_9__bench,
	// 	odata_3_10__bench,
	// 	odata_3_11__bench,
	// 	odata_3_12__bench,
	// 	odata_3_13__bench,
	// 	odata_3_14__bench,
	// 	odata_3_15__bench,
	// 	odata_3_16__bench,
	// 	odata_3_17__bench,
	// 	odata_3_18__bench,
	// 	odata_3_19__bench,
	// 	odata_3_20__bench,
	// 	odata_3_21__bench,
	// 	odata_3_22__bench,
	// 	odata_3_23__bench,
	// 	odata_3_24__bench,
	// 	odata_3_25__bench,
	// 	odata_3_26__bench,
	// 	odata_3_27__bench,
	// 	odata_3_28__bench,
	// 	odata_3_29__bench,
	// 	odata_3_30__bench,
	// 	odata_3_31__bench,
	// 	odata_3_32__bench,
	// 	odata_3_33__bench,
	// 	odata_3_34__bench,
	// 	ovalid_3_bench,
	// 	ovch_3_bench,
	// 	odata_4_0__bench,
	// 	odata_4_1__bench,
	// 	odata_4_2__bench,
	// 	odata_4_3__bench,
	// 	odata_4_4__bench,
	// 	odata_4_5__bench,
	// 	odata_4_6__bench,
	// 	odata_4_7__bench,
	// 	odata_4_8__bench,
	// 	odata_4_9__bench,
	// 	odata_4_10__bench,
	// 	odata_4_11__bench,
	// 	odata_4_12__bench,
	// 	odata_4_13__bench,
	// 	odata_4_14__bench,
	// 	odata_4_15__bench,
	// 	odata_4_16__bench,
	// 	odata_4_17__bench,
	// 	odata_4_18__bench,
	// 	odata_4_19__bench,
	// 	odata_4_20__bench,
	// 	odata_4_21__bench,
	// 	odata_4_22__bench,
	// 	odata_4_23__bench,
	// 	odata_4_24__bench,
	// 	odata_4_25__bench,
	// 	odata_4_26__bench,
	// 	odata_4_27__bench,
	// 	odata_4_28__bench,
	// 	odata_4_29__bench,
	// 	odata_4_30__bench,
	// 	odata_4_31__bench,
	// 	odata_4_32__bench,
	// 	odata_4_33__bench,
	// 	odata_4_34__bench,
	// 	ovalid_4_bench,
	// 	ovch_4_bench
	// );

	router_bench REF_DUT(
		.idata_0({idata_0_0_,
		idata_0_1_,
		idata_0_2_,
		idata_0_3_,
		idata_0_4_,
		idata_0_5_,
		idata_0_6_,
		idata_0_7_,
		idata_0_8_,
		idata_0_9_,
		idata_0_10_,
		idata_0_11_,
		idata_0_12_,
		idata_0_13_,
		idata_0_14_,
		idata_0_15_,
		idata_0_16_,
		idata_0_17_,
		idata_0_18_,
		idata_0_19_,
		idata_0_20_,
		idata_0_21_,
		idata_0_22_,
		idata_0_23_,
		idata_0_24_,
		idata_0_25_,
		idata_0_26_,
		idata_0_27_,
		idata_0_28_,
		idata_0_29_,
		idata_0_30_,
		idata_0_31_,
		idata_0_32_,
		idata_0_33_,
		idata_0_34_}),
		.ivalid_0(ivalid_0),
		.ivch_0(ivch_0),
		.idata_1({idata_1_0_,
		idata_1_1_,
		idata_1_2_,
		idata_1_3_,
		idata_1_4_,
		idata_1_5_,
		idata_1_6_,
		idata_1_7_,
		idata_1_8_,
		idata_1_9_,
		idata_1_10_,
		idata_1_11_,
		idata_1_12_,
		idata_1_13_,
		idata_1_14_,
		idata_1_15_,
		idata_1_16_,
		idata_1_17_,
		idata_1_18_,
		idata_1_19_,
		idata_1_20_,
		idata_1_21_,
		idata_1_22_,
		idata_1_23_,
		idata_1_24_,
		idata_1_25_,
		idata_1_26_,
		idata_1_27_,
		idata_1_28_,
		idata_1_29_,
		idata_1_30_,
		idata_1_31_,
		idata_1_32_,
		idata_1_33_,
		idata_1_34_}),
		.ivalid_1(ivalid_1),
		.ivch_1(ivch_1),
		.idata_2({idata_2_0_,
		idata_2_1_,
		idata_2_2_,
		idata_2_3_,
		idata_2_4_,
		idata_2_5_,
		idata_2_6_,
		idata_2_7_,
		idata_2_8_,
		idata_2_9_,
		idata_2_10_,
		idata_2_11_,
		idata_2_12_,
		idata_2_13_,
		idata_2_14_,
		idata_2_15_,
		idata_2_16_,
		idata_2_17_,
		idata_2_18_,
		idata_2_19_,
		idata_2_20_,
		idata_2_21_,
		idata_2_22_,
		idata_2_23_,
		idata_2_24_,
		idata_2_25_,
		idata_2_26_,
		idata_2_27_,
		idata_2_28_,
		idata_2_29_,
		idata_2_30_,
		idata_2_31_,
		idata_2_32_,
		idata_2_33_,
		idata_2_34_}),
		.ivalid_2(ivalid_2),
		.ivch_2(ivch_2),
		.idata_3({idata_3_0_,
		idata_3_1_,
		idata_3_2_,
		idata_3_3_,
		idata_3_4_,
		idata_3_5_,
		idata_3_6_,
		idata_3_7_,
		idata_3_8_,
		idata_3_9_,
		idata_3_10_,
		idata_3_11_,
		idata_3_12_,
		idata_3_13_,
		idata_3_14_,
		idata_3_15_,
		idata_3_16_,
		idata_3_17_,
		idata_3_18_,
		idata_3_19_,
		idata_3_20_,
		idata_3_21_,
		idata_3_22_,
		idata_3_23_,
		idata_3_24_,
		idata_3_25_,
		idata_3_26_,
		idata_3_27_,
		idata_3_28_,
		idata_3_29_,
		idata_3_30_,
		idata_3_31_,
		idata_3_32_,
		idata_3_33_,
		idata_3_34_}),
		.ivalid_3(ivalid_3),
		.ivch_3(ivch_3),
		.idata_4({idata_4_0_,
		idata_4_1_,
		idata_4_2_,
		idata_4_3_,
		idata_4_4_,
		idata_4_5_,
		idata_4_6_,
		idata_4_7_,
		idata_4_8_,
		idata_4_9_,
		idata_4_10_,
		idata_4_11_,
		idata_4_12_,
		idata_4_13_,
		idata_4_14_,
		idata_4_15_,
		idata_4_16_,
		idata_4_17_,
		idata_4_18_,
		idata_4_19_,
		idata_4_20_,
		idata_4_21_,
		idata_4_22_,
		idata_4_23_,
		idata_4_24_,
		idata_4_25_,
		idata_4_26_,
		idata_4_27_,
		idata_4_28_,
		idata_4_29_,
		idata_4_30_,
		idata_4_31_,
		idata_4_32_,
		idata_4_33_,
		idata_4_34_}),
		.ivalid_4(ivalid_4),
		.ivch_4(ivch_4),
		.iack_0({iack_0_0_,
		iack_0_1_}),
		.ilck_0({ilck_0_0_,
		ilck_0_1_}),
		.iack_1({iack_1_0_,
		iack_1_1_}),
		.ilck_1({ilck_1_0_,
		ilck_1_1_}),
		.iack_2({iack_2_0_,
		iack_2_1_}),
		.ilck_2({ilck_2_0_,
		ilck_2_1_}),
		.iack_3({iack_3_0_,
		iack_3_1_}),
		.ilck_3({ilck_3_0_,
		ilck_3_1_}),
		.iack_4({iack_4_0_,
		iack_4_1_}),
		.ilck_4({ilck_4_0_,
		ilck_4_1_}),
		.my_xpos({my_xpos_0_,
		my_xpos_1_}),
		.my_ypos({my_ypos_0_,
		my_ypos_1_}),
		.clk(clk),
		.rst_(rst_),
		.oack_0({oack_0_0__bench,
		oack_0_1__bench}),
		.ordy_0({ordy_0_0__bench,
		ordy_0_1__bench}),
		.olck_0({olck_0_0__bench,
		olck_0_1__bench}),
		.oack_1({oack_1_0__bench,
		oack_1_1__bench}),
		.ordy_1({ordy_1_0__bench,
		ordy_1_1__bench}),
		.olck_1({olck_1_0__bench,
		olck_1_1__bench}),
		.oack_2({oack_2_0__bench,
		oack_2_1__bench}),
		.ordy_2({ordy_2_0__bench,
		ordy_2_1__bench}),
		.olck_2({olck_2_0__bench,
		olck_2_1__bench}),
		.oack_3({oack_3_0__bench,
		oack_3_1__bench}),
		.ordy_3({ordy_3_0__bench,
		ordy_3_1__bench}),
		.olck_3({olck_3_0__bench,
		olck_3_1__bench}),
		.oack_4({oack_4_0__bench,
		oack_4_1__bench}),
		.ordy_4({ordy_4_0__bench,
		ordy_4_1__bench}),
		.olck_4({olck_4_0__bench,
		olck_4_1__bench}),
		.odata_0({odata_0_0__bench,
		odata_0_1__bench,
		odata_0_2__bench,
		odata_0_3__bench,
		odata_0_4__bench,
		odata_0_5__bench,
		odata_0_6__bench,
		odata_0_7__bench,
		odata_0_8__bench,
		odata_0_9__bench,
		odata_0_10__bench,
		odata_0_11__bench,
		odata_0_12__bench,
		odata_0_13__bench,
		odata_0_14__bench,
		odata_0_15__bench,
		odata_0_16__bench,
		odata_0_17__bench,
		odata_0_18__bench,
		odata_0_19__bench,
		odata_0_20__bench,
		odata_0_21__bench,
		odata_0_22__bench,
		odata_0_23__bench,
		odata_0_24__bench,
		odata_0_25__bench,
		odata_0_26__bench,
		odata_0_27__bench,
		odata_0_28__bench,
		odata_0_29__bench,
		odata_0_30__bench,
		odata_0_31__bench,
		odata_0_32__bench,
		odata_0_33__bench,
		odata_0_34__bench}),
		.ovalid_0(ovalid_0_bench),
		.ovch_0(ovch_0_bench),
		.odata_1({odata_1_0__bench,
		odata_1_1__bench,
		odata_1_2__bench,
		odata_1_3__bench,
		odata_1_4__bench,
		odata_1_5__bench,
		odata_1_6__bench,
		odata_1_7__bench,
		odata_1_8__bench,
		odata_1_9__bench,
		odata_1_10__bench,
		odata_1_11__bench,
		odata_1_12__bench,
		odata_1_13__bench,
		odata_1_14__bench,
		odata_1_15__bench,
		odata_1_16__bench,
		odata_1_17__bench,
		odata_1_18__bench,
		odata_1_19__bench,
		odata_1_20__bench,
		odata_1_21__bench,
		odata_1_22__bench,
		odata_1_23__bench,
		odata_1_24__bench,
		odata_1_25__bench,
		odata_1_26__bench,
		odata_1_27__bench,
		odata_1_28__bench,
		odata_1_29__bench,
		odata_1_30__bench,
		odata_1_31__bench,
		odata_1_32__bench,
		odata_1_33__bench,
		odata_1_34__bench}),
		.ovalid_1(ovalid_1_bench),
		.ovch_1(ovch_1_bench),
		.odata_2({odata_2_0__bench,
		odata_2_1__bench,
		odata_2_2__bench,
		odata_2_3__bench,
		odata_2_4__bench,
		odata_2_5__bench,
		odata_2_6__bench,
		odata_2_7__bench,
		odata_2_8__bench,
		odata_2_9__bench,
		odata_2_10__bench,
		odata_2_11__bench,
		odata_2_12__bench,
		odata_2_13__bench,
		odata_2_14__bench,
		odata_2_15__bench,
		odata_2_16__bench,
		odata_2_17__bench,
		odata_2_18__bench,
		odata_2_19__bench,
		odata_2_20__bench,
		odata_2_21__bench,
		odata_2_22__bench,
		odata_2_23__bench,
		odata_2_24__bench,
		odata_2_25__bench,
		odata_2_26__bench,
		odata_2_27__bench,
		odata_2_28__bench,
		odata_2_29__bench,
		odata_2_30__bench,
		odata_2_31__bench,
		odata_2_32__bench,
		odata_2_33__bench,
		odata_2_34__bench}),
		.ovalid_2(ovalid_2_bench),
		.ovch_2(ovch_2_bench),
		.odata_3({odata_3_0__bench,
		odata_3_1__bench,
		odata_3_2__bench,
		odata_3_3__bench,
		odata_3_4__bench,
		odata_3_5__bench,
		odata_3_6__bench,
		odata_3_7__bench,
		odata_3_8__bench,
		odata_3_9__bench,
		odata_3_10__bench,
		odata_3_11__bench,
		odata_3_12__bench,
		odata_3_13__bench,
		odata_3_14__bench,
		odata_3_15__bench,
		odata_3_16__bench,
		odata_3_17__bench,
		odata_3_18__bench,
		odata_3_19__bench,
		odata_3_20__bench,
		odata_3_21__bench,
		odata_3_22__bench,
		odata_3_23__bench,
		odata_3_24__bench,
		odata_3_25__bench,
		odata_3_26__bench,
		odata_3_27__bench,
		odata_3_28__bench,
		odata_3_29__bench,
		odata_3_30__bench,
		odata_3_31__bench,
		odata_3_32__bench,
		odata_3_33__bench,
		odata_3_34__bench}),
		.ovalid_3(ovalid_3_bench),
		.ovch_3(ovch_3_bench),
		.odata_4({odata_4_0__bench,
		odata_4_1__bench,
		odata_4_2__bench,
		odata_4_3__bench,
		odata_4_4__bench,
		odata_4_5__bench,
		odata_4_6__bench,
		odata_4_7__bench,
		odata_4_8__bench,
		odata_4_9__bench,
		odata_4_10__bench,
		odata_4_11__bench,
		odata_4_12__bench,
		odata_4_13__bench,
		odata_4_14__bench,
		odata_4_15__bench,
		odata_4_16__bench,
		odata_4_17__bench,
		odata_4_18__bench,
		odata_4_19__bench,
		odata_4_20__bench,
		odata_4_21__bench,
		odata_4_22__bench,
		odata_4_23__bench,
		odata_4_24__bench,
		odata_4_25__bench,
		odata_4_26__bench,
		odata_4_27__bench,
		odata_4_28__bench,
		odata_4_29__bench,
		odata_4_30__bench,
		odata_4_31__bench,
		odata_4_32__bench,
		odata_4_33__bench,
		odata_4_34__bench}),
		.ovalid_4(ovalid_4_bench),
		.ovch_4(ovch_4_bench)
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
		idata_0_0_ <= 1'b0;
		idata_0_1_ <= 1'b0;
		idata_0_2_ <= 1'b0;
		idata_0_3_ <= 1'b0;
		idata_0_4_ <= 1'b0;
		idata_0_5_ <= 1'b0;
		idata_0_6_ <= 1'b0;
		idata_0_7_ <= 1'b0;
		idata_0_8_ <= 1'b0;
		idata_0_9_ <= 1'b0;
		idata_0_10_ <= 1'b0;
		idata_0_11_ <= 1'b0;
		idata_0_12_ <= 1'b0;
		idata_0_13_ <= 1'b0;
		idata_0_14_ <= 1'b0;
		idata_0_15_ <= 1'b0;
		idata_0_16_ <= 1'b0;
		idata_0_17_ <= 1'b0;
		idata_0_18_ <= 1'b0;
		idata_0_19_ <= 1'b0;
		idata_0_20_ <= 1'b0;
		idata_0_21_ <= 1'b0;
		idata_0_22_ <= 1'b0;
		idata_0_23_ <= 1'b0;
		idata_0_24_ <= 1'b0;
		idata_0_25_ <= 1'b0;
		idata_0_26_ <= 1'b0;
		idata_0_27_ <= 1'b0;
		idata_0_28_ <= 1'b0;
		idata_0_29_ <= 1'b0;
		idata_0_30_ <= 1'b0;
		idata_0_31_ <= 1'b0;
		idata_0_32_ <= 1'b0;
		idata_0_33_ <= 1'b0;
		idata_0_34_ <= 1'b0;
		ivalid_0 <= 1'b0;
		ivch_0 <= 1'b0;
		idata_1_0_ <= 1'b0;
		idata_1_1_ <= 1'b0;
		idata_1_2_ <= 1'b0;
		idata_1_3_ <= 1'b0;
		idata_1_4_ <= 1'b0;
		idata_1_5_ <= 1'b0;
		idata_1_6_ <= 1'b0;
		idata_1_7_ <= 1'b0;
		idata_1_8_ <= 1'b0;
		idata_1_9_ <= 1'b0;
		idata_1_10_ <= 1'b0;
		idata_1_11_ <= 1'b0;
		idata_1_12_ <= 1'b0;
		idata_1_13_ <= 1'b0;
		idata_1_14_ <= 1'b0;
		idata_1_15_ <= 1'b0;
		idata_1_16_ <= 1'b0;
		idata_1_17_ <= 1'b0;
		idata_1_18_ <= 1'b0;
		idata_1_19_ <= 1'b0;
		idata_1_20_ <= 1'b0;
		idata_1_21_ <= 1'b0;
		idata_1_22_ <= 1'b0;
		idata_1_23_ <= 1'b0;
		idata_1_24_ <= 1'b0;
		idata_1_25_ <= 1'b0;
		idata_1_26_ <= 1'b0;
		idata_1_27_ <= 1'b0;
		idata_1_28_ <= 1'b0;
		idata_1_29_ <= 1'b0;
		idata_1_30_ <= 1'b0;
		idata_1_31_ <= 1'b0;
		idata_1_32_ <= 1'b0;
		idata_1_33_ <= 1'b0;
		idata_1_34_ <= 1'b0;
		ivalid_1 <= 1'b0;
		ivch_1 <= 1'b0;
		idata_2_0_ <= 1'b0;
		idata_2_1_ <= 1'b0;
		idata_2_2_ <= 1'b0;
		idata_2_3_ <= 1'b0;
		idata_2_4_ <= 1'b0;
		idata_2_5_ <= 1'b0;
		idata_2_6_ <= 1'b0;
		idata_2_7_ <= 1'b0;
		idata_2_8_ <= 1'b0;
		idata_2_9_ <= 1'b0;
		idata_2_10_ <= 1'b0;
		idata_2_11_ <= 1'b0;
		idata_2_12_ <= 1'b0;
		idata_2_13_ <= 1'b0;
		idata_2_14_ <= 1'b0;
		idata_2_15_ <= 1'b0;
		idata_2_16_ <= 1'b0;
		idata_2_17_ <= 1'b0;
		idata_2_18_ <= 1'b0;
		idata_2_19_ <= 1'b0;
		idata_2_20_ <= 1'b0;
		idata_2_21_ <= 1'b0;
		idata_2_22_ <= 1'b0;
		idata_2_23_ <= 1'b0;
		idata_2_24_ <= 1'b0;
		idata_2_25_ <= 1'b0;
		idata_2_26_ <= 1'b0;
		idata_2_27_ <= 1'b0;
		idata_2_28_ <= 1'b0;
		idata_2_29_ <= 1'b0;
		idata_2_30_ <= 1'b0;
		idata_2_31_ <= 1'b0;
		idata_2_32_ <= 1'b0;
		idata_2_33_ <= 1'b0;
		idata_2_34_ <= 1'b0;
		ivalid_2 <= 1'b0;
		ivch_2 <= 1'b0;
		idata_3_0_ <= 1'b0;
		idata_3_1_ <= 1'b0;
		idata_3_2_ <= 1'b0;
		idata_3_3_ <= 1'b0;
		idata_3_4_ <= 1'b0;
		idata_3_5_ <= 1'b0;
		idata_3_6_ <= 1'b0;
		idata_3_7_ <= 1'b0;
		idata_3_8_ <= 1'b0;
		idata_3_9_ <= 1'b0;
		idata_3_10_ <= 1'b0;
		idata_3_11_ <= 1'b0;
		idata_3_12_ <= 1'b0;
		idata_3_13_ <= 1'b0;
		idata_3_14_ <= 1'b0;
		idata_3_15_ <= 1'b0;
		idata_3_16_ <= 1'b0;
		idata_3_17_ <= 1'b0;
		idata_3_18_ <= 1'b0;
		idata_3_19_ <= 1'b0;
		idata_3_20_ <= 1'b0;
		idata_3_21_ <= 1'b0;
		idata_3_22_ <= 1'b0;
		idata_3_23_ <= 1'b0;
		idata_3_24_ <= 1'b0;
		idata_3_25_ <= 1'b0;
		idata_3_26_ <= 1'b0;
		idata_3_27_ <= 1'b0;
		idata_3_28_ <= 1'b0;
		idata_3_29_ <= 1'b0;
		idata_3_30_ <= 1'b0;
		idata_3_31_ <= 1'b0;
		idata_3_32_ <= 1'b0;
		idata_3_33_ <= 1'b0;
		idata_3_34_ <= 1'b0;
		ivalid_3 <= 1'b0;
		ivch_3 <= 1'b0;
		idata_4_0_ <= 1'b0;
		idata_4_1_ <= 1'b0;
		idata_4_2_ <= 1'b0;
		idata_4_3_ <= 1'b0;
		idata_4_4_ <= 1'b0;
		idata_4_5_ <= 1'b0;
		idata_4_6_ <= 1'b0;
		idata_4_7_ <= 1'b0;
		idata_4_8_ <= 1'b0;
		idata_4_9_ <= 1'b0;
		idata_4_10_ <= 1'b0;
		idata_4_11_ <= 1'b0;
		idata_4_12_ <= 1'b0;
		idata_4_13_ <= 1'b0;
		idata_4_14_ <= 1'b0;
		idata_4_15_ <= 1'b0;
		idata_4_16_ <= 1'b0;
		idata_4_17_ <= 1'b0;
		idata_4_18_ <= 1'b0;
		idata_4_19_ <= 1'b0;
		idata_4_20_ <= 1'b0;
		idata_4_21_ <= 1'b0;
		idata_4_22_ <= 1'b0;
		idata_4_23_ <= 1'b0;
		idata_4_24_ <= 1'b0;
		idata_4_25_ <= 1'b0;
		idata_4_26_ <= 1'b0;
		idata_4_27_ <= 1'b0;
		idata_4_28_ <= 1'b0;
		idata_4_29_ <= 1'b0;
		idata_4_30_ <= 1'b0;
		idata_4_31_ <= 1'b0;
		idata_4_32_ <= 1'b0;
		idata_4_33_ <= 1'b0;
		idata_4_34_ <= 1'b0;
		ivalid_4 <= 1'b0;
		ivch_4 <= 1'b0;
		iack_0_0_ <= 1'b0;
		iack_0_1_ <= 1'b0;
		ilck_0_0_ <= 1'b0;
		ilck_0_1_ <= 1'b0;
		iack_1_0_ <= 1'b0;
		iack_1_1_ <= 1'b0;
		ilck_1_0_ <= 1'b0;
		ilck_1_1_ <= 1'b0;
		iack_2_0_ <= 1'b0;
		iack_2_1_ <= 1'b0;
		ilck_2_0_ <= 1'b0;
		ilck_2_1_ <= 1'b0;
		iack_3_0_ <= 1'b0;
		iack_3_1_ <= 1'b0;
		ilck_3_0_ <= 1'b0;
		ilck_3_1_ <= 1'b0;
		iack_4_0_ <= 1'b0;
		iack_4_1_ <= 1'b0;
		ilck_4_0_ <= 1'b0;
		ilck_4_1_ <= 1'b0;
		my_xpos_0_ <= 1'b0;
		my_xpos_1_ <= 1'b0;
		my_ypos_0_ <= 1'b0;
		my_ypos_1_ <= 1'b0;
		rst_ <= 1'b0;

		oack_0_0__flag[0] <= 1'b0;
		oack_0_1__flag[0] <= 1'b0;
		ordy_0_0__flag[0] <= 1'b0;
		ordy_0_1__flag[0] <= 1'b0;
		olck_0_0__flag[0] <= 1'b0;
		olck_0_1__flag[0] <= 1'b0;
		oack_1_0__flag[0] <= 1'b0;
		oack_1_1__flag[0] <= 1'b0;
		ordy_1_0__flag[0] <= 1'b0;
		ordy_1_1__flag[0] <= 1'b0;
		olck_1_0__flag[0] <= 1'b0;
		olck_1_1__flag[0] <= 1'b0;
		oack_2_0__flag[0] <= 1'b0;
		oack_2_1__flag[0] <= 1'b0;
		ordy_2_0__flag[0] <= 1'b0;
		ordy_2_1__flag[0] <= 1'b0;
		olck_2_0__flag[0] <= 1'b0;
		olck_2_1__flag[0] <= 1'b0;
		oack_3_0__flag[0] <= 1'b0;
		oack_3_1__flag[0] <= 1'b0;
		ordy_3_0__flag[0] <= 1'b0;
		ordy_3_1__flag[0] <= 1'b0;
		olck_3_0__flag[0] <= 1'b0;
		olck_3_1__flag[0] <= 1'b0;
		oack_4_0__flag[0] <= 1'b0;
		oack_4_1__flag[0] <= 1'b0;
		ordy_4_0__flag[0] <= 1'b0;
		ordy_4_1__flag[0] <= 1'b0;
		olck_4_0__flag[0] <= 1'b0;
		olck_4_1__flag[0] <= 1'b0;
		odata_0_0__flag[0] <= 1'b0;
		odata_0_1__flag[0] <= 1'b0;
		odata_0_2__flag[0] <= 1'b0;
		odata_0_3__flag[0] <= 1'b0;
		odata_0_4__flag[0] <= 1'b0;
		odata_0_5__flag[0] <= 1'b0;
		odata_0_6__flag[0] <= 1'b0;
		odata_0_7__flag[0] <= 1'b0;
		odata_0_8__flag[0] <= 1'b0;
		odata_0_9__flag[0] <= 1'b0;
		odata_0_10__flag[0] <= 1'b0;
		odata_0_11__flag[0] <= 1'b0;
		odata_0_12__flag[0] <= 1'b0;
		odata_0_13__flag[0] <= 1'b0;
		odata_0_14__flag[0] <= 1'b0;
		odata_0_15__flag[0] <= 1'b0;
		odata_0_16__flag[0] <= 1'b0;
		odata_0_17__flag[0] <= 1'b0;
		odata_0_18__flag[0] <= 1'b0;
		odata_0_19__flag[0] <= 1'b0;
		odata_0_20__flag[0] <= 1'b0;
		odata_0_21__flag[0] <= 1'b0;
		odata_0_22__flag[0] <= 1'b0;
		odata_0_23__flag[0] <= 1'b0;
		odata_0_24__flag[0] <= 1'b0;
		odata_0_25__flag[0] <= 1'b0;
		odata_0_26__flag[0] <= 1'b0;
		odata_0_27__flag[0] <= 1'b0;
		odata_0_28__flag[0] <= 1'b0;
		odata_0_29__flag[0] <= 1'b0;
		odata_0_30__flag[0] <= 1'b0;
		odata_0_31__flag[0] <= 1'b0;
		odata_0_32__flag[0] <= 1'b0;
		odata_0_33__flag[0] <= 1'b0;
		odata_0_34__flag[0] <= 1'b0;
		ovalid_0_flag[0] <= 1'b0;
		ovch_0_flag[0] <= 1'b0;
		odata_1_0__flag[0] <= 1'b0;
		odata_1_1__flag[0] <= 1'b0;
		odata_1_2__flag[0] <= 1'b0;
		odata_1_3__flag[0] <= 1'b0;
		odata_1_4__flag[0] <= 1'b0;
		odata_1_5__flag[0] <= 1'b0;
		odata_1_6__flag[0] <= 1'b0;
		odata_1_7__flag[0] <= 1'b0;
		odata_1_8__flag[0] <= 1'b0;
		odata_1_9__flag[0] <= 1'b0;
		odata_1_10__flag[0] <= 1'b0;
		odata_1_11__flag[0] <= 1'b0;
		odata_1_12__flag[0] <= 1'b0;
		odata_1_13__flag[0] <= 1'b0;
		odata_1_14__flag[0] <= 1'b0;
		odata_1_15__flag[0] <= 1'b0;
		odata_1_16__flag[0] <= 1'b0;
		odata_1_17__flag[0] <= 1'b0;
		odata_1_18__flag[0] <= 1'b0;
		odata_1_19__flag[0] <= 1'b0;
		odata_1_20__flag[0] <= 1'b0;
		odata_1_21__flag[0] <= 1'b0;
		odata_1_22__flag[0] <= 1'b0;
		odata_1_23__flag[0] <= 1'b0;
		odata_1_24__flag[0] <= 1'b0;
		odata_1_25__flag[0] <= 1'b0;
		odata_1_26__flag[0] <= 1'b0;
		odata_1_27__flag[0] <= 1'b0;
		odata_1_28__flag[0] <= 1'b0;
		odata_1_29__flag[0] <= 1'b0;
		odata_1_30__flag[0] <= 1'b0;
		odata_1_31__flag[0] <= 1'b0;
		odata_1_32__flag[0] <= 1'b0;
		odata_1_33__flag[0] <= 1'b0;
		odata_1_34__flag[0] <= 1'b0;
		ovalid_1_flag[0] <= 1'b0;
		ovch_1_flag[0] <= 1'b0;
		odata_2_0__flag[0] <= 1'b0;
		odata_2_1__flag[0] <= 1'b0;
		odata_2_2__flag[0] <= 1'b0;
		odata_2_3__flag[0] <= 1'b0;
		odata_2_4__flag[0] <= 1'b0;
		odata_2_5__flag[0] <= 1'b0;
		odata_2_6__flag[0] <= 1'b0;
		odata_2_7__flag[0] <= 1'b0;
		odata_2_8__flag[0] <= 1'b0;
		odata_2_9__flag[0] <= 1'b0;
		odata_2_10__flag[0] <= 1'b0;
		odata_2_11__flag[0] <= 1'b0;
		odata_2_12__flag[0] <= 1'b0;
		odata_2_13__flag[0] <= 1'b0;
		odata_2_14__flag[0] <= 1'b0;
		odata_2_15__flag[0] <= 1'b0;
		odata_2_16__flag[0] <= 1'b0;
		odata_2_17__flag[0] <= 1'b0;
		odata_2_18__flag[0] <= 1'b0;
		odata_2_19__flag[0] <= 1'b0;
		odata_2_20__flag[0] <= 1'b0;
		odata_2_21__flag[0] <= 1'b0;
		odata_2_22__flag[0] <= 1'b0;
		odata_2_23__flag[0] <= 1'b0;
		odata_2_24__flag[0] <= 1'b0;
		odata_2_25__flag[0] <= 1'b0;
		odata_2_26__flag[0] <= 1'b0;
		odata_2_27__flag[0] <= 1'b0;
		odata_2_28__flag[0] <= 1'b0;
		odata_2_29__flag[0] <= 1'b0;
		odata_2_30__flag[0] <= 1'b0;
		odata_2_31__flag[0] <= 1'b0;
		odata_2_32__flag[0] <= 1'b0;
		odata_2_33__flag[0] <= 1'b0;
		odata_2_34__flag[0] <= 1'b0;
		ovalid_2_flag[0] <= 1'b0;
		ovch_2_flag[0] <= 1'b0;
		odata_3_0__flag[0] <= 1'b0;
		odata_3_1__flag[0] <= 1'b0;
		odata_3_2__flag[0] <= 1'b0;
		odata_3_3__flag[0] <= 1'b0;
		odata_3_4__flag[0] <= 1'b0;
		odata_3_5__flag[0] <= 1'b0;
		odata_3_6__flag[0] <= 1'b0;
		odata_3_7__flag[0] <= 1'b0;
		odata_3_8__flag[0] <= 1'b0;
		odata_3_9__flag[0] <= 1'b0;
		odata_3_10__flag[0] <= 1'b0;
		odata_3_11__flag[0] <= 1'b0;
		odata_3_12__flag[0] <= 1'b0;
		odata_3_13__flag[0] <= 1'b0;
		odata_3_14__flag[0] <= 1'b0;
		odata_3_15__flag[0] <= 1'b0;
		odata_3_16__flag[0] <= 1'b0;
		odata_3_17__flag[0] <= 1'b0;
		odata_3_18__flag[0] <= 1'b0;
		odata_3_19__flag[0] <= 1'b0;
		odata_3_20__flag[0] <= 1'b0;
		odata_3_21__flag[0] <= 1'b0;
		odata_3_22__flag[0] <= 1'b0;
		odata_3_23__flag[0] <= 1'b0;
		odata_3_24__flag[0] <= 1'b0;
		odata_3_25__flag[0] <= 1'b0;
		odata_3_26__flag[0] <= 1'b0;
		odata_3_27__flag[0] <= 1'b0;
		odata_3_28__flag[0] <= 1'b0;
		odata_3_29__flag[0] <= 1'b0;
		odata_3_30__flag[0] <= 1'b0;
		odata_3_31__flag[0] <= 1'b0;
		odata_3_32__flag[0] <= 1'b0;
		odata_3_33__flag[0] <= 1'b0;
		odata_3_34__flag[0] <= 1'b0;
		ovalid_3_flag[0] <= 1'b0;
		ovch_3_flag[0] <= 1'b0;
		odata_4_0__flag[0] <= 1'b0;
		odata_4_1__flag[0] <= 1'b0;
		odata_4_2__flag[0] <= 1'b0;
		odata_4_3__flag[0] <= 1'b0;
		odata_4_4__flag[0] <= 1'b0;
		odata_4_5__flag[0] <= 1'b0;
		odata_4_6__flag[0] <= 1'b0;
		odata_4_7__flag[0] <= 1'b0;
		odata_4_8__flag[0] <= 1'b0;
		odata_4_9__flag[0] <= 1'b0;
		odata_4_10__flag[0] <= 1'b0;
		odata_4_11__flag[0] <= 1'b0;
		odata_4_12__flag[0] <= 1'b0;
		odata_4_13__flag[0] <= 1'b0;
		odata_4_14__flag[0] <= 1'b0;
		odata_4_15__flag[0] <= 1'b0;
		odata_4_16__flag[0] <= 1'b0;
		odata_4_17__flag[0] <= 1'b0;
		odata_4_18__flag[0] <= 1'b0;
		odata_4_19__flag[0] <= 1'b0;
		odata_4_20__flag[0] <= 1'b0;
		odata_4_21__flag[0] <= 1'b0;
		odata_4_22__flag[0] <= 1'b0;
		odata_4_23__flag[0] <= 1'b0;
		odata_4_24__flag[0] <= 1'b0;
		odata_4_25__flag[0] <= 1'b0;
		odata_4_26__flag[0] <= 1'b0;
		odata_4_27__flag[0] <= 1'b0;
		odata_4_28__flag[0] <= 1'b0;
		odata_4_29__flag[0] <= 1'b0;
		odata_4_30__flag[0] <= 1'b0;
		odata_4_31__flag[0] <= 1'b0;
		odata_4_32__flag[0] <= 1'b0;
		odata_4_33__flag[0] <= 1'b0;
		odata_4_34__flag[0] <= 1'b0;
		ovalid_4_flag[0] <= 1'b0;
		ovch_4_flag[0] <= 1'b0;
	end

// ----- Input Stimulus -------
	always@(negedge clk[0]) begin
		idata_0_0_ <= $random;
		idata_0_1_ <= $random;
		idata_0_2_ <= $random;
		idata_0_3_ <= $random;
		idata_0_4_ <= $random;
		idata_0_5_ <= $random;
		idata_0_6_ <= $random;
		idata_0_7_ <= $random;
		idata_0_8_ <= $random;
		idata_0_9_ <= $random;
		idata_0_10_ <= $random;
		idata_0_11_ <= $random;
		idata_0_12_ <= $random;
		idata_0_13_ <= $random;
		idata_0_14_ <= $random;
		idata_0_15_ <= $random;
		idata_0_16_ <= $random;
		idata_0_17_ <= $random;
		idata_0_18_ <= $random;
		idata_0_19_ <= $random;
		idata_0_20_ <= $random;
		idata_0_21_ <= $random;
		idata_0_22_ <= $random;
		idata_0_23_ <= $random;
		idata_0_24_ <= $random;
		idata_0_25_ <= $random;
		idata_0_26_ <= $random;
		idata_0_27_ <= $random;
		idata_0_28_ <= $random;
		idata_0_29_ <= $random;
		idata_0_30_ <= $random;
		idata_0_31_ <= $random;
		idata_0_32_ <= $random;
		idata_0_33_ <= $random;
		idata_0_34_ <= $random;
		ivalid_0 <= $random;
		ivch_0 <= $random;
		idata_1_0_ <= $random;
		idata_1_1_ <= $random;
		idata_1_2_ <= $random;
		idata_1_3_ <= $random;
		idata_1_4_ <= $random;
		idata_1_5_ <= $random;
		idata_1_6_ <= $random;
		idata_1_7_ <= $random;
		idata_1_8_ <= $random;
		idata_1_9_ <= $random;
		idata_1_10_ <= $random;
		idata_1_11_ <= $random;
		idata_1_12_ <= $random;
		idata_1_13_ <= $random;
		idata_1_14_ <= $random;
		idata_1_15_ <= $random;
		idata_1_16_ <= $random;
		idata_1_17_ <= $random;
		idata_1_18_ <= $random;
		idata_1_19_ <= $random;
		idata_1_20_ <= $random;
		idata_1_21_ <= $random;
		idata_1_22_ <= $random;
		idata_1_23_ <= $random;
		idata_1_24_ <= $random;
		idata_1_25_ <= $random;
		idata_1_26_ <= $random;
		idata_1_27_ <= $random;
		idata_1_28_ <= $random;
		idata_1_29_ <= $random;
		idata_1_30_ <= $random;
		idata_1_31_ <= $random;
		idata_1_32_ <= $random;
		idata_1_33_ <= $random;
		idata_1_34_ <= $random;
		ivalid_1 <= $random;
		ivch_1 <= $random;
		idata_2_0_ <= $random;
		idata_2_1_ <= $random;
		idata_2_2_ <= $random;
		idata_2_3_ <= $random;
		idata_2_4_ <= $random;
		idata_2_5_ <= $random;
		idata_2_6_ <= $random;
		idata_2_7_ <= $random;
		idata_2_8_ <= $random;
		idata_2_9_ <= $random;
		idata_2_10_ <= $random;
		idata_2_11_ <= $random;
		idata_2_12_ <= $random;
		idata_2_13_ <= $random;
		idata_2_14_ <= $random;
		idata_2_15_ <= $random;
		idata_2_16_ <= $random;
		idata_2_17_ <= $random;
		idata_2_18_ <= $random;
		idata_2_19_ <= $random;
		idata_2_20_ <= $random;
		idata_2_21_ <= $random;
		idata_2_22_ <= $random;
		idata_2_23_ <= $random;
		idata_2_24_ <= $random;
		idata_2_25_ <= $random;
		idata_2_26_ <= $random;
		idata_2_27_ <= $random;
		idata_2_28_ <= $random;
		idata_2_29_ <= $random;
		idata_2_30_ <= $random;
		idata_2_31_ <= $random;
		idata_2_32_ <= $random;
		idata_2_33_ <= $random;
		idata_2_34_ <= $random;
		ivalid_2 <= $random;
		ivch_2 <= $random;
		idata_3_0_ <= $random;
		idata_3_1_ <= $random;
		idata_3_2_ <= $random;
		idata_3_3_ <= $random;
		idata_3_4_ <= $random;
		idata_3_5_ <= $random;
		idata_3_6_ <= $random;
		idata_3_7_ <= $random;
		idata_3_8_ <= $random;
		idata_3_9_ <= $random;
		idata_3_10_ <= $random;
		idata_3_11_ <= $random;
		idata_3_12_ <= $random;
		idata_3_13_ <= $random;
		idata_3_14_ <= $random;
		idata_3_15_ <= $random;
		idata_3_16_ <= $random;
		idata_3_17_ <= $random;
		idata_3_18_ <= $random;
		idata_3_19_ <= $random;
		idata_3_20_ <= $random;
		idata_3_21_ <= $random;
		idata_3_22_ <= $random;
		idata_3_23_ <= $random;
		idata_3_24_ <= $random;
		idata_3_25_ <= $random;
		idata_3_26_ <= $random;
		idata_3_27_ <= $random;
		idata_3_28_ <= $random;
		idata_3_29_ <= $random;
		idata_3_30_ <= $random;
		idata_3_31_ <= $random;
		idata_3_32_ <= $random;
		idata_3_33_ <= $random;
		idata_3_34_ <= $random;
		ivalid_3 <= $random;
		ivch_3 <= $random;
		idata_4_0_ <= $random;
		idata_4_1_ <= $random;
		idata_4_2_ <= $random;
		idata_4_3_ <= $random;
		idata_4_4_ <= $random;
		idata_4_5_ <= $random;
		idata_4_6_ <= $random;
		idata_4_7_ <= $random;
		idata_4_8_ <= $random;
		idata_4_9_ <= $random;
		idata_4_10_ <= $random;
		idata_4_11_ <= $random;
		idata_4_12_ <= $random;
		idata_4_13_ <= $random;
		idata_4_14_ <= $random;
		idata_4_15_ <= $random;
		idata_4_16_ <= $random;
		idata_4_17_ <= $random;
		idata_4_18_ <= $random;
		idata_4_19_ <= $random;
		idata_4_20_ <= $random;
		idata_4_21_ <= $random;
		idata_4_22_ <= $random;
		idata_4_23_ <= $random;
		idata_4_24_ <= $random;
		idata_4_25_ <= $random;
		idata_4_26_ <= $random;
		idata_4_27_ <= $random;
		idata_4_28_ <= $random;
		idata_4_29_ <= $random;
		idata_4_30_ <= $random;
		idata_4_31_ <= $random;
		idata_4_32_ <= $random;
		idata_4_33_ <= $random;
		idata_4_34_ <= $random;
		ivalid_4 <= $random;
		ivch_4 <= $random;
		iack_0_0_ <= $random;
		iack_0_1_ <= $random;
		ilck_0_0_ <= $random;
		ilck_0_1_ <= $random;
		iack_1_0_ <= $random;
		iack_1_1_ <= $random;
		ilck_1_0_ <= $random;
		ilck_1_1_ <= $random;
		iack_2_0_ <= $random;
		iack_2_1_ <= $random;
		ilck_2_0_ <= $random;
		ilck_2_1_ <= $random;
		iack_3_0_ <= $random;
		iack_3_1_ <= $random;
		ilck_3_0_ <= $random;
		ilck_3_1_ <= $random;
		iack_4_0_ <= $random;
		iack_4_1_ <= $random;
		ilck_4_0_ <= $random;
		ilck_4_1_ <= $random;
		my_xpos_0_ <= $random;
		my_xpos_1_ <= $random;
		my_ypos_0_ <= $random;
		my_ypos_1_ <= $random;
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
			if(!(oack_0_0__gfpga === oack_0_0__bench) && !(oack_0_0__bench === 1'bx)) begin
				oack_0_0__flag <= 1'b1;
			end else begin
				oack_0_0__flag<= 1'b0;
			end
			if(!(oack_0_1__gfpga === oack_0_1__bench) && !(oack_0_1__bench === 1'bx)) begin
				oack_0_1__flag <= 1'b1;
			end else begin
				oack_0_1__flag<= 1'b0;
			end
			if(!(ordy_0_0__gfpga === ordy_0_0__bench) && !(ordy_0_0__bench === 1'bx)) begin
				ordy_0_0__flag <= 1'b1;
			end else begin
				ordy_0_0__flag<= 1'b0;
			end
			if(!(ordy_0_1__gfpga === ordy_0_1__bench) && !(ordy_0_1__bench === 1'bx)) begin
				ordy_0_1__flag <= 1'b1;
			end else begin
				ordy_0_1__flag<= 1'b0;
			end
			if(!(olck_0_0__gfpga === olck_0_0__bench) && !(olck_0_0__bench === 1'bx)) begin
				olck_0_0__flag <= 1'b1;
			end else begin
				olck_0_0__flag<= 1'b0;
			end
			if(!(olck_0_1__gfpga === olck_0_1__bench) && !(olck_0_1__bench === 1'bx)) begin
				olck_0_1__flag <= 1'b1;
			end else begin
				olck_0_1__flag<= 1'b0;
			end
			if(!(oack_1_0__gfpga === oack_1_0__bench) && !(oack_1_0__bench === 1'bx)) begin
				oack_1_0__flag <= 1'b1;
			end else begin
				oack_1_0__flag<= 1'b0;
			end
			if(!(oack_1_1__gfpga === oack_1_1__bench) && !(oack_1_1__bench === 1'bx)) begin
				oack_1_1__flag <= 1'b1;
			end else begin
				oack_1_1__flag<= 1'b0;
			end
			if(!(ordy_1_0__gfpga === ordy_1_0__bench) && !(ordy_1_0__bench === 1'bx)) begin
				ordy_1_0__flag <= 1'b1;
			end else begin
				ordy_1_0__flag<= 1'b0;
			end
			if(!(ordy_1_1__gfpga === ordy_1_1__bench) && !(ordy_1_1__bench === 1'bx)) begin
				ordy_1_1__flag <= 1'b1;
			end else begin
				ordy_1_1__flag<= 1'b0;
			end
			if(!(olck_1_0__gfpga === olck_1_0__bench) && !(olck_1_0__bench === 1'bx)) begin
				olck_1_0__flag <= 1'b1;
			end else begin
				olck_1_0__flag<= 1'b0;
			end
			if(!(olck_1_1__gfpga === olck_1_1__bench) && !(olck_1_1__bench === 1'bx)) begin
				olck_1_1__flag <= 1'b1;
			end else begin
				olck_1_1__flag<= 1'b0;
			end
			if(!(oack_2_0__gfpga === oack_2_0__bench) && !(oack_2_0__bench === 1'bx)) begin
				oack_2_0__flag <= 1'b1;
			end else begin
				oack_2_0__flag<= 1'b0;
			end
			if(!(oack_2_1__gfpga === oack_2_1__bench) && !(oack_2_1__bench === 1'bx)) begin
				oack_2_1__flag <= 1'b1;
			end else begin
				oack_2_1__flag<= 1'b0;
			end
			if(!(ordy_2_0__gfpga === ordy_2_0__bench) && !(ordy_2_0__bench === 1'bx)) begin
				ordy_2_0__flag <= 1'b1;
			end else begin
				ordy_2_0__flag<= 1'b0;
			end
			if(!(ordy_2_1__gfpga === ordy_2_1__bench) && !(ordy_2_1__bench === 1'bx)) begin
				ordy_2_1__flag <= 1'b1;
			end else begin
				ordy_2_1__flag<= 1'b0;
			end
			if(!(olck_2_0__gfpga === olck_2_0__bench) && !(olck_2_0__bench === 1'bx)) begin
				olck_2_0__flag <= 1'b1;
			end else begin
				olck_2_0__flag<= 1'b0;
			end
			if(!(olck_2_1__gfpga === olck_2_1__bench) && !(olck_2_1__bench === 1'bx)) begin
				olck_2_1__flag <= 1'b1;
			end else begin
				olck_2_1__flag<= 1'b0;
			end
			if(!(oack_3_0__gfpga === oack_3_0__bench) && !(oack_3_0__bench === 1'bx)) begin
				oack_3_0__flag <= 1'b1;
			end else begin
				oack_3_0__flag<= 1'b0;
			end
			if(!(oack_3_1__gfpga === oack_3_1__bench) && !(oack_3_1__bench === 1'bx)) begin
				oack_3_1__flag <= 1'b1;
			end else begin
				oack_3_1__flag<= 1'b0;
			end
			if(!(ordy_3_0__gfpga === ordy_3_0__bench) && !(ordy_3_0__bench === 1'bx)) begin
				ordy_3_0__flag <= 1'b1;
			end else begin
				ordy_3_0__flag<= 1'b0;
			end
			if(!(ordy_3_1__gfpga === ordy_3_1__bench) && !(ordy_3_1__bench === 1'bx)) begin
				ordy_3_1__flag <= 1'b1;
			end else begin
				ordy_3_1__flag<= 1'b0;
			end
			if(!(olck_3_0__gfpga === olck_3_0__bench) && !(olck_3_0__bench === 1'bx)) begin
				olck_3_0__flag <= 1'b1;
			end else begin
				olck_3_0__flag<= 1'b0;
			end
			if(!(olck_3_1__gfpga === olck_3_1__bench) && !(olck_3_1__bench === 1'bx)) begin
				olck_3_1__flag <= 1'b1;
			end else begin
				olck_3_1__flag<= 1'b0;
			end
			if(!(oack_4_0__gfpga === oack_4_0__bench) && !(oack_4_0__bench === 1'bx)) begin
				oack_4_0__flag <= 1'b1;
			end else begin
				oack_4_0__flag<= 1'b0;
			end
			if(!(oack_4_1__gfpga === oack_4_1__bench) && !(oack_4_1__bench === 1'bx)) begin
				oack_4_1__flag <= 1'b1;
			end else begin
				oack_4_1__flag<= 1'b0;
			end
			if(!(ordy_4_0__gfpga === ordy_4_0__bench) && !(ordy_4_0__bench === 1'bx)) begin
				ordy_4_0__flag <= 1'b1;
			end else begin
				ordy_4_0__flag<= 1'b0;
			end
			if(!(ordy_4_1__gfpga === ordy_4_1__bench) && !(ordy_4_1__bench === 1'bx)) begin
				ordy_4_1__flag <= 1'b1;
			end else begin
				ordy_4_1__flag<= 1'b0;
			end
			if(!(olck_4_0__gfpga === olck_4_0__bench) && !(olck_4_0__bench === 1'bx)) begin
				olck_4_0__flag <= 1'b1;
			end else begin
				olck_4_0__flag<= 1'b0;
			end
			if(!(olck_4_1__gfpga === olck_4_1__bench) && !(olck_4_1__bench === 1'bx)) begin
				olck_4_1__flag <= 1'b1;
			end else begin
				olck_4_1__flag<= 1'b0;
			end
			if(!(odata_0_0__gfpga === odata_0_0__bench) && !(odata_0_0__bench === 1'bx)) begin
				odata_0_0__flag <= 1'b1;
			end else begin
				odata_0_0__flag<= 1'b0;
			end
			if(!(odata_0_1__gfpga === odata_0_1__bench) && !(odata_0_1__bench === 1'bx)) begin
				odata_0_1__flag <= 1'b1;
			end else begin
				odata_0_1__flag<= 1'b0;
			end
			if(!(odata_0_2__gfpga === odata_0_2__bench) && !(odata_0_2__bench === 1'bx)) begin
				odata_0_2__flag <= 1'b1;
			end else begin
				odata_0_2__flag<= 1'b0;
			end
			if(!(odata_0_3__gfpga === odata_0_3__bench) && !(odata_0_3__bench === 1'bx)) begin
				odata_0_3__flag <= 1'b1;
			end else begin
				odata_0_3__flag<= 1'b0;
			end
			if(!(odata_0_4__gfpga === odata_0_4__bench) && !(odata_0_4__bench === 1'bx)) begin
				odata_0_4__flag <= 1'b1;
			end else begin
				odata_0_4__flag<= 1'b0;
			end
			if(!(odata_0_5__gfpga === odata_0_5__bench) && !(odata_0_5__bench === 1'bx)) begin
				odata_0_5__flag <= 1'b1;
			end else begin
				odata_0_5__flag<= 1'b0;
			end
			if(!(odata_0_6__gfpga === odata_0_6__bench) && !(odata_0_6__bench === 1'bx)) begin
				odata_0_6__flag <= 1'b1;
			end else begin
				odata_0_6__flag<= 1'b0;
			end
			if(!(odata_0_7__gfpga === odata_0_7__bench) && !(odata_0_7__bench === 1'bx)) begin
				odata_0_7__flag <= 1'b1;
			end else begin
				odata_0_7__flag<= 1'b0;
			end
			if(!(odata_0_8__gfpga === odata_0_8__bench) && !(odata_0_8__bench === 1'bx)) begin
				odata_0_8__flag <= 1'b1;
			end else begin
				odata_0_8__flag<= 1'b0;
			end
			if(!(odata_0_9__gfpga === odata_0_9__bench) && !(odata_0_9__bench === 1'bx)) begin
				odata_0_9__flag <= 1'b1;
			end else begin
				odata_0_9__flag<= 1'b0;
			end
			if(!(odata_0_10__gfpga === odata_0_10__bench) && !(odata_0_10__bench === 1'bx)) begin
				odata_0_10__flag <= 1'b1;
			end else begin
				odata_0_10__flag<= 1'b0;
			end
			if(!(odata_0_11__gfpga === odata_0_11__bench) && !(odata_0_11__bench === 1'bx)) begin
				odata_0_11__flag <= 1'b1;
			end else begin
				odata_0_11__flag<= 1'b0;
			end
			if(!(odata_0_12__gfpga === odata_0_12__bench) && !(odata_0_12__bench === 1'bx)) begin
				odata_0_12__flag <= 1'b1;
			end else begin
				odata_0_12__flag<= 1'b0;
			end
			if(!(odata_0_13__gfpga === odata_0_13__bench) && !(odata_0_13__bench === 1'bx)) begin
				odata_0_13__flag <= 1'b1;
			end else begin
				odata_0_13__flag<= 1'b0;
			end
			if(!(odata_0_14__gfpga === odata_0_14__bench) && !(odata_0_14__bench === 1'bx)) begin
				odata_0_14__flag <= 1'b1;
			end else begin
				odata_0_14__flag<= 1'b0;
			end
			if(!(odata_0_15__gfpga === odata_0_15__bench) && !(odata_0_15__bench === 1'bx)) begin
				odata_0_15__flag <= 1'b1;
			end else begin
				odata_0_15__flag<= 1'b0;
			end
			if(!(odata_0_16__gfpga === odata_0_16__bench) && !(odata_0_16__bench === 1'bx)) begin
				odata_0_16__flag <= 1'b1;
			end else begin
				odata_0_16__flag<= 1'b0;
			end
			if(!(odata_0_17__gfpga === odata_0_17__bench) && !(odata_0_17__bench === 1'bx)) begin
				odata_0_17__flag <= 1'b1;
			end else begin
				odata_0_17__flag<= 1'b0;
			end
			if(!(odata_0_18__gfpga === odata_0_18__bench) && !(odata_0_18__bench === 1'bx)) begin
				odata_0_18__flag <= 1'b1;
			end else begin
				odata_0_18__flag<= 1'b0;
			end
			if(!(odata_0_19__gfpga === odata_0_19__bench) && !(odata_0_19__bench === 1'bx)) begin
				odata_0_19__flag <= 1'b1;
			end else begin
				odata_0_19__flag<= 1'b0;
			end
			if(!(odata_0_20__gfpga === odata_0_20__bench) && !(odata_0_20__bench === 1'bx)) begin
				odata_0_20__flag <= 1'b1;
			end else begin
				odata_0_20__flag<= 1'b0;
			end
			if(!(odata_0_21__gfpga === odata_0_21__bench) && !(odata_0_21__bench === 1'bx)) begin
				odata_0_21__flag <= 1'b1;
			end else begin
				odata_0_21__flag<= 1'b0;
			end
			if(!(odata_0_22__gfpga === odata_0_22__bench) && !(odata_0_22__bench === 1'bx)) begin
				odata_0_22__flag <= 1'b1;
			end else begin
				odata_0_22__flag<= 1'b0;
			end
			if(!(odata_0_23__gfpga === odata_0_23__bench) && !(odata_0_23__bench === 1'bx)) begin
				odata_0_23__flag <= 1'b1;
			end else begin
				odata_0_23__flag<= 1'b0;
			end
			if(!(odata_0_24__gfpga === odata_0_24__bench) && !(odata_0_24__bench === 1'bx)) begin
				odata_0_24__flag <= 1'b1;
			end else begin
				odata_0_24__flag<= 1'b0;
			end
			if(!(odata_0_25__gfpga === odata_0_25__bench) && !(odata_0_25__bench === 1'bx)) begin
				odata_0_25__flag <= 1'b1;
			end else begin
				odata_0_25__flag<= 1'b0;
			end
			if(!(odata_0_26__gfpga === odata_0_26__bench) && !(odata_0_26__bench === 1'bx)) begin
				odata_0_26__flag <= 1'b1;
			end else begin
				odata_0_26__flag<= 1'b0;
			end
			if(!(odata_0_27__gfpga === odata_0_27__bench) && !(odata_0_27__bench === 1'bx)) begin
				odata_0_27__flag <= 1'b1;
			end else begin
				odata_0_27__flag<= 1'b0;
			end
			if(!(odata_0_28__gfpga === odata_0_28__bench) && !(odata_0_28__bench === 1'bx)) begin
				odata_0_28__flag <= 1'b1;
			end else begin
				odata_0_28__flag<= 1'b0;
			end
			if(!(odata_0_29__gfpga === odata_0_29__bench) && !(odata_0_29__bench === 1'bx)) begin
				odata_0_29__flag <= 1'b1;
			end else begin
				odata_0_29__flag<= 1'b0;
			end
			if(!(odata_0_30__gfpga === odata_0_30__bench) && !(odata_0_30__bench === 1'bx)) begin
				odata_0_30__flag <= 1'b1;
			end else begin
				odata_0_30__flag<= 1'b0;
			end
			if(!(odata_0_31__gfpga === odata_0_31__bench) && !(odata_0_31__bench === 1'bx)) begin
				odata_0_31__flag <= 1'b1;
			end else begin
				odata_0_31__flag<= 1'b0;
			end
			if(!(odata_0_32__gfpga === odata_0_32__bench) && !(odata_0_32__bench === 1'bx)) begin
				odata_0_32__flag <= 1'b1;
			end else begin
				odata_0_32__flag<= 1'b0;
			end
			if(!(odata_0_33__gfpga === odata_0_33__bench) && !(odata_0_33__bench === 1'bx)) begin
				odata_0_33__flag <= 1'b1;
			end else begin
				odata_0_33__flag<= 1'b0;
			end
			if(!(odata_0_34__gfpga === odata_0_34__bench) && !(odata_0_34__bench === 1'bx)) begin
				odata_0_34__flag <= 1'b1;
			end else begin
				odata_0_34__flag<= 1'b0;
			end
			if(!(ovalid_0_gfpga === ovalid_0_bench) && !(ovalid_0_bench === 1'bx)) begin
				ovalid_0_flag <= 1'b1;
			end else begin
				ovalid_0_flag<= 1'b0;
			end
			if(!(ovch_0_gfpga === ovch_0_bench) && !(ovch_0_bench === 1'bx)) begin
				ovch_0_flag <= 1'b1;
			end else begin
				ovch_0_flag<= 1'b0;
			end
			if(!(odata_1_0__gfpga === odata_1_0__bench) && !(odata_1_0__bench === 1'bx)) begin
				odata_1_0__flag <= 1'b1;
			end else begin
				odata_1_0__flag<= 1'b0;
			end
			if(!(odata_1_1__gfpga === odata_1_1__bench) && !(odata_1_1__bench === 1'bx)) begin
				odata_1_1__flag <= 1'b1;
			end else begin
				odata_1_1__flag<= 1'b0;
			end
			if(!(odata_1_2__gfpga === odata_1_2__bench) && !(odata_1_2__bench === 1'bx)) begin
				odata_1_2__flag <= 1'b1;
			end else begin
				odata_1_2__flag<= 1'b0;
			end
			if(!(odata_1_3__gfpga === odata_1_3__bench) && !(odata_1_3__bench === 1'bx)) begin
				odata_1_3__flag <= 1'b1;
			end else begin
				odata_1_3__flag<= 1'b0;
			end
			if(!(odata_1_4__gfpga === odata_1_4__bench) && !(odata_1_4__bench === 1'bx)) begin
				odata_1_4__flag <= 1'b1;
			end else begin
				odata_1_4__flag<= 1'b0;
			end
			if(!(odata_1_5__gfpga === odata_1_5__bench) && !(odata_1_5__bench === 1'bx)) begin
				odata_1_5__flag <= 1'b1;
			end else begin
				odata_1_5__flag<= 1'b0;
			end
			if(!(odata_1_6__gfpga === odata_1_6__bench) && !(odata_1_6__bench === 1'bx)) begin
				odata_1_6__flag <= 1'b1;
			end else begin
				odata_1_6__flag<= 1'b0;
			end
			if(!(odata_1_7__gfpga === odata_1_7__bench) && !(odata_1_7__bench === 1'bx)) begin
				odata_1_7__flag <= 1'b1;
			end else begin
				odata_1_7__flag<= 1'b0;
			end
			if(!(odata_1_8__gfpga === odata_1_8__bench) && !(odata_1_8__bench === 1'bx)) begin
				odata_1_8__flag <= 1'b1;
			end else begin
				odata_1_8__flag<= 1'b0;
			end
			if(!(odata_1_9__gfpga === odata_1_9__bench) && !(odata_1_9__bench === 1'bx)) begin
				odata_1_9__flag <= 1'b1;
			end else begin
				odata_1_9__flag<= 1'b0;
			end
			if(!(odata_1_10__gfpga === odata_1_10__bench) && !(odata_1_10__bench === 1'bx)) begin
				odata_1_10__flag <= 1'b1;
			end else begin
				odata_1_10__flag<= 1'b0;
			end
			if(!(odata_1_11__gfpga === odata_1_11__bench) && !(odata_1_11__bench === 1'bx)) begin
				odata_1_11__flag <= 1'b1;
			end else begin
				odata_1_11__flag<= 1'b0;
			end
			if(!(odata_1_12__gfpga === odata_1_12__bench) && !(odata_1_12__bench === 1'bx)) begin
				odata_1_12__flag <= 1'b1;
			end else begin
				odata_1_12__flag<= 1'b0;
			end
			if(!(odata_1_13__gfpga === odata_1_13__bench) && !(odata_1_13__bench === 1'bx)) begin
				odata_1_13__flag <= 1'b1;
			end else begin
				odata_1_13__flag<= 1'b0;
			end
			if(!(odata_1_14__gfpga === odata_1_14__bench) && !(odata_1_14__bench === 1'bx)) begin
				odata_1_14__flag <= 1'b1;
			end else begin
				odata_1_14__flag<= 1'b0;
			end
			if(!(odata_1_15__gfpga === odata_1_15__bench) && !(odata_1_15__bench === 1'bx)) begin
				odata_1_15__flag <= 1'b1;
			end else begin
				odata_1_15__flag<= 1'b0;
			end
			if(!(odata_1_16__gfpga === odata_1_16__bench) && !(odata_1_16__bench === 1'bx)) begin
				odata_1_16__flag <= 1'b1;
			end else begin
				odata_1_16__flag<= 1'b0;
			end
			if(!(odata_1_17__gfpga === odata_1_17__bench) && !(odata_1_17__bench === 1'bx)) begin
				odata_1_17__flag <= 1'b1;
			end else begin
				odata_1_17__flag<= 1'b0;
			end
			if(!(odata_1_18__gfpga === odata_1_18__bench) && !(odata_1_18__bench === 1'bx)) begin
				odata_1_18__flag <= 1'b1;
			end else begin
				odata_1_18__flag<= 1'b0;
			end
			if(!(odata_1_19__gfpga === odata_1_19__bench) && !(odata_1_19__bench === 1'bx)) begin
				odata_1_19__flag <= 1'b1;
			end else begin
				odata_1_19__flag<= 1'b0;
			end
			if(!(odata_1_20__gfpga === odata_1_20__bench) && !(odata_1_20__bench === 1'bx)) begin
				odata_1_20__flag <= 1'b1;
			end else begin
				odata_1_20__flag<= 1'b0;
			end
			if(!(odata_1_21__gfpga === odata_1_21__bench) && !(odata_1_21__bench === 1'bx)) begin
				odata_1_21__flag <= 1'b1;
			end else begin
				odata_1_21__flag<= 1'b0;
			end
			if(!(odata_1_22__gfpga === odata_1_22__bench) && !(odata_1_22__bench === 1'bx)) begin
				odata_1_22__flag <= 1'b1;
			end else begin
				odata_1_22__flag<= 1'b0;
			end
			if(!(odata_1_23__gfpga === odata_1_23__bench) && !(odata_1_23__bench === 1'bx)) begin
				odata_1_23__flag <= 1'b1;
			end else begin
				odata_1_23__flag<= 1'b0;
			end
			if(!(odata_1_24__gfpga === odata_1_24__bench) && !(odata_1_24__bench === 1'bx)) begin
				odata_1_24__flag <= 1'b1;
			end else begin
				odata_1_24__flag<= 1'b0;
			end
			if(!(odata_1_25__gfpga === odata_1_25__bench) && !(odata_1_25__bench === 1'bx)) begin
				odata_1_25__flag <= 1'b1;
			end else begin
				odata_1_25__flag<= 1'b0;
			end
			if(!(odata_1_26__gfpga === odata_1_26__bench) && !(odata_1_26__bench === 1'bx)) begin
				odata_1_26__flag <= 1'b1;
			end else begin
				odata_1_26__flag<= 1'b0;
			end
			if(!(odata_1_27__gfpga === odata_1_27__bench) && !(odata_1_27__bench === 1'bx)) begin
				odata_1_27__flag <= 1'b1;
			end else begin
				odata_1_27__flag<= 1'b0;
			end
			if(!(odata_1_28__gfpga === odata_1_28__bench) && !(odata_1_28__bench === 1'bx)) begin
				odata_1_28__flag <= 1'b1;
			end else begin
				odata_1_28__flag<= 1'b0;
			end
			if(!(odata_1_29__gfpga === odata_1_29__bench) && !(odata_1_29__bench === 1'bx)) begin
				odata_1_29__flag <= 1'b1;
			end else begin
				odata_1_29__flag<= 1'b0;
			end
			if(!(odata_1_30__gfpga === odata_1_30__bench) && !(odata_1_30__bench === 1'bx)) begin
				odata_1_30__flag <= 1'b1;
			end else begin
				odata_1_30__flag<= 1'b0;
			end
			if(!(odata_1_31__gfpga === odata_1_31__bench) && !(odata_1_31__bench === 1'bx)) begin
				odata_1_31__flag <= 1'b1;
			end else begin
				odata_1_31__flag<= 1'b0;
			end
			if(!(odata_1_32__gfpga === odata_1_32__bench) && !(odata_1_32__bench === 1'bx)) begin
				odata_1_32__flag <= 1'b1;
			end else begin
				odata_1_32__flag<= 1'b0;
			end
			if(!(odata_1_33__gfpga === odata_1_33__bench) && !(odata_1_33__bench === 1'bx)) begin
				odata_1_33__flag <= 1'b1;
			end else begin
				odata_1_33__flag<= 1'b0;
			end
			if(!(odata_1_34__gfpga === odata_1_34__bench) && !(odata_1_34__bench === 1'bx)) begin
				odata_1_34__flag <= 1'b1;
			end else begin
				odata_1_34__flag<= 1'b0;
			end
			if(!(ovalid_1_gfpga === ovalid_1_bench) && !(ovalid_1_bench === 1'bx)) begin
				ovalid_1_flag <= 1'b1;
			end else begin
				ovalid_1_flag<= 1'b0;
			end
			if(!(ovch_1_gfpga === ovch_1_bench) && !(ovch_1_bench === 1'bx)) begin
				ovch_1_flag <= 1'b1;
			end else begin
				ovch_1_flag<= 1'b0;
			end
			if(!(odata_2_0__gfpga === odata_2_0__bench) && !(odata_2_0__bench === 1'bx)) begin
				odata_2_0__flag <= 1'b1;
			end else begin
				odata_2_0__flag<= 1'b0;
			end
			if(!(odata_2_1__gfpga === odata_2_1__bench) && !(odata_2_1__bench === 1'bx)) begin
				odata_2_1__flag <= 1'b1;
			end else begin
				odata_2_1__flag<= 1'b0;
			end
			if(!(odata_2_2__gfpga === odata_2_2__bench) && !(odata_2_2__bench === 1'bx)) begin
				odata_2_2__flag <= 1'b1;
			end else begin
				odata_2_2__flag<= 1'b0;
			end
			if(!(odata_2_3__gfpga === odata_2_3__bench) && !(odata_2_3__bench === 1'bx)) begin
				odata_2_3__flag <= 1'b1;
			end else begin
				odata_2_3__flag<= 1'b0;
			end
			if(!(odata_2_4__gfpga === odata_2_4__bench) && !(odata_2_4__bench === 1'bx)) begin
				odata_2_4__flag <= 1'b1;
			end else begin
				odata_2_4__flag<= 1'b0;
			end
			if(!(odata_2_5__gfpga === odata_2_5__bench) && !(odata_2_5__bench === 1'bx)) begin
				odata_2_5__flag <= 1'b1;
			end else begin
				odata_2_5__flag<= 1'b0;
			end
			if(!(odata_2_6__gfpga === odata_2_6__bench) && !(odata_2_6__bench === 1'bx)) begin
				odata_2_6__flag <= 1'b1;
			end else begin
				odata_2_6__flag<= 1'b0;
			end
			if(!(odata_2_7__gfpga === odata_2_7__bench) && !(odata_2_7__bench === 1'bx)) begin
				odata_2_7__flag <= 1'b1;
			end else begin
				odata_2_7__flag<= 1'b0;
			end
			if(!(odata_2_8__gfpga === odata_2_8__bench) && !(odata_2_8__bench === 1'bx)) begin
				odata_2_8__flag <= 1'b1;
			end else begin
				odata_2_8__flag<= 1'b0;
			end
			if(!(odata_2_9__gfpga === odata_2_9__bench) && !(odata_2_9__bench === 1'bx)) begin
				odata_2_9__flag <= 1'b1;
			end else begin
				odata_2_9__flag<= 1'b0;
			end
			if(!(odata_2_10__gfpga === odata_2_10__bench) && !(odata_2_10__bench === 1'bx)) begin
				odata_2_10__flag <= 1'b1;
			end else begin
				odata_2_10__flag<= 1'b0;
			end
			if(!(odata_2_11__gfpga === odata_2_11__bench) && !(odata_2_11__bench === 1'bx)) begin
				odata_2_11__flag <= 1'b1;
			end else begin
				odata_2_11__flag<= 1'b0;
			end
			if(!(odata_2_12__gfpga === odata_2_12__bench) && !(odata_2_12__bench === 1'bx)) begin
				odata_2_12__flag <= 1'b1;
			end else begin
				odata_2_12__flag<= 1'b0;
			end
			if(!(odata_2_13__gfpga === odata_2_13__bench) && !(odata_2_13__bench === 1'bx)) begin
				odata_2_13__flag <= 1'b1;
			end else begin
				odata_2_13__flag<= 1'b0;
			end
			if(!(odata_2_14__gfpga === odata_2_14__bench) && !(odata_2_14__bench === 1'bx)) begin
				odata_2_14__flag <= 1'b1;
			end else begin
				odata_2_14__flag<= 1'b0;
			end
			if(!(odata_2_15__gfpga === odata_2_15__bench) && !(odata_2_15__bench === 1'bx)) begin
				odata_2_15__flag <= 1'b1;
			end else begin
				odata_2_15__flag<= 1'b0;
			end
			if(!(odata_2_16__gfpga === odata_2_16__bench) && !(odata_2_16__bench === 1'bx)) begin
				odata_2_16__flag <= 1'b1;
			end else begin
				odata_2_16__flag<= 1'b0;
			end
			if(!(odata_2_17__gfpga === odata_2_17__bench) && !(odata_2_17__bench === 1'bx)) begin
				odata_2_17__flag <= 1'b1;
			end else begin
				odata_2_17__flag<= 1'b0;
			end
			if(!(odata_2_18__gfpga === odata_2_18__bench) && !(odata_2_18__bench === 1'bx)) begin
				odata_2_18__flag <= 1'b1;
			end else begin
				odata_2_18__flag<= 1'b0;
			end
			if(!(odata_2_19__gfpga === odata_2_19__bench) && !(odata_2_19__bench === 1'bx)) begin
				odata_2_19__flag <= 1'b1;
			end else begin
				odata_2_19__flag<= 1'b0;
			end
			if(!(odata_2_20__gfpga === odata_2_20__bench) && !(odata_2_20__bench === 1'bx)) begin
				odata_2_20__flag <= 1'b1;
			end else begin
				odata_2_20__flag<= 1'b0;
			end
			if(!(odata_2_21__gfpga === odata_2_21__bench) && !(odata_2_21__bench === 1'bx)) begin
				odata_2_21__flag <= 1'b1;
			end else begin
				odata_2_21__flag<= 1'b0;
			end
			if(!(odata_2_22__gfpga === odata_2_22__bench) && !(odata_2_22__bench === 1'bx)) begin
				odata_2_22__flag <= 1'b1;
			end else begin
				odata_2_22__flag<= 1'b0;
			end
			if(!(odata_2_23__gfpga === odata_2_23__bench) && !(odata_2_23__bench === 1'bx)) begin
				odata_2_23__flag <= 1'b1;
			end else begin
				odata_2_23__flag<= 1'b0;
			end
			if(!(odata_2_24__gfpga === odata_2_24__bench) && !(odata_2_24__bench === 1'bx)) begin
				odata_2_24__flag <= 1'b1;
			end else begin
				odata_2_24__flag<= 1'b0;
			end
			if(!(odata_2_25__gfpga === odata_2_25__bench) && !(odata_2_25__bench === 1'bx)) begin
				odata_2_25__flag <= 1'b1;
			end else begin
				odata_2_25__flag<= 1'b0;
			end
			if(!(odata_2_26__gfpga === odata_2_26__bench) && !(odata_2_26__bench === 1'bx)) begin
				odata_2_26__flag <= 1'b1;
			end else begin
				odata_2_26__flag<= 1'b0;
			end
			if(!(odata_2_27__gfpga === odata_2_27__bench) && !(odata_2_27__bench === 1'bx)) begin
				odata_2_27__flag <= 1'b1;
			end else begin
				odata_2_27__flag<= 1'b0;
			end
			if(!(odata_2_28__gfpga === odata_2_28__bench) && !(odata_2_28__bench === 1'bx)) begin
				odata_2_28__flag <= 1'b1;
			end else begin
				odata_2_28__flag<= 1'b0;
			end
			if(!(odata_2_29__gfpga === odata_2_29__bench) && !(odata_2_29__bench === 1'bx)) begin
				odata_2_29__flag <= 1'b1;
			end else begin
				odata_2_29__flag<= 1'b0;
			end
			if(!(odata_2_30__gfpga === odata_2_30__bench) && !(odata_2_30__bench === 1'bx)) begin
				odata_2_30__flag <= 1'b1;
			end else begin
				odata_2_30__flag<= 1'b0;
			end
			if(!(odata_2_31__gfpga === odata_2_31__bench) && !(odata_2_31__bench === 1'bx)) begin
				odata_2_31__flag <= 1'b1;
			end else begin
				odata_2_31__flag<= 1'b0;
			end
			if(!(odata_2_32__gfpga === odata_2_32__bench) && !(odata_2_32__bench === 1'bx)) begin
				odata_2_32__flag <= 1'b1;
			end else begin
				odata_2_32__flag<= 1'b0;
			end
			if(!(odata_2_33__gfpga === odata_2_33__bench) && !(odata_2_33__bench === 1'bx)) begin
				odata_2_33__flag <= 1'b1;
			end else begin
				odata_2_33__flag<= 1'b0;
			end
			if(!(odata_2_34__gfpga === odata_2_34__bench) && !(odata_2_34__bench === 1'bx)) begin
				odata_2_34__flag <= 1'b1;
			end else begin
				odata_2_34__flag<= 1'b0;
			end
			if(!(ovalid_2_gfpga === ovalid_2_bench) && !(ovalid_2_bench === 1'bx)) begin
				ovalid_2_flag <= 1'b1;
			end else begin
				ovalid_2_flag<= 1'b0;
			end
			if(!(ovch_2_gfpga === ovch_2_bench) && !(ovch_2_bench === 1'bx)) begin
				ovch_2_flag <= 1'b1;
			end else begin
				ovch_2_flag<= 1'b0;
			end
			if(!(odata_3_0__gfpga === odata_3_0__bench) && !(odata_3_0__bench === 1'bx)) begin
				odata_3_0__flag <= 1'b1;
			end else begin
				odata_3_0__flag<= 1'b0;
			end
			if(!(odata_3_1__gfpga === odata_3_1__bench) && !(odata_3_1__bench === 1'bx)) begin
				odata_3_1__flag <= 1'b1;
			end else begin
				odata_3_1__flag<= 1'b0;
			end
			if(!(odata_3_2__gfpga === odata_3_2__bench) && !(odata_3_2__bench === 1'bx)) begin
				odata_3_2__flag <= 1'b1;
			end else begin
				odata_3_2__flag<= 1'b0;
			end
			if(!(odata_3_3__gfpga === odata_3_3__bench) && !(odata_3_3__bench === 1'bx)) begin
				odata_3_3__flag <= 1'b1;
			end else begin
				odata_3_3__flag<= 1'b0;
			end
			if(!(odata_3_4__gfpga === odata_3_4__bench) && !(odata_3_4__bench === 1'bx)) begin
				odata_3_4__flag <= 1'b1;
			end else begin
				odata_3_4__flag<= 1'b0;
			end
			if(!(odata_3_5__gfpga === odata_3_5__bench) && !(odata_3_5__bench === 1'bx)) begin
				odata_3_5__flag <= 1'b1;
			end else begin
				odata_3_5__flag<= 1'b0;
			end
			if(!(odata_3_6__gfpga === odata_3_6__bench) && !(odata_3_6__bench === 1'bx)) begin
				odata_3_6__flag <= 1'b1;
			end else begin
				odata_3_6__flag<= 1'b0;
			end
			if(!(odata_3_7__gfpga === odata_3_7__bench) && !(odata_3_7__bench === 1'bx)) begin
				odata_3_7__flag <= 1'b1;
			end else begin
				odata_3_7__flag<= 1'b0;
			end
			if(!(odata_3_8__gfpga === odata_3_8__bench) && !(odata_3_8__bench === 1'bx)) begin
				odata_3_8__flag <= 1'b1;
			end else begin
				odata_3_8__flag<= 1'b0;
			end
			if(!(odata_3_9__gfpga === odata_3_9__bench) && !(odata_3_9__bench === 1'bx)) begin
				odata_3_9__flag <= 1'b1;
			end else begin
				odata_3_9__flag<= 1'b0;
			end
			if(!(odata_3_10__gfpga === odata_3_10__bench) && !(odata_3_10__bench === 1'bx)) begin
				odata_3_10__flag <= 1'b1;
			end else begin
				odata_3_10__flag<= 1'b0;
			end
			if(!(odata_3_11__gfpga === odata_3_11__bench) && !(odata_3_11__bench === 1'bx)) begin
				odata_3_11__flag <= 1'b1;
			end else begin
				odata_3_11__flag<= 1'b0;
			end
			if(!(odata_3_12__gfpga === odata_3_12__bench) && !(odata_3_12__bench === 1'bx)) begin
				odata_3_12__flag <= 1'b1;
			end else begin
				odata_3_12__flag<= 1'b0;
			end
			if(!(odata_3_13__gfpga === odata_3_13__bench) && !(odata_3_13__bench === 1'bx)) begin
				odata_3_13__flag <= 1'b1;
			end else begin
				odata_3_13__flag<= 1'b0;
			end
			if(!(odata_3_14__gfpga === odata_3_14__bench) && !(odata_3_14__bench === 1'bx)) begin
				odata_3_14__flag <= 1'b1;
			end else begin
				odata_3_14__flag<= 1'b0;
			end
			if(!(odata_3_15__gfpga === odata_3_15__bench) && !(odata_3_15__bench === 1'bx)) begin
				odata_3_15__flag <= 1'b1;
			end else begin
				odata_3_15__flag<= 1'b0;
			end
			if(!(odata_3_16__gfpga === odata_3_16__bench) && !(odata_3_16__bench === 1'bx)) begin
				odata_3_16__flag <= 1'b1;
			end else begin
				odata_3_16__flag<= 1'b0;
			end
			if(!(odata_3_17__gfpga === odata_3_17__bench) && !(odata_3_17__bench === 1'bx)) begin
				odata_3_17__flag <= 1'b1;
			end else begin
				odata_3_17__flag<= 1'b0;
			end
			if(!(odata_3_18__gfpga === odata_3_18__bench) && !(odata_3_18__bench === 1'bx)) begin
				odata_3_18__flag <= 1'b1;
			end else begin
				odata_3_18__flag<= 1'b0;
			end
			if(!(odata_3_19__gfpga === odata_3_19__bench) && !(odata_3_19__bench === 1'bx)) begin
				odata_3_19__flag <= 1'b1;
			end else begin
				odata_3_19__flag<= 1'b0;
			end
			if(!(odata_3_20__gfpga === odata_3_20__bench) && !(odata_3_20__bench === 1'bx)) begin
				odata_3_20__flag <= 1'b1;
			end else begin
				odata_3_20__flag<= 1'b0;
			end
			if(!(odata_3_21__gfpga === odata_3_21__bench) && !(odata_3_21__bench === 1'bx)) begin
				odata_3_21__flag <= 1'b1;
			end else begin
				odata_3_21__flag<= 1'b0;
			end
			if(!(odata_3_22__gfpga === odata_3_22__bench) && !(odata_3_22__bench === 1'bx)) begin
				odata_3_22__flag <= 1'b1;
			end else begin
				odata_3_22__flag<= 1'b0;
			end
			if(!(odata_3_23__gfpga === odata_3_23__bench) && !(odata_3_23__bench === 1'bx)) begin
				odata_3_23__flag <= 1'b1;
			end else begin
				odata_3_23__flag<= 1'b0;
			end
			if(!(odata_3_24__gfpga === odata_3_24__bench) && !(odata_3_24__bench === 1'bx)) begin
				odata_3_24__flag <= 1'b1;
			end else begin
				odata_3_24__flag<= 1'b0;
			end
			if(!(odata_3_25__gfpga === odata_3_25__bench) && !(odata_3_25__bench === 1'bx)) begin
				odata_3_25__flag <= 1'b1;
			end else begin
				odata_3_25__flag<= 1'b0;
			end
			if(!(odata_3_26__gfpga === odata_3_26__bench) && !(odata_3_26__bench === 1'bx)) begin
				odata_3_26__flag <= 1'b1;
			end else begin
				odata_3_26__flag<= 1'b0;
			end
			if(!(odata_3_27__gfpga === odata_3_27__bench) && !(odata_3_27__bench === 1'bx)) begin
				odata_3_27__flag <= 1'b1;
			end else begin
				odata_3_27__flag<= 1'b0;
			end
			if(!(odata_3_28__gfpga === odata_3_28__bench) && !(odata_3_28__bench === 1'bx)) begin
				odata_3_28__flag <= 1'b1;
			end else begin
				odata_3_28__flag<= 1'b0;
			end
			if(!(odata_3_29__gfpga === odata_3_29__bench) && !(odata_3_29__bench === 1'bx)) begin
				odata_3_29__flag <= 1'b1;
			end else begin
				odata_3_29__flag<= 1'b0;
			end
			if(!(odata_3_30__gfpga === odata_3_30__bench) && !(odata_3_30__bench === 1'bx)) begin
				odata_3_30__flag <= 1'b1;
			end else begin
				odata_3_30__flag<= 1'b0;
			end
			if(!(odata_3_31__gfpga === odata_3_31__bench) && !(odata_3_31__bench === 1'bx)) begin
				odata_3_31__flag <= 1'b1;
			end else begin
				odata_3_31__flag<= 1'b0;
			end
			if(!(odata_3_32__gfpga === odata_3_32__bench) && !(odata_3_32__bench === 1'bx)) begin
				odata_3_32__flag <= 1'b1;
			end else begin
				odata_3_32__flag<= 1'b0;
			end
			if(!(odata_3_33__gfpga === odata_3_33__bench) && !(odata_3_33__bench === 1'bx)) begin
				odata_3_33__flag <= 1'b1;
			end else begin
				odata_3_33__flag<= 1'b0;
			end
			if(!(odata_3_34__gfpga === odata_3_34__bench) && !(odata_3_34__bench === 1'bx)) begin
				odata_3_34__flag <= 1'b1;
			end else begin
				odata_3_34__flag<= 1'b0;
			end
			if(!(ovalid_3_gfpga === ovalid_3_bench) && !(ovalid_3_bench === 1'bx)) begin
				ovalid_3_flag <= 1'b1;
			end else begin
				ovalid_3_flag<= 1'b0;
			end
			if(!(ovch_3_gfpga === ovch_3_bench) && !(ovch_3_bench === 1'bx)) begin
				ovch_3_flag <= 1'b1;
			end else begin
				ovch_3_flag<= 1'b0;
			end
			if(!(odata_4_0__gfpga === odata_4_0__bench) && !(odata_4_0__bench === 1'bx)) begin
				odata_4_0__flag <= 1'b1;
			end else begin
				odata_4_0__flag<= 1'b0;
			end
			if(!(odata_4_1__gfpga === odata_4_1__bench) && !(odata_4_1__bench === 1'bx)) begin
				odata_4_1__flag <= 1'b1;
			end else begin
				odata_4_1__flag<= 1'b0;
			end
			if(!(odata_4_2__gfpga === odata_4_2__bench) && !(odata_4_2__bench === 1'bx)) begin
				odata_4_2__flag <= 1'b1;
			end else begin
				odata_4_2__flag<= 1'b0;
			end
			if(!(odata_4_3__gfpga === odata_4_3__bench) && !(odata_4_3__bench === 1'bx)) begin
				odata_4_3__flag <= 1'b1;
			end else begin
				odata_4_3__flag<= 1'b0;
			end
			if(!(odata_4_4__gfpga === odata_4_4__bench) && !(odata_4_4__bench === 1'bx)) begin
				odata_4_4__flag <= 1'b1;
			end else begin
				odata_4_4__flag<= 1'b0;
			end
			if(!(odata_4_5__gfpga === odata_4_5__bench) && !(odata_4_5__bench === 1'bx)) begin
				odata_4_5__flag <= 1'b1;
			end else begin
				odata_4_5__flag<= 1'b0;
			end
			if(!(odata_4_6__gfpga === odata_4_6__bench) && !(odata_4_6__bench === 1'bx)) begin
				odata_4_6__flag <= 1'b1;
			end else begin
				odata_4_6__flag<= 1'b0;
			end
			if(!(odata_4_7__gfpga === odata_4_7__bench) && !(odata_4_7__bench === 1'bx)) begin
				odata_4_7__flag <= 1'b1;
			end else begin
				odata_4_7__flag<= 1'b0;
			end
			if(!(odata_4_8__gfpga === odata_4_8__bench) && !(odata_4_8__bench === 1'bx)) begin
				odata_4_8__flag <= 1'b1;
			end else begin
				odata_4_8__flag<= 1'b0;
			end
			if(!(odata_4_9__gfpga === odata_4_9__bench) && !(odata_4_9__bench === 1'bx)) begin
				odata_4_9__flag <= 1'b1;
			end else begin
				odata_4_9__flag<= 1'b0;
			end
			if(!(odata_4_10__gfpga === odata_4_10__bench) && !(odata_4_10__bench === 1'bx)) begin
				odata_4_10__flag <= 1'b1;
			end else begin
				odata_4_10__flag<= 1'b0;
			end
			if(!(odata_4_11__gfpga === odata_4_11__bench) && !(odata_4_11__bench === 1'bx)) begin
				odata_4_11__flag <= 1'b1;
			end else begin
				odata_4_11__flag<= 1'b0;
			end
			if(!(odata_4_12__gfpga === odata_4_12__bench) && !(odata_4_12__bench === 1'bx)) begin
				odata_4_12__flag <= 1'b1;
			end else begin
				odata_4_12__flag<= 1'b0;
			end
			if(!(odata_4_13__gfpga === odata_4_13__bench) && !(odata_4_13__bench === 1'bx)) begin
				odata_4_13__flag <= 1'b1;
			end else begin
				odata_4_13__flag<= 1'b0;
			end
			if(!(odata_4_14__gfpga === odata_4_14__bench) && !(odata_4_14__bench === 1'bx)) begin
				odata_4_14__flag <= 1'b1;
			end else begin
				odata_4_14__flag<= 1'b0;
			end
			if(!(odata_4_15__gfpga === odata_4_15__bench) && !(odata_4_15__bench === 1'bx)) begin
				odata_4_15__flag <= 1'b1;
			end else begin
				odata_4_15__flag<= 1'b0;
			end
			if(!(odata_4_16__gfpga === odata_4_16__bench) && !(odata_4_16__bench === 1'bx)) begin
				odata_4_16__flag <= 1'b1;
			end else begin
				odata_4_16__flag<= 1'b0;
			end
			if(!(odata_4_17__gfpga === odata_4_17__bench) && !(odata_4_17__bench === 1'bx)) begin
				odata_4_17__flag <= 1'b1;
			end else begin
				odata_4_17__flag<= 1'b0;
			end
			if(!(odata_4_18__gfpga === odata_4_18__bench) && !(odata_4_18__bench === 1'bx)) begin
				odata_4_18__flag <= 1'b1;
			end else begin
				odata_4_18__flag<= 1'b0;
			end
			if(!(odata_4_19__gfpga === odata_4_19__bench) && !(odata_4_19__bench === 1'bx)) begin
				odata_4_19__flag <= 1'b1;
			end else begin
				odata_4_19__flag<= 1'b0;
			end
			if(!(odata_4_20__gfpga === odata_4_20__bench) && !(odata_4_20__bench === 1'bx)) begin
				odata_4_20__flag <= 1'b1;
			end else begin
				odata_4_20__flag<= 1'b0;
			end
			if(!(odata_4_21__gfpga === odata_4_21__bench) && !(odata_4_21__bench === 1'bx)) begin
				odata_4_21__flag <= 1'b1;
			end else begin
				odata_4_21__flag<= 1'b0;
			end
			if(!(odata_4_22__gfpga === odata_4_22__bench) && !(odata_4_22__bench === 1'bx)) begin
				odata_4_22__flag <= 1'b1;
			end else begin
				odata_4_22__flag<= 1'b0;
			end
			if(!(odata_4_23__gfpga === odata_4_23__bench) && !(odata_4_23__bench === 1'bx)) begin
				odata_4_23__flag <= 1'b1;
			end else begin
				odata_4_23__flag<= 1'b0;
			end
			if(!(odata_4_24__gfpga === odata_4_24__bench) && !(odata_4_24__bench === 1'bx)) begin
				odata_4_24__flag <= 1'b1;
			end else begin
				odata_4_24__flag<= 1'b0;
			end
			if(!(odata_4_25__gfpga === odata_4_25__bench) && !(odata_4_25__bench === 1'bx)) begin
				odata_4_25__flag <= 1'b1;
			end else begin
				odata_4_25__flag<= 1'b0;
			end
			if(!(odata_4_26__gfpga === odata_4_26__bench) && !(odata_4_26__bench === 1'bx)) begin
				odata_4_26__flag <= 1'b1;
			end else begin
				odata_4_26__flag<= 1'b0;
			end
			if(!(odata_4_27__gfpga === odata_4_27__bench) && !(odata_4_27__bench === 1'bx)) begin
				odata_4_27__flag <= 1'b1;
			end else begin
				odata_4_27__flag<= 1'b0;
			end
			if(!(odata_4_28__gfpga === odata_4_28__bench) && !(odata_4_28__bench === 1'bx)) begin
				odata_4_28__flag <= 1'b1;
			end else begin
				odata_4_28__flag<= 1'b0;
			end
			if(!(odata_4_29__gfpga === odata_4_29__bench) && !(odata_4_29__bench === 1'bx)) begin
				odata_4_29__flag <= 1'b1;
			end else begin
				odata_4_29__flag<= 1'b0;
			end
			if(!(odata_4_30__gfpga === odata_4_30__bench) && !(odata_4_30__bench === 1'bx)) begin
				odata_4_30__flag <= 1'b1;
			end else begin
				odata_4_30__flag<= 1'b0;
			end
			if(!(odata_4_31__gfpga === odata_4_31__bench) && !(odata_4_31__bench === 1'bx)) begin
				odata_4_31__flag <= 1'b1;
			end else begin
				odata_4_31__flag<= 1'b0;
			end
			if(!(odata_4_32__gfpga === odata_4_32__bench) && !(odata_4_32__bench === 1'bx)) begin
				odata_4_32__flag <= 1'b1;
			end else begin
				odata_4_32__flag<= 1'b0;
			end
			if(!(odata_4_33__gfpga === odata_4_33__bench) && !(odata_4_33__bench === 1'bx)) begin
				odata_4_33__flag <= 1'b1;
			end else begin
				odata_4_33__flag<= 1'b0;
			end
			if(!(odata_4_34__gfpga === odata_4_34__bench) && !(odata_4_34__bench === 1'bx)) begin
				odata_4_34__flag <= 1'b1;
			end else begin
				odata_4_34__flag<= 1'b0;
			end
			if(!(ovalid_4_gfpga === ovalid_4_bench) && !(ovalid_4_bench === 1'bx)) begin
				ovalid_4_flag <= 1'b1;
			end else begin
				ovalid_4_flag<= 1'b0;
			end
			if(!(ovch_4_gfpga === ovch_4_bench) && !(ovch_4_bench === 1'bx)) begin
				ovch_4_flag <= 1'b1;
			end else begin
				ovch_4_flag<= 1'b0;
			end
		end
	end

	always@(posedge oack_0_0__flag) begin
		if(oack_0_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on oack_0_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge oack_0_1__flag) begin
		if(oack_0_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on oack_0_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge ordy_0_0__flag) begin
		if(ordy_0_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on ordy_0_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge ordy_0_1__flag) begin
		if(ordy_0_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on ordy_0_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge olck_0_0__flag) begin
		if(olck_0_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on olck_0_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge olck_0_1__flag) begin
		if(olck_0_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on olck_0_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge oack_1_0__flag) begin
		if(oack_1_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on oack_1_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge oack_1_1__flag) begin
		if(oack_1_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on oack_1_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge ordy_1_0__flag) begin
		if(ordy_1_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on ordy_1_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge ordy_1_1__flag) begin
		if(ordy_1_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on ordy_1_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge olck_1_0__flag) begin
		if(olck_1_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on olck_1_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge olck_1_1__flag) begin
		if(olck_1_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on olck_1_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge oack_2_0__flag) begin
		if(oack_2_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on oack_2_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge oack_2_1__flag) begin
		if(oack_2_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on oack_2_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge ordy_2_0__flag) begin
		if(ordy_2_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on ordy_2_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge ordy_2_1__flag) begin
		if(ordy_2_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on ordy_2_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge olck_2_0__flag) begin
		if(olck_2_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on olck_2_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge olck_2_1__flag) begin
		if(olck_2_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on olck_2_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge oack_3_0__flag) begin
		if(oack_3_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on oack_3_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge oack_3_1__flag) begin
		if(oack_3_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on oack_3_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge ordy_3_0__flag) begin
		if(ordy_3_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on ordy_3_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge ordy_3_1__flag) begin
		if(ordy_3_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on ordy_3_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge olck_3_0__flag) begin
		if(olck_3_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on olck_3_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge olck_3_1__flag) begin
		if(olck_3_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on olck_3_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge oack_4_0__flag) begin
		if(oack_4_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on oack_4_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge oack_4_1__flag) begin
		if(oack_4_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on oack_4_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge ordy_4_0__flag) begin
		if(ordy_4_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on ordy_4_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge ordy_4_1__flag) begin
		if(ordy_4_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on ordy_4_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge olck_4_0__flag) begin
		if(olck_4_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on olck_4_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge olck_4_1__flag) begin
		if(olck_4_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on olck_4_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_0__flag) begin
		if(odata_0_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_1__flag) begin
		if(odata_0_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_2__flag) begin
		if(odata_0_2__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_2__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_3__flag) begin
		if(odata_0_3__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_3__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_4__flag) begin
		if(odata_0_4__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_4__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_5__flag) begin
		if(odata_0_5__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_5__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_6__flag) begin
		if(odata_0_6__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_6__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_7__flag) begin
		if(odata_0_7__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_7__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_8__flag) begin
		if(odata_0_8__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_8__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_9__flag) begin
		if(odata_0_9__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_9__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_10__flag) begin
		if(odata_0_10__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_10__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_11__flag) begin
		if(odata_0_11__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_11__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_12__flag) begin
		if(odata_0_12__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_12__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_13__flag) begin
		if(odata_0_13__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_13__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_14__flag) begin
		if(odata_0_14__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_14__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_15__flag) begin
		if(odata_0_15__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_15__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_16__flag) begin
		if(odata_0_16__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_16__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_17__flag) begin
		if(odata_0_17__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_17__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_18__flag) begin
		if(odata_0_18__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_18__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_19__flag) begin
		if(odata_0_19__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_19__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_20__flag) begin
		if(odata_0_20__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_20__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_21__flag) begin
		if(odata_0_21__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_21__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_22__flag) begin
		if(odata_0_22__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_22__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_23__flag) begin
		if(odata_0_23__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_23__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_24__flag) begin
		if(odata_0_24__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_24__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_25__flag) begin
		if(odata_0_25__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_25__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_26__flag) begin
		if(odata_0_26__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_26__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_27__flag) begin
		if(odata_0_27__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_27__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_28__flag) begin
		if(odata_0_28__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_28__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_29__flag) begin
		if(odata_0_29__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_29__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_30__flag) begin
		if(odata_0_30__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_30__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_31__flag) begin
		if(odata_0_31__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_31__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_32__flag) begin
		if(odata_0_32__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_32__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_33__flag) begin
		if(odata_0_33__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_33__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_0_34__flag) begin
		if(odata_0_34__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_0_34__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge ovalid_0_flag) begin
		if(ovalid_0_flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on ovalid_0_gfpga at time = %t", $realtime);
		end
	end

	always@(posedge ovch_0_flag) begin
		if(ovch_0_flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on ovch_0_gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_0__flag) begin
		if(odata_1_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_1__flag) begin
		if(odata_1_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_2__flag) begin
		if(odata_1_2__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_2__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_3__flag) begin
		if(odata_1_3__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_3__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_4__flag) begin
		if(odata_1_4__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_4__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_5__flag) begin
		if(odata_1_5__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_5__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_6__flag) begin
		if(odata_1_6__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_6__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_7__flag) begin
		if(odata_1_7__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_7__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_8__flag) begin
		if(odata_1_8__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_8__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_9__flag) begin
		if(odata_1_9__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_9__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_10__flag) begin
		if(odata_1_10__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_10__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_11__flag) begin
		if(odata_1_11__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_11__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_12__flag) begin
		if(odata_1_12__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_12__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_13__flag) begin
		if(odata_1_13__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_13__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_14__flag) begin
		if(odata_1_14__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_14__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_15__flag) begin
		if(odata_1_15__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_15__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_16__flag) begin
		if(odata_1_16__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_16__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_17__flag) begin
		if(odata_1_17__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_17__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_18__flag) begin
		if(odata_1_18__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_18__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_19__flag) begin
		if(odata_1_19__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_19__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_20__flag) begin
		if(odata_1_20__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_20__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_21__flag) begin
		if(odata_1_21__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_21__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_22__flag) begin
		if(odata_1_22__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_22__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_23__flag) begin
		if(odata_1_23__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_23__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_24__flag) begin
		if(odata_1_24__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_24__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_25__flag) begin
		if(odata_1_25__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_25__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_26__flag) begin
		if(odata_1_26__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_26__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_27__flag) begin
		if(odata_1_27__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_27__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_28__flag) begin
		if(odata_1_28__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_28__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_29__flag) begin
		if(odata_1_29__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_29__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_30__flag) begin
		if(odata_1_30__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_30__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_31__flag) begin
		if(odata_1_31__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_31__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_32__flag) begin
		if(odata_1_32__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_32__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_33__flag) begin
		if(odata_1_33__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_33__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_1_34__flag) begin
		if(odata_1_34__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_1_34__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge ovalid_1_flag) begin
		if(ovalid_1_flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on ovalid_1_gfpga at time = %t", $realtime);
		end
	end

	always@(posedge ovch_1_flag) begin
		if(ovch_1_flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on ovch_1_gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_0__flag) begin
		if(odata_2_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_1__flag) begin
		if(odata_2_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_2__flag) begin
		if(odata_2_2__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_2__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_3__flag) begin
		if(odata_2_3__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_3__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_4__flag) begin
		if(odata_2_4__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_4__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_5__flag) begin
		if(odata_2_5__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_5__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_6__flag) begin
		if(odata_2_6__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_6__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_7__flag) begin
		if(odata_2_7__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_7__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_8__flag) begin
		if(odata_2_8__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_8__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_9__flag) begin
		if(odata_2_9__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_9__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_10__flag) begin
		if(odata_2_10__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_10__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_11__flag) begin
		if(odata_2_11__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_11__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_12__flag) begin
		if(odata_2_12__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_12__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_13__flag) begin
		if(odata_2_13__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_13__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_14__flag) begin
		if(odata_2_14__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_14__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_15__flag) begin
		if(odata_2_15__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_15__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_16__flag) begin
		if(odata_2_16__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_16__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_17__flag) begin
		if(odata_2_17__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_17__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_18__flag) begin
		if(odata_2_18__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_18__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_19__flag) begin
		if(odata_2_19__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_19__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_20__flag) begin
		if(odata_2_20__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_20__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_21__flag) begin
		if(odata_2_21__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_21__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_22__flag) begin
		if(odata_2_22__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_22__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_23__flag) begin
		if(odata_2_23__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_23__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_24__flag) begin
		if(odata_2_24__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_24__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_25__flag) begin
		if(odata_2_25__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_25__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_26__flag) begin
		if(odata_2_26__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_26__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_27__flag) begin
		if(odata_2_27__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_27__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_28__flag) begin
		if(odata_2_28__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_28__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_29__flag) begin
		if(odata_2_29__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_29__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_30__flag) begin
		if(odata_2_30__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_30__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_31__flag) begin
		if(odata_2_31__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_31__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_32__flag) begin
		if(odata_2_32__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_32__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_33__flag) begin
		if(odata_2_33__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_33__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_2_34__flag) begin
		if(odata_2_34__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_2_34__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge ovalid_2_flag) begin
		if(ovalid_2_flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on ovalid_2_gfpga at time = %t", $realtime);
		end
	end

	always@(posedge ovch_2_flag) begin
		if(ovch_2_flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on ovch_2_gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_0__flag) begin
		if(odata_3_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_1__flag) begin
		if(odata_3_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_2__flag) begin
		if(odata_3_2__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_2__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_3__flag) begin
		if(odata_3_3__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_3__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_4__flag) begin
		if(odata_3_4__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_4__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_5__flag) begin
		if(odata_3_5__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_5__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_6__flag) begin
		if(odata_3_6__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_6__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_7__flag) begin
		if(odata_3_7__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_7__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_8__flag) begin
		if(odata_3_8__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_8__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_9__flag) begin
		if(odata_3_9__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_9__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_10__flag) begin
		if(odata_3_10__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_10__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_11__flag) begin
		if(odata_3_11__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_11__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_12__flag) begin
		if(odata_3_12__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_12__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_13__flag) begin
		if(odata_3_13__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_13__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_14__flag) begin
		if(odata_3_14__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_14__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_15__flag) begin
		if(odata_3_15__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_15__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_16__flag) begin
		if(odata_3_16__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_16__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_17__flag) begin
		if(odata_3_17__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_17__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_18__flag) begin
		if(odata_3_18__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_18__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_19__flag) begin
		if(odata_3_19__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_19__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_20__flag) begin
		if(odata_3_20__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_20__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_21__flag) begin
		if(odata_3_21__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_21__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_22__flag) begin
		if(odata_3_22__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_22__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_23__flag) begin
		if(odata_3_23__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_23__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_24__flag) begin
		if(odata_3_24__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_24__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_25__flag) begin
		if(odata_3_25__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_25__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_26__flag) begin
		if(odata_3_26__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_26__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_27__flag) begin
		if(odata_3_27__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_27__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_28__flag) begin
		if(odata_3_28__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_28__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_29__flag) begin
		if(odata_3_29__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_29__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_30__flag) begin
		if(odata_3_30__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_30__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_31__flag) begin
		if(odata_3_31__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_31__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_32__flag) begin
		if(odata_3_32__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_32__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_33__flag) begin
		if(odata_3_33__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_33__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_3_34__flag) begin
		if(odata_3_34__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_3_34__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge ovalid_3_flag) begin
		if(ovalid_3_flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on ovalid_3_gfpga at time = %t", $realtime);
		end
	end

	always@(posedge ovch_3_flag) begin
		if(ovch_3_flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on ovch_3_gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_0__flag) begin
		if(odata_4_0__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_0__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_1__flag) begin
		if(odata_4_1__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_1__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_2__flag) begin
		if(odata_4_2__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_2__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_3__flag) begin
		if(odata_4_3__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_3__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_4__flag) begin
		if(odata_4_4__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_4__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_5__flag) begin
		if(odata_4_5__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_5__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_6__flag) begin
		if(odata_4_6__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_6__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_7__flag) begin
		if(odata_4_7__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_7__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_8__flag) begin
		if(odata_4_8__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_8__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_9__flag) begin
		if(odata_4_9__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_9__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_10__flag) begin
		if(odata_4_10__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_10__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_11__flag) begin
		if(odata_4_11__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_11__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_12__flag) begin
		if(odata_4_12__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_12__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_13__flag) begin
		if(odata_4_13__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_13__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_14__flag) begin
		if(odata_4_14__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_14__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_15__flag) begin
		if(odata_4_15__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_15__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_16__flag) begin
		if(odata_4_16__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_16__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_17__flag) begin
		if(odata_4_17__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_17__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_18__flag) begin
		if(odata_4_18__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_18__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_19__flag) begin
		if(odata_4_19__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_19__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_20__flag) begin
		if(odata_4_20__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_20__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_21__flag) begin
		if(odata_4_21__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_21__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_22__flag) begin
		if(odata_4_22__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_22__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_23__flag) begin
		if(odata_4_23__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_23__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_24__flag) begin
		if(odata_4_24__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_24__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_25__flag) begin
		if(odata_4_25__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_25__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_26__flag) begin
		if(odata_4_26__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_26__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_27__flag) begin
		if(odata_4_27__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_27__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_28__flag) begin
		if(odata_4_28__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_28__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_29__flag) begin
		if(odata_4_29__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_29__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_30__flag) begin
		if(odata_4_30__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_30__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_31__flag) begin
		if(odata_4_31__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_31__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_32__flag) begin
		if(odata_4_32__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_32__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_33__flag) begin
		if(odata_4_33__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_33__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge odata_4_34__flag) begin
		if(odata_4_34__flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on odata_4_34__gfpga at time = %t", $realtime);
		end
	end

	always@(posedge ovalid_4_flag) begin
		if(ovalid_4_flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on ovalid_4_gfpga at time = %t", $realtime);
		end
	end

	always@(posedge ovch_4_flag) begin
		if(ovch_4_flag) begin
			nb_error = nb_error + 1;
			$display("Mismatch on ovch_4_gfpga at time = %t", $realtime);
		end
	end


// ----- Begin output waveform to VCD file-------
	initial begin
		$dumpfile("router_bench_formal.vcd");
		$dumpvars(1, router_bench_top_formal_verification_random_tb);
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
// ----- END Verilog module for router_bench_top_formal_verification_random_tb -----

