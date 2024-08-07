//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Netlist Summary
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Tue Aug  6 13:49:04 2024
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ------ Include fabric top-level netlists -----
`include "./SRC/fabric_netlists.v"

`include "router_bench_output_verilog.v"

`include "./SRC/router_bench_top_formal_verification.v"
`include "./SRC/router_bench_formal_random_top_tb.v"
