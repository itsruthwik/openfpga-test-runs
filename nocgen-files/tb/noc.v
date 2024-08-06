// `include "define.h" 
// `include "/home/rsunketa/OpenFPGA/test_runs/nocgen/src/define.h" 
`include "/mnt/vault1/rsunketa/router-verification-files/nocgen_router/common-files/src/define.h" 

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
        rst_ 
);   

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

router2 n0 ( 
        // .ROUTERID (32'b0),
        .IDATA_4 ( n0_idata_p0  ), 
        .IVALID_4( n0_ivalid_p0 ), 
        .IVCH_4  ( n0_ivch_p0   ), 
        .ORDY_4  ( n0_ordy_p0   ), 
        .ODATA_4 ( n0_odata_p0  ), 
        .OVALID_4( n0_ovalid_p0 ), 
        .IACK_4  ( `VCH_P1'hff  ),  
        .ILCK_4  ( `VCH_P1'h00  ),  

        .IDATA_0 ( `DATAW_P1'b0 ),  
        .IVALID_0( 1'b0         ),  
        .IVCH_0  ( `VCHW_P1'b0  ),  
        .IACK_0  ( `VCH_P1'b0   ),  
        .ILCK_0  ( `VCH_P1'b0   ),  

        .IDATA_1 ( n1_odata_3   ), 
        .IVALID_1( n1_ovalid_3  ), 
        .IVCH_1  ( n1_ovch_3    ), 
        .OACK_1  ( n0_oack_1    ), 
        .OLCK_1  ( n0_olck_1    ), 
        .ODATA_1 ( n0_odata_1   ), 
        .OVALID_1( n0_ovalid_1  ), 
        .OVCH_1  ( n0_ovch_1    ), 
        .IACK_1  ( n1_oack_3    ), 
        .ILCK_1  ( n1_olck_3    ), 

        .IDATA_2 ( n3_odata_0   ), 
        .IVALID_2( n3_ovalid_0  ), 
        .IVCH_2  ( n3_ovch_0    ), 
        .OACK_2  ( n0_oack_2    ), 
        .OLCK_2  ( n0_olck_2    ), 
        .ODATA_2 ( n0_odata_2   ), 
        .OVALID_2( n0_ovalid_2  ), 
        .OVCH_2  ( n0_ovch_2    ), 
        .IACK_2  ( n3_oack_0    ), 
        .ILCK_2  ( n3_olck_0    ), 

        .IDATA_3 ( `DATAW_P1'b0 ),  
        .IVALID_3( 1'b0         ),  
        .IVCH_3  ( `VCHW_P1'b0  ),  
        .IACK_3  ( `VCH_P1'b0   ),  
        .ILCK_3  ( `VCH_P1'b0   ),  

        .MY_XPOS ( 0 ), 
        .MY_YPOS ( 0 ), 

        .clk ( clk  ), 
        .RST_( rst_ )  
); 

router2  n1 ( 
        // .    ROUTERID (1),
        .IDATA_4 ( n1_idata_p0  ), 
        .IVALID_4( n1_ivalid_p0 ), 
        .IVCH_4  ( n1_ivch_p0   ), 
        .ORDY_4  ( n1_ordy_p0   ), 
        .ODATA_4 ( n1_odata_p0  ), 
        .OVALID_4( n1_ovalid_p0 ), 
        .IACK_4  ( `VCH_P1'hff  ),  
        .ILCK_4  ( `VCH_P1'h00  ),  

        .IDATA_0 ( `DATAW_P1'b0 ),  
        .IVALID_0( 1'b0         ),  
        .IVCH_0  ( `VCHW_P1'b0  ),  
        .IACK_0  ( `VCH_P1'b0   ),  
        .ILCK_0  ( `VCH_P1'b0   ),  

        .IDATA_1 ( n2_odata_3   ), 
        .IVALID_1( n2_ovalid_3  ), 
        .IVCH_1  ( n2_ovch_3    ), 
        .OACK_1  ( n1_oack_1    ), 
        .OLCK_1  ( n1_olck_1    ), 
        .ODATA_1 ( n1_odata_1   ), 
        .OVALID_1( n1_ovalid_1  ), 
        .OVCH_1  ( n1_ovch_1    ), 
        .IACK_1  ( n2_oack_3    ), 
        .ILCK_1  ( n2_olck_3    ), 

        .IDATA_2 ( n4_odata_0   ), 
        .IVALID_2( n4_ovalid_0  ), 
        .IVCH_2  ( n4_ovch_0    ), 
        .OACK_2  ( n1_oack_2    ), 
        .OLCK_2  ( n1_olck_2    ), 
        .ODATA_2 ( n1_odata_2   ), 
        .OVALID_2( n1_ovalid_2  ), 
        .OVCH_2  ( n1_ovch_2    ), 
        .IACK_2  ( n4_oack_0    ), 
        .ILCK_2  ( n4_olck_0    ), 

        .IDATA_3 ( n0_odata_1   ), 
        .IVALID_3( n0_ovalid_1  ), 
        .IVCH_3  ( n0_ovch_1    ), 
        .OACK_3  ( n1_oack_3    ), 
        .OLCK_3  ( n1_olck_3    ), 
        .ODATA_3 ( n1_odata_3   ), 
        .OVALID_3( n1_ovalid_3  ), 
        .OVCH_3  ( n1_ovch_3    ), 
        .IACK_3  ( n0_oack_1    ), 
        .ILCK_3  ( n0_olck_1    ), 

        .MY_XPOS ( 1 ), 
        .MY_YPOS ( 0 ), 

        .clk ( clk  ), 
        .RST_( rst_ )  
); 

router2  n2 ( 
        // .ROUTERID (2),
        .IDATA_4 ( n2_idata_p0  ), 
        .IVALID_4( n2_ivalid_p0 ), 
        .IVCH_4  ( n2_ivch_p0   ), 
        .ORDY_4  ( n2_ordy_p0   ), 
        .ODATA_4 ( n2_odata_p0  ), 
        .OVALID_4( n2_ovalid_p0 ), 
        .IACK_4  ( `VCH_P1'hff  ),  
        .ILCK_4  ( `VCH_P1'h00  ),  

        .IDATA_0 ( `DATAW_P1'b0 ),  
        .IVALID_0( 1'b0         ),  
        .IVCH_0  ( `VCHW_P1'b0  ),  
        .IACK_0  ( `VCH_P1'b0   ),  
        .ILCK_0  ( `VCH_P1'b0   ),  

        .IDATA_1 ( `DATAW_P1'b0 ),  
        .IVALID_1( 1'b0         ),  
        .IVCH_1  ( `VCHW_P1'b0  ),  
        .IACK_1  ( `VCH_P1'b0   ),  
        .ILCK_1  ( `VCH_P1'b0   ),  

        .IDATA_2 ( n5_odata_0   ), 
        .IVALID_2( n5_ovalid_0  ), 
        .IVCH_2  ( n5_ovch_0    ), 
        .OACK_2  ( n2_oack_2    ), 
        .OLCK_2  ( n2_olck_2    ), 
        .ODATA_2 ( n2_odata_2   ), 
        .OVALID_2( n2_ovalid_2  ), 
        .OVCH_2  ( n2_ovch_2    ), 
        .IACK_2  ( n5_oack_0    ), 
        .ILCK_2  ( n5_olck_0    ), 

        .IDATA_3 ( n1_odata_1   ), 
        .IVALID_3( n1_ovalid_1  ), 
        .IVCH_3  ( n1_ovch_1    ), 
        .OACK_3  ( n2_oack_3    ), 
        .OLCK_3  ( n2_olck_3    ), 
        .ODATA_3 ( n2_odata_3   ), 
        .OVALID_3( n2_ovalid_3  ), 
        .OVCH_3  ( n2_ovch_3    ), 
        .IACK_3  ( n1_oack_1    ), 
        .ILCK_3  ( n1_olck_1    ), 

        .MY_XPOS ( 2 ), 
        .MY_YPOS ( 0 ), 

        .clk ( clk  ), 
        .RST_( rst_ )  
); 

router2 n3 ( 
        // .ROUTERID (3),
        .IDATA_4 ( n3_idata_p0  ), 
        .IVALID_4( n3_ivalid_p0 ), 
        .IVCH_4  ( n3_ivch_p0   ), 
        .ORDY_4  ( n3_ordy_p0   ), 
        .ODATA_4 ( n3_odata_p0  ), 
        .OVALID_4( n3_ovalid_p0 ), 
        .IACK_4  ( `VCH_P1'hff  ),  
        .ILCK_4  ( `VCH_P1'h00  ),  

        .IDATA_0 ( n0_odata_2   ), 
        .IVALID_0( n0_ovalid_2  ), 
        .IVCH_0  ( n0_ovch_2    ), 
        .OACK_0  ( n3_oack_0    ), 
        .OLCK_0  ( n3_olck_0    ), 
        .ODATA_0 ( n3_odata_0   ), 
        .OVALID_0( n3_ovalid_0  ), 
        .OVCH_0  ( n3_ovch_0    ), 
        .IACK_0  ( n0_oack_2    ), 
        .ILCK_0  ( n0_olck_2    ), 

        .IDATA_1 ( n4_odata_3   ), 
        .IVALID_1( n4_ovalid_3  ), 
        .IVCH_1  ( n4_ovch_3    ), 
        .OACK_1  ( n3_oack_1    ), 
        .OLCK_1  ( n3_olck_1    ), 
        .ODATA_1 ( n3_odata_1   ), 
        .OVALID_1( n3_ovalid_1  ), 
        .OVCH_1  ( n3_ovch_1    ), 
        .IACK_1  ( n4_oack_3    ), 
        .ILCK_1  ( n4_olck_3    ), 

        .IDATA_2 ( n6_odata_0   ), 
        .IVALID_2( n6_ovalid_0  ), 
        .IVCH_2  ( n6_ovch_0    ), 
        .OACK_2  ( n3_oack_2    ), 
        .OLCK_2  ( n3_olck_2    ), 
        .ODATA_2 ( n3_odata_2   ), 
        .OVALID_2( n3_ovalid_2  ), 
        .OVCH_2  ( n3_ovch_2    ), 
        .IACK_2  ( n6_oack_0    ), 
        .ILCK_2  ( n6_olck_0    ), 

        .IDATA_3 ( `DATAW_P1'b0 ),  
        .IVALID_3( 1'b0         ),  
        .IVCH_3  ( `VCHW_P1'b0  ),  
        .IACK_3  ( `VCH_P1'b0   ),  
        .ILCK_3  ( `VCH_P1'b0   ),  

        .MY_XPOS ( 0 ), 
        .MY_YPOS ( 1 ), 

        .clk ( clk  ), 
        .RST_( rst_ )  
); 

router2 n4 ( 
        // .ROUTERID (4),
        .IDATA_4 ( n4_idata_p0  ), 
        .IVALID_4( n4_ivalid_p0 ), 
        .IVCH_4  ( n4_ivch_p0   ), 
        .ORDY_4  ( n4_ordy_p0   ), 
        .ODATA_4 ( n4_odata_p0  ), 
        .OVALID_4( n4_ovalid_p0 ), 
        .IACK_4  ( `VCH_P1'hff  ),  
        .ILCK_4  ( `VCH_P1'h00  ),  

        .IDATA_0 ( n1_odata_2   ), 
        .IVALID_0( n1_ovalid_2  ), 
        .IVCH_0  ( n1_ovch_2    ), 
        .OACK_0  ( n4_oack_0    ), 
        .OLCK_0  ( n4_olck_0    ), 
        .ODATA_0 ( n4_odata_0   ), 
        .OVALID_0( n4_ovalid_0  ), 
        .OVCH_0  ( n4_ovch_0    ), 
        .IACK_0  ( n1_oack_2    ), 
        .ILCK_0  ( n1_olck_2    ), 

        .IDATA_1 ( n5_odata_3   ), 
        .IVALID_1( n5_ovalid_3  ), 
        .IVCH_1  ( n5_ovch_3    ), 
        .OACK_1  ( n4_oack_1    ), 
        .OLCK_1  ( n4_olck_1    ), 
        .ODATA_1 ( n4_odata_1   ), 
        .OVALID_1( n4_ovalid_1  ), 
        .OVCH_1  ( n4_ovch_1    ), 
        .IACK_1  ( n5_oack_3    ), 
        .ILCK_1  ( n5_olck_3    ), 

        .IDATA_2 ( n7_odata_0   ), 
        .IVALID_2( n7_ovalid_0  ), 
        .IVCH_2  ( n7_ovch_0    ), 
        .OACK_2  ( n4_oack_2    ), 
        .OLCK_2  ( n4_olck_2    ), 
        .ODATA_2 ( n4_odata_2   ), 
        .OVALID_2( n4_ovalid_2  ), 
        .OVCH_2  ( n4_ovch_2    ), 
        .IACK_2  ( n7_oack_0    ), 
        .ILCK_2  ( n7_olck_0    ), 

        .IDATA_3 ( n3_odata_1   ), 
        .IVALID_3( n3_ovalid_1  ), 
        .IVCH_3  ( n3_ovch_1    ), 
        .OACK_3  ( n4_oack_3    ), 
        .OLCK_3  ( n4_olck_3    ), 
        .ODATA_3 ( n4_odata_3   ), 
        .OVALID_3( n4_ovalid_3  ), 
        .OVCH_3  ( n4_ovch_3    ), 
        .IACK_3  ( n3_oack_1    ), 
        .ILCK_3  ( n3_olck_1    ), 

        .MY_XPOS ( 1 ), 
        .MY_YPOS ( 1 ), 

        .clk ( clk  ), 
        .RST_( rst_ )  
); 

router2  n5 ( 
        // .ROUTERID (5),
        .IDATA_4 ( n5_idata_p0  ), 
        .IVALID_4( n5_ivalid_p0 ), 
        .IVCH_4  ( n5_ivch_p0   ), 
        .ORDY_4  ( n5_ordy_p0   ), 
        .ODATA_4 ( n5_odata_p0  ), 
        .OVALID_4( n5_ovalid_p0 ), 
        .IACK_4  ( `VCH_P1'hff  ),  
        .ILCK_4  ( `VCH_P1'h00  ),  

        .IDATA_0 ( n2_odata_2   ), 
        .IVALID_0( n2_ovalid_2  ), 
        .IVCH_0  ( n2_ovch_2    ), 
        .OACK_0  ( n5_oack_0    ), 
        .OLCK_0  ( n5_olck_0    ), 
        .ODATA_0 ( n5_odata_0   ), 
        .OVALID_0( n5_ovalid_0  ), 
        .OVCH_0  ( n5_ovch_0    ), 
        .IACK_0  ( n2_oack_2    ), 
        .ILCK_0  ( n2_olck_2    ), 

        .IDATA_1 ( `DATAW_P1'b0 ),  
        .IVALID_1( 1'b0         ),  
        .IVCH_1  ( `VCHW_P1'b0  ),  
        .IACK_1  ( `VCH_P1'b0   ),  
        .ILCK_1  ( `VCH_P1'b0   ),  

        .IDATA_2 ( n8_odata_0   ), 
        .IVALID_2( n8_ovalid_0  ), 
        .IVCH_2  ( n8_ovch_0    ), 
        .OACK_2  ( n5_oack_2    ), 
        .OLCK_2  ( n5_olck_2    ), 
        .ODATA_2 ( n5_odata_2   ), 
        .OVALID_2( n5_ovalid_2  ), 
        .OVCH_2  ( n5_ovch_2    ), 
        .IACK_2  ( n8_oack_0    ), 
        .ILCK_2  ( n8_olck_0    ), 

        .IDATA_3 ( n4_odata_1   ), 
        .IVALID_3( n4_ovalid_1  ), 
        .IVCH_3  ( n4_ovch_1    ), 
        .OACK_3  ( n5_oack_3    ), 
        .OLCK_3  ( n5_olck_3    ), 
        .ODATA_3 ( n5_odata_3   ), 
        .OVALID_3( n5_ovalid_3  ), 
        .OVCH_3  ( n5_ovch_3    ), 
        .IACK_3  ( n4_oack_1    ), 
        .ILCK_3  ( n4_olck_1    ), 

        .MY_XPOS ( 2 ), 
        .MY_YPOS ( 1 ), 

        .clk ( clk  ), 
        .RST_( rst_ )  
); 

router2  n6 ( 
        // .ROUTERID (6),
        .IDATA_4 ( n6_idata_p0  ), 
        .IVALID_4( n6_ivalid_p0 ), 
        .IVCH_4  ( n6_ivch_p0   ), 
        .ORDY_4  ( n6_ordy_p0   ), 
        .ODATA_4 ( n6_odata_p0  ), 
        .OVALID_4( n6_ovalid_p0 ), 
        .IACK_4  ( `VCH_P1'hff  ),  
        .ILCK_4  ( `VCH_P1'h00  ),  

        .IDATA_0 ( n3_odata_2   ), 
        .IVALID_0( n3_ovalid_2  ), 
        .IVCH_0  ( n3_ovch_2    ), 
        .OACK_0  ( n6_oack_0    ), 
        .OLCK_0  ( n6_olck_0    ), 
        .ODATA_0 ( n6_odata_0   ), 
        .OVALID_0( n6_ovalid_0  ), 
        .OVCH_0  ( n6_ovch_0    ), 
        .IACK_0  ( n3_oack_2    ), 
        .ILCK_0  ( n3_olck_2    ), 

        .IDATA_1 ( n7_odata_3   ), 
        .IVALID_1( n7_ovalid_3  ), 
        .IVCH_1  ( n7_ovch_3    ), 
        .OACK_1  ( n6_oack_1    ), 
        .OLCK_1  ( n6_olck_1    ), 
        .ODATA_1 ( n6_odata_1   ), 
        .OVALID_1( n6_ovalid_1  ), 
        .OVCH_1  ( n6_ovch_1    ), 
        .IACK_1  ( n7_oack_3    ), 
        .ILCK_1  ( n7_olck_3    ), 

        .IDATA_2 ( `DATAW_P1'b0 ),  
        .IVALID_2( 1'b0         ),  
        .IVCH_2  ( `VCHW_P1'b0  ),  
        .IACK_2  ( `VCH_P1'b0   ),  
        .ILCK_2  ( `VCH_P1'b0   ),  

        .IDATA_3 ( `DATAW_P1'b0 ),  
        .IVALID_3( 1'b0         ),  
        .IVCH_3  ( `VCHW_P1'b0  ),  
        .IACK_3  ( `VCH_P1'b0   ),  
        .ILCK_3  ( `VCH_P1'b0   ),  

        .MY_XPOS ( 0 ), 
        .MY_YPOS ( 2 ), 

        .clk ( clk  ), 
        .RST_( rst_ )  
); 

router2  n7 ( 
        // .ROUTERID (7),
        .IDATA_4 ( n7_idata_p0  ), 
        .IVALID_4( n7_ivalid_p0 ), 
        .IVCH_4  ( n7_ivch_p0   ), 
        .ORDY_4  ( n7_ordy_p0   ), 
        .ODATA_4 ( n7_odata_p0  ), 
        .OVALID_4( n7_ovalid_p0 ), 
        .IACK_4  ( `VCH_P1'hff  ),  
        .ILCK_4  ( `VCH_P1'h00  ),  

        .IDATA_0 ( n4_odata_2   ), 
        .IVALID_0( n4_ovalid_2  ), 
        .IVCH_0  ( n4_ovch_2    ), 
        .OACK_0  ( n7_oack_0    ), 
        .OLCK_0  ( n7_olck_0    ), 
        .ODATA_0 ( n7_odata_0   ), 
        .OVALID_0( n7_ovalid_0  ), 
        .OVCH_0  ( n7_ovch_0    ), 
        .IACK_0  ( n4_oack_2    ), 
        .ILCK_0  ( n4_olck_2    ), 

        .IDATA_1 ( n8_odata_3   ), 
        .IVALID_1( n8_ovalid_3  ), 
        .IVCH_1  ( n8_ovch_3    ), 
        .OACK_1  ( n7_oack_1    ), 
        .OLCK_1  ( n7_olck_1    ), 
        .ODATA_1 ( n7_odata_1   ), 
        .OVALID_1( n7_ovalid_1  ), 
        .OVCH_1  ( n7_ovch_1    ), 
        .IACK_1  ( n8_oack_3    ), 
        .ILCK_1  ( n8_olck_3    ), 

        .IDATA_2 ( `DATAW_P1'b0 ),  
        .IVALID_2( 1'b0         ),  
        .IVCH_2  ( `VCHW_P1'b0  ),  
        .IACK_2  ( `VCH_P1'b0   ),  
        .ILCK_2  ( `VCH_P1'b0   ),  

        .IDATA_3 ( n6_odata_1   ), 
        .IVALID_3( n6_ovalid_1  ), 
        .IVCH_3  ( n6_ovch_1    ), 
        .OACK_3  ( n7_oack_3    ), 
        .OLCK_3  ( n7_olck_3    ), 
        .ODATA_3 ( n7_odata_3   ), 
        .OVALID_3( n7_ovalid_3  ), 
        .OVCH_3  ( n7_ovch_3    ), 
        .IACK_3  ( n6_oack_1    ), 
        .ILCK_3  ( n6_olck_1    ), 

        .MY_XPOS ( 1 ), 
        .MY_YPOS ( 2 ), 

        .clk ( clk  ), 
        .RST_( rst_ )  
); 

router2  n8 (
        // .ROUTERID (8), 
        .IDATA_4 ( n8_idata_p0  ), 
        .IVALID_4( n8_ivalid_p0 ), 
        .IVCH_4  ( n8_ivch_p0   ), 
        .ORDY_4  ( n8_ordy_p0   ), 
        .ODATA_4 ( n8_odata_p0  ), 
        .OVALID_4( n8_ovalid_p0 ), 
        .IACK_4  ( `VCH_P1'hff  ),  
        .ILCK_4  ( `VCH_P1'h00  ),  

        .IDATA_0 ( n5_odata_2   ), 
        .IVALID_0( n5_ovalid_2  ), 
        .IVCH_0  ( n5_ovch_2    ), 
        .OACK_0  ( n8_oack_0    ), 
        .OLCK_0  ( n8_olck_0    ), 
        .ODATA_0 ( n8_odata_0   ), 
        .OVALID_0( n8_ovalid_0  ), 
        .OVCH_0  ( n8_ovch_0    ), 
        .IACK_0  ( n5_oack_2    ), 
        .ILCK_0  ( n5_olck_2    ), 

        .IDATA_1 ( `DATAW_P1'b0 ),  
        .IVALID_1( 1'b0         ),  
        .IVCH_1  ( `VCHW_P1'b0  ),  
        .IACK_1  ( `VCH_P1'b0   ),  
        .ILCK_1  ( `VCH_P1'b0   ),  

        .IDATA_2 ( `DATAW_P1'b0 ),  
        .IVALID_2( 1'b0         ),  
        .IVCH_2  ( `VCHW_P1'b0  ),  
        .IACK_2  ( `VCH_P1'b0   ),  
        .ILCK_2  ( `VCH_P1'b0   ),  

        .IDATA_3 ( n7_odata_1   ), 
        .IVALID_3( n7_ovalid_1  ), 
        .IVCH_3  ( n7_ovch_1    ), 
        .OACK_3  ( n8_oack_3    ), 
        .OLCK_3  ( n8_olck_3    ), 
        .ODATA_3 ( n8_odata_3   ), 
        .OVALID_3( n8_ovalid_3  ), 
        .OVCH_3  ( n8_ovch_3    ), 
        .IACK_3  ( n7_oack_1    ), 
        .ILCK_3  ( n7_olck_1    ), 

        .MY_XPOS ( 2 ), 
        .MY_YPOS ( 2 ), 

        .clk ( clk  ), 
        .RST_( rst_ )  
); 

endmodule 
