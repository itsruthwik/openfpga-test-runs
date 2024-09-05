

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

output [35:0] extra_outputs ,

input clk ,
input rst_ 

);

    wire   [34:0] idata_3_rtr0;  
    wire          ivalid_3_rtr0; 
    wire          ivch_3_rtr0;   
    wire  [1:0]   oack_3_rtr0;   
    wire  [1:0]   ordy_3_rtr0;   
    wire  [1:0]   olck_3_rtr0;   
    wire  [34:0]  idata_4_rtr0;  
    wire          ivalid_4_rtr0; 
    wire          ivch_4_rtr0;   
    wire  [1:0]   oack_4_rtr0;   
    wire  [1:0]   ordy_4_rtr0;   
    wire  [1:0]   olck_4_rtr0;   
    wire  [34:0]  odata_3_rtr0;
    wire          ovalid_3_rtr0; 
    wire          ovch_3_rtr0;   
    wire   [1:0]  iack_3_rtr0;   
    wire   [1:0]   ilck_3_rtr0;   
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
// .oack_0(),
// .ordy_0(),
// .olck_0(),
.oack_1(oack_1_rtr0),
.ordy_1(ordy_1_rtr0),
.olck_1(olck_1_rtr0),
// .oack_2(oack_2_rtr0),
// .ordy_2(ordy_2_rtr0),
// .olck_2(olck_2_rtr0),
// .oack_3(oack_3_rtr0),
// .ordy_3(ordy_3_rtr0),
// .olck_3(olck_3_rtr0),
.oack_4(oack_4_rtr0),
.ordy_4(ordy_4_rtr0),
.olck_4(olck_4_rtr0),
// .odata_0(odata_0_rtr0),
// .ovalid_0(ovalid_0_rtr0),
// .ovch_0(ovch_0_rtr0),
.odata_1(odata_1_rtr0),
.ovalid_1(ovalid_1_rtr0),
.ovch_1(ovch_1_rtr0),
// .odata_2(odata_2_rtr0),
// .ovalid_2(ovalid_2_rtr0),
// .ovch_2(ovch_2_rtr0),
// .odata_3(odata_3_rtr0),
// .ovalid_3(ovalid_3_rtr0),
// .ovch_3(ovch_3_rtr0),
.odata_4(odata_4_rtr0),
.ovalid_4(ovalid_4_rtr0),
.ovch_4(ovch_4_rtr0),
.idata_0(35'b0),
.ivalid_0(1'b0),
.ivch_0(1'b0),
.idata_1(idata_1_rtr0),
.ivalid_1(ivalid_1_rtr0),
.ivch_1(ivch_1_rtr0),
.idata_2(34'b0),
.ivalid_2(1'b0),
.ivch_2(1'b0),
.idata_3(35'b0),
.ivalid_3(1'b0),
.ivch_3(1'b0),
.idata_4(idata_4_rtr0),
.ivalid_4(ivalid_4_rtr0),
.ivch_4(ivch_4_rtr0),
.iack_0(2'b0),
.ilck_0(2'b0),
.iack_1(iack_1_rtr0),
.ilck_1(ilck_1_rtr0),
.iack_2(2'b0),
.ilck_2(2'b0),
.iack_3(2'b0),
.ilck_3(2'b0),
.iack_4(iack_4_rtr0),
.ilck_4(ilck_4_rtr0),
.my_xpos(2'b00),
.my_ypos(2'b01),
.clk(clk),
.rst_(rst_)
)  ;


router rtr1 (
// .oack_0(),
// .ordy_0(),
// .olck_0(),
// .oack_1(oack_1_rtr0),
// .ordy_1(ordy_1_rtr0),
// .olck_1(olck_1_rtr0),
// .oack_2(oack_2_rtr0),
// .ordy_2(ordy_2_rtr0),
// .olck_2(olck_2_rtr0),
.oack_3(oack_3_rtr1),
.ordy_3(ordy_3_rtr1),
.olck_3(olck_3_rtr1),
.oack_4(oack_4_rtr1),
.ordy_4(ordy_4_rtr1),
.olck_4(olck_4_rtr1),
// .odata_0(odata_0_rtr0),
// .ovalid_0(ovalid_0_rtr0),
// .ovch_0(ovch_0_rtr0),
// .odata_1(odata_1_rtr0),
// .ovalid_1(ovalid_1_rtr0),
// .ovch_1(ovch_1_rtr0),
// .odata_2(odata_2_rtr0),
// .ovalid_2(ovalid_2_rtr0),
// .ovch_2(ovch_2_rtr0),
.odata_3(odata_3_rtr1),
.ovalid_3(ovalid_3_rtr1),
.ovch_3(ovch_3_rtr1),
.odata_4(odata_4_rtr1),
.ovalid_4(ovalid_4_rtr1),
.ovch_4(ovch_4_rtr1),
.idata_0(35'b0),
.ivalid_0(1'b0),
.ivch_0(1'b0),
.idata_1(34'b0),
.ivalid_1(1'b0),
.ivch_1(1'b0),
.idata_2(34'b0),
.ivalid_2(1'b0),
.ivch_2(1'b0),
.idata_3(idata_3_rtr1),
.ivalid_3(ivalid_3_rtr1),
.ivch_3(ivch_3_rtr1),
.idata_4(idata_4_rtr1),
.ivalid_4(ivalid_4_rtr1),
.ivch_4(ivch_4_rtr1),
.iack_0(2'b0),
.ilck_0(2'b0),
.iack_1(2'b0),
.ilck_1(2'b0),
.iack_2(2'b0),
.ilck_2(2'b0),
.iack_3(iack_3_rtr1),
.ilck_3(ilck_3_rtr1),
.iack_4(iack_4_rtr1),
.ilck_4(ilck_4_rtr1),
.my_xpos(2'b00),
.my_ypos(2'b01),
.clk(clk),
.rst_(rst_)
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


// top level in/outs
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