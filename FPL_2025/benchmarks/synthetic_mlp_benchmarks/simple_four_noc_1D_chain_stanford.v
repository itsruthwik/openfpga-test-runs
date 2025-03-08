/*
    Top level modules to instantiate a 1D chain of four routers.
    Each router receives 32-bit data, processes it, passes it to the next router.
    
    Uses the Stanford router_wrap interface which has channel/flow control ports.
*/

module simple_four_noc_1D_chain (
    clk,
    reset,
    data_out
);

parameter noc_dw = 32; // NoC Data Width
parameter byte_dw = 8; 

/*****************INPUT/OUTPUT Definition********************/
input wire clk;
input wire reset;

output wire [noc_dw * 2 - 1:0] data_out;

/*******************Internal Variables**********************/
// Standard NoC signals
wire [noc_dw - 1 : 0] tg_data;
wire tg_valid;

// Router interconnection signals - using the Stanford router interface
// Router 1 signals
wire [0:3] router1_address;
wire [0:189] router1_channel_in;
wire [0:14] router1_flow_ctrl_out;
wire [0:189] router1_channel_out;
wire [0:14] router1_flow_ctrl_in;
wire router1_error;

// Router 2 signals
wire [0:3] router2_address;
wire [0:189] router2_channel_in;
wire [0:14] router2_flow_ctrl_out;
wire [0:189] router2_channel_out;
wire [0:14] router2_flow_ctrl_in;
wire router2_error;

// Router 3 signals
wire [0:3] router3_address;
wire [0:189] router3_channel_in;
wire [0:14] router3_flow_ctrl_out;
wire [0:189] router3_channel_out;
wire [0:14] router3_flow_ctrl_in;
wire router3_error;

// Router 4 signals
wire [0:3] router4_address;
wire [0:189] router4_channel_in;
wire [0:14] router4_flow_ctrl_out;
wire [0:189] router4_channel_out;
wire [0:14] router4_flow_ctrl_in;
wire router4_error;

// Data processing signals
wire [noc_dw-1:0] si_2_data_in, si_2_data_out;
wire si_2_valid_in, si_2_valid_out, si_2_ready;
wire [noc_dw-1:0] tp_2_data;
wire tp_2_valid;

wire [noc_dw-1:0] si_3_data_in, si_3_data_out;
wire si_3_valid_in, si_3_valid_out, si_3_ready;
wire [noc_dw-1:0] tp_3_data;
wire tp_3_valid;

wire [noc_dw-1:0] si_4_data_in, si_4_data_out;
wire si_4_valid_in, si_4_valid_out, si_4_ready;

// Packet conversion signals
reg [noc_dw-1:0] packet_data_reg;
reg packet_valid_reg;
reg [0:3] packet_dest_reg;

/*******************Module Instantiation********************/
// Traffic generator
traffic_generator tg(
    .clk(clk),
    .reset(reset),
    .tdata(tg_data),
    .tvalid(tg_valid)
);

// Router addressing
assign router1_address = 4'b0001;
assign router2_address = 4'b0010;
assign router3_address = 4'b0011;
assign router4_address = 4'b0100;

// First router packet generation logic
always @(posedge clk or posedge reset) begin
    if (reset) begin
        packet_data_reg <= 0;
        packet_valid_reg <= 0;
        packet_dest_reg <= 0;
    end
    else if (tg_valid) begin
        packet_data_reg <= tg_data;
        packet_valid_reg <= 1;
        packet_dest_reg <= 4'b0010; // Route to router 2
    end
    else begin
        packet_valid_reg <= 0;
    end
end

// Create packet format for router 1
// Format: [header(32) | payload(32) | tail(1)]
// Note: Real channel_in structure should match router implementation
assign router1_channel_in[0:31] = {packet_dest_reg, 28'h0}; // Header with destination
assign router1_channel_in[32:63] = packet_data_reg;         // Payload data
assign router1_channel_in[64] = packet_valid_reg;           // Valid bit
assign router1_channel_in[65:189] = 125'b0;                 // Unused bits

// Flow control signals - all zeros for simplicity
assign router1_flow_ctrl_in = 15'b0;

// Router 1
router_wrap router1(
    .clk(clk),
    .reset(reset),
    .router_address(router1_address),
    .channel_in_ip(router1_channel_in),
    .flow_ctrl_out_ip(router1_flow_ctrl_out),
    .channel_out_op(router1_channel_out),
    .flow_ctrl_in_op(router1_flow_ctrl_in),
    .error(router1_error)
);

// Router 2
router_wrap router2(
    .clk(clk),
    .reset(reset),
    .router_address(router2_address),
    .channel_in_ip(router2_channel_in),
    .flow_ctrl_out_ip(router2_flow_ctrl_out),
    .channel_out_op(router2_channel_out),
    .flow_ctrl_in_op(router2_flow_ctrl_in),
    .error(router2_error)
);

// Extract data from Router 2 for processing
assign si_2_data_in = router2_channel_out[32:63];         // Extract payload
assign si_2_valid_in = router2_channel_out[64];           // Extract valid bit

// Slave interface and processing for router 2
slave_interface si_2(
    .clk(clk),
    .reset(reset),
    .tvalid_in(si_2_valid_in),
    .tdata_in(si_2_data_in),
    .tready(si_2_ready),
    .tdata_out(si_2_data_out),
    .tvalid_out(si_2_valid_out),
    .tstrb(8'd0),
    .tkeep(8'd0),
    .tid(8'd0),
    .tdest(8'd0),
    .tuser(8'd0),
    .tlast(1'd0)
);

traffic_processor tp_2(
    .clk(clk),
    .reset(reset),
    .tdata_in(si_2_data_out),
    .tvalid_in(si_2_valid_out),
    .tdata_out(tp_2_data),
    .tvalid_out(tp_2_valid)
);

// Create packet format for router 2 -> router 3
assign router3_channel_in[0:31] = {4'b0011, 28'h0};      // Header with destination = router 3
assign router3_channel_in[32:63] = tp_2_data;            // Payload from processor
assign router3_channel_in[64] = tp_2_valid;              // Valid bit
assign router3_channel_in[65:189] = 125'b0;              // Unused bits

// Flow control signals - all zeros for simplicity
assign router3_flow_ctrl_in = 15'b0;

// Router 3
router_wrap router3(
    .clk(clk),
    .reset(reset),
    .router_address(router3_address),
    .channel_in_ip(router3_channel_in),
    .flow_ctrl_out_ip(router3_flow_ctrl_out),
    .channel_out_op(router3_channel_out),
    .flow_ctrl_in_op(router3_flow_ctrl_in),
    .error(router3_error)
);

// Extract data from Router 3 for processing
assign si_3_data_in = router3_channel_out[32:63];       // Extract payload
assign si_3_valid_in = router3_channel_out[64];         // Extract valid bit

// Slave interface and processing for router 3
slave_interface si_3(
    .clk(clk),
    .reset(reset),
    .tvalid_in(si_3_valid_in),
    .tdata_in(si_3_data_in),
    .tready(si_3_ready),
    .tdata_out(si_3_data_out),
    .tvalid_out(si_3_valid_out),
    .tstrb(8'd0),
    .tkeep(8'd0),
    .tid(8'd0),
    .tdest(8'd0),
    .tuser(8'd0),
    .tlast(1'd0)
);

traffic_processor tp_3(
    .clk(clk),
    .reset(reset),
    .tdata_in(si_3_data_out),
    .tvalid_in(si_3_valid_out),
    .tdata_out(tp_3_data),
    .tvalid_out(tp_3_valid)
);

// Create packet format for router 3 -> router 4
assign router4_channel_in[0:31] = {4'b0100, 28'h0};      // Header with destination = router 4
assign router4_channel_in[32:63] = tp_3_data;            // Payload from processor
assign router4_channel_in[64] = tp_3_valid;              // Valid bit
assign router4_channel_in[65:189] = 125'b0;              // Unused bits

// Flow control signals - all zeros for simplicity
assign router4_flow_ctrl_in = 15'b0;

// Router 4
router_wrap router4(
    .clk(clk),
    .reset(reset),
    .router_address(router4_address),
    .channel_in_ip(router4_channel_in),
    .flow_ctrl_out_ip(router4_flow_ctrl_out),
    .channel_out_op(router4_channel_out),
    .flow_ctrl_in_op(router4_flow_ctrl_in),
    .error(router4_error)
);

// Extract data from Router 4 for final processing
assign si_4_data_in = router4_channel_out[32:63];       // Extract payload
assign si_4_valid_in = router4_channel_out[64];         // Extract valid bit

// Final slave interface and processing to output
slave_interface si_4(
    .clk(clk),
    .reset(reset),
    .tvalid_in(si_4_valid_in),
    .tdata_in(si_4_data_in),
    .tready(si_4_ready),
    .tdata_out(si_4_data_out),
    .tvalid_out(si_4_valid_out),
    .tstrb(8'd0),
    .tkeep(8'd0),
    .tid(8'd0),
    .tdest(8'd0),
    .tuser(8'd0),
    .tlast(1'd0)
);

traffic_processor tp_4(
    .clk(clk),
    .reset(reset),
    .tdata_in(si_4_data_out),
    .tvalid_in(si_4_valid_out),
    .tdata_out(data_out),
    .tvalid_out()
);

endmodule

/* This is the traffic generator module. This
    generate data to be sent over the NoC to the
    traffic processor module*/

module traffic_generator(
    clk,
    reset,
    tdata,
    tvalid
);

parameter noc_dw = 32; //NoC Data Width
parameter byte_dw = 8;

/*****************INPUT/OUTPUT Definition********************/
input wire clk;
input wire reset;

output reg [noc_dw - 1 : 0] tdata;
output reg tvalid;

/******************Sequential Logic*************************/
//a simple counter to test functionality
always @ (posedge clk, posedge reset)
begin
    if(reset == 1'b1) begin
        tdata <= 0;
        tvalid <= 1'b0;
    end
    else begin
        tdata <= tdata + 1;
        tvalid <= 1'b1;
    end
end

endmodule

/* This is the traffic processor module. This
    accepts data coming in from the NoC and
    accumulates it.
*/
module traffic_processor (
    clk,
    reset,
    tdata_in,
    tvalid_in,
    tdata_out,
    tvalid_out
);

/*****************Parameter Declarations********************/
parameter noc_dw = 32;

/*****************INPUT/OUTPUT Definition*******************/
input wire clk;
input wire reset;
input wire [noc_dw-1:0] tdata_in;
input wire tvalid_in;

output wire [noc_dw * 2 - 1 :0] tdata_out;
output wire tvalid_out;

/*******************Internal Variables**********************/
reg [noc_dw*2-1:0]        sum_reg;
reg valid_reg;
wire [noc_dw*2-1:0]        data_extended;

/******************Sequential Logic*************************/
/*
    This module will wait on the tvalid signal
    to indicate whether data is available to read
    in from the input. When the data is read in, it is
    then added to the output signal. The output will act
    as an accumulator.

*/
assign data_extended = {{noc_dw{1'b0}}, tdata_in};
// handle the accumulation
always @(posedge clk)
begin
    if (reset)begin
            sum_reg <= 0;
            valid_reg <= 1'b0;
        end
    else begin
            if (tvalid_in == 1'b1) begin
                sum_reg <= sum_reg + data_extended;
                valid_reg <= 1'b1;
            end
        end
end

/*******************Output Logic***************************/
assign tdata_out = sum_reg;
assign tvalid_out = valid_reg;

endmodule

// /* This is the slave interface module for router communication */
// module slave_interface(
//     clk,
//     reset,
//     tvalid_in,
//     tdata_in,
//     tready,
//     tdata_out,
//     tvalid_out,
//     tstrb,
//     tkeep,
//     tid,
//     tdest,
//     tuser,
//     tlast
// );

// parameter noc_dw = 32;
// parameter byte_dw = 8;

// // Inputs
// input wire clk;
// input wire reset;
// input wire tvalid_in;
// input wire [noc_dw-1:0] tdata_in;
// input wire [byte_dw-1:0] tstrb;
// input wire [byte_dw-1:0] tkeep;
// input wire [byte_dw-1:0] tid;
// input wire [byte_dw-1:0] tdest;
// input wire [byte_dw-1:0] tuser;
// input wire tlast;

// // Outputs
// output wire tready;
// output wire [noc_dw-1:0] tdata_out;
// output wire tvalid_out;

// // Internal registers
// reg [noc_dw-1:0] data_reg;
// reg valid_reg;

// // Simple passthrough for this example
// always @(posedge clk or posedge reset) begin
//     if (reset) begin
//         data_reg <= 0;
//         valid_reg <= 0;
//     end
//     else begin
//         data_reg <= tdata_in;
//         valid_reg <= tvalid_in;
//     end
// end

// // Always ready to receive data
// assign tready = 1'b1;
// assign tdata_out = data_reg;
// assign tvalid_out = valid_reg;

// endmodule
