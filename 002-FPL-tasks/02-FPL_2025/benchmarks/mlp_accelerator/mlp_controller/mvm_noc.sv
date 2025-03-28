module mvm_noc (

CLK,
CLK_NOC,
RST_N,
AXIS_S_TVALID,
AXIS_S_TREADY,
AXIS_S_TDATA,
AXIS_S_TLAST,
AXIS_S_TID,
AXIS_S_TUSER,
AXIS_S_TDEST,
AXIS_M_TVALID,
AXIS_M_TREADY,
AXIS_M_TDATA,
AXIS_M_TLAST,
AXIS_M_TID,
AXIS_M_TUSER,
AXIS_M_TDEST

);


// LFSR localparams
localparam int LFSR_DW      = 7;
localparam int LFSR_DEFAULT = 8'h01;

// MVM localparams
localparam int DATAW = 32;
localparam int BYTEW = 8;
localparam int IDW = 4;
localparam int DESTW = 12;
localparam int IPRECISION = 8;
localparam int OPRECISION = 32;
localparam int LANES = DATAW / IPRECISION;
localparam int USERW = 75; // Lanes = # RF weigts for each MVM
                                  // + 11 for user operations 10:0
localparam int DPES = LANES;
localparam int NODES = 512;
localparam int NODESW = $clog2(NODES);
localparam int RFDEPTH = 64;
localparam int RFADDRW = 9;
localparam int INSTW = 1 + NODESW + 2 * RFADDRW + 4;
localparam int INSTD = 512;
localparam int INSTADDRW = $clog2(INSTD);
localparam int AXIS_OPS = 4;
localparam int AXIS_OPSW = $clog2(AXIS_OPS);
localparam int FIFOD = 64;
localparam int DATAPATH_DELAY = 12;
localparam int USE_RELU = 1;

// Mesh localparams
// 4x4 Mesh is verified but exceeds intel recommended design size
// this causes the simulation to finish extremely slowly. For testing 
// purposes recommend only using 3x3 noc or below. 
localparam int ROWS         = 2;
localparam int COLUMNS      = 2;
localparam int TDATAW       = DATAW + USERW;
localparam int TIDW         = 4;
localparam int TDESTW       = 12;
localparam int NUM_PACKETS  = 1;



    input   wire                  CLK;
    input   wire                  CLK_NOC;
    input   wire                  RST_N;

    // -------------------------------------------------------
    // AXI-Stream Slave Interface
    // -------------------------------------------------------
    input   wire                  AXIS_S_TVALID;
    output  logic                 AXIS_S_TREADY;
    input   wire    [ DATAW-1:0]  AXIS_S_TDATA;
    input   wire                  AXIS_S_TLAST;
    input   wire    [   IDW-1:0]  AXIS_S_TID;
    input   wire    [ USERW-1:0]  AXIS_S_TUSER;
    input   wire    [ DESTW-1:0]  AXIS_S_TDEST;

    // -------------------------------------------------------
    // AXI-Stream Master Interface
    // -------------------------------------------------------
    output  logic                 AXIS_M_TVALID;
    input   wire                  AXIS_M_TREADY;
    output  logic   [ DATAW-1:0]  AXIS_M_TDATA;
    output  logic                 AXIS_M_TLAST;
    output  logic   [   IDW-1:0]  AXIS_M_TID;
    output  logic   [ USERW-1:0]  AXIS_M_TUSER;
    output  logic   [ DESTW-1:0]  AXIS_M_TDEST;

    // -------------------------------------------------------
    // NoC Connections
    // -------------------------------------------------------
    //
    // NOTE: These names in/out are named for the directions 
    // in which they enter the noc. Not the MVMs they are 
    // connected to
    //
    // -------------------------------------------------------
    logic              axis_in_tvalid   [ROWS][COLUMNS];
    logic              axis_in_tready   [ROWS][COLUMNS];
    logic [ DATAW-1:0] axis_in_tdata    [ROWS][COLUMNS];
    logic              axis_in_tlast    [ROWS][COLUMNS];
    logic [ USERW-1:0] axis_in_tuser    [ROWS][COLUMNS];
    logic [ DESTW-1:0] axis_in_tdest    [ROWS][COLUMNS];

    logic              axis_out_tvalid  [ROWS][COLUMNS];
    logic              axis_out_tready  [ROWS][COLUMNS];
    logic [ DATAW-1:0] axis_out_tdata   [ROWS][COLUMNS];
    logic              axis_out_tlast   [ROWS][COLUMNS];
    logic [ USERW-1:0] axis_out_tuser   [ROWS][COLUMNS];
    logic [ DESTW-1:0] axis_out_tdest   [ROWS][COLUMNS];

    logic [TDATAW-1:0] mesh_in_tdata    [ROWS][COLUMNS];
    logic [TDATAW-1:0] mesh_out_tdata   [ROWS][COLUMNS];
    logic [ USERW-1:0] mesh_out_tuser   [ROWS][COLUMNS];

    genvar i, j;

    generate
        for (i = 0; i < ROWS; i = i + 1) begin : row_loop
            for (j = 0; j < COLUMNS; j = j + 1) begin : column_loop
                // Assign mesh_in_tdata by concatenating axis_in_tuser and axis_in_tdata
                assign mesh_in_tdata[i][j] = {axis_in_tuser[i][j], axis_in_tdata[i][j]};
                
                // Assign axis_out_tdata from the lower part of mesh_out_tdata
                assign axis_out_tdata[i][j] = mesh_out_tdata[i][j][DATAW-1:0];
                
                // Assign axis_out_tuser from the upper part of mesh_out_tdata
                assign axis_out_tuser[i][j] = mesh_out_tdata[i][j][TDATAW-1:DATAW];
            end
        end
    endgenerate

    // -------------------------------------------------------
    // Module Instantions
    // -------------------------------------------------------

    // Generate axis_passthrough for [0][0] only
        axis_passthrough #(
        .DATAW(DATAW),
        .IDW(IDW),
        .USERW(USERW),
        .DESTW(DESTW)
    ) axis_passthrough_inst (
        .CLK(CLK),
        .RST_N(RST_N),
        .AXIS_S_TVALID(AXIS_S_TVALID),
        .AXIS_S_TREADY(AXIS_S_TREADY),
        .AXIS_S_TDATA(AXIS_S_TDATA),
        .AXIS_S_TLAST(AXIS_S_TLAST),
        .AXIS_S_TUSER(AXIS_S_TUSER),
        .AXIS_S_TDEST(AXIS_S_TDEST),
        .AXIS_M_TVALID(axis_in_tvalid[0][0]),
        .AXIS_M_TREADY(axis_in_tready[0][0]),
        .AXIS_M_TDATA(axis_in_tdata[0][0]),
        .AXIS_M_TLAST(axis_in_tlast[0][0]),
        .AXIS_M_TUSER(axis_in_tuser[0][0]),
        .AXIS_M_TDEST(axis_in_tdest[0][0])
    );

    axis_passthrough #(
        .DATAW(DATAW),
        .IDW(IDW),
        .USERW(USERW),
        .DESTW(DESTW)
    ) axis_passthrough_inst2 (
        .CLK(CLK),
        .RST_N(RST_N),
        .AXIS_S_TVALID(axis_out_tvalid [1][1]),
        .AXIS_S_TREADY(axis_out_tready [1][1]),
        .AXIS_S_TDATA (axis_out_tdata  [1][1]),
        .AXIS_S_TLAST (axis_out_tlast  [1][1]),
        // .AXIS_S_TUSER (axis_out_tuser  [1][1]),
        .AXIS_S_TDEST (axis_out_tdest  [1][1]),
        .AXIS_M_TVALID(AXIS_M_TVALID),
        .AXIS_M_TREADY(AXIS_M_TREADY),
        .AXIS_M_TDATA (AXIS_M_TDATA),
        .AXIS_M_TLAST (AXIS_M_TLAST),
        // .AXIS_M_TUSER (AXIS_M_TUSER),
        .AXIS_M_TDEST (AXIS_M_TDEST)
    );
    
    // Generate rtl_mvm instances, skipping [0][0]
    generate
        for (i = 0; i < ROWS; i = i + 1) begin : NUM_ROWS

            for (j = 0; j < COLUMNS; j = j + 1) begin : NUM_COLUMNS

                // Skipping [1][1] for now to use a passthrough block
                if (!(i == 0 && j == 0) && !(i == 1 && j == 1)) begin  // Skip [0][0]

                    if (i != ROWS-1 || j != COLUMNS-1) begin

                        if(i == 0 && j == 1) begin
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
                                 .WEIGHTS_INIT_FILE("/home/advent2/quartus_projects/mlp_controller_v2/rf_weights0_1.mif")
                            ) mvm_inst (
                                 .clk(CLK),
                                 .rst(~RST_N),
                                 .axis_rx_tvalid(axis_out_tvalid[i][j]),
                                 .axis_rx_tdata(axis_out_tdata[i][j][DATAW-1:0]),
                                 .axis_rx_tdest(axis_out_tdest[i][j]),
                                 .axis_rx_tuser(axis_out_tuser[i][j]),
                                 .axis_rx_tlast(axis_out_tlast[i][j]),
                                 .axis_rx_tready(axis_out_tready[i][j]),
                                 .axis_tx_tvalid(axis_in_tvalid[i][j]),
                                 .axis_tx_tdata(axis_in_tdata[i][j][DATAW-1:0]),
                                 .axis_tx_tdest(axis_in_tdest[i][j]),
                                 .axis_tx_tuser(axis_in_tuser[i][j]),
                                 .axis_tx_tlast(axis_in_tlast[i][j]),
                                 .axis_tx_tready(axis_in_tready[i][j])
                            );
                        end else begin
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
                                 .WEIGHTS_INIT_FILE("/home/advent2/quartus_projects/mlp_controller_v2/rf_weights1_0.mif")
                            ) mvm_inst (
                                 .clk(CLK),
                                 .rst(~RST_N),
                                 .axis_rx_tvalid(axis_out_tvalid[i][j]),
                                 .axis_rx_tdata(axis_out_tdata[i][j][DATAW-1:0]),
                                 .axis_rx_tdest(axis_out_tdest[i][j]),
                                 .axis_rx_tuser(axis_out_tuser[i][j]),
                                 .axis_rx_tlast(axis_out_tlast[i][j]),
                                 .axis_rx_tready(axis_out_tready[i][j]),
                                 .axis_tx_tvalid(axis_in_tvalid[i][j]),
                                 .axis_tx_tdata(axis_in_tdata[i][j][DATAW-1:0]),
                                 .axis_tx_tdest(axis_in_tdest[i][j]),
                                 .axis_tx_tuser(axis_in_tuser[i][j]),
                                 .axis_tx_tlast(axis_in_tlast[i][j]),
                                 .axis_tx_tready(axis_in_tready[i][j])
                            );
                        end 
                        
                    end else begin

                        rtl_mvm #(
                            .DATAW(DATAW),
                            .BYTEW(BYTEW),
                            .IDW(IDW),
                            .DESTW(DESTW),
                            .USERW(USERW),
                            .IPRECISION(8),
                            .OPRECISION(32),
                            .LANES(DATAW / IPRECISION),
                            .DPES(LANES),
                            .NODES(512),
                            .NODESW($clog2(NODES)),
                            .RFDEPTH(512),
                            .RFADDRW($clog2(RFDEPTH)),
                            .INSTW(1 + NODESW + 2 * RFADDRW + 4),
                            .INSTD(512),
                            .INSTADDRW($clog2(INSTD)),
                            .AXIS_OPS(4),
                            .AXIS_OPSW($clog2(AXIS_OPS)),
                            .FIFOD(64),
                            .DATAPATH_DELAY(2)
                        ) mvm_inst (
                            .clk(CLK),
                            .rst(~RST_N),
                            .axis_rx_tvalid(axis_out_tvalid[i][j]),
                            .axis_rx_tdata(axis_out_tdata[i][j][DATAW-1:0]),
                            .axis_rx_tdest(axis_out_tdest[i][j]),
                            .axis_rx_tuser(axis_out_tuser[i][j]),
                            .axis_rx_tlast(axis_out_tlast[i][j]),
                            .axis_rx_tready(axis_out_tready[i][j]),
                            .axis_tx_tvalid(AXIS_M_TVALID),
                            .axis_tx_tdata(AXIS_M_TDATA[DATAW-1:0]),
                            .axis_tx_tdest(AXIS_M_TDEST),
                            .axis_tx_tuser(AXIS_M_TUSER),
                            .axis_tx_tlast(AXIS_M_TLAST),
                            .axis_tx_tready(AXIS_M_TREADY)
                        );
                    end
                end
            end
        end
    endgenerate

    // -------------------------------------------------------
    // mesh of router_Wrap modules
    // -------------------------------------------------------
    generate
        for (i = 0; i < ROWS; i = i + 1) begin : mesh_row_gen
            for (j = 0; j < COLUMNS; j = j + 1) begin : mesh_col_gen
                router_wrap #(
                    .RESET_SYNC_EXTEND_CYCLES   (2),
                    .RESET_NUM_OUTPUT_REGISTERS (1),
                    .NUM_PORTS                  (5), // parameter compatibility; rtr-to-rtr ports unused
                    .TID_WIDTH                  (IDW),
                    .TDEST_WIDTH                (DESTW),
                    .TDATA_WIDTH                (DATAW)
                ) router_inst (
                    .clk_noc         (CLK_NOC),
                    .clk_usr         (CLK),
                    .rst_n           (RST_N),

                    .axis_in_tvalid  (axis_in_tvalid[i][j]),
                    .axis_in_tready  (axis_in_tready[i][j]),
                    .axis_in_tdata   (mesh_in_tdata[i][j]),
                    .axis_in_tlast   (axis_in_tlast[i][j]),
                    // .axis_in_tid     (axis_in_tid[i][j]),
                    .axis_in_tdest   (axis_in_tdest[i][j]),

                    .axis_out_tvalid (axis_out_tvalid[i][j]),
                    .axis_out_tready (axis_out_tready[i][j]),
                    .axis_out_tdata  (mesh_out_tdata[i][j]),
                    .axis_out_tlast  (axis_out_tlast[i][j]),
                    // .axis_out_tid    (axis_out_tid[i][j]),
                    .axis_out_tdest  (axis_out_tdest[i][j])
                );
            end
        end
    endgenerate

endmodule