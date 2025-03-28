module sha1 (
    input wire clk_i,
    input wire rst_i,
    input wire [31:0] text_i,
    output wire [31:0] text_o,
    input wire [2:0] cmd_i,
    input wire cmd_w_i,
    output wire cmd_o
);

    // Internal registers and wires
    reg [31:0] hash_reg;
    reg [31:0] text_reg;
    reg cmd_reg;

    always @(posedge clk_i or posedge rst_i) begin
        if (rst_i) begin
            hash_reg <= 32'h0;
            text_reg <= 32'h0;
            cmd_reg <= 1'b0;
        end else begin
            if (cmd_w_i) begin
                text_reg <= text_i;
                cmd_reg <= cmd_i[0];
            end
            if (cmd_reg) begin
                hash_reg <= text_reg ^ 32'h5A5A5A5A;
            end
        end
    end

    assign text_o = hash_reg;
    assign cmd_o = cmd_reg;

endmodule