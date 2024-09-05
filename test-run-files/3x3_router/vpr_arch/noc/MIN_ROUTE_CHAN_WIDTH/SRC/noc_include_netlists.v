//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Netlist Summary
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Tue Aug 20 23:40:04 2024
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps

// ------ Include fabric top-level netlists -----
`include "./SRC/fabric_netlists.v"

// `include "noc_output_verilog.v"
// `include "/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/dummy-router/verilog-files/dummy_router3.v"
// `include "/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/real-router/verilog-files/dummy_router3-rtl.v"
`include "/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/dummy-router/3x3_router/vpr_arch/noc/MIN_ROUTE_CHAN_WIDTH/benchmark/dummy_router.v"
`include "./benchmark/noc_bench.v"
// `include "noc_output_verilog-rtl.v"


`include "./SRC/noc_top_formal_verification.v"
`include "./SRC/noc_formal_random_top_tb.v"
// `include "./SRC/tb.v"
// `include "./SRC/noc_test.v"


