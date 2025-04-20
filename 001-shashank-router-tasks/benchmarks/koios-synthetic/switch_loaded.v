module axis_switch_loaded #(
    parameter DATAW = 128,                                    
    parameter IDW = 32,      
    parameter DESTW = 4,    
    parameter USERW = 32
) (
    input                  CLK,
    input                  RST_N,

    // AXI-Stream Slave Interface
    // input                 AXIS_S_TVALID,
    // output                AXIS_S_TREADY,
    // input    [DATAW-1:0]  AXIS_S_TDATA,
    // input                 AXIS_S_TLAST,
    // input    [IDW-1:0]    AXIS_S_TID,
    // input    [USERW-1:0]  AXIS_S_TUSER,
    // input    [DESTW-1:0]  AXIS_S_TDEST,

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

    wire pe_out_tvalid_0;
    wire pe_out_tvalid_1;
    wire pe_out_tvalid_2;
    wire pe_out_tvalid_3;

    wire pe_in_tready_0;
    wire pe_in_tready_1;
    wire pe_in_tready_2;
    wire pe_in_tready_3;

    wire pe_out_tready_0;
    wire pe_out_tready_1;
    wire pe_out_tready_2;
    wire pe_out_tready_3;

    wire [DATAW-1:0] pe_in_tdata_0;
    wire [DATAW-1:0] pe_in_tdata_1;
    wire [DATAW-1:0] pe_in_tdata_2;
    wire [DATAW-1:0] pe_in_tdata_3;

    wire [DATAW-1:0] pe_out_tdata_0;
    wire [DATAW-1:0] pe_out_tdata_1;
    wire [DATAW-1:0] pe_out_tdata_2;
    wire [DATAW-1:0] pe_out_tdata_3;

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


axis_switch_wrap_5x5 swt_inst (

    .clk(CLK),
    .rst(~RST_N),

    .s00_axis_tdata(pe_out_tdata_0),
    // .s00_axis_tkeep(),
    .s00_axis_tvalid(pe_out_tvalid_0),
    .s00_axis_tready(pe_out_tready_0),
    // .s00_axis_tlast(),
    // .s00_axis_tid(),
    // .s00_axis_tdest(),
    // .s00_axis_tuser(),


    .s01_axis_tdata(pe_out_tdata_1),
    // .s01_axis_tkeep(),
    .s01_axis_tvalid(pe_out_tvalid_1),
    .s01_axis_tready(pe_out_tready_1),
    // .s01_axis_tlast(),
    // .s01_axis_tid(),
    // .s01_axis_tdest(),
    // .s01_axis_tuser(),

    .s02_axis_tdata(pe_out_tdata_2),
    // .s02_axis_tkeep(),
    .s02_axis_tvalid(pe_out_tvalid_2),
    .s02_axis_tready(pe_out_tready_2),
    // .s02_axis_tlast(),
    // .s02_axis_tid(),
    // .s02_axis_tdest(),
    // .s02_axis_tuser(),

    .s03_axis_tdata(pe_out_tdata_3),
    // .s03_axis_tkeep(),
    .s03_axis_tvalid(pe_out_tvalid_3),
    .s03_axis_tready(pe_out_tready_3),
    // .s03_axis_tlast(),
    // .s03_axis_tid(),
    // .s03_axis_tdest(),
    // .s03_axis_tuser(),

    .s04_axis_tdata(m_out_tdata),
    // .s04_axis_tkeep(),
    .s04_axis_tvalid(m_out_tvalid),
    .s04_axis_tready(m_out_tready),
    // .s04_axis_tlast(),
    // .s04_axis_tid(),
    .s04_axis_tdest(m_out_tdest),
    // .s04_axis_tuser(),


    .m00_axis_tdata(pe_in_tdata_0),
    // .m00_axis_tkeep(),
    .m00_axis_tvalid(pe_in_tvalid_0),
    .m00_axis_tready(pe_in_tready_0),
    // .m00_axis_tlast(),
    // .m00_axis_tid(),
    // .m00_axis_tdest(),
    // .m00_axis_tuser(),

    .m01_axis_tdata(pe_in_tdata_1),
    // .m01_axis_tkeep(),
    .m01_axis_tvalid(pe_in_tvalid_1),
    .m01_axis_tready(pe_in_tready_1),
    // .m01_axis_tlast(),
    // .m01_axis_tid(),
    // .m01_axis_tdest(),
    // .m01_axis_tuser(),

    .m02_axis_tdata(pe_in_tdata_2),
    // .m02_axis_tkeep(),
    .m02_axis_tvalid(pe_in_tvalid_2),
    .m02_axis_tready(pe_in_tready_2),
    // .m02_axis_tlast(),
    // .m02_axis_tid(),
    // .m02_axis_tdest(),
    // .m02_axis_tuser(),

    .m03_axis_tdata(pe_in_tdata_3),
    // .m03_axis_tkeep(),
    .m03_axis_tvalid(pe_in_tvalid_3),
    .m03_axis_tready(pe_in_tready_3),
    // .m03_axis_tlast(),
    // .m03_axis_tid(),
    // .m03_axis_tdest(),
    // .m03_axis_tuser(),

    .m04_axis_tdata(AXIS_M_TDATA),
    // .m04_axis_tkeep(),
    .m04_axis_tvalid(AXIS_M_TVALID),  
    .m04_axis_tready(AXIS_M_TREADY),
    .m04_axis_tlast(AXIS_M_TLAST),
    .m04_axis_tid(AXIS_M_TID),
    .m04_axis_tdest(AXIS_M_TDEST),
    .m04_axis_tuser(AXIS_M_TUSER)
);

assign m_in_tdata = AXIS_M_TDATA;
assign m_in_tvalid = AXIS_M_TVALID;
// assign m_in_tready = AXIS_M_TREADY;
assign m_in_tdest = AXIS_M_TDEST;

endmodule
