module axis_switch_loaded_pe6_256 #(
    parameter DATAW = 256,                                    
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

    input [DESTW-1:0]  pe_out_tdest_0,
    input [DESTW-1:0]  pe_out_tdest_1,
    input [DESTW-1:0]  pe_out_tdest_2,
    input [DESTW-1:0]  pe_out_tdest_3,
    input [DESTW-1:0]  pe_out_tdest_4,
    input [DESTW-1:0]  pe_out_tdest_5,

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

    wire pe_out_tvalid_0;
    wire pe_out_tvalid_1;
    wire pe_out_tvalid_2;
    wire pe_out_tvalid_3;
    wire pe_out_tvalid_4;
    wire pe_out_tvalid_5;

    wire pe_in_tready_0;
    wire pe_in_tready_1;
    wire pe_in_tready_2;
    wire pe_in_tready_3;
    wire pe_in_tready_4;
    wire pe_in_tready_5;

    wire pe_out_tready_0;
    wire pe_out_tready_1;
    wire pe_out_tready_2;
    wire pe_out_tready_3;
    wire pe_out_tready_4;
    wire pe_out_tready_5;

    wire [DATAW-1:0] pe_in_tdata_0;
    wire [DATAW-1:0] pe_in_tdata_1;
    wire [DATAW-1:0] pe_in_tdata_2;
    wire [DATAW-1:0] pe_in_tdata_3;
    wire [DATAW-1:0] pe_in_tdata_4;
    wire [DATAW-1:0] pe_in_tdata_5;

    wire [DATAW-1:0] pe_out_tdata_0;
    wire [DATAW-1:0] pe_out_tdata_1;
    wire [DATAW-1:0] pe_out_tdata_2;
    wire [DATAW-1:0] pe_out_tdata_3;
    wire [DATAW-1:0] pe_out_tdata_4;
    wire [DATAW-1:0] pe_out_tdata_5;

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
master_module_256 m_inst (
    .clk(CLK),
    .reset(~RST_N),

    .axis_rx_tvalid(m_in_tvalid),
    .axis_rx_tdata_256(m_in_tdata),
    .axis_rx_tdest(m_in_tdest),
    .axis_rx_tready(m_in_tready),

    .axis_tx_tvalid(m_out_tvalid),
    .axis_tx_tdata_256(m_out_tdata),
    .axis_tx_tdest(m_out_tdest),
    .axis_tx_tready(m_out_tready)
);



wrapper_pe_256 pe_inst_0 (
    .clk(CLK),
    .reset(~RST_N),

    .in_tvalid(pe_in_tvalid_0),
    .in_tdata_256(pe_in_tdata_0),
    .in_tready(pe_in_tready_0),

    .out_tvalid(pe_out_tvalid_0),
    .out_tdata_256(pe_out_tdata_0),
    .out_tready(pe_out_tready_0)
);

wrapper_pe_256 pe_inst_1 (
    .clk(CLK),
    .reset(~RST_N),

    .in_tvalid(pe_in_tvalid_1),
    .in_tdata_256(pe_in_tdata_1),
    .in_tready(pe_in_tready_1),

    .out_tvalid(pe_out_tvalid_1),
    .out_tdata_256(pe_out_tdata_1),
    .out_tready(pe_out_tready_1)
);

wrapper_pe_256 pe_inst_2 (
    .clk(CLK),
    .reset(~RST_N),

    .in_tvalid(pe_in_tvalid_2),
    .in_tdata_256(pe_in_tdata_2),
    .in_tready(pe_in_tready_2),

    .out_tvalid(pe_out_tvalid_2),
    .out_tdata_256(pe_out_tdata_2),
    .out_tready(pe_out_tready_2)
);

wrapper_pe_256 pe_inst_3 (
    .clk(CLK),
    .reset(~RST_N),

    .in_tvalid(pe_in_tvalid_3),
    .in_tdata_256(pe_in_tdata_3),
    .in_tready(pe_in_tready_3),

    .out_tvalid(pe_out_tvalid_3),
    .out_tdata_256(pe_out_tdata_3),
    .out_tready(pe_out_tready_3)
);

wrapper_pe_256 pe_inst_4 (
    .clk(CLK),
    .reset(~RST_N),

    .in_tvalid(pe_in_tvalid_4),
    .in_tdata_256(pe_in_tdata_4),
    .in_tready(pe_in_tready_4),

    .out_tvalid(pe_out_tvalid_4),
    .out_tdata_256(pe_out_tdata_4),
    .out_tready(pe_out_tready_4)
);

wrapper_pe_256 pe_inst_5 (
    .clk(CLK),
    .reset(~RST_N),

    .in_tvalid(pe_in_tvalid_5),
    .in_tdata_256(pe_in_tdata_5),
    .in_tready(pe_in_tready_5),

    .out_tvalid(pe_out_tvalid_5),
    .out_tdata_256(pe_out_tdata_5),
    .out_tready(pe_out_tready_5)
);


axis_switch_wrap_7x7 #(
    .DATA_WIDTH(DATAW)
) sw_inst (
    .clk(CLK),
    .rst(RST_N),

    .s00_axis_tdata(pe_out_tdata_0),
    .s00_axis_tvalid(pe_out_tvalid_0),
    .s00_axis_tready(pe_tready_0),
    .s00_axis_tdest(pe_out_tdest_0),
    // .s00_axis_tlast(pe_out_tlast_0),
    // .s00_axis_tid(pe_out_tid_0),
    // .s00_axis_tuser(pe_out_tuser_0),
    // .s00_axis_tkeep(pe_out_tkeep_0),

    .s01_axis_tdata(pe_out_tdata_1),
    .s01_axis_tvalid(pe_out_tvalid_1),
    .s01_axis_tready(pe_out_tready_1),
    .s01_axis_tdest(pe_out_tdest_1),
    // .s01_axis_tlast(pe_out_tlast_1),
    // .s01_axis_tid(pe_out_tid_1),
    // .s01_axis_tuser(pe_out_tuser_1),
    // .s01_axis_tkeep(pe_out_tkeep_1),

    .s02_axis_tdata(pe_out_tdata_2),
    .s02_axis_tvalid(pe_out_tvalid_2),
    .s02_axis_tready(pe_out_tready_2),
    .s02_axis_tdest(pe_out_tdest_2),
    // .s02_axis_tlast(pe_out_tlast_2),
    // .s02_axis_tid(pe_out_tid_2),
    // .s02_axis_tuser(pe_out_tuser_2),
    // .s02_axis_tkeep(pe_out_tkeep_2),

    .s03_axis_tdata(pe_out_tdata_3),
    .s03_axis_tvalid(pe_out_tvalid_3),
    .s03_axis_tready(pe_out_tready_3),
    .s03_axis_tdest(pe_out_tdest_3),
    // .s03_axis_tlast(pe_out_tlast_3),
    // .s03_axis_tid(pe_out_tid_3),
    // .s03_axis_tuser(pe_out_tuser_3),
    // .s03_axis_tkeep(pe_out_tkeep_3),

    .s04_axis_tdata(pe_out_tdata_4),
    .s04_axis_tvalid(pe_out_tvalid_4),
    .s04_axis_tready(pe_out_tready_4),
    .s04_axis_tdest(pe_out_tdest_4),
    // .s04_axis_tlast(pe_out_tlast_4),
    // .s04_axis_tid(pe_out_tid_4),
    // .s04_axis_tuser(pe_out_tuser_4),
    // .s04_axis_tkeep(pe_out_tkeep_4),

    .s05_axis_tdata(m_out_tdata),
    .s05_axis_tvalid(m_out_tvalid),
    .s05_axis_tready(m_out_tready),
    .s05_axis_tdest(m_out_tdest),
    // .s05_axis_tlast(m_in_tlast),
    // .s05_axis_tid(m_in_tid),
    // .s05_axis_tuser(m_in_tuser),
    // .s05_axis_tkeep(m_in_tkeep),

    .s06_axis_tdata(pe_out_tdata_5),
    .s06_axis_tvalid(pe_out_tvalid_5),
    .s06_axis_tready(pe_out_tready_5),
    .s06_axis_tdest(pe_out_tdest_5),
    // .s06_axis_tlast(pe_out_tlast_5),
    // .s06_axis_tid(pe_out_tid_5),
    // .s06_axis_tuser(pe_out_tuser_5),
    // .s06_axis_tkeep(pe_out_tkeep_5),


    .m00_axis_tdata(pe_in_tdata_0),
    .m00_axis_tvalid(pe_in_tvalid_0),
    .m00_axis_tready(pe_in_tready_0),
    // .m00_axis_tdest(pe_in_tdest_0),
    // .m00_axis_tlast(pe_in_tlast_0),
    // .m00_axis_tid(pe_in_tid_0),
    // .m00_axis_tuser(pe_in_tuser_0),
    // .m00_axis_tkeep(pe_in_tkeep_0),

    .m01_axis_tdata(pe_in_tdata_1),
    .m01_axis_tvalid(pe_in_tvalid_1),
    .m01_axis_tready(pe_in_tready_1),
    // .m01_axis_tdest(pe_in_tdest_1),
    // .m01_axis_tlast(pe_in_tlast_1),
    // .m01_axis_tid(pe_in_tid_1),
    // .m01_axis_tuser(pe_in_tuser_1),
    // .m01_axis_tkeep(pe_in_tkeep_1),

    .m02_axis_tdata(pe_in_tdata_2),
    .m02_axis_tvalid(pe_in_tvalid_2),
    .m02_axis_tready(pe_in_tready_2),
    // .m02_axis_tdest(pe_in_tdest_2),
    // .m02_axis_tlast(pe_in_tlast_2),
    // .m02_axis_tid(pe_in_tid_2),
    // .m02_axis_tuser(pe_in_tuser_2),
    // .m02_axis_tkeep(pe_in_tkeep_2),

    .m03_axis_tdata(pe_in_tdata_3),
    .m03_axis_tvalid(pe_in_tvalid_3),
    .m03_axis_tready(pe_in_tready_3),
    // .m03_axis_tdest(pe_in_tdest_3),
    // .m03_axis_tlast(pe_in_tlast_3),
    // .m03_axis_tid(pe_in_tid_3),
    // .m03_axis_tuser(pe_in_tuser_3),
    // .m03_axis_tkeep(pe_in_tkeep_3),

    .m04_axis_tdata(pe_in_tdata_4),
    .m04_axis_tvalid(pe_in_tvalid_4),
    .m04_axis_tready(pe_in_tready_4),
    // .m04_axis_tdest(pe_in_tdest_4),
    // .m04_axis_tlast(pe_in_tlast_4),
    // .m04_axis_tid(pe_in_tid_4),
    // .m04_axis_tuser(pe_in_tuser_4),
    // .m04_axis_tkeep(pe_in_tkeep_4),

    .m05_axis_tdata(m_in_tdata),
    .m05_axis_tvalid(m_in_tvalid),
    .m05_axis_tready(m_in_tready),
    .m05_axis_tdest(m_in_tdest),
    // .m05_axis_tlast(m_out_tlast),
    // .m05_axis_tid(m_out_tid),
    // .m05_axis_tuser(m_out_tuser),
    // .m05_axis_tkeep(m_out_tkeep),

    .m06_axis_tdata(pe_in_tdata_5),
    .m06_axis_tvalid(pe_in_tvalid_5),
    .m06_axis_tready(pe_in_tready_5)
    // .m06_axis_tdest(pe_in_tdest_5),
    // .m06_axis_tlast(pe_in_tlast_5),
    // .m06_axis_tid(pe_in_tid_5),
    // .m06_axis_tuser(pe_in_tuser_5),
    // .m06_axis_tkeep(pe_in_tkeep_5),
);


assign AXIS_M_TVALID = m_in_tvalid;
assign AXIS_M_TDATA = m_in_tdata;
assign AXIS_M_TLAST = 1'b0;
assign AXIS_M_TID = 0 + AXIS_M_TREADY;
assign AXIS_M_TUSER = 0;
assign AXIS_M_TDEST = m_in_tdest;
// assign m__tready = AXIS_M_TREADY;

endmodule


