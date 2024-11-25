'include "/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/stanford-router/router-rtl-files/src/router_wrap.v"

module router_slice
  (clk, reset, router_address, channel_in_ip, flow_ctrl_out_ip, channel_out_op, 
   flow_ctrl_in_op, error);

    input clk;
    input reset;
    input router_address;
    input channel_in_ip;
    input flow_ctrl_out_ip;

    output channel_out_op;
    input flow_ctrl_in_op;
    output error;

    router_wrap rtr_wrap_0(
        clk, 
        reset, 
        router_address, 
        channel_in_ip, 
        flow_ctrl_out_ip, 
        channel_out_op, 
        flow_ctrl_in_op, error
    );

endmodule