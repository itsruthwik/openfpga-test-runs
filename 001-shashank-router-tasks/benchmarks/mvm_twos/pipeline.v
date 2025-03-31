/**
Pipeline Module
Convenient module to specify register delays

Parameters:
DELAY: Number of Registers to delay data_in by
WIDTH: Width of data

Inputs:
data_in: The data to be delayed

Outputs:
data_out: The data after the pipelined delay
**/

module pipeline # (
	parameter DELAY = 1,
	parameter WIDTH = 32
)(
	input  clk,
	input  rst,
	input  [WIDTH-1:0] data_in,
	output [WIDTH-1:0] data_out
);

reg [WIDTH-1:0] r_pipeline [0:DELAY-1]; 

integer i;
always @ (posedge clk) begin
	if (rst) begin
		for (i = 0; i < DELAY; i = i + 1) begin
			r_pipeline[i] <= 0;
		end
	end else begin
		r_pipeline[0] <= data_in;
		for (i = 1; i < DELAY; i = i + 1) begin
			r_pipeline[i] <= r_pipeline[i-1];
		end
	end
end

assign data_out = r_pipeline[DELAY-1];

endmodule