`timescale 1ns / 1ps

module router_packetizer_tb;

  // Include necessary files
  `include "c_functions.v"
  `include "c_constants.v"
  `include "rtr_constants.v"
  `include "vcr_constants.v"
  `include "parameters.v"
  // Parameters
  // parameter buffer_size = 32;
  // parameter num_message_classes = 2;
  // parameter num_resource_classes = 2;
  // parameter num_vcs_per_class = 1;
  // parameter num_routers_per_dim = 4;
  // parameter num_dimensions = 2;
  // parameter num_nodes_per_router = 1;
  parameter connectivity = `CONNECTIVITY_LINE;
  // parameter packet_format = `PACKET_FORMAT_EXPLICIT_LENGTH;
  // parameter flow_ctrl_type = `FLOW_CTRL_TYPE_CREDIT;
  // parameter flow_ctrl_bypass = 1;
  // parameter max_payload_length = 4;
  // parameter min_payload_length = 1;
  // parameter enable_link_pm = 1;
  // parameter flit_data_width = 64;
  // parameter routing_type = `ROUTING_TYPE_PHASED_DOR;
  // parameter dim_order = `DIM_ORDER_ASCENDING;
  // parameter fb_mgmt_type = `FB_MGMT_TYPE_STATIC;
  // parameter disable_static_reservations = 0;
  // parameter elig_mask = `ELIG_MASK_NONE;
  // parameter reset_type = `RESET_TYPE_ASYNC;
  parameter Tclk = 2;

  // Add additional parameters needed by flit_sink and router_checker
  parameter consume_rate = 50;  // flit consumption rate (percentage)
  // parameter error_capture_mode = `ERROR_CAPTURE_MODE_NO_HOLD;


  // total number of routers
   localparam num_routers
     = (num_nodes + num_nodes_per_router - 1) / num_nodes_per_router;
   
   // number of routers in each dimension
   localparam num_routers_per_dim = croot(num_routers, num_dimensions);

  // Derived Parameters
  localparam resource_class_idx_width = clogb(num_resource_classes);
  localparam num_packet_classes = num_message_classes * num_resource_classes;
  localparam num_vcs = num_packet_classes * num_vcs_per_class;
  localparam vc_idx_width = clogb(num_vcs);
  localparam dim_addr_width = clogb(num_routers_per_dim);
  localparam router_addr_width = num_dimensions * dim_addr_width;
  localparam node_addr_width = clogb(num_nodes_per_router);
  localparam addr_width = router_addr_width + node_addr_width;
  localparam num_neighbors_per_dim = 
    ((connectivity == `CONNECTIVITY_LINE) || (connectivity == `CONNECTIVITY_RING)) ? 
    2 : ((connectivity == `CONNECTIVITY_FULL) ? (num_routers_per_dim - 1) : -1);
  localparam num_ports = num_dimensions * num_neighbors_per_dim + num_nodes_per_router;
  localparam port_idx_width = clogb(num_ports);
  localparam flow_ctrl_width = (flow_ctrl_type == `FLOW_CTRL_TYPE_CREDIT) ? (1 + vc_idx_width) : -1;
  localparam payload_length_width = clogb(max_payload_length - min_payload_length + 1);
  localparam link_ctrl_width = enable_link_pm ? 1 : 0;
  localparam flit_ctrl_width = 
    (packet_format == `PACKET_FORMAT_HEAD_TAIL) ? (1 + vc_idx_width + 1 + 1) : 
    ((packet_format == `PACKET_FORMAT_TAIL_ONLY) ? (1 + vc_idx_width + 1) : 
    ((packet_format == `PACKET_FORMAT_EXPLICIT_LENGTH) ? (1 + vc_idx_width + 1) : -1));
  localparam channel_width = link_ctrl_width + flit_ctrl_width + flit_data_width;

  // Port indices for clarity
  localparam NORTH = 0;
  localparam EAST = 1;
  localparam SOUTH = 2;
  localparam WEST = 3;
  localparam LOCAL = 4;

  wire [0:num_ports-1] fs_error;   // Error signals from flit_sinks
  wire rchk_error;                 // Error signal from router_checker

  // Clock and reset signals
  reg clk;
  reg reset;
  
  // Router signals
  reg [0:router_addr_width-1] router_address;
  wire [0:num_ports*channel_width-1] channel_in_ip;
  wire [0:num_ports*flow_ctrl_width-1] flow_ctrl_out_ip;
  wire [0:num_ports*channel_width-1] channel_out_op;
  wire [0:num_ports*flow_ctrl_width-1] flow_ctrl_in_op;
  wire router_error;
  
  // Packetizer signals (for LOCAL port only)
  reg data_valid_in;
  reg [0:flit_data_width-1] data_in;
  reg [0:router_addr_width-1] dest_address;
  reg [0:router_addr_width-1] source_address;
  wire data_ready_out;
  wire packetizer_error;
  
  // Signals for non-LOCAL ports
  reg [0:(num_ports-1)*channel_width-1] other_channels_in;
  reg [0:(num_ports-1)*flow_ctrl_width-1] other_flow_ctrl_in;
  
  // Test data generation
  integer packet_count;
  integer wait_cycles;
  
  // Clock generation
  always begin
    clk = 0;
    #(Tclk/2);
    clk = 1;
    #(Tclk/2);
  end

  // Router instantiation
  rtr_top #(
    .buffer_size(buffer_size),
    .num_message_classes(num_message_classes),
    .num_resource_classes(num_resource_classes),
    .num_vcs_per_class(num_vcs_per_class),
    .num_routers_per_dim(num_routers_per_dim),
    .num_dimensions(num_dimensions),
    .num_nodes_per_router(num_nodes_per_router),
    .connectivity(connectivity),
    .packet_format(packet_format),
    .flow_ctrl_type(flow_ctrl_type),
    .flow_ctrl_bypass(flow_ctrl_bypass),
    .max_payload_length(max_payload_length),
    .min_payload_length(min_payload_length),
    .enable_link_pm(enable_link_pm),
    .flit_data_width(flit_data_width),
    .routing_type(routing_type),
    .dim_order(dim_order),
    .fb_mgmt_type(fb_mgmt_type),
    .reset_type(reset_type)
  ) router_inst (
    .clk(clk),
    .reset(reset),
    .router_address(router_address),
    .channel_in_ip(channel_in_ip),
    .flow_ctrl_out_ip(flow_ctrl_out_ip),
    .channel_out_op(channel_out_op),
    .flow_ctrl_in_op(flow_ctrl_in_op),
    .error(router_error)
  );

  // Packetizer instantiation (only for LOCAL port)
  packetizer #(
    .buffer_size(buffer_size),
    .num_message_classes(num_message_classes),
    .num_resource_classes(num_resource_classes),
    .num_vcs_per_class(num_vcs_per_class),
    .num_routers_per_dim(num_routers_per_dim),
    .num_dimensions(num_dimensions),
    .num_nodes_per_router(num_nodes_per_router),
    .connectivity(connectivity),
    .packet_format(packet_format),
    .flow_ctrl_type(flow_ctrl_type),
    .flow_ctrl_bypass(flow_ctrl_bypass),
    .max_payload_length(max_payload_length),
    .min_payload_length(min_payload_length),
    .enable_link_pm(enable_link_pm),
    .flit_data_width(flit_data_width),
    .routing_type(routing_type),
    .dim_order(dim_order),
    .port_id(LOCAL)
  ) local_packetizer (
    .clk(clk),
    .reset(reset),
    .data_valid_in(data_valid_in),
    .data_in(data_in),
    .dest_address(dest_address),
    .flow_ctrl_in(flow_ctrl_out_ip[LOCAL*flow_ctrl_width +: flow_ctrl_width]),
    .source_address(source_address),
    .data_ready_out(data_ready_out),
    .channel(channel_in_ip[LOCAL*channel_width +: channel_width]),
    .error(packetizer_error)
  );

  // Connect non-LOCAL ports to zeros or loopback for testing
  // Assign other channel inputs to zeros
  assign channel_in_ip[0:LOCAL*channel_width-1] = {(LOCAL*channel_width){1'b0}};
  
  // Assign other flow control inputs to proper values to avoid stalls
  // For each non-local port, we indicate credits are available


  // Loopback the LOCAL port's output flow control to the packetizer
  assign flow_ctrl_in_op[LOCAL*flow_ctrl_width +: flow_ctrl_width] = {1'b1, {(flow_ctrl_width-1){1'b0}}};

  // Monitor router outputs
  always @(posedge clk) begin
    // Monitor North port output
    if (channel_out_op[NORTH*channel_width] && 
        channel_out_op[NORTH*channel_width+link_ctrl_width]) begin
      $display("Time %0t: NORTH port received flit", $time);
    end
    
    // Monitor East port output
    if (channel_out_op[EAST*channel_width] && 
        channel_out_op[EAST*channel_width+link_ctrl_width]) begin
      $display("Time %0t: EAST port received flit", $time);
    end
    
    // Monitor South port output  
    if (channel_out_op[SOUTH*channel_width] && 
        channel_out_op[SOUTH*channel_width+link_ctrl_width]) begin
      $display("Time %0t: SOUTH port received flit", $time);
    end
    
    // Monitor West port output
    if (channel_out_op[WEST*channel_width] && 
        channel_out_op[WEST*channel_width+link_ctrl_width]) begin
      $display("Time %0t: WEST port received flit", $time);
    end
  end
  
  // Error checking
  always @(posedge clk) begin
    if (router_error) begin
      $display("Router Error at time %0t", $time);
    end
    if (packetizer_error) begin
      $display("Packetizer Error at time %0t", $time);
    end
  end

    integer i;
    reg timeout_occurred;



    // Add flit sinks for each output port except LOCAL
  genvar op;
  generate
    for (op = 0; op < num_ports; op = op + 1) begin : flitsinks
      if (op != LOCAL) begin
        // For each non-LOCAL port, add a flit sink
        flit_sink #(
          .initial_seed(op*157),
          .consume_rate(consume_rate),
          .buffer_size(buffer_size),
          .num_vcs(num_vcs),
          .packet_format(packet_format),
          .flow_ctrl_type(flow_ctrl_type),
          .max_payload_length(max_payload_length),
          .min_payload_length(min_payload_length),
          .enable_link_pm(enable_link_pm),
          .flit_data_width(flit_data_width),
          .reset_type(reset_type)
        ) fs_op (
          .clk(clk),
          .reset(reset),
          .channel(channel_out_op[op*channel_width +: channel_width]),
          .flow_ctrl(flow_ctrl_in_op[op*flow_ctrl_width +: flow_ctrl_width]),
          .error(fs_error[op])
        );
      end
    end
  endgenerate
  
  // Add router checker to verify routing behavior
  router_checker #(
    .buffer_size(buffer_size),
    .num_message_classes(num_message_classes),
    .num_resource_classes(num_resource_classes),
    .num_vcs_per_class(num_vcs_per_class),
    .num_routers_per_dim(num_routers_per_dim),
    .num_dimensions(num_dimensions),
    .num_nodes_per_router(num_nodes_per_router),
    .connectivity(connectivity),
    .packet_format(packet_format),
    .max_payload_length(max_payload_length),
    .min_payload_length(min_payload_length),
    .enable_link_pm(enable_link_pm),
    .flit_data_width(flit_data_width),
    .error_capture_mode(error_capture_mode),
    .routing_type(routing_type),
    .dim_order(dim_order),
    .reset_type(reset_type)
  ) rchk (
    .clk(clk),
    .reset(reset),
    .router_address(router_address),
    .channel_in_ip(channel_in_ip),
    .channel_out_op(channel_out_op),
    .error(rchk_error)
  );
  
  // Adjust error monitoring
  wire tb_error;
  assign tb_error = router_error | packetizer_error | (|fs_error) | rchk_error;
  
  // Add to your error monitoring section
  always @(posedge clk) begin
    if (tb_error) begin
      $display("Error detected in testbench at time %0t", $time);
      if (router_error)
        $display("Router Error");
      if (packetizer_error)
        $display("Packetizer Error");
      if (|fs_error)
        $display("Flit Sink Error");
      if (rchk_error)
        $display("Router Checker Error");
    end
  end
// Test sequence
initial begin
    // DECLARE ALL VARIABLES FIRST

    
    // Then initialize signals
    reset = 1;
    data_valid_in = 0;
    data_in = 0;
    dest_address = 0;
    source_address = 0;
    packet_count = 0;
    
    // Set router address (center of mesh)
    router_address = 4'b0000; // Center router (x=2, y=2)
    
    // Apply reset
    #(Tclk*5);
    reset = 0;
    #(Tclk*5);
    
    // The rest of your code remains the same...
    
    // Setup source address (same as router address for LOCAL port)
    source_address = router_address;
    
    // Send 10 test packets to different destinations
    repeat (10) begin
      packet_count = packet_count + 1;
      
      // Choose a destination (varies each time)
      case (packet_count % 2)
        0: dest_address = 4'b0001; // North-West (1,1)
        1: dest_address = 4'b0001; // North-East (3,1)
        // 2: dest_address = {4'b0110}; // South-West (1,3)
        // 3: dest_address = {4'b1010}; // South-East (3,3)
        // 4: dest_address = {4'b0000}; // Should be filtered (self)
      endcase
      
      // Send head flit data
      $display("Time %0t: Sending packet %0d to destination (%0d,  %0d)", 
               $time, packet_count, dest_address, dest_address);
      
      data_in = {packet_count[7:0], {(flit_data_width-8){1'b1}}};
      data_valid_in = 1;
      
      // Wait until data is accepted
      wait(data_ready_out);
      @(posedge clk);
      
      // Send payload flits (0-3 flits depending on packet_count)
      timeout_occurred = 0;
      for (i = 0; i < (packet_count % max_payload_length) && !timeout_occurred; i = i + 1) begin
        data_in = {packet_count[7:0], {(flit_data_width-8){1'b0}}};
        data_valid_in = 1;
        
        // Wait until data is accepted or timeout
        wait_cycles = 0;
        while (!data_ready_out && wait_cycles < 10) begin
          @(posedge clk);
          wait_cycles = wait_cycles + 1;
        end
        
        if (data_ready_out) begin
          @(posedge clk);
        end else begin
          $display("Time %0t: Timeout waiting for data_ready_out", $time);
          timeout_occurred = 1;
        end
      end
      
      // Pause between packets
      data_valid_in = 0;
      #(Tclk*5);
    end
    
    // Finish simulation after allowing time for packets to pass through router
    #(Tclk*100);
    
    $display("Simulation complete: %0d packets sent", packet_count);
    $finish;
end

endmodule