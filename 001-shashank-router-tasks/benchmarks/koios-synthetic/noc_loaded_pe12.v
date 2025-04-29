module noc_loaded_pe12 #(
    parameter DATAW = 128,                                    
    parameter IDW = 32,      
    parameter DESTW = 4,    
    parameter USERW = 32
) (
    input                  CLK,
    input                  CLK_NOC,
    input                  RST_N,

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


(* keep *)
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
// .axis_out_tdest(pe_in_tdest_0),

.router_address(4'b0000),
);


(* keep *)
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
// .axis_out_tdest(pe_out_tdest_1),

.router_address(4'b0001),
);


(* keep *)
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
// .axis_out_tdest(pe_out_tdest_2),

.router_address(4'b0010),
);

(* keep *)
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
// .axis_out_tdest(pe_out_tdest_3),

.router_address(4'b0011),
);


(* keep *)
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
// .axis_out_tdest(pe_out_tdest_4),

.router_address(4'b0100),
);


(* keep *)
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
// .axis_out_tdest(pe_out_tdest_5),

.router_address(4'b0101),
);


(* keep *)
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
// .axis_out_tdest(pe_out_tdest_6),

.router_address(4'b0110),
);


(* keep *)
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
// .axis_out_tdest(pe_out_tdest_7),
.router_address(4'b0111),
);


(* keep *)
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
// .axis_out_tdest(pe_out_tdest_8),

.router_address(4'b1000),
);


(* keep *)
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
// .axis_out_tdest(pe_out_tdest_9),

.router_address(4'b1001),
);


(* keep *)
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
// .axis_out_tdest(pe_out_tdest_10),

.router_address(4'b1010),
);


(* keep *)
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
// .axis_out_tdest(pe_out_tdest_11),

.router_address(4'b1011),
);


(* keep *)
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
.axis_out_tdest(m_in_tdest),

.router_address(4'b1100),
);




assign AXIS_M_TVALID = m_in_tvalid;
assign AXIS_M_TDATA = m_in_tdata;
assign AXIS_M_TLAST = 1'b0;
// assign AXIS_M_TID = 0;
assign AXIS_M_TID = 0 + AXIS_M_TREADY;

assign AXIS_M_TUSER = 0;
assign AXIS_M_TDEST = m_in_tdest;
// assign m_in_tready = AXIS_M_TREADY;

endmodule


