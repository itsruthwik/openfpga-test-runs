//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Verilog modules for primitive pb_type: router_wrap
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Thu Oct 17 11:38:20 2024
//-------------------------------------------
//----- Default net type -----
`default_nettype none

// ----- Verilog module for logical_tile_router_mode_router_wrap__router_wrap -----
module logical_tile_router_mode_router_wrap__router_wrap(clk,
                                                         router_wrap_rst_,
                                                         router_wrap_my_xpos,
                                                         router_wrap_my_ypos,
                                                         router_wrap_idata_0,
                                                         router_wrap_idata_1,
                                                         router_wrap_idata_2,
                                                         router_wrap_idata_3,
                                                         router_wrap_idata_4,
                                                         router_wrap_ivalid_0,
                                                         router_wrap_ivalid_1,
                                                         router_wrap_ivalid_2,
                                                         router_wrap_ivalid_3,
                                                         router_wrap_ivalid_4,
                                                         router_wrap_ivch_0,
                                                         router_wrap_ivch_1,
                                                         router_wrap_ivch_2,
                                                         router_wrap_ivch_3,
                                                         router_wrap_ivch_4,
                                                         router_wrap_iack_0,
                                                         router_wrap_iack_1,
                                                         router_wrap_iack_2,
                                                         router_wrap_iack_3,
                                                         router_wrap_iack_4,
                                                         router_wrap_ilck_0,
                                                         router_wrap_ilck_1,
                                                         router_wrap_ilck_2,
                                                         router_wrap_ilck_3,
                                                         router_wrap_ilck_4,
                                                         router_wrap_odata_0,
                                                         router_wrap_odata_1,
                                                         router_wrap_odata_2,
                                                         router_wrap_odata_3,
                                                         router_wrap_odata_4,
                                                         router_wrap_ovalid_0,
                                                         router_wrap_ovalid_1,
                                                         router_wrap_ovalid_2,
                                                         router_wrap_ovalid_3,
                                                         router_wrap_ovalid_4,
                                                         router_wrap_ovch_0,
                                                         router_wrap_ovch_1,
                                                         router_wrap_ovch_2,
                                                         router_wrap_ovch_3,
                                                         router_wrap_ovch_4,
                                                         router_wrap_oack_0,
                                                         router_wrap_oack_1,
                                                         router_wrap_oack_2,
                                                         router_wrap_oack_3,
                                                         router_wrap_oack_4,
                                                         router_wrap_ordy_0,
                                                         router_wrap_ordy_1,
                                                         router_wrap_ordy_2,
                                                         router_wrap_ordy_3,
                                                         router_wrap_ordy_4,
                                                         router_wrap_olck_0,
                                                         router_wrap_olck_1,
                                                         router_wrap_olck_2,
                                                         router_wrap_olck_3,
                                                         router_wrap_olck_4,
                                                         router_wrap_clk);
//----- GLOBAL PORTS -----
input [0:0] clk;
//----- INPUT PORTS -----
input [0:0] router_wrap_rst_;
//----- INPUT PORTS -----
input [0:1] router_wrap_my_xpos;
//----- INPUT PORTS -----
input [0:1] router_wrap_my_ypos;
//----- INPUT PORTS -----
input [0:34] router_wrap_idata_0;
//----- INPUT PORTS -----
input [0:34] router_wrap_idata_1;
//----- INPUT PORTS -----
input [0:34] router_wrap_idata_2;
//----- INPUT PORTS -----
input [0:34] router_wrap_idata_3;
//----- INPUT PORTS -----
input [0:34] router_wrap_idata_4;
//----- INPUT PORTS -----
input [0:0] router_wrap_ivalid_0;
//----- INPUT PORTS -----
input [0:0] router_wrap_ivalid_1;
//----- INPUT PORTS -----
input [0:0] router_wrap_ivalid_2;
//----- INPUT PORTS -----
input [0:0] router_wrap_ivalid_3;
//----- INPUT PORTS -----
input [0:0] router_wrap_ivalid_4;
//----- INPUT PORTS -----
input [0:0] router_wrap_ivch_0;
//----- INPUT PORTS -----
input [0:0] router_wrap_ivch_1;
//----- INPUT PORTS -----
input [0:0] router_wrap_ivch_2;
//----- INPUT PORTS -----
input [0:0] router_wrap_ivch_3;
//----- INPUT PORTS -----
input [0:0] router_wrap_ivch_4;
//----- INPUT PORTS -----
input [0:1] router_wrap_iack_0;
//----- INPUT PORTS -----
input [0:1] router_wrap_iack_1;
//----- INPUT PORTS -----
input [0:1] router_wrap_iack_2;
//----- INPUT PORTS -----
input [0:1] router_wrap_iack_3;
//----- INPUT PORTS -----
input [0:1] router_wrap_iack_4;
//----- INPUT PORTS -----
input [0:1] router_wrap_ilck_0;
//----- INPUT PORTS -----
input [0:1] router_wrap_ilck_1;
//----- INPUT PORTS -----
input [0:1] router_wrap_ilck_2;
//----- INPUT PORTS -----
input [0:1] router_wrap_ilck_3;
//----- INPUT PORTS -----
input [0:1] router_wrap_ilck_4;
//----- OUTPUT PORTS -----
output [0:34] router_wrap_odata_0;
//----- OUTPUT PORTS -----
output [0:34] router_wrap_odata_1;
//----- OUTPUT PORTS -----
output [0:34] router_wrap_odata_2;
//----- OUTPUT PORTS -----
output [0:34] router_wrap_odata_3;
//----- OUTPUT PORTS -----
output [0:34] router_wrap_odata_4;
//----- OUTPUT PORTS -----
output [0:0] router_wrap_ovalid_0;
//----- OUTPUT PORTS -----
output [0:0] router_wrap_ovalid_1;
//----- OUTPUT PORTS -----
output [0:0] router_wrap_ovalid_2;
//----- OUTPUT PORTS -----
output [0:0] router_wrap_ovalid_3;
//----- OUTPUT PORTS -----
output [0:0] router_wrap_ovalid_4;
//----- OUTPUT PORTS -----
output [0:0] router_wrap_ovch_0;
//----- OUTPUT PORTS -----
output [0:0] router_wrap_ovch_1;
//----- OUTPUT PORTS -----
output [0:0] router_wrap_ovch_2;
//----- OUTPUT PORTS -----
output [0:0] router_wrap_ovch_3;
//----- OUTPUT PORTS -----
output [0:0] router_wrap_ovch_4;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_oack_0;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_oack_1;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_oack_2;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_oack_3;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_oack_4;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_ordy_0;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_ordy_1;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_ordy_2;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_ordy_3;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_ordy_4;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_olck_0;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_olck_1;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_olck_2;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_olck_3;
//----- OUTPUT PORTS -----
output [0:1] router_wrap_olck_4;
//----- CLOCK PORTS -----
input [0:0] router_wrap_clk;

//----- BEGIN wire-connection ports -----
wire [0:0] router_wrap_rst_;
wire [0:1] router_wrap_my_xpos;
wire [0:1] router_wrap_my_ypos;
wire [0:34] router_wrap_idata_0;
wire [0:34] router_wrap_idata_1;
wire [0:34] router_wrap_idata_2;
wire [0:34] router_wrap_idata_3;
wire [0:34] router_wrap_idata_4;
wire [0:0] router_wrap_ivalid_0;
wire [0:0] router_wrap_ivalid_1;
wire [0:0] router_wrap_ivalid_2;
wire [0:0] router_wrap_ivalid_3;
wire [0:0] router_wrap_ivalid_4;
wire [0:0] router_wrap_ivch_0;
wire [0:0] router_wrap_ivch_1;
wire [0:0] router_wrap_ivch_2;
wire [0:0] router_wrap_ivch_3;
wire [0:0] router_wrap_ivch_4;
wire [0:1] router_wrap_iack_0;
wire [0:1] router_wrap_iack_1;
wire [0:1] router_wrap_iack_2;
wire [0:1] router_wrap_iack_3;
wire [0:1] router_wrap_iack_4;
wire [0:1] router_wrap_ilck_0;
wire [0:1] router_wrap_ilck_1;
wire [0:1] router_wrap_ilck_2;
wire [0:1] router_wrap_ilck_3;
wire [0:1] router_wrap_ilck_4;
wire [0:34] router_wrap_odata_0;
wire [0:34] router_wrap_odata_1;
wire [0:34] router_wrap_odata_2;
wire [0:34] router_wrap_odata_3;
wire [0:34] router_wrap_odata_4;
wire [0:0] router_wrap_ovalid_0;
wire [0:0] router_wrap_ovalid_1;
wire [0:0] router_wrap_ovalid_2;
wire [0:0] router_wrap_ovalid_3;
wire [0:0] router_wrap_ovalid_4;
wire [0:0] router_wrap_ovch_0;
wire [0:0] router_wrap_ovch_1;
wire [0:0] router_wrap_ovch_2;
wire [0:0] router_wrap_ovch_3;
wire [0:0] router_wrap_ovch_4;
wire [0:1] router_wrap_oack_0;
wire [0:1] router_wrap_oack_1;
wire [0:1] router_wrap_oack_2;
wire [0:1] router_wrap_oack_3;
wire [0:1] router_wrap_oack_4;
wire [0:1] router_wrap_ordy_0;
wire [0:1] router_wrap_ordy_1;
wire [0:1] router_wrap_ordy_2;
wire [0:1] router_wrap_ordy_3;
wire [0:1] router_wrap_ordy_4;
wire [0:1] router_wrap_olck_0;
wire [0:1] router_wrap_olck_1;
wire [0:1] router_wrap_olck_2;
wire [0:1] router_wrap_olck_3;
wire [0:1] router_wrap_olck_4;
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
		.rst_(router_wrap_rst_),
		.my_xpos(router_wrap_my_xpos[0:1]),
		.my_ypos(router_wrap_my_ypos[0:1]),
		.idata_0(router_wrap_idata_0[0:34]),
		.idata_1(router_wrap_idata_1[0:34]),
		.idata_2(router_wrap_idata_2[0:34]),
		.idata_3(router_wrap_idata_3[0:34]),
		.idata_4(router_wrap_idata_4[0:34]),
		.ivalid_0(router_wrap_ivalid_0),
		.ivalid_1(router_wrap_ivalid_1),
		.ivalid_2(router_wrap_ivalid_2),
		.ivalid_3(router_wrap_ivalid_3),
		.ivalid_4(router_wrap_ivalid_4),
		.ivch_0(router_wrap_ivch_0),
		.ivch_1(router_wrap_ivch_1),
		.ivch_2(router_wrap_ivch_2),
		.ivch_3(router_wrap_ivch_3),
		.ivch_4(router_wrap_ivch_4),
		.iack_0(router_wrap_iack_0[0:1]),
		.iack_1(router_wrap_iack_1[0:1]),
		.iack_2(router_wrap_iack_2[0:1]),
		.iack_3(router_wrap_iack_3[0:1]),
		.iack_4(router_wrap_iack_4[0:1]),
		.ilck_0(router_wrap_ilck_0[0:1]),
		.ilck_1(router_wrap_ilck_1[0:1]),
		.ilck_2(router_wrap_ilck_2[0:1]),
		.ilck_3(router_wrap_ilck_3[0:1]),
		.ilck_4(router_wrap_ilck_4[0:1]),
		.odata_0(router_wrap_odata_0[0:34]),
		.odata_1(router_wrap_odata_1[0:34]),
		.odata_2(router_wrap_odata_2[0:34]),
		.odata_3(router_wrap_odata_3[0:34]),
		.odata_4(router_wrap_odata_4[0:34]),
		.ovalid_0(router_wrap_ovalid_0),
		.ovalid_1(router_wrap_ovalid_1),
		.ovalid_2(router_wrap_ovalid_2),
		.ovalid_3(router_wrap_ovalid_3),
		.ovalid_4(router_wrap_ovalid_4),
		.ovch_0(router_wrap_ovch_0),
		.ovch_1(router_wrap_ovch_1),
		.ovch_2(router_wrap_ovch_2),
		.ovch_3(router_wrap_ovch_3),
		.ovch_4(router_wrap_ovch_4),
		.oack_0(router_wrap_oack_0[0:1]),
		.oack_1(router_wrap_oack_1[0:1]),
		.oack_2(router_wrap_oack_2[0:1]),
		.oack_3(router_wrap_oack_3[0:1]),
		.oack_4(router_wrap_oack_4[0:1]),
		.ordy_0(router_wrap_ordy_0[0:1]),
		.ordy_1(router_wrap_ordy_1[0:1]),
		.ordy_2(router_wrap_ordy_2[0:1]),
		.ordy_3(router_wrap_ordy_3[0:1]),
		.ordy_4(router_wrap_ordy_4[0:1]),
		.olck_0(router_wrap_olck_0[0:1]),
		.olck_1(router_wrap_olck_1[0:1]),
		.olck_2(router_wrap_olck_2[0:1]),
		.olck_3(router_wrap_olck_3[0:1]),
		.olck_4(router_wrap_olck_4[0:1]));

endmodule
// ----- END Verilog module for logical_tile_router_mode_router_wrap__router_wrap -----

//----- Default net type -----
`default_nettype wire



