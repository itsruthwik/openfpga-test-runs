`include "/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/stanford-router/router-rtl-files/src/router_wrap.v"

`include "c_functions.v"
`include "c_constants.v"
`include "rtr_constants.v"
`include "vcr_constants.v"
`include "parameters.v"

module router_slice
  (clk, reset, router_address, channel_in_ip, flow_ctrl_out_ip, channel_out_op, 
   flow_ctrl_in_op, error);

    input clk;
    input reset;
    input   [0:3] router_address;
    input   [0:channel_width-1]   channel_in_ip;
    input   [0:flow_ctrl_width-1] flow_ctrl_out_ip;
    output  [0:channel_width-1]   channel_out_op;
    input   [0:flow_ctrl_width-1] flow_ctrl_in_op;
    output error;

// Parameters start 
    parameter Tclk = 2;
    parameter initial_seed = 0;
    
    // maximum number of packets to generate (-1 = no limit)
    parameter max_packet_count = -1;
    
    // packet injection rate (percentage of cycles)
    parameter packet_rate = 25;
    
    // flit consumption rate (percentage of cycles)
    parameter consume_rate = 50;
    
    // width of packet count register
    parameter packet_count_reg_width = 32;
    
    // channel latency in cycles
    parameter channel_latency = 1;
    
    // only inject traffic at the node ports
    parameter inject_node_ports_only = 1;
    
    // warmup time in cycles
    parameter warmup_time = 100;
    
    // measurement interval in cycles
    parameter measure_time = 3000;
    
    // select packet length mode (0: uniform random, 1: bimodal)
    parameter packet_length_mode = 0;
    
    
    // width required to select individual resource class
    localparam resource_class_idx_width = clogb(num_resource_classes);
    
    // total number of packet classes
    localparam num_packet_classes = num_message_classes * num_resource_classes;
    
    // number of VCs
    localparam num_vcs = num_packet_classes * num_vcs_per_class;
    
    // width required to select individual VC
    localparam vc_idx_width = clogb(num_vcs);
    
    // total number of routers
    localparam num_routers
      = (num_nodes + num_nodes_per_router - 1) / num_nodes_per_router;
    
    // number of routers in each dimension
    localparam num_routers_per_dim = croot(num_routers, num_dimensions);
    
    // width required to select individual router in a dimension
    localparam dim_addr_width = clogb(num_routers_per_dim);
    
    // width required to select individual router in entire network
    localparam router_addr_width = num_dimensions * dim_addr_width;
    
    // connectivity within each dimension
    localparam connectivity
      = (topology == `TOPOLOGY_MESH) ?
        `CONNECTIVITY_LINE :
        (topology == `TOPOLOGY_TORUS) ?
        `CONNECTIVITY_RING :
        (topology == `TOPOLOGY_FBFLY) ?
        `CONNECTIVITY_FULL :
        -1;
    
    // number of adjacent routers in each dimension
    localparam num_neighbors_per_dim
      = ((connectivity == `CONNECTIVITY_LINE) ||
     (connectivity == `CONNECTIVITY_RING)) ?
        2 :
        (connectivity == `CONNECTIVITY_FULL) ?
        (num_routers_per_dim - 1) :
        -1;
    
    // number of input and output ports on router
    localparam num_ports
      = num_dimensions * num_neighbors_per_dim + num_nodes_per_router;
    
    // width required to select individual port
    localparam port_idx_width = clogb(num_ports);
    
    // width required to select individual node at current router
    localparam node_addr_width = clogb(num_nodes_per_router);
    
    // width required for lookahead routing information
    localparam lar_info_width = port_idx_width + resource_class_idx_width;
    
    // total number of bits required for storing routing information
    localparam dest_info_width
      = (routing_type == `ROUTING_TYPE_PHASED_DOR) ? 
        (num_resource_classes * router_addr_width + node_addr_width) : 
        -1;
    
    // total number of bits required for routing-related information
    localparam route_info_width = lar_info_width + dest_info_width;
    
    // width of flow control signals
    localparam flow_ctrl_width
      = (flow_ctrl_type == `FLOW_CTRL_TYPE_CREDIT) ? (1 + vc_idx_width) :
        -1;
    
    // width of link management signals
    localparam link_ctrl_width = enable_link_pm ? 1 : 0;
    
    // width of flit control signals
    localparam flit_ctrl_width
      = (packet_format == `PACKET_FORMAT_HEAD_TAIL) ? 
        (1 + vc_idx_width + 1 + 1) : 
        (packet_format == `PACKET_FORMAT_TAIL_ONLY) ? 
        (1 + vc_idx_width + 1) : 
        (packet_format == `PACKET_FORMAT_EXPLICIT_LENGTH) ? 
        (1 + vc_idx_width + 1) : 
        -1;
    
    // channel width
    localparam channel_width
      = link_ctrl_width + flit_ctrl_width + flit_data_width;
    
    // use atomic VC allocation
    localparam atomic_vc_allocation = (elig_mask == `ELIG_MASK_USED);
    
    // number of pipeline stages in the channels
    localparam num_channel_stages = channel_latency - 1;
// Parameters end


    router_wrap
    #(.topology(topology),
      .buffer_size(buffer_size),
      .num_message_classes(num_message_classes),
      .num_resource_classes(num_resource_classes),
      .num_vcs_per_class(num_vcs_per_class),
      .num_nodes(num_nodes),
      .num_dimensions(num_dimensions),
      .num_nodes_per_router(num_nodes_per_router),
      .packet_format(packet_format),
      .flow_ctrl_type(flow_ctrl_type),
      .flow_ctrl_bypass(flow_ctrl_bypass),
      .max_payload_length(max_payload_length),
      .min_payload_length(min_payload_length),
      .router_type(router_type),
      .enable_link_pm(enable_link_pm),
      .flit_data_width(flit_data_width),
      .error_capture_mode(error_capture_mode),
      .restrict_turns(restrict_turns),
      .predecode_lar_info(predecode_lar_info),
      .routing_type(routing_type),
      .dim_order(dim_order),
      .input_stage_can_hold(input_stage_can_hold),
      .fb_regfile_type(fb_regfile_type),
      .fb_mgmt_type(fb_mgmt_type),
      .explicit_pipeline_register(explicit_pipeline_register),
      .dual_path_alloc(dual_path_alloc),
      .dual_path_allow_conflicts(dual_path_allow_conflicts),
      .dual_path_mask_on_ready(dual_path_mask_on_ready),
      .precomp_ivc_sel(precomp_ivc_sel),
      .precomp_ip_sel(precomp_ip_sel),
      .elig_mask(elig_mask),
      .vc_alloc_type(vc_alloc_type),
      .vc_alloc_arbiter_type(vc_alloc_arbiter_type),
      .vc_alloc_prefer_empty(vc_alloc_prefer_empty),
      .sw_alloc_type(sw_alloc_type),
      .sw_alloc_arbiter_type(sw_alloc_arbiter_type),
      .sw_alloc_spec_type(sw_alloc_spec_type),
      .crossbar_type(crossbar_type),
      .reset_type(reset_type))
    rtr_0(
        clk, 
        reset, 
        router_address, 
        channel_in_ip, 
        flow_ctrl_out_ip, 
        channel_out_op, 
        flow_ctrl_in_op,
        error
    );

endmodule