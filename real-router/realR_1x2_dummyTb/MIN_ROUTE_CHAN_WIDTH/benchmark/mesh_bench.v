

module mesh_bench( 

input [34:0] i_data_0 ,
input        i_valid_0 ,
input        i_vch_0 ,
input [1:0] i_ack_0,
input [1:0] i_lck_0,

output [34:0] o_data_0 ,
output        o_valid_0 ,
output        o_vch_0 ,


output [1:0] o_ack_0 ,
output [1:0] o_lck_0 ,
output [1:0] o_rdy_0 ,


input [34:0] i_data_1 ,
input        i_valid_1 ,
input        i_vch_1 ,
input [1:0] i_ack_1,
input [1:0] i_lck_1,

output [34:0] o_data_1 ,
output        o_valid_1 ,
output        o_vch_1 ,
output [1:0] o_ack_1 ,
output [1:0] o_lck_1 ,
output [1:0] o_rdy_1 ,

input clk ,
input rst_ 

);

    wire   [34:0] idata_1_rtr0;  
    wire          ivalid_1_rtr0; 
    wire          ivch_1_rtr0;   
    wire  [1:0]   oack_1_rtr0;   
    wire  [1:0]   ordy_1_rtr0;   
    wire  [1:0]   olck_1_rtr0;   
    wire  [34:0]  idata_4_rtr0;  
    wire          ivalid_4_rtr0; 
    wire          ivch_4_rtr0;   
    wire  [1:0]   oack_4_rtr0;   
    wire  [1:0]   ordy_4_rtr0;   
    wire  [1:0]   olck_4_rtr0;   
    wire  [34:0]  odata_1_rtr0;
    wire          ovalid_1_rtr0; 
    wire          ovch_1_rtr0;   
    wire   [1:0]  iack_1_rtr0;   
    wire   [1:0]   ilck_1_rtr0;   
    wire  [34:0]  odata_4_rtr0; 
    wire          ovalid_4_rtr0; 
    wire          ovch_4_rtr0;   
    wire   [1:0]   iack_4_rtr0;   
    wire   [1:0]   ilck_4_rtr0; 


    wire   [34:0] idata_3_rtr1;  
    wire          ivalid_3_rtr1; 
    wire          ivch_3_rtr1;   
    wire  [1:0]   oack_3_rtr1;   
    wire  [1:0]   ordy_3_rtr1;   
    wire  [1:0]   olck_3_rtr1;   
    wire  [34:0]  idata_4_rtr1;  
    wire          ivalid_4_rtr1; 
    wire          ivch_4_rtr1;   
    wire  [1:0]   oack_4_rtr1;   
    wire  [1:0]   ordy_4_rtr1;   
    wire  [1:0]   olck_4_rtr1;   

    wire  [34:0]  odata_3_rtr1;
    wire          ovalid_3_rtr1; 
    wire          ovch_3_rtr1;   
    wire   [1:0]  iack_3_rtr1;   
    wire   [1:0]   ilck_3_rtr1;   
    wire  [34:0]  odata_4_rtr1; 
    wire          ovalid_4_rtr1; 
    wire          ovch_4_rtr1;   
    wire   [1:0]   iack_4_rtr1;   
    wire   [1:0]   ilck_4_rtr1; 



router rtr0 (
// .OACK_0(),
// .ORDY_0(),
// .OLCK_0(),
.OACK_1(oack_1_rtr0),
.ORDY_1(ordy_1_rtr0),
.OLCK_1(olck_1_rtr0),
// .OACK_2(oack_2_rtr0),
// .ORDY_2(ordy_2_rtr0),
// .OLCK_2(olck_2_rtr0),
// .OACK_3(oack_3_rtr0),
// .ORDY_3(ordy_3_rtr0),
// .OLCK_3(olck_3_rtr0),
.OACK_4(oack_4_rtr0),
.ORDY_4(ordy_4_rtr0),
.OLCK_4(olck_4_rtr0),
// .ODATA_0(odata_0_rtr0),
// .OVALID_0(ovalid_0_rtr0),
// .OVCH_0(ovch_0_rtr0),
.ODATA_1(odata_1_rtr0),
.OVALID_1(ovalid_1_rtr0),
.OVCH_1(ovch_1_rtr0),
// .ODATA_2(odata_2_rtr0),
// .OVALID_2(ovalid_2_rtr0),
// .OVCH_2(ovch_2_rtr0),
// .ODATA_3(odata_3_rtr0),
// .OVALID_3(ovalid_3_rtr0),
// .OVCH_3(ovch_3_rtr0),
.ODATA_4(odata_4_rtr0),
.OVALID_4(ovalid_4_rtr0),
.OVCH_4(ovch_4_rtr0),
.IDATA_0(35'b0),
.IVALID_0(1'b0),
.IVCH_0(1'b0),
.IDATA_1(idata_1_rtr0),
.IVALID_1(ivalid_1_rtr0),
.IVCH_1(ivch_1_rtr0),
.IDATA_2(35'b0),
.IVALID_2(1'b0),
.IVCH_2(1'b0),
.IDATA_3(35'b0),
.IVALID_3(1'b0),
.IVCH_3(1'b0),
.IDATA_4(idata_4_rtr0),
.IVALID_4(ivalid_4_rtr0),
.IVCH_4(ivch_4_rtr0),
.IACK_0(2'b0),
.ILCK_0(2'b0),
.IACK_1(iack_1_rtr0),
.ILCK_1(ilck_1_rtr0),
.IACK_2(2'b0),
.ILCK_2(2'b0),
.IACK_3(2'b0),
.ILCK_3(2'b0),
.IACK_4(iack_4_rtr0),
.ILCK_4(ilck_4_rtr0),
.MY_XPOS(2'b00),
.MY_YPOS(2'b01),
.clk(clk),
.RST_(rst_)
)  ;


router rtr1 (
// .OACK_0(),
// .ORDY_0(),
// .OLCK_0(),
// .OACK_1(oack_1_rtr0),
// .ORDY_1(ordy_1_rtr0),
// .OLCK_1(olck_1_rtr0),
// .OACK_2(oack_2_rtr0),
// .ORDY_2(ordy_2_rtr0),
// .OLCK_2(olck_2_rtr0),
.OACK_3(oack_3_rtr1),
.ORDY_3(ordy_3_rtr1),
.OLCK_3(olck_3_rtr1),
.OACK_4(oack_4_rtr1),
.ORDY_4(ordy_4_rtr1),
.OLCK_4(olck_4_rtr1),
// .ODATA_0(odata_0_rtr0),
// .OVALID_0(ovalid_0_rtr0),
// .OVCH_0(ovch_0_rtr0),
// .ODATA_1(odata_1_rtr0),
// .OVALID_1(ovalid_1_rtr0),
// .OVCH_1(ovch_1_rtr0),
// .ODATA_2(odata_2_rtr0),
// .OVALID_2(ovalid_2_rtr0),
// .OVCH_2(ovch_2_rtr0),
.ODATA_3(odata_3_rtr1),
.OVALID_3(ovalid_3_rtr1),
.OVCH_3(ovch_3_rtr1),
.ODATA_4(odata_4_rtr1),
.OVALID_4(ovalid_4_rtr1),
.OVCH_4(ovch_4_rtr1),
.IDATA_0(35'b0),
.IVALID_0(1'b0),
.IVCH_0(1'b0),
.IDATA_1(35'b0),
.IVALID_1(1'b0),
.IVCH_1(1'b0),
.IDATA_2(35'b0),
.IVALID_2(1'b0),
.IVCH_2(1'b0),
.IDATA_3(idata_3_rtr1),
.IVALID_3(ivalid_3_rtr1),
.IVCH_3(ivch_3_rtr1),
.IDATA_4(idata_4_rtr1),
.IVALID_4(ivalid_4_rtr1),
.IVCH_4(ivch_4_rtr1),
.IACK_0(2'b0),
.ILCK_0(2'b0),
.IACK_1(2'b0),
.ILCK_1(2'b0),
.IACK_2(2'b0),
.ILCK_2(2'b0),
.IACK_3(iack_3_rtr1),
.ILCK_3(ilck_3_rtr1),
.IACK_4(iack_4_rtr1),
.ILCK_4(ilck_4_rtr1),
.MY_XPOS(2'b00),
.MY_YPOS(2'b01),
.clk(clk),
.RST_(rst_)
);

// connecting p1 of router 0 to p3 of router 1
assign idata_1_rtr0 = odata_3_rtr1 ;
assign ivalid_1_rtr0 = ovalid_3_rtr1 ;
assign ivch_1_rtr0 = ovch_3_rtr1 ;
assign iack_1_rtr0 = oack_3_rtr1 ;
assign ilck_1_rtr0 = olck_3_rtr1 ;

assign idata_3_rtr1 = odata_1_rtr0 ;
assign ivalid_3_rtr1 = ovalid_1_rtr0 ;
assign ivch_3_rtr1 = ovch_1_rtr0 ;
assign iack_3_rtr1 = oack_1_rtr0 ;
assign ilck_3_rtr1 = ilck_1_rtr0 ;


// Top level in/outs
assign idata_4_rtr0 = i_data_0 ;
assign ivalid_4_rtr0 = i_valid_0 ;
assign ivch_4_rtr0 = i_vch_0 ;
assign iack_4_rtr0 = i_ack_0 ;
assign ilck_4_rtr0 = i_lck_0 ;

assign idata_4_rtr1 = i_data_1 ;
assign ivalid_4_rtr1 = i_valid_1 ;
assign ivch_4_rtr1 = i_vch_1 ;
assign iack_4_rtr1 = i_ack_1 ;
assign ilck_4_rtr1 = i_lck_1 ;

assign o_data_0 = odata_4_rtr0 ;
assign o_valid_0 = ovalid_4_rtr0 ;
assign o_vch_0 = ovch_4_rtr0 ;
assign o_ack_0 = oack_4_rtr0 ;
assign o_lck_0 = olck_4_rtr0 ;
assign o_rdy_0 = ordy_4_rtr0 ;


assign o_data_1 = odata_4_rtr1 ;
assign o_valid_1 = ovalid_4_rtr1 ;
assign o_vch_1 = ovch_4_rtr1 ;
assign o_ack_1 = oack_4_rtr1 ;
assign o_lck_1 = olck_4_rtr1 ;
assign o_rdy_1 = ordy_4_rtr1 ;

endmodule