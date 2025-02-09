module mesh_1x2 (
input clk,
input reset,
output  rtr_error,

input [0:339]  channel_in_ip,
input [0:9]    flow_ctrl_router_0_in,

output [0:339]  channel_out_op,
output [0:9]    flow_ctrl_out,

input a,
input b,
output c
);
   (* keep *)
   router_asc #(.MODE(2'b00)) rtr_0 (
      .clk(clk),
      .reset(reset),
      .router_address(2'b00),
      .channel_in_ip(channel_in_ip),
      .channel_out_op(channel_out_op),
      .flow_ctrl_out_ip(flow_ctrl_out),
      .flow_ctrl_in_op(flow_ctrl_router_0_in),
      .error(rtr_error)
      );

   assign c = a+b;
endmodule
