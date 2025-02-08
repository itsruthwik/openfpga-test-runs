module router_asc(
        input clk,
        input reset,
        input [0:1] router_address,
        input [0:339] channel_in_ip,
        output [0:9] flow_ctrl_out_ip,
        output [0:339] channel_out_op,
        input [0:9] flow_ctrl_in_op,
        output error
    );

	router_asc #(.MODE(2'b00)) _TECHMAP_REPLACE_(
		.clk(clk),
        	.reset(reset),
        	.router_address(router_address),
        	.channel_in_ip(channel_in_ip),
        	.flow_ctrl_out_ip(flow_ctrl_out_ip),
        	.channel_out_op(channel_out_op),
        	.flow_ctrl_in_op(flow_ctrl_in_op),
        	.error(error)

end

module router_desc(
        input clk,
        input reset,
        input [0:1] router_address,
        input [0:339] channel_in_ip,
        output [0:9] flow_ctrl_out_ip,
        output [0:339] channel_out_op,
        input [0:9] flow_ctrl_in_op,
        output error
    );

	router_desc #(.MODE(2'b01)) _TECHMAP_REPLACE_(
		.clk(clk),
        	.reset(reset),
        	.router_address(router_address),
        	.channel_in_ip(channel_in_ip),
        	.flow_ctrl_out_ip(flow_ctrl_out_ip),
        	.channel_out_op(channel_out_op),
        	.flow_ctrl_in_op(flow_ctrl_in_op),
        	.error(error)

end

module router_asc(
        input clk,
        input reset,
        input [0:1] router_address,
        input [0:339] channel_in_ip,
        output [0:9] flow_ctrl_out_ip,
        output [0:339] channel_out_op,
        input [0:9] flow_ctrl_in_op,
        output error
    );

	router_class #(.MODE(2'b10)) _TECHMAP_REPLACE_(
		.clk(clk),
        	.reset(reset),
        	.router_address(router_address),
        	.channel_in_ip(channel_in_ip),
        	.flow_ctrl_out_ip(flow_ctrl_out_ip),
        	.channel_out_op(channel_out_op),
        	.flow_ctrl_in_op(flow_ctrl_in_op),
        	.error(error)

end

