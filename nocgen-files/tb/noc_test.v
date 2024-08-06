/* test module for noc.v */ 
// `include "/home/rsunketa/OpenFPGA/test_runs/nocgen/src/define.h"     
`include "/mnt/vault1/rsunketa/router-verification-files/nocgen_router/common-files/src/define.h" 

`timescale 1ns/10ps 

module noc_test; 

parameter STEP  = 5.0; 
parameter ARRAY = 3; 

integer counter, stop, total_sent, total_recv; 
reg clk, rst_, ready; 

/* n0 */ 
reg     [`DATAW:0]      n0_idata_p0;  
reg                     n0_ivalid_p0; 
reg     [`VCHW:0]       n0_ivch_p0;   
wire    [`VCH:0]        n0_ordy_p0;   
wire    [`DATAW:0]      n0_odata_p0;  
wire                    n0_ovalid_p0; 
integer                 n0_sent, n0_recv;

/* n1 */ 
reg     [`DATAW:0]      n1_idata_p0;  
reg                     n1_ivalid_p0; 
reg     [`VCHW:0]       n1_ivch_p0;   
wire    [`VCH:0]        n1_ordy_p0;   
wire    [`DATAW:0]      n1_odata_p0;  
wire                    n1_ovalid_p0; 
integer                 n1_sent, n1_recv;

/* n2 */ 
reg     [`DATAW:0]      n2_idata_p0;  
reg                     n2_ivalid_p0; 
reg     [`VCHW:0]       n2_ivch_p0;   
wire    [`VCH:0]        n2_ordy_p0;   
wire    [`DATAW:0]      n2_odata_p0;  
wire                    n2_ovalid_p0; 
integer                 n2_sent, n2_recv;

/* n3 */ 
reg     [`DATAW:0]      n3_idata_p0;  
reg                     n3_ivalid_p0; 
reg     [`VCHW:0]       n3_ivch_p0;   
wire    [`VCH:0]        n3_ordy_p0;   
wire    [`DATAW:0]      n3_odata_p0;  
wire                    n3_ovalid_p0; 
integer                 n3_sent, n3_recv;

/* n4 */ 
reg     [`DATAW:0]      n4_idata_p0;  
reg                     n4_ivalid_p0; 
reg     [`VCHW:0]       n4_ivch_p0;   
wire    [`VCH:0]        n4_ordy_p0;   
wire    [`DATAW:0]      n4_odata_p0;  
wire                    n4_ovalid_p0; 
integer                 n4_sent, n4_recv;

/* n5 */ 
reg     [`DATAW:0]      n5_idata_p0;  
reg                     n5_ivalid_p0; 
reg     [`VCHW:0]       n5_ivch_p0;   
wire    [`VCH:0]        n5_ordy_p0;   
wire    [`DATAW:0]      n5_odata_p0;  
wire                    n5_ovalid_p0; 
integer                 n5_sent, n5_recv;

/* n6 */ 
reg     [`DATAW:0]      n6_idata_p0;  
reg                     n6_ivalid_p0; 
reg     [`VCHW:0]       n6_ivch_p0;   
wire    [`VCH:0]        n6_ordy_p0;   
wire    [`DATAW:0]      n6_odata_p0;  
wire                    n6_ovalid_p0; 
integer                 n6_sent, n6_recv;

/* n7 */ 
reg     [`DATAW:0]      n7_idata_p0;  
reg                     n7_ivalid_p0; 
reg     [`VCHW:0]       n7_ivch_p0;   
wire    [`VCH:0]        n7_ordy_p0;   
wire    [`DATAW:0]      n7_odata_p0;  
wire                    n7_ovalid_p0; 
integer                 n7_sent, n7_recv;

/* n8 */ 
reg     [`DATAW:0]      n8_idata_p0;  
reg                     n8_ivalid_p0; 
reg     [`VCHW:0]       n8_ivch_p0;   
wire    [`VCH:0]        n8_ordy_p0;   
wire    [`DATAW:0]      n8_odata_p0;  
wire                    n8_ovalid_p0; 
integer                 n8_sent, n8_recv;

noc noc ( 
        /* n0 */ 
        .n0_idata_p0 ( n0_idata_p0  ), 
        .n0_ivalid_p0( n0_ivalid_p0 ), 
        .n0_ivch_p0  ( n0_ivch_p0   ), 
        .n0_ordy_p0  ( n0_ordy_p0   ), 
        .n0_odata_p0 ( n0_odata_p0  ), 
        .n0_ovalid_p0( n0_ovalid_p0 ), 

        /* n1 */ 
        .n1_idata_p0 ( n1_idata_p0  ), 
        .n1_ivalid_p0( n1_ivalid_p0 ), 
        .n1_ivch_p0  ( n1_ivch_p0   ), 
        .n1_ordy_p0  ( n1_ordy_p0   ), 
        .n1_odata_p0 ( n1_odata_p0  ), 
        .n1_ovalid_p0( n1_ovalid_p0 ), 

        /* n2 */ 
        .n2_idata_p0 ( n2_idata_p0  ), 
        .n2_ivalid_p0( n2_ivalid_p0 ), 
        .n2_ivch_p0  ( n2_ivch_p0   ), 
        .n2_ordy_p0  ( n2_ordy_p0   ), 
        .n2_odata_p0 ( n2_odata_p0  ), 
        .n2_ovalid_p0( n2_ovalid_p0 ), 

        /* n3 */ 
        .n3_idata_p0 ( n3_idata_p0  ), 
        .n3_ivalid_p0( n3_ivalid_p0 ), 
        .n3_ivch_p0  ( n3_ivch_p0   ), 
        .n3_ordy_p0  ( n3_ordy_p0   ), 
        .n3_odata_p0 ( n3_odata_p0  ), 
        .n3_ovalid_p0( n3_ovalid_p0 ), 

        /* n4 */ 
        .n4_idata_p0 ( n4_idata_p0  ), 
        .n4_ivalid_p0( n4_ivalid_p0 ), 
        .n4_ivch_p0  ( n4_ivch_p0   ), 
        .n4_ordy_p0  ( n4_ordy_p0   ), 
        .n4_odata_p0 ( n4_odata_p0  ), 
        .n4_ovalid_p0( n4_ovalid_p0 ), 

        /* n5 */ 
        .n5_idata_p0 ( n5_idata_p0  ), 
        .n5_ivalid_p0( n5_ivalid_p0 ), 
        .n5_ivch_p0  ( n5_ivch_p0   ), 
        .n5_ordy_p0  ( n5_ordy_p0   ), 
        .n5_odata_p0 ( n5_odata_p0  ), 
        .n5_ovalid_p0( n5_ovalid_p0 ), 

        /* n6 */ 
        .n6_idata_p0 ( n6_idata_p0  ), 
        .n6_ivalid_p0( n6_ivalid_p0 ), 
        .n6_ivch_p0  ( n6_ivch_p0   ), 
        .n6_ordy_p0  ( n6_ordy_p0   ), 
        .n6_odata_p0 ( n6_odata_p0  ), 
        .n6_ovalid_p0( n6_ovalid_p0 ), 

        /* n7 */ 
        .n7_idata_p0 ( n7_idata_p0  ), 
        .n7_ivalid_p0( n7_ivalid_p0 ), 
        .n7_ivch_p0  ( n7_ivch_p0   ), 
        .n7_ordy_p0  ( n7_ordy_p0   ), 
        .n7_odata_p0 ( n7_odata_p0  ), 
        .n7_ovalid_p0( n7_ovalid_p0 ), 

        /* n8 */ 
        .n8_idata_p0 ( n8_idata_p0  ), 
        .n8_ivalid_p0( n8_ivalid_p0 ), 
        .n8_ivch_p0  ( n8_ivch_p0   ), 
        .n8_ordy_p0  ( n8_ordy_p0   ), 
        .n8_odata_p0 ( n8_odata_p0  ), 
        .n8_ovalid_p0( n8_ovalid_p0 ), 

        .clk ( clk  ), 
        .rst_( rst_ )  
); 

always #( STEP / 2) begin      
        clk <= ~clk;           
end                            
always #(STEP) begin           
        counter = counter + 1; 
end                            

initial begin                   
        /* Initialization */    
        #0                      
        counter = 0;            
        stop    = 200;          
        clk     <= `High;       
        ready   <= `Disable;    
        /* Send/recv counters */
        n0_sent = 0; n0_recv = 0; 
        n1_sent = 0; n1_recv = 0; 
        n2_sent = 0; n2_recv = 0; 
        n3_sent = 0; n3_recv = 0; 
        n4_sent = 0; n4_recv = 0; 
        n5_sent = 0; n5_recv = 0; 
        n6_sent = 0; n6_recv = 0; 
        n7_sent = 0; n7_recv = 0; 
        n8_sent = 0; n8_recv = 0; 
        #(STEP / 2)             
        noc_reset;              
        /* Now we can start simulation! */
        ready   <= `Enable;     

        /* Waiting for the end of the simulation */ 
        while (counter < stop) begin
                #(STEP);        
        end                     

        /* Statistics */ 
        total_sent = n0_sent + n1_sent + n2_sent + n3_sent + n4_sent + n5_sent + n6_sent + n7_sent + n8_sent;
        total_recv = n0_recv + n1_recv + n2_recv + n3_recv + n4_recv + n5_recv + n6_recv + n7_recv + n8_recv;
        $write("\n\n");    
        $write("*** statistics (%d) *** \n", counter); 
        $write("n0_sent %d \t n0_recv %d \n", n0_sent, n0_recv);
        $write("n1_sent %d \t n1_recv %d \n", n1_sent, n1_recv);
        $write("n2_sent %d \t n2_recv %d \n", n2_sent, n2_recv);
        $write("n3_sent %d \t n3_recv %d \n", n3_sent, n3_recv);
        $write("n4_sent %d \t n4_recv %d \n", n4_sent, n4_recv);
        $write("n5_sent %d \t n5_recv %d \n", n5_sent, n5_recv);
        $write("n6_sent %d \t n6_recv %d \n", n6_sent, n6_recv);
        $write("n7_sent %d \t n7_recv %d \n", n7_sent, n7_recv);
        $write("n8_sent %d \t n8_recv %d \n", n8_sent, n8_recv);
        $write("total_sent %d \t total_recv %d \n", total_sent, total_recv);
        $write("\n\n");    
        $finish;               
end                             

/* packet generator for n0 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 0 dst: 4 vch: 0 len: 3) *** \n");
        send_packet_0(4, 0, 3);
        $write("*** send (src: 0 dst: 4 vch: 1 len: 1) *** \n");
        send_packet_0(4, 1, 1);
        $write("*** send (src: 0 dst: 4 vch: 1 len: 3) *** \n");
        send_packet_0(4, 1, 3);
        $write("*** send (src: 0 dst: 2 vch: 1 len: 3) *** \n");
        send_packet_0(2, 1, 3);
        $write("*** send (src: 0 dst: 8 vch: 0 len: 2) *** \n");
        send_packet_0(8, 0, 2);
        $write("*** send (src: 0 dst: 3 vch: 1 len: 1) *** \n");
        send_packet_0(3, 1, 1);
        $write("*** send (src: 0 dst: 6 vch: 0 len: 1) *** \n");
        send_packet_0(6, 0, 1);
        $write("*** send (src: 0 dst: 3 vch: 1 len: 1) *** \n");
        send_packet_0(3, 1, 1);
        $write("*** send (src: 0 dst: 5 vch: 0 len: 4) *** \n");
        send_packet_0(5, 0, 4);
        $write("*** send (src: 0 dst: 4 vch: 1 len: 4) *** \n");
        send_packet_0(4, 1, 4);
        $write("*** send (src: 0 dst: 1 vch: 0 len: 4) *** \n");
        send_packet_0(1, 0, 4);
        $write("*** send (src: 0 dst: 4 vch: 0 len: 2) *** \n");
        send_packet_0(4, 0, 2);
        $write("*** send (src: 0 dst: 6 vch: 1 len: 2) *** \n");
        send_packet_0(6, 1, 2);
        $write("*** send (src: 0 dst: 7 vch: 1 len: 3) *** \n");
        send_packet_0(7, 1, 3);
        $write("*** send (src: 0 dst: 6 vch: 1 len: 5) *** \n");
        send_packet_0(6, 1, 5);
        $write("*** send (src: 0 dst: 1 vch: 1 len: 3) *** \n");
        send_packet_0(1, 1, 3);
        $write("*** send (src: 0 dst: 4 vch: 0 len: 5) *** \n");
        send_packet_0(4, 0, 5);
        $write("*** send (src: 0 dst: 3 vch: 0 len: 1) *** \n");
        send_packet_0(3, 0, 1);
        $write("*** send (src: 0 dst: 6 vch: 0 len: 3) *** \n");
        send_packet_0(6, 0, 3);
        $write("*** send (src: 0 dst: 5 vch: 0 len: 4) *** \n");
        send_packet_0(5, 0, 4);
        $write("*** send (src: 0 dst: 8 vch: 1 len: 1) *** \n");
        send_packet_0(8, 1, 1);
        $write("*** send (src: 0 dst: 5 vch: 0 len: 5) *** \n");
        send_packet_0(5, 0, 5);
        $write("*** send (src: 0 dst: 1 vch: 0 len: 2) *** \n");
        send_packet_0(1, 0, 2);
        $write("*** send (src: 0 dst: 6 vch: 0 len: 1) *** \n");
        send_packet_0(6, 0, 1);
        $write("*** send (src: 0 dst: 1 vch: 1 len: 2) *** \n");
        send_packet_0(1, 1, 2);
        $write("*** send (src: 0 dst: 4 vch: 0 len: 1) *** \n");
        send_packet_0(4, 0, 1);
        $write("*** send (src: 0 dst: 1 vch: 1 len: 4) *** \n");
        send_packet_0(1, 1, 4);
        $write("*** send (src: 0 dst: 7 vch: 1 len: 2) *** \n");
        send_packet_0(7, 1, 2);
        $write("*** send (src: 0 dst: 6 vch: 0 len: 3) *** \n");
        send_packet_0(6, 0, 3);
        $write("*** send (src: 0 dst: 6 vch: 1 len: 3) *** \n");
        send_packet_0(6, 1, 3);
        $write("*** send (src: 0 dst: 2 vch: 1 len: 3) *** \n");
        send_packet_0(2, 1, 3);
        $write("*** send (src: 0 dst: 5 vch: 1 len: 4) *** \n");
        send_packet_0(5, 1, 4);
end 

/* packet generator for n1 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 1 dst: 5 vch: 1 len: 1) *** \n");
        send_packet_1(5, 1, 1);
        $write("*** send (src: 1 dst: 2 vch: 1 len: 3) *** \n");
        send_packet_1(2, 1, 3);
        $write("*** send (src: 1 dst: 8 vch: 1 len: 3) *** \n");
        send_packet_1(8, 1, 3);
        $write("*** send (src: 1 dst: 4 vch: 1 len: 5) *** \n");
        send_packet_1(4, 1, 5);
        $write("*** send (src: 1 dst: 3 vch: 0 len: 2) *** \n");
        send_packet_1(3, 0, 2);
        $write("*** send (src: 1 dst: 4 vch: 1 len: 4) *** \n");
        send_packet_1(4, 1, 4);
        $write("*** send (src: 1 dst: 3 vch: 0 len: 1) *** \n");
        send_packet_1(3, 0, 1);
        $write("*** send (src: 1 dst: 2 vch: 1 len: 2) *** \n");
        send_packet_1(2, 1, 2);
        $write("*** send (src: 1 dst: 8 vch: 1 len: 3) *** \n");
        send_packet_1(8, 1, 3);
        $write("*** send (src: 1 dst: 5 vch: 1 len: 2) *** \n");
        send_packet_1(5, 1, 2);
        $write("*** send (src: 1 dst: 8 vch: 1 len: 2) *** \n");
        send_packet_1(8, 1, 2);
        $write("*** send (src: 1 dst: 0 vch: 1 len: 1) *** \n");
        send_packet_1(0, 1, 1);
        $write("*** send (src: 1 dst: 6 vch: 1 len: 4) *** \n");
        send_packet_1(6, 1, 4);
        $write("*** send (src: 1 dst: 6 vch: 1 len: 4) *** \n");
        send_packet_1(6, 1, 4);
        $write("*** send (src: 1 dst: 5 vch: 1 len: 5) *** \n");
        send_packet_1(5, 1, 5);
        $write("*** send (src: 1 dst: 0 vch: 0 len: 2) *** \n");
        send_packet_1(0, 0, 2);
        $write("*** send (src: 1 dst: 3 vch: 0 len: 4) *** \n");
        send_packet_1(3, 0, 4);
        $write("*** send (src: 1 dst: 4 vch: 1 len: 2) *** \n");
        send_packet_1(4, 1, 2);
        $write("*** send (src: 1 dst: 5 vch: 0 len: 1) *** \n");
        send_packet_1(5, 0, 1);
        $write("*** send (src: 1 dst: 0 vch: 1 len: 2) *** \n");
        send_packet_1(0, 1, 2);
        $write("*** send (src: 1 dst: 3 vch: 1 len: 2) *** \n");
        send_packet_1(3, 1, 2);
        $write("*** send (src: 1 dst: 8 vch: 1 len: 2) *** \n");
        send_packet_1(8, 1, 2);
        $write("*** send (src: 1 dst: 2 vch: 1 len: 2) *** \n");
        send_packet_1(2, 1, 2);
        $write("*** send (src: 1 dst: 3 vch: 1 len: 3) *** \n");
        send_packet_1(3, 1, 3);
        $write("*** send (src: 1 dst: 4 vch: 1 len: 1) *** \n");
        send_packet_1(4, 1, 1);
        $write("*** send (src: 1 dst: 5 vch: 0 len: 3) *** \n");
        send_packet_1(5, 0, 3);
        $write("*** send (src: 1 dst: 8 vch: 0 len: 2) *** \n");
        send_packet_1(8, 0, 2);
        $write("*** send (src: 1 dst: 0 vch: 0 len: 1) *** \n");
        send_packet_1(0, 0, 1);
        $write("*** send (src: 1 dst: 6 vch: 0 len: 2) *** \n");
        send_packet_1(6, 0, 2);
        $write("*** send (src: 1 dst: 3 vch: 0 len: 4) *** \n");
        send_packet_1(3, 0, 4);
        $write("*** send (src: 1 dst: 7 vch: 1 len: 3) *** \n");
        send_packet_1(7, 1, 3);
        $write("*** send (src: 1 dst: 8 vch: 1 len: 4) *** \n");
        send_packet_1(8, 1, 4);
end 

/* packet generator for n2 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 2 dst: 5 vch: 0 len: 3) *** \n");
        send_packet_2(5, 0, 3);
        $write("*** send (src: 2 dst: 3 vch: 1 len: 1) *** \n");
        send_packet_2(3, 1, 1);
        $write("*** send (src: 2 dst: 1 vch: 0 len: 4) *** \n");
        send_packet_2(1, 0, 4);
        $write("*** send (src: 2 dst: 5 vch: 1 len: 4) *** \n");
        send_packet_2(5, 1, 4);
        $write("*** send (src: 2 dst: 7 vch: 1 len: 3) *** \n");
        send_packet_2(7, 1, 3);
        $write("*** send (src: 2 dst: 8 vch: 0 len: 5) *** \n");
        send_packet_2(8, 0, 5);
        $write("*** send (src: 2 dst: 8 vch: 1 len: 5) *** \n");
        send_packet_2(8, 1, 5);
        $write("*** send (src: 2 dst: 7 vch: 0 len: 4) *** \n");
        send_packet_2(7, 0, 4);
        $write("*** send (src: 2 dst: 5 vch: 1 len: 2) *** \n");
        send_packet_2(5, 1, 2);
        $write("*** send (src: 2 dst: 7 vch: 1 len: 5) *** \n");
        send_packet_2(7, 1, 5);
        $write("*** send (src: 2 dst: 3 vch: 0 len: 4) *** \n");
        send_packet_2(3, 0, 4);
        $write("*** send (src: 2 dst: 0 vch: 0 len: 3) *** \n");
        send_packet_2(0, 0, 3);
        $write("*** send (src: 2 dst: 5 vch: 1 len: 3) *** \n");
        send_packet_2(5, 1, 3);
        $write("*** send (src: 2 dst: 1 vch: 1 len: 2) *** \n");
        send_packet_2(1, 1, 2);
        $write("*** send (src: 2 dst: 0 vch: 1 len: 3) *** \n");
        send_packet_2(0, 1, 3);
        $write("*** send (src: 2 dst: 4 vch: 1 len: 3) *** \n");
        send_packet_2(4, 1, 3);
        $write("*** send (src: 2 dst: 1 vch: 1 len: 2) *** \n");
        send_packet_2(1, 1, 2);
        $write("*** send (src: 2 dst: 0 vch: 1 len: 3) *** \n");
        send_packet_2(0, 1, 3);
        $write("*** send (src: 2 dst: 5 vch: 1 len: 5) *** \n");
        send_packet_2(5, 1, 5);
        $write("*** send (src: 2 dst: 3 vch: 0 len: 4) *** \n");
        send_packet_2(3, 0, 4);
        $write("*** send (src: 2 dst: 4 vch: 1 len: 5) *** \n");
        send_packet_2(4, 1, 5);
        $write("*** send (src: 2 dst: 4 vch: 0 len: 4) *** \n");
        send_packet_2(4, 0, 4);
        $write("*** send (src: 2 dst: 0 vch: 1 len: 1) *** \n");
        send_packet_2(0, 1, 1);
        $write("*** send (src: 2 dst: 7 vch: 1 len: 5) *** \n");
        send_packet_2(7, 1, 5);
        $write("*** send (src: 2 dst: 0 vch: 0 len: 1) *** \n");
        send_packet_2(0, 0, 1);
        $write("*** send (src: 2 dst: 3 vch: 1 len: 2) *** \n");
        send_packet_2(3, 1, 2);
        $write("*** send (src: 2 dst: 5 vch: 0 len: 1) *** \n");
        send_packet_2(5, 0, 1);
        $write("*** send (src: 2 dst: 0 vch: 1 len: 5) *** \n");
        send_packet_2(0, 1, 5);
        $write("*** send (src: 2 dst: 1 vch: 1 len: 5) *** \n");
        send_packet_2(1, 1, 5);
        $write("*** send (src: 2 dst: 7 vch: 0 len: 5) *** \n");
        send_packet_2(7, 0, 5);
        $write("*** send (src: 2 dst: 8 vch: 1 len: 1) *** \n");
        send_packet_2(8, 1, 1);
        $write("*** send (src: 2 dst: 8 vch: 0 len: 3) *** \n");
        send_packet_2(8, 0, 3);
end 

/* packet generator for n3 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 3 dst: 7 vch: 1 len: 1) *** \n");
        send_packet_3(7, 1, 1);
        $write("*** send (src: 3 dst: 1 vch: 1 len: 5) *** \n");
        send_packet_3(1, 1, 5);
        $write("*** send (src: 3 dst: 6 vch: 0 len: 5) *** \n");
        send_packet_3(6, 0, 5);
        $write("*** send (src: 3 dst: 2 vch: 1 len: 2) *** \n");
        send_packet_3(2, 1, 2);
        $write("*** send (src: 3 dst: 2 vch: 1 len: 3) *** \n");
        send_packet_3(2, 1, 3);
        $write("*** send (src: 3 dst: 6 vch: 1 len: 1) *** \n");
        send_packet_3(6, 1, 1);
        $write("*** send (src: 3 dst: 7 vch: 0 len: 2) *** \n");
        send_packet_3(7, 0, 2);
        $write("*** send (src: 3 dst: 5 vch: 0 len: 2) *** \n");
        send_packet_3(5, 0, 2);
        $write("*** send (src: 3 dst: 4 vch: 0 len: 5) *** \n");
        send_packet_3(4, 0, 5);
        $write("*** send (src: 3 dst: 5 vch: 1 len: 1) *** \n");
        send_packet_3(5, 1, 1);
        $write("*** send (src: 3 dst: 7 vch: 1 len: 5) *** \n");
        send_packet_3(7, 1, 5);
        $write("*** send (src: 3 dst: 5 vch: 1 len: 3) *** \n");
        send_packet_3(5, 1, 3);
        $write("*** send (src: 3 dst: 8 vch: 0 len: 2) *** \n");
        send_packet_3(8, 0, 2);
        $write("*** send (src: 3 dst: 5 vch: 0 len: 3) *** \n");
        send_packet_3(5, 0, 3);
        $write("*** send (src: 3 dst: 4 vch: 1 len: 2) *** \n");
        send_packet_3(4, 1, 2);
        $write("*** send (src: 3 dst: 2 vch: 1 len: 4) *** \n");
        send_packet_3(2, 1, 4);
        $write("*** send (src: 3 dst: 4 vch: 1 len: 4) *** \n");
        send_packet_3(4, 1, 4);
        $write("*** send (src: 3 dst: 5 vch: 0 len: 4) *** \n");
        send_packet_3(5, 0, 4);
        $write("*** send (src: 3 dst: 7 vch: 1 len: 1) *** \n");
        send_packet_3(7, 1, 1);
        $write("*** send (src: 3 dst: 7 vch: 1 len: 4) *** \n");
        send_packet_3(7, 1, 4);
        $write("*** send (src: 3 dst: 2 vch: 1 len: 4) *** \n");
        send_packet_3(2, 1, 4);
        $write("*** send (src: 3 dst: 0 vch: 0 len: 1) *** \n");
        send_packet_3(0, 0, 1);
        $write("*** send (src: 3 dst: 0 vch: 1 len: 1) *** \n");
        send_packet_3(0, 1, 1);
        $write("*** send (src: 3 dst: 8 vch: 1 len: 3) *** \n");
        send_packet_3(8, 1, 3);
        $write("*** send (src: 3 dst: 4 vch: 1 len: 4) *** \n");
        send_packet_3(4, 1, 4);
        $write("*** send (src: 3 dst: 0 vch: 0 len: 3) *** \n");
        send_packet_3(0, 0, 3);
        $write("*** send (src: 3 dst: 1 vch: 0 len: 5) *** \n");
        send_packet_3(1, 0, 5);
        $write("*** send (src: 3 dst: 6 vch: 1 len: 4) *** \n");
        send_packet_3(6, 1, 4);
        $write("*** send (src: 3 dst: 1 vch: 0 len: 2) *** \n");
        send_packet_3(1, 0, 2);
        $write("*** send (src: 3 dst: 5 vch: 0 len: 5) *** \n");
        send_packet_3(5, 0, 5);
        $write("*** send (src: 3 dst: 5 vch: 1 len: 2) *** \n");
        send_packet_3(5, 1, 2);
        $write("*** send (src: 3 dst: 6 vch: 0 len: 1) *** \n");
        send_packet_3(6, 0, 1);
end 

/* packet generator for n4 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 4 dst: 3 vch: 1 len: 2) *** \n");
        send_packet_4(3, 1, 2);
        $write("*** send (src: 4 dst: 8 vch: 1 len: 1) *** \n");
        send_packet_4(8, 1, 1);
        $write("*** send (src: 4 dst: 5 vch: 1 len: 5) *** \n");
        send_packet_4(5, 1, 5);
        $write("*** send (src: 4 dst: 7 vch: 1 len: 3) *** \n");
        send_packet_4(7, 1, 3);
        $write("*** send (src: 4 dst: 3 vch: 1 len: 2) *** \n");
        send_packet_4(3, 1, 2);
        $write("*** send (src: 4 dst: 3 vch: 0 len: 3) *** \n");
        send_packet_4(3, 0, 3);
        $write("*** send (src: 4 dst: 0 vch: 0 len: 4) *** \n");
        send_packet_4(0, 0, 4);
        $write("*** send (src: 4 dst: 0 vch: 0 len: 5) *** \n");
        send_packet_4(0, 0, 5);
        $write("*** send (src: 4 dst: 3 vch: 0 len: 2) *** \n");
        send_packet_4(3, 0, 2);
        $write("*** send (src: 4 dst: 8 vch: 0 len: 3) *** \n");
        send_packet_4(8, 0, 3);
        $write("*** send (src: 4 dst: 6 vch: 1 len: 2) *** \n");
        send_packet_4(6, 1, 2);
        $write("*** send (src: 4 dst: 1 vch: 0 len: 2) *** \n");
        send_packet_4(1, 0, 2);
        $write("*** send (src: 4 dst: 0 vch: 0 len: 2) *** \n");
        send_packet_4(0, 0, 2);
        $write("*** send (src: 4 dst: 5 vch: 0 len: 2) *** \n");
        send_packet_4(5, 0, 2);
        $write("*** send (src: 4 dst: 7 vch: 1 len: 5) *** \n");
        send_packet_4(7, 1, 5);
        $write("*** send (src: 4 dst: 8 vch: 1 len: 3) *** \n");
        send_packet_4(8, 1, 3);
        $write("*** send (src: 4 dst: 7 vch: 1 len: 5) *** \n");
        send_packet_4(7, 1, 5);
        $write("*** send (src: 4 dst: 8 vch: 0 len: 4) *** \n");
        send_packet_4(8, 0, 4);
        $write("*** send (src: 4 dst: 8 vch: 0 len: 5) *** \n");
        send_packet_4(8, 0, 5);
        $write("*** send (src: 4 dst: 8 vch: 0 len: 5) *** \n");
        send_packet_4(8, 0, 5);
        $write("*** send (src: 4 dst: 3 vch: 1 len: 1) *** \n");
        send_packet_4(3, 1, 1);
        $write("*** send (src: 4 dst: 1 vch: 1 len: 1) *** \n");
        send_packet_4(1, 1, 1);
        $write("*** send (src: 4 dst: 8 vch: 0 len: 2) *** \n");
        send_packet_4(8, 0, 2);
        $write("*** send (src: 4 dst: 3 vch: 0 len: 1) *** \n");
        send_packet_4(3, 0, 1);
        $write("*** send (src: 4 dst: 1 vch: 0 len: 2) *** \n");
        send_packet_4(1, 0, 2);
        $write("*** send (src: 4 dst: 6 vch: 0 len: 1) *** \n");
        send_packet_4(6, 0, 1);
        $write("*** send (src: 4 dst: 2 vch: 0 len: 1) *** \n");
        send_packet_4(2, 0, 1);
        $write("*** send (src: 4 dst: 7 vch: 1 len: 2) *** \n");
        send_packet_4(7, 1, 2);
        $write("*** send (src: 4 dst: 2 vch: 1 len: 5) *** \n");
        send_packet_4(2, 1, 5);
        $write("*** send (src: 4 dst: 2 vch: 1 len: 2) *** \n");
        send_packet_4(2, 1, 2);
        $write("*** send (src: 4 dst: 5 vch: 1 len: 3) *** \n");
        send_packet_4(5, 1, 3);
        $write("*** send (src: 4 dst: 7 vch: 1 len: 5) *** \n");
        send_packet_4(7, 1, 5);
end 

/* packet generator for n5 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 5 dst: 8 vch: 0 len: 1) *** \n");
        send_packet_5(8, 0, 1);
        $write("*** send (src: 5 dst: 8 vch: 0 len: 5) *** \n");
        send_packet_5(8, 0, 5);
        $write("*** send (src: 5 dst: 2 vch: 1 len: 5) *** \n");
        send_packet_5(2, 1, 5);
        $write("*** send (src: 5 dst: 7 vch: 0 len: 2) *** \n");
        send_packet_5(7, 0, 2);
        $write("*** send (src: 5 dst: 2 vch: 0 len: 5) *** \n");
        send_packet_5(2, 0, 5);
        $write("*** send (src: 5 dst: 6 vch: 1 len: 4) *** \n");
        send_packet_5(6, 1, 4);
        $write("*** send (src: 5 dst: 3 vch: 0 len: 3) *** \n");
        send_packet_5(3, 0, 3);
        $write("*** send (src: 5 dst: 1 vch: 0 len: 5) *** \n");
        send_packet_5(1, 0, 5);
        $write("*** send (src: 5 dst: 4 vch: 1 len: 2) *** \n");
        send_packet_5(4, 1, 2);
        $write("*** send (src: 5 dst: 2 vch: 1 len: 4) *** \n");
        send_packet_5(2, 1, 4);
        $write("*** send (src: 5 dst: 4 vch: 0 len: 1) *** \n");
        send_packet_5(4, 0, 1);
        $write("*** send (src: 5 dst: 4 vch: 0 len: 3) *** \n");
        send_packet_5(4, 0, 3);
        $write("*** send (src: 5 dst: 0 vch: 0 len: 5) *** \n");
        send_packet_5(0, 0, 5);
        $write("*** send (src: 5 dst: 2 vch: 0 len: 5) *** \n");
        send_packet_5(2, 0, 5);
        $write("*** send (src: 5 dst: 0 vch: 0 len: 5) *** \n");
        send_packet_5(0, 0, 5);
        $write("*** send (src: 5 dst: 4 vch: 1 len: 3) *** \n");
        send_packet_5(4, 1, 3);
        $write("*** send (src: 5 dst: 1 vch: 1 len: 2) *** \n");
        send_packet_5(1, 1, 2);
        $write("*** send (src: 5 dst: 6 vch: 1 len: 4) *** \n");
        send_packet_5(6, 1, 4);
        $write("*** send (src: 5 dst: 8 vch: 1 len: 2) *** \n");
        send_packet_5(8, 1, 2);
        $write("*** send (src: 5 dst: 1 vch: 0 len: 1) *** \n");
        send_packet_5(1, 0, 1);
        $write("*** send (src: 5 dst: 4 vch: 0 len: 2) *** \n");
        send_packet_5(4, 0, 2);
        $write("*** send (src: 5 dst: 0 vch: 0 len: 1) *** \n");
        send_packet_5(0, 0, 1);
        $write("*** send (src: 5 dst: 4 vch: 0 len: 1) *** \n");
        send_packet_5(4, 0, 1);
        $write("*** send (src: 5 dst: 6 vch: 1 len: 4) *** \n");
        send_packet_5(6, 1, 4);
        $write("*** send (src: 5 dst: 3 vch: 1 len: 4) *** \n");
        send_packet_5(3, 1, 4);
        $write("*** send (src: 5 dst: 8 vch: 1 len: 2) *** \n");
        send_packet_5(8, 1, 2);
        $write("*** send (src: 5 dst: 1 vch: 0 len: 5) *** \n");
        send_packet_5(1, 0, 5);
        $write("*** send (src: 5 dst: 3 vch: 0 len: 3) *** \n");
        send_packet_5(3, 0, 3);
        $write("*** send (src: 5 dst: 2 vch: 0 len: 2) *** \n");
        send_packet_5(2, 0, 2);
        $write("*** send (src: 5 dst: 0 vch: 0 len: 3) *** \n");
        send_packet_5(0, 0, 3);
        $write("*** send (src: 5 dst: 7 vch: 1 len: 1) *** \n");
        send_packet_5(7, 1, 1);
        $write("*** send (src: 5 dst: 3 vch: 0 len: 2) *** \n");
        send_packet_5(3, 0, 2);
end 

/* packet generator for n6 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 6 dst: 5 vch: 1 len: 1) *** \n");
        send_packet_6(5, 1, 1);
        $write("*** send (src: 6 dst: 7 vch: 0 len: 4) *** \n");
        send_packet_6(7, 0, 4);
        $write("*** send (src: 6 dst: 7 vch: 1 len: 5) *** \n");
        send_packet_6(7, 1, 5);
        $write("*** send (src: 6 dst: 8 vch: 1 len: 1) *** \n");
        send_packet_6(8, 1, 1);
        $write("*** send (src: 6 dst: 4 vch: 0 len: 1) *** \n");
        send_packet_6(4, 0, 1);
        $write("*** send (src: 6 dst: 8 vch: 0 len: 5) *** \n");
        send_packet_6(8, 0, 5);
        $write("*** send (src: 6 dst: 5 vch: 1 len: 5) *** \n");
        send_packet_6(5, 1, 5);
        $write("*** send (src: 6 dst: 4 vch: 1 len: 5) *** \n");
        send_packet_6(4, 1, 5);
        $write("*** send (src: 6 dst: 0 vch: 1 len: 3) *** \n");
        send_packet_6(0, 1, 3);
        $write("*** send (src: 6 dst: 7 vch: 1 len: 2) *** \n");
        send_packet_6(7, 1, 2);
        $write("*** send (src: 6 dst: 8 vch: 1 len: 5) *** \n");
        send_packet_6(8, 1, 5);
        $write("*** send (src: 6 dst: 2 vch: 0 len: 2) *** \n");
        send_packet_6(2, 0, 2);
        $write("*** send (src: 6 dst: 2 vch: 0 len: 5) *** \n");
        send_packet_6(2, 0, 5);
        $write("*** send (src: 6 dst: 0 vch: 1 len: 3) *** \n");
        send_packet_6(0, 1, 3);
        $write("*** send (src: 6 dst: 1 vch: 0 len: 4) *** \n");
        send_packet_6(1, 0, 4);
        $write("*** send (src: 6 dst: 8 vch: 0 len: 3) *** \n");
        send_packet_6(8, 0, 3);
        $write("*** send (src: 6 dst: 5 vch: 0 len: 1) *** \n");
        send_packet_6(5, 0, 1);
        $write("*** send (src: 6 dst: 0 vch: 1 len: 1) *** \n");
        send_packet_6(0, 1, 1);
        $write("*** send (src: 6 dst: 4 vch: 0 len: 3) *** \n");
        send_packet_6(4, 0, 3);
        $write("*** send (src: 6 dst: 2 vch: 0 len: 2) *** \n");
        send_packet_6(2, 0, 2);
        $write("*** send (src: 6 dst: 2 vch: 1 len: 3) *** \n");
        send_packet_6(2, 1, 3);
        $write("*** send (src: 6 dst: 0 vch: 1 len: 5) *** \n");
        send_packet_6(0, 1, 5);
        $write("*** send (src: 6 dst: 1 vch: 0 len: 1) *** \n");
        send_packet_6(1, 0, 1);
        $write("*** send (src: 6 dst: 4 vch: 1 len: 1) *** \n");
        send_packet_6(4, 1, 1);
        $write("*** send (src: 6 dst: 1 vch: 0 len: 5) *** \n");
        send_packet_6(1, 0, 5);
        $write("*** send (src: 6 dst: 4 vch: 1 len: 5) *** \n");
        send_packet_6(4, 1, 5);
        $write("*** send (src: 6 dst: 0 vch: 1 len: 1) *** \n");
        send_packet_6(0, 1, 1);
        $write("*** send (src: 6 dst: 5 vch: 0 len: 5) *** \n");
        send_packet_6(5, 0, 5);
        $write("*** send (src: 6 dst: 4 vch: 0 len: 4) *** \n");
        send_packet_6(4, 0, 4);
        $write("*** send (src: 6 dst: 7 vch: 0 len: 5) *** \n");
        send_packet_6(7, 0, 5);
        $write("*** send (src: 6 dst: 2 vch: 0 len: 4) *** \n");
        send_packet_6(2, 0, 4);
        $write("*** send (src: 6 dst: 4 vch: 1 len: 4) *** \n");
        send_packet_6(4, 1, 4);
end 

/* packet generator for n7 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 7 dst: 4 vch: 0 len: 3) *** \n");
        send_packet_7(4, 0, 3);
        $write("*** send (src: 7 dst: 5 vch: 1 len: 1) *** \n");
        send_packet_7(5, 1, 1);
        $write("*** send (src: 7 dst: 4 vch: 1 len: 1) *** \n");
        send_packet_7(4, 1, 1);
        $write("*** send (src: 7 dst: 2 vch: 1 len: 5) *** \n");
        send_packet_7(2, 1, 5);
        $write("*** send (src: 7 dst: 8 vch: 0 len: 4) *** \n");
        send_packet_7(8, 0, 4);
        $write("*** send (src: 7 dst: 1 vch: 1 len: 5) *** \n");
        send_packet_7(1, 1, 5);
        $write("*** send (src: 7 dst: 2 vch: 1 len: 4) *** \n");
        send_packet_7(2, 1, 4);
        $write("*** send (src: 7 dst: 2 vch: 1 len: 3) *** \n");
        send_packet_7(2, 1, 3);
        $write("*** send (src: 7 dst: 2 vch: 0 len: 2) *** \n");
        send_packet_7(2, 0, 2);
        $write("*** send (src: 7 dst: 4 vch: 1 len: 2) *** \n");
        send_packet_7(4, 1, 2);
        $write("*** send (src: 7 dst: 1 vch: 0 len: 5) *** \n");
        send_packet_7(1, 0, 5);
        $write("*** send (src: 7 dst: 4 vch: 0 len: 4) *** \n");
        send_packet_7(4, 0, 4);
        $write("*** send (src: 7 dst: 4 vch: 1 len: 3) *** \n");
        send_packet_7(4, 1, 3);
        $write("*** send (src: 7 dst: 0 vch: 0 len: 3) *** \n");
        send_packet_7(0, 0, 3);
        $write("*** send (src: 7 dst: 5 vch: 1 len: 5) *** \n");
        send_packet_7(5, 1, 5);
        $write("*** send (src: 7 dst: 2 vch: 0 len: 1) *** \n");
        send_packet_7(2, 0, 1);
        $write("*** send (src: 7 dst: 1 vch: 0 len: 1) *** \n");
        send_packet_7(1, 0, 1);
        $write("*** send (src: 7 dst: 1 vch: 0 len: 1) *** \n");
        send_packet_7(1, 0, 1);
        $write("*** send (src: 7 dst: 6 vch: 1 len: 4) *** \n");
        send_packet_7(6, 1, 4);
        $write("*** send (src: 7 dst: 2 vch: 0 len: 5) *** \n");
        send_packet_7(2, 0, 5);
        $write("*** send (src: 7 dst: 1 vch: 1 len: 5) *** \n");
        send_packet_7(1, 1, 5);
        $write("*** send (src: 7 dst: 1 vch: 0 len: 1) *** \n");
        send_packet_7(1, 0, 1);
        $write("*** send (src: 7 dst: 8 vch: 1 len: 1) *** \n");
        send_packet_7(8, 1, 1);
        $write("*** send (src: 7 dst: 0 vch: 1 len: 4) *** \n");
        send_packet_7(0, 1, 4);
        $write("*** send (src: 7 dst: 3 vch: 1 len: 2) *** \n");
        send_packet_7(3, 1, 2);
        $write("*** send (src: 7 dst: 8 vch: 1 len: 3) *** \n");
        send_packet_7(8, 1, 3);
        $write("*** send (src: 7 dst: 6 vch: 0 len: 2) *** \n");
        send_packet_7(6, 0, 2);
        $write("*** send (src: 7 dst: 3 vch: 0 len: 1) *** \n");
        send_packet_7(3, 0, 1);
        $write("*** send (src: 7 dst: 1 vch: 0 len: 2) *** \n");
        send_packet_7(1, 0, 2);
        $write("*** send (src: 7 dst: 8 vch: 1 len: 2) *** \n");
        send_packet_7(8, 1, 2);
        $write("*** send (src: 7 dst: 2 vch: 1 len: 1) *** \n");
        send_packet_7(2, 1, 1);
        $write("*** send (src: 7 dst: 5 vch: 0 len: 3) *** \n");
        send_packet_7(5, 0, 3);
end 

/* packet generator for n8 */ 
initial begin 
        #(STEP / 2); 
        #(STEP * 10); 
        while (~ready) begin 
                #(STEP); 
        end 

        $write("*** send (src: 8 dst: 7 vch: 1 len: 5) *** \n");
        send_packet_8(7, 1, 5);
        $write("*** send (src: 8 dst: 7 vch: 1 len: 3) *** \n");
        send_packet_8(7, 1, 3);
        $write("*** send (src: 8 dst: 4 vch: 0 len: 3) *** \n");
        send_packet_8(4, 0, 3);
        $write("*** send (src: 8 dst: 1 vch: 1 len: 2) *** \n");
        send_packet_8(1, 1, 2);
        $write("*** send (src: 8 dst: 5 vch: 0 len: 4) *** \n");
        send_packet_8(5, 0, 4);
        $write("*** send (src: 8 dst: 3 vch: 0 len: 3) *** \n");
        send_packet_8(3, 0, 3);
        $write("*** send (src: 8 dst: 6 vch: 0 len: 2) *** \n");
        send_packet_8(6, 0, 2);
        $write("*** send (src: 8 dst: 6 vch: 0 len: 1) *** \n");
        send_packet_8(6, 0, 1);
        $write("*** send (src: 8 dst: 7 vch: 0 len: 4) *** \n");
        send_packet_8(7, 0, 4);
        $write("*** send (src: 8 dst: 3 vch: 0 len: 4) *** \n");
        send_packet_8(3, 0, 4);
        $write("*** send (src: 8 dst: 1 vch: 0 len: 5) *** \n");
        send_packet_8(1, 0, 5);
        $write("*** send (src: 8 dst: 1 vch: 1 len: 5) *** \n");
        send_packet_8(1, 1, 5);
        $write("*** send (src: 8 dst: 3 vch: 0 len: 4) *** \n");
        send_packet_8(3, 0, 4);
        $write("*** send (src: 8 dst: 7 vch: 1 len: 2) *** \n");
        send_packet_8(7, 1, 2);
        $write("*** send (src: 8 dst: 0 vch: 1 len: 5) *** \n");
        send_packet_8(0, 1, 5);
        $write("*** send (src: 8 dst: 1 vch: 0 len: 5) *** \n");
        send_packet_8(1, 0, 5);
        $write("*** send (src: 8 dst: 7 vch: 1 len: 3) *** \n");
        send_packet_8(7, 1, 3);
        $write("*** send (src: 8 dst: 7 vch: 1 len: 4) *** \n");
        send_packet_8(7, 1, 4);
        $write("*** send (src: 8 dst: 4 vch: 0 len: 1) *** \n");
        send_packet_8(4, 0, 1);
        $write("*** send (src: 8 dst: 4 vch: 0 len: 5) *** \n");
        send_packet_8(4, 0, 5);
        $write("*** send (src: 8 dst: 5 vch: 1 len: 3) *** \n");
        send_packet_8(5, 1, 3);
        $write("*** send (src: 8 dst: 2 vch: 0 len: 3) *** \n");
        send_packet_8(2, 0, 3);
        $write("*** send (src: 8 dst: 7 vch: 0 len: 3) *** \n");
        send_packet_8(7, 0, 3);
        $write("*** send (src: 8 dst: 3 vch: 1 len: 4) *** \n");
        send_packet_8(3, 1, 4);
        $write("*** send (src: 8 dst: 3 vch: 1 len: 3) *** \n");
        send_packet_8(3, 1, 3);
        $write("*** send (src: 8 dst: 4 vch: 1 len: 5) *** \n");
        send_packet_8(4, 1, 5);
        $write("*** send (src: 8 dst: 4 vch: 1 len: 3) *** \n");
        send_packet_8(4, 1, 3);
        $write("*** send (src: 8 dst: 3 vch: 0 len: 3) *** \n");
        send_packet_8(3, 0, 3);
        $write("*** send (src: 8 dst: 0 vch: 0 len: 4) *** \n");
        send_packet_8(0, 0, 4);
        $write("*** send (src: 8 dst: 2 vch: 0 len: 2) *** \n");
        send_packet_8(2, 0, 2);
        $write("*** send (src: 8 dst: 3 vch: 1 len: 1) *** \n");
        send_packet_8(3, 1, 1);
        $write("*** send (src: 8 dst: 0 vch: 1 len: 2) *** \n");
        send_packet_8(0, 1, 2);
end 



/* Send/recv event monitor */ 
always @ (posedge clk) begin 
        if ( n0_ivalid_p0 == `Enable ) begin 
                $write("%d n0 send %x \n", counter, n0_idata_p0); 
                n0_sent = n0_sent + 1;
        end 
        if ( n1_ivalid_p0 == `Enable ) begin 
                $write("%d n1 send %x \n", counter, n1_idata_p0); 
                n1_sent = n1_sent + 1;
        end 
        if ( n2_ivalid_p0 == `Enable ) begin 
                $write("%d n2 send %x \n", counter, n2_idata_p0); 
                n2_sent = n2_sent + 1;
        end 
        if ( n3_ivalid_p0 == `Enable ) begin 
                $write("%d n3 send %x \n", counter, n3_idata_p0); 
                n3_sent = n3_sent + 1;
        end 
        if ( n4_ivalid_p0 == `Enable ) begin 
                $write("%d n4 send %x \n", counter, n4_idata_p0); 
                n4_sent = n4_sent + 1;
        end 
        if ( n5_ivalid_p0 == `Enable ) begin 
                $write("%d n5 send %x \n", counter, n5_idata_p0); 
                n5_sent = n5_sent + 1;
        end 
        if ( n6_ivalid_p0 == `Enable ) begin 
                $write("%d n6 send %x \n", counter, n6_idata_p0); 
                n6_sent = n6_sent + 1;
        end 
        if ( n7_ivalid_p0 == `Enable ) begin 
                $write("%d n7 send %x \n", counter, n7_idata_p0); 
                n7_sent = n7_sent + 1;
        end 
        if ( n8_ivalid_p0 == `Enable ) begin 
                $write("%d n8 send %x \n", counter, n8_idata_p0); 
                n8_sent = n8_sent + 1;
        end 
end 

always @ (posedge clk) begin 
        if ( n0_ovalid_p0 == `Enable ) begin 
                $write("        %d n0 recv %x \n", counter, n0_odata_p0); 
                n0_recv = n0_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n1_ovalid_p0 == `Enable ) begin 
                $write("        %d n1 recv %x \n", counter, n1_odata_p0); 
                n1_recv = n1_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n2_ovalid_p0 == `Enable ) begin 
                $write("        %d n2 recv %x \n", counter, n2_odata_p0); 
                n2_recv = n2_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n3_ovalid_p0 == `Enable ) begin 
                $write("        %d n3 recv %x \n", counter, n3_odata_p0); 
                n3_recv = n3_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n4_ovalid_p0 == `Enable ) begin 
                $write("        %d n4 recv %x \n", counter, n4_odata_p0); 
                n4_recv = n4_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n5_ovalid_p0 == `Enable ) begin 
                $write("        %d n5 recv %x \n", counter, n5_odata_p0); 
                n5_recv = n5_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n6_ovalid_p0 == `Enable ) begin 
                $write("        %d n6 recv %x \n", counter, n6_odata_p0); 
                n6_recv = n6_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n7_ovalid_p0 == `Enable ) begin 
                $write("        %d n7 recv %x \n", counter, n7_odata_p0); 
                n7_recv = n7_recv + 1; 
                stop     = counter + 200;
        end 
        if ( n8_ovalid_p0 == `Enable ) begin 
                $write("        %d n8 recv %x \n", counter, n8_odata_p0); 
                n8_recv = n8_recv + 1; 
                stop     = counter + 200;
        end 
end 

/* Port 0 */ 
always @ (posedge clk) begin    
	if ( noc.n0.ovalid_0 == `Enable ) $write("                %d n0(0 %d) go thru %x \n", counter, noc.n0.ovch_0, noc.n0.odata_0); 
	if ( noc.n1.ovalid_0 == `Enable ) $write("                %d n1(0 %d) go thru %x \n", counter, noc.n1.ovch_0, noc.n1.odata_0); 
	if ( noc.n2.ovalid_0 == `Enable ) $write("                %d n2(0 %d) go thru %x \n", counter, noc.n2.ovch_0, noc.n2.odata_0); 
	if ( noc.n3.ovalid_0 == `Enable ) $write("                %d n3(0 %d) go thru %x \n", counter, noc.n3.ovch_0, noc.n3.odata_0); 
	if ( noc.n4.ovalid_0 == `Enable ) $write("                %d n4(0 %d) go thru %x \n", counter, noc.n4.ovch_0, noc.n4.odata_0); 
	if ( noc.n5.ovalid_0 == `Enable ) $write("                %d n5(0 %d) go thru %x \n", counter, noc.n5.ovch_0, noc.n5.odata_0); 
	if ( noc.n6.ovalid_0 == `Enable ) $write("                %d n6(0 %d) go thru %x \n", counter, noc.n6.ovch_0, noc.n6.odata_0); 
	if ( noc.n7.ovalid_0 == `Enable ) $write("                %d n7(0 %d) go thru %x \n", counter, noc.n7.ovch_0, noc.n7.odata_0); 
	if ( noc.n8.ovalid_0 == `Enable ) $write("                %d n8(0 %d) go thru %x \n", counter, noc.n8.ovch_0, noc.n8.odata_0); 
end 
/* Port 1 */ 
always @ (posedge clk) begin    
	if ( noc.n0.ovalid_1 == `Enable ) $write("                %d n0(1 %d) go thru %x \n", counter, noc.n0.ovch_1, noc.n0.odata_1); 
	if ( noc.n1.ovalid_1 == `Enable ) $write("                %d n1(1 %d) go thru %x \n", counter, noc.n1.ovch_1, noc.n1.odata_1); 
	if ( noc.n2.ovalid_1 == `Enable ) $write("                %d n2(1 %d) go thru %x \n", counter, noc.n2.ovch_1, noc.n2.odata_1); 
	if ( noc.n3.ovalid_1 == `Enable ) $write("                %d n3(1 %d) go thru %x \n", counter, noc.n3.ovch_1, noc.n3.odata_1); 
	if ( noc.n4.ovalid_1 == `Enable ) $write("                %d n4(1 %d) go thru %x \n", counter, noc.n4.ovch_1, noc.n4.odata_1); 
	if ( noc.n5.ovalid_1 == `Enable ) $write("                %d n5(1 %d) go thru %x \n", counter, noc.n5.ovch_1, noc.n5.odata_1); 
	if ( noc.n6.ovalid_1 == `Enable ) $write("                %d n6(1 %d) go thru %x \n", counter, noc.n6.ovch_1, noc.n6.odata_1); 
	if ( noc.n7.ovalid_1 == `Enable ) $write("                %d n7(1 %d) go thru %x \n", counter, noc.n7.ovch_1, noc.n7.odata_1); 
	if ( noc.n8.ovalid_1 == `Enable ) $write("                %d n8(1 %d) go thru %x \n", counter, noc.n8.ovch_1, noc.n8.odata_1); 
end 
/* Port 2 */ 
always @ (posedge clk) begin    
	if ( noc.n0.ovalid_2 == `Enable ) $write("                %d n0(2 %d) go thru %x \n", counter, noc.n0.ovch_2, noc.n0.odata_2); 
	if ( noc.n1.ovalid_2 == `Enable ) $write("                %d n1(2 %d) go thru %x \n", counter, noc.n1.ovch_2, noc.n1.odata_2); 
	if ( noc.n2.ovalid_2 == `Enable ) $write("                %d n2(2 %d) go thru %x \n", counter, noc.n2.ovch_2, noc.n2.odata_2); 
	if ( noc.n3.ovalid_2 == `Enable ) $write("                %d n3(2 %d) go thru %x \n", counter, noc.n3.ovch_2, noc.n3.odata_2); 
	if ( noc.n4.ovalid_2 == `Enable ) $write("                %d n4(2 %d) go thru %x \n", counter, noc.n4.ovch_2, noc.n4.odata_2); 
	if ( noc.n5.ovalid_2 == `Enable ) $write("                %d n5(2 %d) go thru %x \n", counter, noc.n5.ovch_2, noc.n5.odata_2); 
	if ( noc.n6.ovalid_2 == `Enable ) $write("                %d n6(2 %d) go thru %x \n", counter, noc.n6.ovch_2, noc.n6.odata_2); 
	if ( noc.n7.ovalid_2 == `Enable ) $write("                %d n7(2 %d) go thru %x \n", counter, noc.n7.ovch_2, noc.n7.odata_2); 
	if ( noc.n8.ovalid_2 == `Enable ) $write("                %d n8(2 %d) go thru %x \n", counter, noc.n8.ovch_2, noc.n8.odata_2); 
end 
/* Port 3 */ 
always @ (posedge clk) begin    
	if ( noc.n0.ovalid_3 == `Enable ) $write("                %d n0(3 %d) go thru %x \n", counter, noc.n0.ovch_3, noc.n0.odata_3); 
	if ( noc.n1.ovalid_3 == `Enable ) $write("                %d n1(3 %d) go thru %x \n", counter, noc.n1.ovch_3, noc.n1.odata_3); 
	if ( noc.n2.ovalid_3 == `Enable ) $write("                %d n2(3 %d) go thru %x \n", counter, noc.n2.ovch_3, noc.n2.odata_3); 
	if ( noc.n3.ovalid_3 == `Enable ) $write("                %d n3(3 %d) go thru %x \n", counter, noc.n3.ovch_3, noc.n3.odata_3); 
	if ( noc.n4.ovalid_3 == `Enable ) $write("                %d n4(3 %d) go thru %x \n", counter, noc.n4.ovch_3, noc.n4.odata_3); 
	if ( noc.n5.ovalid_3 == `Enable ) $write("                %d n5(3 %d) go thru %x \n", counter, noc.n5.ovch_3, noc.n5.odata_3); 
	if ( noc.n6.ovalid_3 == `Enable ) $write("                %d n6(3 %d) go thru %x \n", counter, noc.n6.ovch_3, noc.n6.odata_3); 
	if ( noc.n7.ovalid_3 == `Enable ) $write("                %d n7(3 %d) go thru %x \n", counter, noc.n7.ovch_3, noc.n7.odata_3); 
	if ( noc.n8.ovalid_3 == `Enable ) $write("                %d n8(3 %d) go thru %x \n", counter, noc.n8.ovch_3, noc.n8.odata_3); 
end 

initial begin                     
        $dumpfile("dump.vcd"); 
        $dumpvars(0,noc_test);   
        `ifdef __POST_PR__        
        $sdf_annotate("router.sdf", noc_test.noc.n0, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n1, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n2, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n3, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n4, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n5, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n6, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n7, , "sdf.log", "MAXIMUM");
        $sdf_annotate("router.sdf", noc_test.noc.n8, , "sdf.log", "MAXIMUM");
        `endif                    
end                               

/* send_packet_0(dst, vch, len): send a packet from n0 to destination. */ 
task send_packet_0; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n0_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 0;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n0_ordy_p0[vch]) || id > 0 ) begin 
                        n0_idata_p0 <= packet[id]; n0_ivalid_p0 <= `Enable; n0_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n0_idata_p0 <= `DATAW_P1'b0; n0_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n0_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_1(dst, vch, len): send a packet from n1 to destination. */ 
task send_packet_1; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n1_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 1;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n1_ordy_p0[vch]) || id > 0 ) begin 
                        n1_idata_p0 <= packet[id]; n1_ivalid_p0 <= `Enable; n1_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n1_idata_p0 <= `DATAW_P1'b0; n1_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n1_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_2(dst, vch, len): send a packet from n2 to destination. */ 
task send_packet_2; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n2_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 2;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n2_ordy_p0[vch]) || id > 0 ) begin 
                        n2_idata_p0 <= packet[id]; n2_ivalid_p0 <= `Enable; n2_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n2_idata_p0 <= `DATAW_P1'b0; n2_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n2_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_3(dst, vch, len): send a packet from n3 to destination. */ 
task send_packet_3; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n3_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 3;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n3_ordy_p0[vch]) || id > 0 ) begin 
                        n3_idata_p0 <= packet[id]; n3_ivalid_p0 <= `Enable; n3_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n3_idata_p0 <= `DATAW_P1'b0; n3_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n3_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_4(dst, vch, len): send a packet from n4 to destination. */ 
task send_packet_4; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n4_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 4;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n4_ordy_p0[vch]) || id > 0 ) begin 
                        n4_idata_p0 <= packet[id]; n4_ivalid_p0 <= `Enable; n4_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n4_idata_p0 <= `DATAW_P1'b0; n4_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n4_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_5(dst, vch, len): send a packet from n5 to destination. */ 
task send_packet_5; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n5_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 5;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n5_ordy_p0[vch]) || id > 0 ) begin 
                        n5_idata_p0 <= packet[id]; n5_ivalid_p0 <= `Enable; n5_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n5_idata_p0 <= `DATAW_P1'b0; n5_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n5_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_6(dst, vch, len): send a packet from n6 to destination. */ 
task send_packet_6; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n6_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 6;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n6_ordy_p0[vch]) || id > 0 ) begin 
                        n6_idata_p0 <= packet[id]; n6_ivalid_p0 <= `Enable; n6_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n6_idata_p0 <= `DATAW_P1'b0; n6_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n6_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_7(dst, vch, len): send a packet from n7 to destination. */ 
task send_packet_7; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n7_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 7;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n7_ordy_p0[vch]) || id > 0 ) begin 
                        n7_idata_p0 <= packet[id]; n7_ivalid_p0 <= `Enable; n7_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n7_idata_p0 <= `DATAW_P1'b0; n7_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n7_ivalid_p0 <= `Disable;   
end             
endtask         

/* send_packet_8(dst, vch, len): send a packet from n8 to destination. */ 
task send_packet_8; 
input [31:0] dst; 
input [31:0] vch; 
input [31:0] len; 
reg [`DATAW:0]  packet [0:63]; 
integer id; 
begin      
        n8_ivalid_p0 <= `Disable;
        for ( id = 0; id < len; id = id + 1 ) 
                packet[id] <= 0; 
        #(STEP) 
        if (len == 1) 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEADTAIL; 
        else 
                packet[0][`TYPE_MSB:`TYPE_LSB] <= `TYPE_HEAD; 
        packet[0][`DST_MSB:`DST_LSB] <= dst;    /* Dest ID (4-bit)   */ 
        packet[0][`SRC_MSB:`SRC_LSB] <= 8;     /* Source ID (4-bit) */ 
        packet[0][`VCH_MSB:`VCH_LSB] <= vch;    /* Vch ID (4-bit)    */ 
        for ( id = 1; id < len; id = id + 1 ) begin 
                if ( id == len - 1 )
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_TAIL; 
                else 
                        packet[id][`TYPE_MSB:`TYPE_LSB] <= `TYPE_DATA; 
                packet[id][15:12] <= id;	/* Flit ID   (4-bit) */ 
                packet[id][31:16] <= counter;	/* Enqueue time (16-bit) */ 
        end 
        id = 0;                                 
        while ( id < len ) begin                
                #(STEP)                         
                /* Packet level flow control */ 
                if ( (id == 0 && n8_ordy_p0[vch]) || id > 0 ) begin 
                        n8_idata_p0 <= packet[id]; n8_ivalid_p0 <= `Enable; n8_ivch_p0 <= vch; id = id + 1; 
                end else begin    
                        n8_idata_p0 <= `DATAW_P1'b0; n8_ivalid_p0 <= `Disable;  
                end 
        end 
        #(STEP) 
        n8_ivalid_p0 <= `Disable;   
end             
endtask         

/* noc_reset(): Reset all routers. */ 
task noc_reset; 
begin           
        rst_    <= `Enable_;   
        #(STEP)                
        n0_idata_p0 <= `DATAW_P1'h0; n0_ivalid_p0 <= `Disable; n0_ivch_p0 <= `VCHW_P1'h0;
        n1_idata_p0 <= `DATAW_P1'h0; n1_ivalid_p0 <= `Disable; n1_ivch_p0 <= `VCHW_P1'h0;
        n2_idata_p0 <= `DATAW_P1'h0; n2_ivalid_p0 <= `Disable; n2_ivch_p0 <= `VCHW_P1'h0;
        n3_idata_p0 <= `DATAW_P1'h0; n3_ivalid_p0 <= `Disable; n3_ivch_p0 <= `VCHW_P1'h0;
        n4_idata_p0 <= `DATAW_P1'h0; n4_ivalid_p0 <= `Disable; n4_ivch_p0 <= `VCHW_P1'h0;
        n5_idata_p0 <= `DATAW_P1'h0; n5_ivalid_p0 <= `Disable; n5_ivch_p0 <= `VCHW_P1'h0;
        n6_idata_p0 <= `DATAW_P1'h0; n6_ivalid_p0 <= `Disable; n6_ivch_p0 <= `VCHW_P1'h0;
        n7_idata_p0 <= `DATAW_P1'h0; n7_ivalid_p0 <= `Disable; n7_ivch_p0 <= `VCHW_P1'h0;
        n8_idata_p0 <= `DATAW_P1'h0; n8_ivalid_p0 <= `Disable; n8_ivch_p0 <= `VCHW_P1'h0;
        #(STEP)                
        rst_    <= `Disable_;  

end             
endtask         

endmodule 
