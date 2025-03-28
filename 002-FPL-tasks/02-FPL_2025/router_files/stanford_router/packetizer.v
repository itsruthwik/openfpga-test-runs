module packetizer (
  clk,
  reset,
   data_valid_in,
   is_last_in,
   data_in,
   dest_address,
   flow_ctrl_in,
   source_address, // Source address input
   data_ready_out,
   channel,
   error // Added error output
);

  // Constants
  `include "c_functions.v"
  `include "c_constants.v"
  `include "rtr_constants.v"
  `include "vcr_constants.v"

  // Parameters
  parameter buffer_size = 32;
  parameter num_message_classes = 2;
  parameter num_resource_classes = 2;
  parameter num_vcs_per_class = 1;
  parameter num_routers_per_dim = 4;
  parameter num_dimensions = 2;
  parameter num_nodes_per_router = 1;
  parameter connectivity = `CONNECTIVITY_LINE;
parameter packet_format = `PACKET_FORMAT_HEAD_TAIL;
  parameter flow_ctrl_type = `FLOW_CTRL_TYPE_CREDIT;
  parameter flow_ctrl_bypass = 1;
  parameter max_payload_length = 4;
  parameter min_payload_length = 1;
  parameter enable_link_pm = 1;
  parameter flit_data_width = 64;
  parameter routing_type = `ROUTING_TYPE_PHASED_DOR;
  parameter dim_order = `DIM_ORDER_ASCENDING;
  parameter fb_mgmt_type = `FB_MGMT_TYPE_STATIC;
  parameter disable_static_reservations = 0;
  parameter elig_mask = `ELIG_MASK_NONE;
  parameter reset_type = `RESET_TYPE_ASYNC;
  parameter port_id = 0; // Added port_id parameter for flit_kill logic

  // Derived Parameters
  localparam resource_class_idx_width = clogb(num_resource_classes);
  localparam num_packet_classes = num_message_classes * num_resource_classes;
  localparam num_vcs = num_packet_classes * num_vcs_per_class;
  localparam vc_idx_width = clogb(num_vcs);
  localparam dim_addr_width = clogb(num_routers_per_dim);
  localparam router_addr_width = num_dimensions * dim_addr_width;
  localparam node_addr_width = clogb(num_nodes_per_router);
  localparam addr_width = router_addr_width + node_addr_width;
  localparam num_neighbors_per_dim = ((connectivity == `CONNECTIVITY_LINE) || (connectivity == `CONNECTIVITY_RING)) ? 2 : ((connectivity == `CONNECTIVITY_FULL) ? (num_routers_per_dim - 1) : -1);
  localparam num_ports = num_dimensions * num_neighbors_per_dim + num_nodes_per_router;
  localparam port_idx_width = clogb(num_ports);
  localparam flow_ctrl_width = (flow_ctrl_type == `FLOW_CTRL_TYPE_CREDIT) ? (1 + vc_idx_width) : -1;
  localparam payload_length_width = clogb(max_payload_length - min_payload_length + 1);
  localparam link_ctrl_width = enable_link_pm ? 1 : 0;
  localparam flit_ctrl_width = (packet_format == `PACKET_FORMAT_HEAD_TAIL) ? (1 + vc_idx_width + 1 + 1) : ((packet_format == `PACKET_FORMAT_TAIL_ONLY) ? (1 + vc_idx_width + 1) : ((packet_format == `PACKET_FORMAT_EXPLICIT_LENGTH) ? (1 + vc_idx_width + 1) : -1));
  localparam channel_width = link_ctrl_width + flit_ctrl_width + flit_data_width;
  localparam lar_info_width = port_idx_width + resource_class_idx_width;
  localparam dest_info_width = (routing_type == `ROUTING_TYPE_PHASED_DOR) ? (num_resource_classes * router_addr_width + node_addr_width) : -1;
  localparam route_info_width = lar_info_width + dest_info_width;
  localparam header_info_width = (packet_format == `PACKET_FORMAT_HEAD_TAIL) ? route_info_width : ((packet_format == `PACKET_FORMAT_TAIL_ONLY) ? route_info_width : ((packet_format == `PACKET_FORMAT_EXPLICIT_LENGTH) ? (route_info_width + payload_length_width) : -1));
  localparam packet_length_width = clogb(max_payload_length + 1);
  localparam curr_dim = port_id / num_neighbors_per_dim; // Added for flit_kill logic

  // FSM state definition (Simplified to 3 states)
  localparam IDLE = 0, HEAD = 1, DATA = 2, TAIL = 3;

  input clk;
  input reset;
  input data_valid_in;
  input is_last_in;
  input [0:flit_data_width-1] data_in;
  input [0:router_addr_width-1] dest_address;
  input [0:flow_ctrl_width-1] flow_ctrl_in;
  input [0:router_addr_width-1] source_address; // Source address input
  output data_ready_out;
  output [0:channel_width-1] channel;
  output error; // Added error output

  // Internal Data Registers
  reg [0:flit_data_width-1] data_q;
  reg [0:dest_info_width-1] dest_info;
  reg [0:packet_length_width-1] flit_count_q;
  reg [0:1] state_q;
  reg [0:router_addr_width-1] dest_rtr_addr_temp;
  reg head_q, tail_q; // pending_q;
  wire pending_q;

  // Wire declarations
  wire flit_valid, flit_head, flit_tail;
  wire [0:flit_data_width-1] flit_data;
  wire [0:num_vcs-1] sel_ovc;
  wire fc_event_valid;
  wire [0:num_vcs-1] fc_event_sel_ovc;
  wire flit_valid_s, flit_valid_q;
  wire flit_head_s, flit_head_q;
  wire flit_tail_s, flit_tail_q;
  wire [0:num_vcs-1] flit_sel_ovc_s, flit_sel_ovc_q;
  wire fc_active;
  wire [0:num_vcs-1] empty_ovc;
  wire [0:num_vcs-1] almost_full_ovc;
  wire [0:num_vcs-1] full_ovc;
  wire [0:num_vcs-1] full_prev_ovc;
  wire [0:num_vcs*2-1] fcs_errors_ovc;
  wire [0:num_vcs-1] elig_ovc;
  wire full;
  wire elig;
  wire flit_sent;
  wire flit_kill; // Will implement this for basic routing validation
  wire packet_sent;
  wire pending_s;
  wire [0:header_info_width-1] header_info;
  wire [0:num_message_classes*num_resource_classes-1] sel_mc_orc;
  wire [0:num_message_classes-1] sel_mc;
  wire [0:num_resource_classes*num_message_classes-1] sel_orc_mc;
  wire [0:num_resource_classes-1] sel_orc;
  wire [0:num_ports-1] route_op;
  wire [0:num_resource_classes-1] route_orc;
  wire [0:port_idx_width-1] route_port;
  wire [0:lar_info_width-1] lar_info;
  wire [0:router_addr_width-1] rc_dest;
  wire [0:router_addr_width-1] curr_dest_addr;

  // Connect error output
  assign error = |fcs_errors_ovc;

  // Data Ready Output
  // assign data_ready_out = (state_q == DATA) && 
  //                        (flit_count_q < max_payload_length) && 
  //                        ~full && 
  //                        data_valid_in;
assign data_ready_out = ((state_q == IDLE) || 
                        (state_q == DATA && flit_count_q < max_payload_length)) && 
                        ~full && data_valid_in;
  // Channel Output Module
  rtr_channel_output #(
    .num_vcs(num_vcs),
    .packet_format(packet_format),
    .enable_link_pm(enable_link_pm),
    .flit_data_width(flit_data_width),
    .reset_type(reset_type)
  ) cho (
    .clk(clk),
    .reset(reset),
    .active(flit_valid),
    .flit_valid_in(flit_valid),
    .flit_head_in(flit_head),
    .flit_tail_in(flit_tail),
    .flit_data_in(flit_data),
    .flit_sel_in_ovc(sel_ovc),
    .channel_out(channel)
  );

  // Flow Control Input Module
  rtr_flow_ctrl_input #(
    .num_vcs(num_vcs),
    .flow_ctrl_type(flow_ctrl_type),
    .reset_type(reset_type)
  ) fci (
    .clk(clk),
    .reset(reset),
    .active(1'b1),
    .flow_ctrl_in(flow_ctrl_in),
    .fc_event_valid_out(fc_event_valid),
    .fc_event_sel_out_ovc(fc_event_sel_ovc)
  );

  // Signal pipeline for flit_valid
  assign flit_valid_s = flit_valid;
  c_dff #(
    .width(1),
    .reset_type(reset_type)
  ) flit_validq (
    .clk(clk),
    .reset(reset),
    .active(1'b1),
    .d(flit_valid_s),
    .q(flit_valid_q)
  );

  // Signal pipeline for flit_head
  assign flit_head_s = flit_head;
  c_dff #(
    .width(1),
    .reset_type(reset_type)
  ) flit_headq (
    .clk(clk),
    .reset(reset),
    .active(1'b1),
    .d(flit_head_s),
    .q(flit_head_q)
  );

  // Signal pipeline for flit_tail
  assign flit_tail_s = flit_tail;
  c_dff #(
    .width(1),
    .reset_type(reset_type)
  ) flit_tailq (
    .clk(clk),
    .reset(reset),
    .active(1'b1),
    .d(flit_tail_s),
    .q(flit_tail_q)
  );

  // Signal pipeline for sel_ovc
  assign flit_sel_ovc_s = sel_ovc;
  c_dff #(
    .width(num_vcs),
    .reset_type(reset_type)
  ) flit_sel_ovcq (
    .clk(clk),
    .reset(reset),
    .active(1'b1),
    .d(flit_sel_ovc_s),
    .q(flit_sel_ovc_q)
  );

  // Flow control state tracking
  rtr_fc_state #(
    .num_vcs(num_vcs),
    .buffer_size(buffer_size),
    .flow_ctrl_type(flow_ctrl_type),
    .flow_ctrl_bypass(flow_ctrl_bypass),
    .mgmt_type(fb_mgmt_type),
    .disable_static_reservations(disable_static_reservations),
    .reset_type(reset_type)
  ) fcs (
    .clk(clk),
    .reset(reset),
    .active(1'b1),
    .flit_valid(flit_valid_q),
    .flit_head(flit_head_q),
    .flit_tail(flit_tail_q),
    .flit_sel_ovc(flit_sel_ovc_q),
    .fc_event_valid(fc_event_valid),
    .fc_event_sel_ovc(fc_event_sel_ovc),
    .fc_active(fc_active),
    .empty_ovc(empty_ovc),
    .almost_full_ovc(almost_full_ovc),
    .full_ovc(full_ovc),
    .full_prev_ovc(full_prev_ovc),
    .errors_ovc(fcs_errors_ovc)
  );

  // VC allocation and eligibility logic
  genvar ovc;
  generate
    for (ovc = 0; ovc < num_vcs; ovc = ovc + 1) begin : ovcs
      wire allocated;
      wire allocated_s, allocated_q;
      
      assign allocated_s = allocated;
      c_dff #(
        .width(1),
        .reset_type(reset_type)
      ) allocatedq (
        .clk(clk),
        .reset(reset),
        .active(1'b1),
        .d(allocated_s),
        .q(allocated_q)
      );

      wire ovc_flit_sent;
      assign ovc_flit_sent = flit_valid_q & flit_sel_ovc_q[ovc];
      assign allocated = ovc_flit_sent ? ~flit_tail_q : allocated_q;

      wire empty, full, elig;
      assign empty = empty_ovc[ovc];
      assign full = full_ovc[ovc];

      case (elig_mask)
        `ELIG_MASK_NONE: assign elig = ~allocated;
        `ELIG_MASK_FULL: assign elig = ~allocated & ~full;
        `ELIG_MASK_USED: assign elig = ~allocated & empty;
        default: assign elig = 1'b0;
      endcase

      assign elig_ovc[ovc] = elig;
    end
  endgenerate

  // Select full status for current VC
  c_select_1ofn #(
    .num_ports(num_vcs),
    .width(1)
  ) full_sel (
    .select(sel_ovc),
    .data_in(full_ovc),
    .data_out(full)
  );

  // Select eligibility status for current VC
  c_select_1ofn #(
    .num_ports(num_vcs),
    .width(1)
  ) elig_sel (
    .select(sel_ovc),
    .data_in(elig_ovc),
    .data_out(elig)
  );

  // Manage flit pending status
  assign pending_s = (state_q == IDLE && data_valid_in && ~full) || 
                    (pending_q && ~packet_sent);
  c_dff #(
    .width(1),
    .reset_type(reset_type)
  ) pendingq (
    .clk(clk),
    .reset(reset),
    .active(1'b1),
    .d(pending_s),
    .q(pending_q)
  );

  // Basic flit kill logic - prevent routing to self and simple routing violations
  assign flit_kill = (dest_address == source_address) || 
                    (port_id >= (num_ports - num_nodes_per_router) && 
                     (dest_address == source_address));

  // Define conditions for sending flits
  assign flit_sent = pending_q & ~full & (elig | ~head_q) & ~flit_kill;
  assign flit_valid = flit_sent;
  assign packet_sent = flit_tail & flit_sent;

  // Store data from input
  always @(posedge clk or posedge reset) begin
    if (reset) begin
      data_q <= {flit_data_width{1'b0}};
    end else if (data_valid_in) begin
      data_q <= data_in;
    end
  end

  // Store destination info
  always @(posedge clk or posedge reset) begin
    if (reset) begin
      dest_info <= {dest_info_width{1'b0}};
    end else if (state_q == IDLE && data_valid_in) begin
      dest_info[0:router_addr_width-1] <= dest_address;
      dest_rtr_addr_temp <= dest_address;
    end
  end

  // Routing Logic
  rtr_routing_logic #(
    .num_message_classes(num_message_classes),
    .num_resource_classes(num_resource_classes),
    .num_routers_per_dim(num_routers_per_dim),
    .num_dimensions(num_dimensions),
    .num_nodes_per_router(num_nodes_per_router),
    .connectivity(connectivity),
    .routing_type(routing_type),
    .dim_order(dim_order)
  ) rtl (
    .router_address(source_address),
    .sel_mc(sel_mc),
    .sel_irc(sel_orc),
    .dest_info(dest_info),
    .route_op(route_op),
    .route_orc(route_orc)
  );

  // Matrix multiplication for VC selection
  c_mat_mult #(
    .dim1_width(num_message_classes*num_resource_classes),
    .dim2_width(num_vcs_per_class),
    .dim3_width(1),
    .prod_op(`BINARY_OP_AND),
    .sum_op(`BINARY_OP_OR)
  ) sel_mc_orc_mmult (
    .input_a(sel_ovc),
    .input_b({num_vcs_per_class{1'b1}}),
    .result(sel_mc_orc)
  );

  c_mat_mult #(
    .dim1_width(num_message_classes),
    .dim2_width(num_resource_classes),
    .dim3_width(1),
    .prod_op(`BINARY_OP_AND),
    .sum_op(`BINARY_OP_OR)
  ) sel_mc_mmult (
    .input_a(sel_mc_orc),
    .input_b({num_resource_classes{1'b1}}),
    .result(sel_mc)
  );

  c_interleave #(
    .width(num_message_classes*num_resource_classes),
    .num_blocks(num_message_classes)
  ) sel_orc_mc_intl (
    .data_in(sel_mc_orc),
    .data_out(sel_orc_mc)
  );

  c_mat_mult #(
    .dim1_width(num_resource_classes),
    .dim2_width(num_message_classes),
    .dim3_width(1),
    .prod_op(`BINARY_OP_AND),
    .sum_op(`BINARY_OP_OR)
  ) sel_orc_mmult (
    .input_a(sel_orc_mc),
    .input_b({num_message_classes{1'b1}}),
    .result(sel_orc)
  );

  // Encode route port
  c_encode #(
    .num_ports(num_ports)
  ) route_port_enc (
    .data_in(route_op),
    .data_out(route_port)
  );

  // Generate lookahead routing info
  assign lar_info[0:port_idx_width-1] = route_port;

  generate
    if (num_resource_classes > 1) begin
      wire [0:resource_class_idx_width-1] route_rcsel;
      
      c_encode #(
        .num_ports(num_resource_classes)
      ) route_rcsel_enc (
        .data_in(route_orc),
        .data_out(route_rcsel)
      );
      
      assign lar_info[port_idx_width:port_idx_width+resource_class_idx_width-1] = route_rcsel;
    end
  endgenerate

  // Generate header info
  assign header_info[0:lar_info_width-1] = lar_info;
  assign header_info[lar_info_width:lar_info_width+dest_info_width-1] = dest_info;
  
  // Add payload length for EXPLICIT_LENGTH format
  generate
    if ((packet_format == `PACKET_FORMAT_EXPLICIT_LENGTH) && (payload_length_width > 0)) begin
      assign header_info[route_info_width:route_info_width+payload_length_width-1] = 
        max_payload_length - min_payload_length;
    end
  endgenerate

  // Generate flit data
  assign flit_data[0:header_info_width-1] = head_q ? header_info : data_q[0:header_info_width-1];
  assign flit_data[header_info_width:flit_data_width-1] = data_q[header_info_width:flit_data_width-1];

  // VC Selection - Fixed to 01 as requested
  generate
    if (num_vcs > 1) begin
      wire [0:vc_idx_width-1] vc_index;
      
      // Fixed VC value = 01
      assign vc_index = 2'b01;
      
      c_decode #(
        .num_ports(num_vcs)
      ) sel_ovc_dec (
        .data_in(vc_index),
        .data_out(sel_ovc)
      );
    end else begin
      assign sel_ovc = 1'b1;
    end
  endgenerate

  // Simplified FSM for packetization
  always @(posedge clk or posedge reset) begin
    if (reset) begin
      state_q <= IDLE;
      head_q <= 1'b1;
      tail_q <= 1'b0;
      flit_count_q <= 0;
    end else begin
      case (state_q)
        IDLE: begin
          // Wait for new data
          if (data_valid_in && ~full && ~flit_kill) begin
            state_q <= HEAD;
            head_q <= 1'b1;
            tail_q <= (max_payload_length == 0); // Single flit packet if payload length is 0
            flit_count_q <= max_payload_length;
          end
        end
        
        HEAD: begin
          // Process head flit
          if (flit_sent) begin
            head_q <= 1'b0;
            if (max_payload_length == 0) begin
              // If single-flit packet, go back to IDLE
              state_q <= IDLE;
            end else begin
              state_q <= DATA;
            end
          end
        end
        
        DATA: begin
          // Process data and tail flits
          if (flit_sent) begin
            if (flit_count_q > 1 && !is_last_in) begin
              // More data flits to send
              flit_count_q <= flit_count_q - 1;
            end else begin
              // Last flit (tail)
              tail_q <= 1'b1;
              state_q <= TAIL;
            end
          end
          
          // Handle destination change during transmission
          if (data_valid_in && dest_address != dest_rtr_addr_temp) begin
            tail_q <= 1'b1;
            state_q <= IDLE;
            head_q <= 1'b1;
          end
        end

        TAIL: begin
          // Wait for packet to be sent
          if (flit_sent) begin
            state_q <= IDLE;
            head_q <= 1'b1;
            tail_q <= 1'b0;
          end
        end
      endcase
    end
  end

  // Assign outputs
  assign flit_head = head_q;
  assign flit_tail = tail_q;

endmodule