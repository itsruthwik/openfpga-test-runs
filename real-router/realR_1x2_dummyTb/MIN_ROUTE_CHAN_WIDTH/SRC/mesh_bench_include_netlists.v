//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Netlist Summary
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Thu Aug  8 18:22:31 2024
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ------ Include fabric top-level netlists -----
`include "./SRC/fabric_netlists.v"

// `include "mesh_bench_output_verilog.v"
`include "/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/real-router/verilog-files/dummy_router3-rtl.v"
`include "./benchmark/mesh_bench.v"


`include "./SRC/mesh_bench_top_formal_verification.v"
`include "./SRC/mesh_bench_formal_random_top_tb.v"
