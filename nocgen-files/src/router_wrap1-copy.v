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


wire   [34:0] rtr_idata_0  ;
wire           rtr_ivalid_0  ; 
wire           rtr_ivch_0  ;   
wire   [1:0]   rtr_oack_0  ;   
wire   [1:0]   rtr_ordy_0  ;   
wire   [1:0]   rtr_olck_0  ;   
wire   [34:0] rtr_idata_1  ;
wire          rtr_ivalid_1  ;
wire           rtr_ivch_1  ;
wire   [1:0]   rtr_oack_1  ;
wire   [1:0]   rtr_ordy_1  ;
wire   [1:0]   rtr_olck_1  ;
wire   [34:0] rtr_idata_2  ;
wire          rtr_ivalid_2  ; 
wire           rtr_ivch_2  ;
wire   [1:0]   rtr_oack_2  ;  
wire   [1:0]   rtr_ordy_2  ;  
wire   [1:0]   rtr_olck_2  ;  
wire   [34:0] rtr_idata_3  ;  
wire            rtr_ivalid_3  ; 
wire            rtr_ivch_3  ;   
wire   [1:0]   rtr_oack_3  ;   
wire   [1:0]   rtr_ordy_3  ;   
wire   [1:0]   rtr_olck_3  ;   
wire   [34:0] rtr_idata_4  ;  
wire            rtr_ivalid_4  ; 
wire           rtr_ivch_4  ;   
wire   [1:0]   rtr_oack_4  ;   
wire   [1:0]   rtr_ordy_4  ;   
wire   [1:0]   rtr_olck_4  ;   
wire   [34:0] rtr_odata_0  ; 
wire          rtr_ovalid_0  ;
wire          rtr_ovch_0  ;   
wire   [1:0]   rtr_iack_0  ; 
wire   [1:0]   rtr_ilck_0  ;
wire   [34:0] rtr_odata_1  ;
wire          rtr_ovalid_1  ; 
wire          rtr_ovch_1  ;
wire   [1:0]   rtr_iack_1  ;   
wire   [1:0]   rtr_ilck_1  ;   
wire   [34:0] rtr_odata_2  ;
wire          rtr_ovalid_2  ;
wire           rtr_ovch_2  ;
wire   [1:0]   rtr_iack_2  ;
wire   [1:0]   rtr_ilck_2  ;
wire   [34:0] rtr_odata_3  ;
wire         rtr_ovalid_3  ; 
wire           rtr_ovch_3  ;   
wire   [1:0]   rtr_iack_3  ;   
wire   [1:0]   rtr_ilck_3  ;   
wire   [34:0] rtr_odata_4  ; 
wire           rtr_ovalid_4  ; 
wire           rtr_ovch_4  ;   
wire   [1:0]   rtr_iack_4  ;   
wire   [1:0]   rtr_ilck_4  ;   
wire [1:0]  rtr_my_xpos  ;
wire [1:0]  rtr_my_ypos  ;

    assign rtr_my_xpos = {my_xpos[0], my_xpos[1]};
    assign rtr_my_ypos = {my_ypos[0], my_ypos[1]};

    assign rtr_idata_0 = {idata_0[0], idata_0[1], idata_0[2], idata_0[3], idata_0[4],  idata_0[5], idata_0[6], idata_0[7], idata_0[8], idata_0[9],  idata_0[10], idata_0[11], idata_0[12], idata_0[13], idata_0[14],  idata_0[15], idata_0[16], idata_0[17], idata_0[18], idata_0[19],  idata_0[20], idata_0[21], idata_0[22], idata_0[23], idata_0[24],  idata_0[25], idata_0[26], idata_0[27], idata_0[28], idata_0[29],  idata_0[30], idata_0[31], idata_0[32], idata_0[33], idata_0[34]};

    assign rtr_ivalid_0  = ivalid_0 ;
    assign rtr_ivch_0  = ivch_0 ;
    
    assign rtr_idata_1 = {idata_1[0], idata_1[1], idata_1[2], idata_1[3], idata_1[4],  idata_1[5], idata_1[6], idata_1[7], idata_1[8], idata_1[9],  idata_1[10], idata_1[11], idata_1[12], idata_1[13], idata_1[14],  idata_1[15], idata_1[16], idata_1[17], idata_1[18], idata_1[19],  idata_1[20], idata_1[21], idata_1[22], idata_1[23], idata_1[24],  idata_1[25], idata_1[26], idata_1[27], idata_1[28], idata_1[29],  idata_1[30], idata_1[31], idata_1[32], idata_1[33], idata_1[34]};

    assign rtr_ivalid_1  = ivalid_1 ;
    assign rtr_ivch_1  = ivch_1 ;

    assign rtr_idata_2 = {idata_2[0], idata_2[1], idata_2[2], idata_2[3], idata_2[4],  idata_2[5], idata_2[6], idata_2[7], idata_2[8], idata_2[9],  idata_2[10], idata_2[11], idata_2[12], idata_2[13], idata_2[14],  idata_2[15], idata_2[16], idata_2[17], idata_2[18], idata_2[19],  idata_2[20], idata_2[21], idata_2[22], idata_2[23], idata_2[24],  idata_2[25], idata_2[26], idata_2[27], idata_2[28], idata_2[29],  idata_2[30], idata_2[31], idata_2[32], idata_2[33], idata_2[34]};

    assign rtr_ivalid_2  = ivalid_2 ;
    assign rtr_ivch_2  = ivch_2 ;
   
    assign rtr_idata_3 = {idata_3[0], idata_3[1], idata_3[2], idata_3[3], idata_3[4],  idata_3[5], idata_3[6], idata_3[7], idata_3[8], idata_3[9],  idata_3[10], idata_3[11], idata_3[12], idata_3[13], idata_3[14],  idata_3[15], idata_3[16], idata_3[17], idata_3[18], idata_3[19],  idata_3[20], idata_3[21], idata_3[22], idata_3[23], idata_3[24],  idata_3[25], idata_3[26], idata_3[27], idata_3[28], idata_3[29],  idata_3[30], idata_3[31], idata_3[32], idata_3[33], idata_3[34]};
   
    assign rtr_ivalid_3  = ivalid_3 ;
    assign rtr_ivch_3  = ivch_3 ;
   
    assign rtr_idata_4 = {idata_4[0], idata_4[1], idata_4[2], idata_4[3], idata_4[4],  idata_4[5], idata_4[6], idata_4[7], idata_4[8], idata_4[9],  idata_4[10], idata_4[11], idata_4[12], idata_4[13], idata_4[14],  idata_4[15], idata_4[16], idata_4[17], idata_4[18], idata_4[19],  idata_4[20], idata_4[21], idata_4[22], idata_4[23], idata_4[24],  idata_4[25], idata_4[26], idata_4[27], idata_4[28], idata_4[29],  idata_4[30], idata_4[31], idata_4[32], idata_4[33], idata_4[34]};

   
    assign rtr_ivalid_4  = ivalid_4 ;
    assign rtr_ivch_4  = ivch_4 ;

    assign rtr_iack_0 = {iack_0[0], iack_0[1]};
    assign rtr_ilck_0 = {ilck_0[0], ilck_0[1]};
    assign rtr_iack_1 = {iack_1[0], iack_1[1]};
    assign rtr_ilck_1 = {ilck_1[0], ilck_1[1]};
    assign rtr_iack_2 = {iack_2[0], iack_2[1]};
    assign rtr_ilck_2 = {ilck_2[0], ilck_2[1]};
    assign rtr_iack_3 = {iack_3[0], iack_3[1]};
    assign rtr_ilck_3 = {ilck_3[0], ilck_3[1]};
    assign rtr_iack_4 = {iack_4[0], iack_4[1]};
    assign rtr_ilck_4 = {ilck_4[0], ilck_4[1]};

    
    assign oack_0 = {rtr_oack_0[0], rtr_oack_0[1]};
    assign ordy_0 = {rtr_ordy_0[0], rtr_ordy_0[1]};
    assign olck_0 = {rtr_olck_0[0], rtr_olck_0[1]};

    assign oack_1 = {rtr_oack_1[0], rtr_oack_1[1]};
    assign ordy_1 = {rtr_ordy_1[0], rtr_ordy_1[1]};
    assign olck_1 = {rtr_olck_1[0], rtr_olck_1[1]};

    assign oack_2 = {rtr_oack_2[0], rtr_oack_2[1]};
    assign ordy_2 = {rtr_ordy_2[0], rtr_ordy_2[1]};
    assign olck_2 = {rtr_olck_2[0], rtr_olck_2[1]};

    assign oack_3 = {rtr_oack_3[0], rtr_oack_3[1]};
    assign ordy_3 = {rtr_ordy_3[0], rtr_ordy_3[1]};
    assign olck_3 = {rtr_olck_3[0], rtr_olck_3[1]};

    assign oack_4 = {rtr_oack_4[0], rtr_oack_4[1]};
    assign ordy_4 = {rtr_ordy_4[0], rtr_ordy_4[1]};
    assign olck_4 = {rtr_olck_4[0], rtr_olck_4[1]};

    assign odata_0 = {rtr_odata_0[34], rtr_odata_0[33], rtr_odata_0[32], rtr_odata_0[31], rtr_odata_0[30],  rtr_odata_0[29], rtr_odata_0[28], rtr_odata_0[27], rtr_odata_0[26], rtr_odata_0[25],  rtr_odata_0[24], rtr_odata_0[23], rtr_odata_0[22], rtr_odata_0[21], rtr_odata_0[20],  rtr_odata_0[19], rtr_odata_0[18], rtr_odata_0[17], rtr_odata_0[16], rtr_odata_0[15],  rtr_odata_0[14], rtr_odata_0[13], rtr_odata_0[12], rtr_odata_0[11], rtr_odata_0[10],  rtr_odata_0[9], rtr_odata_0[8], rtr_odata_0[7], rtr_odata_0[6], rtr_odata_0[5],  rtr_odata_0[4], rtr_odata_0[3], rtr_odata_0[2], rtr_odata_0[1], rtr_odata_0[0]};

    assign ovalid_0   =  rtr_ovalid_0  ;
    assign ovch_0   =  rtr_ovch_0  ;
    
    assign odata_1 = {rtr_odata_1[34], rtr_odata_1[33], rtr_odata_1[32], rtr_odata_1[31], rtr_odata_1[30],  rtr_odata_1[29], rtr_odata_1[28], rtr_odata_1[27], rtr_odata_1[26], rtr_odata_1[25],  rtr_odata_1[24], rtr_odata_1[23], rtr_odata_1[22], rtr_odata_1[21], rtr_odata_1[20],  rtr_odata_1[19], rtr_odata_1[18], rtr_odata_1[17], rtr_odata_1[16], rtr_odata_1[15],  rtr_odata_1[14], rtr_odata_1[13], rtr_odata_1[12], rtr_odata_1[11], rtr_odata_1[10],  rtr_odata_1[9], rtr_odata_1[8], rtr_odata_1[7], rtr_odata_1[6], rtr_odata_1[5],  rtr_odata_1[4], rtr_odata_1[3], rtr_odata_1[2], rtr_odata_1[1], rtr_odata_1[0]};
    
    assign ovalid_1   =  rtr_ovalid_1  ;
    assign ovch_1   =  rtr_ovch_1  ;
    
    assign odata_2 = {rtr_odata_2[34], rtr_odata_2[33], rtr_odata_2[32], rtr_odata_2[31], rtr_odata_2[30],  rtr_odata_2[29], rtr_odata_2[28], rtr_odata_2[27], rtr_odata_2[26], rtr_odata_2[25],  rtr_odata_2[24], rtr_odata_2[23], rtr_odata_2[22], rtr_odata_2[21], rtr_odata_2[20],  rtr_odata_2[19], rtr_odata_2[18], rtr_odata_2[17], rtr_odata_2[16], rtr_odata_2[15],  rtr_odata_2[14], rtr_odata_2[13], rtr_odata_2[12], rtr_odata_2[11], rtr_odata_2[10],  rtr_odata_2[9], rtr_odata_2[8], rtr_odata_2[7], rtr_odata_2[6], rtr_odata_2[5],  rtr_odata_2[4], rtr_odata_2[3], rtr_odata_2[2], rtr_odata_2[1], rtr_odata_2[0]};

    assign ovalid_2   =  rtr_ovalid_2  ;
    assign ovch_2   =  rtr_ovch_2  ;
    
    assign odata_3 = {rtr_odata_3[34], rtr_odata_3[33], rtr_odata_3[32], rtr_odata_3[31], rtr_odata_3[30],  rtr_odata_3[29], rtr_odata_3[28], rtr_odata_3[27], rtr_odata_3[26], rtr_odata_3[25],  rtr_odata_3[24], rtr_odata_3[23], rtr_odata_3[22], rtr_odata_3[21], rtr_odata_3[20],  rtr_odata_3[19], rtr_odata_3[18], rtr_odata_3[17], rtr_odata_3[16], rtr_odata_3[15],  rtr_odata_3[14], rtr_odata_3[13], rtr_odata_3[12], rtr_odata_3[11], rtr_odata_3[10],  rtr_odata_3[9], rtr_odata_3[8], rtr_odata_3[7], rtr_odata_3[6], rtr_odata_3[5],  rtr_odata_3[4], rtr_odata_3[3], rtr_odata_3[2], rtr_odata_3[1], rtr_odata_3[0]};

    assign ovalid_3   =  rtr_ovalid_3  ;
    assign ovch_3   =  rtr_ovch_3  ;
    
    assign odata_4 = {rtr_odata_4[34], rtr_odata_4[33], rtr_odata_4[32], rtr_odata_4[31], rtr_odata_4[30],  rtr_odata_4[29], rtr_odata_4[28], rtr_odata_4[27], rtr_odata_4[26], rtr_odata_4[25],  rtr_odata_4[24], rtr_odata_4[23], rtr_odata_4[22], rtr_odata_4[21], rtr_odata_4[20],  rtr_odata_4[19], rtr_odata_4[18], rtr_odata_4[17], rtr_odata_4[16], rtr_odata_4[15],  rtr_odata_4[14], rtr_odata_4[13], rtr_odata_4[12], rtr_odata_4[11], rtr_odata_4[10],  rtr_odata_4[9], rtr_odata_4[8], rtr_odata_4[7], rtr_odata_4[6], rtr_odata_4[5],  rtr_odata_4[4], rtr_odata_4[3], rtr_odata_4[2], rtr_odata_4[1], rtr_odata_4[0]};

    assign ovalid_4   =  rtr_ovalid_4  ;
    assign ovch_4   =  rtr_ovch_4  ;


router rtr_wrap ( 
        .idata_0(rtr_idata_0),  
        .ivalid_0(rtr_ivalid_0), 
        .ivch_0(rtr_ivch_0),   
        .oack_0(rtr_oack_0),   
        .ordy_0(rtr_ordy_0),   
        .olck_0(rtr_olck_0),   
        .idata_1(rtr_idata_1),  
        .ivalid_1(rtr_ivalid_1), 
        .ivch_1(rtr_ivch_1),   
        .oack_1(rtr_oack_1),   
        .ordy_1(rtr_ordy_1),   
        .olck_1(rtr_olck_1),   
        .idata_2(rtr_idata_2),  
        .ivalid_2(rtr_ivalid_2), 
        .ivch_2(rtr_ivch_2),   
        .oack_2(rtr_oack_2),   
        .ordy_2(rtr_ordy_2),   
        .olck_2(rtr_olck_2),   
        .idata_3(rtr_idata_3),  
        .ivalid_3(rtr_ivalid_3), 
        .ivch_3(rtr_ivch_3),   
        .oack_3(rtr_oack_3),   
        .ordy_3(rtr_ordy_3),   
        .olck_3(rtr_olck_3),   
        .idata_4(rtr_idata_4),  
        .ivalid_4(rtr_ivalid_4), 
        .ivch_4(rtr_ivch_4),   
        .oack_4(rtr_oack_4),   
        .ordy_4(rtr_ordy_4),   
        .olck_4(rtr_olck_4),   
        .odata_0(rtr_odata_0),  
        .ovalid_0(rtr_ovalid_0), 
        .ovch_0(rtr_ovch_0),   
        .iack_0(rtr_iack_0),   
        .ilck_0(rtr_ilck_0),   
        .odata_1(rtr_odata_1),  
        .ovalid_1(rtr_ovalid_1), 
        .ovch_1(rtr_ovch_1),   
        .iack_1(rtr_iack_1),   
        .ilck_1(rtr_ilck_1),   
        .odata_2(rtr_odata_2),  
        .ovalid_2(rtr_ovalid_2), 
        .ovch_2(rtr_ovch_2),   
        .iack_2(rtr_iack_2),   
        .ilck_2(rtr_ilck_2),   
        .odata_3(rtr_odata_3),  
        .ovalid_3(rtr_ovalid_3), 
        .ovch_3(rtr_ovch_3),   
        .iack_3(rtr_iack_3),   
        .ilck_3(rtr_ilck_3),   
        .odata_4(rtr_odata_4),  
        .ovalid_4(rtr_ovalid_4), 
        .ovch_4(rtr_ovch_4),   
        .iack_4(rtr_iack_4),   
        .ilck_4(rtr_ilck_4),   
        .my_xpos(rtr_my_xpos), 
        .my_ypos(rtr_my_ypos),
 

        .clk(clk), 
        .rst_(rst_) 
);


endmodule