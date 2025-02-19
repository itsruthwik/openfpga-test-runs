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


router rtr_wrap ( 
        .idata_0({idata_0[34], idata_0[33], idata_0[32], idata_0[31], idata_0[30],  idata_0[29], idata_0[28], idata_0[27], idata_0[26], idata_0[25],  idata_0[24], idata_0[23], idata_0[22], idata_0[21], idata_0[20],  idata_0[19], idata_0[18], idata_0[17], idata_0[16], idata_0[15],  idata_0[14], idata_0[13], idata_0[12], idata_0[11], idata_0[10],  idata_0[9],  idata_0[8],  idata_0[7],  idata_0[6],  idata_0[5],  idata_0[4],  idata_0[3],  idata_0[2],  idata_0[1],  idata_0[0]}),  
        .idata_1({idata_1[34], idata_1[33], idata_1[32], idata_1[31], idata_1[30],  idata_1[29], idata_1[28], idata_1[27], idata_1[26], idata_1[25],  idata_1[24], idata_1[23], idata_1[22], idata_1[21], idata_1[20],  idata_1[19], idata_1[18], idata_1[17], idata_1[16], idata_1[15],  idata_1[14], idata_1[13], idata_1[12], idata_1[11], idata_1[10],  idata_1[9],  idata_1[8],  idata_1[7],  idata_1[6],  idata_1[5],  idata_1[4],  idata_1[3],  idata_1[2],  idata_1[1],  idata_1[0]}),  
        .idata_2({idata_2[34], idata_2[33], idata_2[32], idata_2[31], idata_2[30],  idata_2[29], idata_2[28], idata_2[27], idata_2[26], idata_2[25],  idata_2[24], idata_2[23], idata_2[22], idata_2[21], idata_2[20],  idata_2[19], idata_2[18], idata_2[17], idata_2[16], idata_2[15],  idata_2[14], idata_2[13], idata_2[12], idata_2[11], idata_2[10],  idata_2[9],  idata_2[8],  idata_2[7],  idata_2[6],  idata_2[5],  idata_2[4],  idata_2[3],  idata_2[2],  idata_2[1],  idata_2[0]}),  
        .idata_3({idata_3[34], idata_3[33], idata_3[32], idata_3[31], idata_3[30],  idata_3[29], idata_3[28], idata_3[27], idata_3[26], idata_3[25],  idata_3[24], idata_3[23], idata_3[22], idata_3[21], idata_3[20],  idata_3[19], idata_3[18], idata_3[17], idata_3[16], idata_3[15],  idata_3[14], idata_3[13], idata_3[12], idata_3[11], idata_3[10],  idata_3[9],  idata_3[8],  idata_3[7],  idata_3[6],  idata_3[5],  idata_3[4],  idata_3[3],  idata_3[2],  idata_3[1],  idata_3[0]}),  
        .idata_4({idata_4[34], idata_4[33], idata_4[32], idata_4[31], idata_4[30],  idata_4[29], idata_4[28], idata_4[27], idata_4[26], idata_4[25],  idata_4[24], idata_4[23], idata_4[22], idata_4[21], idata_4[20],  idata_4[19], idata_4[18], idata_4[17], idata_4[16], idata_4[15],  idata_4[14], idata_4[13], idata_4[12], idata_4[11], idata_4[10],  idata_4[9],  idata_4[8],  idata_4[7],  idata_4[6],  idata_4[5],  idata_4[4],  idata_4[3],  idata_4[2],  idata_4[1],  idata_4[0]}),  
        
        .ivalid_0(ivalid_0), 
        .ivalid_1(ivalid_1), 
        .ivalid_2(ivalid_2), 
        .ivalid_3(ivalid_3), 
        .ivalid_4(ivalid_4), 

        .ivch_0(ivch_0),   
        .ivch_1(ivch_1),   
        .ivch_2(ivch_2),   
        .ivch_3(ivch_3),   
        .ivch_4(ivch_4),   

        .iack_0({iack_0[1], iack_0[0]}),   
        .iack_1({iack_1[1], iack_1[0]}),   
        .iack_2({iack_2[1], iack_2[0]}),   
        .iack_3({iack_3[1], iack_3[0]}),   
        .iack_4({iack_4[1], iack_4[0]}),   

        .ilck_0({ilck_0[1], ilck_0[0]}),   
        .ilck_1({ilck_1[1], ilck_1[0]}),   
        .ilck_2({ilck_2[1], ilck_2[0]}),   
        .ilck_3({ilck_3[1], ilck_3[0]}),   
        .ilck_4({ilck_4[1], ilck_4[0]}),
           
        .oack_0({oack_0[1], oack_0[0]}),   
        .oack_1({oack_1[1], oack_1[0]}),   
        .oack_2({oack_2[1], oack_2[0]}),   
        .oack_3({oack_3[1], oack_3[0]}),   
        .oack_4({oack_4[1], oack_4[0]}),   

        .olck_0({olck_0[1], olck_0[0]}),   
        .olck_1({olck_1[1], olck_1[0]}),   
        .olck_2({olck_2[1], olck_2[0]}),   
        .olck_3({olck_3[1], olck_3[0]}),   
        .olck_4({olck_4[1], olck_4[0]}),
  
        .ordy_0({ordy_0[1], ordy_0[0]}),   
        .ordy_1({ordy_1[1], ordy_1[0]}),   
        .ordy_2({ordy_2[1], ordy_2[0]}),   
        .ordy_3({ordy_3[1], ordy_3[0]}),   
        .ordy_4({ordy_4[1], ordy_4[0]}),   

        .odata_0({odata_0[34], odata_0[33], odata_0[32], odata_0[31], odata_0[30],  odata_0[29], odata_0[28], odata_0[27], odata_0[26], odata_0[25],  odata_0[24], odata_0[23], odata_0[22], odata_0[21], odata_0[20],  odata_0[19], odata_0[18], odata_0[17], odata_0[16], odata_0[15],  odata_0[14], odata_0[13], odata_0[12], odata_0[11], odata_0[10],  odata_0[9],  odata_0[8],  odata_0[7],  odata_0[6],  odata_0[5],  odata_0[4],  odata_0[3],  odata_0[2],  odata_0[1],  odata_0[0]}),  
        .odata_1({odata_1[34], odata_1[33], odata_1[32], odata_1[31], odata_1[30],  odata_1[29], odata_1[28], odata_1[27], odata_1[26], odata_1[25],  odata_1[24], odata_1[23], odata_1[22], odata_1[21], odata_1[20],  odata_1[19], odata_1[18], odata_1[17], odata_1[16], odata_1[15],  odata_1[14], odata_1[13], odata_1[12], odata_1[11], odata_1[10],  odata_1[9],  odata_1[8],  odata_1[7],  odata_1[6],  odata_1[5],  odata_1[4],  odata_1[3],  odata_1[2],  odata_1[1],  odata_1[0]}),  
        .odata_2({odata_2[34], odata_2[33], odata_2[32], odata_2[31], odata_2[30],  odata_2[29], odata_2[28], odata_2[27], odata_2[26], odata_2[25],  odata_2[24], odata_2[23], odata_2[22], odata_2[21], odata_2[20],  odata_2[19], odata_2[18], odata_2[17], odata_2[16], odata_2[15],  odata_2[14], odata_2[13], odata_2[12], odata_2[11], odata_2[10],  odata_2[9],  odata_2[8],  odata_2[7],  odata_2[6],  odata_2[5],  odata_2[4],  odata_2[3],  odata_2[2],  odata_2[1],  odata_2[0]}),  
        .odata_3({odata_3[34], odata_3[33], odata_3[32], odata_3[31], odata_3[30],  odata_3[29], odata_3[28], odata_3[27], odata_3[26], odata_3[25],  odata_3[24], odata_3[23], odata_3[22], odata_3[21], odata_3[20],  odata_3[19], odata_3[18], odata_3[17], odata_3[16], odata_3[15],  odata_3[14], odata_3[13], odata_3[12], odata_3[11], odata_3[10],  odata_3[9],  odata_3[8],  odata_3[7],  odata_3[6],  odata_3[5],  odata_3[4],  odata_3[3],  odata_3[2],  odata_3[1],  odata_3[0]}),  
        .odata_4({odata_4[34], odata_4[33], odata_4[32], odata_4[31], odata_4[30],  odata_4[29], odata_4[28], odata_4[27], odata_4[26], odata_4[25],  odata_4[24], odata_4[23], odata_4[22], odata_4[21], odata_4[20],  odata_4[19], odata_4[18], odata_4[17], odata_4[16], odata_4[15],  odata_4[14], odata_4[13], odata_4[12], odata_4[11], odata_4[10],  odata_4[9],  odata_4[8],  odata_4[7],  odata_4[6],  odata_4[5],  odata_4[4],  odata_4[3],  odata_4[2],  odata_4[1],  odata_4[0]}),  

        .ovalid_0(ovalid_0), 
        .ovalid_1(ovalid_1), 
        .ovalid_2(ovalid_2), 
        .ovalid_3(ovalid_3), 
        .ovalid_4(ovalid_4), 

        .ovch_0(ovch_0),   
        .ovch_1(ovch_1),   
        .ovch_2(ovch_2),   
        .ovch_3(ovch_3),   
        .ovch_4(ovch_4),   
   
        .my_xpos({my_xpos[1], my_xpos[0]}), 
        .my_ypos({my_ypos[1], my_ypos[0]}),
 
        .clk(clk), 
        .rst_(rst_) 
);

endmodule