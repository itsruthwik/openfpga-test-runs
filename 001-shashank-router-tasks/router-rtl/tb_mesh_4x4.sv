`timescale 1ns/1ps

module tb_mesh_4x4();

// Parameters
parameter NUM_PORTS = 5;
parameter FLIT_WIDTH = 64;
parameter DEST_WIDTH = 4;

parameter TDATA_WIDTH = 128;
parameter TID_WIDTH = 2;
parameter TDEST_WIDTH = 4;

parameter RTR_ADDR_WIDTH = 4;

parameter NOC_NUM_ENDPOINTS = 16;
parameter ROUTE_WIDTH = 3;

parameter SERIALIZATION_FACTOR = 2;
parameter CLKCROSS_FACTOR = 1;
parameter SINGLE_CLOCK = 1;

// Clock and reset
reg clk_noc;
reg clk_usr;
reg rst_n;

// Input ports for all 16 routers (0-15)
reg                           axis_in_tvalid_0, axis_in_tvalid_1, axis_in_tvalid_2, axis_in_tvalid_3;
reg                           axis_in_tvalid_4, axis_in_tvalid_5, axis_in_tvalid_6, axis_in_tvalid_7;
reg                           axis_in_tvalid_8, axis_in_tvalid_9, axis_in_tvalid_10, axis_in_tvalid_11;
reg                           axis_in_tvalid_12, axis_in_tvalid_13, axis_in_tvalid_14, axis_in_tvalid_15;

wire                          axis_in_tready_0, axis_in_tready_1, axis_in_tready_2, axis_in_tready_3;
wire                          axis_in_tready_4, axis_in_tready_5, axis_in_tready_6, axis_in_tready_7;
wire                          axis_in_tready_8, axis_in_tready_9, axis_in_tready_10, axis_in_tready_11;
wire                          axis_in_tready_12, axis_in_tready_13, axis_in_tready_14, axis_in_tready_15;

reg   [TDATA_WIDTH - 1 : 0]   axis_in_tdata_0, axis_in_tdata_1, axis_in_tdata_2, axis_in_tdata_3;
reg   [TDATA_WIDTH - 1 : 0]   axis_in_tdata_4, axis_in_tdata_5, axis_in_tdata_6, axis_in_tdata_7;
reg   [TDATA_WIDTH - 1 : 0]   axis_in_tdata_8, axis_in_tdata_9, axis_in_tdata_10, axis_in_tdata_11;
reg   [TDATA_WIDTH - 1 : 0]   axis_in_tdata_12, axis_in_tdata_13, axis_in_tdata_14, axis_in_tdata_15;

reg                           axis_in_tlast_0, axis_in_tlast_1, axis_in_tlast_2, axis_in_tlast_3;
reg                           axis_in_tlast_4, axis_in_tlast_5, axis_in_tlast_6, axis_in_tlast_7;
reg                           axis_in_tlast_8, axis_in_tlast_9, axis_in_tlast_10, axis_in_tlast_11;
reg                           axis_in_tlast_12, axis_in_tlast_13, axis_in_tlast_14, axis_in_tlast_15;

reg   [TID_WIDTH - 1 : 0]     axis_in_tid_0, axis_in_tid_1, axis_in_tid_2, axis_in_tid_3;
reg   [TID_WIDTH - 1 : 0]     axis_in_tid_4, axis_in_tid_5, axis_in_tid_6, axis_in_tid_7;
reg   [TID_WIDTH - 1 : 0]     axis_in_tid_8, axis_in_tid_9, axis_in_tid_10, axis_in_tid_11;
reg   [TID_WIDTH - 1 : 0]     axis_in_tid_12, axis_in_tid_13, axis_in_tid_14, axis_in_tid_15;

reg   [TDEST_WIDTH - 1 : 0]   axis_in_tdest_0, axis_in_tdest_1, axis_in_tdest_2, axis_in_tdest_3;
reg   [TDEST_WIDTH - 1 : 0]   axis_in_tdest_4, axis_in_tdest_5, axis_in_tdest_6, axis_in_tdest_7;
reg   [TDEST_WIDTH - 1 : 0]   axis_in_tdest_8, axis_in_tdest_9, axis_in_tdest_10, axis_in_tdest_11;
reg   [TDEST_WIDTH - 1 : 0]   axis_in_tdest_12, axis_in_tdest_13, axis_in_tdest_14, axis_in_tdest_15;

// Output ports for all 16 routers (0-15)
wire                          axis_out_tvalid_0, axis_out_tvalid_1, axis_out_tvalid_2, axis_out_tvalid_3;
wire                          axis_out_tvalid_4, axis_out_tvalid_5, axis_out_tvalid_6, axis_out_tvalid_7;
wire                          axis_out_tvalid_8, axis_out_tvalid_9, axis_out_tvalid_10, axis_out_tvalid_11;
wire                          axis_out_tvalid_12, axis_out_tvalid_13, axis_out_tvalid_14, axis_out_tvalid_15;

reg                           axis_out_tready_0, axis_out_tready_1, axis_out_tready_2, axis_out_tready_3;
reg                           axis_out_tready_4, axis_out_tready_5, axis_out_tready_6, axis_out_tready_7;
reg                           axis_out_tready_8, axis_out_tready_9, axis_out_tready_10, axis_out_tready_11;
reg                           axis_out_tready_12, axis_out_tready_13, axis_out_tready_14, axis_out_tready_15;

wire  [TDATA_WIDTH - 1 : 0]   axis_out_tdata_0, axis_out_tdata_1, axis_out_tdata_2, axis_out_tdata_3;
wire  [TDATA_WIDTH - 1 : 0]   axis_out_tdata_4, axis_out_tdata_5, axis_out_tdata_6, axis_out_tdata_7;
wire  [TDATA_WIDTH - 1 : 0]   axis_out_tdata_8, axis_out_tdata_9, axis_out_tdata_10, axis_out_tdata_11;
wire  [TDATA_WIDTH - 1 : 0]   axis_out_tdata_12, axis_out_tdata_13, axis_out_tdata_14, axis_out_tdata_15;

wire                          axis_out_tlast_0, axis_out_tlast_1, axis_out_tlast_2, axis_out_tlast_3;
wire                          axis_out_tlast_4, axis_out_tlast_5, axis_out_tlast_6, axis_out_tlast_7;
wire                          axis_out_tlast_8, axis_out_tlast_9, axis_out_tlast_10, axis_out_tlast_11;
wire                          axis_out_tlast_12, axis_out_tlast_13, axis_out_tlast_14, axis_out_tlast_15;

wire  [TID_WIDTH - 1 : 0]     axis_out_tid_0, axis_out_tid_1, axis_out_tid_2, axis_out_tid_3;
wire  [TID_WIDTH - 1 : 0]     axis_out_tid_4, axis_out_tid_5, axis_out_tid_6, axis_out_tid_7;
wire  [TID_WIDTH - 1 : 0]     axis_out_tid_8, axis_out_tid_9, axis_out_tid_10, axis_out_tid_11;
wire  [TID_WIDTH - 1 : 0]     axis_out_tid_12, axis_out_tid_13, axis_out_tid_14, axis_out_tid_15;

wire  [TDEST_WIDTH - 1 : 0]   axis_out_tdest_0, axis_out_tdest_1, axis_out_tdest_2, axis_out_tdest_3;
wire  [TDEST_WIDTH - 1 : 0]   axis_out_tdest_4, axis_out_tdest_5, axis_out_tdest_6, axis_out_tdest_7;
wire  [TDEST_WIDTH - 1 : 0]   axis_out_tdest_8, axis_out_tdest_9, axis_out_tdest_10, axis_out_tdest_11;
wire  [TDEST_WIDTH - 1 : 0]   axis_out_tdest_12, axis_out_tdest_13, axis_out_tdest_14, axis_out_tdest_15;

// Instantiate the mesh_4x4 module
mesh_4x4 #(
    .NUM_PORTS(NUM_PORTS),
    .NOC_NUM_ENDPOINTS(NOC_NUM_ENDPOINTS),
    .FLIT_WIDTH(FLIT_WIDTH),
    .DEST_WIDTH(DEST_WIDTH),
    .TDATA_WIDTH(TDATA_WIDTH),
    .TID_WIDTH(TID_WIDTH),
    .TDEST_WIDTH(TDEST_WIDTH),
    .SERIALIZATION_FACTOR(SERIALIZATION_FACTOR),
    .CLKCROSS_FACTOR(CLKCROSS_FACTOR),
    .SINGLE_CLOCK(SINGLE_CLOCK),
    .ROUTE_WIDTH(ROUTE_WIDTH)
) mesh_4x4_inst (
    .clk_noc(clk_noc),
    .clk_usr(clk_usr),
    .rst_n(rst_n),
    
    .axis_in_tvalid_0(axis_in_tvalid_0),
    .axis_in_tvalid_1(axis_in_tvalid_1),
    .axis_in_tvalid_2(axis_in_tvalid_2),
    .axis_in_tvalid_3(axis_in_tvalid_3),
    .axis_in_tvalid_4(axis_in_tvalid_4),
    .axis_in_tvalid_5(axis_in_tvalid_5),
    .axis_in_tvalid_6(axis_in_tvalid_6),
    .axis_in_tvalid_7(axis_in_tvalid_7),
    .axis_in_tvalid_8(axis_in_tvalid_8),
    .axis_in_tvalid_9(axis_in_tvalid_9),
    .axis_in_tvalid_10(axis_in_tvalid_10),
    .axis_in_tvalid_11(axis_in_tvalid_11),
    .axis_in_tvalid_12(axis_in_tvalid_12),
    .axis_in_tvalid_13(axis_in_tvalid_13),
    .axis_in_tvalid_14(axis_in_tvalid_14),
    .axis_in_tvalid_15(axis_in_tvalid_15),
    
    .axis_in_tready_0(axis_in_tready_0),
    .axis_in_tready_1(axis_in_tready_1),
    .axis_in_tready_2(axis_in_tready_2),
    .axis_in_tready_3(axis_in_tready_3),
    .axis_in_tready_4(axis_in_tready_4),
    .axis_in_tready_5(axis_in_tready_5),
    .axis_in_tready_6(axis_in_tready_6),
    .axis_in_tready_7(axis_in_tready_7),
    .axis_in_tready_8(axis_in_tready_8),
    .axis_in_tready_9(axis_in_tready_9),
    .axis_in_tready_10(axis_in_tready_10),
    .axis_in_tready_11(axis_in_tready_11),
    .axis_in_tready_12(axis_in_tready_12),
    .axis_in_tready_13(axis_in_tready_13),
    .axis_in_tready_14(axis_in_tready_14),
    .axis_in_tready_15(axis_in_tready_15),
    
    .axis_in_tdata_0(axis_in_tdata_0),
    .axis_in_tdata_1(axis_in_tdata_1),
    .axis_in_tdata_2(axis_in_tdata_2),
    .axis_in_tdata_3(axis_in_tdata_3),
    .axis_in_tdata_4(axis_in_tdata_4),
    .axis_in_tdata_5(axis_in_tdata_5),
    .axis_in_tdata_6(axis_in_tdata_6),
    .axis_in_tdata_7(axis_in_tdata_7),
    .axis_in_tdata_8(axis_in_tdata_8),
    .axis_in_tdata_9(axis_in_tdata_9),
    .axis_in_tdata_10(axis_in_tdata_10),
    .axis_in_tdata_11(axis_in_tdata_11),
    .axis_in_tdata_12(axis_in_tdata_12),
    .axis_in_tdata_13(axis_in_tdata_13),
    .axis_in_tdata_14(axis_in_tdata_14),
    .axis_in_tdata_15(axis_in_tdata_15),
    
    .axis_in_tlast_0(axis_in_tlast_0),
    .axis_in_tlast_1(axis_in_tlast_1),
    .axis_in_tlast_2(axis_in_tlast_2),
    .axis_in_tlast_3(axis_in_tlast_3),
    .axis_in_tlast_4(axis_in_tlast_4),
    .axis_in_tlast_5(axis_in_tlast_5),
    .axis_in_tlast_6(axis_in_tlast_6),
    .axis_in_tlast_7(axis_in_tlast_7),
    .axis_in_tlast_8(axis_in_tlast_8),
    .axis_in_tlast_9(axis_in_tlast_9),
    .axis_in_tlast_10(axis_in_tlast_10),
    .axis_in_tlast_11(axis_in_tlast_11),
    .axis_in_tlast_12(axis_in_tlast_12),
    .axis_in_tlast_13(axis_in_tlast_13),
    .axis_in_tlast_14(axis_in_tlast_14),
    .axis_in_tlast_15(axis_in_tlast_15),
    
    .axis_in_tid_0(axis_in_tid_0),
    .axis_in_tid_1(axis_in_tid_1),
    .axis_in_tid_2(axis_in_tid_2),
    .axis_in_tid_3(axis_in_tid_3),
    .axis_in_tid_4(axis_in_tid_4),
    .axis_in_tid_5(axis_in_tid_5),
    .axis_in_tid_6(axis_in_tid_6),
    .axis_in_tid_7(axis_in_tid_7),
    .axis_in_tid_8(axis_in_tid_8),
    .axis_in_tid_9(axis_in_tid_9),
    .axis_in_tid_10(axis_in_tid_10),
    .axis_in_tid_11(axis_in_tid_11),
    .axis_in_tid_12(axis_in_tid_12),
    .axis_in_tid_13(axis_in_tid_13),
    .axis_in_tid_14(axis_in_tid_14),
    .axis_in_tid_15(axis_in_tid_15),
    
    .axis_in_tdest_0(axis_in_tdest_0),
    .axis_in_tdest_1(axis_in_tdest_1),
    .axis_in_tdest_2(axis_in_tdest_2),
    .axis_in_tdest_3(axis_in_tdest_3),
    .axis_in_tdest_4(axis_in_tdest_4),
    .axis_in_tdest_5(axis_in_tdest_5),
    .axis_in_tdest_6(axis_in_tdest_6),
    .axis_in_tdest_7(axis_in_tdest_7),
    .axis_in_tdest_8(axis_in_tdest_8),
    .axis_in_tdest_9(axis_in_tdest_9),
    .axis_in_tdest_10(axis_in_tdest_10),
    .axis_in_tdest_11(axis_in_tdest_11),
    .axis_in_tdest_12(axis_in_tdest_12),
    .axis_in_tdest_13(axis_in_tdest_13),
    .axis_in_tdest_14(axis_in_tdest_14),
    .axis_in_tdest_15(axis_in_tdest_15),
    
    .axis_out_tvalid_0(axis_out_tvalid_0),
    .axis_out_tvalid_1(axis_out_tvalid_1),
    .axis_out_tvalid_2(axis_out_tvalid_2),
    .axis_out_tvalid_3(axis_out_tvalid_3),
    .axis_out_tvalid_4(axis_out_tvalid_4),
    .axis_out_tvalid_5(axis_out_tvalid_5),
    .axis_out_tvalid_6(axis_out_tvalid_6),
    .axis_out_tvalid_7(axis_out_tvalid_7),
    .axis_out_tvalid_8(axis_out_tvalid_8),
    .axis_out_tvalid_9(axis_out_tvalid_9),
    .axis_out_tvalid_10(axis_out_tvalid_10),
    .axis_out_tvalid_11(axis_out_tvalid_11),
    .axis_out_tvalid_12(axis_out_tvalid_12),
    .axis_out_tvalid_13(axis_out_tvalid_13),
    .axis_out_tvalid_14(axis_out_tvalid_14),
    .axis_out_tvalid_15(axis_out_tvalid_15),
    
    .axis_out_tready_0(axis_out_tready_0),
    .axis_out_tready_1(axis_out_tready_1),
    .axis_out_tready_2(axis_out_tready_2),
    .axis_out_tready_3(axis_out_tready_3),
    .axis_out_tready_4(axis_out_tready_4),
    .axis_out_tready_5(axis_out_tready_5),
    .axis_out_tready_6(axis_out_tready_6),
    .axis_out_tready_7(axis_out_tready_7),
    .axis_out_tready_8(axis_out_tready_8),
    .axis_out_tready_9(axis_out_tready_9),
    .axis_out_tready_10(axis_out_tready_10),
    .axis_out_tready_11(axis_out_tready_11),
    .axis_out_tready_12(axis_out_tready_12),
    .axis_out_tready_13(axis_out_tready_13),
    .axis_out_tready_14(axis_out_tready_14),
    .axis_out_tready_15(axis_out_tready_15),
    
    .axis_out_tdata_0(axis_out_tdata_0),
    .axis_out_tdata_1(axis_out_tdata_1),
    .axis_out_tdata_2(axis_out_tdata_2),
    .axis_out_tdata_3(axis_out_tdata_3),
    .axis_out_tdata_4(axis_out_tdata_4),
    .axis_out_tdata_5(axis_out_tdata_5),
    .axis_out_tdata_6(axis_out_tdata_6),
    .axis_out_tdata_7(axis_out_tdata_7),
    .axis_out_tdata_8(axis_out_tdata_8),
    .axis_out_tdata_9(axis_out_tdata_9),
    .axis_out_tdata_10(axis_out_tdata_10),
    .axis_out_tdata_11(axis_out_tdata_11),
    .axis_out_tdata_12(axis_out_tdata_12),
    .axis_out_tdata_13(axis_out_tdata_13),
    .axis_out_tdata_14(axis_out_tdata_14),
    .axis_out_tdata_15(axis_out_tdata_15),
    
    .axis_out_tlast_0(axis_out_tlast_0),
    .axis_out_tlast_1(axis_out_tlast_1),
    .axis_out_tlast_2(axis_out_tlast_2),
    .axis_out_tlast_3(axis_out_tlast_3),
    .axis_out_tlast_4(axis_out_tlast_4),
    .axis_out_tlast_5(axis_out_tlast_5),
    .axis_out_tlast_6(axis_out_tlast_6),
    .axis_out_tlast_7(axis_out_tlast_7),
    .axis_out_tlast_8(axis_out_tlast_8),
    .axis_out_tlast_9(axis_out_tlast_9),
    .axis_out_tlast_10(axis_out_tlast_10),
    .axis_out_tlast_11(axis_out_tlast_11),
    .axis_out_tlast_12(axis_out_tlast_12),
    .axis_out_tlast_13(axis_out_tlast_13),
    .axis_out_tlast_14(axis_out_tlast_14),
    .axis_out_tlast_15(axis_out_tlast_15),
    
    .axis_out_tid_0(axis_out_tid_0),
    .axis_out_tid_1(axis_out_tid_1),
    .axis_out_tid_2(axis_out_tid_2),
    .axis_out_tid_3(axis_out_tid_3),
    .axis_out_tid_4(axis_out_tid_4),
    .axis_out_tid_5(axis_out_tid_5),
    .axis_out_tid_6(axis_out_tid_6),
    .axis_out_tid_7(axis_out_tid_7),
    .axis_out_tid_8(axis_out_tid_8),
    .axis_out_tid_9(axis_out_tid_9),
    .axis_out_tid_10(axis_out_tid_10),
    .axis_out_tid_11(axis_out_tid_11),
    .axis_out_tid_12(axis_out_tid_12),
    .axis_out_tid_13(axis_out_tid_13),
    .axis_out_tid_14(axis_out_tid_14),
    .axis_out_tid_15(axis_out_tid_15),
    
    .axis_out_tdest_0(axis_out_tdest_0),
    .axis_out_tdest_1(axis_out_tdest_1),
    .axis_out_tdest_2(axis_out_tdest_2),
    .axis_out_tdest_3(axis_out_tdest_3),
    .axis_out_tdest_4(axis_out_tdest_4),
    .axis_out_tdest_5(axis_out_tdest_5),
    .axis_out_tdest_6(axis_out_tdest_6),
    .axis_out_tdest_7(axis_out_tdest_7),
    .axis_out_tdest_8(axis_out_tdest_8),
    .axis_out_tdest_9(axis_out_tdest_9),
    .axis_out_tdest_10(axis_out_tdest_10),
    .axis_out_tdest_11(axis_out_tdest_11),
    .axis_out_tdest_12(axis_out_tdest_12),
    .axis_out_tdest_13(axis_out_tdest_13),
    .axis_out_tdest_14(axis_out_tdest_14),
    .axis_out_tdest_15(axis_out_tdest_15)
);

// Clock generation
always #5 clk_noc = ~clk_noc;
always #5 clk_usr = ~clk_usr;

// For measuring packet latency
integer cycle_counts[0:15];
reg counting[0:15];

// Test scenario
initial begin
    // Initialize clocks and reset
    clk_noc = 0;
    clk_usr = 0;
    rst_n = 1;
    
    // Initialize all router inputs
    axis_in_tvalid_0 = 0; axis_in_tvalid_1 = 0; axis_in_tvalid_2 = 0; axis_in_tvalid_3 = 0;
    axis_in_tvalid_4 = 0; axis_in_tvalid_5 = 0; axis_in_tvalid_6 = 0; axis_in_tvalid_7 = 0;
    axis_in_tvalid_8 = 0; axis_in_tvalid_9 = 0; axis_in_tvalid_10 = 0; axis_in_tvalid_11 = 0;
    axis_in_tvalid_12 = 0; axis_in_tvalid_13 = 0; axis_in_tvalid_14 = 0; axis_in_tvalid_15 = 0;
    
    axis_in_tdata_0 = 0; axis_in_tdata_1 = 0; axis_in_tdata_2 = 0; axis_in_tdata_3 = 0;
    axis_in_tdata_4 = 0; axis_in_tdata_5 = 0; axis_in_tdata_6 = 0; axis_in_tdata_7 = 0;
    axis_in_tdata_8 = 0; axis_in_tdata_9 = 0; axis_in_tdata_10 = 0; axis_in_tdata_11 = 0;
    axis_in_tdata_12 = 0; axis_in_tdata_13 = 0; axis_in_tdata_14 = 0; axis_in_tdata_15 = 0;
    
    axis_in_tlast_0 = 0; axis_in_tlast_1 = 0; axis_in_tlast_2 = 0; axis_in_tlast_3 = 0;
    axis_in_tlast_4 = 0; axis_in_tlast_5 = 0; axis_in_tlast_6 = 0; axis_in_tlast_7 = 0;
    axis_in_tlast_8 = 0; axis_in_tlast_9 = 0; axis_in_tlast_10 = 0; axis_in_tlast_11 = 0;
    axis_in_tlast_12 = 0; axis_in_tlast_13 = 0; axis_in_tlast_14 = 0; axis_in_tlast_15 = 0;
    
    axis_in_tid_0 = 0; axis_in_tid_1 = 0; axis_in_tid_2 = 0; axis_in_tid_3 = 0;
    axis_in_tid_4 = 0; axis_in_tid_5 = 0; axis_in_tid_6 = 0; axis_in_tid_7 = 0;
    axis_in_tid_8 = 0; axis_in_tid_9 = 0; axis_in_tid_10 = 0; axis_in_tid_11 = 0;
    axis_in_tid_12 = 0; axis_in_tid_13 = 0; axis_in_tid_14 = 0; axis_in_tid_15 = 0;
    
    axis_in_tdest_0 = 0; axis_in_tdest_1 = 0; axis_in_tdest_2 = 0; axis_in_tdest_3 = 0;
    axis_in_tdest_4 = 0; axis_in_tdest_5 = 0; axis_in_tdest_6 = 0; axis_in_tdest_7 = 0;
    axis_in_tdest_8 = 0; axis_in_tdest_9 = 0; axis_in_tdest_10 = 0; axis_in_tdest_11 = 0;
    axis_in_tdest_12 = 0; axis_in_tdest_13 = 0; axis_in_tdest_14 = 0; axis_in_tdest_15 = 0;
    
    axis_out_tready_0 = 0; axis_out_tready_1 = 0; axis_out_tready_2 = 0; axis_out_tready_3 = 0;
    axis_out_tready_4 = 0; axis_out_tready_5 = 0; axis_out_tready_6 = 0; axis_out_tready_7 = 0;
    axis_out_tready_8 = 0; axis_out_tready_9 = 0; axis_out_tready_10 = 0; axis_out_tready_11 = 0;
    axis_out_tready_12 = 0; axis_out_tready_13 = 0; axis_out_tready_14 = 0; axis_out_tready_15 = 0;
    



    // Initialize cycle counters
    for (int i = 0; i < 16; i++) begin
        cycle_counts[i] = 0;
        counting[i] = 0;
    end
    
    // Assert reset
    #10;
    rst_n = 0;
    #10;
    rst_n = 1;
    #10;
    
    // Enable all output ready signals
    axis_out_tready_0 = 1; axis_out_tready_1 = 1; axis_out_tready_2 = 1; axis_out_tready_3 = 1;
    axis_out_tready_4 = 1; axis_out_tready_5 = 1; axis_out_tready_6 = 1; axis_out_tready_7 = 1;
    axis_out_tready_8 = 1; axis_out_tready_9 = 1; axis_out_tready_10 = 1; axis_out_tready_11 = 1;
    axis_out_tready_12 = 1; axis_out_tready_13 = 1; axis_out_tready_14 = 1; axis_out_tready_15 = 1;
    
    #50;

    // Test 1: Send packet from router 0 to router 15 (diagonal traversal)
    $display("Test 1: Sending packet from Router 0 to Router 15");
    axis_in_tdata_0 = 128'hDEADBEEFDEADBEEFDEADBEEFDEADBEEF;
    axis_in_tvalid_0 = 1;
    axis_in_tlast_0 = 1;
    axis_in_tid_0 = 2'b00;
    axis_in_tdest_0 = 4'b1111; // Destination is router 15
    
    // Wait until router accepts the packet
    wait(axis_in_tready_0);
    @(posedge clk_noc);
    counting[0] = 1;

    #10;
    axis_in_tvalid_0 = 0;
    
    // Wait for packet to be received at destination
    wait(axis_out_tvalid_15);
    #10;
    $display("Time %0t: Packet from Router 0 to Router 15 received", $time);
    $display("Data: %h", axis_out_tdata_15);
    
    // Test 2: Send packet from router 3 to router 12
    #50;
    $display("\nTest 2: Sending packet from Router 3 to Router 12");
    axis_in_tdata_3 = 128'h12345678ABCDEF0012345678ABCDEF00;
    axis_in_tvalid_3 = 1;
    axis_in_tlast_3 = 1;
    axis_in_tid_3 = 2'b01;
    axis_in_tdest_3 = 4'b1100; // Destination is router 12
    counting[3] = 1;
    
    // Wait until router accepts the packet
    wait(axis_in_tready_3);
    #10;
    axis_in_tvalid_3 = 0;
    
    // Wait for packet to be received at destination
    wait(axis_out_tvalid_12);
    #10;
    $display("Time %0t: Packet from Router 3 to Router 12 received", $time);
    $display("Data: %h", axis_out_tdata_12);
    
    // Test 3: Multi-hop routing - send from router 5 to router 10
    #50;
    $display("\nTest 3: Sending packet from Router 5 to Router 10");
    axis_in_tdata_5 = 128'hAAAABBBBCCCCDDDDEEEEFFFF00001111;
    axis_in_tvalid_5 = 1;
    axis_in_tlast_5 = 1;
    axis_in_tid_5 = 2'b10;
    axis_in_tdest_5 = 4'b1010; // Destination is router 10
    counting[5] = 1;
    
    // Wait until router accepts the packet
    wait(axis_in_tready_5);
    #10;
    axis_in_tvalid_5 = 0;
    
    // Wait for packet to be received at destination
    wait(axis_out_tvalid_10);
    #10;
    $display("Time %0t: Packet from Router 5 to Router 10 received", $time);
    $display("Data: %h", axis_out_tdata_10);
    
    // Run simulation for a while longer
    #500;
    $display("\nEnd of simulation");
    $finish;
end

// Latency measurement for source routers
always @(posedge clk_noc) begin
    if (!rst_n) begin
        for (int i = 0; i < 16; i++) begin
            cycle_counts[i] <= 0;
            counting[i] <= 0;
        end
    end else begin
        // Router 0
        if (counting[0]) begin
            cycle_counts[0] <= cycle_counts[0] + 1;
            if (axis_out_tvalid_15) begin
                $display("Router 0->15 latency: %0d cycles", cycle_counts[0]);
                counting[0] <= 0;
            end
        end
        
        // Router 3
        if (counting[3]) begin
            cycle_counts[3] <= cycle_counts[3] + 1;
            if (axis_out_tvalid_12) begin
                $display("Router 3->12 latency: %0d cycles", cycle_counts[3]);
                counting[3] <= 0;
            end
        end
        
        // Router 5
        if (counting[5]) begin
            cycle_counts[5] <= cycle_counts[5] + 1;
            if (axis_out_tvalid_10) begin
                $display("Router 5->10 latency: %0d cycles", cycle_counts[5]);
                counting[5] <= 0;
            end
        end
    end
end

// Monitor for router outputs
always @(posedge clk_noc) begin
    // Router 0
    if (axis_out_tvalid_0 && axis_out_tready_0) begin
        $display("Time %0t: Router 0 output - Data: %h, Dest: %h", $time, axis_out_tdata_0, axis_out_tdest_0);
    end
    // Router 1
    if (axis_out_tvalid_1 && axis_out_tready_1) begin
        $display("Time %0t: Router 1 output - Data: %h, Dest: %h", $time, axis_out_tdata_1, axis_out_tdest_1);
    end
    // Router 2
    if (axis_out_tvalid_2 && axis_out_tready_2) begin
        $display("Time %0t: Router 2 output - Data: %h, Dest: %h", $time, axis_out_tdata_2, axis_out_tdest_2);
    end
    // Router 3
    if (axis_out_tvalid_3 && axis_out_tready_3) begin
        $display("Time %0t: Router 3 output - Data: %h, Dest: %h", $time, axis_out_tdata_3, axis_out_tdest_3);
    end
    // Router 4
    if (axis_out_tvalid_4 && axis_out_tready_4) begin
        $display("Time %0t: Router 4 output - Data: %h, Dest: %h", $time, axis_out_tdata_4, axis_out_tdest_4);
    end
    // Router 5
    if (axis_out_tvalid_5 && axis_out_tready_5) begin
        $display("Time %0t: Router 5 output - Data: %h, Dest: %h", $time, axis_out_tdata_5, axis_out_tdest_5);
    end
    // Router 6
    if (axis_out_tvalid_6 && axis_out_tready_6) begin
        $display("Time %0t: Router 6 output - Data: %h, Dest: %h", $time, axis_out_tdata_6, axis_out_tdest_6);
    end
    // Router 7
    if (axis_out_tvalid_7 && axis_out_tready_7) begin
        $display("Time %0t: Router 7 output - Data: %h, Dest: %h", $time, axis_out_tdata_7, axis_out_tdest_7);
    end
    // Router 8
    if (axis_out_tvalid_8 && axis_out_tready_8) begin
        $display("Time %0t: Router 8 output - Data: %h, Dest: %h", $time, axis_out_tdata_8, axis_out_tdest_8);
    end
    // Router 9
    if (axis_out_tvalid_9 && axis_out_tready_9) begin
        $display("Time %0t: Router 9 output - Data: %h, Dest: %h", $time, axis_out_tdata_9, axis_out_tdest_9);
    end
    // Router 10
    if (axis_out_tvalid_10 && axis_out_tready_10) begin
        $display("Time %0t: Router 10 output - Data: %h, Dest: %h", $time, axis_out_tdata_10, axis_out_tdest_10);
    end
    // Router 11
    if (axis_out_tvalid_11 && axis_out_tready_11) begin
        $display("Time %0t: Router 11 output - Data: %h, Dest: %h", $time, axis_out_tdata_11, axis_out_tdest_11);
    end
    // Router 12
    if (axis_out_tvalid_12 && axis_out_tready_12) begin
        $display("Time %0t: Router 12 output - Data: %h, Dest: %h", $time, axis_out_tdata_12, axis_out_tdest_12);
    end
    // Router 13
    if (axis_out_tvalid_13 && axis_out_tready_13) begin
        $display("Time %0t: Router 13 output - Data: %h, Dest: %h", $time, axis_out_tdata_13, axis_out_tdest_13);
    end
    // Router 14
    if (axis_out_tvalid_14 && axis_out_tready_14) begin
        $display("Time %0t: Router 14 output - Data: %h, Dest: %h", $time, axis_out_tdata_14, axis_out_tdest_14);
    end
    // Router 15
    if (axis_out_tvalid_15 && axis_out_tready_15) begin
        $display("Time %0t: Router 15 output - Data: %h, Dest: %h", $time, axis_out_tdata_15, axis_out_tdest_15);
    end
end

endmodule