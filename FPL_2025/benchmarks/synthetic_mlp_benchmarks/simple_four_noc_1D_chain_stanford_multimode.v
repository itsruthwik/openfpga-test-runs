/*
    Top level modules to instantiate an AXI handshake between four routers.
    Each routers receives 32-bit data, processes it, pass it to the next router.
    For now, all of our routers traffic processor's module does the same calculation, 
    but in a more complicated design, we can add different logic to each router's traffic 
    processor module.
*/

module simple_four_noc_1D_chain (
    clk,
    reset,
    data_out
);

parameter noc_dw = 32; //NoC Data Width
parameter byte_dw = 8; 

/*****************INPUT/OUTPUT Definition********************/
input wire clk;
input wire reset;

output wire [noc_dw * 2 - 1:0] data_out;

/*******************Internal Variables**********************/
//traffic generator
wire [noc_dw - 1 : 0] tg_data;
wire tg_valid;

//First master and slave interface
wire [noc_dw -1 : 0] mi_1_data;
wire mi_1_valid;
wire mi_1_ready;

//Second master and slave interface 
wire [noc_dw -1 : 0] si_2_data_in;
wire si_2_valid_in;
wire [noc_dw -1 : 0] si_2_data_out;
wire si_2_valid_out;
wire si_2_ready;
wire [noc_dw -1 : 0] mi_2_data;
wire mi_2_valid;
wire mi_2_ready;

//Second traffic processor
wire [noc_dw - 1 : 0] tp_2_data;
wire tp_2_valid;

//Third master and slave interface 
wire [noc_dw -1 : 0] si_3_data_in;
wire si_3_valid_in;
wire [noc_dw -1 : 0] si_3_data_out;
wire si_3_valid_out;
wire si_3_ready;
wire [noc_dw -1 : 0] mi_3_data;
wire mi_3_valid;
wire mi_3_ready;

//Third traffic processor
wire [noc_dw - 1 : 0] tp_3_data;
wire tp_3_valid;

//Fourth slave interface 
wire [noc_dw -1 : 0] si_4_data_in;
wire si_4_valid_in;
wire [noc_dw -1 : 0] si_4_data_out;
wire si_4_valid_out;
wire si_4_ready;

//Converter wires - Updated for 38-bit channels
wire [37:0] axi_to_packet_one_channel_in_ip;
wire [2:0] axi_to_packet_one_flow_ctrl_out_ip;
wire router_wrap_one_error;
wire [37:0] axi_to_packet_two_channel_in_ip;
wire [2:0] axi_to_packet_two_flow_ctrl_out_ip;
wire router_wrap_two_error;
wire [37:0] packet_to_axi_two_channel_out_op;
wire [2:0] packet_to_axi_two_flow_ctrl_in_op;
wire packet_to_axi_two_tlast;
wire packet_to_axi_two_error_out;
wire [37:0] axi_to_packet_three_channel_in_ip;
wire [2:0] axi_to_packet_three_flow_ctrl_out_ip;
wire router_wrap_three_error;
wire [37:0] packet_to_axi_three_channel_out_op;
wire [2:0] packet_to_axi_three_flow_ctrl_in_op;
wire packet_to_axi_three_tlast;
wire packet_to_axi_three_error_out;
wire [37:0] axi_to_packet_four_channel_in_ip;
wire [2:0] axi_to_packet_four_flow_ctrl_out_ip;
wire router_wrap_four_error;
wire [37:0] packet_to_axi_four_channel_out_op;
wire [2:0] packet_to_axi_four_flow_ctrl_in_op;
wire packet_to_axi_four_tlast;
wire packet_to_axi_four_error_out;

// Router-to-router connection wires
wire [37:0] router_one_to_two_channel;
wire [2:0] router_two_to_one_flow;
wire [37:0] router_two_to_three_channel;
wire [2:0] router_three_to_two_flow;
// wire [37:0] router_three_to_four_channel;
// wire [2:0] router_four_to_three_flow;

/*******************module instantiation********************/

/*
    **********************FIRST NOC ADAPTER*****************
    1) Traffic generator passes data to master_interface
    2) master_interface passes data to First NoC adapter
    3) No need for a slave interface in the first NoC adapter
    4) No need for a traffic processor in the first NoC adapter
*/
traffic_generator tg(
    .clk(clk),
    .reset(reset),
    .tdata(tg_data),
    .tvalid(tg_valid)
);

master_interface mi_1 (
    .clk(clk),
    .reset(reset),
    .tvalid_in(tg_valid),
    .tdata_in(tg_data),
    .tready(mi_1_ready), 
    .tdata_out(mi_1_data),
    .tvalid_out(mi_1_valid),
    .tstrb(),
    .tkeep(),
    .tid(),
    .tdest(),
    .tuser(),
    .tlast()
);

axi_to_packet_converter_38bit axi_to_packet_converter_one(
    .clk(clk),
    .reset(reset),
    .tdata_in(mi_1_data),
    .tvalid_in(mi_1_valid),
    .tready_out(mi_1_ready),
    .tlast_in(1'b0), 
    .tstrb_in(8'b11111111), 
    .tkeep_in(8'b11111111), 
    .tid_in(8'b0), 
    .tdest_in(8'b0), 
    .tuser_in(8'b0), 
    .router_address(4'b0001),
    .channel_in_ip(axi_to_packet_one_channel_in_ip),
    .flow_ctrl_out_ip(axi_to_packet_one_flow_ctrl_out_ip)
);

(*keep*)
router_desc router_wrap_one(
    .clk(clk),
    .reset(reset),
    .router_address(4'b0001),
    .channel_in_ip(axi_to_packet_one_channel_in_ip),
    .flow_ctrl_out_ip(axi_to_packet_one_flow_ctrl_out_ip),
    .channel_out_op(router_one_to_two_channel),
    .flow_ctrl_in_op(router_two_to_one_flow),
    .error(router_wrap_one_error)
);

/*
    **********************Second NOC ADAPTER*****************
    1) Data comes through NoC to the second NoC adapter
    2) NoC adapter passes data to slave interface
    3) slave_interface passes data to traffic processor
    4) traffic processor passes the processed data to master interface
    5) master interface passes the data back to the second NoC adapter
*/
(*keep*)
router_desc router_wrap_two(
    .clk(clk),
    .reset(reset),
    .router_address(4'b0010),
    .channel_in_ip(router_one_to_two_channel),  // Connected to router_one
    .flow_ctrl_out_ip(router_two_to_one_flow),  // Connected to router_one
    .channel_out_op(packet_to_axi_two_channel_out_op),
    .flow_ctrl_in_op(packet_to_axi_two_flow_ctrl_in_op),
    .error(router_wrap_two_error)
);

packet_to_axi_converter_38bit packet_to_axi_converter_two (
    .clk(clk),
    .reset(reset),
    .channel_out_op(packet_to_axi_two_channel_out_op),
    .flow_ctrl_in_op(packet_to_axi_two_flow_ctrl_in_op),
    .error_in(router_wrap_two_error),
    .tdata_out(si_2_data_in),
    .tvalid_out(si_2_valid_in),
    .tready(si_2_ready),
    .tstrb(),
    .tkeep(),
    .tid(),
    .tdest(),
    .tuser(),
    .tlast(packet_to_axi_two_tlast),
    .error_out(packet_to_axi_two_error_out)
);

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

master_interface mi_2 (
    .clk(clk),
    .reset(reset),
    .tvalid_in(tp_2_valid),
    .tdata_in(tp_2_data),
    .tready(mi_2_ready), 
    .tdata_out(mi_2_data),
    .tvalid_out(mi_2_valid),
    .tstrb(),
    .tkeep(),
    .tid(),
    .tdest(),
    .tuser(),
    .tlast()
);

axi_to_packet_converter_38bit axi_to_packet_converter_two(
    .clk(clk),
    .reset(reset),
    .tdata_in(mi_2_data),
    .tvalid_in(mi_2_valid),
    .tready_out(mi_2_ready),
    .tlast_in(1'b0), 
    .tstrb_in(8'b11111111), 
    .tkeep_in(8'b11111111), 
    .tid_in(8'b0), 
    .tdest_in(8'b0), 
    .tuser_in(8'b0), 
    .router_address(4'b0010),
    .channel_in_ip(axi_to_packet_two_channel_in_ip),
    .flow_ctrl_out_ip(axi_to_packet_two_flow_ctrl_out_ip)
);

/*
    **********************Third NOC ADAPTER*****************
    1) Data comes through NoC to the third NoC adapter
    2) NoC adapter passes data to slave interface
    3) slave_interface passes data to traffic processor
    4) traffic processor passes the processed data to master interface
    5) master interface passes the data back to the third NoC adapter
*/
(*keep*)
router_desc router_wrap_three(
    .clk(clk),
    .reset(reset),
    .router_address(4'b0011),
    .channel_in_ip(router_two_to_three_channel),  // Connected to router_two
    .flow_ctrl_out_ip(router_three_to_two_flow),  // Connected to router_two
    .channel_out_op(packet_to_axi_three_channel_out_op),
    .flow_ctrl_in_op(packet_to_axi_three_flow_ctrl_in_op),
    .error(router_wrap_three_error)
);

packet_to_axi_converter_38bit packet_to_axi_converter_three (
    .clk(clk),
    .reset(reset),
    .channel_out_op(packet_to_axi_three_channel_out_op),
    .flow_ctrl_in_op(packet_to_axi_three_flow_ctrl_in_op),
    .error_in(router_wrap_three_error),
    .tdata_out(si_3_data_in),
    .tvalid_out(si_3_valid_in),
    .tready(si_3_ready),
    .tstrb(),
    .tkeep(),
    .tid(),
    .tdest(),
    .tuser(),
    .tlast(packet_to_axi_three_tlast),
    .error_out(packet_to_axi_three_error_out)
);

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
    .tlast(packet_to_axi_three_tlast)
);

traffic_processor tp_3(
    .clk(clk),
    .reset(reset),
    .tdata_in(si_3_data_out),
    .tvalid_in(si_3_valid_out),
    .tdata_out(tp_3_data),
    .tvalid_out(tp_3_valid)
);

master_interface mi_3 (
    .clk(clk),
    .reset(reset),
    .tvalid_in(tp_3_valid),
    .tdata_in(tp_3_data),
    .tready(mi_3_ready), 
    .tdata_out(mi_3_data),
    .tvalid_out(mi_3_valid),
    .tstrb(),
    .tkeep(),
    .tid(),
    .tdest(),
    .tuser(),
    .tlast()
);

axi_to_packet_converter_38bit axi_to_packet_converter_three(
    .clk(clk),
    .reset(reset),
    .tdata_in(mi_3_data),
    .tvalid_in(mi_3_valid),
    .tready_out(mi_3_ready),
    .tlast_in(1'b0), 
    .tstrb_in(8'b11111111), 
    .tkeep_in(8'b11111111), 
    .tid_in(8'b0), 
    .tdest_in(8'b0),
    .tuser_in(8'b0),
    .router_address(4'b0011),
    .channel_in_ip(axi_to_packet_three_channel_in_ip),
    .flow_ctrl_out_ip(axi_to_packet_three_flow_ctrl_out_ip)
);

/*
    **********************Fourth NOC ADAPTER*****************
    1) Data comes through NoC to the fourth NoC adapter
    2) NoC adapter passes data to slave interface
    3) slave_interface passes data to traffic processor
    4) traffic processor passes the processed data to the top module output
*/
(*keep*)
router_desc router_wrap_four(
    .clk(clk),
    .reset(reset),
    .router_address(4'b0100),
    // .channel_in_ip(router_three_to_four_channel),  // Connected to router_three
    // .flow_ctrl_out_ip(router_four_to_three_flow),  // Connected to router_three
    .channel_out_op(packet_to_axi_four_channel_out_op),
    .flow_ctrl_in_op(packet_to_axi_four_flow_ctrl_in_op),
    .error(router_wrap_four_error)
);

packet_to_axi_converter_38bit packet_to_axi_converter_four (
    .clk(clk),
    .reset(reset),
    .channel_out_op(packet_to_axi_four_channel_out_op),
    .flow_ctrl_in_op(packet_to_axi_four_flow_ctrl_in_op),
    .error_in(router_wrap_four_error),
    .tdata_out(si_4_data_in),
    .tvalid_out(si_4_valid_in),
    .tready(si_4_ready),
    .tstrb(),
    .tkeep(),
    .tid(),
    .tdest(),
    .tuser(),
    .tlast(packet_to_axi_four_tlast),
    .error_out(packet_to_axi_four_error_out)
);

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

module axi_to_packet_converter_38bit(
    input clk,
    input reset,
    input [31:0] tdata_in,
    input tvalid_in,
    output reg tready_out,
    input tlast_in,
    input [7:0] tstrb_in,
    input [7:0] tkeep_in,
    input [7:0] tid_in,
    input [7:0] tdest_in,
    input [7:0] tuser_in,
    input [3:0] router_address,
    output reg [37:0] channel_in_ip,
    input [2:0] flow_ctrl_out_ip 
);

reg [2:0] vc_id; // Virtual channel ID

always @(posedge clk or posedge reset) begin
    if (reset) begin
        channel_in_ip <= 38'b0;
        flow_ctrl_out_ip <= 3'b0;
        tready_out <= 1'b0;
        vc_id <= 3'b000;
    end else begin
        if (tvalid_in && tready_out) begin
            // Format for 38-bit channel:
            // [0:2] = VC ID (3 bits)
            // [3] = Head flag (1 bit)
            // [4] = Tail flag (1 bit)
            // [5:36] = Flit data (32 bits)
            // [37] = Valid bit (1 bit)
            
            channel_in_ip[0:2] <= vc_id;          // VC ID
            channel_in_ip[3] <= 1'b1;             // Head flag
            channel_in_ip[4] <= tlast_in;         // Tail flag
            channel_in_ip[5:36] <= tdata_in;      // Flit data (32 bits)
            channel_in_ip[37] <= 1'b1;            // Valid bit
            
            tready_out <= 1'b0;                   // Not ready for next data
            
            // Round-robin VC selection for next flit
            vc_id <= (vc_id + 1) % 4;
        end else begin
            tready_out <= 1'b1;                   // Ready to accept data
            channel_in_ip[37] <= 1'b0;            // Clear valid bit when not transferring
        end
    end
end

endmodule

module packet_to_axi_converter_38bit(
    input clk,
    input reset,
    input [37:0] channel_out_op,
    output reg [2:0] flow_ctrl_in_op ,
    input error_in,
    output reg [31:0] tdata_out,
    output reg tvalid_out,
    input tready,
    output reg [7:0] tstrb,
    output reg [7:0] tkeep,
    output reg [7:0] tid,
    output reg [7:0] tdest,
    output reg [7:0] tuser,
    output reg tlast,
    output reg error_out
);

reg processing_packet;
reg [2:0] current_vc;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        tdata_out <= 32'b0;
        tvalid_out <= 1'b0;
        tstrb <= 8'b0;
        tkeep <= 8'b0;
        tid <= 8'b0;
        tdest <= 8'b0;
        tuser <= 8'b0;
        tlast <= 1'b0;
        error_out <= 1'b0;
        processing_packet <= 1'b0;
        current_vc <= 3'b0;
    end else begin
        // Default state
        tvalid_out <= 1'b0;
        
        // If we're ready to receive and channel has valid data
        if (tready && channel_out_op[37]) begin
            // Extract and process the 38-bit channel data
            current_vc <= channel_out_op[0:2];     // VC ID
            tdata_out <= channel_out_op[5:36];     // 32-bit data
            tvalid_out <= 1'b1;                    // Data valid
            tlast <= channel_out_op[4];            // Tail flag
            
            // Set AXI Stream sideband signals
            tstrb <= 8'b11111111;                  // All bytes valid
            tkeep <= 8'b11111111;                  // All bytes kept
            tid <= {5'b0, channel_out_op[0:2]};    // Use VC as ID
            tdest <= 8'b0;                         // No specific destination
            tuser <= 8'b0;                         // No user-defined metadata
            
            // Pass through error signal
            error_out <= error_in;
            
            // Track if we're processing multi-flit packet
            if (channel_out_op[3]) begin           // Head flag
                processing_packet <= 1'b1;
            end
            
            if (channel_out_op[4]) begin           // Tail flag
                processing_packet <= 1'b0;
            end
        end else begin
            // Apply backpressure if not ready
            if (processing_packet && !tready) begin
                flow_ctrl_in_op <= 3'b111;         // Apply backpressure
            end
            
            error_out <= error_in;                 // Pass through error
        end
    end
end

endmodule