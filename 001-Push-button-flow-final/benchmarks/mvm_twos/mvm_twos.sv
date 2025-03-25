module mvm_twos (
    input   wire                  CLK,
    input   wire                  RST_N,

    // AXI-Stream Slave Interface
    input   wire                  AXIS_S_TVALID,
    output  logic                 AXIS_S_TREADY,
    input   wire    [ DATAW-1:0]  AXIS_S_TDATA,
    input   wire                  AXIS_S_TLAST,
    input   wire    [   IDW-1:0]  AXIS_S_TID,
    input   wire    [ USERW-1:0]  AXIS_S_TUSER,
    input   wire    [ DESTW-1:0]  AXIS_S_TDEST,

    // AXI-Stream Master Interface
    output  logic                 AXIS_M_TVALID,
    input   wire                  AXIS_M_TREADY,
    output  logic   [ DATAW-1:0]  AXIS_M_TDATA,
    output  logic                 AXIS_M_TLAST,
    output  logic   [   IDW-1:0]  AXIS_M_TID,
    output  logic   [ USERW-1:0]  AXIS_M_TUSER,
    output  logic   [ DESTW-1:0]  AXIS_M_TDEST
);
`include "/mnt/vault1/mfaroo19/OpenFPGA/openfpga-test-runs/FPL_2025/mlp_controller/parameters.sv"

    // -----------------------------------------------
    // MVM Connection Signals
    // -----------------------------------------------
    // MVM 0 (First Stage)
    logic              mvm0_rx_tvalid;
    logic              mvm0_rx_tready;
    logic [ DATAW-1:0] mvm0_rx_tdata;
    logic              mvm0_rx_tlast;
    logic [   IDW-1:0] mvm0_rx_tid;
    logic [ USERW-1:0] mvm0_rx_tuser;
    logic [ DESTW-1:0] mvm0_rx_tdest;

    logic              mvm0_tx_tvalid;
    logic              mvm0_tx_tready;
    logic [ DATAW-1:0] mvm0_tx_tdata;
    logic              mvm0_tx_tlast;
    logic [   IDW-1:0] mvm0_tx_tid;
    logic [ USERW-1:0] mvm0_tx_tuser;
    logic [ DESTW-1:0] mvm0_tx_tdest;

    // MVM 1 (Second Stage)
    logic              mvm1_tx_tvalid;  // Corrected from mvm1_rx_tvalid
    logic              mvm1_tx_tready;  // Corrected from mvm1_rx_tready
    logic [ DATAW-1:0] mvm1_tx_tdata;   // Corrected from mvm1_rx_tdata
    logic              mvm1_tx_tlast;   // Corrected from mvm1_rx_tlast
    logic [   IDW-1:0] mvm1_tx_tid;     // Corrected from mvm1_rx_tid
    logic [ USERW-1:0] mvm1_tx_tuser;   // Corrected from mvm1_rx_tuser
    logic [ DESTW-1:0] mvm1_tx_tdest;   // Corrected from mvm1_rx_tdest

    // -----------------------------------------------
    // Module Instantiations
    // -----------------------------------------------
    axis_passthrough #(
        .DATAW(DATAW),
        .IDW(IDW),
        .USERW(USERW),
        .DESTW(DESTW)
    ) input_passthrough (
        .CLK(CLK),
        .RST_N(RST_N),
        .AXIS_S_TVALID(AXIS_S_TVALID),
        .AXIS_S_TREADY(AXIS_S_TREADY),
        .AXIS_S_TDATA(AXIS_S_TDATA),
        .AXIS_S_TLAST(AXIS_S_TLAST),
        .AXIS_S_TID(AXIS_S_TID),
        .AXIS_S_TUSER(AXIS_S_TUSER),
        .AXIS_S_TDEST(AXIS_S_TDEST),
        .AXIS_M_TVALID(mvm0_rx_tvalid),
        .AXIS_M_TREADY(mvm0_rx_tready),
        .AXIS_M_TDATA(mvm0_rx_tdata),
        .AXIS_M_TLAST(mvm0_rx_tlast),
        .AXIS_M_TID(mvm0_rx_tid),
        .AXIS_M_TUSER(mvm0_rx_tuser),
        .AXIS_M_TDEST(mvm0_rx_tdest)
    );

    // First MVM Instance
    rtl_mvm #(
        .DATAW(DATAW),
        .BYTEW(BYTEW),
        .IDW(IDW),
        .DESTW(DESTW),
        .USERW(USERW),
        .IPRECISION(8),
        .OPRECISION(32),
        .LANES(LANES),
        .DPES(DPES),
        .NODES(NODES),
        .NODESW($clog2(NODES)),
        .RFDEPTH(RFDEPTH),
        .RFADDRW(RFADDRW),
        .INSTW(1 + NODESW + 2 * RFADDRW + 4),
        .INSTD(512),
        .INSTADDRW($clog2(INSTD)),
        .AXIS_OPS(4),
        .AXIS_OPSW($clog2(AXIS_OPS)),
        .FIFOD(64),
        .DATAPATH_DELAY(10),
        .WEIGHTS_INIT_SEL(0)
    ) mvm_0 (
        .clk(CLK),
        .rst(~RST_N),
        .axis_rx_tvalid(mvm0_rx_tvalid),
        .axis_rx_tready(mvm0_rx_tready),
        .axis_rx_tdata(mvm0_rx_tdata),
        .axis_rx_tlast(mvm0_rx_tlast),
        .axis_rx_tid(mvm0_rx_tid),
        .axis_rx_tuser(mvm0_rx_tuser),
        .axis_rx_tdest(mvm0_rx_tdest),
        .axis_tx_tvalid(mvm0_tx_tvalid),
        .axis_tx_tready(mvm0_tx_tready),
        .axis_tx_tdata(mvm0_tx_tdata),
        .axis_tx_tlast(mvm0_tx_tlast),
        .axis_tx_tid(mvm0_tx_tid),
        .axis_tx_tuser(mvm0_tx_tuser),
        .axis_tx_tdest(mvm0_tx_tdest)
    );


    // Second MVM Instance (corrected signal names)
        rtl_mvm #(
        .DATAW(DATAW),
        .BYTEW(BYTEW),
        .IDW(IDW),
        .DESTW(DESTW),
        .USERW(USERW),
        .IPRECISION(8),
        .OPRECISION(32),
        .LANES(LANES),
        .DPES(DPES),
        .NODES(NODES),
        .NODESW($clog2(NODES)),
        .RFDEPTH(RFDEPTH),
        .RFADDRW(RFADDRW),
        .INSTW(1 + NODESW + 2 * RFADDRW + 4),
        .INSTD(512),
        .INSTADDRW($clog2(INSTD)),
        .AXIS_OPS(4),
        .AXIS_OPSW($clog2(AXIS_OPS)),
        .FIFOD(64),
        .DATAPATH_DELAY(10),
        .WEIGHTS_INIT_SEL(1)) mvm_1 (
        .clk(CLK),
        .rst(~RST_N),
        .axis_rx_tvalid(mvm0_tx_tvalid),
        .axis_rx_tready(mvm0_tx_tready),
        .axis_rx_tdata(mvm0_tx_tdata),
        .axis_rx_tlast(mvm0_tx_tlast),
        .axis_rx_tid(mvm0_tx_tid),
        .axis_rx_tuser(mvm0_tx_tuser),
        .axis_rx_tdest(mvm0_tx_tdest),
        .axis_tx_tvalid(mvm1_tx_tvalid),  // Corrected
        .axis_tx_tready(mvm1_tx_tready),  // Corrected
        .axis_tx_tdata(mvm1_tx_tdata),    // Corrected
        .axis_tx_tlast(mvm1_tx_tlast),    // Corrected
        .axis_tx_tid(mvm1_tx_tid),        // Corrected
        .axis_tx_tuser(mvm1_tx_tuser),    // Corrected
        .axis_tx_tdest(mvm1_tx_tdest)     // Corrected
    );

    // Output Passthrough (corrected signal names)
    axis_passthrough #(
        .DATAW(DATAW),
        .IDW(IDW),
        .USERW(USERW),
        .DESTW(DESTW)
    ) output_passthrough (
        .CLK(CLK),
        .RST_N(RST_N),
        .AXIS_S_TVALID(mvm1_tx_tvalid),  // Corrected
        .AXIS_S_TREADY(mvm1_tx_tready),  // Corrected
        .AXIS_S_TDATA(mvm1_tx_tdata),    // Corrected
        .AXIS_S_TLAST(mvm1_tx_tlast),    // Corrected
        .AXIS_S_TID(mvm1_tx_tid),        // Corrected
        .AXIS_S_TUSER(mvm1_tx_tuser),    // Corrected
        .AXIS_S_TDEST(mvm1_tx_tdest),    // Corrected
        .AXIS_M_TVALID(AXIS_M_TVALID),
        .AXIS_M_TREADY(AXIS_M_TREADY),
        .AXIS_M_TDATA(AXIS_M_TDATA),
        .AXIS_M_TLAST(AXIS_M_TLAST),
        .AXIS_M_TID(AXIS_M_TID),
        .AXIS_M_TUSER(AXIS_M_TUSER),
        .AXIS_M_TDEST(AXIS_M_TDEST)
    );

endmodule