`include "/mnt/vault1/rsunketa/mlp_accelerator/mlp_controller/parameters.sv"

module mvm_noc (

    input   wire                  CLK,
    input   wire                  CLK_NOC,
    input   wire                  RST_N,

    // -------------------------------------------------------
    // AXI-Stream Slave Interface
    // -------------------------------------------------------
    input   wire                  AXIS_S_TVALID,
    output  logic                 AXIS_S_TREADY,
    input   wire    [ 31:0]  AXIS_S_TDATA,
    input   wire                  AXIS_S_TLAST,
    input   wire    [   3:0]  AXIS_S_TID,
    input   wire    [ 31:0]  AXIS_S_TUSER,
    input   wire    [ 31:0]  AXIS_S_TDEST,

    // -------------------------------------------------------
    // AXI-Stream Master Interface
    // -------------------------------------------------------
    output  logic                 AXIS_M_TVALID,
    input   wire                  AXIS_M_TREADY,
    output  logic   [ 31:0]  AXIS_M_TDATA,
    output  logic                 AXIS_M_TLAST,
    output  logic   [  3:0]  AXIS_M_TID,
    output  logic   [ 31 :0]  AXIS_M_TUSER,
    output  logic   [ 11:0]  AXIS_M_TDEST

);

    // -------------------------------------------------------
    // NoC Connections
    // -------------------------------------------------------
    //
    // NOTE: These names in/out are named for the directions 
    // in which they enter the noc. Not the MVMs they are 
    // connected to
    //
    // -------------------------------------------------------
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

   
    logic              axis_in_tvalid;
    logic [ROWS-1:0][COLUMNS-1:0]             axis_in_tready  ;
    logic [ DATAW-1:0] [ROWS-1:0][COLUMNS-1:0] axis_in_tdata;
    logic [ROWS-1:0][COLUMNS-1:0]              axis_in_tlast   ;
    logic [ USERW-1:0][ROWS-1:0][COLUMNS-1:0]  axis_in_tuser   ;
    logic [ DESTW-1:0][ROWS-1:0][COLUMNS-1:0]  axis_in_tdest   ;

    logic [ROWS-1:0][COLUMNS-1:0]              axis_out_tvalid ;
    logic [ROWS-1:0][COLUMNS-1:0]               axis_out_tready ;
    logic [ DATAW-1:0] [ROWS-1:0][COLUMNS-1:0]  axis_out_tdata  ;
    logic [ROWS-1:0][COLUMNS-1:0]               axis_out_tlast  ;
    logic [ROWS-1:0][COLUMNS-1:0][ USERW-1:0]   axis_out_tuser  ;
    logic [ DESTW-1:0][ROWS-1:0][COLUMNS-1:0]   axis_out_tdest  ;

    logic [TDATAW-1:0][ROWS-1:0][COLUMNS-1:0]  mesh_in_tdata   ;
    logic [TDATAW-1:0][ROWS-1:0][COLUMNS-1:0]  mesh_out_tdata  ;
    logic [ USERW-1:0][ROWS-1:0][COLUMNS-1:0]  mesh_out_tuser  ;

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

                        if((i != 0 && j != 1)&&(i != ROWS-1 && j != COLUMNS-1)) begin
                            (* keep *)
                            mvm_twos #(
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
                        end
            end
        end
    endgenerate

	// localparam string ROUTING_TABLE_PREFIX = "/mnt/vault1/rsunketa/noc/routing_tables/mesh_2x2/";
	// parameter string routing_table = $sformatf("%s%0d_%0d.hex", ROUTING_TABLE_PREFIX, i, j);

    // -------------------------------------------------------
    // mesh of router_Wrap modules
    // -------------------------------------------------------
    parameter TDATAW_NOC = 256;
    parameter SERIALIZATION_FACTOR = 1;
    parameter CLKCROSS_FACTOR = 1;
    localparam FLIT_WIDTH = TDATAW_NOC / SERIALIZATION_FACTOR / CLKCROSS_FACTOR;
    localparam DEST_WIDTH = TDESTW + TIDW;
    parameter NUM_PORTS = 5;
    parameter ROUTE_WIDTH = $clog2(NUM_PORTS);
    parameter ROW_WIDTH = $clog2(ROWS);
    parameter COL_WIDTH = $clog2(COLUMNS);
    parameter RTR_ADDR_WIDTH = $clog2(ROWS) + $clog2(COLUMNS);
    // parameter RTR_ADDR_WIDTH = $clog2(ROWS) + $clog2(COLUMNS);
    // rtr-to-rtr port

// -------------------------------------------------------
    // mesh of router_Wrap modules
    // -------------------------------------------------------
    parameter TDATAW_NOC = 256;
    parameter SERIALIZATION_FACTOR = 1;
    parameter CLKCROSS_FACTOR = 1;
    localparam FLIT_WIDTH = TDATAW_NOC / SERIALIZATION_FACTOR / CLKCROSS_FACTOR;
    localparam DEST_WIDTH = TDESTW + TIDW;
    parameter NUM_PORTS = 5;
    parameter ROUTE_WIDTH = $clog2(NUM_PORTS);
    parameter ROW_WIDTH = $clog2(ROWS);
    parameter COL_WIDTH = $clog2(COLUMNS);
    parameter RTR_ADDR_WIDTH = $clog2(ROWS) + $clog2(COLUMNS);
    // parameter RTR_ADDR_WIDTH = $clog2(ROWS) + $clog2(COLUMNS);
    // rtr-to-rtr ports
    logic    [FLIT_WIDTH -1 : 0] [ROWS -1 : 0] [COLUMNS - 1 : 0]     internal_data_in  [NUM_PORTS - 1];
    logic    [DEST_WIDTH - 1 : 0] [ROWS -1 : 0] [COLUMNS - 1 : 0]    internal_dest_in  [NUM_PORTS - 1];
    logic    [ROWS -1 : 0] [COLUMNS - 1 : 0]                         internal_is_tail_in [NUM_PORTS - 1];
    logic    [ROWS -1 : 0] [COLUMNS - 1 : 0]                        internal_send_in    [NUM_PORTS - 1];
    logic    [ROWS -1 : 0] [COLUMNS - 1 : 0]                       internal_credit_out  [NUM_PORTS - 1];
    logic   [FLIT_WIDTH - 1 : 0]  [ROWS -1 : 0] [COLUMNS - 1 : 0]   internal_data_out  [NUM_PORTS - 1];
    logic   [DEST_WIDTH - 1 : 0]   [ROWS -1 : 0] [COLUMNS - 1 : 0]  internal_dest_out    [NUM_PORTS - 1];
    logic                          [ROWS -1 : 0] [COLUMNS - 1 : 0] internal_is_tail_out [NUM_PORTS - 1];
    logic                          [ROWS -1 : 0] [COLUMNS - 1 : 0] internal_send_out    [NUM_PORTS - 1];
    logic                          [ROWS -1 : 0] [COLUMNS - 1 : 0]  internal_credit_in  [NUM_PORTS - 1];

    logic [255:0] [ROWS -1 : 0] [COLUMNS - 1 : 0] mvm_noc_in_tdata_256;
    logic [255:0] [ROWS -1 : 0] [COLUMNS - 1 : 0] mvm_noc_out_tdata_256;

    logic [RTR_ADDR_WIDTH - 1 : 0] [ROWS -1 : 0] [COLUMNS - 1 : 0] router_address;



    generate
        for (i = 0; i < ROWS; i = i + 1) begin : mesh_row_gen
            for (j = 0; j < COLUMNS; j = j + 1) begin : mesh_col_gen

                    // Select appropriate turn prohibition matrix based on router position
            // bit DISABLE_TURNS[5][5] =
            //      (i == 0 && j == 0) ? '{  // Router [0,0] (Top-Left)
            //         '{1, 1, 0, 0, 1},  // From Local: disable to Local, North, West
            //         '{0, 1, 0, 0, 1},  // From North: disable to North, West (N is unused)
            //         '{0, 1, 1, 1, 1},  // From South: disable all except to Local (XY routing)
            //         '{0, 1, 0, 1, 1},  // From East: disable to North, East, West
            //         '{0, 1, 0, 0, 1}   // From West: disable to North, West (W is unused)
            //     } : (i == 0 && j == 1) ? '{  // Router [0,1] (Top-Right)
            //         '{1, 1, 0, 1, 0},  // From Local: disable to Local, North, East
            //         '{0, 1, 0, 1, 0},  // From North: disable to North, East (N is unused)
            //         '{0, 1, 1, 1, 1},  // From South: disable all except to Local (XY routing)
            //         '{0, 1, 0, 1, 0},  // From East: disable to North, East (E is unused)
            //         '{0, 1, 0, 1, 1}   // From West: disable to North, East, West
            //     } : (i == 1 && j == 0) ? '{  // Router [1,0] (Bottom-Left)
            //         '{1, 0, 1, 0, 1},  // From Local: disable to Local, South, West
            //         '{0, 1, 0, 1, 1},  // From North: disable all except to Local (XY routing)
            //         '{0, 0, 1, 0, 1},  // From South: disable to South, West (S is unused)
            //         '{0, 0, 0, 1, 1},  // From East: disable to South, East, West
            //         '{0, 0, 0, 0, 1}   // From West: disable to West (W is unused)
            //     } : '{  // Router [1,1] (Bottom-Right)
            //         '{1, 0, 1, 1, 0},  // From Local: disable to Local, South, East
            //         '{0, 1, 0, 1, 1},  // From North: disable all except to Local (XY routing)
            //         '{0, 0, 1, 1, 0},  // From South: disable to South, East (S is unused)
            //         '{0, 0, 0, 1, 0},  // From East: disable to East (E is unused)
            //         '{0, 0, 1, 1, 1}   // From West: disable to South, East, West
            //     } ;
                // mesh_indata and mesh_outdata are 203 bits wide
                assign mvm_noc_in_tdata_256[i][j] = { 53'b0,   mesh_in_tdata[i][j] };
				assign mesh_out_tdata[i][j] = mvm_noc_out_tdata_256[i][j][202:0];

                assign router_address[i][j][RTR_ADDR_WIDTH-1:COL_WIDTH] = i;
                assign router_address[i][j][COL_WIDTH-1:0] = j;

                (* keep *)
                router_wrap #(
                    // .RESET_SYNC_EXTEND_CYCLES   (2),
                    // .RESET_NUM_OUTPUT_REGISTERS (1),
					// .ROUTING_TABLE_HEX(routing_table),
					// .ROUTING_TABLE_HEX($sformatf("%s%0d_%0d.hex", "/mnt/vault1/rsunketa/mlp_accelerator/routing_tables/mesh_2x2/", i, j)),
                    .NUM_PORTS                  (5), // parameter compatibility; rtr-to-rtr ports unused
                    .TID_WIDTH                  (TIDW),
                    .TDEST_WIDTH                (TDESTW),
                    .TDATA_WIDTH                (TDATAW_NOC),
                    .SERIALIZATION_FACTOR       (SERIALIZATION_FACTOR),
                    .CLKCROSS_FACTOR            (CLKCROSS_FACTOR),
                    .SINGLE_CLOCK               (0),
                    .FLIT_WIDTH                 (FLIT_WIDTH),
                    .DEST_WIDTH                 (DEST_WIDTH),

                    .ROUTE_WIDTH                (ROUTE_WIDTH),
                    .RTR_ADDR_WIDTH             (RTR_ADDR_WIDTH)

    // parameter SERIALIZATION_FACTOR = 1,
    // parameter CLKCROSS_FACTOR = 1,
    // parameter bit SINGLE_CLOCK = 0,

    // parameter FLIT_WIDTH = TDATA_WIDTH / SERIALIZATION_FACTOR / CLKCROSS_FACTOR,
    // parameter DEST_WIDTH = TDEST_WIDTH + TID_WIDTH,
                ) router_inst (
                    .clk_noc         (CLK_NOC),
                    .clk_usr         (CLK),
                    .rst_n           (RST_N),

                    .axis_in_tvalid  (axis_in_tvalid[i][j]),
                    .axis_in_tready  (axis_in_tready[i][j]),
                    // .axis_in_tdata   (mesh_in_tdata[i][j]),
                    .axis_in_tdata   (mvm_noc_in_tdata_256[i][j]),

                    .axis_in_tlast   (axis_in_tlast[i][j]),
                    // .axis_in_tid     (axis_in_tid[i][j]),
                    .axis_in_tdest   (axis_in_tdest[i][j]),

                    .axis_out_tvalid (axis_out_tvalid[i][j]),
                    .axis_out_tready (axis_out_tready[i][j]),
                    // .axis_out_tdata  (mesh_out_tdata[i][j]),
                    .axis_out_tdata  (mvm_noc_out_tdata_256[i][j]),

                    .axis_out_tlast  (axis_out_tlast[i][j]),
                    // .axis_out_tid    (axis_out_tid[i][j]),
                    .axis_out_tdest  (axis_out_tdest[i][j]),
                    
                    .data_in( internal_data_in[i][j] ) ,
                    .dest_in( internal_dest_in[i][j] ) ,
                    .is_tail_in( internal_is_tail_in[i][j] ) ,
                    .send_in( internal_send_in[i][j] ) ,
                    .credit_out( internal_credit_out[i][j] ) ,
                    .data_out( internal_data_out[i][j] ) ,
                    .dest_out( internal_dest_out[i][j] ) ,
                    .is_tail_out( internal_is_tail_out[i][j] ) ,
                    .send_out( internal_send_out[i][j] ) ,
                    .credit_in( internal_credit_in[i][j] ),
                    .DISABLE_TURNS(),

                    .router_address( router_address[i][j] )
                );
            end
        end
    endgenerate

    // router to router connections
    generate
        for (i = 0; i < ROWS; i = i + 1) begin : router_connect_row
            for (j = 0; j < COLUMNS; j = j + 1) begin : router_connect_col

                // Define port numbers - assuming standard NoC port mapping
                localparam NORTH = 1;
                localparam SOUTH = 2;
                localparam EAST = 3;
                localparam WEST = 4;

                // North connections
                if (i > 0) begin
                    // Router[i][j]'s NORTH port connects to Router[i-1][j]'s SOUTH port
                    assign internal_data_in[i][j][NORTH-1] = internal_data_out[i-1][j][SOUTH-1];
                    assign internal_dest_in[i][j][NORTH-1] = internal_dest_out[i-1][j][SOUTH-1];
                    assign internal_is_tail_in[i][j][NORTH-1] = internal_is_tail_out[i-1][j][SOUTH-1];
                    assign internal_send_in[i][j][NORTH-1] = internal_send_out[i-1][j][SOUTH-1];
                    assign internal_credit_in[i-1][j][SOUTH-1] = internal_credit_out[i][j][NORTH-1];
                end

                // South connections
                if (i < ROWS-1) begin
                    // Router[i][j]'s SOUTH port connects to Router[i+1][j]'s NORTH port
                    assign internal_data_in[i][j][SOUTH-1] = internal_data_out[i+1][j][NORTH-1];
                    assign internal_dest_in[i][j][SOUTH-1] = internal_dest_out[i+1][j][NORTH-1];
                    assign internal_is_tail_in[i][j][SOUTH-1] = internal_is_tail_out[i+1][j][NORTH-1];
                    assign internal_send_in[i][j][SOUTH-1] = internal_send_out[i+1][j][NORTH-1];
                    assign internal_credit_in[i+1][j][NORTH-1] = internal_credit_out[i][j][SOUTH-1];
                end

                // East connections
                if (j < COLUMNS-1) begin
                    // Router[i][j]'s EAST port connects to Router[i][j+1]'s WEST port
                    assign internal_data_in[i][j][EAST-1] = internal_data_out[i][j+1][WEST-1];
                    assign internal_dest_in[i][j][EAST-1] = internal_dest_out[i][j+1][WEST-1];
                    assign internal_is_tail_in[i][j][EAST-1] = internal_is_tail_out[i][j+1][WEST-1];
                    assign internal_send_in[i][j][EAST-1] = internal_send_out[i][j+1][WEST-1];
                    assign internal_credit_in[i][j+1][WEST-1] = internal_credit_out[i][j][EAST-1];
                end

                // West connections
                if (j > 0) begin
                    // Router[i][j]'s WEST port connects to Router[i][j-1]'s EAST port
                    assign internal_data_in[i][j][WEST-1] = internal_data_out[i][j-1][EAST-1];
                    assign internal_dest_in[i][j][WEST-1] = internal_dest_out[i][j-1][EAST-1];
                    assign internal_is_tail_in[i][j][WEST-1] = internal_is_tail_out[i][j-1][EAST-1];
                    assign internal_send_in[i][j][WEST-1] = internal_send_out[i][j-1][EAST-1];
                    assign internal_credit_in[i][j-1][EAST-1] = internal_credit_out[i][j][WEST-1];
                end

                // Tie off unused ports
                // North edge
                if (i == 0) begin
                    assign internal_data_in[i][j][NORTH-1] = '0;
                    assign internal_dest_in[i][j][NORTH-1] = '0;
                    assign internal_is_tail_in[i][j][NORTH-1] = '0;
                    assign internal_send_in[i][j][NORTH-1] = '0;
                    assign internal_credit_in[i][j][NORTH-1] = '1; // Always ready to receive
                end

                // South edge
                if (i == ROWS-1) begin
                    assign internal_data_in[i][j][SOUTH-1] = '0;
                    assign internal_dest_in[i][j][SOUTH-1] = '0;
                    assign internal_is_tail_in[i][j][SOUTH-1] = '0;
                    assign internal_send_in[i][j][SOUTH-1] = '0;
                    assign internal_credit_in[i][j][SOUTH-1] = '1; // Always ready to receive
                end

                // East edge
                if (j == COLUMNS-1) begin
                    assign internal_data_in[i][j][EAST-1] = '0;
                    assign internal_dest_in[i][j][EAST-1] = '0;
                    assign internal_is_tail_in[i][j][EAST-1] = '0;
                    assign internal_send_in[i][j][EAST-1] = '0;
                    assign internal_credit_in[i][j][EAST-1] = '1; // Always ready to receive
                end

                // West edge
                if (j == 0) begin
                    assign internal_data_in[i][j][WEST-1] = '0;
                    assign internal_dest_in[i][j][WEST-1] = '0;
                    assign internal_is_tail_in[i][j][WEST-1] = '0;
                    assign internal_send_in[i][j][WEST-1] = '0;
                    assign internal_credit_in[i][j][WEST-1] = '1; // Always ready to receive
                end
            end
        end
    endgenerate

endmodule