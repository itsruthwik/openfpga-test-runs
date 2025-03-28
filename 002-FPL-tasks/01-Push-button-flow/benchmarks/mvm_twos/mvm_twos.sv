module mvm_twos # (
    parameter DATAW = 128,
    parameter BYTEW = 8,
    parameter IDW = 32,
    parameter DESTW = 12,
    parameter USERW = 75,
    parameter IPRECISION = 8,
    parameter OPRECISION = 32,
    parameter LANES = DATAW / IPRECISION,
    parameter DPES  = LANES,
    parameter NODES = 128,
    parameter NODESW = $clog2(NODES),
    parameter RFDEPTH = 128,
    parameter RFADDRW = $clog2(RFDEPTH),
    parameter INSTW = 32,
    parameter INSTD = 128,
    parameter INSTADDRW = $clog2(INSTD),
    parameter AXIS_OPS = 4,
    parameter AXIS_OPSW = $clog2(AXIS_OPS),
    parameter FIFOD = 64,
    parameter USE_RELU = 1,
    parameter DATAPATH_DELAY = 10,
    parameter WEIGHTS_INIT_SEL = -1
)(
    input  clk,
    input  rst,
    // AXI-Stream Slave Interface
    input         axis_rx_tvalid,
    input  [DATAW-1:0] axis_rx_tdata,
    input  [BYTEW-1:0] axis_rx_tstrb,
    input  [BYTEW-1:0] axis_rx_tkeep,
    input  [IDW-1:0] axis_rx_tid,
    input  [DESTW-1:0] axis_rx_tdest,
    input  [USERW-1:0] axis_rx_tuser,
    input         axis_rx_tlast,
    output logic  axis_rx_tready,
    // AXI-Stream Master Interface
    output logic  axis_tx_tvalid,
    output [DATAW-1:0] axis_tx_tdata,
    output [BYTEW-1:0] axis_tx_tstrb,
    output [BYTEW-1:0] axis_tx_tkeep,
    output [IDW-1:0] axis_tx_tid,
    output [DESTW-1:0] axis_tx_tdest,
    output [USERW-1:0] axis_tx_tuser,
    output logic  axis_tx_tlast,
    input         axis_tx_tready
);

    // MVM 0 (First Stage) Signals
    logic              mvm0_rx_tvalid;
    logic              mvm0_rx_tready;
    logic [DATAW-1:0]  mvm0_rx_tdata;
    logic [BYTEW-1:0]  mvm0_rx_tstrb;
    logic [BYTEW-1:0]  mvm0_rx_tkeep;
    logic              mvm0_rx_tlast;
    logic [IDW-1:0]    mvm0_rx_tid;
    logic [DESTW-1:0]  mvm0_rx_tdest;
    logic [USERW-1:0]  mvm0_rx_tuser;

    logic              mvm0_tx_tvalid;
    logic              mvm0_tx_tready;
    logic [DATAW-1:0]  mvm0_tx_tdata;
    logic [BYTEW-1:0]  mvm0_tx_tstrb;
    logic [BYTEW-1:0]  mvm0_tx_tkeep;
    logic              mvm0_tx_tlast;
    logic [IDW-1:0]    mvm0_tx_tid;
    logic [DESTW-1:0]  mvm0_tx_tdest;
    logic [USERW-1:0]  mvm0_tx_tuser;

    // MVM 1 (Second Stage) Signals
    logic              mvm1_rx_tvalid;
    logic              mvm1_rx_tready;
    logic [DATAW-1:0]  mvm1_rx_tdata;
    logic [BYTEW-1:0]  mvm1_rx_tstrb;
    logic [BYTEW-1:0]  mvm1_rx_tkeep;
    logic              mvm1_rx_tlast;
    logic [IDW-1:0]    mvm1_rx_tid;
    logic [DESTW-1:0]  mvm1_rx_tdest;
    logic [USERW-1:0]  mvm1_rx_tuser;

    logic              mvm1_tx_tvalid;
    logic              mvm1_tx_tready;
    logic [DATAW-1:0]  mvm1_tx_tdata;
    logic [BYTEW-1:0]  mvm1_tx_tstrb;
    logic [BYTEW-1:0]  mvm1_tx_tkeep;
    logic              mvm1_tx_tlast;
    logic [IDW-1:0]    mvm1_tx_tid;
    logic [DESTW-1:0]  mvm1_tx_tdest;
    logic [USERW-1:0]  mvm1_tx_tuser;

    // Connect top-level inputs to MVM0 RX
    assign mvm0_rx_tvalid = axis_rx_tvalid;
    assign mvm0_rx_tdata  = axis_rx_tdata;
    assign mvm0_rx_tstrb  = axis_rx_tstrb;
    assign mvm0_rx_tkeep  = axis_rx_tkeep;
    assign mvm0_rx_tlast  = axis_rx_tlast;
    assign mvm0_rx_tid    = axis_rx_tid;
    assign mvm0_rx_tdest  = axis_rx_tdest;
    assign mvm0_rx_tuser  = axis_rx_tuser;
    assign axis_rx_tready = mvm0_rx_tready;

    // Connect MVM0 TX to MVM1 RX
    assign mvm1_rx_tvalid = mvm0_tx_tvalid;
    assign mvm1_rx_tdata  = mvm0_tx_tdata;
    assign mvm1_rx_tstrb  = mvm0_tx_tstrb;
    assign mvm1_rx_tkeep  = mvm0_tx_tkeep;
    assign mvm1_rx_tlast  = mvm0_tx_tlast;
    assign mvm1_rx_tid    = mvm0_tx_tid;
    assign mvm1_rx_tdest  = mvm0_tx_tdest;
    assign mvm1_rx_tuser  = mvm0_tx_tuser;
    assign mvm0_tx_tready = mvm1_rx_tready;

    // Connect MVM1 TX to top-level outputs
    assign axis_tx_tvalid = mvm1_tx_tvalid;
    assign axis_tx_tdata  = mvm1_tx_tdata;
    assign axis_tx_tstrb  = mvm1_tx_tstrb;
    assign axis_tx_tkeep  = mvm1_tx_tkeep;
    assign axis_tx_tlast  = mvm1_tx_tlast;
    assign axis_tx_tid    = mvm1_tx_tid;
    assign axis_tx_tdest  = mvm1_tx_tdest;
    assign axis_tx_tuser  = mvm1_tx_tuser;
    assign mvm1_tx_tready = axis_tx_tready;

    // MVM 0 Instance
    rtl_mvm #(
        .DATAW(DATAW),
        .BYTEW(BYTEW),
        .IDW(IDW),
        .DESTW(DESTW),
        .USERW(USERW),
        .IPRECISION(IPRECISION),
        .OPRECISION(OPRECISION),
        .LANES(LANES),
        .DPES(DPES),
        .NODES(NODES),
        .NODESW(NODESW),
        .RFDEPTH(RFDEPTH),
        .RFADDRW(RFADDRW),
        .INSTW(INSTW),
        .INSTD(INSTD),
        .INSTADDRW(INSTADDRW),
        .AXIS_OPS(AXIS_OPS),
        .AXIS_OPSW(AXIS_OPSW),
        .FIFOD(FIFOD),
        .DATAPATH_DELAY(DATAPATH_DELAY),
        .WEIGHTS_INIT_SEL(0)
    ) mvm_0 (
        .clk(clk),
        .rst(rst),
        .axis_rx_tvalid(mvm0_rx_tvalid),
        .axis_rx_tready(mvm0_rx_tready),
        .axis_rx_tdata(mvm0_rx_tdata),
        .axis_rx_tstrb(mvm0_rx_tstrb),
        .axis_rx_tkeep(mvm0_rx_tkeep),
        .axis_rx_tlast(mvm0_rx_tlast),
        .axis_rx_tid(mvm0_rx_tid),
        .axis_rx_tuser(mvm0_rx_tuser),
        .axis_rx_tdest(mvm0_rx_tdest),
        .axis_tx_tvalid(mvm0_tx_tvalid),
        .axis_tx_tready(mvm0_tx_tready),
        .axis_tx_tdata(mvm0_tx_tdata),
        .axis_tx_tstrb(mvm0_tx_tstrb),
        .axis_tx_tkeep(mvm0_tx_tkeep),
        .axis_tx_tlast(mvm0_tx_tlast),
        .axis_tx_tid(mvm0_tx_tid),
        .axis_tx_tuser(mvm0_tx_tuser),
        .axis_tx_tdest(mvm0_tx_tdest)
    );

    // MVM 1 Instance
    rtl_mvm #(
        .DATAW(DATAW),
        .BYTEW(BYTEW),
        .IDW(IDW),
        .DESTW(DESTW),
        .USERW(USERW),
        .IPRECISION(IPRECISION),
        .OPRECISION(OPRECISION),
        .LANES(LANES),
        .DPES(DPES),
        .NODES(NODES),
        .NODESW(NODESW),
        .RFDEPTH(RFDEPTH),
        .RFADDRW(RFADDRW),
        .INSTW(INSTW),
        .INSTD(INSTD),
        .INSTADDRW(INSTADDRW),
        .AXIS_OPS(AXIS_OPS),
        .AXIS_OPSW(AXIS_OPSW),
        .FIFOD(FIFOD),
        .DATAPATH_DELAY(DATAPATH_DELAY),
        .WEIGHTS_INIT_SEL(1)
    ) mvm_1 (
        .clk(clk),
        .rst(rst),
        .axis_rx_tvalid(mvm1_rx_tvalid),
        .axis_rx_tready(mvm1_rx_tready),
        .axis_rx_tdata(mvm1_rx_tdata),
        .axis_rx_tstrb(mvm1_rx_tstrb),
        .axis_rx_tkeep(mvm1_rx_tkeep),
        .axis_rx_tlast(mvm1_rx_tlast),
        .axis_rx_tid(mvm1_rx_tid),
        .axis_rx_tuser(mvm1_rx_tuser),
        .axis_rx_tdest(mvm1_rx_tdest),
        .axis_tx_tvalid(mvm1_tx_tvalid),
        .axis_tx_tready(mvm1_tx_tready),
        .axis_tx_tdata(mvm1_tx_tdata),
        .axis_tx_tstrb(mvm1_tx_tstrb),
        .axis_tx_tkeep(mvm1_tx_tkeep),
        .axis_tx_tlast(mvm1_tx_tlast),
        .axis_tx_tid(mvm1_tx_tid),
        .axis_tx_tuser(mvm1_tx_tuser),
        .axis_tx_tdest(mvm1_tx_tdest)
    );

endmodule

/*module mvm_twos (
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

endmodule*/