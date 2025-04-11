module wrapper_pe (
    input clk,
    input reset,
    input valid_in,  // AXI-style tvalid, high for one cycle
    input [127:0] data_in,
    output [127:0] data_out,
    output done  // Flag raised 20 cycles after valid_in
);

    reg [4:0] counter;  // 5-bit counter (0 to 19)
    reg valid_detected;  // Latches when valid_in is detected

    // Instantiate the top module
    pe_load top_inst (
        .clk(clk),
        .reset(reset),
        .top_inp(data_in),
        .top_outp(data_out)
    );

    // Detect valid_in and start counter
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            valid_detected <= 1'b0;
            counter <= 5'b0;
        end else begin
            // Latch valid_in (only for one cycle)
            if (valid_in) begin
                valid_detected <= 1'b1;
                counter <= 5'b0;

            end

            // Counter logic
            if (valid_detected) begin
                if (counter < 5'd19) begin
                    counter <= counter + 1'b1;
                end else begin
                    counter <= 5'b0;
                    valid_detected <= 1'b0;
                end
            end else begin
                counter <= 5'b0;
            end
        end
    end

    // Flag is high when counter reaches 19 (20th cycle)
    assign flag_out = (counter == 5'd19) & valid_detected;

endmodule