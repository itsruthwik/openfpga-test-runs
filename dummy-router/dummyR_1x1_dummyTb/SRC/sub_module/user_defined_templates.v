//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Template for user-defined Verilog modules
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Tue Aug  6 12:06:41 2024
//-------------------------------------------
// ----- Template Verilog module for DFFSRQ -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for DFFSRQ -----
module DFFSRQ(SET,
              RST,
              CK,
              D,
              Q);
//----- GLOBAL PORTS -----
input [0:0] SET;
//----- GLOBAL PORTS -----
input [0:0] RST;
//----- GLOBAL PORTS -----
input [0:0] CK;
//----- INPUT PORTS -----
input [0:0] D;
//----- OUTPUT PORTS -----
output [0:0] Q;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Internal logic should start here -----


// ----- Internal logic should end here -----
endmodule
// ----- END Verilog module for DFFSRQ -----

//----- Default net type -----
`default_nettype wire


// ----- Template Verilog module for DFFR -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for DFFR -----
module DFFR(RST,
            CK,
            D,
            Q,
            QN);
//----- GLOBAL PORTS -----
input [0:0] RST;
//----- GLOBAL PORTS -----
input [0:0] CK;
//----- INPUT PORTS -----
input [0:0] D;
//----- OUTPUT PORTS -----
output [0:0] Q;
//----- OUTPUT PORTS -----
output [0:0] QN;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Internal logic should start here -----


// ----- Internal logic should end here -----
endmodule
// ----- END Verilog module for DFFR -----

//----- Default net type -----
`default_nettype wire


// ----- Template Verilog module for GPIO -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for GPIO -----
module GPIO(PAD,
            A,
            DIR,
            Y);
//----- GPIO PORTS -----
inout [0:0] PAD;
//----- INPUT PORTS -----
input [0:0] A;
//----- INPUT PORTS -----
input [0:0] DIR;
//----- OUTPUT PORTS -----
output [0:0] Y;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Internal logic should start here -----


// ----- Internal logic should end here -----
endmodule
// ----- END Verilog module for GPIO -----

//----- Default net type -----
`default_nettype wire


// ----- Template Verilog module for router_wrap -----
//----- Default net type -----
`default_nettype none

// ----- Verilog module for router_wrap -----
module router_wrap(clk,
                   RST_,
                   MY_XPOS,
                   MY_YPOS,
                   IDATA_0,
                   IDATA_1,
                   IDATA_2,
                   IDATA_3,
                   IDATA_4,
                   IVALID_0,
                   IVALID_1,
                   IVALID_2,
                   IVALID_3,
                   IVALID_4,
                   IVCH_0,
                   IVCH_1,
                   IVCH_2,
                   IVCH_3,
                   IVCH_4,
                   IACK_0,
                   IACK_1,
                   IACK_2,
                   IACK_3,
                   IACK_4,
                   ILCK_0,
                   ILCK_1,
                   ILCK_2,
                   ILCK_3,
                   ILCK_4,
                   ODATA_0,
                   ODATA_1,
                   ODATA_2,
                   ODATA_3,
                   ODATA_4,
                   OVALID_0,
                   OVALID_1,
                   OVALID_2,
                   OVALID_3,
                   OVALID_4,
                   OVCH_0,
                   OVCH_1,
                   OVCH_2,
                   OVCH_3,
                   OVCH_4,
                   OACK_0,
                   OACK_1,
                   OACK_2,
                   OACK_3,
                   OACK_4,
                   ORDY_0,
                   ORDY_1,
                   ORDY_2,
                   ORDY_3,
                   ORDY_4,
                   OLCK_0,
                   OLCK_1,
                   OLCK_2,
                   OLCK_3,
                   OLCK_4);
//----- GLOBAL PORTS -----
input [0:0] clk;
//----- INPUT PORTS -----
input [0:0] RST_;
//----- INPUT PORTS -----
input [0:1] MY_XPOS;
//----- INPUT PORTS -----
input [0:1] MY_YPOS;
//----- INPUT PORTS -----
input [0:34] IDATA_0;
//----- INPUT PORTS -----
input [0:34] IDATA_1;
//----- INPUT PORTS -----
input [0:34] IDATA_2;
//----- INPUT PORTS -----
input [0:34] IDATA_3;
//----- INPUT PORTS -----
input [0:34] IDATA_4;
//----- INPUT PORTS -----
input [0:0] IVALID_0;
//----- INPUT PORTS -----
input [0:0] IVALID_1;
//----- INPUT PORTS -----
input [0:0] IVALID_2;
//----- INPUT PORTS -----
input [0:0] IVALID_3;
//----- INPUT PORTS -----
input [0:0] IVALID_4;
//----- INPUT PORTS -----
input [0:0] IVCH_0;
//----- INPUT PORTS -----
input [0:0] IVCH_1;
//----- INPUT PORTS -----
input [0:0] IVCH_2;
//----- INPUT PORTS -----
input [0:0] IVCH_3;
//----- INPUT PORTS -----
input [0:0] IVCH_4;
//----- INPUT PORTS -----
input [0:1] IACK_0;
//----- INPUT PORTS -----
input [0:1] IACK_1;
//----- INPUT PORTS -----
input [0:1] IACK_2;
//----- INPUT PORTS -----
input [0:1] IACK_3;
//----- INPUT PORTS -----
input [0:1] IACK_4;
//----- INPUT PORTS -----
input [0:1] ILCK_0;
//----- INPUT PORTS -----
input [0:1] ILCK_1;
//----- INPUT PORTS -----
input [0:1] ILCK_2;
//----- INPUT PORTS -----
input [0:1] ILCK_3;
//----- INPUT PORTS -----
input [0:1] ILCK_4;
//----- OUTPUT PORTS -----
output [0:34] ODATA_0;
//----- OUTPUT PORTS -----
output [0:34] ODATA_1;
//----- OUTPUT PORTS -----
output [0:34] ODATA_2;
//----- OUTPUT PORTS -----
output [0:34] ODATA_3;
//----- OUTPUT PORTS -----
output [0:34] ODATA_4;
//----- OUTPUT PORTS -----
output [0:0] OVALID_0;
//----- OUTPUT PORTS -----
output [0:0] OVALID_1;
//----- OUTPUT PORTS -----
output [0:0] OVALID_2;
//----- OUTPUT PORTS -----
output [0:0] OVALID_3;
//----- OUTPUT PORTS -----
output [0:0] OVALID_4;
//----- OUTPUT PORTS -----
output [0:0] OVCH_0;
//----- OUTPUT PORTS -----
output [0:0] OVCH_1;
//----- OUTPUT PORTS -----
output [0:0] OVCH_2;
//----- OUTPUT PORTS -----
output [0:0] OVCH_3;
//----- OUTPUT PORTS -----
output [0:0] OVCH_4;
//----- OUTPUT PORTS -----
output [0:1] OACK_0;
//----- OUTPUT PORTS -----
output [0:1] OACK_1;
//----- OUTPUT PORTS -----
output [0:1] OACK_2;
//----- OUTPUT PORTS -----
output [0:1] OACK_3;
//----- OUTPUT PORTS -----
output [0:1] OACK_4;
//----- OUTPUT PORTS -----
output [0:1] ORDY_0;
//----- OUTPUT PORTS -----
output [0:1] ORDY_1;
//----- OUTPUT PORTS -----
output [0:1] ORDY_2;
//----- OUTPUT PORTS -----
output [0:1] ORDY_3;
//----- OUTPUT PORTS -----
output [0:1] ORDY_4;
//----- OUTPUT PORTS -----
output [0:1] OLCK_0;
//----- OUTPUT PORTS -----
output [0:1] OLCK_1;
//----- OUTPUT PORTS -----
output [0:1] OLCK_2;
//----- OUTPUT PORTS -----
output [0:1] OLCK_3;
//----- OUTPUT PORTS -----
output [0:1] OLCK_4;

//----- BEGIN wire-connection ports -----
//----- END wire-connection ports -----


//----- BEGIN Registered ports -----
//----- END Registered ports -----

// ----- Internal logic should start here -----


// ----- Internal logic should end here -----
endmodule
// ----- END Verilog module for router_wrap -----

//----- Default net type -----
`default_nettype wire


