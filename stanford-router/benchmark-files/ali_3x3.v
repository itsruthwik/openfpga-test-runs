module ali_3x3 (
 clk, reset, 
 injection_channels, injection_flow_ctrl, ejection_channels, ejection_flow_ctrl,
  rtr_error,
 a,  b,  c
);

localparam channel_width = 69;
localparam flow_ctrl_width = 2;
localparam num_routers = 9;

input clk, reset, a, b, c;


input [0:(num_routers*channel_width)-1] injection_channels;
output [0:(num_routers*flow_ctrl_width)-1] injection_flow_ctrl;
output [0:(num_routers*channel_width)-1] ejection_channels;
input [0:(num_routers*flow_ctrl_width)-1] ejection_flow_ctrl;
output[0:num_routers-1] rtr_error;




	wire [0:channel_width-1] channel_router_0_op_0;
	wire [0:channel_width-1] channel_router_0_op_1;
	wire [0:channel_width-1] channel_router_0_op_2;
	wire [0:channel_width-1] channel_router_0_op_3;
	wire [0:channel_width-1] channel_router_0_op_4;
	wire [0:channel_width-1] channel_router_0_ip_0;
	wire [0:channel_width-1] channel_router_0_ip_1;
	wire [0:channel_width-1] channel_router_0_ip_2;
	wire [0:channel_width-1] channel_router_0_ip_3;
	wire [0:channel_width-1] channel_router_0_ip_4;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_0_ip_0;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_0_ip_1;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_0_ip_2;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_0_ip_3;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_0_ip_4;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_0_op_0;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_0_op_1;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_0_op_2;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_0_op_3;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_0_op_4;
	wire [0:channel_width-1] channel_router_1_op_0;
	wire [0:channel_width-1] channel_router_1_op_1;
	wire [0:channel_width-1] channel_router_1_op_2;
	wire [0:channel_width-1] channel_router_1_op_3;
	wire [0:channel_width-1] channel_router_1_op_4;
	wire [0:channel_width-1] channel_router_1_ip_0;
	wire [0:channel_width-1] channel_router_1_ip_1;
	wire [0:channel_width-1] channel_router_1_ip_2;
	wire [0:channel_width-1] channel_router_1_ip_3;
	wire [0:channel_width-1] channel_router_1_ip_4;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_1_ip_0;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_1_ip_1;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_1_ip_2;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_1_ip_3;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_1_ip_4;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_1_op_0;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_1_op_1;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_1_op_2;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_1_op_3;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_1_op_4;
	wire [0:channel_width-1] channel_router_2_op_0;
	wire [0:channel_width-1] channel_router_2_op_1;
	wire [0:channel_width-1] channel_router_2_op_2;
	wire [0:channel_width-1] channel_router_2_op_3;
	wire [0:channel_width-1] channel_router_2_op_4;
	wire [0:channel_width-1] channel_router_2_ip_0;
	wire [0:channel_width-1] channel_router_2_ip_1;
	wire [0:channel_width-1] channel_router_2_ip_2;
	wire [0:channel_width-1] channel_router_2_ip_3;
	wire [0:channel_width-1] channel_router_2_ip_4;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_2_ip_0;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_2_ip_1;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_2_ip_2;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_2_ip_3;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_2_ip_4;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_2_op_0;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_2_op_1;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_2_op_2;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_2_op_3;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_2_op_4;
	wire [0:channel_width-1] channel_router_3_op_0;
	wire [0:channel_width-1] channel_router_3_op_1;
	wire [0:channel_width-1] channel_router_3_op_2;
	wire [0:channel_width-1] channel_router_3_op_3;
	wire [0:channel_width-1] channel_router_3_op_4;
	wire [0:channel_width-1] channel_router_3_ip_0;
	wire [0:channel_width-1] channel_router_3_ip_1;
	wire [0:channel_width-1] channel_router_3_ip_2;
	wire [0:channel_width-1] channel_router_3_ip_3;
	wire [0:channel_width-1] channel_router_3_ip_4;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_3_ip_0;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_3_ip_1;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_3_ip_2;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_3_ip_3;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_3_ip_4;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_3_op_0;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_3_op_1;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_3_op_2;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_3_op_3;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_3_op_4;
	wire [0:channel_width-1] channel_router_4_op_0;
	wire [0:channel_width-1] channel_router_4_op_1;
	wire [0:channel_width-1] channel_router_4_op_2;
	wire [0:channel_width-1] channel_router_4_op_3;
	wire [0:channel_width-1] channel_router_4_op_4;
	wire [0:channel_width-1] channel_router_4_ip_0;
	wire [0:channel_width-1] channel_router_4_ip_1;
	wire [0:channel_width-1] channel_router_4_ip_2;
	wire [0:channel_width-1] channel_router_4_ip_3;
	wire [0:channel_width-1] channel_router_4_ip_4;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_4_ip_0;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_4_ip_1;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_4_ip_2;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_4_ip_3;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_4_ip_4;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_4_op_0;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_4_op_1;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_4_op_2;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_4_op_3;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_4_op_4;
	wire [0:channel_width-1] channel_router_5_op_0;
	wire [0:channel_width-1] channel_router_5_op_1;
	wire [0:channel_width-1] channel_router_5_op_2;
	wire [0:channel_width-1] channel_router_5_op_3;
	wire [0:channel_width-1] channel_router_5_op_4;
	wire [0:channel_width-1] channel_router_5_ip_0;
	wire [0:channel_width-1] channel_router_5_ip_1;
	wire [0:channel_width-1] channel_router_5_ip_2;
	wire [0:channel_width-1] channel_router_5_ip_3;
	wire [0:channel_width-1] channel_router_5_ip_4;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_5_ip_0;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_5_ip_1;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_5_ip_2;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_5_ip_3;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_5_ip_4;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_5_op_0;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_5_op_1;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_5_op_2;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_5_op_3;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_5_op_4;
	wire [0:channel_width-1] channel_router_6_op_0;
	wire [0:channel_width-1] channel_router_6_op_1;
	wire [0:channel_width-1] channel_router_6_op_2;
	wire [0:channel_width-1] channel_router_6_op_3;
	wire [0:channel_width-1] channel_router_6_op_4;
	wire [0:channel_width-1] channel_router_6_ip_0;
	wire [0:channel_width-1] channel_router_6_ip_1;
	wire [0:channel_width-1] channel_router_6_ip_2;
	wire [0:channel_width-1] channel_router_6_ip_3;
	wire [0:channel_width-1] channel_router_6_ip_4;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_6_ip_0;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_6_ip_1;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_6_ip_2;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_6_ip_3;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_6_ip_4;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_6_op_0;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_6_op_1;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_6_op_2;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_6_op_3;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_6_op_4;
	wire [0:channel_width-1] channel_router_7_op_0;
	wire [0:channel_width-1] channel_router_7_op_1;
	wire [0:channel_width-1] channel_router_7_op_2;
	wire [0:channel_width-1] channel_router_7_op_3;
	wire [0:channel_width-1] channel_router_7_op_4;
	wire [0:channel_width-1] channel_router_7_ip_0;
	wire [0:channel_width-1] channel_router_7_ip_1;
	wire [0:channel_width-1] channel_router_7_ip_2;
	wire [0:channel_width-1] channel_router_7_ip_3;
	wire [0:channel_width-1] channel_router_7_ip_4;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_7_ip_0;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_7_ip_1;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_7_ip_2;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_7_ip_3;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_7_ip_4;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_7_op_0;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_7_op_1;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_7_op_2;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_7_op_3;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_7_op_4;
	wire [0:channel_width-1] channel_router_8_op_0;
	wire [0:channel_width-1] channel_router_8_op_1;
	wire [0:channel_width-1] channel_router_8_op_2;
	wire [0:channel_width-1] channel_router_8_op_3;
	wire [0:channel_width-1] channel_router_8_op_4;
	wire [0:channel_width-1] channel_router_8_ip_0;
	wire [0:channel_width-1] channel_router_8_ip_1;
	wire [0:channel_width-1] channel_router_8_ip_2;
	wire [0:channel_width-1] channel_router_8_ip_3;
	wire [0:channel_width-1] channel_router_8_ip_4;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_8_ip_0;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_8_ip_1;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_8_ip_2;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_8_ip_3;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_8_ip_4;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_8_op_0;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_8_op_1;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_8_op_2;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_8_op_3;
	wire [0:flow_ctrl_width-1] flow_ctrl_router_8_op_4;

	//connected together channels and flow_ctrl
   assign channel_router_0_ip_0 = {channel_width{1'b0}};
   assign channel_router_0_ip_1 = channel_router_1_op_0;
   assign channel_router_0_ip_2 = {channel_width{1'b0}};
   assign channel_router_0_ip_3 = channel_router_3_op_2;
   assign channel_router_0_ip_4 = injection_channels[0:68];
   assign flow_ctrl_router_0_op_0 = {flow_ctrl_width{1'b0}};
   assign flow_ctrl_router_0_op_1 = flow_ctrl_router_1_ip_0;
   assign flow_ctrl_router_0_op_2 = {flow_ctrl_width{1'b0}};
   assign flow_ctrl_router_0_op_3 = flow_ctrl_router_3_ip_2;
   assign flow_ctrl_router_0_op_4 = ejection_flow_ctrl[0*flow_ctrl_width:(1*flow_ctrl_width)-1];

   assign channel_router_1_ip_0 = channel_router_0_op_1;
   assign channel_router_1_ip_1 = channel_router_2_op_0;
   assign channel_router_1_ip_2 = {channel_width{1'b0}};
   assign channel_router_1_ip_3 = channel_router_4_op_2;
   assign channel_router_1_ip_4 = injection_channels[1*channel_width:(2*channel_width)-1];
   assign flow_ctrl_router_1_op_0 = flow_ctrl_router_0_ip_1;
   assign flow_ctrl_router_1_op_1 = flow_ctrl_router_2_ip_0;
   assign flow_ctrl_router_1_op_2 = {flow_ctrl_width{1'b0}};
   assign flow_ctrl_router_1_op_3 = flow_ctrl_router_4_ip_2;
   assign flow_ctrl_router_1_op_4 = ejection_flow_ctrl[1*flow_ctrl_width:(2*flow_ctrl_width)-1];

   assign channel_router_2_ip_0 = channel_router_1_op_1;
   assign channel_router_2_ip_1 = {channel_width{1'b0}};
   assign channel_router_2_ip_2 = {channel_width{1'b0}};
   assign channel_router_2_ip_3 = channel_router_5_op_2;
   assign channel_router_2_ip_4 = injection_channels[2*channel_width:(3*channel_width)-1];
   assign flow_ctrl_router_2_op_0 = flow_ctrl_router_1_ip_1;
   assign flow_ctrl_router_2_op_1 = {flow_ctrl_width{1'b0}};
   assign flow_ctrl_router_2_op_2 = {flow_ctrl_width{1'b0}};
   assign flow_ctrl_router_2_op_3 = flow_ctrl_router_5_ip_2;
   assign flow_ctrl_router_2_op_4 = ejection_flow_ctrl[2*flow_ctrl_width:(3*flow_ctrl_width)-1];

   assign channel_router_3_ip_0 = {channel_width{1'b0}};
   assign channel_router_3_ip_1 = channel_router_4_op_0;
   assign channel_router_3_ip_2 = channel_router_0_op_3;
   assign channel_router_3_ip_3 = channel_router_6_op_2;
   assign channel_router_3_ip_4 = injection_channels[3*channel_width:(4*channel_width)-1];
   assign flow_ctrl_router_3_op_0 = {flow_ctrl_width{1'b0}};
   assign flow_ctrl_router_3_op_1 = flow_ctrl_router_4_ip_0;
   assign flow_ctrl_router_3_op_2 = flow_ctrl_router_0_ip_3;
   assign flow_ctrl_router_3_op_3 = flow_ctrl_router_6_ip_2;
   assign flow_ctrl_router_3_op_4 = ejection_flow_ctrl[3*flow_ctrl_width:(4*flow_ctrl_width)-1];

   assign channel_router_4_ip_0 = channel_router_3_op_1;
   assign channel_router_4_ip_1 = channel_router_5_op_0;
   assign channel_router_4_ip_2 = channel_router_1_op_3;
   assign channel_router_4_ip_3 = channel_router_7_op_2;
   assign channel_router_4_ip_4 = injection_channels[4*channel_width:(5*channel_width)-1];
   assign flow_ctrl_router_4_op_0 = flow_ctrl_router_3_ip_1;
   assign flow_ctrl_router_4_op_1 = flow_ctrl_router_5_ip_0;
   assign flow_ctrl_router_4_op_2 = flow_ctrl_router_1_ip_3;
   assign flow_ctrl_router_4_op_3 = flow_ctrl_router_7_ip_2;
   assign flow_ctrl_router_4_op_4 = ejection_flow_ctrl[4*flow_ctrl_width:(5*flow_ctrl_width)-1];

   assign channel_router_5_ip_0 = channel_router_4_op_1;
   assign channel_router_5_ip_1 = {channel_width{1'b0}};
   assign channel_router_5_ip_2 = channel_router_2_op_3;
   assign channel_router_5_ip_3 = channel_router_8_op_2;
   assign channel_router_5_ip_4 = injection_channels[5*channel_width:(6*channel_width)-1];
   assign flow_ctrl_router_5_op_0 = flow_ctrl_router_4_ip_1;
   assign flow_ctrl_router_5_op_1 = {flow_ctrl_width{1'b0}};
   assign flow_ctrl_router_5_op_2 = flow_ctrl_router_2_ip_3;
   assign flow_ctrl_router_5_op_3 = flow_ctrl_router_8_ip_2;
   assign flow_ctrl_router_5_op_4 = ejection_flow_ctrl[5*flow_ctrl_width:(6*flow_ctrl_width)-1];

   assign channel_router_6_ip_0 = {channel_width{1'b0}};
   assign channel_router_6_ip_1 = channel_router_7_op_0;
   assign channel_router_6_ip_2 = channel_router_3_op_3;
   assign channel_router_6_ip_3 = {channel_width{1'b0}};
   assign channel_router_6_ip_4 = injection_channels[6*channel_width:(7*channel_width)-1];
   assign flow_ctrl_router_6_op_0 = {flow_ctrl_width{1'b0}};
   assign flow_ctrl_router_6_op_1 = flow_ctrl_router_7_ip_0;
   assign flow_ctrl_router_6_op_2 = flow_ctrl_router_3_ip_3;
   assign flow_ctrl_router_6_op_3 = {flow_ctrl_width{1'b0}};
   assign flow_ctrl_router_6_op_4 = ejection_flow_ctrl[6*flow_ctrl_width:(7*flow_ctrl_width)-1];

   assign channel_router_7_ip_0 = channel_router_6_op_1;
   assign channel_router_7_ip_1 = channel_router_8_op_0;
   assign channel_router_7_ip_2 = channel_router_4_op_3;
   assign channel_router_7_ip_3 = {channel_width{1'b0}};
   assign channel_router_7_ip_4 = injection_channels[7*channel_width:(8*channel_width)-1];
   assign flow_ctrl_router_7_op_0 = flow_ctrl_router_6_ip_1;
   assign flow_ctrl_router_7_op_1 = flow_ctrl_router_8_ip_0;
   assign flow_ctrl_router_7_op_2 = flow_ctrl_router_4_ip_3;
   assign flow_ctrl_router_7_op_3 = {flow_ctrl_width{1'b0}};
   assign flow_ctrl_router_7_op_4 = ejection_flow_ctrl[7*flow_ctrl_width:(8*flow_ctrl_width)-1];

   assign channel_router_8_ip_0 = channel_router_7_op_1;
   assign channel_router_8_ip_1 = {channel_width{1'b0}};
   assign channel_router_8_ip_2 = channel_router_5_op_3;
   assign channel_router_8_ip_3 = {channel_width{1'b0}};
   assign channel_router_8_ip_4 = injection_channels[8*channel_width:(9*channel_width)-1];
   assign flow_ctrl_router_8_op_0 = flow_ctrl_router_7_ip_1;
   assign flow_ctrl_router_8_op_1 = {flow_ctrl_width{1'b0}};
   assign flow_ctrl_router_8_op_2 = flow_ctrl_router_5_ip_3;
   assign flow_ctrl_router_8_op_3 = {flow_ctrl_width{1'b0}};
   assign flow_ctrl_router_8_op_4 = ejection_flow_ctrl[8*flow_ctrl_width:(9*flow_ctrl_width)-1];
	
	//connected routers to flit_sink and packet_source
	assign injection_flow_ctrl[0*flow_ctrl_width:(1*flow_ctrl_width)-1] = flow_ctrl_router_0_ip_4;
	assign ejection_channels[0*channel_width:(1*channel_width)-1] = channel_router_0_op_4;

	assign injection_flow_ctrl[1*flow_ctrl_width:(2*flow_ctrl_width)-1] = flow_ctrl_router_1_ip_4;
	assign ejection_channels[1*channel_width:(2*channel_width)-1] = channel_router_1_op_4;

	assign injection_flow_ctrl[2*flow_ctrl_width:(3*flow_ctrl_width)-1] = flow_ctrl_router_2_ip_4;
	assign ejection_channels[2*channel_width:(3*channel_width)-1] = channel_router_2_op_4;

	assign injection_flow_ctrl[3*flow_ctrl_width:(4*flow_ctrl_width)-1] = flow_ctrl_router_3_ip_4;
	assign ejection_channels[3*channel_width:(4*channel_width)-1] = channel_router_3_op_4;

	assign injection_flow_ctrl[4*flow_ctrl_width:(5*flow_ctrl_width)-1] = flow_ctrl_router_4_ip_4;
	assign ejection_channels[4*channel_width:(5*channel_width)-1] = channel_router_4_op_4;

	assign injection_flow_ctrl[5*flow_ctrl_width:(6*flow_ctrl_width)-1] = flow_ctrl_router_5_ip_4;
	assign ejection_channels[5*channel_width:(6*channel_width)-1] = channel_router_5_op_4;

	assign injection_flow_ctrl[6*flow_ctrl_width:(7*flow_ctrl_width)-1] = flow_ctrl_router_6_ip_4;
	assign ejection_channels[6*channel_width:(7*channel_width)-1] = channel_router_6_op_4;

	assign injection_flow_ctrl[7*flow_ctrl_width:(8*flow_ctrl_width)-1] = flow_ctrl_router_7_ip_4;
	assign ejection_channels[7*channel_width:(8*channel_width)-1] = channel_router_7_op_4;

	assign injection_flow_ctrl[8*flow_ctrl_width:(9*flow_ctrl_width)-1] = flow_ctrl_router_8_ip_4;
	assign ejection_channels[8*channel_width:(9*channel_width)-1] = channel_router_8_op_4;




   (*keep*)
   router_desc rtr_0
     (.clk(clk),
      .reset(reset),
      .router_address(4'b0000),
      .channel_in_ip({channel_router_0_ip_0, channel_router_0_ip_1, channel_router_0_ip_2, channel_router_0_ip_3, channel_router_0_ip_4}),
      .flow_ctrl_out_ip({ flow_ctrl_router_0_ip_0, flow_ctrl_router_0_ip_1, flow_ctrl_router_0_ip_2, flow_ctrl_router_0_ip_3, flow_ctrl_router_0_ip_4 }),
      .channel_out_op({ channel_router_0_op_0, channel_router_0_op_1, channel_router_0_op_2, channel_router_0_op_3, channel_router_0_op_4 }),
      .flow_ctrl_in_op({ flow_ctrl_router_0_op_0, flow_ctrl_router_0_op_1, flow_ctrl_router_0_op_2, flow_ctrl_router_0_op_3, flow_ctrl_router_0_op_4 }),
      .error(rtr_error[0]));
		
   (*keep*)
   router_desc rtr_1
     (.clk(clk),
      .reset(reset),
      .router_address(4'b0100),
      .channel_in_ip({channel_router_1_ip_0, channel_router_1_ip_1, channel_router_1_ip_2, channel_router_1_ip_3, channel_router_1_ip_4}),
      .flow_ctrl_out_ip({ flow_ctrl_router_1_ip_0, flow_ctrl_router_1_ip_1, flow_ctrl_router_1_ip_2, flow_ctrl_router_1_ip_3, flow_ctrl_router_1_ip_4 }),
      .channel_out_op({ channel_router_1_op_0, channel_router_1_op_1, channel_router_1_op_2, channel_router_1_op_3, channel_router_1_op_4 }),
      .flow_ctrl_in_op({ flow_ctrl_router_1_op_0, flow_ctrl_router_1_op_1, flow_ctrl_router_1_op_2, flow_ctrl_router_1_op_3, flow_ctrl_router_1_op_4 }),
      .error(rtr_error[1]));
		
   (*keep*)
   router_desc rtr_2
     (.clk(clk),
      .reset(reset),
      .router_address(4'b1000),
      .channel_in_ip({channel_router_2_ip_0, channel_router_2_ip_1, channel_router_2_ip_2, channel_router_2_ip_3, channel_router_2_ip_4}),
      .flow_ctrl_out_ip({ flow_ctrl_router_2_ip_0, flow_ctrl_router_2_ip_1, flow_ctrl_router_2_ip_2, flow_ctrl_router_2_ip_3, flow_ctrl_router_2_ip_4 }),
      .channel_out_op({ channel_router_2_op_0, channel_router_2_op_1, channel_router_2_op_2, channel_router_2_op_3, channel_router_2_op_4 }),
      .flow_ctrl_in_op({ flow_ctrl_router_2_op_0, flow_ctrl_router_2_op_1, flow_ctrl_router_2_op_2, flow_ctrl_router_2_op_3, flow_ctrl_router_2_op_4 }),
      .error(rtr_error[2]));
		
   (*keep*)
   router_desc rtr_3
     (.clk(clk),
      .reset(reset),
      .router_address(4'b0001),
      .channel_in_ip({channel_router_3_ip_0, channel_router_3_ip_1, channel_router_3_ip_2, channel_router_3_ip_3, channel_router_3_ip_4}),
      .flow_ctrl_out_ip({ flow_ctrl_router_3_ip_0, flow_ctrl_router_3_ip_1, flow_ctrl_router_3_ip_2, flow_ctrl_router_3_ip_3, flow_ctrl_router_3_ip_4 }),
      .channel_out_op({ channel_router_3_op_0, channel_router_3_op_1, channel_router_3_op_2, channel_router_3_op_3, channel_router_3_op_4 }),
      .flow_ctrl_in_op({ flow_ctrl_router_3_op_0, flow_ctrl_router_3_op_1, flow_ctrl_router_3_op_2, flow_ctrl_router_3_op_3, flow_ctrl_router_3_op_4 }),
      .error(rtr_error[3]));
		
   (*keep*)
   router_desc rtr_4
     (.clk(clk),
      .reset(reset),
      .router_address(4'b0101),
      .channel_in_ip({channel_router_4_ip_0, channel_router_4_ip_1, channel_router_4_ip_2, channel_router_4_ip_3, channel_router_4_ip_4}),
      .flow_ctrl_out_ip({ flow_ctrl_router_4_ip_0, flow_ctrl_router_4_ip_1, flow_ctrl_router_4_ip_2, flow_ctrl_router_4_ip_3, flow_ctrl_router_4_ip_4 }),
      .channel_out_op({ channel_router_4_op_0, channel_router_4_op_1, channel_router_4_op_2, channel_router_4_op_3, channel_router_4_op_4 }),
      .flow_ctrl_in_op({ flow_ctrl_router_4_op_0, flow_ctrl_router_4_op_1, flow_ctrl_router_4_op_2, flow_ctrl_router_4_op_3, flow_ctrl_router_4_op_4 }),
      .error(rtr_error[4]));
		
   (*keep*)
   router_desc rtr_5
     (.clk(clk),
      .reset(reset),
      .router_address(4'b1001),
      .channel_in_ip({channel_router_5_ip_0, channel_router_5_ip_1, channel_router_5_ip_2, channel_router_5_ip_3, channel_router_5_ip_4}),
      .flow_ctrl_out_ip({ flow_ctrl_router_5_ip_0, flow_ctrl_router_5_ip_1, flow_ctrl_router_5_ip_2, flow_ctrl_router_5_ip_3, flow_ctrl_router_5_ip_4 }),
      .channel_out_op({ channel_router_5_op_0, channel_router_5_op_1, channel_router_5_op_2, channel_router_5_op_3, channel_router_5_op_4 }),
      .flow_ctrl_in_op({ flow_ctrl_router_5_op_0, flow_ctrl_router_5_op_1, flow_ctrl_router_5_op_2, flow_ctrl_router_5_op_3, flow_ctrl_router_5_op_4 }),
      .error(rtr_error[5]));
		
   (*keep*)
   router_desc rtr_6
     (.clk(clk),
      .reset(reset),
      .router_address(4'b0010),
      .channel_in_ip({channel_router_6_ip_0, channel_router_6_ip_1, channel_router_6_ip_2, channel_router_6_ip_3, channel_router_6_ip_4}),
      .flow_ctrl_out_ip({ flow_ctrl_router_6_ip_0, flow_ctrl_router_6_ip_1, flow_ctrl_router_6_ip_2, flow_ctrl_router_6_ip_3, flow_ctrl_router_6_ip_4 }),
      .channel_out_op({ channel_router_6_op_0, channel_router_6_op_1, channel_router_6_op_2, channel_router_6_op_3, channel_router_6_op_4 }),
      .flow_ctrl_in_op({ flow_ctrl_router_6_op_0, flow_ctrl_router_6_op_1, flow_ctrl_router_6_op_2, flow_ctrl_router_6_op_3, flow_ctrl_router_6_op_4 }),
      .error(rtr_error[6]));
		
   (*keep*)
   router_desc rtr_7
     (.clk(clk),
      .reset(reset),
      .router_address(4'b0110),
      .channel_in_ip({channel_router_7_ip_0, channel_router_7_ip_1, channel_router_7_ip_2, channel_router_7_ip_3, channel_router_7_ip_4}),
      .flow_ctrl_out_ip({ flow_ctrl_router_7_ip_0, flow_ctrl_router_7_ip_1, flow_ctrl_router_7_ip_2, flow_ctrl_router_7_ip_3, flow_ctrl_router_7_ip_4 }),
      .channel_out_op({ channel_router_7_op_0, channel_router_7_op_1, channel_router_7_op_2, channel_router_7_op_3, channel_router_7_op_4 }),
      .flow_ctrl_in_op({ flow_ctrl_router_7_op_0, flow_ctrl_router_7_op_1, flow_ctrl_router_7_op_2, flow_ctrl_router_7_op_3, flow_ctrl_router_7_op_4 }),
      .error(rtr_error[7]));
		
   (*keep*)
   router_desc rtr_8
     (.clk(clk),
      .reset(reset),
      .router_address(4'b1010),
      .channel_in_ip({channel_router_8_ip_0, channel_router_8_ip_1, channel_router_8_ip_2, channel_router_8_ip_3, channel_router_8_ip_4}),
      .flow_ctrl_out_ip({ flow_ctrl_router_8_ip_0, flow_ctrl_router_8_ip_1, flow_ctrl_router_8_ip_2, flow_ctrl_router_8_ip_3, flow_ctrl_router_8_ip_4 }),
      .channel_out_op({ channel_router_8_op_0, channel_router_8_op_1, channel_router_8_op_2, channel_router_8_op_3, channel_router_8_op_4 }),
      .flow_ctrl_in_op({ flow_ctrl_router_8_op_0, flow_ctrl_router_8_op_1, flow_ctrl_router_8_op_2, flow_ctrl_router_8_op_3, flow_ctrl_router_8_op_4 }),
      .error(rtr_error[8]));
   

   assign c = a+b;
endmodule
