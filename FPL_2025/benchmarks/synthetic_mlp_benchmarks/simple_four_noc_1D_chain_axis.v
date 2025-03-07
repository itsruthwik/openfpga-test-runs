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
// Reset signal for router_wrap (active low)
wire rst_n;
assign rst_n = ~reset;

//traffic generator
wire [noc_dw - 1 : 0] tg_data;
wire tg_valid;

//First master and slave interface
wire [noc_dw -1 : 0] mi_1_data;
wire mi_1_valid;
wire mi_1_ready;

//Second traffic processor
wire [noc_dw - 1 : 0] tp_2_data;
wire tp_2_valid;

//Third traffic processor
wire [noc_dw - 1 : 0] tp_3_data;
wire tp_3_valid;

// Router 1 connections (first router)
wire [4:0] router1_in_tvalid;
wire [4:0] router1_in_tready;
wire [159:0] router1_in_tdata;
wire [4:0] router1_in_tlast;
wire [9:0] router1_in_tid;
wire [19:0] router1_in_tdest;

wire [4:0] router1_out_tvalid;
wire [4:0] router1_out_tready;
wire [159:0] router1_out_tdata;
wire [4:0] router1_out_tlast;
wire [9:0] router1_out_tid;
wire [19:0] router1_out_tdest;

// Router 2 connections
wire [4:0] router2_in_tvalid;
wire [4:0] router2_in_tready;
wire [159:0] router2_in_tdata;
wire [4:0] router2_in_tlast;
wire [9:0] router2_in_tid;
wire [19:0] router2_in_tdest;

wire [4:0] router2_out_tvalid;
wire [4:0] router2_out_tready;
wire [159:0] router2_out_tdata;
wire [4:0] router2_out_tlast;
wire [9:0] router2_out_tid;
wire [19:0] router2_out_tdest;

// Router 3 connections
wire [4:0] router3_in_tvalid;
wire [4:0] router3_in_tready;
wire [159:0] router3_in_tdata;
wire [4:0] router3_in_tlast;
wire [9:0] router3_in_tid;
wire [19:0] router3_in_tdest;

wire [4:0] router3_out_tvalid;
wire [4:0] router3_out_tready;
wire [159:0] router3_out_tdata;
wire [4:0] router3_out_tlast;
wire [9:0] router3_out_tid;
wire [19:0] router3_out_tdest;

// Router 4 connections
wire [4:0] router4_in_tvalid;
wire [4:0] router4_in_tready;
wire [159:0] router4_in_tdata;
wire [4:0] router4_in_tlast;
wire [9:0] router4_in_tid;
wire [19:0] router4_in_tdest;

wire [4:0] router4_out_tvalid;
wire [4:0] router4_out_tready;
wire [159:0] router4_out_tdata;
wire [4:0] router4_out_tlast;
wire [9:0] router4_out_tid;
wire [19:0] router4_out_tdest;

// Temporary wires for interconnections between stages
wire [noc_dw-1:0] si_2_data_in, si_2_data_out;
wire si_2_valid_in, si_2_valid_out, si_2_ready;
wire [noc_dw-1:0] mi_2_data;
wire mi_2_valid, mi_2_ready;

wire [noc_dw-1:0] si_3_data_in, si_3_data_out;
wire si_3_valid_in, si_3_valid_out, si_3_ready;
wire [noc_dw-1:0] mi_3_data;
wire mi_3_valid, mi_3_ready;

wire [noc_dw-1:0] si_4_data_in, si_4_data_out;
wire si_4_valid_in, si_4_valid_out, si_4_ready;

/*******************module instantiation********************/

// Traffic generator
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

// Configure Router 1 inputs (only port 0 is used for input from traffic generator)
assign router1_in_tvalid = {4'b0000, mi_1_valid};
assign router1_in_tdata = {128'b0, mi_1_data};
assign router1_in_tlast = 5'b00001;  // Last flit indicator
assign router1_in_tid = 10'b0000000001;  // ID 1
assign router1_in_tdest = {16'b0, 4'b0010};  // Destination: Router 2
assign mi_1_ready = router1_in_tready[0];

// Router 1 (First NoC Router)
router_wrap router1 (
    .clk_noc(clk),
    .clk_usr(clk),
    .rst_n(rst_n),
    
    .axis_in_tvalid(router1_in_tvalid),
    .axis_in_tready(router1_in_tready),
    .axis_in_tdata(router1_in_tdata),
    .axis_in_tlast(router1_in_tlast),
    .axis_in_tid(router1_in_tid),
    .axis_in_tdest(router1_in_tdest),
    
    .axis_out_tvalid(router1_out_tvalid),
    .axis_out_tready(router1_out_tready),
    .axis_out_tdata(router1_out_tdata),
    .axis_out_tlast(router1_out_tlast),
    .axis_out_tid(router1_out_tid),
    .axis_out_tdest(router1_out_tdest)
);

// Connect Router 1 outputs to Router 2 inputs
// Take output 0 from Router 1 and send to input 0 of Router 2
assign router2_in_tvalid[0] = router1_out_tvalid[0];
assign router1_out_tready[0] = router2_in_tready[0];
assign router2_in_tdata[31:0] = router1_out_tdata[31:0];
assign router2_in_tlast[0] = router1_out_tlast[0];
assign router2_in_tid[1:0] = router1_out_tid[1:0];
assign router2_in_tdest[3:0] = router1_out_tdest[3:0];

// Connect Router 2 outputs to slave interface 2
assign si_2_data_in = router2_out_tdata[31:0];
assign si_2_valid_in = router2_out_tvalid[0];
assign router2_out_tready[0] = si_2_ready;

// Processing chain for Router 2
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

// Connect processed data back to Router 2 (input port 1)
assign router2_in_tvalid[1] = mi_2_valid;
assign mi_2_ready = router2_in_tready[1];
assign router2_in_tdata[63:32] = mi_2_data;
assign router2_in_tlast[1] = 1'b1;
assign router2_in_tid[3:2] = 2'b01;
assign router2_in_tdest[7:4] = 4'b0011;  // Destination: Router 3

// Zero out other router2 inputs
assign router2_in_tvalid[4:2] = 3'b000;
assign router2_in_tdata[159:64] = 96'b0;
assign router2_in_tlast[4:2] = 3'b000;
assign router2_in_tid[9:4] = 6'b000000;
assign router2_in_tdest[19:8] = 12'b000000000000;

// Router 2 (Second NoC Router)
router_wrap router2 (
    .clk_noc(clk),
    .clk_usr(clk),
    .rst_n(rst_n),
    
    .axis_in_tvalid(router2_in_tvalid),
    .axis_in_tready(router2_in_tready),
    .axis_in_tdata(router2_in_tdata),
    .axis_in_tlast(router2_in_tlast),
    .axis_in_tid(router2_in_tid),
    .axis_in_tdest(router2_in_tdest),
    
    .axis_out_tvalid(router2_out_tvalid),
    .axis_out_tready(router2_out_tready),
    .axis_out_tdata(router2_out_tdata),
    .axis_out_tlast(router2_out_tlast),
    .axis_out_tid(router2_out_tid),
    .axis_out_tdest(router2_out_tdest)
);

// Connect Router 2 outputs to Router 3 inputs (port 1)
assign router3_in_tvalid[0] = router2_out_tvalid[1];
assign router2_out_tready[1] = router3_in_tready[0];
assign router3_in_tdata[31:0] = router2_out_tdata[63:32];
assign router3_in_tlast[0] = router2_out_tlast[1];
assign router3_in_tid[1:0] = router2_out_tid[3:2];
assign router3_in_tdest[3:0] = router2_out_tdest[7:4];

// Connect Router 3 outputs to slave interface 3
assign si_3_data_in = router3_out_tdata[31:0];
assign si_3_valid_in = router3_out_tvalid[0];
assign router3_out_tready[0] = si_3_ready;

// Processing chain for Router 3
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

// Connect processed data back to Router 3 (input port 1)
assign router3_in_tvalid[1] = mi_3_valid;
assign mi_3_ready = router3_in_tready[1];
assign router3_in_tdata[63:32] = mi_3_data;
assign router3_in_tlast[1] = 1'b1;
assign router3_in_tid[3:2] = 2'b10;
assign router3_in_tdest[7:4] = 4'b0100;  // Destination: Router 4

// Zero out other router3 inputs
assign router3_in_tvalid[4:2] = 3'b000;
assign router3_in_tdata[159:64] = 96'b0;
assign router3_in_tlast[4:2] = 3'b000;
assign router3_in_tid[9:4] = 6'b000000;
assign router3_in_tdest[19:8] = 12'b000000000000;

// Router 3 (Third NoC Router)
router_wrap router3 (
    .clk_noc(clk),
    .clk_usr(clk),
    .rst_n(rst_n),
    
    .axis_in_tvalid(router3_in_tvalid),
    .axis_in_tready(router3_in_tready),
    .axis_in_tdata(router3_in_tdata),
    .axis_in_tlast(router3_in_tlast),
    .axis_in_tid(router3_in_tid),
    .axis_in_tdest(router3_in_tdest),
    
    .axis_out_tvalid(router3_out_tvalid),
    .axis_out_tready(router3_out_tready),
    .axis_out_tdata(router3_out_tdata),
    .axis_out_tlast(router3_out_tlast),
    .axis_out_tid(router3_out_tid),
    .axis_out_tdest(router3_out_tdest)
);

// Connect Router 3 outputs to Router 4 inputs (port 2)
assign router4_in_tvalid[0] = router3_out_tvalid[1];
assign router3_out_tready[1] = router4_in_tready[0];
assign router4_in_tdata[31:0] = router3_out_tdata[63:32];
assign router4_in_tlast[0] = router3_out_tlast[1];
assign router4_in_tid[1:0] = router3_out_tid[3:2];
assign router4_in_tdest[3:0] = router3_out_tdest[7:4];

// Zero out other router4 inputs
assign router4_in_tvalid[4:1] = 4'b0000;
assign router4_in_tdata[159:32] = 128'b0;
assign router4_in_tlast[4:1] = 4'b0000;
assign router4_in_tid[9:2] = 8'b00000000;
assign router4_in_tdest[19:4] = 16'b0000000000000000;

// Router 4 (Fourth NoC Router)
router_wrap router4 (
    .clk_noc(clk),
    .clk_usr(clk),
    .rst_n(rst_n),
    
    .axis_in_tvalid(router4_in_tvalid),
    .axis_in_tready(router4_in_tready),
    .axis_in_tdata(router4_in_tdata),
    .axis_in_tlast(router4_in_tlast),
    .axis_in_tid(router4_in_tid),
    .axis_in_tdest(router4_in_tdest),
    
    .axis_out_tvalid(router4_out_tvalid),
    .axis_out_tready(router4_out_tready),
    .axis_out_tdata(router4_out_tdata),
    .axis_out_tlast(router4_out_tlast),
    .axis_out_tid(router4_out_tid),
    .axis_out_tdest(router4_out_tdest)
);

// Connect Router 4 outputs to slave interface 4
assign si_4_data_in = router4_out_tdata[31:0];
assign si_4_valid_in = router4_out_tvalid[0];
assign router4_out_tready[0] = si_4_ready;

// Final processing stage
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
input tvalid_in;

output wire [noc_dw - 1 :0] tdata_out;
output tvalid_out;

/*******************Internal Variables**********************/
reg [noc_dw*2-1:0]		sum_reg;
reg valid_reg;
wire [noc_dw*2-1:0]		data_extended;

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
assign tdata_out = sum_reg[31:0];
assign tvalid_out = valid_reg;

endmodule 
						