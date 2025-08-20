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

// Simulation parameters
parameter SIM_CYCLES = 10000;
parameter PKT_INJECT_RATE = 30; // Probability of packet injection in percentage (0-100)
parameter MIN_PACKET_DELAY = 5;  // Min cycles between packets
parameter MAX_PACKET_DELAY = 20; // Max cycles between packets

// Router selection - we'll use 13 routers (0 plus 12 others)
// Router 0 will communicate with routers 1-12
localparam NUM_ACTIVE_ROUTERS = 13;
int active_routers[NUM_ACTIVE_ROUTERS] = '{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};

// Statistics tracking
typedef struct {
    int sent_packets;
    int received_packets;
    real total_latency;
    int min_latency;
    int max_latency;
    real avg_latency;
    int pending_packets;
} router_stats_t;

router_stats_t router0_to_others[NUM_ACTIVE_ROUTERS];  // Router 0 to others
router_stats_t others_to_router0[NUM_ACTIVE_ROUTERS];  // Others to Router 0

// Arrays to track packet timestamps for latency measurement
integer packet_start_time[NUM_ACTIVE_ROUTERS][NUM_ACTIVE_ROUTERS][256]; // [src][dest][packet_id]

// Task for sending a packet from router 0 to target router
task send_packet_from_router0(input int dest_router, input [TID_WIDTH-1:0] packet_id);
    int start_time;
    
    // Wait until router is ready to accept a packet
    while (!axis_in_tready_0) @(posedge clk_noc);
    
    // Create packet with random data pattern
    axis_in_tdata_0 = {$random, $random, $random, $random};
    axis_in_tvalid_0 = 1;
    axis_in_tlast_0 = 1;
    axis_in_tid_0 = packet_id;
    axis_in_tdest_0 = dest_router[TDEST_WIDTH-1:0];
    
    // Record start time for latency measurement
    start_time = $time;
    packet_start_time[0][dest_router][packet_id] = start_time;
    
    // Update statistics
    router0_to_others[dest_router].sent_packets += 1;
    router0_to_others[dest_router].pending_packets += 1;
    
    // Wait for one cycle then deassert valid
    @(posedge clk_noc);
    axis_in_tvalid_0 = 0;
endtask

// Task for sending a packet from specified router to router 0
task send_packet_from_router(input int src_router, input [TID_WIDTH-1:0] packet_id);
    int start_time;
    
    // Create packet with source router's identifier in the data
    case (src_router)
        1: begin
            while (!axis_in_tready_1) @(posedge clk_noc);
            axis_in_tdata_1 = {32'h01010101, $random, $random, $random};
            axis_in_tvalid_1 = 1;
            axis_in_tlast_1 = 1;
            axis_in_tid_1 = packet_id;
            axis_in_tdest_1 = 0; // Destination is router 0
        end
        2: begin
            while (!axis_in_tready_2) @(posedge clk_noc);
            axis_in_tdata_2 = {32'h02020202, $random, $random, $random};
            axis_in_tvalid_2 = 1;
            axis_in_tlast_2 = 1;
            axis_in_tid_2 = packet_id;
            axis_in_tdest_2 = 0;
        end
        3: begin
            while (!axis_in_tready_3) @(posedge clk_noc);
            axis_in_tdata_3 = {32'h03030303, $random, $random, $random};
            axis_in_tvalid_3 = 1;
            axis_in_tlast_3 = 1;
            axis_in_tid_3 = packet_id;
            axis_in_tdest_3 = 0;
        end
        4: begin
            while (!axis_in_tready_4) @(posedge clk_noc);
            axis_in_tdata_4 = {32'h04040404, $random, $random, $random};
            axis_in_tvalid_4 = 1;
            axis_in_tlast_4 = 1;
            axis_in_tid_4 = packet_id;
            axis_in_tdest_4 = 0;
        end
        5: begin
            while (!axis_in_tready_5) @(posedge clk_noc);
            axis_in_tdata_5 = {32'h05050505, $random, $random, $random};
            axis_in_tvalid_5 = 1;
            axis_in_tlast_5 = 1;
            axis_in_tid_5 = packet_id;
            axis_in_tdest_5 = 0;
        end
        6: begin
            while (!axis_in_tready_6) @(posedge clk_noc);
            axis_in_tdata_6 = {32'h06060606, $random, $random, $random};
            axis_in_tvalid_6 = 1;
            axis_in_tlast_6 = 1;
            axis_in_tid_6 = packet_id;
            axis_in_tdest_6 = 0;
        end
        7: begin
            while (!axis_in_tready_7) @(posedge clk_noc);
            axis_in_tdata_7 = {32'h07070707, $random, $random, $random};
            axis_in_tvalid_7 = 1;
            axis_in_tlast_7 = 1;
            axis_in_tid_7 = packet_id;
            axis_in_tdest_7 = 0;
        end
        8: begin
            while (!axis_in_tready_8) @(posedge clk_noc);
            axis_in_tdata_8 = {32'h08080808, $random, $random, $random};
            axis_in_tvalid_8 = 1;
            axis_in_tlast_8 = 1;
            axis_in_tid_8 = packet_id;
            axis_in_tdest_8 = 0;
        end
        9: begin
            while (!axis_in_tready_9) @(posedge clk_noc);
            axis_in_tdata_9 = {32'h09090909, $random, $random, $random};
            axis_in_tvalid_9 = 1;
            axis_in_tlast_9 = 1;
            axis_in_tid_9 = packet_id;
            axis_in_tdest_9 = 0;
        end
        10: begin
            while (!axis_in_tready_10) @(posedge clk_noc);
            axis_in_tdata_10 = {32'h0A0A0A0A, $random, $random, $random};
            axis_in_tvalid_10 = 1;
            axis_in_tlast_10 = 1;
            axis_in_tid_10 = packet_id;
            axis_in_tdest_10 = 0;
        end
        11: begin
            while (!axis_in_tready_11) @(posedge clk_noc);
            axis_in_tdata_11 = {32'h0B0B0B0B, $random, $random, $random};
            axis_in_tvalid_11 = 1;
            axis_in_tlast_11 = 1;
            axis_in_tid_11 = packet_id;
            axis_in_tdest_11 = 0;
        end
        12: begin
            while (!axis_in_tready_12) @(posedge clk_noc);
            axis_in_tdata_12 = {32'h0C0C0C0C, $random, $random, $random};
            axis_in_tvalid_12 = 1;
            axis_in_tlast_12 = 1;
            axis_in_tid_12 = packet_id;
            axis_in_tdest_12 = 0;
        end
        default: $display("Error: Invalid source router %0d", src_router);
    endcase
    
    // Record start time for latency measurement
    start_time = $time;
    packet_start_time[src_router][0][packet_id] = start_time;
    
    // Update statistics
    others_to_router0[src_router].sent_packets += 1;
    others_to_router0[src_router].pending_packets += 1;
    
    // Wait for one cycle then deassert valid
    @(posedge clk_noc);
    
    case (src_router)
        1: axis_in_tvalid_1 = 0;
        2: axis_in_tvalid_2 = 0;
        3: axis_in_tvalid_3 = 0;
        4: axis_in_tvalid_4 = 0;
        5: axis_in_tvalid_5 = 0;
        6: axis_in_tvalid_6 = 0;
        7: axis_in_tvalid_7 = 0;
        8: axis_in_tvalid_8 = 0;
        9: axis_in_tvalid_9 = 0;
        10: axis_in_tvalid_10 = 0;
        11: axis_in_tvalid_11 = 0;
        12: axis_in_tvalid_12 = 0;
    endcase
endtask

// Function to update statistics when a packet is received by router0
function void update_others_to_router0_stats(input int src_router, input int packet_id, input int latency);
    others_to_router0[src_router].received_packets += 1;
    others_to_router0[src_router].pending_packets -= 1;
    others_to_router0[src_router].total_latency += latency;
    
    if (latency < others_to_router0[src_router].min_latency || 
        others_to_router0[src_router].min_latency == 0)
        others_to_router0[src_router].min_latency = latency;
        
    if (latency > others_to_router0[src_router].max_latency)
        others_to_router0[src_router].max_latency = latency;
endfunction

// Function to update statistics when a packet is received by other routers from router0
function void update_router0_to_other_stats(input int dest_router, input int packet_id, input int latency);
    router0_to_others[dest_router].received_packets += 1;
    router0_to_others[dest_router].pending_packets -= 1;
    router0_to_others[dest_router].total_latency += latency;
    
    if (latency < router0_to_others[dest_router].min_latency || 
        router0_to_others[dest_router].min_latency == 0)
        router0_to_others[dest_router].min_latency = latency;
        
    if (latency > router0_to_others[dest_router].max_latency)
        router0_to_others[dest_router].max_latency = latency;
endfunction

// Test scenario
initial begin
    int dest_router, src_router;
    int delay, packet_id;
    bit send_packet;
    
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
    
    // Enable all output ready signals
    axis_out_tready_0 = 1; axis_out_tready_1 = 1; axis_out_tready_2 = 1; axis_out_tready_3 = 1;
    axis_out_tready_4 = 1; axis_out_tready_5 = 1; axis_out_tready_6 = 1; axis_out_tready_7 = 1;
    axis_out_tready_8 = 1; axis_out_tready_9 = 1; axis_out_tready_10 = 1; axis_out_tready_11 = 1;
    axis_out_tready_12 = 1; axis_out_tready_13 = 1; axis_out_tready_14 = 1; axis_out_tready_15 = 1;
    
    // Initialize statistics
    for (int i = 0; i < NUM_ACTIVE_ROUTERS; i++) begin
        router0_to_others[i].sent_packets = 0;
        router0_to_others[i].received_packets = 0;
        router0_to_others[i].total_latency = 0;
        router0_to_others[i].min_latency = 0;
        router0_to_others[i].max_latency = 0;
        router0_to_others[i].avg_latency = 0;
        router0_to_others[i].pending_packets = 0;
        
        others_to_router0[i].sent_packets = 0;
        others_to_router0[i].received_packets = 0;
        others_to_router0[i].total_latency = 0;
        others_to_router0[i].min_latency = 0;
        others_to_router0[i].max_latency = 0;
        others_to_router0[i].avg_latency = 0;
        others_to_router0[i].pending_packets = 0;
    end
    
    // Initialize packet IDs
    for (int i = 0; i < NUM_ACTIVE_ROUTERS; i++)
        for (int j = 0; j < NUM_ACTIVE_ROUTERS; j++)
            for (int k = 0; k < 256; k++)
                packet_start_time[i][j][k] = 0;
    
    // Assert reset
    #10;
    rst_n = 0;
    #20;
    rst_n = 1;
    #20;
    
    $display("Starting uniform random traffic simulation with %0d routers", NUM_ACTIVE_ROUTERS);
    $display("Injection rate: %0d%%", PKT_INJECT_RATE);
    $display("======================================================");
    
    // Main simulation loop for SIM_CYCLES
    for (int cycle = 0; cycle < SIM_CYCLES; cycle++) begin
        // Router 0 sending to others with random probability
        for (int i = 1; i < NUM_ACTIVE_ROUTERS; i++) begin
            dest_router = active_routers[i];
            packet_id = router0_to_others[dest_router].sent_packets % (1 << TID_WIDTH);
            
            // Decide whether to send a packet based on injection rate
            send_packet = ($random % 100) < PKT_INJECT_RATE;
            
            if (send_packet && !axis_in_tvalid_0) begin
                send_packet_from_router0(dest_router, packet_id);
                delay = $urandom_range(MIN_PACKET_DELAY, MAX_PACKET_DELAY);
                repeat(delay) @(posedge clk_noc);
            end
        end
        
        // Others sending to router 0 with random probability
        for (int i = 1; i < NUM_ACTIVE_ROUTERS; i++) begin
            src_router = active_routers[i];
            packet_id = others_to_router0[src_router].sent_packets % (1 << TID_WIDTH);
            
            // Decide whether to send a packet based on injection rate
            send_packet = ($random % 100) < PKT_INJECT_RATE;
            
            if (send_packet) begin
                case (src_router)
                    1: if (!axis_in_tvalid_1) send_packet_from_router(src_router, packet_id);
                    2: if (!axis_in_tvalid_2) send_packet_from_router(src_router, packet_id);
                    3: if (!axis_in_tvalid_3) send_packet_from_router(src_router, packet_id);
                    4: if (!axis_in_tvalid_4) send_packet_from_router(src_router, packet_id);
                    5: if (!axis_in_tvalid_5) send_packet_from_router(src_router, packet_id);
                    6: if (!axis_in_tvalid_6) send_packet_from_router(src_router, packet_id);
                    7: if (!axis_in_tvalid_7) send_packet_from_router(src_router, packet_id);
                    8: if (!axis_in_tvalid_8) send_packet_from_router(src_router, packet_id);
                    9: if (!axis_in_tvalid_9) send_packet_from_router(src_router, packet_id);
                    10: if (!axis_in_tvalid_10) send_packet_from_router(src_router, packet_id);
                    11: if (!axis_in_tvalid_11) send_packet_from_router(src_router, packet_id);
            12: if (!axis_in_tvalid_12) send_packet_from_router(src_router, packet_id);
            endcase
            
            delay = $urandom_range(MIN_PACKET_DELAY, MAX_PACKET_DELAY);
            repeat(delay) @(posedge clk_noc);
        end
    end
    
    // Progress reporting
    if (cycle % 1000 == 0 && cycle > 0) begin
        $display("Simulation progress: %0d/%0d cycles (%0d%%)", 
                 cycle, SIM_CYCLES, (cycle * 100) / SIM_CYCLES);
        
        // Intermediate statistics
        int total_sent = 0;
        int total_received = 0;
        for (int i = 1; i < NUM_ACTIVE_ROUTERS; i++) begin
            dest_router = active_routers[i];
            total_sent += router0_to_others[dest_router].sent_packets;
            total_received += router0_to_others[dest_router].received_packets;
            total_sent += others_to_router0[dest_router].sent_packets;
            total_received += others_to_router0[dest_router].received_packets;
        end
        
        $display("Packets sent: %0d, received: %0d, pending: %0d", 
                 total_sent, total_received, total_sent - total_received);
      end
    end  // End of main simulation for loop
    
    // Wait for any remaining packets to be received
    $display("Simulation complete. Waiting for remaining packets...");
    repeat(1000) @(posedge clk_noc);
    
    // Calculate and display final statistics
    $display("\n======================================================");
    $display("Final Statistics");
    $display("======================================================");
    
    // Router 0 to others statistics
    $display("\nRouter 0 to Other Routers:");
    $display("-----------------------------------------------------");
    $display("Dest | Sent  | Received | Pending | Min Lat | Max Lat | Avg Lat");
    $display("-----------------------------------------------------");
    
    for (int i = 1; i < NUM_ACTIVE_ROUTERS; i++) begin
        dest_router = active_routers[i];
        if (router0_to_others[dest_router].received_packets > 0) begin
            router0_to_others[dest_router].avg_latency = 
                router0_to_others[dest_router].total_latency / router0_to_others[dest_router].received_packets;
        end
        
        $display("%4d | %5d | %8d | %7d | %7d | %7d | %7.2f",
                 dest_router,
                 router0_to_others[dest_router].sent_packets,
                 router0_to_others[dest_router].received_packets,
                 router0_to_others[dest_router].pending_packets,
                 router0_to_others[dest_router].min_latency / 10,
                 router0_to_others[dest_router].max_latency / 10,
                 router0_to_others[dest_router].avg_latency / 10.0);
    end
    
    // Other routers to router 0 statistics
    $display("\nOther Routers to Router 0:");
    $display("-----------------------------------------------------");
    $display("Src  | Sent  | Received | Pending | Min Lat | Max Lat | Avg Lat");
    $display("-----------------------------------------------------");
    
    for (int i = 1; i < NUM_ACTIVE_ROUTERS; i++) begin
        src_router = active_routers[i];
        if (others_to_router0[src_router].received_packets > 0) begin
            others_to_router0[src_router].avg_latency = 
                others_to_router0[src_router].total_latency / others_to_router0[src_router].received_packets;
        end
        
        $display("%4d | %5d | %8d | %7d | %7d | %7d | %7.2f", 
                 src_router,
                 others_to_router0[src_router].sent_packets,
                 others_to_router0[src_router].received_packets,
                 others_to_router0[src_router].pending_packets,
                 others_to_router0[src_router].min_latency / 10, // Convert to ns
                 others_to_router0[src_router].max_latency / 10, // Convert to ns
                 others_to_router0[src_router].avg_latency / 10.0); // Convert to ns
    end
    
    // Overall statistics
    int total_sent = 0;
    int total_received = 0;
    real total_latency = 0;
    int min_latency = 1000000;
    int max_latency = 0;
    real avg_latency = 0;
    
    for (int i = 1; i < NUM_ACTIVE_ROUTERS; i++) begin
        dest_router = active_routers[i];
        
        // Router 0 to others
        total_sent += router0_to_others[dest_router].sent_packets;
        total_received += router0_to_others[dest_router].received_packets;
        total_latency += router0_to_others[dest_router].total_latency;
        
        if (router0_to_others[dest_router].min_latency < min_latency && 
            router0_to_others[dest_router].min_latency > 0)
            min_latency = router0_to_others[dest_router].min_latency;
            
        if (router0_to_others[dest_router].max_latency > max_latency)
            max_latency = router0_to_others[dest_router].max_latency;
        
        // Others to router 0
        total_sent += others_to_router0[dest_router].sent_packets;
        total_received += others_to_router0[dest_router].received_packets;
        total_latency += others_to_router0[dest_router].total_latency;
        
        if (others_to_router0[dest_router].min_latency < min_latency && 
            others_to_router0[dest_router].min_latency > 0)
            min_latency = others_to_router0[dest_router].min_latency;
            
        if (others_to_router0[dest_router].max_latency > max_latency)
            max_latency = others_to_router0[dest_router].max_latency;
    end
    
    if (total_received > 0)
        avg_latency = total_latency / total_received;
    
    $display("\nOverall Statistics:");
    $display("-----------------------------------------------------");
    $display("Total packets sent:     %0d", total_sent);
    $display("Total packets received: %0d", total_received);
    $display("Packet delivery rate:   %0.2f%%", 
             (total_received * 100.0) / (total_sent > 0 ? total_sent : 1));
    $display("Minimum latency:        %0.2f ns", min_latency / 10.0);
    $display("Maximum latency:        %0.2f ns", max_latency / 10.0);
    $display("Average latency:        %0.2f ns", avg_latency / 10.0);
    $display("-----------------------------------------------------");
    
    $finish;
end

// Monitor for packet reception at router 0 (from others)
always @(posedge clk_noc) begin
    if (axis_out_tvalid_0 && axis_out_tready_0) begin
        int src_router;
        int packet_id = axis_out_tid_0;
        
        // Extract source router from packet data (could be from tdest field if available)
        case (axis_out_tdata_0[127:96])
            32'h01010101: src_router = 1;
            32'h02020202: src_router = 2;
            32'h03030303: src_router = 3;
            32'h04040404: src_router = 4;
            32'h05050505: src_router = 5;
            32'h06060606: src_router = 6;
            32'h07070707: src_router = 7;
            32'h08080808: src_router = 8;
            32'h09090909: src_router = 9;
            32'h0A0A0A0A: src_router = 10;
            32'h0B0B0B0B: src_router = 11;
            32'h0C0C0C0C: src_router = 12;
            default: src_router = -1;
        endcase
        
        if (src_router > 0 && src_router < NUM_ACTIVE_ROUTERS) begin
            int start_time = packet_start_time[src_router][0][packet_id];
            if (start_time > 0) begin
                int latency = $time - start_time;
                update_others_to_router0_stats(src_router, packet_id, latency);
                
                // Log only some packet data to avoid excessive output
                if (others_to_router0[src_router].received_packets % 100 == 0) begin
                    $display("Time %0t: Received packet %0d from Router %0d to Router 0, Latency: %0d ns", 
                             $time, packet_id, src_router, latency / 10);
                end
            end
        end
    end
end

// Monitor for packet reception at other routers (from router 0)
generate
for (genvar r = 1; r < NUM_ACTIVE_ROUTERS; r++) begin : router_monitors
    always @(posedge clk_noc) begin
        int router_id = active_routers[r];
        
        case (router_id)
            1: begin
                if (axis_out_tvalid_1 && axis_out_tready_1) begin
                    int dest_router = router_id;
                    int packet_id = axis_out_tid_1;
                    int start_time = packet_start_time[0][dest_router][packet_id];
                    
                    if (start_time > 0) begin
                        int latency = $time - start_time;
                        update_router0_to_other_stats(dest_router, packet_id, latency);
                        
                        // Log only some packet data
                        if (router0_to_others[dest_router].received_packets % 100 == 0) begin
                            $display("Time %0t: Received packet %0d from Router 0 to Router %0d, Latency: %0d ns", 
                                     $time, packet_id, dest_router, latency / 10);
                        end
                    end
                end
            end
            
            2: begin
                if (axis_out_tvalid_2 && axis_out_tready_2) begin
                    int dest_router = router_id;
                    int packet_id = axis_out_tid_2;
                    int start_time = packet_start_time[0][dest_router][packet_id];
                    
                    if (start_time > 0) begin
                        int latency = $time - start_time;
                        update_router0_to_other_stats(dest_router, packet_id, latency);
                    end
                end
            end
            
            3: begin
                if (axis_out_tvalid_3 && axis_out_tready_3) begin
                    int dest_router = router_id;
                    int packet_id = axis_out_tid_3;
                    int start_time = packet_start_time[0][dest_router][packet_id];
                    
                    if (start_time > 0) begin
                        int latency = $time - start_time;
                        update_router0_to_other_stats(dest_router, packet_id, latency);
                    end
                end
            end
            
            4: begin
                if (axis_out_tvalid_4 && axis_out_tready_4) begin
                    int dest_router = router_id;
                    int packet_id = axis_out_tid_4;
                    int start_time = packet_start_time[0][dest_router][packet_id];
                    
                    if (start_time > 0) begin
                        int latency = $time - start_time;
                        update_router0_to_other_stats(dest_router, packet_id, latency);
                    end
                end
            end
            
            5: begin
                if (axis_out_tvalid_5 && axis_out_tready_5) begin
                    int dest_router = router_id;
                    int packet_id = axis_out_tid_5;
                    int start_time = packet_start_time[0][dest_router][packet_id];
                    
                    if (start_time > 0) begin
                        int latency = $time - start_time;
                        update_router0_to_other_stats(dest_router, packet_id, latency);
                    end
                end
            end
            
            6: begin
                if (axis_out_tvalid_6 && axis_out_tready_6) begin
                    int dest_router = router_id;
                    int packet_id = axis_out_tid_6;
                    int start_time = packet_start_time[0][dest_router][packet_id];
                    
                    if (start_time > 0) begin
                        int latency = $time - start_time;
                        update_router0_to_other_stats(dest_router, packet_id, latency);
                    end
                end
            end
            
            7: begin
                if (axis_out_tvalid_7 && axis_out_tready_7) begin
                    int dest_router = router_id;
                    int packet_id = axis_out_tid_7;
                    int start_time = packet_start_time[0][dest_router][packet_id];
                    
                    if (start_time > 0) begin
                        int latency = $time - start_time;
                        update_router0_to_other_stats(dest_router, packet_id, latency);
                    end
                end
            end
            
            8: begin
                if (axis_out_tvalid_8 && axis_out_tready_8) begin
                    int dest_router = router_id;
                    int packet_id = axis_out_tid_8;
                    int start_time = packet_start_time[0][dest_router][packet_id];
                    
                    if (start_time > 0) begin
                        int latency = $time - start_time;
                        update_router0_to_other_stats(dest_router, packet_id, latency);
                    end
                end
            end
            
            9: begin
                if (axis_out_tvalid_9 && axis_out_tready_9) begin
                    int dest_router = router_id;
                    int packet_id = axis_out_tid_9;
                    int start_time = packet_start_time[0][dest_router][packet_id];
                    
                    if (start_time > 0) begin
                        int latency = $time - start_time;
                        update_router0_to_other_stats(dest_router, packet_id, latency);
                    end
                end
            end
            
            10: begin
                if (axis_out_tvalid_10 && axis_out_tready_10) begin
                    int dest_router = router_id;
                    int packet_id = axis_out_tid_10;
                    int start_time = packet_start_time[0][dest_router][packet_id];
                    
                    if (start_time > 0) begin
                        int latency = $time - start_time;
                        update_router0_to_other_stats(dest_router, packet_id, latency);
                    end
                end
            end
            
            11: begin
                if (axis_out_tvalid_11 && axis_out_tready_11) begin
                    int dest_router = router_id;
                    int packet_id = axis_out_tid_11;
                    int start_time = packet_start_time[0][dest_router][packet_id];
                    
                    if (start_time > 0) begin
                        int latency = $time - start_time;
                        update_router0_to_other_stats(dest_router, packet_id, latency);
                    end
                end
            end
            
            12: begin
                if (axis_out_tvalid_12 && axis_out_tready_12) begin
                    int dest_router = router_id;
                    int packet_id = axis_out_tid_12;
                    int start_time = packet_start_time[0][dest_router][packet_id];
                    
                    if (start_time > 0) begin
                        int latency = $time - start_time;
                        update_router0_to_other_stats(dest_router, packet_id, latency);
                    end
                end
            end
        endcase
    end
end
endgenerate

endmodule