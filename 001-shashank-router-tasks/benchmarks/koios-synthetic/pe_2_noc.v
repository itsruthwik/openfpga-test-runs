

module pe_2_noc (
    input clk,
    input clk_noc,
    input rst,
    
    input [127:0] in_data,
    input in_valid,
    output in_ready,
    input [3:0] in_dest,
    
    output [127:0] out_data,
    output out_valid,
    input out_ready,
    output [11:0] out_dest, // 3 dests
    output [5:0] out_id
);


// module pe_load(input clk, input reset, input [127:0] top_inp, input inp_valid, output reg inp_ready, output reg [127:0] top_outp, output reg outp_valid, input outp_ready); 

// pe 1
wire [127:0] inp_data_1;
wire inp_valid_1;
wire inp_ready_1;
wire [127:0] outp_data_1;
wire outp_valid_1;
wire outp_ready_1;

// pe 2
wire [127:0] inp_data_2;
wire inp_valid_2;
wire inp_ready_2;
wire [127:0] outp_data_2;
wire outp_valid_2;
wire outp_ready_2;

// rtr 1
    wire               axis_in_tvalid_1;
    wire               axis_in_tready_1;
    wire   [127 : 0]   axis_in_tdata_1;
    wire               axis_in_tlast_1;
    wire   [1 : 0]     axis_in_tid_1;
    wire   [3 : 0]     axis_in_tdest_1;
    wire               axis_out_tvalid_1;
    wire               axis_out_tready_1;
    wire   [127 : 0]   axis_out_tdata_1;
    wire               axis_out_tlast_1;
    wire   [1 : 0]     axis_out_tid_1;
    wire   [3 : 0]     axis_out_tdest_1;

    wire               axis_in_tvalid_2;
    wire               axis_in_tready_2;
    wire   [127 : 0]   axis_in_tdata_2;
    wire               axis_in_tlast_2;
    wire   [1 : 0]     axis_in_tid_2;
    wire   [3 : 0]     axis_in_tdest_2;
    wire               axis_out_tvalid_2;
    wire               axis_out_tready_2;
    wire   [127 : 0]   axis_out_tdata_2;
    wire               axis_out_tlast_2;
    wire   [1 : 0]     axis_out_tid_2;
    wire   [3 : 0]     axis_out_tdest_2;

    wire               axis_in_tvalid_3;
    wire               axis_in_tready_3;
    wire   [127 : 0]   axis_in_tdata_3;
    wire               axis_in_tlast_3;
    wire   [1 : 0]     axis_in_tid_3;
    wire   [3 : 0]     axis_in_tdest_3;
    wire               axis_out_tvalid_3;
    wire               axis_out_tready_3;
    wire   [127 : 0]   axis_out_tdata_3;
    wire               axis_out_tlast_3;
    wire   [1 : 0]     axis_out_tid_3;
    wire   [3 : 0]     axis_out_tdest_3;
// 
// pe 1
pe_load pe_inst_1 (
  .clk(clk),
  .reset(rst),

  .top_inp(inp_data_1),
  .inp_valid(inp_valid_1),
  .inp_ready(inp_ready_1),
  
  .top_outp(out_data_1),
  .outp_valid(outp_valid_1),
  .outp_ready(outp_ready_1)
);

// pe 2
pe_load pe_inst_2 (
  .clk(clk),
  .reset(rst),

    .top_inp(inp_data_2),
    .inp_valid(inp_valid_2),
    .inp_ready(inp_ready_2),

    .top_outp(out_data_2),
    .outp_valid(outp_valid_2),
    .outp_ready(outp_ready_2)
);

// routers
router_wrap rtr_inst_1 (
    .clk_noc(clk_noc),
    .clk_usr(clk),
    .rst(rst),

    .axis_in_tvalid(axis_in_tvalid_1),
    .axis_in_tready(axis_in_tready_1),
    .axis_in_tdata(axis_in_tdata_1),
    .axis_in_tlast(axis_in_tlast_1),
    .axis_in_tid(axis_in_tid_1),
    .axis_in_tdest(axis_in_tdest_1),

    .axis_out_tvalid(axis_out_tvalid_1),
    .axis_out_tready(axis_out_tready_1),
    .axis_out_tdata(axis_out_tdata_1),
    .axis_out_tlast(axis_out_tlast_1),
    .axis_out_tid(axis_out_tid_1),
    .axis_out_tdest(axis_out_tdest_1),

    .router_adderss(4'b0000)
);

// rtr 2
router_wrap rtr_inst_2 (
    .clk_noc(clk_noc),
    .clk_usr(clk),
    .rst(rst),

    .axis_in_tvalid(axis_in_tvalid_2),
    .axis_in_tready(axis_in_tready_2),
    .axis_in_tdata(axis_in_tdata_2),
    // .axis_in_tlast(axis_in_tlast_2),
    .axis_in_tid(axis_in_tid_2),
    .axis_in_tdest(axis_in_tdest_2),

    .axis_out_tvalid(axis_out_tvalid_2),
    .axis_out_tready(axis_out_tready_2),
    .axis_out_tdata(axis_out_tdata_2),
    // .axis_out_tlast(axis_out_tlast_2),
    // .axis_out_tid(axis_out_tid_2),
    .axis_out_tdest(axis_out_tdest_2),

    .router_adderss(4'b0001)
);

router_wrap rtr_inst_3 (
    .clk_noc(clk_noc),
    .clk_usr(clk),
    .rst(rst),

    .axis_in_tvalid(axis_in_tvalid_3),
    .axis_in_tready(axis_in_tready_3),
    .axis_in_tdata(axis_in_tdata_3),
    // .axis_in_tlast(axis_in_tlast_3),
    .axis_in_tid(axis_in_tid_3),
    .axis_in_tdest(axis_in_tdest_3),

    .axis_out_tvalid(axis_out_tvalid_3),
    .axis_out_tready(axis_out_tready_3),
    .axis_out_tdata(axis_out_tdata_3),
    // .axis_out_tlast(axis_out_tlast_3),
    // .axis_out_tid(axis_out_tid_3),
    .axis_out_tdest(axis_out_tdest_3),

    .router_adderss(4'b0010)
);



assign inp_data_1 = axis_out_tdata_1;
assign inp_valid_1 = axis_out_tvalid_1;
assign axis_out_tready_1 = inp_ready_1;

assign axis_in_tdata_1 = outp_data_1;
assign axis_in_tvalid_1 = outp_valid_1;
assign outp_ready_1 = axis_in_tready_1;
assign axis_in_tid_1 = 2'b00;
assign axis_in_tdest_1 = 4'b0010;


assign inp_data_2 = axis_out_tdata_2;
assign inp_valid_2 = axis_out_tvalid_2;
assign axis_out_tready_2 = inp_ready_2;

assign axis_in_tdata_2 = outp_data_2;
assign axis_in_tvalid_2 = outp_valid_2;
assign outp_ready_2 = axis_in_tready_2;
assign axis_in_tid_2 = 2'b01;
assign axis_in_tdest_2 = 4'b0010;

// top level io
assign axis_in_tdata_3 = in_data;
assign axis_in_tvalid_3 = in_valid;
assign in_ready = axis_in_tready_3;
assign axis_in_tid_3 = 2'b11; 
assign axis_in_tdest_3 = in_dest;

assign out_data = axis_out_tdata_3;
assign out_valid = axis_out_tvalid_3;
assign axis_out_tready_3 = out_ready;
assign out_dest = {axis_out_tdest_3, axis_out_tdest_2, axis_out_tdest_1};
assign out_id = {axis_out_tid_3, axis_out_tid_2, axis_out_tid_1};

endmodule


