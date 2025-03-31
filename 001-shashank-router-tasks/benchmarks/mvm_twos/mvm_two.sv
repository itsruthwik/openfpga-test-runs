module mvm_twos # (
	parameter DATAW = 32,                   // Bitwidth of axi-s tdata
	parameter BYTEW = 8,   		            // Bitwidth of axi-s tkeep, tstrb
	parameter IDW = 32,                     // Bitwidth of axi-s tid
	parameter DESTW = 6,		            // Bitwidth of axi-s tdest
	parameter USERW = 32,                   // Bitwidth of axi-s tuser
	parameter IPRECISION = 8,               // Input precision in bits
	parameter OPRECISION = 8,               // Output precision in bits
	parameter LANES = 4,                    // DATAW / IPRECISION,  // Number of dot-product INT8 lanes
	parameter DPES  = 4,                    //LANES,       // Number of dot-product engines
	parameter NODES = 16,                   //128,			 // Max number of nodes in each NoC
	parameter NODESW = 4,                   //$clog2(NODES), //Bitwidth of store node ID
	parameter RFDEPTH = 64,                 // Depth of register files (RFs)
	parameter RFADDRW = 6,                  //$clog2(RFDEPTH),  // Bitwidth of RF address
	parameter INSTW = 32,                   // Instruction bitwidth {release_op, release_dest, rf_raddr, accum_raddr, last, release, accum_en, reduce, jump, en}
	parameter INSTD = 64,                   // Depth of instruction FIFO
	parameter INSTADDRW = 6,                //$clog2(INSTD),  // Bitwidth of instruction memory address
	parameter AXIS_OPS = 4,                 // Number of AXI-S operations (max 4) {instruction, reduction vector, input vector, matrix}
	parameter AXIS_OPSW = 2,                //$clog2(AXIS_OPS),
	parameter FIFOD = 64,                   // Depth of input, accumulation, and output FIFOs
	parameter USE_RELU = 1, 
	parameter DATAPATH_DELAY = 10           // Delay of datpath (inputs -> result)
)(
    input  clk,
    input  rst,
    // AXI-Stream Slave Interface
    input                               axis_rx_tvalid,
    input  [DATAW-1:0]                  axis_rx_tdata,
    input  [BYTEW-1:0]                  axis_rx_tstrb,
    input  [BYTEW-1:0]                  axis_rx_tkeep,
    input  [IDW-1:0]                    axis_rx_tid,
    input  [DESTW-1:0]                  axis_rx_tdest,
    input  [USERW-1:0]                  axis_rx_tuser,
    input                               axis_rx_tlast,
    output logic                        axis_rx_tready,
    // AXI-Stream Master Interface
    output logic                        axis_tx_tvalid,
    output [DATAW-1:0]                  axis_tx_tdata,
    output [BYTEW-1:0]                  axis_tx_tstrb,
    output [BYTEW-1:0]                  axis_tx_tkeep,
    output [IDW-1:0]                    axis_tx_tid,
    output [DESTW-1:0]                  axis_tx_tdest,
    output [USERW-1:0]                  axis_tx_tuser,
    output logic                        axis_tx_tlast,
    input                               axis_tx_tready
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
        .USE_RELU(USE_RELU),
        .DATAPATH_DELAY(DATAPATH_DELAY)
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
        .USE_RELU(USE_RELU),
        .DATAPATH_DELAY(DATAPATH_DELAY)
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
