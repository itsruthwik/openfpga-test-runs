//-------------------------------------------
//	FPGA Synthesizable Verilog Netlist
//	Description: Template for user-defined Verilog modules
//	Author: Xifan TANG
//	Organization: University of Utah
//	Date: Wed Sep 25 15:37:36 2024
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
                   rst_,
                   my_xpos,
                   my_ypos,
                   idata_0,
                   idata_1,
                   idata_2,
                   idata_3,
                   idata_4,
                   ivalid_0,
                   ivalid_1,
                   ivalid_2,
                   ivalid_3,
                   ivalid_4,
                   ivch_0,
                   ivch_1,
                   ivch_2,
                   ivch_3,
                   ivch_4,
                   iack_0,
                   iack_1,
                   iack_2,
                   iack_3,
                   iack_4,
                   ilck_0,
                   ilck_1,
                   ilck_2,
                   ilck_3,
                   ilck_4,
                   odata_0,
                   odata_1,
                   odata_2,
                   odata_3,
                   odata_4,
                   ovalid_0,
                   ovalid_1,
                   ovalid_2,
                   ovalid_3,
                   ovalid_4,
                   ovch_0,
                   ovch_1,
                   ovch_2,
                   ovch_3,
                   ovch_4,
                   oack_0,
                   oack_1,
                   oack_2,
                   oack_3,
                   oack_4,
                   ordy_0,
                   ordy_1,
                   ordy_2,
                   ordy_3,
                   ordy_4,
                   olck_0,
                   olck_1,
                   olck_2,
                   olck_3,
                   olck_4);
//----- GLOBAL PORTS -----
input [0:0] clk;
//----- INPUT PORTS -----
input [0:0] rst_;
//----- INPUT PORTS -----
input [0:1] my_xpos;
//----- INPUT PORTS -----
input [0:1] my_ypos;
//----- INPUT PORTS -----
input [0:34] idata_0;
//----- INPUT PORTS -----
input [0:34] idata_1;
//----- INPUT PORTS -----
input [0:34] idata_2;
//----- INPUT PORTS -----
input [0:34] idata_3;
//----- INPUT PORTS -----
input [0:34] idata_4;
//----- INPUT PORTS -----
input [0:0] ivalid_0;
//----- INPUT PORTS -----
input [0:0] ivalid_1;
//----- INPUT PORTS -----
input [0:0] ivalid_2;
//----- INPUT PORTS -----
input [0:0] ivalid_3;
//----- INPUT PORTS -----
input [0:0] ivalid_4;
//----- INPUT PORTS -----
input [0:0] ivch_0;
//----- INPUT PORTS -----
input [0:0] ivch_1;
//----- INPUT PORTS -----
input [0:0] ivch_2;
//----- INPUT PORTS -----
input [0:0] ivch_3;
//----- INPUT PORTS -----
input [0:0] ivch_4;
//----- INPUT PORTS -----
input [0:1] iack_0;
//----- INPUT PORTS -----
input [0:1] iack_1;
//----- INPUT PORTS -----
input [0:1] iack_2;
//----- INPUT PORTS -----
input [0:1] iack_3;
//----- INPUT PORTS -----
input [0:1] iack_4;
//----- INPUT PORTS -----
input [0:1] ilck_0;
//----- INPUT PORTS -----
input [0:1] ilck_1;
//----- INPUT PORTS -----
input [0:1] ilck_2;
//----- INPUT PORTS -----
input [0:1] ilck_3;
//----- INPUT PORTS -----
input [0:1] ilck_4;
//----- OUTPUT PORTS -----
output [0:34] odata_0;
//----- OUTPUT PORTS -----
output [0:34] odata_1;
//----- OUTPUT PORTS -----
output [0:34] odata_2;
//----- OUTPUT PORTS -----
output [0:34] odata_3;
//----- OUTPUT PORTS -----
output [0:34] odata_4;
//----- OUTPUT PORTS -----
output [0:0] ovalid_0;
//----- OUTPUT PORTS -----
output [0:0] ovalid_1;
//----- OUTPUT PORTS -----
output [0:0] ovalid_2;
//----- OUTPUT PORTS -----
output [0:0] ovalid_3;
//----- OUTPUT PORTS -----
output [0:0] ovalid_4;
//----- OUTPUT PORTS -----
output [0:0] ovch_0;
//----- OUTPUT PORTS -----
output [0:0] ovch_1;
//----- OUTPUT PORTS -----
output [0:0] ovch_2;
//----- OUTPUT PORTS -----
output [0:0] ovch_3;
//----- OUTPUT PORTS -----
output [0:0] ovch_4;
//----- OUTPUT PORTS -----
output [0:1] oack_0;
//----- OUTPUT PORTS -----
output [0:1] oack_1;
//----- OUTPUT PORTS -----
output [0:1] oack_2;
//----- OUTPUT PORTS -----
output [0:1] oack_3;
//----- OUTPUT PORTS -----
output [0:1] oack_4;
//----- OUTPUT PORTS -----
output [0:1] ordy_0;
//----- OUTPUT PORTS -----
output [0:1] ordy_1;
//----- OUTPUT PORTS -----
output [0:1] ordy_2;
//----- OUTPUT PORTS -----
output [0:1] ordy_3;
//----- OUTPUT PORTS -----
output [0:1] ordy_4;
//----- OUTPUT PORTS -----
output [0:1] olck_0;
//----- OUTPUT PORTS -----
output [0:1] olck_1;
//----- OUTPUT PORTS -----
output [0:1] olck_2;
//----- OUTPUT PORTS -----
output [0:1] olck_3;
//----- OUTPUT PORTS -----
output [0:1] olck_4;

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


