(* whitebox *)
module router(

input   [34:0] idata_0,
input              ivalid_0, 
input      ivch_0,   
output reg   [1:0]   oack_0 ,   
output reg   [1:0]   ordy_0 ,   
output reg   [1:0]   olck_0 ,   
input   [34:0] idata_1 ,
input              ivalid_1 ,
input      ivch_1 ,
output reg   [1:0]   oack_1 ,
output reg   [1:0]   ordy_1 ,
output reg   [1:0]   olck_1 ,
input   [34:0] idata_2 ,
input              ivalid_2 , 
input      ivch_2 ,
output reg   [1:0]   oack_2 ,  
output reg   [1:0]   ordy_2 ,  
output reg   [1:0]   olck_2 ,  
input   [34:0] idata_3 ,  
input              ivalid_3 , 
input      ivch_3 ,   
output reg   [1:0]   oack_3 ,   
output reg   [1:0]   ordy_3 ,   
output reg   [1:0]   olck_3 ,   
input   [34:0] idata_4 ,  
input              ivalid_4 , 
input      ivch_4 ,   
output reg   [1:0]   oack_4 ,   
output reg   [1:0]   ordy_4 ,   
output reg   [1:0]   olck_4 ,   
output reg   [34:0] odata_0 , 
output reg            ovalid_0 ,
output reg      ovch_0 ,   
input   [1:0]   iack_0 , 
input   [1:0]   ilck_0 ,
output reg   [34:0] odata_1 ,
output reg              ovalid_1 , 
output reg      ovch_1 ,
input   [1:0]   iack_1 ,   
input   [1:0]   ilck_1 ,   
output reg   [34:0] odata_2 ,
output reg              ovalid_2 ,
output reg      ovch_2 ,
input   [1:0]   iack_2 ,
input   [1:0]   ilck_2 ,
output reg   [34:0] odata_3 ,
output reg              ovalid_3 , 
output reg      ovch_3 ,   
input   [1:0]   iack_3 ,   
input   [1:0]   ilck_3 ,   
output reg   [34:0] odata_4 , 
output reg              ovalid_4 , 
output reg      ovch_4 ,   
input   [1:0]   iack_4 ,   
input   [1:0]   ilck_4 ,   
input [1:0]  my_xpos ,
input [1:0]  my_ypos ,

input    clk ,
input    rst_    );



always @(posedge clk ) begin
    odata_0 <=  idata_0  ;
    ovalid_0 <=  ivalid_0 ;
    ovch_0 <=  ivch_0 ;

    odata_1 <=  idata_1 ;
    ovalid_1 <=  ivalid_1 ;
    ovch_1 <=  ivch_1 ;

    odata_2 <=  idata_2 ;
    ovalid_2 <=  ivalid_2 ;
    ovch_2 <=  ivch_2 ;

    odata_3 <=  idata_3 ;
    ovalid_3 <=  ivalid_3 ;
    ovch_3 <=  ivch_3 ;

    odata_4 <=  idata_4 ;
    ovalid_4 <=  ivalid_4 ;
    ovch_4 <=  ivch_4 ;

    oack_0 <= iack_0 ;
    ordy_0 <= ilck_0 ;
    olck_0 <= ilck_0 ;

    oack_1 <= iack_1 ;
    ordy_1 <= ilck_1 ;
    olck_1 <= ilck_1 ;

    oack_2 <= iack_2 ;
    ordy_2 <= my_ypos ;
    olck_2 <= ilck_2 ;

    oack_3 <= iack_3 ;
    ordy_3 <= my_xpos ;
    olck_3 <= ilck_3 ;

    oack_4 <= iack_4 ;
    ordy_4 <= {1'b0, rst_} ;
    olck_4 <= ilck_4 ;
end
endmodule

 


