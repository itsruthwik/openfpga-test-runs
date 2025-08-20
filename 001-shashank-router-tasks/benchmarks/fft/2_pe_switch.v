module pe_2_switch (
    input clk,
    input reset,

    input [127:0] in_tdata,
    input in_tvalid,
    output in_tready,
    output [127:0] out_tdata,
    output out_tvalid,
    input out_tready
);


wire [127:0] pe1_in_tdata;
wire pe1_in_tvalid;
wire pe1_in_tready;
wire [127:0] pe1_out_tdata;
wire pe1_out_tvalid;
wire pe1_out_tready;

wire [127:0] pe2_in_tdata;
wire pe2_in_tvalid;
wire pe2_in_tready;
wire [127:0] pe2_out_tdata;
wire pe2_out_tvalid;
wire pe2_out_tready;


axis_pe pe1 (
    .clk(clk),
    .reset(reset),

    .in_tdata(pe1_in_tdata),
    .in_tvalid(pe1_in_tvalid),
    .in_tready(pe1_in_tready),

    .out_tdata(pe1_out_tdata),
    .out_tvalid(pe1_out_tvalid),
    .out_tready(pe1_out_tready)
);



axis_pe pe2 (
    .clk(clk),
    .reset(reset),

    .in_tdata(pe2_in_tdata),
    .in_tvalid(pe2_in_tvalid),
    .in_tready(pe2_in_tready),

    .out_tdata(pe2_out_tdata),
    .out_tvalid(pe2_out_tvalid),
    .out_tready(pe2_out_tready)
);

assign pe1_in_tdata = in_tdata;
assign pe1_in_tvalid = in_tvalid;
assign in_tready = pe1_in_tready;

assign pe2_in_tdata = pe1_out_tdata;
assign pe2_in_tvalid = pe1_out_tvalid;
assign pe1_out_tready = pe2_in_tready;

assign out_tdata = pe2_out_tdata;
assign out_tvalid = pe2_out_tvalid;
assign pe2_out_tready = out_tready;

endmodule