module axis_pe (
    input clk,
    input reset,
    input axis_in_tvalid,  // AXI-style tvalid, high for one cycle
    input [127:0] axis_in_tdata,
    output [127:0] axis_out_tdata,
    input axis_in_tdest,  // AXI-style tdest
    output axis_in_tready,  // AXI-style tready
    output axis_out_tvalid,  // AXI-style tvalid
    output axis_out_tdest,  // AXI-style tdest
    input axis_out_tready  // AXI-style tready
      // Flag raised 20 cycles after valid_in
);

wire valid_in;

wire [127:0] data_in;
wire [127:0] data_out;

assign data_in = axis_in_tdata;
assign axis_out_tdata = data_out;
wire done;
assign axis_out_tvalid = done;
assign axis_out_tdest = axis_in_tdest;
assign axis_in_tready = axis_out_tready;

assign valid_in = axis_in_tvalid;
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