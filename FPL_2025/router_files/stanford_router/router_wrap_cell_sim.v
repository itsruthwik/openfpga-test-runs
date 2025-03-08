(* whitebox *)
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

  reg [189:0] channel_out_op;
  reg [14:0] flow_ctrl_out_ip;
  reg error;


  always @(posedge clk) begin
    if (reset) begin
      error <= 0;
      flow_ctrl_out_ip <= 0;
      channel_out_op <= 0;  
    end
    else begin
      channel_out_op <= channel_in_ip;
      flow_ctrl_out_ip <= flow_ctrl_in_op;
    end
  end
        
endmodule