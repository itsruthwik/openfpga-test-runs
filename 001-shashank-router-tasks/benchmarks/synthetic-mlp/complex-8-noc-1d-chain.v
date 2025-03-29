/*
    Top level modules to instantiate an AXI handshake between 8 routers.
    Each routers receives 32-bit data, processes it, pass it to the next routers in a 2D chain.
    For now, all of our routers traffic processor's module does the same calculation, 
    but in a more complicated design, we can add different logic to each router's traffic 
    processor module.
*/

module complex_8_noc_1D_chain (
    clk,
    reset,
	data_out
);

parameter noc_dw = 32; //NoC Data Width
parameter byte_dw = 8; 
parameter routers_num = 8;

/*****************INPUT/OUTPUT Definition********************/
input wire clk;
input wire reset;

output wire [noc_dw - 1 : 0] data_out;

/*******************Internal Variables**********************/
//traffic generator
wire [noc_dw - 1 : 0] tg_data;
wire tg_valid;

//First master and slave interface
wire [noc_dw -1 : 0] mi_1_data;
wire mi_1_valid;
wire mi_1_ready;

//Last router slave interface and traffic processor
wire si_last_ready;
wire [noc_dw -1 : 0] si_last_data_in;
wire si_last_valid_in;
wire [noc_dw -1 : 0] si_last_data_out;
wire si_last_valid_out;

//Second through routers_num-2 master and slave interface, and traffic processor
//slave interface data - middle routers
wire [noc_dw - 1: 0] si_data_in_2;
wire si_valid_in_2;
wire si_ready_2;

wire [noc_dw - 1: 0] si_data_out_2;
wire si_valid_out_2;

wire [noc_dw - 1: 0] si_data_in_3;
wire si_valid_in_3;
wire si_ready_3;

wire [noc_dw - 1: 0] si_data_out_3;
wire si_valid_out_3;

wire [noc_dw - 1: 0] si_data_in_4;
wire si_valid_in_4;
wire si_ready_4;

wire [noc_dw - 1: 0] si_data_out_4;
wire si_valid_out_4;

wire [noc_dw - 1: 0] si_data_in_5;
wire si_valid_in_5;
wire si_ready_5;

wire [noc_dw - 1: 0] si_data_out_5;
wire si_valid_out_5;

wire [noc_dw - 1: 0] si_data_in_6;
wire si_valid_in_6;
wire si_ready_6;

wire [noc_dw - 1: 0] si_data_out_6;
wire si_valid_out_6;

wire [noc_dw - 1: 0] si_data_in_7;
wire si_valid_in_7;
wire si_ready_7;

wire [noc_dw - 1: 0] si_data_out_7;
wire si_valid_out_7;


//traffic processor data - middle routers
wire [noc_dw - 1: 0] tp_data_out_1;
wire tp_valid_out_2;
wire [noc_dw - 1: 0] tp_data_out_2;
wire tp_valid_out_3;
wire [noc_dw - 1: 0] tp_data_out_3;
wire tp_valid_out_4;
wire [noc_dw - 1: 0] tp_data_out_4;
wire tp_valid_out_5;
wire [noc_dw - 1: 0] tp_data_out_5;
wire tp_valid_out_6;
wire [noc_dw - 1: 0] tp_data_out_6;
wire tp_valid_out_7;

//master interface data - middle routers
wire [noc_dw - 1: 0] mi_data_2;
wire mi_valid_2;
wire mi_ready_2;
wire [noc_dw - 1: 0] mi_data_3;
wire mi_valid_3;
wire mi_ready_3;
wire [noc_dw - 1: 0] mi_data_4;
wire mi_valid_4;
wire mi_ready_4;
wire [noc_dw - 1: 0] mi_data_5;
wire mi_valid_5;
wire mi_ready_5;
wire [noc_dw - 1: 0] mi_data_6;
wire mi_valid_6;
wire mi_ready_6;
wire [noc_dw - 1: 0] mi_data_7;
wire mi_valid_7;
wire mi_ready_7;

/*******************module instantiation********************/

/*
    **********************FIRST NOC ADAPTER*****************
    1) Traffic generator generates and passes data to master_interface
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

// Router 1
(*keep*)
router_wrap router1 (
    .clk_noc(clk),
    .clk_usr(clk),
    .rst_n(rst_n),
    
    .axis_out_tvalid(),
    .axis_out_tready(),
    .axis_out_tdata(),
    .axis_out_tlast(),
    .axis_out_tid(),
    .axis_out_tdest(),

    .axis_in_tvalid(mi_1_valid),
    .axis_in_tready(mi_1_ready),
    .axis_in_tdata(mi_1_data),
    .axis_in_tlast(0),
    .axis_in_tid(0),
    .axis_in_tdest(0),

);


/*
    **********************Middle NOC ADAPTERS*****************
    1) Data comes through NoC to the NoC adapter
    2) NoC adapter passes data to slave interface
    3) slave_interface passes data to traffic processor
    4) traffic processor passes the processed data to master interface
    5) master interface passes the data back to the next NoC adapter
*/
// Router 2
(*keep*)
router_wrap router2 (
    .clk_noc(clk),
    .clk_usr(clk),
    .rst_n(rst_n),
    
    .axis_out_tvalid(si_valid_in_2),
    .axis_out_tready(si_ready_2),
    .axis_out_tdata(si_data_in_2),
    .axis_out_tlast(),
    .axis_out_tid(),
    .axis_out_tdest(),

    .axis_in_tvalid(mi_valid_2),
    .axis_in_tready(mi_ready_2),
    .axis_in_tdata(mi_data_2),
    .axis_in_tlast(0),
    .axis_in_tid(0),
    .axis_in_tdest(0),

    // .router_address(4'b0010),
);
slave_interface si_2(
             .clk(clk),
             .reset(reset),
             .tvalid_in(si_valid_in_2),
             .tdata_in(si_data_in_2),
             .tready(si_ready_2),
             .tdata_out(si_data_out_2),
             .tvalid_out(si_valid_out_2),
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
	        .tdata_in(si_data_out_2),
	        .tvalid_in(si_valid_out_2),
	        .tdata_out(tp_data_out_2),
	        .tvalid_out(tp_valid_out_2)
        );
master_interface mi_2(
             .clk(clk),
            .reset(reset),
            .tvalid_in(tp_valid_out_2),
            .tdata_in(tp_data_out_2),
            .tready(mi_ready_2),
            .tdata_out(mi_data_2),
            .tvalid_out(mi_valid_2),
            .tstrb(),
            .tkeep(),
            .tid(),
            .tdest(),
            .tuser(),
            .tlast()
        );
// Router 3
(*keep*)
router_wrap router3 (
    .clk_noc(clk),
    .clk_usr(clk),
    .rst_n(rst_n),
    
    .axis_out_tvalid(si_valid_in_3),
    .axis_out_tready(si_ready_3),
    .axis_out_tdata(si_data_in_3),
    .axis_out_tlast(),
    .axis_out_tid(),
    .axis_out_tdest(),

    .axis_in_tvalid(mi_valid_3),
    .axis_in_tready(mi_ready_3),
    .axis_in_tdata(mi_data_3),
    .axis_in_tlast(0),
    .axis_in_tid(0),
    .axis_in_tdest(0),

    // .router_address(4'b0011),
);
slave_interface si_3(
             .clk(clk),
             .reset(reset),
             .tvalid_in(si_valid_in_3),
             .tdata_in(si_data_in_3),
             .tready(si_ready_3),
             .tdata_out(si_data_out_3),
             .tvalid_out(si_valid_out_3),
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
	        .tdata_in(si_data_out_3),
	        .tvalid_in(si_valid_out_3),
	        .tdata_out(tp_data_out_3),
	        .tvalid_out(tp_valid_out_3)
        );
master_interface mi_3(
             .clk(clk),
            .reset(reset),
            .tvalid_in(tp_valid_out_3),
            .tdata_in(tp_data_out_3),
            .tready(mi_ready_3),
            .tdata_out(mi_data_3),
            .tvalid_out(mi_valid_3),
            .tstrb(),
            .tkeep(),
            .tid(),
            .tdest(),
            .tuser(),
            .tlast()
        );
// Router 4
(*keep*)
router_wrap router4 (
    .clk_noc(clk),
    .clk_usr(clk),
    .rst_n(rst_n),
    
    .axis_out_tvalid(si_valid_in_4),
    .axis_out_tready(si_ready_4),
    .axis_out_tdata(si_data_in_4),
    .axis_out_tlast(),
    .axis_out_tid(),
    .axis_out_tdest(),

    .axis_in_tvalid(mi_valid_4),
    .axis_in_tready(mi_ready_4),
    .axis_in_tdata(mi_data_4),
    .axis_in_tlast(0),
    .axis_in_tid(0),
    .axis_in_tdest(0),

    // .router_address(4'b0100),
);
slave_interface si_4(
             .clk(clk),
             .reset(reset),
             .tvalid_in(si_valid_in_4),
             .tdata_in(si_data_in_4),
             .tready(si_ready_4),
             .tdata_out(si_data_out_4),
             .tvalid_out(si_valid_out_4),
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
	        .tdata_in(si_data_out_4),
	        .tvalid_in(si_valid_out_4),
	        .tdata_out(tp_data_out_4),
	        .tvalid_out(tp_valid_out_4)
        );
master_interface mi_4(
             .clk(clk),
            .reset(reset),
            .tvalid_in(tp_valid_out_4),
            .tdata_in(tp_data_out_4),
            .tready(mi_ready_4),
            .tdata_out(mi_data_4),
            .tvalid_out(mi_valid_4),
            .tstrb(),
            .tkeep(),
            .tid(),
            .tdest(),
            .tuser(),
            .tlast()
        );
// Router 5
(*keep*)
router_wrap router5 (
    .clk_noc(clk),
    .clk_usr(clk),
    .rst_n(rst_n),
    
    .axis_out_tvalid(si_valid_in_5),
    .axis_out_tready(si_ready_5),
    .axis_out_tdata(si_data_in_5 ),
    .axis_out_tlast(),
    .axis_out_tid(),
    .axis_out_tdest(),

    .axis_in_tvalid(mi_valid_5),
    .axis_in_tready(mi_ready_5),
    .axis_in_tdata(mi_data_5),
    .axis_in_tlast(0),
    .axis_in_tid(0),
    .axis_in_tdest(0),

    // .router_address(4'b0101),
);
slave_interface si_5(
             .clk(clk),
             .reset(reset),
             .tvalid_in(si_valid_in_5),
             .tdata_in(si_data_in_5),
             .tready(si_ready_5),
             .tdata_out(si_data_out_5),
             .tvalid_out(si_valid_out_5),
             .tstrb(8'd0),
             .tkeep(8'd0),
             .tid(8'd0),
             .tdest(8'd0),
             .tuser(8'd0),
             .tlast(1'd0)
         );
traffic_processor tp_5(
 	        .clk(clk),
	        .reset(reset),
	        .tdata_in(si_data_out_5),
	        .tvalid_in(si_valid_out_5),
	        .tdata_out(tp_data_out_5),
	        .tvalid_out(tp_valid_out_5)
        );
master_interface mi_5(
             .clk(clk),
            .reset(reset),
            .tvalid_in(tp_valid_out_5),
            .tdata_in(tp_data_out_5),
            .tready(mi_ready_5),
            .tdata_out(mi_data_5),
            .tvalid_out(mi_valid_5),
            .tstrb(),
            .tkeep(),
            .tid(),
            .tdest(),
            .tuser(),
            .tlast()
        );
// Router 6
(*keep*)
router_wrap router6 (
    .clk_noc(clk),
    .clk_usr(clk),
    .rst_n(rst_n),
    
    .axis_out_tvalid(si_valid_in_6),
    .axis_out_tready(si_ready_6),
    .axis_out_tdata(si_data_in_6 ),
    .axis_out_tlast(),
    .axis_out_tid(),
    .axis_out_tdest(),

    .axis_in_tvalid(mi_valid_6),
    .axis_in_tready(mi_ready_6),
    .axis_in_tdata(mi_data_6),
    .axis_in_tlast(0),
    .axis_in_tid(0),
    .axis_in_tdest(0),

    // .router_address(4'b0110),
);
slave_interface si_6(
             .clk(clk),
             .reset(reset),
             .tvalid_in(si_valid_in_6),
             .tdata_in(si_data_in_6),
             .tready(si_ready_6),
             .tdata_out(si_data_out_6),
             .tvalid_out(si_valid_out_6),
             .tstrb(8'd0),
             .tkeep(8'd0),
             .tid(8'd0),
             .tdest(8'd0),
             .tuser(8'd0),
             .tlast(1'd0)
         );
traffic_processor tp_6(
 	        .clk(clk),
	        .reset(reset),
	        .tdata_in(si_data_out_6),
	        .tvalid_in(si_valid_out_6),
	        .tdata_out(tp_data_out_6),
	        .tvalid_out(tp_valid_out_6)
        );
master_interface mi_6(
             .clk(clk),
            .reset(reset),
            .tvalid_in(tp_valid_out_6),
            .tdata_in(tp_data_out_6),
            .tready(mi_ready_6),
            .tdata_out(mi_data_6),
            .tvalid_out(mi_valid_6),
            .tstrb(),
            .tkeep(),
            .tid(),
            .tdest(),
            .tuser(),
            .tlast()
        );

// Router 7
(*keep*)
router_wrap router7 (
    .clk_noc(clk),
    .clk_usr(clk),
    .rst_n(rst_n),
    
    .axis_out_tvalid(si_valid_in_7),
    .axis_out_tready(si_ready_7),
    .axis_out_tdata(si_data_in_7 ),
    .axis_out_tlast(),
    .axis_out_tid(),
    .axis_out_tdest(),

    .axis_in_tvalid(mi_valid_7),
    .axis_in_tready(mi_ready_7),
    .axis_in_tdata(mi_data_7),
    .axis_in_tlast(0),
    .axis_in_tid(0),
    .axis_in_tdest(0),

    // .router_address(4'b0111),
);
slave_interface si_7(
             .clk(clk),
             .reset(reset),
             .tvalid_in(si_valid_in_7),
             .tdata_in(si_data_in_7),
             .tready(si_ready_7),
             .tdata_out(si_data_out_7),
             .tvalid_out(si_valid_out_7),
             .tstrb(8'd0),
             .tkeep(8'd0),
             .tid(8'd0),
             .tdest(8'd0),
             .tuser(8'd0),
             .tlast(1'd0)
         );
traffic_processor tp_7(
 	        .clk(clk),
	        .reset(reset),
	        .tdata_in(si_data_out_7),
	        .tvalid_in(si_valid_out_7),
	        .tdata_out(tp_data_out_7),
	        .tvalid_out(tp_valid_out_7)
        );
master_interface mi_7(
             .clk(clk),
            .reset(reset),
            .tvalid_in(tp_valid_out_7),
            .tdata_in(tp_data_out_7),
            .tready(mi_ready_7),
            .tdata_out(mi_data_7),
            .tvalid_out(mi_valid_7),
            .tstrb(),
            .tkeep(),
            .tid(),
            .tdest(),
            .tuser(),
            .tlast()
        );

/*
    **********************Last NOC ADAPTER*****************
    1) Data comes through NoC to the ROUTERS_NUM - 1 NoC adapter
    2) NoC adapter passes data to slave interface
    3) slave_interface passes data to traffic processor
    4) traffic processor passes the processed data to the top module output
*/

// Router 8 
(*keep*)
router_wrap router8 (
    .clk_noc(clk),
    .clk_usr(clk),
    .rst_n(rst_n),
    
    .axis_out_tvalid(si_last_valid_in),
    .axis_out_tready(si_last_ready),
    .axis_out_tdata(si_last_data_in ),
    .axis_out_tlast(),
    .axis_out_tid(),
    .axis_out_tdest(),

    .axis_in_tvalid(0),
    .axis_in_tready(),
    .axis_in_tdata(0),
    .axis_in_tlast(0),
    .axis_in_tid(0),
    .axis_in_tdest(0),

    // .router_address(4'b1000),
);


slave_interface si_8(
	.clk(clk),
	.reset(reset),
	.tvalid_in(si_last_valid_in),
	.tdata_in(si_last_data_in),
	.tready(si_last_ready),
	.tdata_out(si_last_data_out),
	.tvalid_out(si_last_valid_out),
	.tstrb(8'd0),
	.tkeep(8'd0),
	.tid(8'd0),
	.tdest(8'd0),
	.tuser(8'd0),
	.tlast(1'd0)
);

traffic_processor tp_8(
	.clk(clk),
	.reset(reset),
	.tdata_in(si_last_data_out),
	.tvalid_in(si_last_valid_out),
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
parameter filter_dw = 18;
parameter acc_const = 4;

/*****************INPUT/OUTPUT Definition********************/
input wire clk;
input wire reset;

output wire [noc_dw - 1 : 0] tdata;
output wire tvalid;

/*******************Internal Variables**********************/
wire [filter_dw - 1 : 0] fir_out;
reg  [filter_dw - 1 : 0] fir_in;
reg fir_valid;

/*******************module instantiation*******************/
fir fir_filter(
	.clk(clk),
	.reset(reset),
	.clk_ena(1'b1),
	.i_valid(fir_valid),
	.i_in(fir_in),
	.o_valid(tvalid),
	.o_out(fir_out)
);

/******************Sequential Logic*************************/
always @ (posedge clk, posedge reset)
begin
	if(reset == 1'b1) begin
	  fir_in <= 0;
     fir_valid <= 1'b0;
	end
	else begin
		fir_in <= fir_in + acc_const;
		fir_valid <= 1'b1;
	end
end

/*******************Output Logic***************************/
assign tdata = {{14{1'b0}},fir_out};

endmodule 


/* This is the traffic processor module. This
	accepts data coming in from the NoC and 
	encrypts it using sha algorithm
*/

module traffic_processor (
	clk, 
	reset, /* synthesis preserve */
	tdata_in,  /* synthesis preserve */
	tvalid_in, /* synthesis preserve */
	tdata_out, /* synthesis preserve */
	tvalid_out /* synthesis preserve */
);

/*****************Parameter Declarations********************/
parameter noc_dw = 32;

/*****************INPUT/OUTPUT Definition*******************/
input wire clk; /* synthesis keep */
input wire reset; /* synthesis keep */
input wire [noc_dw-1:0] tdata_in; /* synthesis keep */
input tvalid_in; /* synthesis keep */

output reg [noc_dw-1:0] tdata_out; /* synthesis keep */
output reg tvalid_out; /* synthesis keep */

/*******************Internal Variables**********************/
wire [noc_dw - 1 : 0] sha_out; /* synthesis keep */
reg valid_reg; /* synthesis keep */

/*******************module instantiation*******************/
sha1 sha1_module 
(
	.clk_i(clk),
	.rst_i(reset),
	.text_i(tdata_in),
	.text_o(sha_out),
	.cmd_i({{1{1'b0}},{2{tvalid_in}}}),
	.cmd_w_i(tvalid_in), 
	.cmd_o()
);

/******************Sequential Logic*************************/
/*
	This module will wait on the tvalid signal
	to indicate whether data is available to read
	in from the input. 
*/

always @(posedge clk)
begin
	if (reset)begin
			tdata_out <= 0;
			tvalid_out <= 0;
		end
	else begin
			if (tvalid_in) begin
				tdata_out <= sha_out;
				tvalid_out <= 1'b1;
			end
		end
end
		
endmodule 
						