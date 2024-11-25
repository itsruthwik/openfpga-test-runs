`include "/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/nocgen-files/define.h"

module router_2_bench( clk, rst_, data_0, data_1, send_en_0, send_en_1, n1_odata_p0, n1_ovalid_p0, n0_odata_p0, n0_ovalid_p0, d_a , d_b , d_o );

        input clk, rst_ ;
        input [15:0] data_0, data_1 ;
        input send_en_0, send_en_1 ;

        output [34:0] n1_odata_p0 ; 
        output        n1_ovalid_p0 ; 

        output [34:0] n0_odata_p0 ; 
        output        n0_ovalid_p0 ; 


input [1:0] d_a;
input [1:0] d_b;
output [1:0] d_o;

     
assign d_o = d_a + d_b ;


        wire [34:0] n0_idata_p0 ; 
        wire        n0_ivalid_p0 ; 
        wire        n0_ivch_p0 ; 
        wire [1:0]  n0_ordy_p0 ; 


        wire [34:0] n1_idata_p0 ; 
        wire        n1_ivalid_p0 ; 
        wire        n1_ivch_p0 ; 
        wire [1:0]  n1_ordy_p0 ; 


        wire         n0_ovch_1 ; 
        wire [1:0]   n0_oack_1   ; 
        wire [1:0]   n0_olck_1   ; 
        wire [34:0]  n0_odata_1 ; 
        wire         n0_ovalid_1 ; 

        wire        n1_ovch_3 ; 
        wire [1:0]  n1_oack_3 ; 
        wire [1:0]  n1_olck_3 ; 
        wire [34:0] n1_odata_3 ; 
        wire        n1_ovalid_3 ; 


send_packet s0(
    .clk           ( clk             ) ,
    .dst           ( 1               ) ,
    .src           ( 0               ) ,
    .vch           ( 1               ) ,
    .data          ( data_0          ) ,
    .send_en       ( send_en_0       ) ,
    .ordy_p0       ( n0_ordy_p0      ) ,
    .ivalid_p0     ( n0_ivalid_p0    ) ,
    .ivch_p0       ( n0_ivch_p0      ) ,
    .idata_p0      ( n0_idata_p0     )     
);

send_packet s1(
    .clk           ( clk             ) ,
    .dst           ( 1               ) ,
    .src           ( 0               ) ,
    .vch           ( 1               ) ,
    .data          ( data_1          ) ,
    .send_en       ( send_en_1       ) ,
    .ordy_p0       ( n1_ordy_p0      ) ,
    .ivalid_p0     ( n1_ivalid_p0    ) ,
    .ivch_p0       ( n1_ivch_p0      ) ,
    .idata_p0      ( n1_idata_p0     )     
);

router n0 ( 
        // .ROUTERID (32'b0),
        .idata_4 ( n0_idata_p0  ), 
        .ivalid_4( n0_ivalid_p0 ), 
        .ivch_4  ( n0_ivch_p0   ), 
        .ordy_4  ( n0_ordy_p0   ), 
        .odata_4 ( n0_odata_p0  ), 
        .ovalid_4( n0_ovalid_p0 ), 
        .iack_4  ( 2'b11  ),  
        .ilck_4  ( 2'b00  ),   

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

        .my_xpos ( 2'b00 ), 
        .my_ypos ( 2'b00 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

router  n1 ( 
        // .    ROUTERID (1),
        .idata_4 ( n1_idata_p0  ), 
        .ivalid_4( n1_ivalid_p0 ), 
        .ivch_4  ( n1_ivch_p0   ), 
        .ordy_4  ( n1_ordy_p0   ), 
        .odata_4 ( n1_odata_p0  ), 
        .ovalid_4( n1_ovalid_p0 ), 
        .iack_4  ( 2'b11  ),  
        .ilck_4  ( 2'b00  ),   

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

        .clk ( clk  ), 
        .rst_( rst_ )  
); 


endmodule

