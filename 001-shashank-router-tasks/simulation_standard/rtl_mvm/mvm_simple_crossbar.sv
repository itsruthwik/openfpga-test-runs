module mvm_simple_crossbar #(
    parameter DATAW = 32,                   
    parameter BYTEW = 8,                  
    parameter IDW = 32,      
    parameter DESTW = 6,    
    parameter USERW = 32,
    parameter IPRECISION = 8,         
    parameter OPRECISION = 8,      
    parameter LANES = 4,         
    parameter DPES  = 4,       
    parameter NODES = 16,   
    parameter NODESW = 4,         // Hardcoded for $clog2(NODES)
    parameter RFDEPTH = 64,       
    parameter RFADDRW = 6,              
    parameter INSTW = 32,           
    parameter INSTD = 64,                
    parameter INSTADDRW = 6,        // Hardcoded for $clog2(INSTD)
    parameter AXIS_OPS = 4,              
    parameter AXIS_OPSW = 2,        // Hardcoded for $clog2(AXIS_OPS)        
    parameter FIFOD = 64,                  
    parameter USE_RELU = 1, 
    parameter DATAPATH_DELAY = 10,
    parameter TDATAW = DATAW + USERW,
    parameter TIDW = 2,
    parameter TDESTW = 4,
    parameter NUM_PACKETS = 1,
    parameter HARD_LINK = 1
) (
    input   wire                  CLK,
    input   wire                  RST_N,

    // AXI-Stream Slave Interface
    input   wire                  AXIS_S_TVALID,
    output  reg                   AXIS_S_TREADY,
    input   wire    [ DATAW-1:0]  AXIS_S_TDATA,
    input   wire                  AXIS_S_TLAST,
    input   wire    [   IDW-1:0]  AXIS_S_TID,
    input   wire    [ USERW-1:0]  AXIS_S_TUSER,
    input   wire    [ DESTW-1:0]  AXIS_S_TDEST,

    // AXI-Stream Master Interface
    output  reg                   AXIS_M_TVALID,
    input   wire                  AXIS_M_TREADY,
    output  reg     [ DATAW-1:0]  AXIS_M_TDATA,
    output  reg                   AXIS_M_TLAST,
    output  reg     [   IDW-1:0]  AXIS_M_TID,
    output  reg     [ USERW-1:0]  AXIS_M_TUSER,
    output  reg     [ DESTW-1:0]  AXIS_M_TDEST
);

    // input & output pass through
    reg                   axis_in_s_tvalid;
    reg                  axis_in_s_tready;
    wire    [ DATAW-1:0]  axis_in_s_tdata;
    wire                  axis_in_s_tlast;
    wire    [   IDW-1:0]  axis_in_s_tid;
    wire    [ USERW-1:0]  axis_in_s_tuser;
    wire    [ DESTW-1:0]  axis_in_s_tdest;

    // input pass through
    reg                   axis_out_s_tvalid;
    wire                  axis_out_s_tready;
    reg     [ DATAW-1:0]  axis_out_s_tdata;
    reg                   axis_out_s_tlast;
    reg     [   IDW-1:0]  axis_out_s_tid;
    reg     [ USERW-1:0]  axis_out_s_tuser;
    reg     [ DESTW-1:0]  axis_out_s_tdest;


    // -----------------------------------------------
    // MVM Connection Signals
    // -----------------------------------------------
    // MVM 0 (First Stage)
    reg               mvm0_rx_tvalid;
    wire              mvm0_rx_tready;
    reg  [ DATAW-1:0] mvm0_rx_tdata;
    reg               mvm0_rx_tlast;
    reg  [   IDW-1:0] mvm0_rx_tid;
    reg  [ USERW-1:0] mvm0_rx_tuser;
    reg  [ DESTW-1:0] mvm0_rx_tdest;

    wire              mvm0_tx_tvalid;
    reg               mvm0_tx_tready;
    wire [ DATAW-1:0] mvm0_tx_tdata;
    wire              mvm0_tx_tlast;
    wire [   IDW-1:0] mvm0_tx_tid;
    wire [ USERW-1:0] mvm0_tx_tuser;
    wire [ DESTW-1:0] mvm0_tx_tdest;

    // MVM 1
    reg               mvm1_rx_tvalid;
    wire              mvm1_rx_tready;
    reg  [ DATAW-1:0] mvm1_rx_tdata;
    reg               mvm1_rx_tlast;
    reg  [   IDW-1:0] mvm1_rx_tid;
    reg  [ USERW-1:0] mvm1_rx_tuser;
    reg  [ DESTW-1:0] mvm1_rx_tdest;

    wire              mvm1_tx_tvalid;
    reg               mvm1_tx_tready;
    wire [ DATAW-1:0] mvm1_tx_tdata;
    wire              mvm1_tx_tlast;
    wire [   IDW-1:0] mvm1_tx_tid;
    wire [ USERW-1:0] mvm1_tx_tuser;
    wire [ DESTW-1:0] mvm1_tx_tdest;


    // Input Passthrough
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
        .AXIS_M_TVALID(axis_in_s_tvalid),
        .AXIS_M_TREADY(axis_in_s_tready),
        .AXIS_M_TDATA(axis_in_s_tdata),
        .AXIS_M_TLAST(axis_in_s_tlast),
        .AXIS_M_TID(axis_in_s_tid),
        .AXIS_M_TUSER(axis_in_s_tuser),
        .AXIS_M_TDEST(axis_in_s_tdest)
    );


    // Output Passthrough
    axis_passthrough #(
        .DATAW(DATAW),
        .IDW(IDW),
        .USERW(USERW),
        .DESTW(DESTW)
    ) output_passthrough (
        .CLK(CLK),
        .RST_N(RST_N),
        .AXIS_S_TVALID(axis_out_s_tvalid),
        .AXIS_S_TREADY(axis_out_s_tready),
        .AXIS_S_TDATA(axis_out_s_tdata),
        .AXIS_S_TLAST(axis_out_s_tlast),
        .AXIS_S_TID(axis_out_s_tid),
        .AXIS_S_TUSER(axis_out_s_tuser),
        .AXIS_S_TDEST(axis_out_s_tdest),
        .AXIS_M_TVALID(AXIS_M_TVALID),
        .AXIS_M_TREADY(AXIS_M_TREADY),
        .AXIS_M_TDATA(AXIS_M_TDATA),
        .AXIS_M_TLAST(AXIS_M_TLAST),
        .AXIS_M_TID(AXIS_M_TID),
        .AXIS_M_TUSER(AXIS_M_TUSER),
        .AXIS_M_TDEST(AXIS_M_TDEST)
    );



// mvm0 crossbar

    always @(*) begin
        if (axis_in_s_tvalid && (axis_in_s_tdest == 4'b0001) ) begin
            mvm0_rx_tvalid = axis_in_s_tvalid;
            mvm0_rx_tdata  = axis_in_s_tdata;
            mvm0_rx_tlast  = axis_in_s_tlast;
            mvm0_rx_tid    = axis_in_s_tid;
            mvm0_rx_tuser  = axis_in_s_tuser;
            mvm0_rx_tdest  = axis_in_s_tdest;

            axis_in_s_tready = mvm0_rx_tready;
        end else if (mvm1_tx_tvalid && (mvm1_tx_tdest == 4'b0001) ) begin
            mvm0_rx_tvalid = mvm1_tx_tvalid;
            mvm0_rx_tdata  = mvm1_tx_tdata;
            mvm0_rx_tlast  = mvm1_tx_tlast;
            mvm0_rx_tid    = mvm1_tx_tid;
            mvm0_rx_tuser  = mvm1_tx_tuser;
            mvm0_rx_tdest  = mvm1_tx_tdest;

            mvm1_tx_tready = mvm0_tx_tready;
        end 
    end

// mvm1 crossbar
    always @(*) begin
        if (axis_in_s_tvalid && (axis_in_s_tdest == 4'b0010) ) begin
            mvm1_rx_tvalid = axis_in_s_tvalid;
            mvm1_rx_tdata  = axis_in_s_tdata;
            mvm1_rx_tlast  = axis_in_s_tlast;
            mvm1_rx_tid    = axis_in_s_tid;
            mvm1_rx_tuser  = axis_in_s_tuser;
            mvm1_rx_tdest  = axis_in_s_tdest;

            axis_in_s_tready = mvm0_rx_tready;
        end else if (mvm0_tx_tvalid && (mvm0_tx_tdest == 4'b0010) ) begin
            mvm1_rx_tvalid = mvm0_tx_tvalid;
            mvm1_rx_tdata  = mvm0_tx_tdata;
            mvm1_rx_tlast  = mvm0_tx_tlast;
            mvm1_rx_tid    = mvm0_tx_tid;
            mvm1_rx_tuser  = mvm0_tx_tuser;
            mvm1_rx_tdest  = mvm0_tx_tdest;

            mvm0_tx_tready = mvm1_tx_tready;
        end
    end

// output crossbar

    always @(*) begin
        if (mvm0_tx_tvalid && (mvm0_tx_tdest == 4'b0011) ) begin
            axis_out_s_tvalid = mvm0_tx_tvalid;
            axis_out_s_tdata  = mvm0_tx_tdata;
            axis_out_s_tlast  = mvm0_tx_tlast;
            axis_out_s_tid    = mvm0_tx_tid;
            axis_out_s_tuser  = mvm0_tx_tuser;
            axis_out_s_tdest  = mvm0_tx_tdest;

            mvm0_tx_tready = axis_out_s_tready;
        end else if (mvm1_tx_tvalid && (mvm1_tx_tdest == 4'b0011) ) begin
            axis_out_s_tvalid = mvm1_tx_tvalid;
            axis_out_s_tdata  = mvm1_tx_tdata;
            axis_out_s_tlast  = mvm1_tx_tlast;
            axis_out_s_tid    = mvm1_tx_tid;
            axis_out_s_tuser  = mvm1_tx_tuser;
            axis_out_s_tdest  = mvm1_tx_tdest;

            mvm1_tx_tready = axis_out_s_tready;
        end
    end

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
        .NODESW(NODESW),     // Changed from $clog2(NODES) to NODESW parameter
        .RFDEPTH(RFDEPTH),
        .RFADDRW(RFADDRW),
        .INSTW(1 + NODESW + 2 * RFADDRW + 4),
        .INSTD(512),
        .INSTADDRW(INSTADDRW),  // Changed from $clog2(INSTD) to INSTADDRW parameter
        .AXIS_OPS(4),
        .AXIS_OPSW(AXIS_OPSW),   // Changed from $clog2(AXIS_OPS) to AXIS_OPSW parameter
        .FIFOD(64),
        .DATAPATH_DELAY(10)
        // .WEIGHTS_INIT_SEL(0)
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

    // Second MVM Instance
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
        .NODESW(NODESW),     // Changed from $clog2(NODES) to NODESW parameter
        .RFDEPTH(RFDEPTH),
        .RFADDRW(RFADDRW),
        .INSTW(1 + NODESW + 2 * RFADDRW + 4),
        .INSTD(512),
        .INSTADDRW(INSTADDRW),  // Changed from $clog2(INSTD) to INSTADDRW parameter
        .AXIS_OPS(4),
        .AXIS_OPSW(AXIS_OPSW),   // Changed from $clog2(AXIS_OPS) to AXIS_OPSW parameter
        .FIFOD(64),
        .DATAPATH_DELAY(10)
        // .WEIGHTS_INIT_SEL(1)
    ) mvm_1 (
        .clk(CLK),
        .rst(~RST_N),
        .axis_rx_tvalid(mvm1_rx_tvalid),
        .axis_rx_tready(mvm1_rx_tready),
        .axis_rx_tdata(mvm1_rx_tdata),
        .axis_rx_tlast(mvm1_rx_tlast),
        .axis_rx_tid(mvm1_rx_tid),
        .axis_rx_tuser(mvm1_rx_tuser),
        .axis_rx_tdest(mvm1_rx_tdest),
        .axis_tx_tvalid(mvm1_tx_tvalid),
        .axis_tx_tready(mvm1_tx_tready),
        .axis_tx_tdata(mvm1_tx_tdata),
        .axis_tx_tlast(mvm1_tx_tlast),
        .axis_tx_tid(mvm1_tx_tid),
        .axis_tx_tuser(mvm1_tx_tuser),
        .axis_tx_tdest(mvm1_tx_tdest)
    );

endmodule