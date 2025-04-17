module axis_master(
    input clk,
    input reset,        // Active-high reset
    // AXI-STREAM Interface to Router (TX = Master Output)
    output axis_out_tvalid,
    output [127:0] axis_out_tdata,
    output [3:0] axis_out_tdest,
    input axis_out_tready,
    // AXI-STREAM Interface from Router (RX = Master Input, ignored)
    input axis_in_tvalid,
    input [127:0] axis_in_tdata,
    input [3:0] axis_in_tdest,
    output axis_in_tready
);


    // AXI-STREAM Interface to Router (TX = Master Output)
 reg axis_tx_tvalid;
wire [127:0] axis_tx_tdata;
wire [3:0] axis_tx_tdest;
wire axis_tx_tready;
// AXI-STREAM Interface from Router (RX = Master Input, ignored)
wire axis_rx_tvalid;
wire [127:0] axis_rx_tdata;
wire [3:0] axis_rx_tdest;
wire axis_rx_tready;

assign axis_rx_tdata = axis_in_tdata;
assign axis_rx_tdest = axis_in_tdest;
assign axis_rx_tvalid = axis_in_tvalid;
assign axis_in_tready = axis_rx_tready;

assign axis_out_tdata = axis_tx_tdata;
assign axis_out_tdest = axis_tx_tdest;
assign axis_out_tvalid = axis_tx_tvalid;
assign axis_tx_tready = axis_out_tready;


// Counter to track 25 cycles
reg [7:0] cycle_counter; // 8-bit (0 to 24)

// LFSR for random address (4-bit) and data (128-bit)
reg [3:0] lfsr_dest;  // 4-bit LFSR for destination (1-15)
reg [127:0] lfsr_data; // 128-bit LFSR for data

// Initialize LFSRs with non-zero seed (example seeds)
initial begin
    lfsr_dest = 4'b0001;
    lfsr_data = 128'hA5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5;
end

// LFSR update logic (advance every cycle)
always @(posedge clk) begin
    if (reset) begin
        lfsr_dest <= 4'b0001;
        lfsr_data <= 128'hA5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5;
    end else begin
        // 4-bit LFSR (polynomial x^4 + x^3 + 1)
        lfsr_dest <= {lfsr_dest[2:0], lfsr_dest[3] ^ lfsr_dest[2]};
        // 128-bit LFSR (polynomial x^128 + x^126 + x^101 + x^99 + 1)
        lfsr_data <= {lfsr_data[126:0], lfsr_data[127] ^ lfsr_data[125] ^ lfsr_data[100] ^ lfsr_data[98]};
    end
end

// Counter logic (reset on successful transaction)
always @(posedge clk or posedge reset) begin
    if (reset) begin
        cycle_counter <= 8'd0;
        axis_tx_tvalid <= 1'b0;
    end else begin
        if (axis_tx_tvalid) begin
            if (axis_tx_tready) begin
                // Transaction accepted: reset counter and lower tvalid
                cycle_counter <= 8'd0;
                axis_tx_tvalid <= 1'b0;
            end
        end else begin
            if (cycle_counter == 8'd24) begin
                // 25 cycles reached: assert tvalid
                axis_tx_tvalid <= 1'b1;
            end else begin
                cycle_counter <= cycle_counter + 8'd1;
            end
        end
    end
end

// Address generation (ensure 1-15)
assign axis_tx_tdest = (lfsr_dest == 4'b0000) ? 4'b0001 : lfsr_dest;

// Data generation
assign axis_tx_tdata = lfsr_data;

// Ignore incoming data (tie tready to 0)
assign axis_rx_tready = 1'b0;

endmodule