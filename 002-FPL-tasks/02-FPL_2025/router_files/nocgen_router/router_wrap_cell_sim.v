(* whitebox *)
module router_wrap(

input   [0:34] idata_0,
input              ivalid_0, 
input      ivch_0,   
output   [0:1]   oack_0 ,   
output   [0:1]   ordy_0 ,   
output   [0:1]   olck_0 ,   
input   [0:34] idata_1 ,
input              ivalid_1 ,
input      ivch_1 ,
output   [0:1]   oack_1 ,
output   [0:1]   ordy_1 ,
output   [0:1]   olck_1 ,
input   [0:34] idata_2 ,
input              ivalid_2 , 
input      ivch_2 ,
output   [0:1]   oack_2 ,  
output   [0:1]   ordy_2 ,  
output   [0:1]   olck_2 ,  
input   [0:34] idata_3 ,  
input              ivalid_3 , 
input      ivch_3 ,   
output   [0:1]   oack_3 ,   
output   [0:1]   ordy_3 ,   
output   [0:1]   olck_3 ,   
input   [0:34] idata_4 ,  
input              ivalid_4 , 
input      ivch_4 ,   
output   [0:1]   oack_4 ,   
output   [0:1]   ordy_4 ,   
output   [0:1]   olck_4 ,   
output   [0:34] odata_0 , 
output            ovalid_0 ,
output      ovch_0 ,   
input   [0:1]   iack_0 , 
input   [0:1]   ilck_0 ,
output   [0:34] odata_1 ,
output              ovalid_1 , 
output      ovch_1 ,
input   [0:1]   iack_1 ,   
input   [0:1]   ilck_1 ,   
output   [0:34] odata_2 ,
output              ovalid_2 ,
output      ovch_2 ,
input   [0:1]   iack_2 ,
input   [0:1]   ilck_2 ,
output   [0:34] odata_3 ,
output              ovalid_3 , 
output      ovch_3 ,   
input   [0:1]   iack_3 ,   
input   [0:1]   ilck_3 ,   
output   [0:34] odata_4 , 
output              ovalid_4 , 
output      ovch_4 ,   
input   [0:1]   iack_4 ,   
input   [0:1]   ilck_4 ,   
input [0:1]  my_xpos ,
input [0:1]  my_ypos ,

input    clk ,
input    rst_    );

  

reg   [0:1]   oack_0 ,   
reg   [0:1]   ordy_0 ,   
reg   [0:1]   olck_0 ,   
reg   [0:1]   oack_1 ,
reg   [0:1]   ordy_1 ,
reg   [0:1]   olck_1 ,
reg   [0:1]   oack_2 ,  
reg   [0:1]   ordy_2 ,  
reg   [0:1]   olck_2 ,  
reg   [0:1]   oack_3 ,   
reg   [0:1]   ordy_3 ,   
reg   [0:1]   olck_3 ,   
reg   [0:1]   oack_4 ,   
reg   [0:1]   ordy_4 ,   
reg   [0:1]   olck_4 ,   
reg   [0:34] odata_0 , 
reg            ovalid_0 ,
reg      ovch_0 ,   
reg   [0:34] odata_1 ,
reg              ovalid_1 , 
reg      ovch_1 ,
reg   [0:34] odata_2 ,
reg              ovalid_2 ,
reg      ovch_2 ,
reg   [0:34] odata_3 ,
reg              ovalid_3 , 
reg      ovch_3 ,   
reg   [0:34] odata_4 , 
reg              ovalid_4 , 
reg      ovch_4 ,   


always@(posedge clk) begin
        oack_0 <= 0;
        ordy_0 <= 0;
        olck_0 <= 0;
        oack_1 <= 0;
        ordy_1 <= 0;
        olck_1 <= 0;
        oack_2 <= 0;
        ordy_2 <= 0;
        olck_2 <= 0;
        oack_3 <= 0;
        ordy_3 <= 0;
        olck_3 <= 0;
        oack_4 <= 0;
        ordy_4 <= 0;
        olck_4 <= 0;
        odata_0 <= 0;
        ovalid_0 <= 0;
        ovch_0 <= 0;
        odata_1 <= 0;
        ovalid_1 <= 0;
        ovch_1 <= 0;
        odata_2 <= 0;
        ovalid_2 <= 0;
        ovch_2 <= 0;
        odata_3 <= 0;
        ovalid_3 <= 0;
        ovch_3 <= 0;
        odata_4 <= 0;
        ovalid_4 <= 0;
        ovch_4 <= 0;
end


endmodule