module noc_loaded_pe12_soft #(
    parameter DATAW = 128,                                    
    parameter IDW = 32,      
    parameter DESTW = 4,    
    parameter USERW = 32
) (
    input                  CLK,
    // input                  CLK_NOC,
    input                  RST_N,

    // AXI-Stream Slave Interface
    // input                 AXIS_S_TVALID,
    // output                AXIS_S_TREADY,
    // input    [DATAW-1:0]  AXIS_S_TDATA,
    // input                 AXIS_S_TLAST,
    // input    [IDW-1:0]    AXIS_S_TID,
    // input    [USERW-1:0]  AXIS_S_TUSER,
    // input    [DESTW-1:0]  AXIS_S_TDEST,

    input [DESTW-1:0]  pe_out_tdest_0,
    input [DESTW-1:0]  pe_out_tdest_1,
    input [DESTW-1:0]  pe_out_tdest_2,
    input [DESTW-1:0]  pe_out_tdest_3,
    input [DESTW-1:0]  pe_out_tdest_4,
    input [DESTW-1:0]  pe_out_tdest_5,
    input [DESTW-1:0]  pe_out_tdest_6,
    input [DESTW-1:0]  pe_out_tdest_7,
    input [DESTW-1:0]  pe_out_tdest_8,
    input [DESTW-1:0]  pe_out_tdest_9,
    input [DESTW-1:0]  pe_out_tdest_10,
    input [DESTW-1:0]  pe_out_tdest_11,

    // AXI-Stream Master Interface
    output                 AXIS_M_TVALID,
    input                  AXIS_M_TREADY,
    output   [DATAW-1:0]   AXIS_M_TDATA,
    output                 AXIS_M_TLAST,
    output   [IDW-1:0]     AXIS_M_TID,
    output   [USERW-1:0]   AXIS_M_TUSER,
    output   [DESTW-1:0]   AXIS_M_TDEST
);


    wire CLK_NOC;

    assign CLK_NOC = CLK;
    
// PE signals
    wire pe_in_tvalid_0;
    wire pe_in_tvalid_1;
    wire pe_in_tvalid_2;
    wire pe_in_tvalid_3;
    wire pe_in_tvalid_4;
    wire pe_in_tvalid_5;
    wire pe_in_tvalid_6;
    wire pe_in_tvalid_7;
    wire pe_in_tvalid_8;
    wire pe_in_tvalid_9;
    wire pe_in_tvalid_10;
    wire pe_in_tvalid_11;

    wire pe_out_tvalid_0;
    wire pe_out_tvalid_1;
    wire pe_out_tvalid_2;
    wire pe_out_tvalid_3;
    wire pe_out_tvalid_4;
    wire pe_out_tvalid_5;
    wire pe_out_tvalid_6;
    wire pe_out_tvalid_7;
    wire pe_out_tvalid_8;
    wire pe_out_tvalid_9;
    wire pe_out_tvalid_10;
    wire pe_out_tvalid_11;

    wire pe_in_tready_0;
    wire pe_in_tready_1;
    wire pe_in_tready_2;
    wire pe_in_tready_3;
    wire pe_in_tready_4;
    wire pe_in_tready_5;
    wire pe_in_tready_6;
    wire pe_in_tready_7;
    wire pe_in_tready_8;
    wire pe_in_tready_9;
    wire pe_in_tready_10;
    wire pe_in_tready_11;

    wire pe_out_tready_0;
    wire pe_out_tready_1;
    wire pe_out_tready_2;
    wire pe_out_tready_3;
    wire pe_out_tready_4;
    wire pe_out_tready_5;
    wire pe_out_tready_6;
    wire pe_out_tready_7;
    wire pe_out_tready_8;
    wire pe_out_tready_9;
    wire pe_out_tready_10;
    wire pe_out_tready_11;

    wire [DATAW-1:0] pe_in_tdata_0;
    wire [DATAW-1:0] pe_in_tdata_1;
    wire [DATAW-1:0] pe_in_tdata_2;
    wire [DATAW-1:0] pe_in_tdata_3;
    wire [DATAW-1:0] pe_in_tdata_4;
    wire [DATAW-1:0] pe_in_tdata_5;
    wire [DATAW-1:0] pe_in_tdata_6;
    wire [DATAW-1:0] pe_in_tdata_7;
    wire [DATAW-1:0] pe_in_tdata_8;
    wire [DATAW-1:0] pe_in_tdata_9;
    wire [DATAW-1:0] pe_in_tdata_10;
    wire [DATAW-1:0] pe_in_tdata_11;

    wire [DATAW-1:0] pe_out_tdata_0;
    wire [DATAW-1:0] pe_out_tdata_1;
    wire [DATAW-1:0] pe_out_tdata_2;
    wire [DATAW-1:0] pe_out_tdata_3;
    wire [DATAW-1:0] pe_out_tdata_4;
    wire [DATAW-1:0] pe_out_tdata_5;
    wire [DATAW-1:0] pe_out_tdata_6;
    wire [DATAW-1:0] pe_out_tdata_7;
    wire [DATAW-1:0] pe_out_tdata_8;
    wire [DATAW-1:0] pe_out_tdata_9;
    wire [DATAW-1:0] pe_out_tdata_10;
    wire [DATAW-1:0] pe_out_tdata_11;

// master wires 
    wire m_in_tvalid;
    wire m_in_tready;
    wire [DATAW-1:0] m_in_tdata;
    wire [DESTW-1:0] m_in_tdest;

    wire m_out_tvalid;
    wire m_out_tready;
    wire [DATAW-1:0] m_out_tdata;
    wire [DESTW-1:0] m_out_tdest;


// master inst
master_module m_inst (
    .clk(CLK),
    .reset(~RST_N),

    .axis_rx_tvalid(m_in_tvalid),
    .axis_rx_tdata(m_in_tdata),
    .axis_rx_tdest(m_in_tdest),
    .axis_rx_tready(m_in_tready),

    .axis_tx_tvalid(m_out_tvalid),
    .axis_tx_tdata(m_out_tdata),
    .axis_tx_tdest(m_out_tdest),
    .axis_tx_tready(m_out_tready)
);



wrapper_pe pe_inst_0 (
    .clk(CLK),
    .reset(~RST_N),

    .in_tvalid(pe_in_tvalid_0),
    .in_tdata(pe_in_tdata_0),
    .in_tready(pe_in_tready_0),

    .out_tvalid(pe_out_tvalid_0),
    .out_tdata(pe_out_tdata_0),
    .out_tready(pe_out_tready_0)
);

wrapper_pe pe_inst_1 (
    .clk(CLK),
    .reset(~RST_N),

    .in_tvalid(pe_in_tvalid_1),
    .in_tdata(pe_in_tdata_1),
    .in_tready(pe_in_tready_1),

    .out_tvalid(pe_out_tvalid_1),
    .out_tdata(pe_out_tdata_1),
    .out_tready(pe_out_tready_1)
);

wrapper_pe pe_inst_2 (
    .clk(CLK),
    .reset(~RST_N),

    .in_tvalid(pe_in_tvalid_2),
    .in_tdata(pe_in_tdata_2),
    .in_tready(pe_in_tready_2),

    .out_tvalid(pe_out_tvalid_2),
    .out_tdata(pe_out_tdata_2),
    .out_tready(pe_out_tready_2)
);

wrapper_pe pe_inst_3 (
    .clk(CLK),
    .reset(~RST_N),

    .in_tvalid(pe_in_tvalid_3),
    .in_tdata(pe_in_tdata_3),
    .in_tready(pe_in_tready_3),

    .out_tvalid(pe_out_tvalid_3),
    .out_tdata(pe_out_tdata_3),
    .out_tready(pe_out_tready_3)
);

wrapper_pe pe_inst_4 (
    .clk(CLK),
    .reset(~RST_N),

    .in_tvalid(pe_in_tvalid_4),
    .in_tdata(pe_in_tdata_4),
    .in_tready(pe_in_tready_4),

    .out_tvalid(pe_out_tvalid_4),
    .out_tdata(pe_out_tdata_4),
    .out_tready(pe_out_tready_4)
);

wrapper_pe pe_inst_5 (
    .clk(CLK),
    .reset(~RST_N),

    .in_tvalid(pe_in_tvalid_5),
    .in_tdata(pe_in_tdata_5),
    .in_tready(pe_in_tready_5),

    .out_tvalid(pe_out_tvalid_5),
    .out_tdata(pe_out_tdata_5),
    .out_tready(pe_out_tready_5)
);

wrapper_pe pe_inst_6 (
    .clk(CLK),
    .reset(~RST_N),

    .in_tvalid(pe_in_tvalid_6),
    .in_tdata(pe_in_tdata_6),
    .in_tready(pe_in_tready_6),

    .out_tvalid(pe_out_tvalid_6),
    .out_tdata(pe_out_tdata_6),
    .out_tready(pe_out_tready_6)
);
wrapper_pe pe_inst_7 (
    .clk(CLK),
    .reset(~RST_N),

    .in_tvalid(pe_in_tvalid_7),
    .in_tdata(pe_in_tdata_7),
    .in_tready(pe_in_tready_7),

    .out_tvalid(pe_out_tvalid_7),
    .out_tdata(pe_out_tdata_7),
    .out_tready(pe_out_tready_7)
);
wrapper_pe pe_inst_8 (
    .clk(CLK),
    .reset(~RST_N),

    .in_tvalid(pe_in_tvalid_8),
    .in_tdata(pe_in_tdata_8),
    .in_tready(pe_in_tready_8),

    .out_tvalid(pe_out_tvalid_8),
    .out_tdata(pe_out_tdata_8),
    .out_tready(pe_out_tready_8)
);
wrapper_pe pe_inst_9 (
    .clk(CLK),
    .reset(~RST_N),

    .in_tvalid(pe_in_tvalid_9),
    .in_tdata(pe_in_tdata_9),
    .in_tready(pe_in_tready_9),

    .out_tvalid(pe_out_tvalid_9),
    .out_tdata(pe_out_tdata_9),
    .out_tready(pe_out_tready_9)
);
wrapper_pe pe_inst_10 (
    .clk(CLK),
    .reset(~RST_N),

    .in_tvalid(pe_in_tvalid_10),
    .in_tdata(pe_in_tdata_10),
    .in_tready(pe_in_tready_10),

    .out_tvalid(pe_out_tvalid_10),
    .out_tdata(pe_out_tdata_10),
    .out_tready(pe_out_tready_10)
);
wrapper_pe pe_inst_11 (
    .clk(CLK),
    .reset(~RST_N),

    .in_tvalid(pe_in_tvalid_11),
    .in_tdata(pe_in_tdata_11),
    .in_tready(pe_in_tready_11),

    .out_tvalid(pe_out_tvalid_11),
    .out_tdata(pe_out_tdata_11),
    .out_tready(pe_out_tready_11)
);


// rtr-to-rtr

parameter r_data_width = 256; // 64 x 4
parameter r_dest_width = 16;   // 4 x 4

// inpts
    wire [r_data_width-1:0] data_in_0;
    wire [r_data_width-1:0] data_in_1;
    wire [r_data_width-1:0] data_in_2;
    wire [r_data_width-1:0] data_in_3;
    wire [r_data_width-1:0] data_in_4;
    wire [r_data_width-1:0] data_in_5;
    wire [r_data_width-1:0] data_in_6;
    wire [r_data_width-1:0] data_in_7;
    wire [r_data_width-1:0] data_in_8;
    wire [r_data_width-1:0] data_in_9;
    wire [r_data_width-1:0] data_in_10;
    wire [r_data_width-1:0] data_in_11;
    wire [r_data_width-1:0] data_in_12;

    wire [r_dest_width-1:0] dest_in_0;
    wire [r_dest_width-1:0] dest_in_1;
    wire [r_dest_width-1:0] dest_in_2;
    wire [r_dest_width-1:0] dest_in_3;
    wire [r_dest_width-1:0] dest_in_4;
    wire [r_dest_width-1:0] dest_in_5;
    wire [r_dest_width-1:0] dest_in_6;
    wire [r_dest_width-1:0] dest_in_7;
    wire [r_dest_width-1:0] dest_in_8;
    wire [r_dest_width-1:0] dest_in_9;
    wire [r_dest_width-1:0] dest_in_10;
    wire [r_dest_width-1:0] dest_in_11;
    wire [r_dest_width-1:0] dest_in_12;

    wire [3:0] is_tail_in_0;
    wire [3:0] is_tail_in_1;
    wire [3:0] is_tail_in_2;
    wire [3:0] is_tail_in_3;
    wire [3:0] is_tail_in_4;
    wire [3:0] is_tail_in_5;
    wire [3:0] is_tail_in_6;
    wire [3:0] is_tail_in_7;
    wire [3:0] is_tail_in_8;
    wire [3:0] is_tail_in_9;
    wire [3:0] is_tail_in_10;
    wire [3:0] is_tail_in_11;
    wire [3:0] is_tail_in_12;

    wire [3:0] send_in_0;
    wire [3:0] send_in_1;
    wire [3:0] send_in_2;
    wire [3:0] send_in_3;
    wire [3:0] send_in_4;
    wire [3:0] send_in_5;
    wire [3:0] send_in_6;
    wire [3:0] send_in_7;
    wire [3:0] send_in_8;
    wire [3:0] send_in_9;
    wire [3:0] send_in_10;
    wire [3:0] send_in_11;
    wire [3:0] send_in_12;

    wire [3:0] credit_out_0;
    wire [3:0] credit_out_1;
    wire [3:0] credit_out_2;
    wire [3:0] credit_out_3;
    wire [3:0] credit_out_4;
    wire [3:0] credit_out_5;
    wire [3:0] credit_out_6;
    wire [3:0] credit_out_7;
    wire [3:0] credit_out_8;
    wire [3:0] credit_out_9;
    wire [3:0] credit_out_10;
    wire [3:0] credit_out_11;
    wire [3:0] credit_out_12;

// outputs  
    wire [r_data_width-1:0] data_out_0;
    wire [r_data_width-1:0] data_out_1;
    wire [r_data_width-1:0] data_out_2;
    wire [r_data_width-1:0] data_out_3;
    wire [r_data_width-1:0] data_out_4;
    wire [r_data_width-1:0] data_out_5;
    wire [r_data_width-1:0] data_out_6;
    wire [r_data_width-1:0] data_out_7;
    wire [r_data_width-1:0] data_out_8;
    wire [r_data_width-1:0] data_out_9;
    wire [r_data_width-1:0] data_out_10;
    wire [r_data_width-1:0] data_out_11;
    wire [r_data_width-1:0] data_out_12;

    wire [r_dest_width-1:0] dest_out_0;
    wire [r_dest_width-1:0] dest_out_1;
    wire [r_dest_width-1:0] dest_out_2;
    wire [r_dest_width-1:0] dest_out_3;
    wire [r_dest_width-1:0] dest_out_4; 
    wire [r_dest_width-1:0] dest_out_5;
    wire [r_dest_width-1:0] dest_out_6;
    wire [r_dest_width-1:0] dest_out_7;
    wire [r_dest_width-1:0] dest_out_8;
    wire [r_dest_width-1:0] dest_out_9;
    wire [r_dest_width-1:0] dest_out_10;
    wire [r_dest_width-1:0] dest_out_11;
    wire [r_dest_width-1:0] dest_out_12;

    wire [3:0] is_tail_out_0;
    wire [3:0] is_tail_out_1;
    wire [3:0] is_tail_out_2;
    wire [3:0] is_tail_out_3;
    wire [3:0] is_tail_out_4;
    wire [3:0] is_tail_out_5;
    wire [3:0] is_tail_out_6;
    wire [3:0] is_tail_out_7;
    wire [3:0] is_tail_out_8;
    wire [3:0] is_tail_out_9;
    wire [3:0] is_tail_out_10;
    wire [3:0] is_tail_out_11;
    wire [3:0] is_tail_out_12;

    wire [3:0] send_out_0;
    wire [3:0] send_out_1;
    wire [3:0] send_out_2;
    wire [3:0] send_out_3;
    wire [3:0] send_out_4;
    wire [3:0] send_out_5;
    wire [3:0] send_out_6;
    wire [3:0] send_out_7;
    wire [3:0] send_out_8;
    wire [3:0] send_out_9;
    wire [3:0] send_out_10;
    wire [3:0] send_out_11;
    wire [3:0] send_out_12;

    wire [3:0] credit_in_0;
    wire [3:0] credit_in_1;
    wire [3:0] credit_in_2;
    wire [3:0] credit_in_3;
    wire [3:0] credit_in_4;
    wire [3:0] credit_in_5;
    wire [3:0] credit_in_6;   
    wire [3:0] credit_in_7;
    wire [3:0] credit_in_8;
    wire [3:0] credit_in_9;
    wire [3:0] credit_in_10;
    wire [3:0] credit_in_11;
    wire [3:0] credit_in_12;
// done


router_wrap rtr_inst0 (
.clk_noc(CLK_NOC),
.clk_usr(CLK),
.rst_n(RST_N),

.axis_in_tvalid(pe_out_tvalid_0),
.axis_in_tready(pe_out_tready_0),
.axis_in_tdata(pe_out_tdata_0),
// .axis_in_tlast(),
.axis_in_tdest(pe_out_tdest_0),

.axis_out_tvalid(pe_in_tvalid_0),
.axis_out_tready(pe_in_tready_0),
.axis_out_tdata(pe_in_tdata_0),
// .axis_out_tlast(),
.axis_out_tdest(pe_in_tdest_0),

.router_address(4'b0000),

.data_in(data_in_0),
.dest_in(dest_in_0),
.is_tail_in(is_tail_in_0),
.send_in(send_in_0),
.credit_out(credit_out_0),

.data_out(data_out_0),
.dest_out(dest_out_0),
.is_tail_out(is_tail_out_0),
.send_out(send_out_0),
.credit_in(credit_in_0)
);


router_wrap rtr_inst1 (
.clk_noc(CLK_NOC),
.clk_usr(CLK),
.rst_n(RST_N),

.axis_in_tvalid(pe_out_tvalid_1),
.axis_in_tready(pe_out_tready_1),
.axis_in_tdata(pe_out_tdata_1),
// .axis_in_tlast(),
.axis_in_tdest(pe_out_tdest_1),

.axis_out_tvalid(pe_in_tvalid_1),
.axis_out_tready(pe_in_tready_1),
.axis_out_tdata(pe_in_tdata_1),
// .axis_out_tlast(),
// .axis_out_tdest(),

.router_address(4'b0001),

.data_in(data_in_1),
.dest_in(dest_in_1),
.is_tail_in(is_tail_in_1),
.send_in(send_in_1),
.credit_out(credit_out_1),

.data_out(data_out_1),
.dest_out(dest_out_1),
.is_tail_out(is_tail_out_1),
.send_out(send_out_1),
.credit_in(credit_in_1)
);


router_wrap rtr_inst2 (
.clk_noc(CLK_NOC),
.clk_usr(CLK),
.rst_n(RST_N),

.axis_in_tvalid(pe_out_tvalid_2),
.axis_in_tready(pe_out_tready_2),
.axis_in_tdata(pe_out_tdata_2),
// .axis_in_tlast(),
.axis_in_tdest(pe_out_tdest_2),

.axis_out_tvalid(pe_in_tvalid_2),
.axis_out_tready(pe_in_tready_2),
.axis_out_tdata(pe_in_tdata_2),
// .axis_out_tlast(),
// .axis_out_tdest(),

.router_address(4'b0010),

.data_in(data_in_2),
.dest_in(dest_in_2),
.is_tail_in(is_tail_in_2),
.send_in(send_in_2),
.credit_out(credit_out_2),

.data_out(data_out_2),
.dest_out(dest_out_2),
.is_tail_out(is_tail_out_2),
.send_out(send_out_2),
.credit_in(credit_in_2)
);


router_wrap rtr_inst3 (
.clk_noc(CLK_NOC),
.clk_usr(CLK),
.rst_n(RST_N),

.axis_in_tvalid(pe_out_tvalid_3),
.axis_in_tready(pe_out_tready_3),
.axis_in_tdata(pe_out_tdata_3),
// .axis_in_tlast(),
.axis_in_tdest(pe_out_tdest_3),

.axis_out_tvalid(pe_in_tvalid_3),
.axis_out_tready(pe_in_tready_3),
.axis_out_tdata(pe_in_tdata_3),
// .axis_out_tlast(),
// .axis_out_tdest(),

.router_address(4'b0011),


.data_in(data_in_3),
.dest_in(dest_in_3),
.is_tail_in(is_tail_in_3),
.send_in(send_in_3),
.credit_out(credit_out_3),

.data_out(data_out_3),
.dest_out(dest_out_3),
.is_tail_out(is_tail_out_3),
.send_out(send_out_3),
.credit_in(credit_in_3)
);

router_wrap rtr_inst4 (
.clk_noc(CLK_NOC),
.clk_usr(CLK),
.rst_n(RST_N),

.axis_in_tvalid(pe_out_tvalid_4),
.axis_in_tready(pe_out_tready_4),
.axis_in_tdata(pe_out_tdata_4),
// .axis_in_tlast(),
.axis_in_tdest(pe_out_tdest_4),

.axis_out_tvalid(pe_in_tvalid_4),
.axis_out_tready(pe_in_tready_4),
.axis_out_tdata(pe_in_tdata_4),
// .axis_out_tlast(),
// .axis_out_tdest(),

.router_address(4'b0100),

.data_in(data_in_4),
.dest_in(dest_in_4),
.is_tail_in(is_tail_in_4),
.send_in(send_in_4),
.credit_out(credit_out_4),

.data_out(data_out_4),
.dest_out(dest_out_4),
.is_tail_out(is_tail_out_4),
.send_out(send_out_4),
.credit_in(credit_in_4)
);

router_wrap rtr_inst5 (
.clk_noc(CLK_NOC),
.clk_usr(CLK),
.rst_n(RST_N),

.axis_in_tvalid(pe_out_tvalid_5),
.axis_in_tready(pe_out_tready_5),
.axis_in_tdata(pe_out_tdata_5),
// .axis_in_tlast(),
.axis_in_tdest(pe_out_tdest_5),

.axis_out_tvalid(pe_in_tvalid_5),
.axis_out_tready(pe_in_tready_5),
.axis_out_tdata(pe_in_tdata_5),
// .axis_out_tlast(),
// .axis_out_tdest(),

.router_address(4'b0101),

.data_in(data_in_5),
.dest_in(dest_in_5),
.is_tail_in(is_tail_in_5),
.send_in(send_in_5),
.credit_out(credit_out_5),

.data_out(data_out_5),
.dest_out(dest_out_5),
.is_tail_out(is_tail_out_5),
.send_out(send_out_5),
.credit_in(credit_in_5)
);

router_wrap rtr_inst6 (
.clk_noc(CLK_NOC),
.clk_usr(CLK),  
.rst_n(RST_N),

.axis_in_tvalid(pe_out_tvalid_6),
.axis_in_tready(pe_out_tready_6),
.axis_in_tdata(pe_out_tdata_6),
// .axis_in_tlast(),
.axis_in_tdest(pe_out_tdest_6),

.axis_out_tvalid(pe_in_tvalid_6),
.axis_out_tready(pe_in_tready_6),
.axis_out_tdata(pe_in_tdata_6),
// .axis_out_tlast(),
// .axis_out_tdest(),

.router_address(4'b0110),

.data_in(data_in_6),
.dest_in(dest_in_6),
.is_tail_in(is_tail_in_6),
.send_in(send_in_6),
.credit_out(credit_out_6),

.data_out(data_out_6),
.dest_out(dest_out_6),
.is_tail_out(is_tail_out_6),
.send_out(send_out_6),
.credit_in(credit_in_6)
);

router_wrap rtr_inst7 (
.clk_noc(CLK_NOC),
.clk_usr(CLK),
.rst_n(RST_N),

.axis_in_tvalid(pe_out_tvalid_7),
.axis_in_tready(pe_out_tready_7),
.axis_in_tdata(pe_out_tdata_7), 
// .axis_in_tlast(),
.axis_in_tdest(pe_out_tdest_7),

.axis_out_tvalid(pe_in_tvalid_7),
.axis_out_tready(pe_in_tready_7),
.axis_out_tdata(pe_in_tdata_7),
// .axis_out_tlast(),
// .axis_out_tdest(),

.router_address(4'b0111),

.data_in(data_in_7),
.dest_in(dest_in_7),
.is_tail_in(is_tail_in_7),
.send_in(send_in_7),
.credit_out(credit_out_7),

.data_out(data_out_7),
.dest_out(dest_out_7),
.is_tail_out(is_tail_out_7),
.send_out(send_out_7),
.credit_in(credit_in_7)
);

router_wrap rtr_inst8 (
.clk_noc(CLK_NOC),
.clk_usr(CLK),
.rst_n(RST_N),

.axis_in_tvalid(pe_out_tvalid_8),
.axis_in_tready(pe_out_tready_8),
.axis_in_tdata(pe_out_tdata_8),
// .axis_in_tlast(),    
.axis_in_tdest(pe_out_tdest_8),

.axis_out_tvalid(pe_in_tvalid_8),
.axis_out_tready(pe_in_tready_8),
.axis_out_tdata(pe_in_tdata_8),
// .axis_out_tlast(),
// .axis_out_tdest(),

.router_address(4'b1000),

.data_in(data_in_8),
.dest_in(dest_in_8),
.is_tail_in(is_tail_in_8),
.send_in(send_in_8),
.credit_out(credit_out_8),

.data_out(data_out_8),
.dest_out(dest_out_8),
.is_tail_out(is_tail_out_8),
.send_out(send_out_8),
.credit_in(credit_in_8)
);

router_wrap rtr_inst9 (
.clk_noc(CLK_NOC),
.clk_usr(CLK),
.rst_n(RST_N),
.axis_in_tvalid(pe_out_tvalid_9),
.axis_in_tready(pe_out_tready_9),
.axis_in_tdata(pe_out_tdata_9),
// .axis_in_tlast(),
.axis_in_tdest(pe_out_tdest_9),

.axis_out_tvalid(pe_in_tvalid_9),
.axis_out_tready(pe_in_tready_9),
.axis_out_tdata(pe_in_tdata_9),
// .axis_out_tlast(),
// .axis_out_tdest(),

.router_address(4'b1001),

.data_in(data_in_9),
.dest_in(dest_in_9),
.is_tail_in(is_tail_in_9),
.send_in(send_in_9),
.credit_out(credit_out_9),

.data_out(data_out_9),
.dest_out(dest_out_9),
.is_tail_out(is_tail_out_9),
.send_out(send_out_9),
.credit_in(credit_in_9)
);

router_wrap rtr_inst10 (
.clk_noc(CLK_NOC),
.clk_usr(CLK),
.rst_n(RST_N),

.axis_in_tvalid(pe_out_tvalid_10),
.axis_in_tready(pe_out_tready_10),
.axis_in_tdata(pe_out_tdata_10),
// .axis_in_tlast(),
.axis_in_tdest(pe_out_tdest_10),

.axis_out_tvalid(pe_in_tvalid_10),
.axis_out_tready(pe_in_tready_10),
.axis_out_tdata(pe_in_tdata_10),
// .axis_out_tlast(),
// .axis_out_tdest(),

.router_address(4'b1010),

.data_in(data_in_10),
.dest_in(dest_in_10),
.is_tail_in(is_tail_in_10),
.send_in(send_in_10),
.credit_out(credit_out_10),

.data_out(data_out_10),
.dest_out(dest_out_10),
.is_tail_out(is_tail_out_10),
.send_out(send_out_10),
.credit_in(credit_in_10)
);

router_wrap rtr_inst11 (
.clk_noc(CLK_NOC),
.clk_usr(CLK),  
.rst_n(RST_N),

.axis_in_tvalid(pe_out_tvalid_11),
.axis_in_tready(pe_out_tready_11),
.axis_in_tdata(pe_out_tdata_11),
// .axis_in_tlast(),
.axis_in_tdest(pe_out_tdest_11),

.axis_out_tvalid(pe_in_tvalid_11),
.axis_out_tready(pe_in_tready_11),
.axis_out_tdata(pe_in_tdata_11),
// .axis_out_tlast(),
// .axis_out_tdest(),

.router_address(4'b1011),

.data_in(data_in_11),
.dest_in(dest_in_11),
.is_tail_in(is_tail_in_11),
.send_in(send_in_11),
.credit_out(credit_out_11),

.data_out(data_out_11),
.dest_out(dest_out_11),
.is_tail_out(is_tail_out_11),
.send_out(send_out_11),
.credit_in(credit_in_11)
);

router_wrap rtr_inst12 (
.clk_noc(CLK_NOC),
.clk_usr(CLK),
.rst_n(RST_N),

.axis_in_tvalid(m_out_tvalid),
.axis_in_tready(m_out_tready),
.axis_in_tdata(m_out_tdata),
// .axis_in_tlast(),
.axis_in_tdest(m_out_tdest),

.axis_out_tvalid(m_in_tvalid),
.axis_out_tready(m_in_tready),
.axis_out_tdata(m_in_tdata),
// .axis_out_tlast(),
// .axis_out_tdest(),

.router_address(4'b1100),

.data_in(data_in_12),
.dest_in(dest_in_12),
.is_tail_in(is_tail_in_12),
.send_in(send_in_12),
.credit_out(credit_out_12),

.data_out(data_out_12),
.dest_out(dest_out_12),
.is_tail_out(is_tail_out_12),
.send_out(send_out_12),
.credit_in(credit_in_12)
);




assign AXIS_M_TVALID = m_in_tvalid;
assign AXIS_M_TDATA = m_in_tdata;
assign AXIS_M_TLAST = 1'b0;
// assign AXIS_M_TID = 0;
assign AXIS_M_TID = 0 + AXIS_M_TREADY;

assign AXIS_M_TUSER = 0;
assign AXIS_M_TDEST = m_in_tdest;
// assign m_in_tready = AXIS_M_TREADY;


// router to rtr connections

//  NORTH = 1;  - 63:0                  3:0    0
//  SOUTH = 2;  - 127:64               7:4     1 
//  EAST = 3;   - 191:128              11:8   2
//  WEST = 4;  - 255:192               15:12   3

// rtr 0 conneted to rtr 1, 4
     // rtr 0 north = rtr 4 South

     assign data_in_0[63:0] = data_out_4[127:64];
     assign dest_in_0[3:0] = dest_out_4[7:4];
    assign is_tail_in_0[0] = is_tail_out_4[1];
    assign send_in_0[0] = send_out_4[1];
    assign credit_out_4[1] = credit_in_0[0];

    assign data_in_4[127:64] = data_out_0[63:0];
    assign dest_in_4[7:4] = dest_out_0[3:0];
    assign is_tail_in_4[1] = is_tail_out_0[0];
    assign send_in_4[1] = send_out_0[0];
    assign credit_out_0[0] = credit_in_4[1];
     // rtr 0 East = rtr 1 West
    assign data_in_0[191:128] = data_out_1[255:192];
    assign dest_in_0[11:8] = dest_out_1[15:12];
    assign is_tail_in_0[2] = is_tail_out_1[3];
    assign send_in_0[2] = send_out_1[3];
    assign credit_out_1[3] = credit_in_0[2];

    assign data_in_1[255:192] = data_out_0[191:128];
    assign dest_in_1[15:12] = dest_out_0[11:8];
    assign is_tail_in_1[3] = is_tail_out_0[2];
    assign send_in_1[3] = send_out_0[2];
    assign credit_out_0[2] = credit_in_1[3];


// rtr 1 connected to 0,1,5

    // rtr 1 north = rtr 5 south
    assign data_in_1[63:0] = data_out_5[127:64];
    assign dest_in_1[3:0] = dest_out_5[7:4];
    assign is_tail_in_1[0] = is_tail_out_5[1];
    assign send_in_1[0] = send_out_5[1];
    assign credit_out_5[1] = credit_in_1[0];

    assign data_in_5[127:64] = data_out_1[63:0];
    assign dest_in_5[7:4] = dest_out_1[3:0];
    assign is_tail_in_5[1] = is_tail_out_1[0];
    assign send_in_5[1] = send_out_1[0];
    assign credit_out_1[0] = credit_in_5[1];

    // rtr 1 east = rtr 2 west
    assign data_in_1[191:128] = data_out_2[255:192];
    assign dest_in_1[11:8] = dest_out_2[15:12];
    assign is_tail_in_1[2] = is_tail_out_2[3];
    assign send_in_1[2] = send_out_2[3];
    assign credit_out_2[3] = credit_in_1[2];

    assign data_in_2[255:192] = data_out_1[191:128];
    assign dest_in_2[15:12] = dest_out_1[11:8];
    assign is_tail_in_2[3] = is_tail_out_1[2];
    assign send_in_2[3] = send_out_1[2];
    assign credit_out_1[2] = credit_in_2[3];

// rtr 2 connected to 1,3,6
    // router 2 north = rtr 6 south
    assign data_in_2[63:0] = data_out_6[127:64];
    assign dest_in_2[3:0] = dest_out_6[7:4];
    assign is_tail_in_2[0] = is_tail_out_6[1];
    assign send_in_2[0] = send_out_6[1];
    assign credit_out_6[1] = credit_in_2[0];

    assign data_in_6[127:64] = data_out_2[63:0];
    assign dest_in_6[7:4] = dest_out_2[3:0];
    assign is_tail_in_6[1] = is_tail_out_2[0];
    assign send_in_6[1] = send_out_2[0];
    assign credit_out_2[0] = credit_in_6[1];

    // router 2 east = rtr 3 west
    assign data_in_2[191:128] = data_out_3[255:192];
    assign dest_in_2[11:8] = dest_out_3[15:12];
    assign is_tail_in_2[2] = is_tail_out_3[3];
    assign send_in_2[2] = send_out_3[3];
    assign credit_out_3[3] = credit_in_2[2];

    assign data_in_3[255:192] = data_out_2[191:128];
    assign dest_in_3[15:12] = dest_out_2[11:8];
    assign is_tail_in_3[3] = is_tail_out_2[2];
    assign send_in_3[3] = send_out_2[2];
    assign credit_out_2[2] = credit_in_3[3];


// rtr 3 - 2,7
    // router 3 north = rtr 7 south
    assign data_in_3[63:0] = data_out_7[127:64];
    assign dest_in_3[3:0] = dest_out_7[7:4];
    assign is_tail_in_3[0] = is_tail_out_7[1];
    assign send_in_3[0] = send_out_7[1];
    assign credit_out_7[1] = credit_in_3[0];

    assign data_in_7[127:64] = data_out_3[63:0];
    assign dest_in_7[7:4] = dest_out_3[3:0];
    assign is_tail_in_7[1] = is_tail_out_3[0];
    assign send_in_7[1] = send_out_3[0];
    assign credit_out_3[0] = credit_in_7[1];

// rtr 4 - 0,5,8
    // router 4 north = rtr 8 south
    assign data_in_4[63:0] = data_out_8[127:64];
    assign dest_in_4[3:0] = dest_out_8[7:4];
    assign is_tail_in_4[0] = is_tail_out_8[1];
    assign send_in_4[0] = send_out_8[1];
    assign credit_out_8[1] = credit_in_4[0];

    assign data_in_8[127:64] = data_out_4[63:0];
    assign dest_in_8[7:4] = dest_out_4[3:0];
    assign is_tail_in_8[1] = is_tail_out_4[0];
    assign send_in_8[1] = send_out_4[0];
    assign credit_out_4[0] = credit_in_8[1];

    // rtr 4 east = rtr 5 west
    assign data_in_4[191:128] = data_out_5[255:192];
    assign dest_in_4[11:8] = dest_out_5[15:12];
    assign is_tail_in_4[2] = is_tail_out_5[3];
    assign send_in_4[2] = send_out_5[3];
    assign credit_out_5[3] = credit_in_4[2];

    assign data_in_5[255:192] = data_out_4[191:128];
    assign dest_in_5[15:12] = dest_out_4[11:8];
    assign is_tail_in_5[3] = is_tail_out_4[2];
    assign send_in_5[3] = send_out_4[2];
    assign credit_out_4[2] = credit_in_5[3];


// rtr 5 - 1,4,9, 6
    // rtr 5 north = rtr 9 south
    assign data_in_5[63:0] = data_out_9[127:64];
    assign dest_in_5[3:0] = dest_out_9[7:4];
    assign is_tail_in_5[0] = is_tail_out_9[1];
    assign send_in_5[0] = send_out_9[1];
    assign credit_out_9[1] = credit_in_5[0];

    assign data_in_9[127:64] = data_out_5[63:0];
    assign dest_in_9[7:4] = dest_out_5[3:0];
    assign is_tail_in_9[1] = is_tail_out_5[0];
    assign send_in_9[1] = send_out_5[0];
    assign credit_out_5[0] = credit_in_9[1];

    // rtr 5 east = rtr 6 west
    assign data_in_5[191:128] = data_out_6[255:192];
    assign dest_in_5[11:8] = dest_out_6[15:12];
    assign is_tail_in_5[2] = is_tail_out_6[3];
    assign send_in_5[2] = send_out_6[3];
    assign credit_out_6[3] = credit_in_5[2];

    assign data_in_6[255:192] = data_out_5[191:128];
    assign dest_in_6[15:12] = dest_out_5[11:8];
    assign is_tail_in_6[3] = is_tail_out_5[2];
    assign send_in_6[3] = send_out_5[2];
    assign credit_out_5[2] = credit_in_6[3];

// rtr 6 - 2,5,10, 7
    // rtr 6 north = rtr 10 south
    assign data_in_6[63:0] = data_out_10[127:64];
    assign dest_in_6[3:0] = dest_out_10[7:4];
    assign is_tail_in_6[0] = is_tail_out_10[1];
    assign send_in_6[0] = send_out_10[1];
    assign credit_out_10[1] = credit_in_6[0];

    assign data_in_10[127:64] = data_out_6[63:0];
    assign dest_in_10[7:4] = dest_out_6[3:0];
    assign is_tail_in_10[1] = is_tail_out_6[0];
    assign send_in_10[1] = send_out_6[0];
    assign credit_out_6[0] = credit_in_10[1];

    // rtr 6 east = rtr 7 west
    assign data_in_6[191:128] = data_out_7[255:192];
    assign dest_in_6[11:8] = dest_out_7[15:12];
    assign is_tail_in_6[2] = is_tail_out_7[3];
    assign send_in_6[2] = send_out_7[3];
    assign credit_out_7[3] = credit_in_6[2];

    assign data_in_7[255:192] = data_out_6[191:128];
    assign dest_in_7[15:12] = dest_out_6[11:8];
    assign is_tail_in_7[3] = is_tail_out_6[2];
    assign send_in_7[3] = send_out_6[2];
    assign credit_out_6[2] = credit_in_7[3];

// rtr 7 - 3,6,11
    // rtr 7 north = rtr 11 south
    assign data_in_7[63:0] = data_out_11[127:64];
    assign dest_in_7[3:0] = dest_out_11[7:4];
    assign is_tail_in_7[0] = is_tail_out_11[1];
    assign send_in_7[0] = send_out_11[1];
    assign credit_out_11[1] = credit_in_7[0];

    assign data_in_11[127:64] = data_out_7[63:0];
    assign dest_in_11[7:4] = dest_out_7[3:0];
    assign is_tail_in_11[1] = is_tail_out_7[0];
    assign send_in_11[1] = send_out_7[0];
    assign credit_out_7[0] = credit_in_11[1];

// rtr 8 - 4,9,12
    // rtr 8 north = rtr 12 south
    assign data_in_8[63:0] = data_out_12[127:64];
    assign dest_in_8[3:0] = dest_out_12[7:4];
    assign is_tail_in_8[0] = is_tail_out_12[1];
    assign send_in_8[0] = send_out_12[1];
    assign credit_out_12[1] = credit_in_8[0];

    assign data_in_12[127:64] = data_out_8[63:0];
    assign dest_in_12[7:4] = dest_out_8[3:0];
    assign is_tail_in_12[1] = is_tail_out_8[0];
    assign send_in_12[1] = send_out_8[0];
    assign credit_out_8[0] = credit_in_12[1];

    // rtr 8 east = rtr 9 west
    assign data_in_8[191:128] = data_out_9[255:192];
    assign dest_in_8[11:8] = dest_out_9[15:12];
    assign is_tail_in_8[2] = is_tail_out_9[3];
    assign send_in_8[2] = send_out_9[3];
    assign credit_out_9[3] = credit_in_8[2];

    assign data_in_9[255:192] = data_out_8[191:128];
    assign dest_in_9[15:12] = dest_out_8[11:8];
    assign is_tail_in_9[3] = is_tail_out_8[2];
    assign send_in_9[3] = send_out_8[2];
    assign credit_out_8[2] = credit_in_9[3];

// rtr 9 - 5,8
    // rtr 9 east = rtr 10 west
    assign data_in_9[191:128] = data_out_10[255:192];
    assign dest_in_9[11:8] = dest_out_10[15:12];
    assign is_tail_in_9[2] = is_tail_out_10[3];
    assign send_in_9[2] = send_out_10[3];
    assign credit_out_10[3] = credit_in_9[2];

    assign data_in_10[255:192] = data_out_9[191:128];
    assign dest_in_10[15:12] = dest_out_9[11:8];
    assign is_tail_in_10[3] = is_tail_out_9[2];
    assign send_in_10[3] = send_out_9[2];
    assign credit_out_9[2] = credit_in_10[3];

// rtr 10 - 6,9, 11
    // rtr 10 east = rtr 11 west
    assign data_in_10[191:128] = data_out_11[255:192];
    assign dest_in_10[11:8] = dest_out_11[15:12];
    assign is_tail_in_10[2] = is_tail_out_11[3];
    assign send_in_10[2] = send_out_11[3];
    assign credit_out_11[3] = credit_in_10[2];

    assign data_in_11[255:192] = data_out_10[191:128];
    assign dest_in_11[15:12] = dest_out_10[11:8];
    assign is_tail_in_11[3] = is_tail_out_10[2];
    assign send_in_11[3] = send_out_10[2];
    assign credit_out_10[2] = credit_in_11[3];



endmodule


