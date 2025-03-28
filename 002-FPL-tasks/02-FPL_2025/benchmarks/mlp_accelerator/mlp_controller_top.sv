
module mlp_controller (
    input  logic [3:0] address,
    input  logic       chipselect,
    input  logic       clk,
    input  logic       read,
    input  logic       reset_n,
    input  logic       write,
    input  logic [31:0] writedata,
    output logic [9:0] led_out,
    output logic [31:0] readdata
);

	 parameter DATAW = 128;
    parameter IDW = 4;
	 parameter DESTW = 12;
	 parameter USERW = 75;
//
    // AXI Interfaces
    logic             axis_s_tvalid;
    logic [DATAW-1:0] axis_s_tdata;
    logic [IDW-1:0]   axis_s_tid;
    logic [DESTW-1:0] axis_s_tdest;
    logic [USERW-1:0] axis_s_tuser;
    logic             axis_s_tlast;
    logic             axis_s_tready;
    
    logic             axis_m_tvalid;
    logic [DATAW-1:0] axis_m_tdata;
    logic [IDW-1:0]   axis_m_tid;
    logic [DESTW-1:0] axis_m_tdest;
    logic [USERW-1:0] axis_m_tuser;
    logic             axis_m_tlast;
    logic             axis_m_tready = 1;

    // Control and Data registers
    logic [31:0]  mvm_control_reg;
    logic [127:0] mvm_input_reg;
    logic [31:0]  mvm_instruction_reg;
    logic [127:0] mvm_output_reg;
    logic         mvm_output_ready_reg;
    logic         send_mvm_input;

    // Control reg update
    always_ff @(posedge clk or negedge reset_n) begin
        if(!reset_n)
            mvm_control_reg <= 0;
        else if(mvm_control_reg[0])
            mvm_control_reg[0] <= 0;
        else if(chipselect && write && (address == 4'h0))
            mvm_control_reg <= writedata;
    end

    // Input reg update
    always_ff @(posedge clk or negedge reset_n) begin
        if(!reset_n)
            mvm_input_reg <= 0;
        else if(chipselect && write) begin
            if(address == 4'h1) mvm_input_reg[31:0]   <= writedata;
            else if(address == 4'h2) mvm_input_reg[63:32]  <= writedata;
            else if(address == 4'h3) mvm_input_reg[95:64]  <= writedata;
            else if(address == 4'h4) mvm_input_reg[127:96] <= writedata;
        end
    end

    // Instruction reg update
    always_ff @(posedge clk or negedge reset_n) begin
        if(!reset_n)
            mvm_instruction_reg <= 0;
        else if(chipselect && write && (address == 4'h5))
            mvm_instruction_reg <= writedata;
    end

    // Output reg update
    always_ff @(posedge clk or negedge reset_n) begin
        if(!reset_n)
            mvm_output_reg <= 0;
        else if(axis_m_tvalid)
            mvm_output_reg <= axis_m_tdata;
    end

    // Readdata update
    always_ff @(posedge clk or negedge reset_n) begin
        if(!reset_n)
            readdata <= 0;
        else if(chipselect && read) begin
            case(address)
                4'h0: readdata <= mvm_control_reg;
                4'h1: readdata <= mvm_input_reg[31:0];
                4'h2: readdata <= mvm_input_reg[63:32];
                4'h3: readdata <= mvm_input_reg[95:64];
                4'h4: readdata <= mvm_input_reg[127:96];
                4'h5: readdata <= mvm_instruction_reg;
                4'h6: readdata <= mvm_output_reg[31:0];
                4'h7: readdata <= mvm_output_reg[63:32];
                4'h8: readdata <= mvm_output_reg[95:64];
                4'h9: readdata <= mvm_output_reg[127:96];
                4'hA: readdata <= {31'b0, mvm_output_ready_reg};
                default: readdata <= 0;
            endcase
        end
    end

    // Data ready reg
    always_ff @(posedge clk or negedge reset_n) begin
        if(!reset_n)
            mvm_output_ready_reg <= 0;
        else if(axis_m_tvalid)
            mvm_output_ready_reg <= 1;
        else if(chipselect && read && (address >= 4'h6 && address <= 4'h9))
            mvm_output_ready_reg <= 0;
    end

    // AXI signals for MVM NOC
    always_ff @(posedge clk or negedge reset_n) begin
        if(!reset_n) begin
            axis_s_tvalid <= 0;
            axis_s_tdata  <= 0;
            axis_s_tlast  <= 0;
            axis_s_tuser  <= 0;
            axis_s_tdest  <= 0;
        end else if(mvm_control_reg[0] == 1'b0) begin
            axis_s_tvalid <= 0;
            axis_s_tdata  <= 0;
            axis_s_tlast  <= 0;
        end else if(mvm_control_reg[0] == 1'b1) begin
            axis_s_tvalid <= 1;
            axis_s_tdata  <= (mvm_control_reg[6:5] == 2'b0) ? mvm_instruction_reg : mvm_input_reg;
            axis_s_tuser[8:0]   <= 9'b0;
            axis_s_tuser[74:11] <= 64'b0;
            axis_s_tuser[10:9]  <= mvm_control_reg[6:5];
            axis_s_tdest        <= mvm_control_reg[4:1];
            axis_s_tlast        <= 1;
        end 
    end

    assign led_out = mvm_output_reg[9:0];

/////////////////////////////////////////////////////////
// MVM-NOC
/////////////////////////////////////////////////////////

// LFSR localparams
localparam int LFSR_DW      = 7;
localparam int LFSR_DEFAULT = 8'h01;

// MVM localparams
localparam int DATAW = 128;
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


    wire                  CLK;
    wire                  CLK_NOC;
    wire                  RST_N;

    // -------------------------------------------------------
    // AXI-Stream Slave Interface
    // -------------------------------------------------------
    wire                  AXIS_S_TVALID;
    logic                 AXIS_S_TREADY;
    wire    [ DATAW-1:0]  AXIS_S_TDATA;
    wire                  AXIS_S_TLAST;
    wire    [   IDW-1:0]  AXIS_S_TID;
    wire    [ USERW-1:0]  AXIS_S_TUSER;
    wire    [ DESTW-1:0]  AXIS_S_TDEST;

    // -------------------------------------------------------
    // AXI-Stream Master Interface
    // -------------------------------------------------------
    logic                 AXIS_M_TVALID;
    wire                  AXIS_M_TREADY;
    logic   [ DATAW-1:0]  AXIS_M_TDATA;
    logic                 AXIS_M_TLAST;
    logic   [   IDW-1:0]  AXIS_M_TID;
    logic   [ USERW-1:0]  AXIS_M_TUSER;
    logic   [ DESTW-1:0]  AXIS_M_TDEST;

    assign CLK = clk;
    assign CLK_NOC = clk;
    assign RST_N = reset_n;
    // slave interface
    assign AXIS_S_TVALID = axis_s_tvalid;
    assign axis_s_tready = AXIS_S_TREADY;
    assign AXIS_S_TDATA = axis_s_tdata;
    assign AXIS_S_TLAST = axis_s_tlast;
    assign AXIS_S_TID = axis_s_tid;
    assign AXIS_S_TUSER = axis_s_tuser;
    assign AXIS_S_TDEST = axis_s_tdest;
    // master interface
    assign axis_m_tvalid = AXIS_M_TVALID;
    assign AXIS_M_TREADY = axis_m_tready;
    assign axis_m_tdata = AXIS_M_TDATA;
    assign axis_m_tlast = AXIS_M_TLAST;
    assign axis_m_tid = AXIS_M_TID;
    assign axis_m_tuser = AXIS_M_TUSER;
    assign axis_m_tdest = AXIS_M_TDEST;    


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
        .AXIS_S_TVALID(axis_out_tvalid[1][1]),
        .AXIS_S_TREADY(axis_out_tready[1][1]),
        .AXIS_S_TDATA (axis_out_tdata[1][1]),
        .AXIS_S_TLAST (axis_out_tlast[1][1]),
        // .AXIS_S_TUSER (axis_out_tuser  [1][1]),
        .AXIS_S_TDEST (axis_out_tdest[1][1]),
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
                                 .WEIGHTS_INIT_SEL(0)
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
                                 .WEIGHTS_INIT_SEL(1)
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

	// localparam string ROUTING_TABLE_PREFIX = "/mnt/vault1/rsunketa/noc/routing_tables/mesh_2x2/";
	// parameter string routing_table = $sformatf("%s%0d_%0d.hex", ROUTING_TABLE_PREFIX, i, j);

    // -------------------------------------------------------
    // mesh of router_Wrap modules
    // -------------------------------------------------------
    generate
        for (i = 0; i < ROWS; i = i + 1) begin : mesh_row_gen
            for (j = 0; j < COLUMNS; j = j + 1) begin : mesh_col_gen
				
                // Generate routing table file name
                (* keep *)
                router_wrap #(
                    // .RESET_SYNC_EXTEND_CYCLES   (2),
                    // .RESET_NUM_OUTPUT_REGISTERS (1),
					// .ROUTING_TABLE_HEX(routing_table),
					.ROUTING_TABLE_HEX($sformatf("%s%0d_%0d.hex", "/mnt/vault1/rsunketa/noc/routing_tables/mesh_2x2/", i, j)),
                    .NUM_PORTS                  (5), // parameter compatibility; rtr-to-rtr ports unused
                    .TID_WIDTH                  (TIDW),
                    .TDEST_WIDTH                (TDESTW),
                    .TDATA_WIDTH                (TDATAW)
                ) router_inst (
                    .clk_noc         (CLK_NOC),
                    .clk_usr         (CLK),
                    .rst_n           (RST_N),

                    .axis_in_tvalid  (axis_in_tvalid[i][j]),
                    .axis_in_tready  (axis_in_tready[i][j]),
                    .axis_in_tdata   (axis_in_tdata[i][j]),
                    .axis_in_tlast   (axis_in_tlast[i][j]),
                    // .axis_in_tid     (axis_in_tid[i][j]),
                    .axis_in_tdest   (axis_in_tdest[i][j]),

                    .axis_out_tvalid (axis_out_tvalid[i][j]),
                    .axis_out_tready (axis_out_tready[i][j]),
                    .axis_out_tdata  (axis_out_tdata[i][j]),
                    .axis_out_tlast  (axis_out_tlast[i][j]),
                    // .axis_out_tid    (axis_out_tid[i][j]),
                    .axis_out_tdest  (axis_out_tdest[i][j])
                );
            end
        end
    endgenerate


endmodule

/////////////////////////////////////////////////////////////////////////////////////////////////////////////

// -------------------------------------------------------
// RTL MVM
// -------------------------------------------------------


/**
RTL MVM Module
Scalable Matrix Vector Multiplication implementation
**/
module rtl_mvm # (
	parameter DATAW = 128,         // Bitwidth of axi-s tdata
	parameter BYTEW = 8,   		   // Bitwidth of axi-s tkeep, tstrb
	parameter IDW = 32,            // Bitwidth of axi-s tid
	parameter DESTW = 12,		   // Bitwidth of axi-s tdest
	parameter USERW = 75,          // Bitwidth of axi-s tuser
	parameter IPRECISION = 8,      // Input precision in bits
	parameter OPRECISION = 32,     // Output precision in bits
	parameter LANES = DATAW / IPRECISION,  // Number of dot-product INT8 lanes
	parameter DPES  = LANES,       // Number of dot-product engines
	parameter NODES = 128,			 // Max number of nodes in each NoC
	parameter NODESW = $clog2(NODES), //Bitwidth of store node ID
	parameter RFDEPTH = 128,       // Depth of register files (RFs)
	parameter RFADDRW = $clog2(RFDEPTH),  // Bitwidth of RF address
	parameter INSTW = 32,   // Instruction bitwidth {release_op, release_dest, rf_raddr, accum_raddr, last, release, accum_en, reduce, jump, en}
	parameter INSTD = 128,         // Depth of instruction FIFO
	parameter INSTADDRW = $clog2(INSTD),  // Bitwidth of instruction memory address
	parameter AXIS_OPS = 4, // Number of AXI-S operations (max 4) {instruction, reduction vector, input vector, matrix}
	parameter AXIS_OPSW = $clog2(AXIS_OPS),
	parameter FIFOD = 64,          // Depth of input, accumulation, and output FIFOs
	parameter USE_RELU = 1, 
	parameter DATAPATH_DELAY = 10,  // Delay of datpath (inputs -> result)
	parameter WEIGHTS_INIT_SEL = -1
)(
	input  clk,
	input  rst,
	// Rx interface
	input  axis_rx_tvalid,
	input  [DATAW-1:0] axis_rx_tdata,
	input  [BYTEW-1:0] axis_rx_tstrb,
	input  [BYTEW-1:0] axis_rx_tkeep,
	input  [IDW-1:0] axis_rx_tid,
	input  [DESTW-1:0] axis_rx_tdest,
	input  [USERW-1:0] axis_rx_tuser,
	input  axis_rx_tlast,
	output axis_rx_tready,	
	// Tx interface
	output axis_tx_tvalid,
	output [DATAW-1:0] axis_tx_tdata,
	output [BYTEW-1:0] axis_tx_tstrb,
	output [BYTEW-1:0] axis_tx_tkeep,
	output [IDW-1:0] axis_tx_tid,
	output [DESTW-1:0] axis_tx_tdest,
	output [USERW-1:0] axis_tx_tuser,
	output axis_tx_tlast,
	input  axis_tx_tready
);

// Hook up unused Rx signals to dummy registers to avoid being synthesized away
(*noprune*) reg [BYTEW-1:0] dummy_axis_rx_tstrb;
(*noprune*) reg [BYTEW-1:0] dummy_axis_rx_tkeep;
(*noprune*) reg [DESTW-1:0] dummy_axis_rx_tdest;
(*noprune*) reg [IDW-1:0] dummy_axis_rx_tid;
always @ (posedge clk) begin
	dummy_axis_rx_tstrb <= axis_rx_tstrb;
	dummy_axis_rx_tkeep <= axis_rx_tkeep;
	dummy_axis_rx_tdest <= axis_rx_tdest;
	dummy_axis_rx_tid <= axis_rx_tid;
end

reg  [AXIS_OPSW-1:0] r_tuser_op;

reg  inst_fifo_push, inst_init_fifo_push;
reg  [INSTW-1:0] inst_fifo_idata, inst_init_idata;
wire [INSTW-1:0] inst_fifo_odata;
wire inst_fifo_full, inst_fifo_empty;
wire inst_fifo_pop;

wire input_fifo_empty, input_fifo_full;
reg  [DATAW-1:0] input_fifo_idata;
wire [DATAW-1:0] input_fifo_odata;
reg  input_fifo_push;
wire input_fifo_pop;

wire reduction_fifo_empty, reduction_fifo_full;
reg  [DATAW-1:0] reduction_fifo_idata;
wire [DATAW-1:0] reduction_fifo_odata;
reg  reduction_fifo_push;
wire reduction_fifo_pop;

wire output_fifo_empty, output_fifo_full, output_fifo_almost_full;
wire [NODESW-1:0] output_fifo_odest;
wire output_fifo_oop;
wire [DATAW-1:0] output_fifo_odata;
reg  output_fifo_pop;

reg  [RFADDRW-1:0] rf_waddr;
reg  rf_wen [0:DPES-1];
reg  [DATAW-1:0] rf_wdata;
wire [DATAW-1:0] rf_rdata [0:DPES-1]; 

wire [RFADDRW-1:0] accum_mem_waddr;
wire [DATAW-1:0] accum_mem_rdata;

wire [OPRECISION*DPES-1:0] datapath_results;
wire [DATAW-1:0] truncated_datapath_results;
wire [DPES-1:0] datapath_ovalid;
wire [NODESW-1:0] datapath_dest;
wire datapath_op;

wire [NODESW-1:0] inst_release_dest;
wire [RFADDRW-1:0] inst_rf_raddr, inst_accum_raddr;
wire inst_reduce, inst_accum_en, inst_release_op, inst_release, inst_jump, inst_en, inst_last;
wire [RFADDRW-1:0] tuser_rf_addr;
wire [AXIS_OPSW-1:0] tuser_op;
wire [DPES-1:0] tuser_rf_en;

reg rxtready, txtvalid;
reg [AXIS_OPSW:0] tx_tuser_op;
reg [INSTW-1:0] r_inst, rr_inst;
reg r_inst_valid, r_inst_accum_en, r_inst_release, r_inst_reduce, r_inst_release_op;
reg rr_inst_valid, rr_inst_accum_en, rr_inst_release, rr_inst_reduce, rr_inst_release_op;
reg [DATAW-1:0] r_input_operands, rr_input_operands;
reg [DATAW-1:0] r_reduction_operands, rr_reduction_operands;
reg [RFADDRW-1:0] r_inst_accum_raddr, rr_inst_accum_raddr;
reg [NODESW-1:0] r_inst_release_dest, rr_inst_release_dest;

wire last_dword_s;

// FIFO to store instructions
fifo # (
	.DATAW(INSTW),
	.DEPTH(INSTD)
) instruction_fifo (
	.clk(clk),
	.rst(rst),
	.push(inst_fifo_push),
	.pop(inst_fifo_pop),
	.idata(inst_fifo_idata),
	.odata(inst_fifo_odata),
	.empty(inst_fifo_empty),
	.full(inst_fifo_full),
	.almost_full(inst_fifo_almost_full)
);

// Split the instructions into fields for ease-of-use later
assign inst_release_op 		= inst_fifo_odata[31]; 		//`inst_release_op(inst_rdata);
assign inst_release_dest 	= inst_fifo_odata[30:22]; 	//`inst_release_dest(inst_rdata);
assign inst_rf_raddr 		= inst_fifo_odata[21:13]; 	//`inst_raddr(inst_rdata);
assign inst_accum_raddr 	= inst_fifo_odata[12:4]; 	//`inst_accum(inst_rdata);
assign inst_last 				= inst_fifo_odata[3]; 		//`inst_last(inst_rdata);
assign inst_reduce 			= inst_fifo_odata[0]; 		//`inst_reduce(inst_rdata);
assign inst_accum_en 		= inst_fifo_odata[1]; 		//`inst_accum_en(inst_rdata);
assign inst_release 			= inst_fifo_odata[2]; 		//`inst_release(inst_rdata);

// Split the tuser field for ease-of-use later
assign tuser_rf_addr 		= axis_rx_tuser[8:0];
assign tuser_op 				= axis_rx_tuser[10:9];
assign tuser_rf_en 			= axis_rx_tuser[74:11];

// FIFO for input vectors sent to the MVM
fifo # (
	.DATAW(DATAW),
	.DEPTH(FIFOD)
) input_fifo (
	.clk(clk),
	.rst(rst),
	.push(input_fifo_push),
	.idata(input_fifo_idata),
	.pop(input_fifo_pop),
	.odata(input_fifo_odata),
	.empty(input_fifo_empty),
	.full(input_fifo_full),
	.almost_full(input_fifo_almost_full)
);

// FIFO for accumulation vectors sent to the MVM
fifo # (
	.DATAW(DATAW),
	.DEPTH(FIFOD)
) reduction_fifo (
	.clk(clk),
	.rst(rst),
	.push(reduction_fifo_push),
	.idata(reduction_fifo_idata),
	.pop(reduction_fifo_pop),
	.odata(reduction_fifo_odata),
	.empty(reduction_fifo_empty),
	.full(reduction_fifo_full),
	.almost_full(reduction_fifo_almost_full)
);

// Pipeline to pass release_dest and release_op alongside datapath
pipeline # (
	.DELAY(DATAPATH_DELAY),
	.WIDTH(NODESW+1)
) release_pipeline (
	.clk(clk),
	.rst(rst),
	.data_in({rr_inst_release_op, rr_inst_release_dest}),
	.data_out({datapath_op, datapath_dest})
);

genvar dpe_id;
generate 
for (dpe_id = 0; dpe_id < DPES; dpe_id = dpe_id + 1) begin: generate_datapath
	memory_block # (
		.DATAW(DATAW),
		.DEPTH(RFDEPTH),
		.ADDRW(RFADDRW),
		.WEIGHTS_INIT_SEL (WEIGHTS_INIT_SEL) //"/home/advent2/quartus_projects/mlp_controller_v2/rf_weights.mif"
	) rf (
		.clk(clk),
		.rst(rst),
		.waddr(rf_waddr),
		.wen(rf_wen[dpe_id]),
		.wdata(rf_wdata),
		.raddr(inst_rf_raddr),
		.rdata(rf_rdata[dpe_id])
	);
	
	datapath # (
		.LANES(LANES),
		.DATAW(DATAW),
		.IPREC(IPRECISION),
		.OPREC(OPRECISION),
		.MEM_DEPTH(RFDEPTH),
		.ADDRW(RFADDRW)
	) datapath_inst (
		.clk(clk),
		.rst(rst),
		.i_valid(rr_inst_valid),
		.i_dataa(rr_input_operands),
		.i_datab(rf_rdata[dpe_id]),
		.i_datac(rr_reduction_operands[(dpe_id+1)*IPRECISION-1:dpe_id*IPRECISION]),
		.i_accum_addr(rr_inst_accum_raddr),
		.i_accum(rr_inst_accum_en),
		.i_last(rr_inst_release),
		.i_reduce(rr_inst_reduce),
		.o_valid(datapath_ovalid[dpe_id]),
		.o_result(datapath_results[(dpe_id+1)*OPRECISION-1:dpe_id*OPRECISION])
	);

	// Apply ReLU function with proper sign handling
	// wire signed [OPRECISION-1:0] mvm_result = datapath_results[(dpe_id+1)*OPRECISION-1:dpe_id*OPRECISION];
	// // Extract the relevant bits for comparison and truncation
	// wire signed [IPRECISION-1:0] mvm_input_result = mvm_result[IPRECISION-1:0];

	// // Apply ReLU function (zero out negative values) if USE_RELU is set
	// wire [IPRECISION-1:0] relu_result = (USE_RELU && (mvm_input_result < 0)) ? {IPRECISION{1'b0}} : mvm_input_result;

	// // Truncate and assign result
	// assign truncated_datapath_results[(dpe_id+1)*IPRECISION-1:dpe_id*IPRECISION] = relu_result;

	assign truncated_datapath_results[(dpe_id+1)*IPRECISION-1:dpe_id*IPRECISION] = datapath_results[dpe_id*OPRECISION+IPRECISION-1:dpe_id*OPRECISION];

end
endgenerate

// Specify if ready to accept input
always @ (*) begin
	if (axis_rx_tvalid && tuser_op == 0) begin
		rxtready <= !inst_fifo_full;
	end else if (axis_rx_tvalid && tuser_op == 1) begin
		rxtready <= !reduction_fifo_full;
	end else if (axis_rx_tvalid && tuser_op == 2) begin
		rxtready <= !input_fifo_full;
	end else if (axis_rx_tvalid && tuser_op == 3) begin
		rxtready <= 1'b1;
	end else begin
		rxtready <= 1'b0;
	end
end

// Read from input interface and steer to destination mem/FIFO
integer i;
always @ (posedge clk) begin
	if (axis_rx_tvalid && axis_rx_tready) begin
		if (tuser_op == 0) begin
			inst_init_idata <= axis_rx_tdata[INSTW-1:0];
			inst_init_fifo_push <= 1'b1;
			reduction_fifo_push <= 1'b0;
			input_fifo_push <= 1'b0;
			for (i = 0; i < DPES; i = i + 1) rf_wen[i] <= 1'b0;
		end else if (tuser_op == 1) begin
			reduction_fifo_idata <= axis_rx_tdata[DATAW-1:0];
			inst_init_fifo_push <= 1'b0;
			reduction_fifo_push <= 1'b1;
			input_fifo_push <= 1'b0;
			for (i = 0; i < DPES; i = i + 1) rf_wen[i] <= 1'b0;
		end else if (tuser_op == 2) begin
			input_fifo_idata <= axis_rx_tdata[DATAW-1:0];
			input_fifo_push <= 1'b1;
			inst_init_fifo_push <= 1'b0;
			reduction_fifo_push <= 1'b0;
			for (i = 0; i < DPES; i = i + 1) rf_wen[i] <= 1'b0;
		end else if (tuser_op == 3) begin
			for (i = 0; i < DPES; i = i + 1) rf_wen[i] <= tuser_rf_en[i];
			rf_wdata <= axis_rx_tdata[DATAW-1:0];
			rf_waddr <= tuser_rf_addr;
			inst_init_fifo_push <= 1'b0;
			reduction_fifo_push <= 1'b0;
			input_fifo_push <= 1'b0;
		end
		
		r_tuser_op <= tuser_op;
	end else begin
		inst_init_fifo_push <= 1'b0;
		reduction_fifo_push <= 1'b0;
		input_fifo_push <= 1'b0;
		for (i = 0; i < DPES; i = i + 1) rf_wen[i] <= 1'b0;
	end
end

// Multiplexer logic to switch between initial instruction writes, and looping the instructions
always @ (*) begin
	if (r_tuser_op == 0) begin
		inst_fifo_push = inst_init_fifo_push;
		inst_fifo_idata = inst_init_idata;
	end else begin
		inst_fifo_push = inst_fifo_pop;
		inst_fifo_idata = inst_fifo_odata;
	end
end

// Combinatory logic for tx_tuser_op
always @ (*) begin
	if (output_fifo_oop) begin
		tx_tuser_op = 2'h2;
	end else begin
		tx_tuser_op = 2'h1;
	end
end

// Process next instruction if there is an instruction and input vector available, and the output FIFO is able to take outputs
//assign inst_fifo_pop = ~inst_fifo_empty && !input_fifo_empty && !output_fifo_almost_full;
assign inst_fifo_pop = ~inst_fifo_empty && !input_fifo_empty && !output_fifo_almost_full && (!inst_reduce || !reduction_fifo_empty);
// Pop reduction vector if a request to reduce is made, the reduction vector is available, and the next instruction is able to be processed
assign reduction_fifo_pop = inst_reduce && !reduction_fifo_empty && inst_fifo_pop;
// Pop input vector if this is the last chunk for the input vector, and the next instruction is able to be processed
assign input_fifo_pop = inst_last && inst_fifo_pop;

// Issue instruction and advance instruction raddr, pop inputs
always @ (posedge clk) begin
	if (rst) begin
		r_inst_valid <= 1'b0;
		r_inst_reduce <= 1'b0;
		r_inst_accum_en <= 1'b0;
		r_inst_release <= 1'b0;
		r_inst <= 0;
		r_input_operands <= {(DATAW){1'b0}};
		r_reduction_operands <= {(DATAW){1'b0}};
		r_inst_accum_raddr <= {(RFADDRW){1'b0}};
		rr_inst_valid <= 1'b0;
		rr_inst_reduce <= 1'b0;
		rr_inst_accum_en <= 1'b0;
		rr_inst_release <= 1'b0;
		rr_inst <= 0;
		rr_input_operands <= {(DATAW){1'b0}};
		rr_reduction_operands <= {(DATAW){1'b0}};
		rr_inst_accum_raddr <= {(RFADDRW){1'b0}};
	end else begin
		if (!inst_fifo_empty) begin
			if (inst_reduce) begin
				// TODO: Is this a good implementation? Wait until reduction vector arrives to do anything
				// If there are input and reduction vectors available and output is able to take on new outputs
				if (!input_fifo_empty && !reduction_fifo_empty && !output_fifo_almost_full) begin
					r_inst_valid <= 1'b1;
				end else begin
					r_inst_valid <= 1'b0;
				end
			end else begin
				// If there are inputs available and output is able to take on new outputs
				if (!input_fifo_empty && !output_fifo_almost_full) begin
					r_inst_valid <= 1'b1;
				end else begin
					r_inst_valid <= 1'b0;
				end
			end
		end else begin
			r_inst_valid <= 1'b0;
		end
	end
	r_inst_release_op <= inst_release_op;
	r_inst_release_dest <= inst_release_dest;
	r_inst_reduce <= inst_reduce;
	r_inst_accum_en <= inst_accum_en;
	r_inst_release <= inst_release;
	r_inst <= inst_fifo_odata;
	r_input_operands <= input_fifo_odata;
	r_reduction_operands <= reduction_fifo_odata;
	r_inst_accum_raddr <= inst_accum_raddr;
	
	rr_inst_release_op <= r_inst_release_op;
	rr_inst_release_dest <= r_inst_release_dest;
	rr_inst_reduce <= r_inst_reduce;
	rr_inst_accum_en <= r_inst_accum_en;
	rr_inst_release <= r_inst_release;
	rr_inst <= r_inst;
	rr_input_operands <= r_input_operands;
	rr_reduction_operands <= r_reduction_operands;
	rr_inst_accum_raddr <= r_inst_accum_raddr;
	rr_inst_valid <= r_inst_valid;
end

// MVM output FIFO
fifo # (
	.DATAW(1 + NODESW + DATAW + 1),
	.DEPTH(FIFOD),
	.ALMOST_FULL_DEPTH(FIFOD-13)
) output_data_fifo (
	.clk(clk),
	.rst(rst),
	.push(datapath_ovalid[0]),
	.idata({datapath_op, datapath_dest, truncated_datapath_results, axis_rx_tlast}),
	.pop(axis_tx_tready && !output_fifo_empty),
	.odata({output_fifo_oop, output_fifo_odest, output_fifo_odata, last_dword_s}),
	.empty(output_fifo_empty),
	.full(output_fifo_full),
	.almost_full(output_fifo_almost_full)
);

assign axis_rx_tready = rxtready;
assign axis_tx_tvalid = !output_fifo_empty;
assign axis_tx_tdata = output_fifo_odata;
assign axis_tx_tdest = output_fifo_odest;
assign axis_tx_tid = 0;
assign axis_tx_tuser = {64'h0, tx_tuser_op, 9'h0}; // Send tuser field as either input or reduction vector

// Hook up rest of Tx signals to dummy values to avoid optimizing them out
assign axis_tx_tstrb = output_fifo_odata[BYTEW-1:0];
assign axis_tx_tkeep = output_fifo_odata[2*BYTEW-1:BYTEW];
assign axis_tx_tlast = last_dword_s;

endmodule

// -------------------------------------------------------
// FIFO
// -------------------------------------------------------
/**
FIFO Module
A peek FIFO implementation

Parameters:
DATAW: Width of data word
DEPTH: Depth of the FIFO
ADDRW: Width of FIFO address for pointer use
ALMOST_FULL_DEPTH: Depth of the FIFO at which the almost_full signal is asserted

Inputs:
push: Signal to push data to the FIFO
idata: Input Data
pop: Siginal to pop data from the FIFO

Outputs:
odata: Output Data
empty: Signal asserted when FIFO is empty
full: Signal asserted when FIFO is full
almost_full: Signal asserted when FIFO is almost full defined by ALMOST_FULL_DEPTH
**/
module fifo # (
	parameter DATAW = 64,
	parameter DEPTH = 128,
	parameter ADDRW = $clog2(DEPTH),
	parameter ALMOST_FULL_DEPTH = DEPTH
)(
	input  clk,
	input  rst,
	input  push,
	input  [DATAW-1:0] idata,
	input  pop,
	output [DATAW-1:0] odata,
	output empty,
	output full,
	output almost_full
);

reg [DATAW-1:0] mem [0:DEPTH-1];
reg [ADDRW-1:0] head_ptr, tail_ptr;
reg [ADDRW:0] remaining;

always @ (posedge clk) begin
	if (rst) begin
		head_ptr <= 0;
		tail_ptr <= 0;
		remaining <= DEPTH;
	end else begin
		if (!full && push) begin
			mem[tail_ptr] <= idata;
			tail_ptr <= tail_ptr + 1'b1;
		end
		
		if (!empty && pop)  begin
			head_ptr <= head_ptr + 1'b1;
		end
		
		if (!empty && pop && !full && push) begin
			remaining <= remaining;
		end else if (!empty && pop) begin
			remaining <= remaining + 1'b1;
		end else if (!full && push) begin
			remaining <= remaining - 1'b1;
		end else begin
			remaining <= remaining;
		end
	end
end

assign empty = (tail_ptr == head_ptr);
assign full = (tail_ptr + 1'b1 == head_ptr);
assign odata = mem[head_ptr];
assign almost_full = (remaining < (DEPTH - ALMOST_FULL_DEPTH));

endmodule

// -------------------------------------------------------
// Pipeline
// -------------------------------------------------------

/**
Pipeline Module
Convenient module to specify register delays

Parameters:
DELAY: Number of Registers to delay data_in by
WIDTH: Width of data

Inputs:
data_in: The data to be delayed

Outputs:
data_out: The data after the pipelined delay
**/

module pipeline # (
	parameter DELAY = 1,
	parameter WIDTH = 32
)(
	input  clk,
	input  rst,
	input  [WIDTH-1:0] data_in,
	output [WIDTH-1:0] data_out
);

reg [WIDTH-1:0] r_pipeline [0:DELAY-1]; 

integer i;
always @ (posedge clk) begin
	if (rst) begin
		for (i = 0; i < DELAY; i = i + 1) begin
			r_pipeline[i] <= 0;
		end
	end else begin
		r_pipeline[0] <= data_in;
		for (i = 1; i < DELAY; i = i + 1) begin
			r_pipeline[i] <= r_pipeline[i-1];
		end
	end
end

assign data_out = r_pipeline[DELAY-1];

endmodule

// -------------------------------------------------------
// Memory Block
// -------------------------------------------------------

module memory_block # (
    parameter DATAW = 128,
    parameter DEPTH = 64,
    parameter ADDRW = $clog2(DEPTH),
    // Use -1 to indicate no hardcoded init; 0 or 1 for the two hardcoded alternatives
    parameter int WEIGHTS_INIT_SEL = -1  
)(
    input  logic                 clk,
    input  logic                 rst,
    input  logic [ADDRW-1:0]     waddr,
    input  logic                 wen,
    input  logic [DATAW-1:0]     wdata,
    input  logic [ADDRW-1:0]     raddr,
    output logic [DATAW-1:0]     rdata
);

    // Internal memory array
    logic [DATAW-1:0] mem [0:DEPTH-1];

    // hardcodes initializations 
    localparam logic [DATAW-1:0] MEM_INIT_0_VALUE = 128'h01010101010101010101010101010101; // mem 0_1
    localparam logic [DATAW-1:0] MEM_INIT_1_VALUE = 128'h00010001000100010001000100010001; // mem 1_0

    generate
        if (WEIGHTS_INIT_SEL == 0) begin : init_mem0
            initial begin
                for (int i = 0; i < DEPTH; i++) begin
                    mem[i] = MEM_INIT_0_VALUE;
                end
            end
        end else if (WEIGHTS_INIT_SEL == 1) begin : init_mem1
            initial begin
                for (int i = 0; i < DEPTH; i++) begin
                    mem[i] = MEM_INIT_1_VALUE;
                end
            end
        end
        // no iniyt for  WEIGHTS_INIT_SEL = -1
    endgenerate

    // synchronous read and write
    always_ff @(posedge clk) begin
        if (rst) begin
            rdata <= '0;
        end else begin
            rdata <= mem[raddr];
            if (wen) begin
                mem[waddr] <= wdata;
            end
        end
    end

endmodule

// -------------------------------------------------------
// Datapath
// -------------------------------------------------------
/**
Datapath Module
Facilitates the workflow of data for a singular DPE of the MVM module

Parameters:
LANES: The number of elements each DPE can handle at once (Max number of elements in a subset of the input vector)
DATAW: Bit width of data
IPREC: Precision of elements in reduction vector
OPREC: Precision of elements in output vector
MEM_DEPTH: Depth of the accumulation memory
ADDRW: Width of the memory address used for accumulation

Inputs:
i_valid: Valid signal for all data
i_dataa: Vector data
i_datab: Weight data
i_datac: Reduce data
i_accum_addr: Accumulation memory address
i_accum: Enable signal for accumulation
i_last: The last subset in the input vector. (Release)
i_reduce: Enable signal for reduction

Outputs:
o_valid: Valid signal for output result
o_result: Result
**/
module datapath # (
	parameter LANES = 64,
	parameter DATAW = 512,
	parameter IPREC = 8,
	parameter OPREC = 32,
	parameter MEM_DEPTH = 512,
	parameter ADDRW = $clog2(MEM_DEPTH)
)(
	input              	clk,
	input              	rst,
	input              	i_valid,
	input  [DATAW-1:0]	i_dataa,
	input  [DATAW-1:0]	i_datab,
	input  [IPREC-1:0] 	i_datac,
	input  [ADDRW-1:0] 	i_accum_addr,
	input              	i_accum,
	input              	i_last,
	input              	i_reduce,
	output             	o_valid,
	output [OPREC-1:0] 	o_result
);

localparam DPE_LATENCY = 6;
localparam ACCUM_LATENCY = 3;

wire dpe_valid, dpe_accum, dpe_last, accum_valid, accum_reduce;
wire [OPREC-1:0] dpe_result, accum_result;
wire [IPREC-1:0] accum_datac;
wire [ADDRW-1:0] dpe_accum_addr;

pipeline # (
	.DELAY(DPE_LATENCY),
	.WIDTH(ADDRW+2)
) dpe_pipeline (
	.clk(clk),
	.rst(rst),
	.data_in({i_accum_addr, i_accum, i_last}),
	.data_out({dpe_accum_addr, dpe_accum, dpe_last})
);

pipeline # (
	.DELAY(DPE_LATENCY+ACCUM_LATENCY),
	.WIDTH(IPREC+1)
) accum_pipeline (
	.clk(clk),
	.rst(rst),
	.data_in({i_datac, i_reduce}),
	.data_out({accum_datac, accum_reduce})
);

dpe # (
	.LANES(LANES),
	.DATAW(DATAW),
	.IPREC(IPREC),
	.OPREC(OPREC)
) dpe_inst (
	.clk(clk),
	.rst(rst),
	.i_valid(i_valid),
	.i_dataa(i_dataa),
	.i_datab(i_datab),
	.o_valid(dpe_valid),
	.o_result(dpe_result)
);

accum # (
	.DATAW(OPREC),
	.DEPTH(MEM_DEPTH),
	.ADDRW(ADDRW)
) accum_inst (
	.clk(clk),
	.rst(rst),
	.i_valid(dpe_valid),
	.i_data(dpe_result),
	.i_addr(dpe_accum_addr),
	.i_accum(dpe_accum),
	.i_last(dpe_last),
	.o_valid(accum_valid),
	.o_result(accum_result)
);

reduce # (
	.IPREC(IPREC),
	.OPREC(OPREC)
) reduce_inst (
	.clk(clk),
	.rst(rst),
	.i_valid(accum_valid),
	.i_dataa(accum_result),
	.i_datab(accum_datac),
	.i_reduce(accum_reduce),
	.o_valid(o_valid),
	.o_result(o_result)
);

endmodule

// -------------------------------------------------------
// DPE
// -------------------------------------------------------
/**
Dot Product Engine Module
Performs a dot product calculation for two vectors

Parameters:
LANES: The number of elements the DPE can handle at once (Max number of elements in a subset of the input vector)
DATAW: Bit width of data
IPREC: Precision of elements in inputs to DPE
MPREC: Precision after multiplication
OPREC: Precision of elements in outputs from DPE
ADDER_STAGES: Number of stages required for hierarchical adding

Inputs:
i_valid: Valid signal for all data
i_dataa: Vector data
i_datab: Vector data

Outputs:
o_valid: Valid signal for output result
o_result: Result
**/
module dpe # (
	parameter LANES = 16,
	parameter DATAW = 512,
	parameter IPREC = 8,
	parameter MPREC = 2 * IPREC,
	parameter OPREC = 32
)(
	input              clk,
	input              rst,
	input              i_valid,
	input  [DATAW-1:0] i_dataa,
	input  [DATAW-1:0] i_datab,
	output             o_valid,
	output [OPREC-1:0] o_result
);

localparam ADDER_STAGES = $clog2(LANES);

// Input registers
wire signed [IPREC-1:0] dataa [0:LANES-1];
wire signed [IPREC-1:0] datab [0:LANES-1];
reg signed [IPREC-1:0] r_dataa [0:LANES-1];
reg signed [IPREC-1:0] r_datab [0:LANES-1];
reg r_ivalid;

// Multiplication registers
reg signed [MPREC-1:0] r_mrslt [0:LANES-1];
reg r_mvalid;

// Adder tree registers
reg signed [OPREC-1:0] r_arslt_s1 [0:31];
reg signed [OPREC-1:0] r_arslt_s2 [0:15];
reg signed [OPREC-1:0] r_arslt_s3 [0:7];
reg signed [OPREC-1:0] r_arslt_s4 [0:3];
reg signed [OPREC-1:0] r_arslt_s5 [0:1];
reg signed [OPREC-1:0] r_arslt_s6;
reg r_avalid [0:ADDER_STAGES-1];

genvar j;
generate
for (j = 0; j < LANES; j = j + 1) begin: split_input
	assign dataa[j] = i_dataa[(j+1)*IPREC-1:j*IPREC];
	assign datab[j] = i_datab[(j+1)*IPREC-1:j*IPREC];
end
endgenerate

integer i;
always @ (posedge clk) begin
	if (rst) begin
		for (i = 0; i < LANES; i = i + 1) begin
			r_mrslt[i] <= 'd0;
			r_dataa[i] <= 'd0;
			r_datab[i] <= 'd0;
		end
		r_ivalid <= 1'b0;
		r_mvalid <= 1'b0;
		for (i = 0; i < 32; i = i + 1) r_arslt_s1[i] <= 'd0;
		for (i = 0; i < 16; i = i + 1) r_arslt_s2[i] <= 'd0;
		for (i = 0; i <  8; i = i + 1) r_arslt_s3[i] <= 'd0;
		for (i = 0; i <  4; i = i + 1) r_arslt_s4[i] <= 'd0;
		for (i = 0; i <  2; i = i + 1) r_arslt_s5[i] <= 'd0;
		r_arslt_s6 <= 'd0;
		for (i = 0; i < ADDER_STAGES; i = i + 1) begin
			r_avalid[i] <= 1'b0;
		end
	end else begin
		// Register inputs
		for (i = 0; i < LANES; i = i + 1) begin
			r_dataa[i] <= dataa[i];
			r_datab[i] <= datab[i];
		end
		r_ivalid <= i_valid;
		
		// Perform multiplication
		for (i = 0; i < LANES; i = i + 1) begin
			r_mrslt[i] <= r_dataa[i] * r_datab[i];
		end
		r_mvalid <= r_ivalid;
		
		// Register adder tree
//		for (i = 0; i < 32; i = i + 1) r_arslt_s1[i] <= r_mrslt[i] + r_mrslt[32+i];
//		for (i = 0; i < 16; i = i + 1) r_arslt_s2[i] <= r_arslt_s1[i] + r_arslt_s1[16+i];
//		for (i = 0; i <  8; i = i + 1) r_arslt_s3[i] <= r_arslt_s2[i] + r_arslt_s2[ 8+i];
        for (i = 0; i <  8; i = i + 1) r_arslt_s3[i] <= r_mrslt[i] + r_mrslt[8+i];
		for (i = 0; i <  4; i = i + 1) r_arslt_s4[i] <= r_arslt_s3[i] + r_arslt_s3[ 4+i];
		for (i = 0; i <  2; i = i + 1) r_arslt_s5[i] <= r_arslt_s4[i] + r_arslt_s4[ 2+i];
		r_arslt_s6 <= r_arslt_s5[0] + r_arslt_s5[1];
		r_avalid[0] <= r_mvalid;
		for (i = 1; i < ADDER_STAGES; i = i + 1) begin
			r_avalid[i] <= r_avalid[i-1];
		end
	end
end

assign o_result = r_arslt_s6;
assign o_valid  = r_avalid[ADDER_STAGES-1]; 

endmodule


// -------------------------------------------------------
// Accumulator
// -------------------------------------------------------

/**
Accumulator Module
Responsible for accumulating sums from previous subset vectors the MVM processed as part of one input vector. Independent of each DPE.

Inputs:
i_valid: The data in is valid
i_data: The data
i_addr: The address in the accum_mem to write/read to
i_last: The last subset in the input vector. Required for o_valid to be propagated as true.

Outputs:
o_valid: The result out is valid
o_result: The result
**/

module accum # (
	parameter DATAW = 32,
	parameter DEPTH = 512,
	parameter ADDRW = $clog2(DEPTH)
)(
	input              clk,
	input              rst,
	input              i_valid,
	input  [DATAW-1:0] i_data,
	input  [ADDRW-1:0] i_addr,
	input              i_accum,
	input              i_last,
	output             o_valid,
	output [DATAW-1:0] o_result
);

reg [ADDRW-1:0] accum_mem_waddr;
reg [DATAW-1:0] accum_mem_wdata;
wire [DATAW-1:0] accum_mem_rdata;
reg accum_mem_wen;

reg r_accum, rr_accum, r_valid, rr_valid, rrr_valid, r_last, rr_last;
reg [ADDRW-1:0] r_addr, rr_addr;
reg [DATAW-1:0] r_data, rr_data, r_result;

memory_block # (
	.DATAW(DATAW),
	.DEPTH(DEPTH),
	.ADDRW(ADDRW)
) accum_mem (
	.clk(clk),
	.rst(rst),
	.waddr(accum_mem_waddr),
	.wen(accum_mem_wen),
	.wdata(r_result),
	.raddr(i_addr),
	.rdata(accum_mem_rdata)
);

always @ (posedge clk) begin
	if (rst) begin
		r_accum <= 1'b0; rr_accum <= 1'b0;
		r_valid <= 1'b0; rr_valid <= 1'b0; rrr_valid <= 1'b0;
		r_addr <= 'd0; rr_addr <= 'd0;
		r_data <= 'd0; rr_data <= 'd0;
		r_last <= 1'b0; rr_last <= 1'b0;
		accum_mem_wen <= 1'b0;
		accum_mem_waddr <= 'd0;
	end else begin
		// Pipeline inputs to align with memory output
		r_accum  <= i_accum;
		rr_accum <= r_accum;
		r_addr   <= i_addr;
		rr_addr  <= r_addr;
		r_valid  <= i_valid;
		rr_valid <= r_valid;
		r_last   <= i_last;
		rr_last  <= r_last;
		r_data   <= i_data;
		rr_data  <= r_data;
		
		// Perform accumulation
		if (rr_valid && rr_accum) begin
			r_result <= rr_data + accum_mem_rdata;
			accum_mem_wen <= 1'b1;
		end else if (rr_valid) begin
			r_result <= rr_data;
			accum_mem_wen <= 1'b1;
		end else begin
			accum_mem_wen <= 1'b0;
		end
		accum_mem_waddr <= rr_addr;
		rrr_valid <= rr_last && rr_valid;
	end
end

assign o_valid = rrr_valid;
assign o_result = r_result;

endmodule

// -------------------------------------------------------
// Reduce
// -------------------------------------------------------

/**
Reduction Module
Reduce vectors from one MVM to another

Parameters:
IPREC: Precision of elements in reduction vector
OPREC: Precision of elements in output vector

Inputs:
i_valid: Valid signal for all data
i_dataa: Vector data from host MVM
i_datab: Reduction vector from other MVM on same layer
i_reduce: Enable signal for reduction

Outputs:
o_valid: Valid signal for output result
o_result: Result
**/
module reduce # (
	parameter IPREC = 8,
	parameter OPREC = 32
)(
	input              clk,
	input              rst,
	input              i_valid,
	input  [OPREC-1:0] i_dataa,
	input  [IPREC-1:0] i_datab,
	input              i_reduce,
	output             o_valid,
	output [OPREC-1:0] o_result
);

reg [OPREC-1:0] r_result;
reg r_valid;

always @ (posedge clk) begin
	if (rst) begin
		r_result <= 'd0;
		r_valid <= 1'b0;
	end else begin
		if (i_valid && i_reduce) begin
			r_result <= i_dataa + i_datab;
			r_valid <= 1'b1;
		end else if (i_valid) begin
			r_result <= i_dataa;
			r_valid <= 1'b1;
		end else begin
			r_valid <= 1'b0;
		end
	end
end

assign o_valid = r_valid;
assign o_result = r_result;

endmodule

// -------------------------------------------------------
//AXIS passthrough
// -------------------------------------------------------
module axis_passthrough #(
    parameter DATAW = 32,  // Data width
    parameter IDW   = 4,   // ID width
    parameter USERW = 4,   // User width
    parameter DESTW = 4    // Destination width
)(
    input   wire                  CLK,
    input   wire                  RST_N,

    // -------------------------------------------------------
    // AXI-Stream Slave Interface
    // -------------------------------------------------------
    input   wire                  AXIS_S_TVALID,
    output  logic                 AXIS_S_TREADY,
    input   wire    [ DATAW-1:0]  AXIS_S_TDATA,
    input   wire                  AXIS_S_TLAST,
    input   wire    [   IDW-1:0]  AXIS_S_TID,
    input   wire    [ USERW-1:0]  AXIS_S_TUSER,
    input   wire    [ DESTW-1:0]  AXIS_S_TDEST,

    // -------------------------------------------------------
    // AXI-Stream Master Interface
    // -------------------------------------------------------
    output  logic                 AXIS_M_TVALID,
    input   wire                  AXIS_M_TREADY,
    output  logic   [ DATAW-1:0]  AXIS_M_TDATA,
    output  logic                 AXIS_M_TLAST,
    output  logic   [   IDW-1:0]  AXIS_M_TID,
    output  logic   [ USERW-1:0]  AXIS_M_TUSER,
    output  logic   [ DESTW-1:0]  AXIS_M_TDEST
);

    // -------------------------------------------------------
    // Pass-through logic
    // -------------------------------------------------------
    always_ff @(posedge CLK or negedge RST_N) begin
        if (!RST_N) begin
            AXIS_M_TVALID <= 1'b0;
            AXIS_S_TREADY <= 1'b0;
            AXIS_M_TDATA  <= {DATAW{1'b0}};
            AXIS_M_TLAST  <= 1'b0;
            AXIS_M_TID    <= {IDW{1'b0}};
            AXIS_M_TUSER  <= {USERW{1'b0}};
            AXIS_M_TDEST  <= {DESTW{1'b0}};
        end else begin
            AXIS_M_TVALID <= AXIS_S_TVALID;
            AXIS_S_TREADY <= AXIS_M_TREADY;
            AXIS_M_TDATA  <= AXIS_S_TDATA;
            AXIS_M_TLAST  <= AXIS_S_TLAST;
            AXIS_M_TID    <= AXIS_S_TID;
            AXIS_M_TUSER  <= AXIS_S_TUSER;
            AXIS_M_TDEST  <= AXIS_S_TDEST;
        end
    end

endmodule