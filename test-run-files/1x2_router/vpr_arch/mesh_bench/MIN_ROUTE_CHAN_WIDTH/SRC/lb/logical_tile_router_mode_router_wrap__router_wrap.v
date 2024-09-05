//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for primitive pb_type: router_wrap
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Tue Aug 20 23:36:48 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for logical_tile_router_mode_router_wrap__router_wrap -----
module logical_tile_router_mode_router_wrap__router_wrap(clk,
                                                         router_wrap_RST_,
                                                         router_wrap_MY_XPOS,
                                                         router_wrap_MY_YPOS,
                                                         router_wrap_IDATA_0,
                                                         router_wrap_IDATA_1,
                                                         router_wrap_IDATA_2,
                                                         router_wrap_IDATA_3,
                                                         router_wrap_IDATA_4,
                                                         router_wrap_IVALID_0,
                                                         router_wrap_IVALID_1,
                                                         router_wrap_IVALID_2,
                                                         router_wrap_IVALID_3,
                                                         router_wrap_IVALID_4,
                                                         router_wrap_IVCH_0,
                                                         router_wrap_IVCH_1,
                                                         router_wrap_IVCH_2,
                                                         router_wrap_IVCH_3,
                                                         router_wrap_IVCH_4,
                                                         router_wrap_IACK_0,
                                                         router_wrap_IACK_1,
                                                         router_wrap_IACK_2,
                                                         router_wrap_IACK_3,
                                                         router_wrap_IACK_4,
                                                         router_wrap_ILCK_0,
                                                         router_wrap_ILCK_1,
                                                         router_wrap_ILCK_2,
                                                         router_wrap_ILCK_3,
                                                         router_wrap_ILCK_4,
                                                         router_wrap_ODATA_0,
                                                         router_wrap_ODATA_1,
                                                         router_wrap_ODATA_2,
                                                         router_wrap_ODATA_3,
                                                         router_wrap_ODATA_4,
                                                         router_wrap_OVALID_0,
                                                         router_wrap_OVALID_1,
                                                         router_wrap_OVALID_2,
                                                         router_wrap_OVALID_3,
                                                         router_wrap_OVALID_4,
                                                         router_wrap_OVCH_0,
                                                         router_wrap_OVCH_1,
                                                         router_wrap_OVCH_2,
                                                         router_wrap_OVCH_3,
                                                         router_wrap_OVCH_4,
                                                         router_wrap_OACK_0,
                                                         router_wrap_OACK_1,
                                                         router_wrap_OACK_2,
                                                         router_wrap_OACK_3,
                                                         router_wrap_OACK_4,
                                                         router_wrap_ORDY_0,
                                                         router_wrap_ORDY_1,
                                                         router_wrap_ORDY_2,
                                                         router_wrap_ORDY_3,
                                                         router_wrap_ORDY_4,
                                                         router_wrap_OLCK_0,
                                                         router_wrap_OLCK_1,
                                                         router_wrap_OLCK_2,
                                                         router_wrap_OLCK_3,
                                                         router_wrap_OLCK_4,
                                                         router_wrap_clk);
//----- GLOBAL PORTS -----
input [0:0] clk;
//----- INPUT PORTS -----
input [0:0] router_wrap_RST_;
//----- INPUT PORTS -----
input [0:1] router_wrap_MY_XPOS;
//----- INPUT PORTS -----
input [0:1] router_wrap_MY_YPOS;
//----- INPUT PORTS -----
input [0:34] router_wrap_IDATA_0;
//----- INPUT PORTS -----
input [0:34] router_wrap_IDATA_1;
//----- INPUT PORTS -----
input [0:34] router_wrap_IDATA_2;
//----- INPUT PORTS -----
input [0:34] router_wrap_IDATA_3;
//----- INPUT PORTS -----
input [0:34] router_wrap_IDATA_4;
//----- INPUT PORTS -----
input [0:0] router_wrap_IVALID_0;
//----- INPUT PORTS -----
input [0:0] router_wrap_IVALID_1;
//----- INPUT PORTS -----
input [0:0] router_wrap_IVALID_2;
//----- INPUT PORTS -----
input [0:0] router_wrap_IVALID_3;
//----- INPUT PORTS -----
input [0:0] router_wrap_IVALID_4;
//----- INPUT PORTS -----
input [0:0] router_wrap_IVCH_0;
//----- INPUT PORTS -----
input [0:0] router_wrap_IVCH_1;
//----- INPUT PORTS -----
input [0:0] router_wrap_IVCH_2;
//----- INPUT PORTS -----
input [0:0] router_wrap_IVCH_3;
//----- INPUT PORTS -----
input [0:0] router_wrap_IVCH_4;
//----- INPUT PORTS -----
input [0:1] router_wrap_IACK_0;
//----- INPUT PORTS -----
input [0:1] router_wrap_IACK_1;
//----- INPUT PORTS -----
input [0:1] router_wrap_IACK_2;
//----- INPUT PORTS -----
input [0:1] router_wrap_IACK_3;
//----- INPUT PORTS -----
input [0:1] router_wrap_IACK_4;
//----- INPUT PORTS -----
input [0:1] router_wrap_ILCK_0;
//----- INPUT PORTS -----
input [0:1] router_wrap_ILCK_1;
//----- INPUT PORTS -----
input [0:1] router_wrap_ILCK_2;
//----- INPUT PORTS -----
input [0:1] router_wrap_ILCK_3;
//----- INPUT PORTS -----
input [0:1] router_wrap_ILCK_4;
//----- OUTPUT PORTS -----
output [0:34] router_wrap_ODATA_0;
//----- OUTPUT PORTS -----
output [0:34] router_wrap_ODATA_1;
//----- OUTPUT PORTS -----
output [0:34] router_wrap_ODATA_2;
//----- OUTPUT PORTS -----
output [0:34] router_wrap_ODATA_3;
//----- OUTPUT PORTS -----
output [0:34] router_wrap_ODATA_4;
//----- OUTPUT PORTS -----
output [0:0] router_wrap_OVALID_0;
//----- OUTPUT PORTS -----
output [0:0] router_wrap_OVALID_1;
//----- OUTPUT PORTS -----
output [0:0] router_wrap_OVALID_2;
//----- OUTPUT PORTS -----
output [0:0] router_wrap_OVALID_3;
//----- OUTPUT PORTS -----
output [0:0] router_wrap_OVALID_4;
//----- OUTPUT PORTS -----
output [0:0] router_wrap_OVCH_0;
//----- OUTPUT PORTS -----
output [0:0] router_wrap_OVCH_1;
//----- OUTPUT PORTS -----
output [0:0] router_wrap_OVCH_2;
//----- OUTPUT PORTS -----
output [0:0] router_wrap_OVCH_3;
//----- OUTPUT PORTS -----
output [0:0] router_wrap_OVCH_4;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_OACK_0;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_OACK_1;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_OACK_2;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_OACK_3;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_OACK_4;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_ORDY_0;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_ORDY_1;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_ORDY_2;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_ORDY_3;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_ORDY_4;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_OLCK_0;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_OLCK_1;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_OLCK_2;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_OLCK_3;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_OLCK_4;
//----- CLOCK PORTS -----
input [0:0] router_wrap_clk;

//----- BEGIN wire-connection ports -----
wire [0:0] router_wrap_RST_;
wire [0:1] router_wrap_MY_XPOS;
wire [0:1] router_wrap_MY_YPOS;
wire [0:34] router_wrap_IDATA_0;
wire [0:34] router_wrap_IDATA_1;
wire [0:34] router_wrap_IDATA_2;
wire [0:34] router_wrap_IDATA_3;
wire [0:34] router_wrap_IDATA_4;
wire [0:0] router_wrap_IVALID_0;
wire [0:0] router_wrap_IVALID_1;
wire [0:0] router_wrap_IVALID_2;
wire [0:0] router_wrap_IVALID_3;
wire [0:0] router_wrap_IVALID_4;
wire [0:0] router_wrap_IVCH_0;
wire [0:0] router_wrap_IVCH_1;
wire [0:0] router_wrap_IVCH_2;
wire [0:0] router_wrap_IVCH_3;
wire [0:0] router_wrap_IVCH_4;
wire [0:1] router_wrap_IACK_0;
wire [0:1] router_wrap_IACK_1;
wire [0:1] router_wrap_IACK_2;
wire [0:1] router_wrap_IACK_3;
wire [0:1] router_wrap_IACK_4;
wire [0:1] router_wrap_ILCK_0;
wire [0:1] router_wrap_ILCK_1;
wire [0:1] router_wrap_ILCK_2;
wire [0:1] router_wrap_ILCK_3;
wire [0:1] router_wrap_ILCK_4;
wire [0:34] router_wrap_ODATA_0;
wire [0:34] router_wrap_ODATA_1;
wire [0:34] router_wrap_ODATA_2;
wire [0:34] router_wrap_ODATA_3;
wire [0:34] router_wrap_ODATA_4;
wire [0:0] router_wrap_OVALID_0;
wire [0:0] router_wrap_OVALID_1;
wire [0:0] router_wrap_OVALID_2;
wire [0:0] router_wrap_OVALID_3;
wire [0:0] router_wrap_OVALID_4;
wire [0:0] router_wrap_OVCH_0;
wire [0:0] router_wrap_OVCH_1;
wire [0:0] router_wrap_OVCH_2;
wire [0:0] router_wrap_OVCH_3;
wire [0:0] router_wrap_OVCH_4;
wire [0:1] router_wrap_OACK_0;
wire [0:1] router_wrap_OACK_1;
wire [0:1] router_wrap_OACK_2;
wire [0:1] router_wrap_OACK_3;
wire [0:1] router_wrap_OACK_4;
wire [0:1] router_wrap_ORDY_0;
wire [0:1] router_wrap_ORDY_1;
wire [0:1] router_wrap_ORDY_2;
wire [0:1] router_wrap_ORDY_3;
wire [0:1] router_wrap_ORDY_4;
wire [0:1] router_wrap_OLCK_0;
wire [0:1] router_wrap_OLCK_1;
wire [0:1] router_wrap_OLCK_2;
wire [0:1] router_wrap_OLCK_3;
wire [0:1] router_wrap_OLCK_4;
wire [0:0] router_wrap_clk;
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----



// ----- BEGIN Local short connections -----
// ----- END Local short connections -----
// ----- BEGIN Local output short connections -----
// ----- END Local output short connections -----

	router_wrap router_wrap_0_ (
		.clk(clk),
		.RST_(router_wrap_RST_),
		.MY_XPOS(router_wrap_MY_XPOS[0:1]),
		.MY_YPOS(router_wrap_MY_YPOS[0:1]),
		.IDATA_0(router_wrap_IDATA_0[0:34]),
		.IDATA_1(router_wrap_IDATA_1[0:34]),
		.IDATA_2(router_wrap_IDATA_2[0:34]),
		.IDATA_3(router_wrap_IDATA_3[0:34]),
		.IDATA_4(router_wrap_IDATA_4[0:34]),
		.IVALID_0(router_wrap_IVALID_0),
		.IVALID_1(router_wrap_IVALID_1),
		.IVALID_2(router_wrap_IVALID_2),
		.IVALID_3(router_wrap_IVALID_3),
		.IVALID_4(router_wrap_IVALID_4),
		.IVCH_0(router_wrap_IVCH_0),
		.IVCH_1(router_wrap_IVCH_1),
		.IVCH_2(router_wrap_IVCH_2),
		.IVCH_3(router_wrap_IVCH_3),
		.IVCH_4(router_wrap_IVCH_4),
		.IACK_0(router_wrap_IACK_0[0:1]),
		.IACK_1(router_wrap_IACK_1[0:1]),
		.IACK_2(router_wrap_IACK_2[0:1]),
		.IACK_3(router_wrap_IACK_3[0:1]),
		.IACK_4(router_wrap_IACK_4[0:1]),
		.ILCK_0(router_wrap_ILCK_0[0:1]),
		.ILCK_1(router_wrap_ILCK_1[0:1]),
		.ILCK_2(router_wrap_ILCK_2[0:1]),
		.ILCK_3(router_wrap_ILCK_3[0:1]),
		.ILCK_4(router_wrap_ILCK_4[0:1]),
		.ODATA_0(router_wrap_ODATA_0[0:34]),
		.ODATA_1(router_wrap_ODATA_1[0:34]),
		.ODATA_2(router_wrap_ODATA_2[0:34]),
		.ODATA_3(router_wrap_ODATA_3[0:34]),
		.ODATA_4(router_wrap_ODATA_4[0:34]),
		.OVALID_0(router_wrap_OVALID_0),
		.OVALID_1(router_wrap_OVALID_1),
		.OVALID_2(router_wrap_OVALID_2),
		.OVALID_3(router_wrap_OVALID_3),
		.OVALID_4(router_wrap_OVALID_4),
		.OVCH_0(router_wrap_OVCH_0),
		.OVCH_1(router_wrap_OVCH_1),
		.OVCH_2(router_wrap_OVCH_2),
		.OVCH_3(router_wrap_OVCH_3),
		.OVCH_4(router_wrap_OVCH_4),
		.OACK_0(router_wrap_OACK_0[0:1]),
		.OACK_1(router_wrap_OACK_1[0:1]),
		.OACK_2(router_wrap_OACK_2[0:1]),
		.OACK_3(router_wrap_OACK_3[0:1]),
		.OACK_4(router_wrap_OACK_4[0:1]),
		.ORDY_0(router_wrap_ORDY_0[0:1]),
		.ORDY_1(router_wrap_ORDY_1[0:1]),
		.ORDY_2(router_wrap_ORDY_2[0:1]),
		.ORDY_3(router_wrap_ORDY_3[0:1]),
		.ORDY_4(router_wrap_ORDY_4[0:1]),
		.OLCK_0(router_wrap_OLCK_0[0:1]),
		.OLCK_1(router_wrap_OLCK_1[0:1]),
		.OLCK_2(router_wrap_OLCK_2[0:1]),
		.OLCK_3(router_wrap_OLCK_3[0:1]),
		.OLCK_4(router_wrap_OLCK_4[0:1]));

endmodule
// ----- END Verilog module for logical_tile_router_mode_router_wrap__router_wrap -----

//----- Default net type -----
`default_nettype wire



