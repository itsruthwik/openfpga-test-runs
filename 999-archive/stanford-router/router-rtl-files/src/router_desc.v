
`include "/mnt/vault1/mfaroo19/OpenFPGA/openfpga-test-runs/stanford-router/router-rtl-files/src/router_wrap.v"
`include "/mnt/vault1/mfaroo19/OpenFPGA/openfpga-test-runs/stanford-router-adder/router-rtl-files/src/clib/combined_includes.v"
`include "/mnt/vault1/mfaroo19/OpenFPGA/openfpga-test-runs/stanford-router-adder/router-rtl-files/src/clib/router_includes.v"
module router_desc(clk, reset, router_address, channel_in_ip, flow_ctrl_out_ip, channel_out_op, flow_ctrl_in_op, error);
`include "/mnt/vault1/mfaroo19/OpenFPGA/openfpga-test-runs/stanford-router-adder/router-rtl-files/src/clib/c_constants.v"

        input clk;
        input reset;
        input [0:3] router_address;
        input [0:344] channel_in_ip;
        output [0:9] flow_ctrl_out_ip;
        output [0:344] channel_out_op;
        input [0:9] flow_ctrl_in_op;
        output error;

router_wrap RTR_DUT(.mode(2'b10), .clk(clk), .reset(reset), .router_address(router_address), .channel_in_ip(channel_in_ip), .flow_ctrl_out_ip(flow_ctrl_out_ip), .channel_out_op(channel_out_op), .flow_ctrl_in_op(flow_ctrl_in_op), .error(error));

endmodule
