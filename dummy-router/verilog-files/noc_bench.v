// `include "/home/rsunketa/OpenFPGA/openfpga-test-runs/nocgen-files/src/define.h"
// `include "/mnt/vault1/rsunketa/openfpga-test-runs/nocgen-files/define.h"
`include "/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/dummy-router/verilog-files/define.h"

module noc ( 
        /* n0 */ 
        n0_idata_p0,  
        n0_ivalid_p0, 
        n0_ivch_p0,   
        n0_ordy_p0,   
        n0_odata_p0,  
        n0_ovalid_p0, 

        /* n1 */ 
        n1_idata_p0,  
        n1_ivalid_p0, 
        n1_ivch_p0,   
        n1_ordy_p0,   
        n1_odata_p0,  
        n1_ovalid_p0, 

        /* n2 */ 
        n2_idata_p0,  
        n2_ivalid_p0, 
        n2_ivch_p0,   
        n2_ordy_p0,   
        n2_odata_p0,  
        n2_ovalid_p0, 

        /* n3 */ 
        n3_idata_p0,  
        n3_ivalid_p0, 
        n3_ivch_p0,   
        n3_ordy_p0,   
        n3_odata_p0,  
        n3_ovalid_p0, 

        /* n4 */ 
        n4_idata_p0,  
        n4_ivalid_p0, 
        n4_ivch_p0,   
        n4_ordy_p0,   
        n4_odata_p0,  
        n4_ovalid_p0, 

        /* n5 */ 
        n5_idata_p0,  
        n5_ivalid_p0, 
        n5_ivch_p0,   
        n5_ordy_p0,   
        n5_odata_p0,  
        n5_ovalid_p0, 

        /* n6 */ 
        n6_idata_p0,  
        n6_ivalid_p0, 
        n6_ivch_p0,   
        n6_ordy_p0,   
        n6_odata_p0,  
        n6_ovalid_p0, 

        /* n7 */ 
        n7_idata_p0,  
        n7_ivalid_p0, 
        n7_ivch_p0,   
        n7_ordy_p0,   
        n7_odata_p0,  
        n7_ovalid_p0, 

        /* n8 */ 
        n8_idata_p0,  
        n8_ivalid_p0, 
        n8_ivch_p0,   
        n8_ordy_p0,   
        n8_odata_p0,  
        n8_ovalid_p0, 

        clk, 
        rst_ ,
        d_a ,
        d_b ,
        d_o

);   

input [1:0] d_a;
input [1:0] d_b;
output [1:0] d_o;

assign d_o = d_a + d_b ;

/* n0 */ 
input   [`DATAW:0]      n0_idata_p0;  
input                   n0_ivalid_p0; 
input   [`VCHW:0]       n0_ivch_p0;   
output  [`VCH:0]        n0_ordy_p0;   
output  [`DATAW:0]      n0_odata_p0;  
output                  n0_ovalid_p0; 

/* n1 */ 
input   [`DATAW:0]      n1_idata_p0;  
input                   n1_ivalid_p0; 
input   [`VCHW:0]       n1_ivch_p0;   
output  [`VCH:0]        n1_ordy_p0;   
output  [`DATAW:0]      n1_odata_p0;  
output                  n1_ovalid_p0; 

/* n2 */ 
input   [`DATAW:0]      n2_idata_p0;  
input                   n2_ivalid_p0; 
input   [`VCHW:0]       n2_ivch_p0;   
output  [`VCH:0]        n2_ordy_p0;   
output  [`DATAW:0]      n2_odata_p0;  
output                  n2_ovalid_p0; 

/* n3 */ 
input   [`DATAW:0]      n3_idata_p0;  
input                   n3_ivalid_p0; 
input   [`VCHW:0]       n3_ivch_p0;   
output  [`VCH:0]        n3_ordy_p0;   
output  [`DATAW:0]      n3_odata_p0;  
output                  n3_ovalid_p0; 

/* n4 */ 
input   [`DATAW:0]      n4_idata_p0;  
input                   n4_ivalid_p0; 
input   [`VCHW:0]       n4_ivch_p0;   
output  [`VCH:0]        n4_ordy_p0;   
output  [`DATAW:0]      n4_odata_p0;  
output                  n4_ovalid_p0; 

/* n5 */ 
input   [`DATAW:0]      n5_idata_p0;  
input                   n5_ivalid_p0; 
input   [`VCHW:0]       n5_ivch_p0;   
output  [`VCH:0]        n5_ordy_p0;   
output  [`DATAW:0]      n5_odata_p0;  
output                  n5_ovalid_p0; 

/* n6 */ 
input   [`DATAW:0]      n6_idata_p0;  
input                   n6_ivalid_p0; 
input   [`VCHW:0]       n6_ivch_p0;   
output  [`VCH:0]        n6_ordy_p0;   
output  [`DATAW:0]      n6_odata_p0;  
output                  n6_ovalid_p0; 

/* n7 */ 
input   [`DATAW:0]      n7_idata_p0;  
input                   n7_ivalid_p0; 
input   [`VCHW:0]       n7_ivch_p0;   
output  [`VCH:0]        n7_ordy_p0;   
output  [`DATAW:0]      n7_odata_p0;  
output                  n7_ovalid_p0; 

/* n8 */ 
input   [`DATAW:0]      n8_idata_p0;  
input                   n8_ivalid_p0; 
input   [`VCHW:0]       n8_ivch_p0;   
output  [`VCH:0]        n8_ordy_p0;   
output  [`DATAW:0]      n8_odata_p0;  
output                  n8_ovalid_p0; 

input clk, rst_; 

/* n0 --> n1 */ 
wire    [`DATAW:0]      n0_odata_1;  
wire                    n0_ovalid_1; 
wire    [`VCH:0]        n1_oack_3;   
wire    [`VCH:0]        n1_olck_3;   
wire    [`VCHW:0]       n1_ovch_3;   
/* n0 --> n3 */ 
wire    [`DATAW:0]      n0_odata_2;  
wire                    n0_ovalid_2; 
wire    [`VCH:0]        n3_oack_0;   
wire    [`VCH:0]        n3_olck_0;   
wire    [`VCHW:0]       n3_ovch_0;   
/* n1 --> n0 */ 
wire    [`DATAW:0]      n1_odata_3;  
wire                    n1_ovalid_3; 
wire    [`VCH:0]        n0_oack_1;   
wire    [`VCH:0]        n0_olck_1;   
wire    [`VCHW:0]       n0_ovch_1;   
/* n1 --> n2 */ 
wire    [`DATAW:0]      n1_odata_1;  
wire                    n1_ovalid_1; 
wire    [`VCH:0]        n2_oack_3;   
wire    [`VCH:0]        n2_olck_3;   
wire    [`VCHW:0]       n2_ovch_3;   
/* n1 --> n4 */ 
wire    [`DATAW:0]      n1_odata_2;  
wire                    n1_ovalid_2; 
wire    [`VCH:0]        n4_oack_0;   
wire    [`VCH:0]        n4_olck_0;   
wire    [`VCHW:0]       n4_ovch_0;   
/* n2 --> n1 */ 
wire    [`DATAW:0]      n2_odata_3;  
wire                    n2_ovalid_3; 
wire    [`VCH:0]        n1_oack_1;   
wire    [`VCH:0]        n1_olck_1;   
wire    [`VCHW:0]       n1_ovch_1;   
/* n2 --> n5 */ 
wire    [`DATAW:0]      n2_odata_2;  
wire                    n2_ovalid_2; 
wire    [`VCH:0]        n5_oack_0;   
wire    [`VCH:0]        n5_olck_0;   
wire    [`VCHW:0]       n5_ovch_0;   
/* n3 --> n0 */ 
wire    [`DATAW:0]      n3_odata_0;  
wire                    n3_ovalid_0; 
wire    [`VCH:0]        n0_oack_2;   
wire    [`VCH:0]        n0_olck_2;   
wire    [`VCHW:0]       n0_ovch_2;   
/* n3 --> n4 */ 
wire    [`DATAW:0]      n3_odata_1;  
wire                    n3_ovalid_1; 
wire    [`VCH:0]        n4_oack_3;   
wire    [`VCH:0]        n4_olck_3;   
wire    [`VCHW:0]       n4_ovch_3;   
/* n3 --> n6 */ 
wire    [`DATAW:0]      n3_odata_2;  
wire                    n3_ovalid_2; 
wire    [`VCH:0]        n6_oack_0;   
wire    [`VCH:0]        n6_olck_0;   
wire    [`VCHW:0]       n6_ovch_0;   
/* n4 --> n1 */ 
wire    [`DATAW:0]      n4_odata_0;  
wire                    n4_ovalid_0; 
wire    [`VCH:0]        n1_oack_2;   
wire    [`VCH:0]        n1_olck_2;   
wire    [`VCHW:0]       n1_ovch_2;   
/* n4 --> n3 */ 
wire    [`DATAW:0]      n4_odata_3;  
wire                    n4_ovalid_3; 
wire    [`VCH:0]        n3_oack_1;   
wire    [`VCH:0]        n3_olck_1;   
wire    [`VCHW:0]       n3_ovch_1;   
/* n4 --> n5 */ 
wire    [`DATAW:0]      n4_odata_1;  
wire                    n4_ovalid_1; 
wire    [`VCH:0]        n5_oack_3;   
wire    [`VCH:0]        n5_olck_3;   
wire    [`VCHW:0]       n5_ovch_3;   
/* n4 --> n7 */ 
wire    [`DATAW:0]      n4_odata_2;  
wire                    n4_ovalid_2; 
wire    [`VCH:0]        n7_oack_0;   
wire    [`VCH:0]        n7_olck_0;   
wire    [`VCHW:0]       n7_ovch_0;   
/* n5 --> n2 */ 
wire    [`DATAW:0]      n5_odata_0;  
wire                    n5_ovalid_0; 
wire    [`VCH:0]        n2_oack_2;   
wire    [`VCH:0]        n2_olck_2;   
wire    [`VCHW:0]       n2_ovch_2;   
/* n5 --> n4 */ 
wire    [`DATAW:0]      n5_odata_3;  
wire                    n5_ovalid_3; 
wire    [`VCH:0]        n4_oack_1;   
wire    [`VCH:0]        n4_olck_1;   
wire    [`VCHW:0]       n4_ovch_1;   
/* n5 --> n8 */ 
wire    [`DATAW:0]      n5_odata_2;  
wire                    n5_ovalid_2; 
wire    [`VCH:0]        n8_oack_0;   
wire    [`VCH:0]        n8_olck_0;   
wire    [`VCHW:0]       n8_ovch_0;   
/* n6 --> n3 */ 
wire    [`DATAW:0]      n6_odata_0;  
wire                    n6_ovalid_0; 
wire    [`VCH:0]        n3_oack_2;   
wire    [`VCH:0]        n3_olck_2;   
wire    [`VCHW:0]       n3_ovch_2;   
/* n6 --> n7 */ 
wire    [`DATAW:0]      n6_odata_1;  
wire                    n6_ovalid_1; 
wire    [`VCH:0]        n7_oack_3;   
wire    [`VCH:0]        n7_olck_3;   
wire    [`VCHW:0]       n7_ovch_3;   
/* n7 --> n4 */ 
wire    [`DATAW:0]      n7_odata_0;  
wire                    n7_ovalid_0; 
wire    [`VCH:0]        n4_oack_2;   
wire    [`VCH:0]        n4_olck_2;   
wire    [`VCHW:0]       n4_ovch_2;   
/* n7 --> n6 */ 
wire    [`DATAW:0]      n7_odata_3;  
wire                    n7_ovalid_3; 
wire    [`VCH:0]        n6_oack_1;   
wire    [`VCH:0]        n6_olck_1;   
wire    [`VCHW:0]       n6_ovch_1;   
/* n7 --> n8 */ 
wire    [`DATAW:0]      n7_odata_1;  
wire                    n7_ovalid_1; 
wire    [`VCH:0]        n8_oack_3;   
wire    [`VCH:0]        n8_olck_3;   
wire    [`VCHW:0]       n8_ovch_3;   
/* n8 --> n5 */ 
wire    [`DATAW:0]      n8_odata_0;  
wire                    n8_ovalid_0; 
wire    [`VCH:0]        n5_oack_2;   
wire    [`VCH:0]        n5_olck_2;   
wire    [`VCHW:0]       n5_ovch_2;   
/* n8 --> n7 */ 
wire    [`DATAW:0]      n8_odata_3;  
wire                    n8_ovalid_3; 
wire    [`VCH:0]        n7_oack_1;   
wire    [`VCH:0]        n7_olck_1;   
wire    [`VCHW:0]       n7_ovch_1;   



//extras
// wire [`VCHW:0]   OVCH_4_x_n0 ;
// wire [`VCHW:0]   OVCH_3_x_n0 ;
// wire             OVALID_3_x_n0 ;
// wire [`DATAW:0]  ODATA_3_x_n0 ;
// wire [`VCHW:0]   OVCH_0_x_n0 ;
// wire             OVALID_0_x_n0 ;
// wire [`DATAW:0]  ODATA_0_x_n0 ;
// wire [`VCH:0]    OLCK_4_x_n0 ;
// wire [`VCH:0]    OACK_4_x_n0 ;
// wire [`VCH:0]    OLCK_3_x_n0 ;
// wire [`VCH:0]    ORDY_3_x_n0 ;
// wire [`VCH:0]    OACK_3_x_n0 ;
// wire [`VCH:0]    ORDY_2_x_n0 ;
// wire [`VCH:0]    ORDY_1_x_n0 ;
// wire [`VCH:0]    OLCK_0_x_n0 ;
// wire [`VCH:0]    ORDY_0_x_n0 ;
// wire [`VCH:0]    OACK_0_x_n0 ;
// wire [`VCHW:0]   OVCH_4_x_n1 ;
// wire [`VCHW:0]   OVCH_0_x_n1 ;
// wire             OVALID_0_x_n1 ;
// wire [`DATAW:0]  ODATA_0_x_n1 ;
// wire [`VCH:0]    OLCK_4_x_n1 ;
// wire [`VCH:0]    OACK_4_x_n1 ;
// wire [`VCH:0]    ORDY_3_x_n1 ;
// wire [`VCH:0]    ORDY_2_x_n1 ;
// wire [`VCH:0]    ORDY_1_x_n1 ;
// wire [`VCH:0]    OLCK_0_x_n1 ;
// wire [`VCH:0]    ORDY_0_x_n1 ;
// wire [`VCH:0]    OACK_0_x_n1 ;
// wire [`VCHW:0]   OVCH_4_x_n2 ;
// wire [`VCHW:0]   OVCH_1_x_n2 ;
// wire             OVALID_1_x_n2 ;
// wire [`DATAW:0]  ODATA_1_x_n2 ;
// wire [`VCHW:0]   OVCH_0_x_n2 ;
// wire             OVALID_0_x_n2 ;
// wire [`DATAW:0]  ODATA_0_x_n2 ;
// wire [`VCH:0]    OLCK_4_x_n2 ;
// wire [`VCH:0]    OACK_4_x_n2 ;
// wire [`VCH:0]    ORDY_3_x_n2 ;
// wire [`VCH:0]    ORDY_2_x_n2 ;
// wire [`VCH:0]    OLCK_1_x_n2 ;
// wire [`VCH:0]    ORDY_1_x_n2 ;
// wire [`VCH:0]    OACK_1_x_n2 ;
// wire [`VCH:0]    OLCK_0_x_n2 ;
// wire [`VCH:0]    ORDY_0_x_n2 ;
// wire [`VCH:0]    OACK_0_x_n2 ;
// wire [`VCHW:0]   OVCH_4_x_n3 ;
// wire [`VCHW:0]   OVCH_3_x_n3 ;
// wire             OVALID_3_x_n3 ;
// wire [`DATAW:0]  ODATA_3_x_n3 ;
// wire [`VCH:0]    OLCK_4_x_n3 ;
// wire [`VCH:0]    OACK_4_x_n3 ;
// wire [`VCH:0]    OLCK_3_x_n3 ;
// wire [`VCH:0]    ORDY_3_x_n3 ;
// wire [`VCH:0]    OACK_3_x_n3 ;
// wire [`VCH:0]    ORDY_2_x_n3 ;
// wire [`VCH:0]    ORDY_1_x_n3 ;
// wire [`VCH:0]    ORDY_0_x_n3 ;
// wire [`VCHW:0]   OVCH_4_x_n4 ;
// wire [`VCH:0]    OLCK_4_x_n4 ;
// wire [`VCH:0]    OACK_4_x_n4 ;
// wire [`VCH:0]    ORDY_3_x_n4 ;
// wire [`VCH:0]    ORDY_2_x_n4 ;
// wire [`VCH:0]    ORDY_1_x_n4 ;
// wire [`VCH:0]    ORDY_0_x_n4 ;
// wire [`VCHW:0]   OVCH_4_x_n5 ;
// wire [`VCHW:0]   OVCH_1_x_n5 ;
// wire             OVALID_1_x_n5 ;
// wire [`DATAW:0]  ODATA_1_x_n5 ;
// wire [`VCH:0]    OLCK_4_x_n5 ;
// wire [`VCH:0]    OACK_4_x_n5 ;
// wire [`VCH:0]    ORDY_3_x_n5 ;
// wire [`VCH:0]    ORDY_2_x_n5 ;
// wire [`VCH:0]    OLCK_1_x_n5 ;
// wire [`VCH:0]    ORDY_1_x_n5 ;
// wire [`VCH:0]    OACK_1_x_n5 ;
// wire [`VCH:0]    ORDY_0_x_n5 ;
// wire [`VCHW:0]   OVCH_4_x_n6 ;
// wire [`VCHW:0]   OVCH_3_x_n6 ;
// wire             OVALID_3_x_n6 ;
// wire [`DATAW:0]  ODATA_3_x_n6 ;
// wire [`VCHW:0]   OVCH_2_x_n6 ;
// wire             OVALID_2_x_n6 ;
// wire [`DATAW:0]  ODATA_2_x_n6 ;
// wire [`VCH:0]    OLCK_4_x_n6 ;
// wire [`VCH:0]    OACK_4_x_n6 ;
// wire [`VCH:0]    OLCK_3_x_n6 ;
// wire [`VCH:0]    ORDY_3_x_n6 ;
// wire [`VCH:0]    OACK_3_x_n6 ;
// wire [`VCH:0]    OLCK_2_x_n6 ;
// wire [`VCH:0]    ORDY_2_x_n6 ;
// wire [`VCH:0]    OACK_2_x_n6 ;
// wire [`VCH:0]    ORDY_1_x_n6 ;
// wire [`VCH:0]    ORDY_0_x_n6 ;
// wire [`VCHW:0]   OVCH_4_x_n7 ;
// wire [`VCHW:0]   OVCH_2_x_n7 ;
// wire             OVALID_2_x_n7 ;
// wire [`DATAW:0]  ODATA_2_x_n7 ;
// wire [`VCH:0]    OLCK_4_x_n7 ;
// wire [`VCH:0]    OACK_4_x_n7 ;
// wire [`VCH:0]    ORDY_3_x_n7 ;
// wire [`VCH:0]    OLCK_2_x_n7 ;
// wire [`VCH:0]    ORDY_2_x_n7 ;
// wire [`VCH:0]    OACK_2_x_n7 ;
// wire [`VCH:0]    ORDY_1_x_n7 ;
// wire [`VCH:0]    ORDY_0_x_n7 ;
// wire [`VCHW:0]   OVCH_4_x_n8 ;
// wire [`VCHW:0]   OVCH_2_x_n8 ;
// wire             OVALID_2_x_n8 ;
// wire [`DATAW:0]  ODATA_2_x_n8 ;
// wire [`VCHW:0]   OVCH_1_x_n8 ;
// wire             OVALID_1_x_n8 ;
// wire [`DATAW:0]  ODATA_1_x_n8 ;
// wire [`VCH:0]    OLCK_4_x_n8 ;
// wire [`VCH:0]    OACK_4_x_n8 ;
// wire [`VCH:0]    ORDY_3_x_n8 ;
// wire [`VCH:0]    OLCK_2_x_n8 ;
// wire [`VCH:0]    ORDY_2_x_n8 ;
// wire [`VCH:0]    OACK_2_x_n8 ;
// wire [`VCH:0]    OLCK_1_x_n8 ;
// wire [`VCH:0]    ORDY_1_x_n8 ;
// wire [`VCH:0]    OACK_1_x_n8 ;
// wire [`VCH:0]    ORDY_0_x_n8 ;

router n0 ( 
        // .ROUTERID (32'b0),
        .idata_4 ( n0_idata_p0  ), 
        .ivalid_4( n0_ivalid_p0 ), 
        .ivch_4  ( n0_ivch_p0   ), 
        .ordy_4  ( n0_ordy_p0   ), 
        .odata_4 ( n0_odata_p0  ), 
        .ovalid_4( n0_ovalid_p0 ), 
        .iack_4  ( `VCH_P1'hff  ),  
        .ilck_4  ( `VCH_P1'h00  ),  

        .idata_0 ( `DATAW_P1'b0 ),  
        .ivalid_0( 1'b0         ),  
        .ivch_0  ( `VCHW_P1'b0  ),  
        .iack_0  ( `VCH_P1'b0   ),  
        .ilck_0  ( `VCH_P1'b0   ),  

        .idata_1 ( n1_odata_3   ), 
        .ivalid_1( n1_ovalid_3  ), 
        .ivch_1  ( n1_ovch_3    ), 
        .oack_1  ( n0_oack_1    ), 
        .olck_1  ( n0_olck_1    ), 
        .odata_1 ( n0_odata_1   ), 
        .ovalid_1( n0_ovalid_1  ), 
        .ovch_1  ( n0_ovch_1    ), 
        .iack_1  ( n1_oack_3    ), 
        .ilck_1  ( n1_olck_3    ), 

        .idata_2 ( n3_odata_0   ), 
        .ivalid_2( n3_ovalid_0  ), 
        .ivch_2  ( n3_ovch_0    ), 
        .oack_2  ( n0_oack_2    ), 
        .olck_2  ( n0_olck_2    ), 
        .odata_2 ( n0_odata_2   ), 
        .ovalid_2( n0_ovalid_2  ), 
        .ovch_2  ( n0_ovch_2    ), 
        .iack_2  ( n3_oack_0    ), 
        .ilck_2  ( n3_olck_0    ), 

        .idata_3 ( `DATAW_P1'b0 ),  
        .ivalid_3( 1'b0         ),  
        .ivch_3  ( `VCHW_P1'b0  ),  
        .iack_3  ( `VCH_P1'b0   ),  
        .ilck_3  ( `VCH_P1'b0   ),  

        .my_xpos ( 2'b00 ), 
        .my_ypos ( 2'b00 ), 

        // .ovch_4(OVCH_4_x_n0) ,
        // .ovch_3(OVCH_3_x_n0) ,
        // .ovalid_3(OVALID_3_x_n0) ,
        // .odata_3(ODATA_3_x_n0) ,
        // .ovch_0(OVCH_0_x_n0) ,
        // .ovalid_0(OVALID_0_x_n0) ,
        // .odata_0(ODATA_0_x_n0) ,
        // .olck_4(OLCK_4_x_n0) ,
        // .oack_4(OACK_4_x_n0) ,
        // .olck_3(OLCK_3_x_n0) ,
        // .ordy_3(ORDY_3_x_n0) ,
        // .oack_3(OACK_3_x_n0) ,
        // .ordy_2(ORDY_2_x_n0) ,
        // .ordy_1(ORDY_1_x_n0) ,
        // .olck_0(OLCK_0_x_n0) ,
        // .ordy_0(ORDY_0_x_n0) ,
        // .oack_0(OACK_0_x_n0) ,

        .clk ( clk  ), 
        .rst_( rst_ )  

); 


// assign extra_outputs =  OVCH_4_x_n0 + OVCH_3_x_n0 + OVALID_3_x_n0 + ODATA_3_x_n0 + OVCH_0_x_n0 + OVALID_0_x_n0 + ODATA_0_x_n0 + OLCK_4_x_n0 + OACK_4_x_n0 + OLCK_3_x_n0 + ORDY_3_x_n0 + OACK_3_x_n0 + ORDY_2_x_n0 + ORDY_1_x_n0 + OLCK_0_x_n0 + ORDY_0_x_n0 + OACK_0_x_n0 + OVCH_4_x_n1 + OVCH_0_x_n1 + OVALID_0_x_n1 + ODATA_0_x_n1 + OLCK_4_x_n1 + OACK_4_x_n1 + ORDY_3_x_n1 + ORDY_2_x_n1 + ORDY_1_x_n1 + OLCK_0_x_n1 + ORDY_0_x_n1 + OACK_0_x_n1 + OVCH_4_x_n2 + OVCH_1_x_n2 + OVALID_1_x_n2 + ODATA_1_x_n2 + OVCH_0_x_n2 + OVALID_0_x_n2 + ODATA_0_x_n2 + OLCK_4_x_n2 + OACK_4_x_n2 + ORDY_3_x_n2 + ORDY_2_x_n2 + OLCK_1_x_n2 + ORDY_1_x_n2 + OACK_1_x_n2 + OLCK_0_x_n2 + ORDY_0_x_n2 + OACK_0_x_n2 + OVCH_4_x_n3 + OVCH_3_x_n3 + OVALID_3_x_n3 + ODATA_3_x_n3 + OLCK_4_x_n3 + OACK_4_x_n3 + OLCK_3_x_n3 + ORDY_3_x_n3 + OACK_3_x_n3 + ORDY_2_x_n3 + ORDY_1_x_n3 + ORDY_0_x_n3 + OVCH_4_x_n4 + OLCK_4_x_n4 + OACK_4_x_n4 + ORDY_3_x_n4 + ORDY_2_x_n4 + ORDY_1_x_n4 + ORDY_0_x_n4 + OVCH_4_x_n5 + OVCH_1_x_n5 + OVALID_1_x_n5 + ODATA_1_x_n5 + OLCK_4_x_n5 + OACK_4_x_n5 + ORDY_3_x_n5 + ORDY_2_x_n5 + OLCK_1_x_n5 + ORDY_1_x_n5 + OACK_1_x_n5 + ORDY_0_x_n5 + OVCH_4_x_n6 + OVCH_3_x_n6 + OVALID_3_x_n6 + ODATA_3_x_n6 + OVCH_2_x_n6 + OVALID_2_x_n6 + ODATA_2_x_n6 + OLCK_4_x_n6 + OACK_4_x_n6 + OLCK_3_x_n6 + ORDY_3_x_n6 + OACK_3_x_n6 + OLCK_2_x_n6 + ORDY_2_x_n6 + OACK_2_x_n6 + ORDY_1_x_n6 + ORDY_0_x_n6 + OVCH_4_x_n7 + OVCH_2_x_n7 + OVALID_2_x_n7 + ODATA_2_x_n7 + OLCK_4_x_n7 + OACK_4_x_n7 + ORDY_3_x_n7 + OLCK_2_x_n7 + ORDY_2_x_n7 + OACK_2_x_n7 + ORDY_1_x_n7 + ORDY_0_x_n7 + OVCH_4_x_n8 + OVCH_2_x_n8 + OVALID_2_x_n8 + ODATA_2_x_n8 + OVCH_1_x_n8 + OVALID_1_x_n8 + ODATA_1_x_n8 + OLCK_4_x_n8 + OACK_4_x_n8 + ORDY_3_x_n8 + OLCK_2_x_n8 + ORDY_2_x_n8 + OACK_2_x_n8 + OLCK_1_x_n8 + ORDY_1_x_n8 + OACK_1_x_n8 + ORDY_0_x_n8 ;


router  n1 ( 
        // .    ROUTERID (1),
        .idata_4 ( n1_idata_p0  ), 
        .ivalid_4( n1_ivalid_p0 ), 
        .ivch_4  ( n1_ivch_p0   ), 
        .ordy_4  ( n1_ordy_p0   ), 
        .odata_4 ( n1_odata_p0  ), 
        .ovalid_4( n1_ovalid_p0 ), 
        .iack_4  ( `VCH_P1'hff  ),  
        .ilck_4  ( `VCH_P1'h00  ),  

        .idata_0 ( `DATAW_P1'b0 ),  
        .ivalid_0( 1'b0         ),  
        .ivch_0  ( `VCHW_P1'b0  ),  
        .iack_0  ( `VCH_P1'b0   ),  
        .ilck_0  ( `VCH_P1'b0   ),  

        .idata_1 ( n2_odata_3   ), 
        .ivalid_1( n2_ovalid_3  ), 
        .ivch_1  ( n2_ovch_3    ), 
        .oack_1  ( n1_oack_1    ), 
        .olck_1  ( n1_olck_1    ), 
        .odata_1 ( n1_odata_1   ), 
        .ovalid_1( n1_ovalid_1  ), 
        .ovch_1  ( n1_ovch_1    ), 
        .iack_1  ( n2_oack_3    ), 
        .ilck_1  ( n2_olck_3    ), 

        .idata_2 ( n4_odata_0   ), 
        .ivalid_2( n4_ovalid_0  ), 
        .ivch_2  ( n4_ovch_0    ), 
        .oack_2  ( n1_oack_2    ), 
        .olck_2  ( n1_olck_2    ), 
        .odata_2 ( n1_odata_2   ), 
        .ovalid_2( n1_ovalid_2  ), 
        .ovch_2  ( n1_ovch_2    ), 
        .iack_2  ( n4_oack_0    ), 
        .ilck_2  ( n4_olck_0    ), 

        .idata_3 ( n0_odata_1   ), 
        .ivalid_3( n0_ovalid_1  ), 
        .ivch_3  ( n0_ovch_1    ), 
        .oack_3  ( n1_oack_3    ), 
        .olck_3  ( n1_olck_3    ), 
        .odata_3 ( n1_odata_3   ), 
        .ovalid_3( n1_ovalid_3  ), 
        .ovch_3  ( n1_ovch_3    ), 
        .iack_3  ( n0_oack_1    ), 
        .ilck_3  ( n0_olck_1    ), 

        .my_xpos ( 2'b01 ), 
        .my_ypos ( 2'b00 ), 

        // .ovch_4(OVCH_4_x_n1) ,
        // .ovch_0(OVCH_0_x_n1) ,
        // .ovalid_0(OVALID_0_x_n1) ,
        // .odata_0(ODATA_0_x_n1) ,
        // .olck_4(OLCK_4_x_n1) ,
        // .oack_4(OACK_4_x_n1) ,
        // .ordy_3(ORDY_3_x_n1) ,
        // .ordy_2(ORDY_2_x_n1) ,
        // .ordy_1(ORDY_1_x_n1) ,
        // .olck_0(OLCK_0_x_n1) ,
        // .ordy_0(ORDY_0_x_n1) ,
        // .oack_0(OACK_0_x_n1) ,        

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router  n2 ( 
        // .ROUTERID (2),
        .idata_4 ( n2_idata_p0  ), 
        .ivalid_4( n2_ivalid_p0 ), 
        .ivch_4  ( n2_ivch_p0   ), 
        .ordy_4  ( n2_ordy_p0   ), 
        .odata_4 ( n2_odata_p0  ), 
        .ovalid_4( n2_ovalid_p0 ), 
        .iack_4  ( `VCH_P1'hff  ),  
        .ilck_4  ( `VCH_P1'h00  ),  

        .idata_0 ( `DATAW_P1'b0 ),  
        .ivalid_0( 1'b0         ),  
        .ivch_0  ( `VCHW_P1'b0  ),  
        .iack_0  ( `VCH_P1'b0   ),  
        .ilck_0  ( `VCH_P1'b0   ),  

        .idata_1 ( `DATAW_P1'b0 ),  
        .ivalid_1( 1'b0         ),  
        .ivch_1  ( `VCHW_P1'b0  ),  
        .iack_1  ( `VCH_P1'b0   ),  
        .ilck_1  ( `VCH_P1'b0   ),  

        .idata_2 ( n5_odata_0   ), 
        .ivalid_2( n5_ovalid_0  ), 
        .ivch_2  ( n5_ovch_0    ), 
        .oack_2  ( n2_oack_2    ), 
        .olck_2  ( n2_olck_2    ), 
        .odata_2 ( n2_odata_2   ), 
        .ovalid_2( n2_ovalid_2  ), 
        .ovch_2  ( n2_ovch_2    ), 
        .iack_2  ( n5_oack_0    ), 
        .ilck_2  ( n5_olck_0    ), 

        .idata_3 ( n1_odata_1   ), 
        .ivalid_3( n1_ovalid_1  ), 
        .ivch_3  ( n1_ovch_1    ), 
        .oack_3  ( n2_oack_3    ), 
        .olck_3  ( n2_olck_3    ), 
        .odata_3 ( n2_odata_3   ), 
        .ovalid_3( n2_ovalid_3  ), 
        .ovch_3  ( n2_ovch_3    ), 
        .iack_3  ( n1_oack_1    ), 
        .ilck_3  ( n1_olck_1    ), 

        .my_xpos ( 2'b10 ), 
        .my_ypos ( 2'b00 ), 

        // .ovch_4(OVCH_4_x_n2) ,
        // .ovch_1(OVCH_1_x_n2) ,
        // .ovalid_1(OVALID_1_x_n2) ,
        // .odata_1(ODATA_1_x_n2) ,
        // .ovch_0(OVCH_0_x_n2) ,
        // .ovalid_0(OVALID_0_x_n2) ,
        // .odata_0(ODATA_0_x_n2) ,
        // .olck_4(OLCK_4_x_n2) ,
        // .oack_4(OACK_4_x_n2) ,
        // .ordy_3(ORDY_3_x_n2) ,
        // .ordy_2(ORDY_2_x_n2) ,
        // .olck_1(OLCK_1_x_n2) ,
        // .ordy_1(ORDY_1_x_n2) ,
        // .oack_1(OACK_1_x_n2) ,
        // .olck_0(OLCK_0_x_n2) ,
        // .ordy_0(ORDY_0_x_n2) ,
        // .oack_0(OACK_0_x_n2) ,

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router n3 ( 
        // .ROUTERID (3),
        .idata_4 ( n3_idata_p0  ), 
        .ivalid_4( n3_ivalid_p0 ), 
        .ivch_4  ( n3_ivch_p0   ), 
        .ordy_4  ( n3_ordy_p0   ), 
        .odata_4 ( n3_odata_p0  ), 
        .ovalid_4( n3_ovalid_p0 ), 
        .iack_4  ( `VCH_P1'hff  ),  
        .ilck_4  ( `VCH_P1'h00  ),  

        .idata_0 ( n0_odata_2   ), 
        .ivalid_0( n0_ovalid_2  ), 
        .ivch_0  ( n0_ovch_2    ), 
        .oack_0  ( n3_oack_0    ), 
        .olck_0  ( n3_olck_0    ), 
        .odata_0 ( n3_odata_0   ), 
        .ovalid_0( n3_ovalid_0  ), 
        .ovch_0  ( n3_ovch_0    ), 
        .iack_0  ( n0_oack_2    ), 
        .ilck_0  ( n0_olck_2    ), 

        .idata_1 ( n4_odata_3   ), 
        .ivalid_1( n4_ovalid_3  ), 
        .ivch_1  ( n4_ovch_3    ), 
        .oack_1  ( n3_oack_1    ), 
        .olck_1  ( n3_olck_1    ), 
        .odata_1 ( n3_odata_1   ), 
        .ovalid_1( n3_ovalid_1  ), 
        .ovch_1  ( n3_ovch_1    ), 
        .iack_1  ( n4_oack_3    ), 
        .ilck_1  ( n4_olck_3    ), 

        .idata_2 ( n6_odata_0   ), 
        .ivalid_2( n6_ovalid_0  ), 
        .ivch_2  ( n6_ovch_0    ), 
        .oack_2  ( n3_oack_2    ), 
        .olck_2  ( n3_olck_2    ), 
        .odata_2 ( n3_odata_2   ), 
        .ovalid_2( n3_ovalid_2  ), 
        .ovch_2  ( n3_ovch_2    ), 
        .iack_2  ( n6_oack_0    ), 
        .ilck_2  ( n6_olck_0    ), 

        .idata_3 ( `DATAW_P1'b0 ),  
        .ivalid_3( 1'b0         ),  
        .ivch_3  ( `VCHW_P1'b0  ),  
        .iack_3  ( `VCH_P1'b0   ),  
        .ilck_3  ( `VCH_P1'b0   ),  

        .my_xpos ( 2'b00 ), 
        .my_ypos ( 2'b01 ), 

        // .ovch_4(OVCH_4_x_n3) ,
        // .ovch_3(OVCH_3_x_n3) ,
        // .ovalid_3(OVALID_3_x_n3) ,
        // .odata_3(ODATA_3_x_n3) ,
        // .olck_4(OLCK_4_x_n3) ,
        // .oack_4(OACK_4_x_n3) ,
        // .olck_3(OLCK_3_x_n3) ,
        // .ordy_3(ORDY_3_x_n3) ,
        // .oack_3(OACK_3_x_n3) ,
        // .ordy_2(ORDY_2_x_n3) ,
        // .ordy_1(ORDY_1_x_n3) ,
        // .ordy_0(ORDY_0_x_n3) ,

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router n4 ( 
        // .ROUTERID (4),
        .idata_4 ( n4_idata_p0  ), 
        .ivalid_4( n4_ivalid_p0 ), 
        .ivch_4  ( n4_ivch_p0   ), 
        .ordy_4  ( n4_ordy_p0   ), 
        .odata_4 ( n4_odata_p0  ), 
        .ovalid_4( n4_ovalid_p0 ), 
        .iack_4  ( `VCH_P1'hff  ),  
        .ilck_4  ( `VCH_P1'h00  ),  

        .idata_0 ( n1_odata_2   ), 
        .ivalid_0( n1_ovalid_2  ), 
        .ivch_0  ( n1_ovch_2    ), 
        .oack_0  ( n4_oack_0    ), 
        .olck_0  ( n4_olck_0    ), 
        .odata_0 ( n4_odata_0   ), 
        .ovalid_0( n4_ovalid_0  ), 
        .ovch_0  ( n4_ovch_0    ), 
        .iack_0  ( n1_oack_2    ), 
        .ilck_0  ( n1_olck_2    ), 

        .idata_1 ( n5_odata_3   ), 
        .ivalid_1( n5_ovalid_3  ), 
        .ivch_1  ( n5_ovch_3    ), 
        .oack_1  ( n4_oack_1    ), 
        .olck_1  ( n4_olck_1    ), 
        .odata_1 ( n4_odata_1   ), 
        .ovalid_1( n4_ovalid_1  ), 
        .ovch_1  ( n4_ovch_1    ), 
        .iack_1  ( n5_oack_3    ), 
        .ilck_1  ( n5_olck_3    ), 

        .idata_2 ( n7_odata_0   ), 
        .ivalid_2( n7_ovalid_0  ), 
        .ivch_2  ( n7_ovch_0    ), 
        .oack_2  ( n4_oack_2    ), 
        .olck_2  ( n4_olck_2    ), 
        .odata_2 ( n4_odata_2   ), 
        .ovalid_2( n4_ovalid_2  ), 
        .ovch_2  ( n4_ovch_2    ), 
        .iack_2  ( n7_oack_0    ), 
        .ilck_2  ( n7_olck_0    ), 

        .idata_3 ( n3_odata_1   ), 
        .ivalid_3( n3_ovalid_1  ), 
        .ivch_3  ( n3_ovch_1    ), 
        .oack_3  ( n4_oack_3    ), 
        .olck_3  ( n4_olck_3    ), 
        .odata_3 ( n4_odata_3   ), 
        .ovalid_3( n4_ovalid_3  ), 
        .ovch_3  ( n4_ovch_3    ), 
        .iack_3  ( n3_oack_1    ), 
        .ilck_3  ( n3_olck_1    ), 

        .my_xpos ( 2'b01 ), 
        .my_ypos ( 2'b01 ), 

        // .ovch_4(OVCH_4_x_n4) ,
        // .olck_4(OLCK_4_x_n4) ,
        // .oack_4(OACK_4_x_n4) ,
        // .ordy_3(ORDY_3_x_n4) ,
        // .ordy_2(ORDY_2_x_n4) ,
        // .ordy_1(ORDY_1_x_n4) ,
        // .ordy_0(ORDY_0_x_n4) ,

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router  n5 ( 
        // .ROUTERID (5),
        .idata_4 ( n5_idata_p0  ), 
        .ivalid_4( n5_ivalid_p0 ), 
        .ivch_4  ( n5_ivch_p0   ), 
        .ordy_4  ( n5_ordy_p0   ), 
        .odata_4 ( n5_odata_p0  ), 
        .ovalid_4( n5_ovalid_p0 ), 
        .iack_4  ( `VCH_P1'hff  ),  
        .ilck_4  ( `VCH_P1'h00  ),  

        .idata_0 ( n2_odata_2   ), 
        .ivalid_0( n2_ovalid_2  ), 
        .ivch_0  ( n2_ovch_2    ), 
        .oack_0  ( n5_oack_0    ), 
        .olck_0  ( n5_olck_0    ), 
        .odata_0 ( n5_odata_0   ), 
        .ovalid_0( n5_ovalid_0  ), 
        .ovch_0  ( n5_ovch_0    ), 
        .iack_0  ( n2_oack_2    ), 
        .ilck_0  ( n2_olck_2    ), 

        .idata_1 ( `DATAW_P1'b0 ),  
        .ivalid_1( 1'b0         ),  
        .ivch_1  ( `VCHW_P1'b0  ),  
        .iack_1  ( `VCH_P1'b0   ),  
        .ilck_1  ( `VCH_P1'b0   ),  

        .idata_2 ( n8_odata_0   ), 
        .ivalid_2( n8_ovalid_0  ), 
        .ivch_2  ( n8_ovch_0    ), 
        .oack_2  ( n5_oack_2    ), 
        .olck_2  ( n5_olck_2    ), 
        .odata_2 ( n5_odata_2   ), 
        .ovalid_2( n5_ovalid_2  ), 
        .ovch_2  ( n5_ovch_2    ), 
        .iack_2  ( n8_oack_0    ), 
        .ilck_2  ( n8_olck_0    ), 

        .idata_3 ( n4_odata_1   ), 
        .ivalid_3( n4_ovalid_1  ), 
        .ivch_3  ( n4_ovch_1    ), 
        .oack_3  ( n5_oack_3    ), 
        .olck_3  ( n5_olck_3    ), 
        .odata_3 ( n5_odata_3   ), 
        .ovalid_3( n5_ovalid_3  ), 
        .ovch_3  ( n5_ovch_3    ), 
        .iack_3  ( n4_oack_1    ), 
        .ilck_3  ( n4_olck_1    ), 

        .my_xpos ( 2'b10 ), 
        .my_ypos ( 2'b01 ), 

        // .ovch_4(OVCH_4_x_n5) ,
        // .ovch_1(OVCH_1_x_n5) ,
        // .ovalid_1(OVALID_1_x_n5) ,
        // .odata_1(ODATA_1_x_n5) ,
        // .olck_4(OLCK_4_x_n5) ,
        // .oack_4(OACK_4_x_n5) ,
        // .ordy_3(ORDY_3_x_n5) ,
        // .ordy_2(ORDY_2_x_n5) ,
        // .olck_1(OLCK_1_x_n5) ,
        // .ordy_1(ORDY_1_x_n5) ,
        // .oack_1(OACK_1_x_n5) ,
        // .ordy_0(ORDY_0_x_n5) ,

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router  n6 ( 
        // .ROUTERID (6),
        .idata_4 ( n6_idata_p0  ), 
        .ivalid_4( n6_ivalid_p0 ), 
        .ivch_4  ( n6_ivch_p0   ), 
        .ordy_4  ( n6_ordy_p0   ), 
        .odata_4 ( n6_odata_p0  ), 
        .ovalid_4( n6_ovalid_p0 ), 
        .iack_4  ( `VCH_P1'hff  ),  
        .ilck_4  ( `VCH_P1'h00  ),  

        .idata_0 ( n3_odata_2   ), 
        .ivalid_0( n3_ovalid_2  ), 
        .ivch_0  ( n3_ovch_2    ), 
        .oack_0  ( n6_oack_0    ), 
        .olck_0  ( n6_olck_0    ), 
        .odata_0 ( n6_odata_0   ), 
        .ovalid_0( n6_ovalid_0  ), 
        .ovch_0  ( n6_ovch_0    ), 
        .iack_0  ( n3_oack_2    ), 
        .ilck_0  ( n3_olck_2    ), 

        .idata_1 ( n7_odata_3   ), 
        .ivalid_1( n7_ovalid_3  ), 
        .ivch_1  ( n7_ovch_3    ), 
        .oack_1  ( n6_oack_1    ), 
        .olck_1  ( n6_olck_1    ), 
        .odata_1 ( n6_odata_1   ), 
        .ovalid_1( n6_ovalid_1  ), 
        .ovch_1  ( n6_ovch_1    ), 
        .iack_1  ( n7_oack_3    ), 
        .ilck_1  ( n7_olck_3    ), 

        .idata_2 ( `DATAW_P1'b0 ),  
        .ivalid_2( 1'b0         ),  
        .ivch_2  ( `VCHW_P1'b0  ),  
        .iack_2  ( `VCH_P1'b0   ),  
        .ilck_2  ( `VCH_P1'b0   ),  

        .idata_3 ( `DATAW_P1'b0 ),  
        .ivalid_3( 1'b0         ),  
        .ivch_3  ( `VCHW_P1'b0  ),  
        .iack_3  ( `VCH_P1'b0   ),  
        .ilck_3  ( `VCH_P1'b0   ),  

        .my_xpos ( 2'b00 ), 
        .my_ypos ( 2'b10 ), 

        // .ovch_4(OVCH_4_x_n6) ,
        // .ovch_3(OVCH_3_x_n6) ,
        // .ovalid_3(OVALID_3_x_n6) ,
        // .odata_3(ODATA_3_x_n6) ,
        // .ovch_2(OVCH_2_x_n6) ,
        // .ovalid_2(OVALID_2_x_n6) ,
        // .odata_2(ODATA_2_x_n6) ,
        // .olck_4(OLCK_4_x_n6) ,
        // .oack_4(OACK_4_x_n6) ,
        // .olck_3(OLCK_3_x_n6) ,
        // .ordy_3(ORDY_3_x_n6) ,
        // .oack_3(OACK_3_x_n6) ,
        // .olck_2(OLCK_2_x_n6) ,
        // .ordy_2(ORDY_2_x_n6) ,
        // .oack_2(OACK_2_x_n6) ,
        // .ordy_1(ORDY_1_x_n6) ,
        // .ordy_0(ORDY_0_x_n6) ,

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router  n7 ( 
        // .ROUTERID (7),
        .idata_4 ( n7_idata_p0  ), 
        .ivalid_4( n7_ivalid_p0 ), 
        .ivch_4  ( n7_ivch_p0   ), 
        .ordy_4  ( n7_ordy_p0   ), 
        .odata_4 ( n7_odata_p0  ), 
        .ovalid_4( n7_ovalid_p0 ), 
        .iack_4  ( `VCH_P1'hff  ),  
        .ilck_4  ( `VCH_P1'h00  ),  

        .idata_0 ( n4_odata_2   ), 
        .ivalid_0( n4_ovalid_2  ), 
        .ivch_0  ( n4_ovch_2    ), 
        .oack_0  ( n7_oack_0    ), 
        .olck_0  ( n7_olck_0    ), 
        .odata_0 ( n7_odata_0   ), 
        .ovalid_0( n7_ovalid_0  ), 
        .ovch_0  ( n7_ovch_0    ), 
        .iack_0  ( n4_oack_2    ), 
        .ilck_0  ( n4_olck_2    ), 

        .idata_1 ( n8_odata_3   ), 
        .ivalid_1( n8_ovalid_3  ), 
        .ivch_1  ( n8_ovch_3    ), 
        .oack_1  ( n7_oack_1    ), 
        .olck_1  ( n7_olck_1    ), 
        .odata_1 ( n7_odata_1   ), 
        .ovalid_1( n7_ovalid_1  ), 
        .ovch_1  ( n7_ovch_1    ), 
        .iack_1  ( n8_oack_3    ), 
        .ilck_1  ( n8_olck_3    ), 

        .idata_2 ( `DATAW_P1'b0 ),  
        .ivalid_2( 1'b0         ),  
        .ivch_2  ( `VCHW_P1'b0  ),  
        .iack_2  ( `VCH_P1'b0   ),  
        .ilck_2  ( `VCH_P1'b0   ),  

        .idata_3 ( n6_odata_1   ), 
        .ivalid_3( n6_ovalid_1  ), 
        .ivch_3  ( n6_ovch_1    ), 
        .oack_3  ( n7_oack_3    ), 
        .olck_3  ( n7_olck_3    ), 
        .odata_3 ( n7_odata_3   ), 
        .ovalid_3( n7_ovalid_3  ), 
        .ovch_3  ( n7_ovch_3    ), 
        .iack_3  ( n6_oack_1    ), 
        .ilck_3  ( n6_olck_1    ), 

        .my_xpos ( 2'b01 ), 
        .my_ypos ( 2'b10 ), 

        // .ovch_4(OVCH_4_x_n7) ,
        // .ovch_2(OVCH_2_x_n7) ,
        // .ovalid_2(OVALID_2_x_n7) ,
        // .odata_2(ODATA_2_x_n7) ,
        // .olck_4(OLCK_4_x_n7) ,
        // .oack_4(OACK_4_x_n7) ,
        // .ordy_3(ORDY_3_x_n7) ,
        // .olck_2(OLCK_2_x_n7) ,
        // .ordy_2(ORDY_2_x_n7) ,
        // .oack_2(OACK_2_x_n7) ,
        // .ordy_1(ORDY_1_x_n7) ,
        // .ordy_0(ORDY_0_x_n7) ,

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router  n8 (
        // .ROUTERID (8), 
        .idata_4 ( n8_idata_p0  ), 
        .ivalid_4( n8_ivalid_p0 ), 
        .ivch_4  ( n8_ivch_p0   ), 
        .ordy_4  ( n8_ordy_p0   ), 
        .odata_4 ( n8_odata_p0  ), 
        .ovalid_4( n8_ovalid_p0 ), 
        .iack_4  ( `VCH_P1'hff  ),  
        .ilck_4  ( `VCH_P1'h00  ),  

        .idata_0 ( n5_odata_2   ), 
        .ivalid_0( n5_ovalid_2  ), 
        .ivch_0  ( n5_ovch_2    ), 
        .oack_0  ( n8_oack_0    ), 
        .olck_0  ( n8_olck_0    ), 
        .odata_0 ( n8_odata_0   ), 
        .ovalid_0( n8_ovalid_0  ), 
        .ovch_0  ( n8_ovch_0    ), 
        .iack_0  ( n5_oack_2    ), 
        .ilck_0  ( n5_olck_2    ), 

        .idata_1 ( `DATAW_P1'b0 ),  
        .ivalid_1( 1'b0         ),  
        .ivch_1  ( `VCHW_P1'b0  ),  
        .iack_1  ( `VCH_P1'b0   ),  
        .ilck_1  ( `VCH_P1'b0   ),  

        .idata_2 ( `DATAW_P1'b0 ),  
        .ivalid_2( 1'b0         ),  
        .ivch_2  ( `VCHW_P1'b0  ),  
        .iack_2  ( `VCH_P1'b0   ),  
        .ilck_2  ( `VCH_P1'b0   ),  

        .idata_3 ( n7_odata_1   ), 
        .ivalid_3( n7_ovalid_1  ), 
        .ivch_3  ( n7_ovch_1    ), 
        .oack_3  ( n8_oack_3    ), 
        .olck_3  ( n8_olck_3    ), 
        .odata_3 ( n8_odata_3   ), 
        .ovalid_3( n8_ovalid_3  ), 
        .ovch_3  ( n8_ovch_3    ), 
        .iack_3  ( n7_oack_1    ), 
        .ilck_3  ( n7_olck_1    ), 

        .my_xpos ( 2'b10 ), 
        .my_ypos ( 2'b10 ), 

        // .ovch_4(OVCH_4_x_n8) ,
        // .ovch_2(OVCH_2_x_n8) ,
        // .ovalid_2(OVALID_2_x_n8) ,
        // .odata_2(ODATA_2_x_n8) ,
        // .ovch_1(OVCH_1_x_n8) ,
        // .ovalid_1(OVALID_1_x_n8) ,
        // .odata_1(ODATA_1_x_n8) ,
        // .olck_4(OLCK_4_x_n8) ,
        // .oack_4(OACK_4_x_n8) ,
        // .ordy_3(ORDY_3_x_n8) ,
        // .olck_2(OLCK_2_x_n8) ,
        // .ordy_2(ORDY_2_x_n8) ,
        // .oack_2(OACK_2_x_n8) ,
        // .olck_1(OLCK_1_x_n8) ,
        // .ordy_1(ORDY_1_x_n8) ,
        // .oack_1(OACK_1_x_n8) ,
        // .ordy_0(ORDY_0_x_n8) ,

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

endmodule