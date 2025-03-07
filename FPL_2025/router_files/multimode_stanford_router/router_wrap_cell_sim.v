(* whitebox *)
module router_desc(
    input clk,
    input reset,
    input [0:3] router_address,
    input [0:189] channel_in_ip,      
    input [0:14] flow_ctrl_out_ip,
    output reg [0:189] channel_out_op,     
    output reg [0:14] flow_ctrl_in_op,
    output reg error
); 

  always @(posedge clk) begin
    if (reset) begin
      error <= 0;
      flow_ctrl_in_op <= 0;
      channel_out_op <= 0;  
    end
  end

endmodule

(* whitebox *)
module router_asc(
  input clk,
  input reset,
  input [0:3] router_address,
  input [0:189] channel_in_ip,
  output [0:14] flow_ctrl_out_ip,
  output reg [0:189] channel_out_op,
  input [0:14] flow_ctrl_in_op,
  output reg error
);

  always @(posedge clk) begin
    if (reset) begin
      error <= 0;
      channel_out_op <= 0;  
    end
  end

endmodule

(* whitebox *)
module router_class(
  input clk,
  input reset,
  input [0:3] router_address,
  input [0:189] channel_in_ip,
  output [0:14] flow_ctrl_out_ip,
  output reg [0:189] channel_out_op,
  input [0:14] flow_ctrl_in_op,
  output reg error
);

  always @(posedge clk) begin
    if (reset) begin
      error <= 0;
      channel_out_op <= 0;  
    end
  end

endmodule
