(* whitebox *)
module adder (a,b,c);

input [7:0] a,b;
output [8:0] c;
assign c = a+b;
endmodule