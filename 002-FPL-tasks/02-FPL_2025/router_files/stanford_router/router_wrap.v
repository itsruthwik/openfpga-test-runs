`include "router_slice.v"
module router_wrap(
        input clk,
        input reset,
        input [3:0] router_address,
        input [189:0] channel_in_ip,      
        output [14:0] flow_ctrl_out_ip,
        output [189:0] channel_out_op,     
        input [14:0] flow_ctrl_in_op,
        output error
    );


   router_slice
     #(.topology(0),
       .buffer_size(32),                 
       .num_message_classes(1),
       .num_resource_classes(1),
       .num_vcs_per_class(4),
       .num_nodes(9),
       .num_dimensions(2),
       .num_nodes_per_router(1),
       .packet_format(0),
       .flow_ctrl_type(0),
       .flow_ctrl_bypass(0),
       .max_payload_length(4),
       .min_payload_length(0),
       .router_type(1),
       .enable_link_pm(1),
       .flit_data_width(32),             
       .error_capture_mode(1),
       .restrict_turns(1),
       .predecode_lar_info(1),
       .routing_type(0),
       .dim_order(0),
       .input_stage_can_hold(0),
       .fb_regfile_type(0),
       .fb_mgmt_type(0),
       .explicit_pipeline_register(0),
       .dual_path_alloc(0),
       .dual_path_allow_conflicts(0),
       .dual_path_mask_on_ready(1),
       .precomp_ivc_sel(0),
       .precomp_ip_sel(0),
       .elig_mask(1),
       .vc_alloc_type(0),
       .vc_alloc_arbiter_type(0),
       .vc_alloc_prefer_empty(0),
       .sw_alloc_type(0),
       .sw_alloc_arbiter_type(0),
       .sw_alloc_spec_type(1),
       .crossbar_type(0),
       .reset_type(0))
   rtr_wrap
     (.clk(clk),
      .reset(reset),
      .router_address(router_address),
      .channel_in_ip(channel_in_ip),
      .flow_ctrl_out_ip(flow_ctrl_out_ip),
      .channel_out_op(channel_out_op),
      .flow_ctrl_in_op(flow_ctrl_in_op),
      .error(error) );
        

endmodule