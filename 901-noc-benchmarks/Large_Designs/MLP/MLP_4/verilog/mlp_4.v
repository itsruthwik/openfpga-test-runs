/*
    Top level module to connect a number of MVM modules together using a
    NoC. The design implements the following:
	1) A number of dispatcher modules used to generate initial traffic
	2) A number of MVM modules that perform matrix vector multiplication
	   on input data streams
	3) A collector module to process the results of the MVM modules
	4) A numbe of NoC routers that are used to connect all the modules
	   added above. The NoC routers are responsible for transferring data
	   from dispatchers to MVM modules, between MVM modules and from MVM
	   modules to the collector module.
*/

module mlp_4 (
    clk,
    reset,
	 dispatcher0_ififo_wdata, // external I/O input for dispatcher
	 dispatcher0_ififo_wen, // external I/O input for dispatcher
	 dispatcher1_ififo_wdata, // external I/O input for dispatcher
	 dispatcher1_ififo_wen, // external I/O input for dispatcher
	 collector_ofifo_rdata, // external I/O output for collector
	 collector_ofifo_ren, // external I/O input for collector
	 dispatcher0_ififo_rdy, // external I/O output for dispatcher
	 dispatcher1_ififo_rdy, // external I/O output for dispatcher
	 collector_ofifo_rdy // external I/O output for collector
	 
);

parameter noc_dw = 512; //NoC Data Width
parameter byte_dw = 8; 

/*****************INPUT/OUTPUT Definition********************/
input wire clk;
input wire reset;
 
input wire [noc_dw/byte_dw - 1:0] 	dispatcher0_ififo_wdata;
input wire 									dispatcher0_ififo_wen;
input wire [noc_dw/byte_dw - 1:0] 	dispatcher1_ififo_wdata;
input wire 									dispatcher1_ififo_wen;

input wire 									collector_ofifo_ren;

output wire [noc_dw/byte_dw - 1:0]	collector_ofifo_rdata;
output wire									collector_ofifo_rdy;

output wire									dispatcher0_ififo_rdy;
output wire									dispatcher1_ififo_rdy;

/*******************Internal Variables**********************/
// dispatcher signals
// dispatcher0
wire 							dispatcher0_tx_valid;
wire [noc_dw - 1 : 0]  	dispatcher0_tx_tdata;
wire [byte_dw - 1 : 0] 	dispatcher0_tx_tstrb;
wire [byte_dw - 1 : 0] 	dispatcher0_tx_tkeep;
wire [7 : 0] 				dispatcher0_tx_tid;
wire [7 : 0] 				dispatcher0_tx_tdest;
wire [31 : 0] 				dispatcher0_tx_tuser;
wire 							dispatcher0_tx_tlast;

wire 							dispatcher0_connector_tx_tready;

// dispatcher1
wire 							dispatcher1_tx_valid;
wire [noc_dw - 1 : 0]  	dispatcher1_tx_tdata;
wire [byte_dw - 1 : 0] 	dispatcher1_tx_tstrb;
wire [byte_dw - 1 : 0] 	dispatcher1_tx_tkeep;
wire [7 : 0] 				dispatcher1_tx_tid;
wire [7 : 0] 				dispatcher1_tx_tdest;
wire [31 : 0] 				dispatcher1_tx_tuser;
wire 							dispatcher1_tx_tlast;

wire 							dispatcher1_connector_tx_tready;

// collector signals
wire 							collector_rx_valid;
wire [noc_dw - 1 : 0]  	collector_rx_tdata;
wire [byte_dw - 1 : 0] 	collector_rx_tstrb;
wire [byte_dw - 1 : 0] 	collector_rx_tkeep;
wire [7 : 0] 				collector_rx_tid;
wire [7 : 0] 				collector_rx_tdest;
wire [31 : 0] 				collector_rx_tuser;
wire 							collector_rx_tlast;

wire 							collector_connector_rx_tready;

// mvm module signals
// layer0_mvm0
wire 							layer0_mvm0_tx_valid;
wire [noc_dw - 1 : 0]  	layer0_mvm0_tx_tdata;
wire [byte_dw - 1 : 0] 	layer0_mvm0_tx_tstrb;
wire [byte_dw - 1 : 0] 	layer0_mvm0_tx_tkeep;
wire [7 : 0] 				layer0_mvm0_tx_tid;
wire [7 : 0] 				layer0_mvm0_tx_tdest;
wire [31 : 0] 				layer0_mvm0_tx_tuser;
wire 							layer0_mvm0_tx_tlast;

wire 							layer0_mvm0_connector_tx_tready;

wire 							layer0_mvm0_rx_valid;
wire [noc_dw - 1 : 0]  	layer0_mvm0_rx_tdata;
wire [byte_dw - 1 : 0] 	layer0_mvm0_rx_tstrb;
wire [byte_dw - 1 : 0] 	layer0_mvm0_rx_tkeep;
wire [7 : 0] 				layer0_mvm0_rx_tid;
wire [7 : 0] 				layer0_mvm0_rx_tdest;
wire [31 : 0] 				layer0_mvm0_rx_tuser;
wire 							layer0_mvm0_rx_tlast;

wire 							layer0_mvm0_connector_rx_tready;
// layer0_mvm1
wire 							layer0_mvm1_tx_valid;
wire [noc_dw - 1 : 0]  	layer0_mvm1_tx_tdata;
wire [byte_dw - 1 : 0] 	layer0_mvm1_tx_tstrb;
wire [byte_dw - 1 : 0] 	layer0_mvm1_tx_tkeep;
wire [7 : 0] 				layer0_mvm1_tx_tid;
wire [7 : 0] 				layer0_mvm1_tx_tdest;
wire [31 : 0] 				layer0_mvm1_tx_tuser;
wire 							layer0_mvm1_tx_tlast;

wire 							layer0_mvm1_connector_tx_tready;

wire 							layer0_mvm1_rx_valid;
wire [noc_dw - 1 : 0]  	layer0_mvm1_rx_tdata;
wire [byte_dw - 1 : 0] 	layer0_mvm1_rx_tstrb;
wire [byte_dw - 1 : 0] 	layer0_mvm1_rx_tkeep;
wire [7 : 0] 				layer0_mvm1_rx_tid;
wire [7 : 0] 				layer0_mvm1_rx_tdest;
wire [31 : 0] 				layer0_mvm1_rx_tuser;
wire 							layer0_mvm1_rx_tlast;

wire 							layer0_mvm1_connector_rx_tready;

// layer1_mvm0
wire 							layer1_mvm0_tx_valid;
wire [noc_dw - 1 : 0]  	layer1_mvm0_tx_tdata;
wire [byte_dw - 1 : 0] 	layer1_mvm0_tx_tstrb;
wire [byte_dw - 1 : 0] 	layer1_mvm0_tx_tkeep;
wire [7 : 0] 				layer1_mvm0_tx_tid;
wire [7 : 0] 				layer1_mvm0_tx_tdest;
wire [31 : 0] 				layer1_mvm0_tx_tuser;
wire 							layer1_mvm0_tx_tlast;

wire 							layer1_mvm0_connector_tx_tready;

wire 							layer1_mvm0_rx_valid;
wire [noc_dw - 1 : 0]  	layer1_mvm0_rx_tdata;
wire [byte_dw - 1 : 0] 	layer1_mvm0_rx_tstrb;
wire [byte_dw - 1 : 0] 	layer1_mvm0_rx_tkeep;
wire [7 : 0] 				layer1_mvm0_rx_tid;
wire [7 : 0] 				layer1_mvm0_rx_tdest;
wire [31 : 0] 				layer1_mvm0_rx_tuser;
wire 							layer1_mvm0_rx_tlast;

wire 							layer1_mvm0_connector_rx_tready;
// layer1_mvm1
wire 							layer1_mvm1_tx_valid;
wire [noc_dw - 1 : 0]  	layer1_mvm1_tx_tdata;
wire [byte_dw - 1 : 0] 	layer1_mvm1_tx_tstrb;
wire [byte_dw - 1 : 0] 	layer1_mvm1_tx_tkeep;
wire [7 : 0] 				layer1_mvm1_tx_tid;
wire [7 : 0] 				layer1_mvm1_tx_tdest;
wire [31 : 0] 				layer1_mvm1_tx_tuser;
wire 							layer1_mvm1_tx_tlast;

wire 							layer1_mvm1_connector_tx_tready;

wire 							layer1_mvm1_rx_valid;
wire [noc_dw - 1 : 0]  	layer1_mvm1_rx_tdata;
wire [byte_dw - 1 : 0] 	layer1_mvm1_rx_tstrb;
wire [byte_dw - 1 : 0] 	layer1_mvm1_rx_tkeep;
wire [7 : 0] 				layer1_mvm1_rx_tid;
wire [7 : 0] 				layer1_mvm1_rx_tdest;
wire [31 : 0] 				layer1_mvm1_rx_tuser;
wire 							layer1_mvm1_rx_tlast;

wire 							layer1_mvm1_connector_rx_tready;

// layer2_mvm0
wire 							layer2_mvm0_tx_valid;
wire [noc_dw - 1 : 0]  	layer2_mvm0_tx_tdata;
wire [byte_dw - 1 : 0] 	layer2_mvm0_tx_tstrb;
wire [byte_dw - 1 : 0] 	layer2_mvm0_tx_tkeep;
wire [7 : 0] 				layer2_mvm0_tx_tid;
wire [7 : 0] 				layer2_mvm0_tx_tdest;
wire [31 : 0] 				layer2_mvm0_tx_tuser;
wire 							layer2_mvm0_tx_tlast;

wire 							layer2_mvm0_connector_tx_tready;

wire 							layer2_mvm0_rx_valid;
wire [noc_dw - 1 : 0]  	layer2_mvm0_rx_tdata;
wire [byte_dw - 1 : 0] 	layer2_mvm0_rx_tstrb;
wire [byte_dw - 1 : 0] 	layer2_mvm0_rx_tkeep;
wire [7 : 0] 				layer2_mvm0_rx_tid;
wire [7 : 0] 				layer2_mvm0_rx_tdest;
wire [31 : 0] 				layer2_mvm0_rx_tuser;
wire 							layer2_mvm0_rx_tlast;

wire 							layer2_mvm0_connector_rx_tready;
// layer2_mvm1
wire 							layer2_mvm1_tx_valid;
wire [noc_dw - 1 : 0]  	layer2_mvm1_tx_tdata;
wire [byte_dw - 1 : 0] 	layer2_mvm1_tx_tstrb;
wire [byte_dw - 1 : 0] 	layer2_mvm1_tx_tkeep;
wire [7 : 0] 				layer2_mvm1_tx_tid;
wire [7 : 0] 				layer2_mvm1_tx_tdest;
wire [31 : 0] 				layer2_mvm1_tx_tuser;
wire 							layer2_mvm1_tx_tlast;

wire 							layer2_mvm1_connector_tx_tready;

wire 							layer2_mvm1_rx_valid;
wire [noc_dw - 1 : 0]  	layer2_mvm1_rx_tdata;
wire [byte_dw - 1 : 0] 	layer2_mvm1_rx_tstrb;
wire [byte_dw - 1 : 0] 	layer2_mvm1_rx_tkeep;
wire [7 : 0] 				layer2_mvm1_rx_tid;
wire [7 : 0] 				layer2_mvm1_rx_tdest;
wire [31 : 0] 				layer2_mvm1_rx_tuser;
wire 							layer2_mvm1_rx_tlast;

wire 							layer2_mvm1_connector_rx_tready;

/*******************module instantiation********************/

// dispatcher modules
dispatcher dispatcher0(
    .clk(clk),
    .rst(reset),
    .tx_tvalid(dispatcher0_tx_valid),
    .tx_tdata(dispatcher0_tx_tdata),
	 .tx_tstrb(dispatcher0_tx_tstrb),
	 .tx_tkeep(dispatcher0_tx_tkeep),
	 .tx_tid(dispatcher0_tx_tid),
	 .tx_tdest(dispatcher0_tx_tdest),
	 .tx_tuser(dispatcher0_tx_tuser),
	 .tx_tlast(dispatcher0_tx_tlast),
	 .tx_tready(dispatcher0_connector_tx_tready),
	 .ififo_wdata(dispatcher0_ififo_wdata),
	 .ififo_wen(dispatcher0_ififo_wen),
	 .ififo_rdy(dispatcher0_ififo_rdy)
);
dispatcher dispatcher1(
    .clk(clk),
    .rst(reset),
    .tx_tvalid(dispatcher1_tx_valid),
    .tx_tdata(dispatcher1_tx_tdata),
	 .tx_tstrb(dispatcher1_tx_tstrb),
	 .tx_tkeep(dispatcher1_tx_tkeep),
	 .tx_tid(dispatcher1_tx_tid),
	 .tx_tdest(dispatcher1_tx_tdest),
	 .tx_tuser(dispatcher1_tx_tuser),
	 .tx_tlast(dispatcher1_tx_tlast),
	 .tx_tready(dispatcher1_connector_tx_tready),
	 .ififo_wdata(dispatcher1_ififo_wdata),
	 .ififo_wen(dispatcher1_ififo_wen),
	 .ififo_rdy(dispatcher1_ififo_rdy)
);


// dispatcher router blocks
(* keep *)
router_wrap noc_router_input_dispatcher0(
	 .clk(clk),
    .reset(reset),
    .master_tready(1'd0),
    .master_tdata(),
	 .master_tvalid(),
    .master_tstrb(),
    .master_tkeep(),
    .master_tid(),
    .master_tdest(),
    .master_tuser(),
    .master_tlast(),
    .slave_tvalid(dispatcher0_tx_valid),
    .slave_tready(dispatcher0_connector_tx_tready), 
    .slave_tdata(dispatcher0_tx_tdata),
    .slave_tstrb(dispatcher0_tx_tstrb),
    .slave_tkeep(dispatcher0_tx_tkeep),
    .slave_tid(dispatcher0_tx_tid),
    .slave_tdest(dispatcher0_tx_tdest),
    .slave_tuser(dispatcher0_tx_tuser),
    .slave_tlast(dispatcher0_tx_tlast),

);

(* keep *)
router_wrap noc_router_input_dispatcher1(
	 .clk(clk),
    .reset(reset),
    .master_tready(1'd0),
    .master_tdata(),
	 .master_tvalid(),
    .master_tstrb(),
    .master_tkeep(),
    .master_tid(),
    .master_tdest(),
    .master_tuser(),
    .master_tlast(),
    .slave_tvalid(dispatcher1_tx_valid),
    .slave_tready(dispatcher1_connector_tx_tready), 
    .slave_tdata(dispatcher1_tx_tdata),
    .slave_tstrb(dispatcher1_tx_tstrb),
    .slave_tkeep(dispatcher1_tx_tkeep),
    .slave_tid(dispatcher1_tx_tid),
    .slave_tdest(dispatcher1_tx_tdest),
    .slave_tuser(dispatcher1_tx_tuser),
    .slave_tlast(dispatcher1_tx_tlast),

);


// mvm module declarations (layer 0)
mvm layer0_mvm0(
	.clk(clk),
    .rst(reset),
    .rx_tvalid(layer0_mvm0_rx_tvalid),
    .rx_tdata(layer0_mvm0_rx_tdata),
	 .rx_tstrb(layer0_mvm0_rx_tstrb),
    .rx_tkeep(layer0_mvm0_rx_tkeep),
    .rx_tid(layer0_mvm0_rx_tid),
    .rx_tdest(layer0_mvm0_rx_tdest),
    .rx_tuser(layer0_mvm0_rx_tuser),
    .rx_tlast(layer0_mvm0_rx_tlast),
    .rx_tready(layer0_mvm0_connector_rx_tready),
    .tx_tvalid(layer0_mvm0_tx_valid),
    .tx_tdata(layer0_mvm0_tx_tdata), 
    .tx_tstrb(layer0_mvm0_tx_tstrb),
    .tx_tkeep(layer0_mvm0_tx_tkeep),
    .tx_tid(layer0_mvm0_tx_tid),
    .tx_tdest(layer0_mvm0_tx_tdest),
    .tx_tuser(layer0_mvm0_tx_tuser),
    .tx_tlast(layer0_mvm0_tx_tlast),
    .tx_tready(layer0_mvm0_connector_tx_tready)

);
mvm layer0_mvm1(
	.clk(clk),
    .rst(reset),
    .rx_tvalid(layer0_mvm1_rx_tvalid),
    .rx_tdata(layer0_mvm1_rx_tdata),
	 .rx_tstrb(layer0_mvm1_rx_tstrb),
    .rx_tkeep(layer0_mvm1_rx_tkeep),
    .rx_tid(layer0_mvm1_rx_tid),
    .rx_tdest(layer0_mvm1_rx_tdest),
    .rx_tuser(layer0_mvm1_rx_tuser),
    .rx_tlast(layer0_mvm1_rx_tlast),
    .rx_tready(layer0_mvm1_connector_rx_tready),
    .tx_tvalid(layer0_mvm1_tx_valid),
    .tx_tdata(layer0_mvm1_tx_tdata), 
    .tx_tstrb(layer0_mvm1_tx_tstrb),
    .tx_tkeep(layer0_mvm1_tx_tkeep),
    .tx_tid(layer0_mvm1_tx_tid),
    .tx_tdest(layer0_mvm1_tx_tdest),
    .tx_tuser(layer0_mvm1_tx_tuser),
    .tx_tlast(layer0_mvm1_tx_tlast),
    .tx_tready(layer0_mvm1_connector_tx_tready)

);

// mvm module declarations (layer 1)
mvm layer1_mvm0(
	.clk(clk),
    .rst(reset),
    .rx_tvalid(layer1_mvm0_rx_tvalid),
    .rx_tdata(layer1_mvm0_rx_tdata),
	 .rx_tstrb(layer1_mvm0_rx_tstrb),
    .rx_tkeep(layer1_mvm0_rx_tkeep),
    .rx_tid(layer1_mvm0_rx_tid),
    .rx_tdest(layer1_mvm0_rx_tdest),
    .rx_tuser(layer1_mvm0_rx_tuser),
    .rx_tlast(layer1_mvm0_rx_tlast),
    .rx_tready(layer1_mvm0_connector_rx_tready),
    .tx_tvalid(layer1_mvm0_tx_valid),
    .tx_tdata(layer1_mvm0_tx_tdata), 
    .tx_tstrb(layer1_mvm0_tx_tstrb),
    .tx_tkeep(layer1_mvm0_tx_tkeep),
    .tx_tid(layer1_mvm0_tx_tid),
    .tx_tdest(layer1_mvm0_tx_tdest),
    .tx_tuser(layer1_mvm0_tx_tuser),
    .tx_tlast(layer1_mvm0_tx_tlast),
    .tx_tready(layer1_mvm0_connector_tx_tready)

);
mvm layer1_mvm1(
	.clk(clk),
    .rst(reset),
    .rx_tvalid(layer1_mvm1_rx_tvalid),
    .rx_tdata(layer1_mvm1_rx_tdata),
	 .rx_tstrb(layer1_mvm1_rx_tstrb),
    .rx_tkeep(layer1_mvm1_rx_tkeep),
    .rx_tid(layer1_mvm1_rx_tid),
    .rx_tdest(layer1_mvm1_rx_tdest),
    .rx_tuser(layer1_mvm1_rx_tuser),
    .rx_tlast(layer1_mvm1_rx_tlast),
    .rx_tready(layer1_mvm1_connector_rx_tready),
    .tx_tvalid(layer1_mvm1_tx_valid),
    .tx_tdata(layer1_mvm1_tx_tdata), 
    .tx_tstrb(layer1_mvm1_tx_tstrb),
    .tx_tkeep(layer1_mvm1_tx_tkeep),
    .tx_tid(layer1_mvm1_tx_tid),
    .tx_tdest(layer1_mvm1_tx_tdest),
    .tx_tuser(layer1_mvm1_tx_tuser),
    .tx_tlast(layer1_mvm1_tx_tlast),
    .tx_tready(layer1_mvm1_connector_tx_tready)

);

// mvm module declarations (layer 2)
mvm layer2_mvm0(
	.clk(clk),
    .rst(reset),
    .rx_tvalid(layer2_mvm0_rx_tvalid),
    .rx_tdata(layer2_mvm0_rx_tdata),
	 .rx_tstrb(layer2_mvm0_rx_tstrb),
    .rx_tkeep(layer2_mvm0_rx_tkeep),
    .rx_tid(layer2_mvm0_rx_tid),
    .rx_tdest(layer2_mvm0_rx_tdest),
    .rx_tuser(layer2_mvm0_rx_tuser),
    .rx_tlast(layer2_mvm0_rx_tlast),
    .rx_tready(layer2_mvm0_connector_rx_tready),
    .tx_tvalid(layer2_mvm0_tx_valid),
    .tx_tdata(layer2_mvm0_tx_tdata), 
    .tx_tstrb(layer2_mvm0_tx_tstrb),
    .tx_tkeep(layer2_mvm0_tx_tkeep),
    .tx_tid(layer2_mvm0_tx_tid),
    .tx_tdest(layer2_mvm0_tx_tdest),
    .tx_tuser(layer2_mvm0_tx_tuser),
    .tx_tlast(layer2_mvm0_tx_tlast),
    .tx_tready(layer2_mvm0_connector_tx_tready)

);
mvm layer2_mvm1(
	.clk(clk),
    .rst(reset),
    .rx_tvalid(layer2_mvm1_rx_tvalid),
    .rx_tdata(layer2_mvm1_rx_tdata),
	 .rx_tstrb(layer2_mvm1_rx_tstrb),
    .rx_tkeep(layer2_mvm1_rx_tkeep),
    .rx_tid(layer2_mvm1_rx_tid),
    .rx_tdest(layer2_mvm1_rx_tdest),
    .rx_tuser(layer2_mvm1_rx_tuser),
    .rx_tlast(layer2_mvm1_rx_tlast),
    .rx_tready(layer2_mvm1_connector_rx_tready),
    .tx_tvalid(layer2_mvm1_tx_valid),
    .tx_tdata(layer2_mvm1_tx_tdata), 
    .tx_tstrb(layer2_mvm1_tx_tstrb),
    .tx_tkeep(layer2_mvm1_tx_tkeep),
    .tx_tid(layer2_mvm1_tx_tid),
    .tx_tdest(layer2_mvm1_tx_tdest),
    .tx_tuser(layer2_mvm1_tx_tuser),
    .tx_tlast(layer2_mvm1_tx_tlast),
    .tx_tready(layer2_mvm1_connector_tx_tready)

);


// layer 0 router blocks

(* keep *)
router_wrap noc_router_layer0_mvm0(
	.clk(clk),
    .reset(reset),
    .master_tready(layer0_mvm0_connector_rx_tready),
    .master_tdata(layer0_mvm0_rx_tdata),
	.master_tvalid(layer0_mvm0_rx_valid),
    .master_tstrb(layer0_mvm0_rx_tstrb),
    .master_tkeep(layer0_mvm0_rx_tkeep),
    .master_tid(layer0_mvm0_rx_tid),
    .master_tdest(layer0_mvm0_rx_tdest),
    .master_tuser(layer0_mvm0_rx_tuser),
    .master_tlast(layer0_mvm0_rx_tlast),
    .slave_tvalid(layer0_mvm0_tx_valid),
    .slave_tready(layer0_mvm0_connector_tx_tready), 
    .slave_tdata(layer0_mvm0_tx_tdata),
    .slave_tstrb(layer0_mvm0_tx_tstrb),
    .slave_tkeep(layer0_mvm0_tx_tkeep),
    .slave_tid(layer0_mvm0_tx_tid),
    .slave_tdest(layer0_mvm0_tx_tdest),
    .slave_tuser(layer0_mvm0_tx_tuser),
    .slave_tlast(layer0_mvm0_tx_tlast),
);

(* keep *)
router_wrap noc_router_layer0_mvm1(
	.clk(clk),
    .reset(reset),
    .master_tready(layer0_mvm1_connector_rx_tready),
    .master_tdata(layer0_mvm1_rx_tdata),
	.master_tvalid(layer0_mvm1_rx_valid),
    .master_tstrb(layer0_mvm1_rx_tstrb),
    .master_tkeep(layer0_mvm1_rx_tkeep),
    .master_tid(layer0_mvm1_rx_tid),
    .master_tdest(layer0_mvm1_rx_tdest),
    .master_tuser(layer0_mvm1_rx_tuser),
    .master_tlast(layer0_mvm1_rx_tlast),
    .slave_tvalid(layer0_mvm1_tx_valid),
    .slave_tready(layer0_mvm1_connector_tx_tready), 
    .slave_tdata(layer0_mvm1_tx_tdata),
    .slave_tstrb(layer0_mvm1_tx_tstrb),
    .slave_tkeep(layer0_mvm1_tx_tkeep),
    .slave_tid(layer0_mvm1_tx_tid),
    .slave_tdest(layer0_mvm1_tx_tdest),
    .slave_tuser(layer0_mvm1_tx_tuser),
    .slave_tlast(layer0_mvm1_tx_tlast),
);

// layer 1 router blocks
(* keep *)
router_wrap noc_router_layer1_mvm0(
	.clk(clk),
    .reset(reset),
    .master_tready(layer1_mvm0_connector_rx_tready),
    .master_tdata(layer1_mvm0_rx_tdata),
	.master_tvalid(layer1_mvm0_rx_valid),
    .master_tstrb(layer1_mvm0_rx_tstrb),
    .master_tkeep(layer1_mvm0_rx_tkeep),
    .master_tid(layer1_mvm0_rx_tid),
    .master_tdest(layer1_mvm0_rx_tdest),
    .master_tuser(layer1_mvm0_rx_tuser),
    .master_tlast(layer1_mvm0_rx_tlast),
    .slave_tvalid(layer1_mvm0_tx_valid),
    .slave_tready(layer1_mvm0_connector_tx_tready), 
    .slave_tdata(layer1_mvm0_tx_tdata),
    .slave_tstrb(layer1_mvm0_tx_tstrb),
    .slave_tkeep(layer1_mvm0_tx_tkeep),
    .slave_tid(layer1_mvm0_tx_tid),
    .slave_tdest(layer1_mvm0_tx_tdest),
    .slave_tuser(layer1_mvm0_tx_tuser),
    .slave_tlast(layer1_mvm0_tx_tlast),
);

(* keep *)
router_wrap noc_router_layer1_mvm1(
	.clk(clk),
    .reset(reset),
    .master_tready(layer1_mvm1_connector_rx_tready),
    .master_tdata(layer1_mvm1_rx_tdata),
	.master_tvalid(layer1_mvm1_rx_valid),
    .master_tstrb(layer1_mvm1_rx_tstrb),
    .master_tkeep(layer1_mvm1_rx_tkeep),
    .master_tid(layer1_mvm1_rx_tid),
    .master_tdest(layer1_mvm1_rx_tdest),
    .master_tuser(layer1_mvm1_rx_tuser),
    .master_tlast(layer1_mvm1_rx_tlast),
    .slave_tvalid(layer1_mvm1_tx_valid),
    .slave_tready(layer1_mvm1_connector_tx_tready), 
    .slave_tdata(layer1_mvm1_tx_tdata),
    .slave_tstrb(layer1_mvm1_tx_tstrb),
    .slave_tkeep(layer1_mvm1_tx_tkeep),
    .slave_tid(layer1_mvm1_tx_tid),
    .slave_tdest(layer1_mvm1_tx_tdest),
    .slave_tuser(layer1_mvm1_tx_tuser),
    .slave_tlast(layer1_mvm1_tx_tlast),
);

// layer 2 router blocks

(* keep *)
router_wrap noc_router_layer2_mvm0(
	.clk(clk),
    .reset(reset),
    .master_tready(layer2_mvm0_connector_rx_tready),
    .master_tdata(layer2_mvm0_rx_tdata),
	.master_tvalid(layer2_mvm0_rx_valid),
    .master_tstrb(layer2_mvm0_rx_tstrb),
    .master_tkeep(layer2_mvm0_rx_tkeep),
    .master_tid(layer2_mvm0_rx_tid),
    .master_tdest(layer2_mvm0_rx_tdest),
    .master_tuser(layer2_mvm0_rx_tuser),
    .master_tlast(layer2_mvm0_rx_tlast),
    .slave_tvalid(layer2_mvm0_tx_valid),
    .slave_tready(layer2_mvm0_connector_tx_tready), 
    .slave_tdata(layer2_mvm0_tx_tdata),
    .slave_tstrb(layer2_mvm0_tx_tstrb),
    .slave_tkeep(layer2_mvm0_tx_tkeep),
    .slave_tid(layer2_mvm0_tx_tid),
    .slave_tdest(layer2_mvm0_tx_tdest),
    .slave_tuser(layer2_mvm0_tx_tuser),
    .slave_tlast(layer2_mvm0_tx_tlast),
);

(* keep *)
router_wrap noc_router_layer2_mvm1(
	.clk(clk),
    .reset(reset),
    .master_tready(layer2_mvm1_connector_rx_tready),
    .master_tdata(layer2_mvm1_rx_tdata),
	.master_tvalid(layer2_mvm1_rx_valid),
    .master_tstrb(layer2_mvm1_rx_tstrb),
    .master_tkeep(layer2_mvm1_rx_tkeep),
    .master_tid(layer2_mvm1_rx_tid),
    .master_tdest(layer2_mvm1_rx_tdest),
    .master_tuser(layer2_mvm1_rx_tuser),
    .master_tlast(layer2_mvm1_rx_tlast),
    .slave_tvalid(layer2_mvm1_tx_valid),
    .slave_tready(layer2_mvm1_connector_tx_tready), 
    .slave_tdata(layer2_mvm1_tx_tdata),
    .slave_tstrb(layer2_mvm1_tx_tstrb),
    .slave_tkeep(layer2_mvm1_tx_tkeep),
    .slave_tid(layer2_mvm1_tx_tid),
    .slave_tdest(layer2_mvm1_tx_tdest),
    .slave_tuser(layer2_mvm1_tx_tuser),
    .slave_tlast(layer2_mvm1_tx_tlast),
);

// collector router block

(* keep *)
router_wrap noc_router_output_collector(
	.clk(clk),
    .reset(reset),
    .master_tready(collector_connector_rx_tready),
    .master_tdata(collector_rx_tdata),
	.master_tvalid(collector_rx_valid),
    .master_tstrb(collector_rx_tstrb),
    .master_tkeep(collector_rx_tkeep),
    .master_tid(collector_rx_tid),
    .master_tdest(collector_rx_tdest),
    .master_tuser(collector_rx_tuser),
    .master_tlast(collector_rx_tlast),
    .slave_tvalid(1'd0),
    .slave_tready(), 
    .slave_tdata(32'd0),
    .slave_tstrb(8'd0),
    .slave_tkeep(8'd0),
    .slave_tid(8'd0),
    .slave_tdest(8'd0),
    .slave_tuser(8'd0),
    .slave_tlast(1'd0),
);


// collector unit
collector collector(
	.clk(clk),
	.rst(reset),
	.rx_tvalid(collector_rx_valid),
	.rx_tdata(collector_rx_tdata),
	.rx_tstrb(collector_rx_tstrb),
	.rx_tkeep(collector_rx_tkeep),
	.rx_tid(collector_rx_tid),
	.rx_tdest(collector_rx_tdest),
	.rx_tuser(collector_rx_tuser),
	.rx_tlast(collector_rx_tlast),
	.rx_tready(collector_connector_rx_tready),
	.ofifo_rdata(collector_ofifo_rdata),
	.ofifo_ren(collector_ofifo_ren),
	.ofifo_rdy(collector_ofifo_rdy)
);


endmodule
