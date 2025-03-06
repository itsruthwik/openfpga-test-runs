module mesh_1x2 (
input clk,
input reset,
output  rtr_error_asc,

output  rtr_error_desc,

output  rtr_error_class,

input [0:344]  channel_in_ip,
input [0:9]    flow_ctrl_router_0_in,

output [0:344]  channel_out_op_asc,
output [0:9]    flow_ctrl_out_asc,

output [0:344]  channel_out_op_desc,
output [0:9]    flow_ctrl_out_desc,

output [0:344]  channel_out_op_class,
output [0:9]    flow_ctrl_out_class,

input a,
input b,
output c
);

   
   (* keep *)
   router_asc rtr_0 (
      .clk(clk),
      .reset(reset),
      .router_address(4'b0000),
      .channel_in_ip(channel_in_ip),
      .channel_out_op(channel_out_op_asc),
      .flow_ctrl_out_ip(flow_ctrl_out_asc),
      .flow_ctrl_in_op(flow_ctrl_router_0_in),
      .error(rtr_error_asc)
      );

   (* keep *)
   router_desc rtr_1 (
      .clk(clk),
      .reset(reset),
      .router_address(4'b0000),
      .channel_in_ip(channel_in_ip),
      .channel_out_op(channel_out_op_desc),
      .flow_ctrl_out_ip(flow_ctrl_out_desc),
      .flow_ctrl_in_op(flow_ctrl_router_0_in),
      .error(rtr_error_desc)
      );
      
   (* keep *)
   router_class  rtr_2 (
      .clk(clk),
      .reset(reset),
      .router_address(4'b0000),
      .channel_in_ip(channel_in_ip),
      .channel_out_op(channel_out_op_class),
      .flow_ctrl_out_ip(flow_ctrl_out_class),
      .flow_ctrl_in_op(flow_ctrl_router_0_in),
      .error(rtr_error_class)
      );

   assign c = a+b;
endmodule
