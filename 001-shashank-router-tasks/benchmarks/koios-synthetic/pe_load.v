
module pe_load(input clk, input reset,input [127:0] top_inp, output [127:0] top_outp); 
 


 wire [125:0] inp_input_fifo;
wire [123:0] outp_input_fifo;

fifo_512_60bit_module_2 input_fifo (.clk(clk),.reset(reset),.inp(inp_input_fifo),.outp(outp_input_fifo)); 


 wire [1023:0] inp_dsp_chain1;
wire [127:0] outp_dsp_chain1;

dsp_chain_4_fp16_sop2_mult_module_4 dsp_chain1 (.clk(clk),.reset(reset),.inp(inp_dsp_chain1),.outp(outp_dsp_chain1)); 
wire [123:0] inp_interface_1; 
wire [1023:0] outp_interface_1; 

interface_1 inst_interface_1(.clk(clk),.reset(reset),.inp(inp_interface_1),.outp(outp_interface_1)); 


 wire [125:0] inp_output_fifo;
wire [123:0] outp_output_fifo;

fifo_512_60bit_module_2 output_fifo (.clk(clk),.reset(reset),.inp(inp_output_fifo),.outp(outp_output_fifo)); 
wire [127:0] inp_interface_2; 
wire [125:0] outp_interface_2; 

interface_2 inst_interface_2(.clk(clk),.reset(reset),.inp(inp_interface_2),.outp(outp_interface_2)); 

assign inp_input_fifo = top_inp[125:0]; 
assign top_outp[127:124] = {top_inp[127:126] ^ top_inp[127:126], top_inp[127:126] ^ top_inp[127:126]};
assign inp_dsp_chain1 = outp_interface_1; 
assign inp_interface_1 = {outp_input_fifo}; 
 

assign inp_output_fifo = outp_interface_2; 
assign top_outp[123:0] = outp_output_fifo; 
assign inp_interface_2 = {outp_dsp_chain1}; 
 

 endmodule 


module interface_1(input [123:0] inp, output reg [1023:0] outp, input clk, input reset);
always@(posedge clk) begin 
outp[123:0] <= inp ; 
outp[247:124] <= inp ; 
outp[371:248] <= inp ; 
outp[495:372] <= inp ; 
outp[619:496] <= inp ; 
outp[743:620] <= inp ; 
outp[867:744] <= inp ; 
outp[991:868] <= inp ; 
outp[1023:992] <= inp[31:0] ; 
end 
endmodule 

module interface_2(input [127:0] inp, output reg [125:0] outp, input clk, input reset);
reg [127:0]intermediate_reg_0; 
always@(posedge clk) begin 
intermediate_reg_0 <= inp; 
end 
 
wire [63:0]intermediate_reg_1; 
 
xor_module xor_module_inst_1_0(.clk(clk),.reset(reset),.i1(intermediate_reg_0[127]),.i2(intermediate_reg_0[126]),.o(intermediate_reg_1[63])); 
xor_module xor_module_inst_1_1(.clk(clk),.reset(reset),.i1(intermediate_reg_0[125]),.i2(intermediate_reg_0[124]),.o(intermediate_reg_1[62])); 
xor_module xor_module_inst_1_2(.clk(clk),.reset(reset),.i1(intermediate_reg_0[123]),.i2(intermediate_reg_0[122]),.o(intermediate_reg_1[61])); 
xor_module xor_module_inst_1_3(.clk(clk),.reset(reset),.i1(intermediate_reg_0[121]),.i2(intermediate_reg_0[120]),.o(intermediate_reg_1[60])); 
xor_module xor_module_inst_1_4(.clk(clk),.reset(reset),.i1(intermediate_reg_0[119]),.i2(intermediate_reg_0[118]),.o(intermediate_reg_1[59])); 
xor_module xor_module_inst_1_5(.clk(clk),.reset(reset),.i1(intermediate_reg_0[117]),.i2(intermediate_reg_0[116]),.o(intermediate_reg_1[58])); 
xor_module xor_module_inst_1_6(.clk(clk),.reset(reset),.i1(intermediate_reg_0[115]),.i2(intermediate_reg_0[114]),.o(intermediate_reg_1[57])); 
xor_module xor_module_inst_1_7(.clk(clk),.reset(reset),.i1(intermediate_reg_0[113]),.i2(intermediate_reg_0[112]),.o(intermediate_reg_1[56])); 
xor_module xor_module_inst_1_8(.clk(clk),.reset(reset),.i1(intermediate_reg_0[111]),.i2(intermediate_reg_0[110]),.o(intermediate_reg_1[55])); 
xor_module xor_module_inst_1_9(.clk(clk),.reset(reset),.i1(intermediate_reg_0[109]),.i2(intermediate_reg_0[108]),.o(intermediate_reg_1[54])); 
xor_module xor_module_inst_1_10(.clk(clk),.reset(reset),.i1(intermediate_reg_0[107]),.i2(intermediate_reg_0[106]),.o(intermediate_reg_1[53])); 
xor_module xor_module_inst_1_11(.clk(clk),.reset(reset),.i1(intermediate_reg_0[105]),.i2(intermediate_reg_0[104]),.o(intermediate_reg_1[52])); 
xor_module xor_module_inst_1_12(.clk(clk),.reset(reset),.i1(intermediate_reg_0[103]),.i2(intermediate_reg_0[102]),.o(intermediate_reg_1[51])); 
xor_module xor_module_inst_1_13(.clk(clk),.reset(reset),.i1(intermediate_reg_0[101]),.i2(intermediate_reg_0[100]),.o(intermediate_reg_1[50])); 
xor_module xor_module_inst_1_14(.clk(clk),.reset(reset),.i1(intermediate_reg_0[99]),.i2(intermediate_reg_0[98]),.o(intermediate_reg_1[49])); 
xor_module xor_module_inst_1_15(.clk(clk),.reset(reset),.i1(intermediate_reg_0[97]),.i2(intermediate_reg_0[96]),.o(intermediate_reg_1[48])); 
xor_module xor_module_inst_1_16(.clk(clk),.reset(reset),.i1(intermediate_reg_0[95]),.i2(intermediate_reg_0[94]),.o(intermediate_reg_1[47])); 
xor_module xor_module_inst_1_17(.clk(clk),.reset(reset),.i1(intermediate_reg_0[93]),.i2(intermediate_reg_0[92]),.o(intermediate_reg_1[46])); 
xor_module xor_module_inst_1_18(.clk(clk),.reset(reset),.i1(intermediate_reg_0[91]),.i2(intermediate_reg_0[90]),.o(intermediate_reg_1[45])); 
xor_module xor_module_inst_1_19(.clk(clk),.reset(reset),.i1(intermediate_reg_0[89]),.i2(intermediate_reg_0[88]),.o(intermediate_reg_1[44])); 
xor_module xor_module_inst_1_20(.clk(clk),.reset(reset),.i1(intermediate_reg_0[87]),.i2(intermediate_reg_0[86]),.o(intermediate_reg_1[43])); 
xor_module xor_module_inst_1_21(.clk(clk),.reset(reset),.i1(intermediate_reg_0[85]),.i2(intermediate_reg_0[84]),.o(intermediate_reg_1[42])); 
xor_module xor_module_inst_1_22(.clk(clk),.reset(reset),.i1(intermediate_reg_0[83]),.i2(intermediate_reg_0[82]),.o(intermediate_reg_1[41])); 
xor_module xor_module_inst_1_23(.clk(clk),.reset(reset),.i1(intermediate_reg_0[81]),.i2(intermediate_reg_0[80]),.o(intermediate_reg_1[40])); 
xor_module xor_module_inst_1_24(.clk(clk),.reset(reset),.i1(intermediate_reg_0[79]),.i2(intermediate_reg_0[78]),.o(intermediate_reg_1[39])); 
xor_module xor_module_inst_1_25(.clk(clk),.reset(reset),.i1(intermediate_reg_0[77]),.i2(intermediate_reg_0[76]),.o(intermediate_reg_1[38])); 
xor_module xor_module_inst_1_26(.clk(clk),.reset(reset),.i1(intermediate_reg_0[75]),.i2(intermediate_reg_0[74]),.o(intermediate_reg_1[37])); 
xor_module xor_module_inst_1_27(.clk(clk),.reset(reset),.i1(intermediate_reg_0[73]),.i2(intermediate_reg_0[72]),.o(intermediate_reg_1[36])); 
xor_module xor_module_inst_1_28(.clk(clk),.reset(reset),.i1(intermediate_reg_0[71]),.i2(intermediate_reg_0[70]),.o(intermediate_reg_1[35])); 
xor_module xor_module_inst_1_29(.clk(clk),.reset(reset),.i1(intermediate_reg_0[69]),.i2(intermediate_reg_0[68]),.o(intermediate_reg_1[34])); 
xor_module xor_module_inst_1_30(.clk(clk),.reset(reset),.i1(intermediate_reg_0[67]),.i2(intermediate_reg_0[66]),.o(intermediate_reg_1[33])); 
xor_module xor_module_inst_1_31(.clk(clk),.reset(reset),.i1(intermediate_reg_0[65]),.i2(intermediate_reg_0[64]),.o(intermediate_reg_1[32])); 
xor_module xor_module_inst_1_32(.clk(clk),.reset(reset),.i1(intermediate_reg_0[63]),.i2(intermediate_reg_0[62]),.o(intermediate_reg_1[31])); 
xor_module xor_module_inst_1_33(.clk(clk),.reset(reset),.i1(intermediate_reg_0[61]),.i2(intermediate_reg_0[60]),.o(intermediate_reg_1[30])); 
xor_module xor_module_inst_1_34(.clk(clk),.reset(reset),.i1(intermediate_reg_0[59]),.i2(intermediate_reg_0[58]),.o(intermediate_reg_1[29])); 
xor_module xor_module_inst_1_35(.clk(clk),.reset(reset),.i1(intermediate_reg_0[57]),.i2(intermediate_reg_0[56]),.o(intermediate_reg_1[28])); 
xor_module xor_module_inst_1_36(.clk(clk),.reset(reset),.i1(intermediate_reg_0[55]),.i2(intermediate_reg_0[54]),.o(intermediate_reg_1[27])); 
xor_module xor_module_inst_1_37(.clk(clk),.reset(reset),.i1(intermediate_reg_0[53]),.i2(intermediate_reg_0[52]),.o(intermediate_reg_1[26])); 
xor_module xor_module_inst_1_38(.clk(clk),.reset(reset),.i1(intermediate_reg_0[51]),.i2(intermediate_reg_0[50]),.o(intermediate_reg_1[25])); 
xor_module xor_module_inst_1_39(.clk(clk),.reset(reset),.i1(intermediate_reg_0[49]),.i2(intermediate_reg_0[48]),.o(intermediate_reg_1[24])); 
xor_module xor_module_inst_1_40(.clk(clk),.reset(reset),.i1(intermediate_reg_0[47]),.i2(intermediate_reg_0[46]),.o(intermediate_reg_1[23])); 
xor_module xor_module_inst_1_41(.clk(clk),.reset(reset),.i1(intermediate_reg_0[45]),.i2(intermediate_reg_0[44]),.o(intermediate_reg_1[22])); 
xor_module xor_module_inst_1_42(.clk(clk),.reset(reset),.i1(intermediate_reg_0[43]),.i2(intermediate_reg_0[42]),.o(intermediate_reg_1[21])); 
xor_module xor_module_inst_1_43(.clk(clk),.reset(reset),.i1(intermediate_reg_0[41]),.i2(intermediate_reg_0[40]),.o(intermediate_reg_1[20])); 
xor_module xor_module_inst_1_44(.clk(clk),.reset(reset),.i1(intermediate_reg_0[39]),.i2(intermediate_reg_0[38]),.o(intermediate_reg_1[19])); 
xor_module xor_module_inst_1_45(.clk(clk),.reset(reset),.i1(intermediate_reg_0[37]),.i2(intermediate_reg_0[36]),.o(intermediate_reg_1[18])); 
xor_module xor_module_inst_1_46(.clk(clk),.reset(reset),.i1(intermediate_reg_0[35]),.i2(intermediate_reg_0[34]),.o(intermediate_reg_1[17])); 
xor_module xor_module_inst_1_47(.clk(clk),.reset(reset),.i1(intermediate_reg_0[33]),.i2(intermediate_reg_0[32]),.o(intermediate_reg_1[16])); 
xor_module xor_module_inst_1_48(.clk(clk),.reset(reset),.i1(intermediate_reg_0[31]),.i2(intermediate_reg_0[30]),.o(intermediate_reg_1[15])); 
xor_module xor_module_inst_1_49(.clk(clk),.reset(reset),.i1(intermediate_reg_0[29]),.i2(intermediate_reg_0[28]),.o(intermediate_reg_1[14])); 
xor_module xor_module_inst_1_50(.clk(clk),.reset(reset),.i1(intermediate_reg_0[27]),.i2(intermediate_reg_0[26]),.o(intermediate_reg_1[13])); 
xor_module xor_module_inst_1_51(.clk(clk),.reset(reset),.i1(intermediate_reg_0[25]),.i2(intermediate_reg_0[24]),.o(intermediate_reg_1[12])); 
xor_module xor_module_inst_1_52(.clk(clk),.reset(reset),.i1(intermediate_reg_0[23]),.i2(intermediate_reg_0[22]),.o(intermediate_reg_1[11])); 
xor_module xor_module_inst_1_53(.clk(clk),.reset(reset),.i1(intermediate_reg_0[21]),.i2(intermediate_reg_0[20]),.o(intermediate_reg_1[10])); 
xor_module xor_module_inst_1_54(.clk(clk),.reset(reset),.i1(intermediate_reg_0[19]),.i2(intermediate_reg_0[18]),.o(intermediate_reg_1[9])); 
xor_module xor_module_inst_1_55(.clk(clk),.reset(reset),.i1(intermediate_reg_0[17]),.i2(intermediate_reg_0[16]),.o(intermediate_reg_1[8])); 
xor_module xor_module_inst_1_56(.clk(clk),.reset(reset),.i1(intermediate_reg_0[15]),.i2(intermediate_reg_0[14]),.o(intermediate_reg_1[7])); 
xor_module xor_module_inst_1_57(.clk(clk),.reset(reset),.i1(intermediate_reg_0[13]),.i2(intermediate_reg_0[12]),.o(intermediate_reg_1[6])); 
xor_module xor_module_inst_1_58(.clk(clk),.reset(reset),.i1(intermediate_reg_0[11]),.i2(intermediate_reg_0[10]),.o(intermediate_reg_1[5])); 
xor_module xor_module_inst_1_59(.clk(clk),.reset(reset),.i1(intermediate_reg_0[9]),.i2(intermediate_reg_0[8]),.o(intermediate_reg_1[4])); 
xor_module xor_module_inst_1_60(.clk(clk),.reset(reset),.i1(intermediate_reg_0[7]),.i2(intermediate_reg_0[6]),.o(intermediate_reg_1[3])); 
xor_module xor_module_inst_1_61(.clk(clk),.reset(reset),.i1(intermediate_reg_0[5]),.i2(intermediate_reg_0[4]),.o(intermediate_reg_1[2])); 
xor_module xor_module_inst_1_62(.clk(clk),.reset(reset),.i1(intermediate_reg_0[3]),.i2(intermediate_reg_0[2]),.o(intermediate_reg_1[1])); 
xor_module xor_module_inst_1_63(.clk(clk),.reset(reset),.i1(intermediate_reg_0[1]),.i2(intermediate_reg_0[0]),.o(intermediate_reg_1[0])); 
always@(posedge clk) begin 
outp [63:0] <= intermediate_reg_1; 
outp[125:64] <= intermediate_reg_1[61:0] ; 
end 
endmodule 
 

module fifo_512_60bit_module_2(input clk, input reset, input[125:0] inp, output [123:0] outp); 

fifo_512_60bit_module inst_0 (.clk(clk),.reset(reset),.inp(inp[62:0]),.outp(outp[61:0])); 

fifo_512_60bit_module inst_1 (.clk(clk),.reset(reset),.inp(inp[125:63]),.outp(outp[123:62])); 

endmodule 

module dsp_chain_4_fp16_sop2_mult_module_4(input clk, input reset, input[1023:0] inp, output [127:0] outp); 

dsp_chain_4_fp16_sop2_mult_module inst_0 (.clk(clk),.reset(reset),.inp(inp[255:0]),.outp(outp[31:0])); 

dsp_chain_4_fp16_sop2_mult_module inst_1 (.clk(clk),.reset(reset),.inp(inp[511:256]),.outp(outp[63:32])); 

dsp_chain_4_fp16_sop2_mult_module inst_2 (.clk(clk),.reset(reset),.inp(inp[767:512]),.outp(outp[95:64])); 

dsp_chain_4_fp16_sop2_mult_module inst_3 (.clk(clk),.reset(reset),.inp(inp[1023:768]),.outp(outp[127:96])); 

endmodule 

module adder_tree_1_16bit (input clk,input reset,input [31:0] inp, output [31:0] outp);

adder_tree_1stage_16bit inst(.clk(clk),.reset(reset),.inp00(inp[15:0]),.inp01(inp[31:16]),.sum_out(outp));

endmodule

module adder_tree_2_16bit (input clk, input reset, input [63:0] inp, output [31:0] outp);

adder_tree_2stage_16bit inst(.clk(clk),.reset(reset),.inp00(inp[15:0]),.inp01(inp[31:16]),.inp10(inp[47:32]),.inp11(inp[63:48]),.sum_out(outp));

endmodule

module adder_tree_3_16bit (input clk, input reset, input [127:0] inp, output [31:0] outp);

adder_tree_3stage_16bit inst (.clk(clk),.reset(reset),.inp00(inp[15:0]),.inp01(inp[31:16]),.inp10(inp[47:32]),.inp11(inp[63:48]),.inp20(inp[79:64]),.inp21(inp[95:80]),.inp30(inp[111:96]),.inp31(inp[127:112]),.sum_out(outp));

endmodule

module adder_tree_4_16bit (input clk, input reset, input [255:0] inp, output [31:0] outp);

adder_tree_4stage_16bit inst(.clk(clk),.reset(reset),.inp00(inp[15:0]),.inp01(inp[31:16]),.inp10(inp[47:32]),.inp11(inp[63:48]),.inp20(inp[79:64]),.inp21(inp[95:80]),.inp30(inp[111:96]),.inp31(inp[127:112]),.inp40(inp[143:128]),.inp41(inp[159:144]),.inp50(inp[175:160]),.inp51(inp[191:176]),.inp60(inp[207:192]),.inp61(inp[223:208]),.inp70(inp[239:224]),.inp71(inp[255:240]),.sum_out(outp));

endmodule

module adder_tree_1_8bit (input clk, input reset, input [15:0] inp, output [15:0] outp);

adder_tree_1stage_8bit inst(.clk(clk),.reset(reset),.inp00(inp[7:0]),.inp01(inp[15:8]),.sum_out(outp));

endmodule

module adder_tree_2_8bit (input clk, input reset, input [31:0] inp, output [15:0] outp);

adder_tree_2stage_8bit inst(.clk(clk),.reset(reset),.inp00(inp[7:0]),.inp01(inp[15:8]),.inp10(inp[23:16]),.inp11(inp[31:24]),.sum_out(outp));

endmodule

module adder_tree_3_8bit (input clk, input reset, input [63:0] inp, output [15:0] outp);

adder_tree_3stage_8bit inst (.clk(clk),.reset(reset),.inp00(inp[7:0]),.inp01(inp[15:8]),.inp10(inp[23:16]),.inp11(inp[31:24]),.inp20(inp[39:32]),.inp21(inp[47:40]),.inp30(inp[55:48]),.inp31(inp[63:56]),.sum_out(outp));

endmodule

module adder_tree_4_8bit (input clk, input reset, input [127:0] inp, output [15:0] outp);

adder_tree_4stage_8bit inst(.clk(clk),.reset(reset),.inp00(inp[7:0]),.inp01(inp[15:8]),.inp10(inp[23:16]),.inp11(inp[31:24]),.inp20(inp[39:32]),.inp21(inp[47:40]),.inp30(inp[55:48]),.inp31(inp[63:56]),.inp40(inp[71:64]),.inp41(inp[79:72]),.inp50(inp[87:80]),.inp51(inp[95:88]),.inp60(inp[103:96]),.inp61(inp[111:104]),.inp70(inp[119:112]),.inp71(inp[127:120]),.sum_out(outp));

endmodule

module adder_tree_1_4bit (input clk, input reset, input [7:0] inp, output [7:0] outp);

adder_tree_1stage_4bit inst(.clk(clk),.reset(reset),.inp00(inp[3:0]),.inp01(inp[7:4]),.sum_out(outp));

endmodule

module adder_tree_2_4bit (input clk, input reset, input [15:0] inp, output [7:0] outp);

adder_tree_2stage_4bit inst(.clk(clk),.reset(reset),.inp00(inp[3:0]),.inp01(inp[7:4]),.inp10(inp[11:8]),.inp11(inp[15:12]),.sum_out(outp));

endmodule

module adder_tree_3_4bit (input clk, input reset, input [31:0] inp, output [7:0] outp);

adder_tree_3stage_4bit inst (.clk(clk),.reset(reset),.inp00(inp[3:0]),.inp01(inp[7:4]),.inp10(inp[11:8]),.inp11(inp[15:12]),.inp20(inp[19:16]),.inp21(inp[23:20]),.inp30(inp[27:24]),.inp31(inp[31:28]),.sum_out(outp));

endmodule

module adder_tree_4_4bit (input clk, input reset, input [63:0] inp, output [7:0] outp);

adder_tree_4stage_4bit inst(.clk(clk),.reset(reset),.inp00(inp[3:0]),.inp01(inp[7:4]),.inp10(inp[11:8]),.inp11(inp[15:12]),.inp20(inp[19:16]),.inp21(inp[23:20]),.inp30(inp[27:24]),.inp31(inp[31:28]),.inp40(inp[35:32]),.inp41(inp[39:36]),.inp50(inp[43:40]),.inp51(inp[47:44]),.inp60(inp[51:48]),.inp61(inp[55:52]),.inp70(inp[59:56]),.inp71(inp[63:60]),.sum_out(outp));

endmodule

module adder_tree_3_fp16bit (input clk, input reset, input [131:0] inp, output [15:0] outp);

mode4_adder_tree inst(
  .inp0(inp[15:0]),
  .inp1(inp[31:16]),
  .inp2(inp[47:32]),
  .inp3(inp[63:48]),
  .inp4(inp[79:64]),
  .inp5(inp[95:80]),
  .inp6(inp[111:96]),
  .inp7(inp[127:112]),
  .mode4_stage0_run(inp[128]),
  .mode4_stage1_run(inp[129]),
  .mode4_stage2_run(inp[130]),
  .mode4_stage3_run(inp[131]),

  .clk(clk),
  .reset(reset),
  .outp(outp[15:0])
);

endmodule

module dpram_1024_32bit_module (input clk, input reset, input [85:0] inp, output [63:0] outp);

dpram inst (.clk(clk),.address_a(inp[9:0]),.address_b(inp[19:10]),.wren_a(inp[20]),.wren_b(inp[21]),.data_a(inp[53:22]),.data_b(inp[85:54]),.out_a(outp[31:0]),.out_b(outp[63:32]));

endmodule

module dpram_1024_64bit_module (input clk, input reset, input [149:0] inp, output [63:0] outp );

dpram_1024_64bit inst (.clk(clk),.address_a(inp[9:0]),.address_b(inp[19:10]),.wren_a(inp[20]),.wren_b(inp[21]),.data_a(inp[85:22]),.data_b(inp[149:86]),.out_a(outp[31:0]),.out_b(outp[63:32]));

endmodule

module dpram_2048_64bit_module (input clk, input reset, input [151:0] inp, output [127:0] outp);

dpram_2048_64bit inst (.clk(clk),.address_a(inp[10:0]),.address_b(inp[21:11]),.wren_a(inp[22]),.wren_b(inp[23]),.data_a(inp[87:24]),.data_b(inp[151:88]),.out_a(outp[63:0]),.out_b(outp[127:64]));

endmodule

module dpram_2048_32bit_module (input clk, input reset, input [87:0] inp, output [63:0] outp);

dpram_2048_32bit inst (.clk(clk),.address_a(inp[10:0]),.address_b(inp[21:11]),.wren_a(inp[22]),.wren_b(inp[23]),.data_a(inp[55:24]),.data_b(inp[87:56]),.out_a(outp[31:0]),.out_b(outp[63:32]));

endmodule

module dpram_1024_40bit_module (input clk, input reset, input [101:0] inp, output [79:0] outp);

dpram_1024_40bit inst (.clk(clk),.address_a(inp[9:0]),.address_b(inp[19:10]),.wren_a(inp[20]),.wren_b(inp[21]),.data_a(inp[61:22]),.data_b(inp[101:62]),.out_a(outp[39:0]),.out_b(outp[79:40]));

endmodule

module dpram_1024_60bit_module (input clk, input reset, input [141:0] inp, output [119:0] outp);

dpram_1024_60bit inst (.clk(clk),.address_a(inp[9:0]),.address_b(inp[19:10]),.wren_a(inp[20]),.wren_b(inp[21]),.data_a(inp[81:22]),.data_b(inp[141:82]),.out_a(outp[59:0]),.out_b(outp[119:60]));

endmodule

module dpram_2048_40bit_module (input clk, input reset, input [103:0] inp, output [79:0] outp);

dpram_2048_40bit inst (.clk(clk),.address_a(inp[10:0]),.address_b(inp[21:11]),.wren_a(inp[22]),.wren_b(inp[23]),.data_a(inp[63:24]),.data_b(inp[103:64]),.out_a(outp[39:0]),.out_b(outp[79:40]));

endmodule

module dpram_2048_60bit_module (input clk, input reset, input [143:0] inp, output [119:0] outp);

dpram_2048_60bit inst (.clk(clk),.address_a(inp[10:0]),.address_b(inp[21:11]),.wren_a(inp[22]),.wren_b(inp[23]),.data_a(inp[83:24]),.data_b(inp[143:84]),.out_a(outp[59:0]),.out_b(outp[119:60]));

endmodule

module dpram_4096_40bit_module (input clk, input reset, input [105:0] inp, output [79:0] outp);

dpram_4096_40bit inst (.clk(clk),.address_a(inp[11:0]),.address_b(inp[23:12]),.wren_a(inp[24]),.wren_b(inp[25]),.data_a(inp[65:26]),.data_b(inp[105:66]),.out_a(outp[39:0]),.out_b(outp[79:40]));

endmodule

module dpram_4096_60bit_module (input clk, input reset, input [145:0] inp, output [119:0] outp);

dpram_4096_60bit inst (.clk(clk),.address_a(inp[11:0]),.address_b(inp[23:12]),.wren_a(inp[24]),.wren_b(inp[25]),.data_a(inp[85:26]),.data_b(inp[145:86]),.out_a(outp[59:0]),.out_b(outp[119:60]));

endmodule

module spram_1024_32bit_module (input clk,input reset,input [42:0] inp, output [31:0] outp);

spram inst (.clk(clk),.address(inp[9:0]),.wren(inp[10]),.data(inp[42:11]),.out(outp));

endmodule

module spram_2048_40bit_module (input clk,input reset,input [51:0] inp, output [39:0] outp);

spram_2048_40bit inst (.clk(clk),.address(inp[10:0]),.wren(inp[11]),.data(inp[51:12]),.out(outp));

endmodule

module spram_2048_60bit_module (input clk,input reset,input [71:0] inp, output [59:0] outp);

spram_2048_60bit inst (.clk(clk),.address(inp[10:0]),.wren(inp[11]),.data(inp[71:12]),.out(outp));

endmodule

module spram_4096_40bit_module (input clk,input reset,input [52:0] inp, output [39:0] outp);

spram_4096_40bit inst (.clk(clk),.address(inp[11:0]),.wren(inp[12]),.data(inp[52:13]),.out(outp));

endmodule

module spram_4096_60bit_module (input clk,input reset,input [72:0] inp, output [59:0] outp);

spram_4096_60bit inst (.clk(clk),.address(inp[11:0]),.wren(inp[12]),.data(inp[72:13]),.out(outp));

endmodule

module dbram_2048_40bit_module (input clk,input reset,input [103:0] inp, output [79:0] outp);

dbram_2048_40bit inst (.clk(clk),.reset(reset),.address_a(inp[10:0]),.address_b(inp[21:11]),.wren_a(inp[22]),.wren_b(inp[23]),.data_a(inp[63:24]),.data_b(inp[103:64]),.out_a(outp[39:0]),.out_b(outp[79:40]));

endmodule

module dbram_2048_60bit_module (input clk,input reset,input [143:0] inp, output [119:0] outp);

dbram_2048_60bit inst (.clk(clk),.reset(reset),.address_a(inp[10:0]),.address_b(inp[21:11]),.wren_a(inp[22]),.wren_b(inp[23]),.data_a(inp[83:24]),.data_b(inp[143:84]),.out_a(outp[59:0]),.out_b(outp[119:60]));

endmodule

module dbram_4096_40bit_module (input clk,input reset,input [105:0] inp, output [79:0] outp);

dbram_4096_40bit inst (.clk(clk),.reset(reset),.address_a(inp[11:0]),.address_b(inp[23:12]),.wren_a(inp[24]),.wren_b(inp[25]),.data_a(inp[65:26]),.data_b(inp[105:66]),.out_a(outp[39:0]),.out_b(outp[79:40]));

endmodule

module dbram_4096_60bit_module (input clk,input reset,input [145:0] inp, output [119:0] outp);

dbram_4096_60bit inst (.clk(clk),.reset(reset),.address_a(inp[11:0]),.address_b(inp[23:12]),.wren_a(inp[24]),.wren_b(inp[25]),.data_a(inp[85:26]),.data_b(inp[145:86]),.out_a(outp[59:0]),.out_b(outp[119:60]));

endmodule


module fifo_256_40bit_module (input clk,input reset,input [42:0] inp, output [41:0] outp);

fifo_256_40bit inst (.clk(clk),.rst(reset),.clr(inp[0]),.din(inp[40:1]),.we(inp[41]),.dout(outp[39:0]),.re(inp[42]),.full(outp[40]),.empty(outp[41]));

endmodule

module fifo_256_60bit_module (input clk,input reset,input [62:0] inp, output [61:0] outp);

fifo_256_60bit inst (.clk(clk),.rst(reset),.clr(inp[0]),.din(inp[60:1]),.we(inp[61]),.dout(outp[59:0]),.re(inp[62]),.full(outp[60]),.empty(outp[61]));

endmodule

module fifo_512_60bit_module (input clk,input reset,input [62:0] inp, output [61:0] outp);

fifo_512_60bit inst (.clk(clk),.rst(reset),.clr(inp[0]),.din(inp[60:1]),.we(inp[61]),.dout(outp[59:0]),.re(inp[62]),.full(outp[60]),.empty(outp[61]));

endmodule

module fifo_512_40bit_module (input clk,input reset,input [42:0] inp, output [41:0] outp);

fifo_512_40bit inst (.clk(clk),.rst(reset),.clr(inp[0]),.din(inp[40:1]),.we(inp[41]),.dout(outp[39:0]),.re(inp[42]),.full(outp[40]),.empty(outp[41]));

endmodule

module tanh_16bit (input clk,input reset, input [15:0] inp, output [15:0] outp);

tanh inst (.x(inp),.tanh_out(outp));

endmodule

module sigmoid_16bit (input clk,input reset, input [15:0] inp, output [15:0] outp);

sigmoid inst (.x(inp),.sig_out(outp));

endmodule

module systolic_array_4_16bit (input clk, input reset, input [254:0] inp, output [130:0] outp);

matmul_4x4_systolic inst(
 .clk(clk),
 .reset(inp[254]),
 .pe_reset(reset),
 .start_mat_mul(inp[0]),
 .done_mat_mul(outp[0]),
 .address_mat_a(inp[11:1]),
 .address_mat_b(inp[22:12]),
 .address_mat_c(inp[33:23]),
 .address_stride_a(inp[41:34]),
 .address_stride_b(inp[49:42]),
 .address_stride_c(inp[57:50]),
 .a_data(inp[89:58]),
 .b_data(inp[121:90]),
 .a_data_in(inp[153:122]), //Data values coming in from previous matmul - systolic connections
 .b_data_in(inp[185:154]),
 .c_data_in(inp[217:186]), //Data values coming in from previous matmul - systolic shifting
 .c_data_out(outp[32:1]), //Data values going out to next matmul - systolic shifting
 .a_data_out(outp[64:33]),
 .b_data_out(outp[96:65]),
 .a_addr(outp[107:97]),
 .b_addr(outp[118:108]),
 .c_addr(outp[129:119]),
 .c_data_available(outp[130]),
 .validity_mask_a_rows(inp[221:218]),
 .validity_mask_a_cols_b_rows(inp[225:222]),
 .validity_mask_b_cols(inp[229:226]),
 .final_mat_mul_size(inp[237:230]),
 .a_loc(inp[245:238]),
 .b_loc(inp[253:246])
);

endmodule

module systolic_array_8_16bit (input clk, input reset, input [785:0] inp, output [433:0] outp);

matmul_8x8_systolic inst(
 .clk(clk),
 .reset(reset),
 .pe_reset(inp[785]),
 .start_mat_mul(inp[0]),
 .done_mat_mul(outp[0]),
 .address_mat_a(inp[16:1]),
 .address_mat_b(inp[32:17]),
 .address_mat_c(inp[48:33]),
 .address_stride_a(inp[64:49]),
 .address_stride_b(inp[80:65]),
 .address_stride_c(inp[96:81]),
 .a_data(inp[224:97]),
 .b_data(inp[352:225]),
 .a_data_in(inp[480:353]), //Data values coming in from previous matmul - systolic connections
 .b_data_in(inp[608:481]),
 .c_data_in(inp[736:609]), //Data values coming in from previous matmul - systolic shifting
 .c_data_out(outp[128:1]), //Data values going out to next matmul - systolic shifting
 .a_data_out(outp[256:129]),
 .b_data_out(outp[384:257]),
 .a_addr(outp[400:385]),
 .b_addr(outp[416:401]),
 .c_addr(outp[432:417]),
 .c_data_available(outp[433]),
 .validity_mask_a_rows(inp[744:737]),
 .validity_mask_a_cols_b_rows(inp[752:745]),
 .validity_mask_b_cols(inp[760:753]),
 .final_mat_mul_size(inp[768:761]),
 .a_loc(inp[776:769]),
 .b_loc(inp[784:777])
);

endmodule

module systolic_array_4_fp16bit (input clk, input reset, input [417:0] inp, output [223:0] outp);

matmul_4x4_fp_systolic inst(
 .clk(clk),
 .reset(reset),
 .pe_reset(inp[417]),
 .start_mat_mul(inp[0]),
 .done_mat_mul(outp[0]),
 .address_mat_a(inp[10:1]),
 .address_mat_b(inp[20:11]),
 .address_mat_c(inp[30:21]),
 .address_stride_a(inp[40:31]),
 .address_stride_b(inp[50:41]),
 .address_stride_c(inp[60:51]),
 .a_data(inp[124:61]),
 .b_data(inp[188:125]),
 .a_data_in(inp[252:189]), //Data values coming in from previous matmul - systolic connections
 .b_data_in(inp[316:253]),
 .c_data_in(inp[380:317]), //Data values coming in from previous matmul - systolic shifting
 .c_data_out(outp[64:1]), //Data values going out to next matmul - systolic shifting
 .a_data_out(outp[128:65]),
 .b_data_out(outp[192:129]),
 .a_addr(outp[202:193]),
 .b_addr(outp[212:203]),
 .c_addr(outp[222:213]),
 .c_data_available(outp[223]),
 .validity_mask_a_rows(inp[384:381]),
 .validity_mask_a_cols_b_rows(inp[388:385]),
 .validity_mask_b_cols(inp[392:389]),
 .final_mat_mul_size(inp[400:393]),
 .a_loc(inp[408:401]),
 .b_loc(inp[416:409])
);

endmodule

module dsp_chain_2_int_sop_2_module (input clk, input reset, input [147:0] inp, output [36:0] outp);

dsp_chain_2_int_sop_2 inst(.clk(clk),.reset(reset),.ax1(inp[17:0]),.ay1(inp[36:18]),.bx1(inp[54:37]),.by1(inp[73:55]),.ax2(inp[91:74]),.ay2(inp[110:92]),.bx2(inp[128:111]),.by2(inp[147:129]),.result(outp[36:0]));

endmodule

module dsp_chain_3_int_sop_2_module (input clk, input reset, input [221:0] inp, output [36:0] outp);

dsp_chain_3_int_sop_2 inst(.clk(clk),.reset(reset),.ax1(inp[17:0]),.ay1(inp[36:18]),.bx1(inp[54:37]),.by1(inp[73:55]),.ax2(inp[91:74]),.ay2(inp[110:92]),.bx2(inp[128:111]),.by2(inp[147:129]),.ax3(inp[165:148]),.ay3(inp[184:166]),.bx3(inp[202:185]),.by3(inp[221:203]),.result(outp[36:0]));

endmodule

module dsp_chain_4_int_sop_2_module (input clk, input reset, input [295:0] inp, output [36:0] outp);

dsp_chain_4_int_sop_2 inst(.clk(clk),.reset(reset),.ax1(inp[17:0]),.ay1(inp[36:18]),.bx1(inp[54:37]),.by1(inp[73:55]),.ax2(inp[91:74]),.ay2(inp[110:92]),.bx2(inp[128:111]),.by2(inp[147:129]),.ax3(inp[165:148]),.ay3(inp[184:166]),.bx3(inp[202:185]),.by3(inp[221:203]),.ax4(inp[239:222]),.ay4(inp[258:240]),.bx4(inp[276:259]),.by4(inp[295:277]),.result(outp[36:0]));

endmodule

module dsp_chain_2_fp16_sop2_mult_module (input clk, input reset, input [127:0] inp, output [31:0] outp);

dsp_chain_2_fp16_sop2_mult inst(.clk(clk),.reset(reset),.top_a1(inp[15:0]),.top_b1(inp[31:16]),.bot_a1(inp[47:32]),.bot_b1(inp[63:48]),.top_a2(inp[79:64]),.top_b2(inp[95:80]),.bot_a2(inp[111:96]),.bot_b2(inp[127:112]),.result(outp));

endmodule

module dsp_chain_3_fp16_sop2_mult_module (input clk, input reset, input [191:0] inp, output [31:0] outp);

dsp_chain_3_fp16_sop2_mult inst(.clk(clk),.reset(reset),.top_a1(inp[15:0]),.top_b1(inp[31:16]),.bot_a1(inp[47:32]),.bot_b1(inp[63:48]),.top_a2(inp[79:64]),.top_b2(inp[95:80]),.bot_a2(inp[111:96]),.bot_b2(inp[127:112]),.top_a3(inp[143:128]),.top_b3(inp[159:144]),.bot_a3(inp[175:160]),.bot_b3(inp[191:176]),.result(outp));

endmodule

module dsp_chain_4_fp16_sop2_mult_module (input clk, input reset, input [255:0] inp, output [31:0] outp);

dsp_chain_4_fp16_sop2_mult inst(.clk(clk),.reset(reset),.top_a1(inp[15:0]),.top_b1(inp[31:16]),.bot_a1(inp[47:32]),.bot_b1(inp[63:48]),.top_a2(inp[79:64]),.top_b2(inp[95:80]),.bot_a2(inp[111:96]),.bot_b2(inp[127:112]),.top_a3(inp[143:128]),.top_b3(inp[159:144]),.bot_a3(inp[175:160]),.bot_b3(inp[191:176]),.top_a4(inp[207:192]),.top_b4(inp[223:208]),.bot_a4(inp[239:224]),.bot_b4(inp[255:240]),.result(outp));

endmodule

module tensor_block_bf16_module (input clk, input reset, input [264:0] inp, output [271:0] outp);

tensor_block_bf16 inst(
	.clk(clk),
	.reset(reset),

	.data_in(inp[79:0]),
	.cascade_in(inp[159:80]),
	.acc0_in(inp[191:160]),
	.acc1_in(inp[223:192]),
	.acc2_in(inp[255:224]),
	.accumulator_input1_select(inp[258:256]),

	.out0(outp[31:0]),
	.out1(outp[63:32]),
	.out2(outp[95:64]),
	.cascade_out(outp[175:96]),
	.acc0_out(outp[207:176]),
	.acc1_out(outp[239:208]),
	.acc2_out(outp[271:240]),

	.mux1_select(inp[259]),
	.dot_unit_input_1_enable(inp[260]),
	.bank0_data_in_enable(inp[261]),
	.bank1_data_in_enable(inp[262]),
	.cascade_out_select(inp[263]),
	.dot_unit_input_2_select(inp[264])

	);

endmodule

module tensor_block_int8_module (input clk, input reset, input [264:0] inp, output [250:0] outp);

tensor_block inst(
	.clk(clk),
	.reset(reset),

	.data_in(inp[79:0]),
	.cascade_in(inp[159:80]),
	.acc0_in(inp[191:160]),
	.acc1_in(inp[223:192]),
	.acc2_in(inp[255:224]),
	.accumulator_input1_select(inp[258:256]),

	.out0(outp[24:0]),
	.out1(outp[49:25]),
	.out2(outp[74:50]),
	.cascade_out(outp[154:75]),
	.acc0_out(outp[186:155]),
	.acc1_out(outp[218:187]),
	.acc2_out(outp[250:219]),

	.mux1_select(inp[259]),
	.dot_unit_input_1_enable(inp[260]),
	.bank0_data_in_enable(inp[261]),
	.bank1_data_in_enable(inp[262]),
	.cascade_out_select(inp[263]),
	.dot_unit_input_2_select(inp[264])

	);

endmodule


module activation_32_8bit_module (input clk, input reset, input [260:0] inp, output [257:0] outp);

activation_32_8bit inst (
    .activation_type(inp[0]),
    .enable_activation(inp[1]),
    .in_data_available(inp[2]),
    .inp_data(inp[258:3]),
    .out_data(outp[255:0]),
    .out_data_available(outp[256]),
    .validity_mask(inp[260:259]),
    .done_activation(outp[257]),
    .clk(clk),
    .reset(reset)
);

endmodule

module activation_32_16bit_module (input clk, input reset, input [515:0] inp, output [513:0] outp);

activation_32_16bit inst (
    .activation_type(inp[0]),
    .enable_activation(inp[1]),
    .in_data_available(inp[2]),
    .inp_data(inp[514:3]),
    .out_data(outp[511:0]),
    .out_data_available(outp[512]),
    .validity_mask(inp[515:514]),
    .done_activation(outp[513]),
    .clk(clk),
    .reset(reset)
);

endmodule

module fsm(input clk, input reset, input i1, input i2, output reg o);
// mealy machine

reg [1:0] current_state; 
reg [1:0] next_state;

wire [1:0] inp; 
assign inp = {i2,i1}; 

always@(posedge clk) begin 
	if (reset == 1'b1) begin 
		current_state <= 1'b0; 
	end
	else begin 
		current_state <= next_state; 
	end
end

always@(posedge clk) begin 

	next_state = current_state; 

	case(current_state)
		2'b00:	begin 
							if(inp == 2'b00) begin 
								next_state <= 2'b00; 
								o <= 1'b0; 
							end
							if (inp == 2'b01) begin 
								next_state <= 2'b11;
								o <= 1'b1;
							end
							if(inp == 2'b10) begin
  							next_state <= 2'b01;
  							o <= 1'b0;
							end
							if(inp == 2'b11) begin
							  next_state <= 2'b10;
							  o <= 1'b0;
							end
					 	end 
		2'b01:	begin 
							if(inp == 2'b00) begin
							  next_state <= 2'b01;
							  o <= 1'b1;
							end
							if(inp == 2'b01) begin
							  next_state <= 2'b01;
							  o <= 1'b0;
							end
							if(inp == 2'b10) begin
							  next_state <= 2'b10;
							  o <= 1'b1;
							end
							if(inp == 2'b11) begin
							  next_state <= 2'b00;
							  o <= 1'b1;
							end
						end
		2'b10:	begin 
							if(inp == 2'b00) begin
							  next_state <= 2'b11;
							  o <= 1'b0;
							end
							if(inp == 2'b01) begin
							  next_state <= 2'b10;
							  o <= 1'b1;
							end
							if(inp == 2'b10) begin
							  next_state <= 2'b11;
							  o <= 1'b0;
							end
							if(inp == 2'b11) begin
							  next_state <= 2'b01;
							  o <= 1'b1;
							end
						end
		2'b11:	begin 
							if(inp == 2'b00) begin
  							next_state <= 2'b00;
							  o <= 1'b1;
							end
							if(inp == 2'b01) begin
							  next_state <= 2'b11;
							  o <= 1'b1;
							end
							if(inp == 2'b10) begin
							  next_state <= 2'b10;
							  o <= 1'b1;
							end
							if(inp == 2'b11) begin
							  next_state <= 2'b01;
							  o <= 1'b1;
							end
						end
//		defualt:	begin  
//								next_state <= 2'b00;
//								o <= 1'b0; 
//							end
	endcase
end 

endmodule 
module xor_module (input clk, input reset, input i1, input i2, output reg o);

always@(posedge clk) begin 
if (reset ==1'b1) begin 
o<= 1'b0; 
end
else begin
o <= i1^i2; 
end 
end
endmodule
module mux_module (input clk, input reset, input i1, input i2, output reg o, input sel);

always@(posedge clk) begin 
if (reset ==1'b1) begin 
	o<= 1'b0; 
end

else begin
	if (sel == 1'b0) begin 
		o <= i1;
	end
	else begin
		o <= i2; 
	end 
end 

end

endmodule

`ifdef complex_dsp
module int_sop_2_dspchain (mode_sigs,
	clk,
	reset,
	ax,
	ay,
	bx,
	by,
	chainin,
	resulta,
	chainout);
input [10:0] mode_sigs;
input clk;
input reset; 
input [17:0] ax, bx;
input [18:0] ay, by;
input [36:0] chainin;

output [36:0] resulta;
output [36:0] chainout;

wire [11:0] mode_sigs_int;
assign mode_sigs_int = {1'b0, mode_sigs};

int_sop_2 inst1(.clk(clk),.reset(reset),.ax(ax),.bx(bx),.ay(ay),.by(by),.mode_sigs(mode_sigs_int),.chainin(chainin),.result(resulta),.chainout(chainout)); 

endmodule
`else
module int_sop_2_dspchain (mode_sigs,
	clk,
	reset,
	ax,
	ay,
	bx,
	by,
	chainin,
	resulta,
	chainout);
input [10:0] mode_sigs;
input clk;
input reset; 
input [17:0] ax, bx;
input [18:0] ay, by;
input [36:0] chainin;

output [36:0] resulta;
output [36:0] chainout;
reg [17:0] ax_reg;
reg [18:0] ay_reg;
reg [17:0] bx_reg;
reg [18:0] by_reg;
reg [36:0] resulta_reg;
reg [36:0] resultaxy_reg;
reg [36:0] resultbxy_reg;
always @(posedge clk) begin
  if(reset) begin
    resulta_reg <= 0;
    ax_reg <= 0;
    ay_reg <= 0;
    bx_reg <= 0;
    by_reg <= 0;
  end
  else begin
    ax_reg <= ax;
    ay_reg <= ay;
    bx_reg <= bx;
    by_reg <= by;
    resultaxy_reg <= ax_reg * ay_reg;
    resultbxy_reg <= bx_reg * by_reg;
    resulta_reg <= resultaxy_reg + resultbxy_reg + chainin;
  end
end
assign resulta = resulta_reg;
assign chainout = resulta_reg;
endmodule
`endif

`ifdef complex_dsp
module fp16_sop2_mult_dspchain (clk,reset,top_a,top_b,bot_a,bot_b,fp32_in,mode_sigs,chainin,chainout,result);
input clk; 
input reset;
input [10:0] mode_sigs; 
input [15:0] top_a,top_b,bot_a,bot_b;
input [31:0] chainin,fp32_in; 
output [31:0] chainout, result;

fp16_sop2_mult inst1(.clk(clk),.reset(reset),.top_a(top_a),.top_b(top_b),.bot_a(bot_a),.bot_b(bot_b),.fp32_in(fp32_in),.mode_sigs(mode_sigs),.chainin(chainin),.chainout(chainout),.result(result)); 

endmodule

`else
module fp16_sop2_mult_dspchain (clk,reset,top_a,top_b,bot_a,bot_b,fp32_in,mode_sigs,chainin,chainout,result);
input clk; 
input reset;
input [10:0] mode_sigs; 
input [15:0] top_a,top_b,bot_a,bot_b;
input [31:0] chainin,fp32_in; 
output [31:0] chainout, result; 

reg [15:0] top_a_reg,top_b_reg,bot_a_reg,bot_b_reg; 
reg [31:0] chainin_reg; 
wire [31:0] r1,r2,r3; 
reg [31:0] r1_new, r2_new;
always@(posedge clk) begin 
if(reset) begin 
top_a_reg<= 16'b0; 
top_b_reg<= 16'b0; 
bot_a_reg<= 16'b0; 
bot_b_reg<= 16'b0;
r1_new<=32'b0;
r2_new<=32'b0;
//result<=32'b0;
//chainout<=32'b0;
chainin_reg<=32'b0;   
end
else begin 
top_a_reg<=top_a; 
top_b_reg<=top_b; 
bot_a_reg<=bot_a;
bot_b_reg<=bot_b;
r1_new<=r1;
r2_new<=r2;
//chainout<=result;
chainin_reg<=chainin; 
end
end

wire [4:0] flags1,flags2,flags3,flags4; 

FPMult_16_dspchain inst1(.clk(clk),.rst(reset),.a(top_a_reg),.b(top_b_reg),.flags(flags1),.result(r1)); 
FPMult_16_dspchain inst2(.clk(clk),.rst(reset),.a(bot_a_reg),.b(bot_b_reg),.flags(flags2),.result(r2));
FPAddSub_single_dspchain inst3(.clk(clk),.rst(reset),.a(r1_new),.b(r2_new),.flags(flags3),.operation(1'b1),.result(r3));
FPAddSub_single_dspchain inst4(.clk(clk),.rst(reset),.a(r3),.b(chainin),.flags(flags4),.operation(1'b1),.result(result));
assign chainout = result; 
endmodule
//`endif

//`timescale 1ns / 1ps


// IEEE Half Precision => 5 = 5, 10 = 10



//`define IEEE_COMPLIANCE 1


//////////////////////////////////////////////////////////////////////////////////
//
// Module Name:    FPMult
//
//////////////////////////////////////////////////////////////////////////////////

module FPMult_16_dspchain(
		clk,
		rst,
		a,
		b,
		result,
		flags
    );
	
	// Input Ports
	input clk ;							// Clock
	input rst ;							// Reset signal
	input [16-1:0] a;						// Input A, a 32-bit floating point number
	input [16-1:0] b;						// Input B, a 32-bit floating point number
	
	// Output ports
	output [32-1:0] result ;					// Product, result of the operation, 32-bit FP number
	output [4:0] flags ;						// Flags indicating exceptions according to IEEE754
	
	// Internal signals
	wire [32-1:0] Z_int ;					// Product, result of the operation, 32-bit FP number
	wire [4:0] Flags_int ;						// Flags indicating exceptions according to IEEE754
	
	wire Sa ;							// A's sign
	wire Sb ;							// B's sign
	wire Sp ;							// Product sign
	wire [5-1:0] Ea ;					// A's 5
	wire [5-1:0] Eb ;					// B's 5
	wire [2*10+1:0] Mp ;					// Product 10
	wire [4:0] InputExc ;						// Exceptions in inputs
	wire [23-1:0] NormM ;					// Normalized 10
	wire [8:0] NormE ;					// Normalized 5
	wire [23:0] RoundM ;					// Normalized 10
	wire [8:0] RoundE ;					// Normalized 5
	wire [23:0] RoundMP ;					// Normalized 10
	wire [8:0] RoundEP ;					// Normalized 5
	wire GRS ;

	//reg [63:0] pipe_0;						// Pipeline register Input->Prep
	reg [2*16-1:0] pipe_0;					// Pipeline register Input->Prep

	//reg [92:0] pipe_1;						// Pipeline register Prep->Execute
	//reg [3*10+2*5+7:0] pipe_1;			// Pipeline register Prep->Execute
	reg [3*10+2*5+18:0] pipe_1;

	//reg [38:0] pipe_2;						// Pipeline register Execute->Normalize
	reg [23+8+7:0] pipe_2;				// Pipeline register Execute->Normalize

	//reg [72:0] pipe_3;						// Pipeline register Normalize->Round
	reg [2*23+2*8+10:0] pipe_3;			// Pipeline register Normalize->Round

	//reg [36:0] pipe_4;						// Pipeline register Round->Output
	reg [32+4:0] pipe_4;					// Pipeline register Round->Output
	
	assign result = pipe_4[32+4:5] ;
	assign flags = pipe_4[4:0] ;
	
	// Prepare the operands for alignment and check for exceptions
	FPMult_PrepModule_dspchain PrepModule(clk, rst, pipe_0[2*16-1:16], pipe_0[16-1:0], Sa, Sb, Ea[5-1:0], Eb[5-1:0], Mp[2*10+1:0], InputExc[4:0]) ;

	// Perform (unsigned) 10 multiplication
	FPMult_ExecuteModule_dspchain ExecuteModule(pipe_1[3*10+5*2+7:2*10+2*5+8], pipe_1[2*10+2*5+7:2*10+7], pipe_1[2*10+6:5], pipe_1[2*10+2*5+6:2*10+5+7], pipe_1[2*10+5+6:2*10+7], pipe_1[2*10+2*5+8], pipe_1[2*10+2*5+7], Sp, NormE[8:0], NormM[23-1:0], GRS) ;

	// Round result and if necessary, perform a second (post-rounding) normalization step
	FPMult_NormalizeModule_dspchain NormalizeModule(pipe_2[23-1:0], pipe_2[23+8:23], RoundE[8:0], RoundEP[8:0], RoundM[23:0], RoundMP[23:0]) ;		

	// Round result and if necessary, perform a second (post-rounding) normalization step
	//FPMult_RoundModule RoundModule(pipe_3[47:24], pipe_3[23:0], pipe_3[65:57], pipe_3[56:48], pipe_3[66], pipe_3[67], pipe_3[72:68], Z_int[31:0], Flags_int[4:0]) ;		
	FPMult_RoundModule_dspchain RoundModule(pipe_3[2*23+1:23+1], pipe_3[23:0], pipe_3[2*8+2*23+3:2*23+8+3], pipe_3[2*23+8+2:2*23+2], pipe_3[2*23+2*8+4], pipe_3[2*23+2*8+5], pipe_3[2*23+2*8+10:2*23+2*8+6], Z_int[32-1:0], Flags_int[4:0]) ;		


//adding always@ (*) instead of posedge clock to make design combinational
	always @ (posedge clk) begin	
		if(rst) begin
			pipe_0 <= 0;
			pipe_1 <= 0;
			pipe_2 <= 0; 
			pipe_3 <= 0;
			pipe_4 <= 0;
		end 
		else begin		
			/* PIPE 0
				[2*16-1:16] A
				[16-1:0] B
			*/
                       pipe_0 <= {a, b} ;


			/* PIPE 1
				[2*5+3*10 + 18: 2*5+2*10 + 18] //pipe_0[16+10-1:16] , 10 of A
				[2*5+2*10 + 17 :2*5+2*10 + 9] // pipe_0[8:0]
				[2*5+2*10 + 8] Sa
				[2*5+2*10 + 7] Sb
				[2*5+2*10 + 6:5+2*10+7] Ea
				[5 +2*10+6:2*10+7] Eb
				[2*10+1+5:5] Mp
				[4:0] InputExc
			*/
			//pipe_1 <= {pipe_0[16+10-1:16], pipe_0[10_MUL_SPLIT_LSB-1:0], Sa, Sb, Ea[5-1:0], Eb[5-1:0], Mp[2*10-1:0], InputExc[4:0]} ;
			pipe_1 <= {pipe_0[16+10-1:16], pipe_0[8:0], Sa, Sb, Ea[5-1:0], Eb[5-1:0], Mp[2*10+1:0], InputExc[4:0]} ;
			
			/* PIPE 2
				[8 + 23 + 7:8 + 23 + 3] InputExc
				[8 + 23 + 2] GRS
				[8 + 23 + 1] Sp
				[8 + 23:23] NormE
				[23-1:0] NormM
			*/
			pipe_2 <= {pipe_1[4:0], GRS, Sp, NormE[8:0], NormM[23-1:0]} ;
			/* PIPE 3
				[2*8+2*23+10:2*8+2*23+6] InputExc
				[2*8+2*23+5] GRS
				[2*8+2*23+4] Sp	
				[2*8+2*23+3:8+2*23+3] RoundE
				[8+2*23+2:2*23+2] RoundEP
				[2*23+1:23+1] RoundM
				[23:0] RoundMP
			*/
			pipe_3 <= {pipe_2[8 + 23 + 7:8 + 23 + 1], RoundE[8:0], RoundEP[8:0], RoundM[23:0], RoundMP[23:0]} ;
			/* PIPE 4
				[16+4:5] Z
				[4:0] Flags
			*/				
			pipe_4 <= {Z_int[32-1:0], Flags_int[4:0]} ;
		end
	end
		
endmodule



module FPMult_PrepModule_dspchain (
		clk,
		rst,
		a,
		b,
		Sa,
		Sb,
		Ea,
		Eb,
		Mp,
		InputExc
	);
	
	// Input ports
	input clk ;
	input rst ;
	input [16-1:0] a ;								// Input A, a 32-bit floating point number
	input [16-1:0] b ;								// Input B, a 32-bit floating point number
	
	// Output ports
	output Sa ;										// A's sign
	output Sb ;										// B's sign
	output [5-1:0] Ea ;								// A's 5
	output [5-1:0] Eb ;								// B's 5
	output [2*10+1:0] Mp ;							// 10 product
	output [4:0] InputExc ;						// Input numbers are exceptions
	
	// Internal signals							// If signal is high...
	wire ANaN ;										// A is a signalling NaN
	wire BNaN ;										// B is a signalling NaN
	wire AInf ;										// A is infinity
	wire BInf ;										// B is infinity
    wire [10-1:0] Ma;
    wire [10-1:0] Mb;
	
	assign ANaN = &(a[16-2:10]) &  |(a[16-2:10]) ;			// All one 5 and not all zero 10 - NaN
	assign BNaN = &(b[16-2:10]) &  |(b[10-1:0]);			// All one 5 and not all zero 10 - NaN
	assign AInf = &(a[16-2:10]) & ~|(a[16-2:10]) ;		// All one 5 and all zero 10 - Infinity
	assign BInf = &(b[16-2:10]) & ~|(b[16-2:10]) ;		// All one 5 and all zero 10 - Infinity
	
	// Check for any exceptions and put all flags into exception vector
	assign InputExc = {(ANaN | BNaN | AInf | BInf), ANaN, BNaN, AInf, BInf} ;
	//assign InputExc = {(ANaN | ANaN | BNaN |BNaN), ANaN, ANaN, BNaN,BNaN} ;
	
	// Take input numbers apart
	assign Sa = a[16-1] ;							// A's sign
	assign Sb = b[16-1] ;							// B's sign
	assign Ea = a[16-2:10];						// Store A's 5 in Ea, unless A is an exception
	assign Eb = b[16-2:10];						// Store B's 5 in Eb, unless B is an exception	
//    assign Ma = a[10_MSB:10_LSB];
  //  assign Mb = b[10_MSB:10_LSB];
	

	// Actual 10 multiplication occurs here
	//assign Mp = ({4'b0001, a[10-1:0]}*{4'b0001, b[10-1:9]}) ;
	assign Mp = ({1'b1,a[10-1:0]}*{1'b1, b[10-1:0]}) ;

	
    //We multiply part of the 10 here
    //Full 10 of A
    //Bits 10_MUL_SPLIT_MSB:10_MUL_SPLIT_LSB of B
   // wire [`ACTUAL_10-1:0] inp_A;
   // wire [`ACTUAL_10-1:0] inp_B;
   // assign inp_A = {1'b1, Ma};
   // assign inp_B = {{(10-(10_MUL_SPLIT_MSB-10_MUL_SPLIT_LSB+1)){1'b0}}, 1'b1, Mb[10_MUL_SPLIT_MSB:10_MUL_SPLIT_LSB]};
   // DW02_mult #(`ACTUAL_10,`ACTUAL_10) u_mult(.A(inp_A), .B(inp_B), .TC(1'b0), .PRODUCT(Mp));
endmodule


module FPMult_ExecuteModule_dspchain(
		a,
		b,
		MpC,
		Ea,
		Eb,
		Sa,
		Sb,
		Sp,
		NormE,
		NormM,
		GRS
    );

	// Input ports
	input [10-1:0] a ;
	input [2*5:0] b ;
	input [2*10+1:0] MpC ;
	input [5-1:0] Ea ;						// A's 5
	input [5-1:0] Eb ;						// B's 5
	input Sa ;								// A's sign
	input Sb ;								// B's sign
	
	// Output ports
	output Sp ;								// Product sign
	output [8:0] NormE ;													// Normalized 5
	output [23-1:0] NormM ;												// Normalized 10
	output GRS ;
	
	wire [2*10+1:0] Mp ;
	
	assign Sp = (Sa ^ Sb) ;												// Equal signs give a positive product
	
   // wire [`ACTUAL_10-1:0] inp_a;
   // wire [`ACTUAL_10-1:0] inp_b;
   // assign inp_a = {1'b1, a};
   // assign inp_b = {{(10-10_MUL_SPLIT_LSB){1'b0}}, 1'b0, b};
   // DW02_mult #(`ACTUAL_10,`ACTUAL_10) u_mult(.A(inp_a), .B(inp_b), .TC(1'b0), .PRODUCT(Mp_temp));
   // DW01_add #(2*`ACTUAL_10) u_add(.A(Mp_temp), .B(MpC<<10_MUL_SPLIT_LSB), .CI(1'b0), .SUM(Mp), .CO());

	//assign Mp = (MpC<<(2*5+1)) + ({4'b0001, a[10-1:0]}*{1'b0, b[2*5:0]}) ;
	assign Mp = MpC;


	assign NormM = (Mp[2*10+1] ? Mp[2*10:0] : Mp[2*10-1:0]); 	// Check for overflow
	assign NormE = (Ea + Eb + Mp[2*10+1]);								// If so, increment 5
	
	assign GRS = ((Mp[10]&(Mp[10+1]))|(|Mp[10-1:0])) ;
	
endmodule

module FPMult_NormalizeModule_dspchain(
		NormM,
		NormE,
		RoundE,
		RoundEP,
		RoundM,
		RoundMP
    );

	// Input Ports
	input [23-1:0] NormM ;									// Normalized 10
	input [8:0] NormE ;									// Normalized 5

	// Output Ports
	output [8:0] RoundE ;
	output [8:0] RoundEP ;
	output [23:0] RoundM ;
	output [23:0] RoundMP ; 
	
// 5 = 5 
// 5 -1 = 4
// NEED to subtract 2^4 -1 = 15

wire [8-1 : 0] bias;

assign bias =  ((1<< (8 -1)) -1);

	assign RoundE = NormE - 9'd15 - 9'd15 + 9'd127 ;
	assign RoundEP = NormE - 9'd15 - 9'd15 + 9'd127 ;
	assign RoundM = NormM ;
	assign RoundMP = NormM ;

endmodule

module FPMult_RoundModule_dspchain(
		RoundM,
		RoundMP,
		RoundE,
		RoundEP,
		Sp,
		GRS,
		InputExc,
		Z,
		Flags
    );

	// Input Ports
	input [23:0] RoundM ;									// Normalized 10
	input [23:0] RoundMP ;									// Normalized 5
	input [8:0] RoundE ;									// Normalized 10 + 1
	input [8:0] RoundEP ;									// Normalized 5 + 1
	input Sp ;												// Product sign
	input GRS ;
	input [4:0] InputExc ;
	
	// Output Ports
	output [32-1:0] Z ;										// Final product
	output [4:0] Flags ;
	
	// Internal Signals
	wire [8:0] FinalE ;									// Rounded 5
	wire [23:0] FinalM;
	wire [23:0] PreShiftM;
	
	assign PreShiftM = GRS ? RoundMP : RoundM ;	// Round up if R and (G or S)
	
	// Post rounding normalization (potential one bit shift> use shifted 10 if there is overflow)
	assign FinalM = (PreShiftM[23] ? {1'b0, PreShiftM[23:1]} : PreShiftM[23:0]) ;
	assign FinalE = (PreShiftM[23] ? RoundEP : RoundE) ; // Increment 5 if a shift was done
	
	
	assign Z = {Sp, FinalE[8-1:0], FinalM[21-1:0], 2'b0} ;   // Putting the pieces together
	assign Flags = InputExc[4:0];

endmodule


module FPAddSub_single_dspchain(
		clk,
		rst,
		a,
		b,
		operation,
		result,
		flags
	);

// Clock and reset
	input clk ;										// Clock signal
	input rst ;										// Reset (active high, resets pipeline registers)
	
	// Input ports
	input [31:0] a ;								// Input A, a 32-bit floating point number
	input [31:0] b ;								// Input B, a 32-bit floating point number
	input operation ;								// Operation select signal
	
	// Output ports
	output [31:0] result ;						// Result of the operation
	output [4:0] flags ;							// Flags indicating exceptions according to IEEE754

	reg [68:0]pipe_1;
	reg [54:0]pipe_2;
	reg [45:0]pipe_3;


//internal module wires

//output ports
	wire Opout;
	wire Sa;
	wire Sb;
	wire MaxAB;
	wire [7:0] CExp;
	wire [4:0] Shift;
	wire [22:0] Mmax;
	wire [4:0] InputExc;
	wire [23:0] Mmin_3;

	wire [32:0] SumS_5 ;
	wire [4:0] Shift_1;							
	wire PSgn ;							
	wire Opr ;	
	
	wire [22:0] NormM ;				// Normalized mantissa
	wire [8:0] NormE ;					// Adjusted exponent
	wire ZeroSum ;						// Zero flag
	wire NegE ;							// Flag indicating negative exponent
	wire R ;								// Round bit
	wire S ;								// Final sticky bit
	wire FG ;

FPAddSub_a_dspchain M1(a,b,operation,Opout,Sa,Sb,MaxAB,CExp,Shift,Mmax,InputExc,Mmin_3);

FpAddSub_b_dspchain M2(pipe_1[51:29],pipe_1[23:0],pipe_1[67],pipe_1[66],pipe_1[65],pipe_1[68],SumS_5,Shift_1,PSgn,Opr);

FPAddSub_c_dspchain M3(pipe_2[54:22],pipe_2[21:17],pipe_2[16:9],NormM,NormE,ZeroSum,NegE,R,S,FG);

FPAddSub_d_dspchain M4(pipe_3[13],pipe_3[22:14],pipe_3[45:23],pipe_3[11],pipe_3[10],pipe_3[9],pipe_3[8],pipe_3[7],pipe_3[6],pipe_3[5],pipe_3[12],pipe_3[4:0],result,flags );


always @ (posedge clk) begin	
		if(rst) begin
			pipe_1 <= 0;
			pipe_2 <= 0;
			pipe_3 <= 0;
		end 
		else begin
/*
pipe_1:
	[68] Opout;
	[67] Sa;
	[66] Sb;
	[65] MaxAB;
	[64:57] CExp;
	[56:52] Shift;
	[51:29] Mmax;
	[28:24] InputExc;
	[23:0] Mmin_3;	
*/

pipe_1 <= {Opout,Sa,Sb,MaxAB,CExp,Shift,Mmax,InputExc,Mmin_3};

/*
pipe_2:
	[54:22]SumS_5;
	[21:17]Shift;
	[16:9]CExp;	
	[8]Sa;
	[7]Sb;
	[6]operation;
	[5]MaxAB;	
	[4:0]InputExc
*/

pipe_2 <= {SumS_5,Shift_1,pipe_1[64:57], pipe_1[67], pipe_1[66], pipe_1[68], pipe_1[65], pipe_1[28:24] };

/*
pipe_3:
	[45:23] NormM ;				
	[22:14] NormE ;					
	[13]ZeroSum ;						
	[12]NegE ;							
	[11]R ;								
	[10]S ;								
	[9]FG ;
	[8]Sa;
	[7]Sb;
	[6]operation;
	[5]MaxAB;	
	[4:0]InputExc
*/

pipe_3 <= {NormM,NormE,ZeroSum,NegE,R,S,FG, pipe_2[8], pipe_2[7], pipe_2[6], pipe_2[5], pipe_2[4:0] };

end
end

endmodule

// Prealign + Align + Shift 1 + Shift 2
module FPAddSub_a_dspchain(
		A,
		B,
		operation,
		Opout,
		Sa,
		Sb,
		MaxAB,
		CExp,
		Shift,
		Mmax,
		InputExc,
		Mmin_3
		
		
	);
	
	// Input ports
	input [31:0] A ;										// Input A, a 32-bit floating point number
	input [31:0] B ;										// Input B, a 32-bit floating point number
	input operation ;
	
	//output ports
	output Opout;
	output Sa;
	output Sb;
	output MaxAB;
	output [7:0] CExp;
	output [4:0] Shift;
	output [22:0] Mmax;
	output [4:0] InputExc;
	output [23:0] Mmin_3;	
							
	wire [9:0] ShiftDet ;							
	wire [30:0] Aout ;
	wire [30:0] Bout ;
	

	// Internal signals									// If signal is high...
	wire ANaN ;												// A is a NaN (Not-a-Number)
	wire BNaN ;												// B is a NaN
	wire AInf ;												// A is infinity
	wire BInf ;												// B is infinity
	wire [7:0] DAB ;										// ExpA - ExpB					
	wire [7:0] DBA ;										// ExpB - ExpA	
	
	assign ANaN = &(A[30:23]) & |(A[22:0]) ;		// All one exponent and not all zero mantissa - NaN
	assign BNaN = &(B[30:23]) & |(B[22:0]);		// All one exponent and not all zero mantissa - NaN
	assign AInf = &(A[30:23]) & ~|(A[22:0]) ;	// All one exponent and all zero mantissa - Infinity
	assign BInf = &(B[30:23]) & ~|(B[22:0]) ;	// All one exponent and all zero mantissa - Infinity
	
	// Put all flags into exception vector
	assign InputExc = {(ANaN | BNaN | AInf | BInf), ANaN, BNaN, AInf, BInf} ;
	
	//assign DAB = (A[30:23] - B[30:23]) ;
	//assign DBA = (B[30:23] - A[30:23]) ;
  assign DAB = (A[30:23] + ~(B[30:23]) + 1) ;
	assign DBA = (B[30:23] + ~(A[30:23]) + 1) ;

	assign Sa = A[31] ;									// A's sign bit
	assign Sb = B[31] ;									// B's sign	bit
	assign ShiftDet = {DBA[4:0], DAB[4:0]} ;		// Shift data
	assign Opout = operation ;
	assign Aout = A[30:0] ;
	assign Bout = B[30:0] ;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////
	// Output ports
													// Number of steps to smaller mantissa shift right
	wire [22:0] Mmin_1 ;							// Smaller mantissa 
	
	// Internal signals
	//wire BOF ;										// Check for shifting overflow if B is larger
	//wire AOF ;										// Check for shifting overflow if A is larger
	
	assign MaxAB = (Aout[30:0] < Bout[30:0]) ;	
	//assign BOF = ShiftDet[9:5] < 25 ;		// Cannot shift more than 25 bits
	//assign AOF = ShiftDet[4:0] < 25 ;		// Cannot shift more than 25 bits
	
	// Determine final shift value
	//assign Shift = MaxAB ? (BOF ? ShiftDet[9:5] : 5'b11001) : (AOF ? ShiftDet[4:0] : 5'b11001) ;
	
	assign Shift = MaxAB ? ShiftDet[9:5] : ShiftDet[4:0] ;
	
	// Take out smaller mantissa and append shift space
	assign Mmin_1 = MaxAB ? Aout[22:0] : Bout[22:0] ; 
	
	// Take out larger mantissa	
	assign Mmax = MaxAB ? Bout[22:0]: Aout[22:0] ;	
	
	// Common exponent
	assign CExp = (MaxAB ? Bout[30:23] : Aout[30:23]) ;	

// Input ports
					// Smaller mantissa after 16|12|8|4 shift
	wire [2:0] Shift_1 ;						// Shift amount
	
	assign Shift_1 = Shift [4:2];

	wire [23:0] Mmin_2 ;						// The smaller mantissa
	
	// Internal signals
	reg	  [23:0]		Lvl1;
	reg	  [23:0]		Lvl2;
	wire    [47:0]    Stage1;	
	integer           i;                // Loop variable
	
	always @(*) begin						
		// Rotate by 16?
		Lvl1 <= Shift_1[2] ? {17'b00000000000000001, Mmin_1[22:16]} : {1'b1, Mmin_1}; 
	end
	
	assign Stage1 = {Lvl1, Lvl1};
	
	always @(*) begin    					// Rotate {0 | 4 | 8 | 12} bits
	  case (Shift_1[1:0])
			// Rotate by 0	
			2'b00:  Lvl2 <= Stage1[23:0];       			
			// Rotate by 4	
			2'b01:  begin for (i=0; i<=23; i=i+1) begin Lvl2[i] <= Stage1[i+4]; end Lvl2[23:19] <= 0; end
			// Rotate by 8
			2'b10:  begin for (i=0; i<=23; i=i+1) begin Lvl2[i] <= Stage1[i+8]; end Lvl2[23:15] <= 0; end
			// Rotate by 12	
			2'b11:  begin for (i=0; i<=23; i=i+1) begin Lvl2[i] <= Stage1[i+12]; end Lvl2[23:11] <= 0; end
	  endcase
	end
	
	// Assign output to next shift stage
	assign Mmin_2 = Lvl2;
								// Smaller mantissa after 16|12|8|4 shift
	wire [1:0] Shift_2 ;						// Shift amount
	
	assign Shift_2 =Shift  [1:0] ;
					// The smaller mantissa
	
	// Internal Signal
	reg	  [23:0]		Lvl3;
	wire    [47:0]    Stage2;	
	integer           j;               // Loop variable
	
	assign Stage2 = {Mmin_2, Mmin_2};

	always @(*) begin    // Rotate {0 | 1 | 2 | 3} bits
	  case (Shift_2[1:0])
			// Rotate by 0
			2'b00:  Lvl3 <= Stage2[23:0];   
			// Rotate by 1
			2'b01:  begin for (j=0; j<=23; j=j+1)  begin Lvl3[j] <= Stage2[j+1]; end Lvl3[23] <= 0; end 
			// Rotate by 2
			2'b10:  begin for (j=0; j<=23; j=j+1)  begin Lvl3[j] <= Stage2[j+2]; end Lvl3[23:22] <= 0; end 
			// Rotate by 3
			2'b11:  begin for (j=0; j<=23; j=j+1)  begin Lvl3[j] <= Stage2[j+3]; end Lvl3[23:21] <= 0; end 	  
	  endcase
	end
	
	// Assign output
	assign Mmin_3 = Lvl3;	

	
endmodule

module FpAddSub_b_dspchain(
		Mmax,
		Mmin,
		Sa,
		Sb,
		MaxAB,
		OpMode,
		SumS_5,
		Shift,
		PSgn,
		Opr
);
	input [22:0] Mmax ;					// The larger mantissa
	input [23:0] Mmin ;					// The smaller mantissa
	input Sa ;								// Sign bit of larger number
	input Sb ;								// Sign bit of smaller number
	input MaxAB ;							// Indicates the larger number (0/A, 1/B)
	input OpMode ;							// Operation to be performed (0/Add, 1/Sub)
	
	// Output ports
	wire [32:0] Sum ;	
						// Output ports
	output [32:0] SumS_5 ;					// Mantissa after 16|0 shift
	output [4:0] Shift ;					// Shift amount				// The result of the operation
	output PSgn ;							// The sign for the result
	output Opr ;							// The effective (performed) operation

	assign Opr = (OpMode^Sa^Sb); 		// Resolve sign to determine operation

	// Perform effective operation
	assign Sum = (OpMode^Sa^Sb) ? ({1'b1, Mmax, 8'b00000000} - {Mmin, 8'b00000000}) : ({1'b1, Mmax, 8'b00000000} + {Mmin, 8'b00000000}) ;
	// Assign result sign
	assign PSgn = (MaxAB ? Sb : Sa) ;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

		// Determine normalization shift amount by finding leading nought
	assign Shift =  ( 
		Sum[32] ? 5'b00000 :	 
		Sum[31] ? 5'b00001 : 
		Sum[30] ? 5'b00010 : 
		Sum[29] ? 5'b00011 : 
		Sum[28] ? 5'b00100 : 
		Sum[27] ? 5'b00101 : 
		Sum[26] ? 5'b00110 : 
		Sum[25] ? 5'b00111 :
		Sum[24] ? 5'b01000 :
		Sum[23] ? 5'b01001 :
		Sum[22] ? 5'b01010 :
		Sum[21] ? 5'b01011 :
		Sum[20] ? 5'b01100 :
		Sum[19] ? 5'b01101 :
		Sum[18] ? 5'b01110 :
		Sum[17] ? 5'b01111 :
		Sum[16] ? 5'b10000 :
		Sum[15] ? 5'b10001 :
		Sum[14] ? 5'b10010 :
		Sum[13] ? 5'b10011 :
		Sum[12] ? 5'b10100 :
		Sum[11] ? 5'b10101 :
		Sum[10] ? 5'b10110 :
		Sum[9] ? 5'b10111 :
		Sum[8] ? 5'b11000 :
		Sum[7] ? 5'b11001 : 5'b11010
	);
	
	reg	  [32:0]		Lvl1;
	
	always @(*) begin
		// Rotate by 16?
		Lvl1 <= Shift[4] ? {Sum[16:0], 16'b0000000000000000} : Sum; 
	end
	
	// Assign outputs
	assign SumS_5 = Lvl1;	

endmodule

module FPAddSub_c_dspchain(
		SumS_5,
		Shift,
		CExp,
		NormM,
		NormE,
		ZeroSum,
		NegE,
		R,
		S,
		FG
	);
	
	// Input ports
	input [32:0] SumS_5 ;						// Smaller mantissa after 16|12|8|4 shift
	
	input [4:0] Shift ;						// Shift amount
	
// Input ports
	
	input [7:0] CExp ;
	

	// Output ports
	output [22:0] NormM ;				// Normalized mantissa
	output [8:0] NormE ;					// Adjusted exponent
	output ZeroSum ;						// Zero flag
	output NegE ;							// Flag indicating negative exponent
	output R ;								// Round bit
	output S ;								// Final sticky bit
	output FG ;


	wire [3:0]Shift_1;
	assign Shift_1 = Shift [3:0];
	// Output ports
	wire [32:0] SumS_7 ;						// The smaller mantissa
	
	reg	  [32:0]		Lvl2;
	wire    [65:0]    Stage1;	
	reg	  [32:0]		Lvl3;
	wire    [65:0]    Stage2;	
	integer           i;               	// Loop variable
	
	assign Stage1 = {SumS_5, SumS_5};

	always @(*) begin    					// Rotate {0 | 4 | 8 | 12} bits
	  case (Shift[3:2])
			// Rotate by 0
			2'b00: Lvl2 <= Stage1[32:0];       		
			// Rotate by 4
			2'b01: begin for (i=65; i>=33; i=i-1) begin Lvl2[i-33] <= Stage1[i-4]; end Lvl2[3:0] <= 0; end
			// Rotate by 8
			2'b10: begin for (i=65; i>=33; i=i-1) begin Lvl2[i-33] <= Stage1[i-8]; end Lvl2[7:0] <= 0; end
			// Rotate by 12
			2'b11: begin for (i=65; i>=33; i=i-1) begin Lvl2[i-33] <= Stage1[i-12]; end Lvl2[11:0] <= 0; end
	  endcase
	end
	
	assign Stage2 = {Lvl2, Lvl2};

	always @(*) begin   				 		// Rotate {0 | 1 | 2 | 3} bits
	  case (Shift_1[1:0])
			// Rotate by 0
			2'b00:  Lvl3 <= Stage2[32:0];
			// Rotate by 1
			2'b01: begin for (i=65; i>=33; i=i-1) begin Lvl3[i-33] <= Stage2[i-1]; end Lvl3[0] <= 0; end 
			// Rotate by 2
			2'b10: begin for (i=65; i>=33; i=i-1) begin Lvl3[i-33] <= Stage2[i-2]; end Lvl3[1:0] <= 0; end
			// Rotate by 3
			2'b11: begin for (i=65; i>=33; i=i-1) begin Lvl3[i-33] <= Stage2[i-3]; end Lvl3[2:0] <= 0; end
	  endcase
	end
	
	// Assign outputs
	assign SumS_7 = Lvl3;						// Take out smaller mantissa



	
	// Internal signals
	wire MSBShift ;						// Flag indicating that a second shift is needed
	wire [8:0] ExpOF ;					// MSB set in sum indicates overflow
	wire [8:0] ExpOK ;					// MSB not set, no adjustment
	
	// Calculate normalized exponent and mantissa, check for all-zero sum
	assign MSBShift = SumS_7[32] ;		// Check MSB in unnormalized sum
	assign ZeroSum = ~|SumS_7 ;			// Check for all zero sum
	assign ExpOK = CExp - Shift ;		// Adjust exponent for new normalized mantissa
	assign NegE = ExpOK[8] ;			// Check for exponent overflow
	assign ExpOF = CExp - Shift + 1'b1 ;		// If MSB set, add one to exponent(x2)
	assign NormE = MSBShift ? ExpOF : ExpOK ;			// Check for exponent overflow
	assign NormM = SumS_7[31:9] ;		// The new, normalized mantissa
	
	// Also need to compute sticky and round bits for the rounding stage
	assign FG = SumS_7[8] ; 
	assign R = SumS_7[7] ;
	assign S = |SumS_7[6:0] ;		
	
endmodule

module FPAddSub_d_dspchain(
		ZeroSum,
		NormE,
		NormM,
		R,
		S,
		G,
		Sa,
		Sb,
		Ctrl,
		MaxAB,
		NegE,
		InputExc,
		P,
		Flags 
    );

	// Input ports
	input ZeroSum ;					// Sum is zero
	input [8:0] NormE ;				// Normalized exponent
	input [22:0] NormM ;				// Normalized mantissa
	input R ;							// Round bit
	input S ;							// Sticky bit
	input G ;
	input Sa ;							// A's sign bit
	input Sb ;							// B's sign bit
	input Ctrl ;						// Control bit (operation)
	input MaxAB ;
	

	input NegE ;						// Negative exponent?
	input [4:0] InputExc ;					// Exceptions in inputs A and B

	// Output ports
	output [31:0] P ;					// Final result
	output [4:0] Flags ;				// Exception flags
	
	// 
	wire [31:0] Z ;					// Final result
	wire EOF ;
	
	// Internal signals
	wire [23:0] RoundUpM ;			// Rounded up sum with room for overflow
	wire [22:0] RoundM ;				// The final rounded sum
	wire [8:0] RoundE ;				// Rounded exponent (note extra bit due to poential overflow	)
	wire RoundUp ;						// Flag indicating that the sum should be rounded up
	wire ExpAdd ;						// May have to add 1 to compensate for overflow 
	wire RoundOF ;						// Rounding overflow
	wire FSgn;
	// The cases where we need to round upwards (= adding one) in Round to nearest, tie to even
	assign RoundUp = (G & ((R | S) | NormM[0])) ;
	
	// Note that in the other cases (rounding down), the sum is already 'rounded'
	assign RoundUpM = (NormM + 1) ;								// The sum, rounded up by 1
	assign RoundM = (RoundUp ? RoundUpM[22:0] : NormM) ; 	// Compute final mantissa	
	assign RoundOF = RoundUp & RoundUpM[23] ; 				// Check for overflow when rounding up

	// Calculate post-rounding exponent
	assign ExpAdd = (RoundOF ? 1'b1 : 1'b0) ; 				// Add 1 to exponent to compensate for overflow
	assign RoundE = ZeroSum ? 8'b00000000 : (NormE + ExpAdd) ; 							// Final exponent

	// If zero, need to determine sign according to rounding
	assign FSgn = (ZeroSum & (Sa ^ Sb)) | (ZeroSum ? (Sa & Sb & ~Ctrl) : ((~MaxAB & Sa) | ((Ctrl ^ Sb) & (MaxAB | Sa)))) ;

	// Assign final result
	assign Z = {FSgn, RoundE[7:0], RoundM[22:0]} ;
	
	// Indicate exponent overflow
	assign EOF = RoundE[8];

/////////////////////////////////////////////////////////////////////////////////////////////////////////



	
	// Internal signals
	wire Overflow ;					// Overflow flag
	wire Underflow ;					// Underflow flag
	wire DivideByZero ;				// Divide-by-Zero flag (always 0 in Add/Sub)
	wire Invalid ;						// Invalid inputs or result
	wire Inexact ;						// Result is inexact because of rounding
	
	// Exception flags
	
	// Result is too big to be represented
	assign Overflow = EOF | InputExc[1] | InputExc[0] ;
	
	// Result is too small to be represented
	assign Underflow = NegE & (R | S);
	
	// Infinite result computed exactly from finite operands
	assign DivideByZero = &(Z[30:23]) & ~|(Z[30:23]) & ~InputExc[1] & ~InputExc[0];
	
	// Invalid inputs or operation
	assign Invalid = |(InputExc[4:2]) ;
	
	// Inexact answer due to rounding, overflow or underflow
	assign Inexact = (R | S) | Overflow | Underflow;
	
	// Put pieces together to form final result
	assign P = Z ;
	
	// Collect exception flags	
	assign Flags = {Overflow, Underflow, DivideByZero, Invalid, Inexact} ; 	
	
endmodule

`endif 


module fifo_512_60bit
	#(parameter dw=60,
	  parameter aw=9)
	(clk, rst, clr, din, we, dout, re,
	full, empty);

parameter max_size = 1<<aw;

input 			clk, rst, clr;
input 	[dw-1:0]	din;
input 			we;
output	[dw-1:0]	dout;
input 	wire		re;
output			full;
output			empty;

////////////////////////////////////////////////////////////////////
//
// Local Wires
//
wire 	[dw-1:0]	din_nc;
wire 	[dw-1:0]	out_nc;
reg		[aw-1:0]	wp;
wire	[aw-1:0]	wp_pl1;
reg		[aw-1:0]	rp;
wire	[aw-1:0]	rp_pl1;
reg					gb;

////////////////////////////////////////////////////////////////////
//
// Memory Block
//
dpram_512_60bit #(
	.AWIDTH(aw),
	.DWIDTH(dw)
	) u0 (
	.clk(clk),
	.address_a(rp),
	.wren_a(1'b0),
	.data_a(din_nc),
	.out_a(dout),
	.address_b(wp),
	.wren_b(we),
	.data_b(din),
	.out_b(out_nc)
);


////////////////////////////////////////////////////////////////////
//
// Misc Logic
//

always @(posedge clk)
	if(rst)	wp <= {aw{1'b0}};
	else
	if(clr)		wp <= {aw{1'b0}};
	else
	if(we)		wp <= wp_pl1;

assign wp_pl1 = wp + 1'b1;

always @(posedge clk)
	if(rst)		rp <= {aw{1'b0}};
	else
	if(clr)		rp <= {aw{1'b0}};
	else
	if(re)		rp <= rp_pl1;

assign rp_pl1 = rp + 1'b1;

////////////////////////////////////////////////////////////////////
//
// Combinatorial Full & Empty Flags
//

assign empty = ((wp == rp) & !gb);
assign full  = ((wp == rp) &  gb);

// Guard Bit ...
always @(posedge clk)
	if(rst)						gb <= 1'b0;
	else
	if(clr)						gb <= 1'b0;
	else
	if((wp_pl1 == rp) & we)		gb <= 1'b1;
	else
	if(re)						gb <= 1'b0;

endmodule

module dpram_512_60bit #(
	parameter DWIDTH = 60,
	parameter AWIDTH = 9
  )
  (
	clk,
	address_a,
	address_b,
	wren_a,
	wren_b,
	data_a,
	data_b,
	out_a,
	out_b
);

parameter NUM_WORDS=1<<AWIDTH;

input clk;
input [(AWIDTH-1):0] address_a;
input [(AWIDTH-1):0] address_b;
input  wren_a;
input  wren_b;
input [(DWIDTH-1):0] data_a;
input [(DWIDTH-1):0] data_b;
output [(DWIDTH-1):0] out_a;
output [(DWIDTH-1):0] out_b;

`ifndef hard_mem

	reg [DWIDTH-1:0] ram[NUM_WORDS-1:0];
  reg [(DWIDTH-1):0] out_a;
  reg [(DWIDTH-1):0] out_b;

	always @ (posedge clk) begin
		if (wren_a) begin
			ram[address_a] <= data_a;
		end
		else begin
			out_a <= ram[address_a];
		end
	end
	  
	always @ (posedge clk) begin 
		if (wren_b) begin
			ram[address_b] <= data_b;
		end 
		else begin
			out_b <= ram[address_b];
		end
	end

`else

defparam u_dual_port_ram.ADDR_WIDTH = AWIDTH;
defparam u_dual_port_ram.DATA_WIDTH = DWIDTH;

	dual_port_ram u_dual_port_ram(
	.addr1(address_a),
	.we1(wren_a),
	.data1(data_a),
	.out1(out_a),
	.addr2(address_b),
	.we2(wren_b),
	.data2(data_b),
	.out2(out_b),
	.clk(clk)
	);

`endif

endmodule

module dsp_chain_4_fp16_sop2_mult (clk,reset,top_a1,top_b1,bot_a1,bot_b1,top_a2,top_b2,bot_a2,bot_b2,top_a3,top_b3,bot_a3,bot_b3,top_a4,top_b4,bot_a4,bot_b4,result); 

input clk;
input reset; 
input [15:0] top_a1, top_b1, bot_a1, bot_b1, top_a2, top_b2, bot_a2, bot_b2, top_a3, top_b3, bot_a3, bot_b3, top_a4, top_b4, bot_a4, bot_b4; 
output [31:0] result; 

wire [31:0] chainin0, chainin1, chainin2, chainin3;
wire [31:0] chainout0, chainout1, chainout2, chainout3; 
wire [31:0] fp32_in1, fp32_in2, fp32_in3, fp32_in4; 
wire [31:0] result1, result2, result3, result4; 

assign fp32_in1 = 32'd0; 
assign fp32_in2 = 32'd0;
assign fp32_in3 = 32'd0;
assign fp32_in4 = 32'd0;
assign chainin0 = 32'd0; 

fp16_sop2_mult_dspchain inst1 (.clk(clk),.reset(reset),.top_a(top_a1),.top_b(top_b1),.bot_a(bot_a1),.bot_b(bot_b1),.fp32_in(fp32_in1),.mode_sigs(11'd0),.chainin(chainin0),.chainout(chainout0),.result(result1)); 
fp16_sop2_mult_dspchain inst2 (.clk(clk),.reset(reset),.top_a(top_a2),.top_b(top_b2),.bot_a(bot_a2),.bot_b(bot_b2),.fp32_in(fp32_in2),.mode_sigs(11'd0),.chainin(chainout0),.chainout(chainout1),.result(result2)); 
fp16_sop2_mult_dspchain inst3 (.clk(clk),.reset(reset),.top_a(top_a3),.top_b(top_b3),.bot_a(bot_a3),.bot_b(bot_b3),.fp32_in(fp32_in3),.mode_sigs(11'd0),.chainin(chainout1),.chainout(chainout2),.result(result3)); 
fp16_sop2_mult_dspchain inst4 (.clk(clk),.reset(reset),.top_a(top_a4),.top_b(top_b4),.bot_a(bot_a4),.bot_b(bot_b4),.fp32_in(fp32_in4),.mode_sigs(11'd0),.chainin(chainout2),.chainout(chainout3),.result(result4)); 

assign result = result4;  


endmodule
