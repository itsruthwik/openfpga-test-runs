`timescale 1ns / 1ps

`include "/mnt/vault1/mfaroo19/OpenFPGA/openfpga-test-runs/FPL_2025/router_files/stanford_router/src/router_slice.v"
`include "/mnt/vault1/mfaroo19/OpenFPGA/openfpga-test-runs/FPL_2025/axi_adapter/axi2noc.v"

module axis_to_noc_adapter_tb;

  // Parameters
  parameter DEST_WIDTH = 4;
  parameter CLK_PERIOD = 10;

  // Signals
  reg clk, reset;
  reg [31:0] axis_tdata;
  reg [DEST_WIDTH-1:0] axis_tdest;
  reg axis_tvalid;
  wire axis_tready;
  
  // Router Interface Signals
  wire [35:0] channel_router_0_ip_4;
  wire flow_ctrl_router_0_ip_4;
  wire flow_ctrl_router_0_op_4
  
  // Other Router Ports (for monitoring)
  wire [35:0] channel_router_0_op_0, channel_router_0_op_1, channel_router_0_op_2, channel_router_0_op_3;
  wire [35:0] channel_router_0_ip_0 = 0, channel_router_0_ip_1 = 0, channel_router_0_ip_2 = 0, channel_router_0_ip_3 = 0;
  wire flow_ctrl_router_0_op_0, flow_ctrl_router_0_op_1, flow_ctrl_router_0_op_2, flow_ctrl_router_0_op_3;

  // Clock Generation
  initial begin
    clk = 0;
    forever #(CLK_PERIOD/2) clk = ~clk;
  end

  // Reset Generation
  initial begin
    reset = 1;
    #100 reset = 0;
  end

  // Instantiate Router
  router_slice rtr_0 (
    .clk(clk),
    .reset(reset),
    .router_address(4'b0000),
    .channel_in_ip({36'b0, 36'b0, 36'b0, 36'b0, channel_router_0_ip_4}),
    .flow_ctrl_out_ip({4'b0, flow_ctrl_router_0_ip_4}),
    .channel_out_op({channel_router_0_op_0, channel_router_0_op_1, channel_router_0_op_2, channel_router_0_op_3, channel_router_0_op_4}),
    .flow_ctrl_in_op({4'b0, flow_ctrl_router_0_op_4}),
    .error()
  );

  // Instantiate AXI-to-NoC Adapter (connected to port 4)
  axis_to_noc_adapter #(
    .DEST_WIDTH(DEST_WIDTH),
    .AXIW(32),
    .DEPTH(8))
  uut (
    .clk(clk),
    .rst(reset),
    .axis_tvalid(axis_tvalid),
    .axis_tready(axis_tready),
    .axis_tdata(axis_tdata),
    .axis_tdest(axis_tdest),
    .router_out_port(channel_router_0_ip_4),
    .flow_ctrl_in_op(flow_ctrl_router_0_op_4)
  );

  // Test Sequence
  initial begin
    $dumpfile("axi2noc_tb.vcd");
    $dumpvars(0, axis_to_noc_adapter_tb);
    
    // Initialize inputs
    axis_tvalid = 0;
    axis_tdata = 0;
    axis_tdest = 0;
    
    // Wait for reset
    #200;
    
    // Test 1: Send single packet
    send_packet(4'h5, 32'hAABBCCDD);
    #100;
    
    // Test 2: Send back-to-back packets
    send_packet(4'h2, 32'h11223344);
    send_packet(4'h8, 32'h55667788);
    
    // Test 3: Backpressure simulation
    #200;
    force flow_ctrl_router_0_op_4 = 0;  // Simulate NoC congestion
    send_packet(4'hF, 32'hDEADBEEF);
    #200;
    release flow_ctrl_router_0_op_4;
    
    #500;
    $finish;
  end

  // Task to send packets
  task send_packet;
    input [DEST_WIDTH-1:0] dest;
    input [31:0] data;
    begin
      $display("Sending packet to dest %h: %h", dest, data);
      axis_tdest = dest;
      axis_tdata = data;
      axis_tvalid = 1;
      wait(axis_tready);
      @(posedge clk);
      axis_tvalid = 0;
      #10;
    end
  endtask

  // Monitor NoC outputs
  always @(posedge clk) begin
    if(channel_router_0_op_4[35]) begin
      $display("NoC Output: Time=%t Port4: Valid=%b Ctrl=%b Data=%h",
               $time, channel_router_0_op_4[35],
               channel_router_0_op_4[34:32],
               channel_router_0_op_4[31:0]);
    end
  end

  // Monitor FIFO status
  always @(posedge clk) begin
    $display("FIFO Status: empty=%b full=%b",
             uut.data_fifo_empty, uut.data_fifo_full);
  end

endmodule