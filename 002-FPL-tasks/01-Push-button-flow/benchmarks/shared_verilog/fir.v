module fir (
    input wire clk,
    input wire reset,
    input wire clk_ena,
    input wire i_valid,
    input wire [31:0] i_in,
    output reg o_valid,
    output reg [31:0] o_out
);

    // Internal registers and wires
    reg [31:0] coeff [0:4]; // Example coefficients for a 5-tap FIR filter
    reg [31:0] shift_reg [0:4];
    integer i;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            o_valid <= 0;
            o_out <= 0;
            for (i = 0; i < 5; i = i + 1) begin
                shift_reg[i] <= 0;
            end
        end else if (clk_ena && i_valid) begin
            // Shift the input samples
            for (i = 4; i > 0; i = i - 1) begin
                shift_reg[i] <= shift_reg[i-1];
            end
            shift_reg[0] <= i_in;

            // Compute the FIR filter output
            o_out <= 0;
            for (i = 0; i < 5; i = i + 1) begin
                o_out <= o_out + shift_reg[i] * coeff[i];
            end

            o_valid <= 1;
        end else begin
            o_valid <= 0;
        end
    end

    initial begin
        // Initialize coefficients (example values)
        coeff[0] = 32'h0001;
        coeff[1] = 32'h0002;
        coeff[2] = 32'h0003;
        coeff[3] = 32'h0002;
        coeff[4] = 32'h0001;
    end

endmodule