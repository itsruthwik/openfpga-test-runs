module mesh_1x2 (
input clk,
input reset,
output  rtr_error,

input [0:349]  channel_router_0_ip,
input [0:14]    flow_ctrl_router_0_in,

output [0:349]  channel_router_0_op,
output [0:14]    flow_ctrl_out,

input a,
input b,
output c
);
   
   router_slice   rtr_0 (
      .clk(clk),
      .reset(reset),
      .router_address(4'b0000),
      .channel_in_ip(channel_router_0_ip),
      .channel_out_op(channel_router_0_op),
      .flow_ctrl_out_ip(flow_ctrl_out),
      .flow_ctrl_in_op(flow_ctrl_router_0_in),
      .error(rtr_error)
      );

   assign c = a+b;
endmodule