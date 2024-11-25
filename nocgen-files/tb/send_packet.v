`include "/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/nocgen-files/define.h"

module send_packet(clk, dst, src, vch, data, send_en, ordy_p0, ivalid_p0, ivch_p0, idata_p0);
        input clk ;
        input [3:0] dst ; 
        input [3:0] src ;
        input [3:0] vch ;
        input [15:0] data ;
        // input [3:0] len,
        input send_en ;
        input [1:0] ordy_p0 ;
        output reg ivalid_p0 ;
        output reg ivch_p0 ;
        output reg [34:0] idata_p0 ;

reg [34:0]  packet [0:1]; 
integer counter; 

always @(posedge clk) begin
        if (send_en == 1) begin
                ivalid_p0 <= `Disable;   
                packet[0][3:0] <= dst;    /* Dest ID (4-bit)   */ 
                packet[0][7:4] <= src; // added src     /* Source ID (4-bit) */ 
                packet[0][11:8] <= vch;    /* Vch ID (4-bit)    */ 
                packet[0][34:32] <= `TYPE_HEAD;

                packet[1][34:32] <= `TYPE_TAIL; 
                packet[1][15:12] <= 1;	/* Flit ID   (4-bit) */ 
                packet[1][31:16] <= data;	/* data (16-bit) */ 

                counter = 1;
        end else begin
                ivalid_p0 <= `Disable;   
                packet[0] <= 35'b0;
                packet[1] <= 35'b0;
        end

        if (counter == 1) begin
                if (ordy_p0[vch] ==  1 ) begin 
                        idata_p0 <= packet[0];
                        ivalid_p0 <= `Enable;
                        ivch_p0 <= vch;
                        counter = 2;
                end else begin    
                        idata_p0 <= 35'b0;
                        ivalid_p0 <= `Disable;  
                end
        end
        if (counter == 2) begin
                        idata_p0 <= packet[0];
                        ivalid_p0 <= `Enable;
                        ivch_p0 <= vch;
                        counter = 0;
        end 
end
endmodule