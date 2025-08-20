
module FPAddSub_d_dspchain(
    clk,        // Clock input for pipelining
    rst,        // Reset input
    ZeroSum,
    NormE,
    NormM,
    R,
    S,
    G,
    Sa,
    Sb,
    Ctrl,
    MaxAB,
    NegE,
    InputExc,
    P,
    Flags 
);

    // Input ports (unchanged)
    input clk, rst;
    input ZeroSum;
    input [8:0] NormE;
    input [22:0] NormM;
    input R, S, G;
    input Sa, Sb;
    input Ctrl;
    input MaxAB;
    input NegE;
    input [4:0] InputExc;
    
    // Output ports
    output [31:0] P;
    output [4:0] Flags;
    
    // STAGE 1: Calculate RoundUp and initial values
    reg ZeroSum_1, G_1, R_1, S_1;
    reg [22:0] NormM_1;
    reg [8:0] NormE_1;
    reg [4:0] InputExc_1;
    reg NegE_1, Sa_1, Sb_1, Ctrl_1, MaxAB_1;
    reg RoundUp_1;
    
    // STAGE 2: Calculate rounded mantissa and exponent
    reg [23:0] RoundUpM_2;
    reg [22:0] RoundM_2, NormM_2;
    reg [8:0] NormE_2;
    reg RoundUp_2, ZeroSum_2;
    reg [4:0] InputExc_2;
    reg NegE_2, Sa_2, Sb_2, Ctrl_2, MaxAB_2;
    reg RoundOF_2;
    
    // STAGE 3: Calculate result sign and adjusted exponent
    reg [22:0] RoundM_3;
    reg [8:0] RoundE_3;
    reg FSgn_3, ZeroSum_3;
    reg [4:0] InputExc_3;
    reg NegE_3, R_3, S_3;
    reg EOF_3;
    
    // STAGE 4: Assemble final result and flags
    reg [31:0] Z_4;
    reg [4:0] Flags_4;
    
    // STAGE 1: RoundUp calculation
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            // Reset stage 1 registers
            ZeroSum_1 <= 0;
            G_1 <= 0;
            R_1 <= 0;
            S_1 <= 0;
            NormM_1 <= 0;
            NormE_1 <= 0;
            InputExc_1 <= 0;
            NegE_1 <= 0;
            Sa_1 <= 0;
            Sb_1 <= 0;
            Ctrl_1 <= 0;
            MaxAB_1 <= 0;
            RoundUp_1 <= 0;
        end else begin
            // Register inputs
            ZeroSum_1 <= ZeroSum;
            G_1 <= G;
            R_1 <= R;
            S_1 <= S;
            NormM_1 <= NormM;
            NormE_1 <= NormE;
            InputExc_1 <= InputExc;
            NegE_1 <= NegE;
            Sa_1 <= Sa;
            Sb_1 <= Sb;
            Ctrl_1 <= Ctrl;
            MaxAB_1 <= MaxAB;
            
            // Calculate round up condition
            RoundUp_1 <= (G & ((R | S) | NormM[0]));
        end
    end
    
    // STAGE 2: Mantissa rounding
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            // Reset stage 2 registers
            RoundUpM_2 <= 0;
            RoundM_2 <= 0;
            NormM_2 <= 0;
            NormE_2 <= 0;
            RoundUp_2 <= 0;
            ZeroSum_2 <= 0;
            InputExc_2 <= 0;
            NegE_2 <= 0;
            Sa_2 <= 0;
            Sb_2 <= 0;
            Ctrl_2 <= 0;
            MaxAB_2 <= 0;
            RoundOF_2 <= 0;
        end else begin
            // Calculate rounded up mantissa
            RoundUpM_2 <= {1'b0, NormM_1} + 24'h000001;
            NormM_2 <= NormM_1;
            NormE_2 <= NormE_1;
            RoundUp_2 <= RoundUp_1;
            ZeroSum_2 <= ZeroSum_1;
            InputExc_2 <= InputExc_1;
            NegE_2 <= NegE_1;
            Sa_2 <= Sa_1;
            Sb_2 <= Sb_1;
            Ctrl_2 <= Ctrl_1;
            MaxAB_2 <= MaxAB_1;
            
            // Select rounded mantissa
            RoundM_2 <= RoundUp_1 ? RoundUpM_2[22:0] : NormM_1;
            
            // Check for overflow when rounding
            RoundOF_2 <= RoundUp_1 & RoundUpM_2[23];
        end
    end
    
    // STAGE 3: Exponent adjustment and sign calculation
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            // Reset stage 3 registers
            RoundM_3 <= 0;
            RoundE_3 <= 0;
            FSgn_3 <= 0;
            ZeroSum_3 <= 0;
            InputExc_3 <= 0;
            NegE_3 <= 0;
            R_3 <= 0;
            S_3 <= 0;
            EOF_3 <= 0;
        end else begin
            // Pass through mantissa
            RoundM_3 <= RoundM_2;
            
            // Calculate final exponent with overflow compensation
            RoundE_3 <= ZeroSum_2 ? 9'b0 : (NormE_2 + (RoundOF_2 ? 1'b1 : 1'b0));
            
            // Final sign calculation
            FSgn_3 <= (ZeroSum_2 & (Sa_2 ^ Sb_2)) | 
                     (ZeroSum_2 ? (Sa_2 & Sb_2 & ~Ctrl_2) : 
                     ((~MaxAB_2 & Sa_2) | ((Ctrl_2 ^ Sb_2) & (MaxAB_2 | Sa_2))));
            
            // Pass through other signals
            ZeroSum_3 <= ZeroSum_2;
            InputExc_3 <= InputExc_2;
            NegE_3 <= NegE_2;
            R_3 <= R_1;  // Pass through from stage 1
            S_3 <= S_1;  // Pass through from stage 1
            
            // Check exponent overflow
            EOF_3 <= RoundE_3[8];
        end
    end
    
    // STAGE 4: Assemble final result and exception flags
    always @(posedge clk  or posedge rst) begin
        if (rst) begin
            // Reset output registers
            Z_4 <= 0;
            Flags_4 <= 0;
        end else begin
            // Assemble final result
            Z_4 <= {FSgn_3, RoundE_3[7:0], RoundM_3};
            
            // Calculate exception flags
            Flags_4 <= {
                EOF_3 | InputExc_3[1] | InputExc_3[0],                 // Overflow
                NegE_3 & (R_3 | S_3),                                 // Underflow
                &(Z_4[30:23]) & ~|(Z_4[30:23]) & ~InputExc_3[1] & ~InputExc_3[0],  // Div-by-zero
                |(InputExc_3[4:2]),                                   // Invalid
                (R_3 | S_3) | EOF_3 | (NegE_3 & (R_3 | S_3))          // Inexact
            };
        end
    end
    
    // Assign outputs
    assign P = Z_4;
    assign Flags = Flags_4;

endmodule


// module FPAddSub_d_dspchain (a, b, clk, rst);

// input a, clk, rst;
// output reg b;

// always @(posedge clk or posedge rst) begin
//     if (rst) begin
//         b <= 0;
//     end else begin
//         b <= a;
//     end
// end
// endmodule