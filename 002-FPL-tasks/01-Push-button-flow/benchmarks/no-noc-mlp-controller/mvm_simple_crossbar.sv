`include "/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/001-Push-button-flow-final/benchmarks/no-noc-mlp-controller/aparameters.sv"
module mvm_simple_crossbar (
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

    // input & output pass through
    logic                  axis_in_s_tvalid ;
    logic                 axis_in_s_tready ;
    logic    [ DATAW-1:0]  axis_in_s_tdata ;
    logic                  axis_in_s_tlast ;
    logic    [   IDW-1:0]  axis_in_s_tid ;
    logic    [ USERW-1:0]  axis_in_s_tuser ;
    logic    [ DESTW-1:0]  axis_in_s_tdest ;

    // input pass through
    logic                  axis_out_s_tvalid ;
    logic                 axis_out_s_tready ;
    logic    [ DATAW-1:0]  axis_out_s_tdata ;
    logic                  axis_out_s_tlast ;
    logic    [   IDW-1:0]  axis_out_s_tid ;
    logic    [ USERW-1:0]  axis_out_s_tuser ;
    logic    [ DESTW-1:0]  axis_out_s_tdest ;


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

    // MVM 1
    logic              mvm1_rx_tvalid;
    logic              mvm1_rx_tready;
    logic [ DATAW-1:0] mvm1_rx_tdata;
    logic              mvm1_rx_tlast;
    logic [   IDW-1:0] mvm1_rx_tid;
    logic [ USERW-1:0] mvm1_rx_tuser;
    logic [ DESTW-1:0] mvm1_rx_tdest;

    logic              mvm1_tx_tvalid;
    logic              mvm1_tx_tready;
    logic [ DATAW-1:0] mvm1_tx_tdata;
    logic              mvm1_tx_tlast;
    logic [   IDW-1:0] mvm1_tx_tid;
    logic [ USERW-1:0] mvm1_tx_tuser;
    logic [ DESTW-1:0] mvm1_tx_tdest;


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



// crossbar :

    // always_comb begin 
    //     if (axis_in_s_tvalid) begin
    //         if (axis_in_s_tdest == 1) begin
    //             mvm0_rx_tvalid <= axis_in_s_tvalid;
    //             mvm0_rx_tdata  <= axis_in_s_tdata;
    //             mvm0_rx_tlast  <= axis_in_s_tlast;
    //             mvm0_rx_tid    <= axis_in_s_tid;
    //             mvm0_rx_tuser  <= axis_in_s_tuser;
    //             mvm0_rx_tdest  <= axis_in_s_tdest;

    //             axis_in_s_tready <= mvm0_rx_tready;
    //         end else if (axis_in_s_tdest == 2) begin
    //             mvm1_rx_tvalid <= axis_in_s_tvalid;
    //             mvm1_rx_tdata  <= axis_in_s_tdata;
    //             mvm1_rx_tlast  <= axis_in_s_tlast;
    //             mvm1_rx_tid    <= axis_in_s_tid;
    //             mvm1_rx_tuser  <= axis_in_s_tuser;
    //             mvm1_rx_tdest  <= axis_in_s_tdest;

    //             axis_in_s_tready <= mvm1_rx_tready;
    //         end else if (axis_in_s_tdest == 3) begin
    //             axis_out_s_tvalid <= axis_in_s_tvalid;
    //             axis_out_s_tdata  <= axis_in_s_tdata;
    //             axis_out_s_tlast  <= axis_in_s_tlast;
    //             axis_out_s_tid    <= axis_in_s_tid;
    //             axis_out_s_tuser  <= axis_in_s_tuser;
    //             axis_out_s_tdest  <= axis_in_s_tdest;

    //             axis_in_s_tready <= axis_out_s_tready;
    //         end
    //     end else begin


// mvm0 crossbar

    always_comb begin
        if (axis_in_s_tvalid && (axis_in_s_tdest == 4'b0001) ) begin
            mvm0_rx_tvalid <= axis_in_s_tvalid;
            mvm0_rx_tdata  <= axis_in_s_tdata;
            mvm0_rx_tlast  <= axis_in_s_tlast;
            mvm0_rx_tid    <= axis_in_s_tid;
            mvm0_rx_tuser  <= axis_in_s_tuser;
            mvm0_rx_tdest  <= axis_in_s_tdest;

            axis_in_s_tready <= mvm0_rx_tready;
        end else if (mvm1_tx_tvalid && (mvm1_tx_tdest == 4'b0001) ) begin
            mvm0_rx_tvalid <= mvm1_tx_tvalid;
            mvm0_rx_tdata  <= mvm1_tx_tdata;
            mvm0_rx_tlast  <= mvm1_tx_tlast;
            mvm0_rx_tid    <= mvm1_tx_tid;
            mvm0_rx_tuser  <= mvm1_tx_tuser;
            mvm0_rx_tdest  <= mvm1_tx_tdest;

            mvm1_tx_tready <= mvm0_tx_tready;
        end 
    end

// mvm1 crossbar
    always_comb begin
        if (axis_in_s_tvalid && (axis_in_s_tdest == 4'b0010) ) begin
            mvm1_rx_tvalid <= axis_in_s_tvalid;
            mvm1_rx_tdata  <= axis_in_s_tdata;
            mvm1_rx_tlast  <= axis_in_s_tlast;
            mvm1_rx_tid    <= axis_in_s_tid;
            mvm1_rx_tuser  <= axis_in_s_tuser;
            mvm1_rx_tdest  <= axis_in_s_tdest;

            axis_in_s_tready <= mvm0_rx_tready;
        end else if (mvm0_tx_tvalid && (mvm0_tx_tdest == 4'b0010) ) begin
            mvm1_rx_tvalid <= mvm0_tx_tvalid;
            mvm1_rx_tdata  <= mvm0_tx_tdata;
            mvm1_rx_tlast  <= mvm0_tx_tlast;
            mvm1_rx_tid    <= mvm0_tx_tid;
            mvm1_rx_tuser  <= mvm0_tx_tuser;
            mvm1_rx_tdest  <= mvm0_tx_tdest;

            mvm0_tx_tready <= mvm1_tx_tready;
        end
    end

// output crossbar

    always_comb begin
        if (mvm0_tx_tvalid && (mvm0_tx_tdest == 4'b0011) ) begin
            axis_out_s_tvalid <= mvm0_tx_tvalid;
            axis_out_s_tdata  <= mvm0_tx_tdata;
            axis_out_s_tlast  <= mvm0_tx_tlast;
            axis_out_s_tid    <= mvm0_tx_tid;
            axis_out_s_tuser  <= mvm0_tx_tuser;
            axis_out_s_tdest  <= mvm0_tx_tdest;

            mvm0_tx_tready <= axis_out_s_tready;
        end else if (mvm1_tx_tvalid && (mvm1_tx_tdest == 4'b0011) ) begin
            axis_out_s_tvalid <= mvm1_tx_tvalid;
            axis_out_s_tdata  <= mvm1_tx_tdata;
            axis_out_s_tlast  <= mvm1_tx_tlast;
            axis_out_s_tid    <= mvm1_tx_tid;
            axis_out_s_tuser  <= mvm1_tx_tuser;
            axis_out_s_tdest  <= mvm1_tx_tdest;

            mvm1_tx_tready <= axis_out_s_tready;
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
        .WEIGHTS_INIT_SEL(1)
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