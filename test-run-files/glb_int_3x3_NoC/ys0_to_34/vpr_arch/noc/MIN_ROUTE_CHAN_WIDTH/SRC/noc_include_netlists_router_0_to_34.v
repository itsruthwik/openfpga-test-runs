//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Netlist Summary
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Wed Sep 25 16:04:00 2024
//-------------------------------------------
//----- Time scale -----
`timescale 1ns / 1ps


// ------ Include fabric top-level netlists -----
`include "./SRC/fabric_netlists.v"
`include "/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/nocgen-files/src/router_wrap1.v" //0:34


// `include "noc_output_verilog.v"
`include "./benchmark/noc_bench.v"
`include "/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/nocgen-files/src/router.v"


`include "./SRC/noc_top_formal_verification.v"
// `include "./SRC/noc_formal_random_top_tb.v"
`include "/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/nocgen-files/tb/noc_test-copy.v"