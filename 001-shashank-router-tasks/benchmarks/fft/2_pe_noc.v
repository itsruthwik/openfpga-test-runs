module pe_2_noc (
    input clk,
    input clk_noc,
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


(* keep *)
router_wrap rtr1(
    .clk_usr(clk),
    .clk_noc(clk_noc),
    .rst_n(reset),

    .axis_in_tdata(pe1_out_tdata),
    .axis_in_tvalid(pe1_out_tvalid),
    .axis_in_tready(pe1_out_tready),

    .axis_out_tdata(pe2_in_tdata),
    .axis_out_tvalid(pe2_in_tvalid),
    .axis_out_tready(pe2_in_tready),

    .router_address(2'b00)
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


(* keep *)
router_wrap rtr2(
    .clk_usr(clk),
    .clk_noc(clk_noc),
    .rst_n(reset),

    .axis_in_tdata(pe2_out_tdata),
    .axis_in_tvalid(pe2_out_tvalid),
    .axis_in_tready(pe2_out_tready),

    .axis_out_tdata(out_tdata),
    .axis_out_tvalid(out_tvalid),
    .axis_out_tready(out_tready),
    .router_address(2'b01)
);


(* keep *)
router_wrap rtr3(
    .clk_usr(clk),
    .clk_noc(clk_noc),
    .rst_n(reset),

    .axis_in_tdata(in_tdata),
    .axis_in_tvalid(in_tvalid),
    .axis_in_tready(in_tready),

    .axis_out_tdata(pe1_in_tdata),
    .axis_out_tvalid(pe1_in_tvalid),
    .axis_out_tready(pe1_in_tready),
    .router_address(2'b10)
);

endmodule