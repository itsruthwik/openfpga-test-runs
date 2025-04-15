module dpe # (
    parameter LANES = 4,
    parameter DATAW = 32,
    parameter IPREC = 8,
    parameter MPREC = 16,
    parameter OPREC = 32,
    parameter ADDER_STAGES = 2
)(
    input              clk,
    input              rst,
    input              i_valid,
    input  [DATAW-1:0] i_dataa,
    input  [DATAW-1:0] i_datab,
    output             o_valid,
    output [OPREC-1:0] o_result
);

// Input registers
wire signed [LANES*IPREC-1:0] dataa;
wire signed [LANES*IPREC-1:0] datab;
reg signed  [LANES*IPREC-1:0] r_dataa;
reg signed  [LANES*IPREC-1:0] r_datab;
reg r_ivalid;

// Multiplication registers
reg signed [LANES*MPREC-1:0] r_mrslt;
reg r_mvalid;

// Adder tree registers
reg signed [MPREC-1:0] r_arslt_s1_0;
reg signed [MPREC-1:0] r_arslt_s1_1;
reg signed [OPREC-1:0] r_arslt_s2;
reg [ADDER_STAGES-1:0] r_avalid;

genvar j;
generate
for (j = 0; j < LANES; j = j + 1) begin: split_input
    assign dataa[(j+1)*IPREC-1:j*IPREC] = i_dataa[(j+1)*IPREC-1:j*IPREC];
    assign datab[(j+1)*IPREC-1:j*IPREC] = i_datab[(j+1)*IPREC-1:j*IPREC];
end
endgenerate

integer i;
always @(posedge clk) begin
    if (rst) begin
        // Reset input registers
        r_dataa <= {LANES*IPREC{1'b0}};
        r_datab <= {LANES*IPREC{1'b0}};
        r_ivalid <= 1'b0;
        
        // Reset multiplication registers
        r_mrslt <= {LANES*MPREC{1'b0}};
        r_mvalid <= 1'b0;
        
        // Reset adder tree registers
        r_arslt_s1_0 <= {MPREC{1'b0}};
        r_arslt_s1_1 <= {MPREC{1'b0}};
        r_arslt_s2 <= {OPREC{1'b0}};
        
        // Reset valid stages
        r_avalid <= {ADDER_STAGES{1'b0}};
    end else begin
        // Register inputs
        r_dataa <= dataa;
        r_datab <= datab;
        r_ivalid <= i_valid;

        // Perform multiplication (element-wise)
        for (i = 0; i < LANES; i = i + 1) begin
            r_mrslt[(i+1)*MPREC-1:i*MPREC] <= 
                (r_dataa[(i+1)*IPREC-1:i*IPREC]) * 
                (r_datab[(i+1)*IPREC-1:i*IPREC]);
        end
        r_mvalid <= r_ivalid;

        // Adder tree stage 1: sum pairs of multiplication results
        r_arslt_s1_0 <= (r_mrslt[MPREC-1:0]) + 
                       (r_mrslt[2*MPREC-1:MPREC]);
        r_arslt_s1_1 <= (r_mrslt[3*MPREC-1:2*MPREC]) + 
                       (r_mrslt[4*MPREC-1:3*MPREC]);

        // Adder tree stage 2: sum the results of stage 1
        r_arslt_s2 <= (r_arslt_s1_0) + (r_arslt_s1_1);

        // Shift valid signals through adder stages
        r_avalid[0] <= r_mvalid;
        for (i = 1; i < ADDER_STAGES; i = i + 1) begin
            r_avalid[i] <= r_avalid[i-1];
        end
    end
end

assign o_result = r_arslt_s2;
assign o_valid  = r_avalid[ADDER_STAGES-1];

endmodule