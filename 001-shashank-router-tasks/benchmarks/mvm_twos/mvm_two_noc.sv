
module mvm_two_noc #(
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
	parameter DATAPATH_DELAY = 10,
    parameter ROWS         = 2,
    parameter COLUMNS      = 2,
    parameter TDATAW       = DATAW + USERW,
    parameter TIDW         = 2,
    parameter TDESTW       = 4,
    parameter NUM_PACKETS  = 1,
    parameter HARD_LINK    = 1
) (
    input   wire                  CLK,
    input   wire                  CLK_NOC,
    input   wire                  RST_N,

    // -------------------------------------------------------
    // AXI-Stream Slave Interface
    // -------------------------------------------------------
    input   wire                 AXIS_S_TVALID,
    output  logic                AXIS_S_TREADY,
    input   wire    [DATAW-1:0]  AXIS_S_TDATA,
    input   wire                 AXIS_S_TLAST,
    input   wire    [IDW-1:0]    AXIS_S_TID,
    input   wire    [USERW-1:0]  AXIS_S_TUSER,
    input   wire    [DESTW-1:0]  AXIS_S_TDEST,

    // -------------------------------------------------------
    // AXI-Stream Master Interface
    // -------------------------------------------------------
    output  logic                 AXIS_M_TVALID,
    input   wire                  AXIS_M_TREADY,
    output  logic   [DATAW-1:0]   AXIS_M_TDATA,
    output  logic                 AXIS_M_TLAST,
    output  logic   [IDW-1:0]     AXIS_M_TID,
    output  logic   [USERW-1:0]   AXIS_M_TUSER,
    output  logic   [DESTW-1:0]   AXIS_M_TDEST

);
    // NoC parameters
    parameter SERIALIZATION_FACTOR = 1;
    parameter CLKCROSS_FACTOR = 1;
    parameter SINGLE_CLOCK = 1;
    parameter NUM_PORTS = 5;
    parameter ROUTE_WIDTH = $clog2(NUM_PORTS);
    parameter ROW_WIDTH = $clog2(ROWS);
    parameter COL_WIDTH = $clog2(COLUMNS);
    parameter RTR_ADDR_WIDTH = $clog2(ROWS) + $clog2(COLUMNS);

    localparam FLIT_WIDTH = TDATAW / SERIALIZATION_FACTOR / CLKCROSS_FACTOR;
    localparam DEST_WIDTH = TDESTW + TIDW;


    // -------------------------------------------------------
    // NoC Connections
    // -------------------------------------------------------
    //
    // NOTE: These names in/out are named for the directions 
    // in which they enter the noc. Not the MVMs they are 
    // connected to
    //
    // -------------------------------------------------------
   
    logic [0:ROWS-1][0:COLUMNS-1]             axis_in_tvalid  ;
    logic [0:ROWS-1][0:COLUMNS-1]             axis_in_tready  ;
    logic [0:ROWS-1][0:COLUMNS-1][ DATAW-1:0] axis_in_tdata   ;
    logic [0:ROWS-1][0:COLUMNS-1]             axis_in_tlast   ;
    logic [0:ROWS-1][0:COLUMNS-1][ USERW-1:0] axis_in_tuser   ;
    logic [0:ROWS-1][0:COLUMNS-1][ DESTW-1:0] axis_in_tdest   ;

    logic [0:ROWS-1][0:COLUMNS-1]             axis_out_tvalid ;
    logic [0:ROWS-1][0:COLUMNS-1]             axis_out_tready ;
    logic [0:ROWS-1][0:COLUMNS-1][ DATAW-1:0] axis_out_tdata  ;
    logic [0:ROWS-1][0:COLUMNS-1]             axis_out_tlast  ;
    logic [0:ROWS-1][0:COLUMNS-1][ USERW-1:0] axis_out_tuser  ;
    logic [0:ROWS-1][0:COLUMNS-1][ DESTW-1:0] axis_out_tdest  ;

    logic [0:ROWS-1][0:COLUMNS-1][TDATAW-1:0] mesh_in_tdata  ;
    logic [0:ROWS-1][0:COLUMNS-1][TDATAW-1:0] mesh_out_tdata ;
    logic [0:ROWS-1][0:COLUMNS-1][ USERW-1:0] mesh_out_tuser ;


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
        .AXIS_S_TVALID(axis_out_tvalid[ROWS-1][COLUMNS-1]),
        .AXIS_S_TREADY(axis_out_tready[ROWS-1][COLUMNS-1]),
        .AXIS_S_TDATA (axis_out_tdata[ROWS-1][COLUMNS-1]),
        .AXIS_S_TLAST (axis_out_tlast[ROWS-1][COLUMNS-1]),
        // .AXIS_S_TUSER (axis_out_tuser[1][1]),
        .AXIS_S_TDEST (axis_out_tdest[ROWS-1][COLUMNS-1]),
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
        
                if((i != 0 && j != 0)&&(i != ROWS-1 && j != COLUMNS-1)) begin
                    (* keep *)
                    mvm_twos #(
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
                        .RFDEPTH( RFDEPTH),
                        .RFADDRW(RFADDRW),
                        .INSTW(INSTW),
                        .INSTD(INSTD),
                        .INSTADDRW(INSTADDRW),
                        .AXIS_OPS(AXIS_OPS),
                        .AXIS_OPSW(AXIS_OPSW),
                        .FIFOD(FIFOD),
                        .USE_RELU(USE_RELU),
                        .DATAPATH_DELAY(DATAPATH_DELAY)
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
    // -------------------------------------------------------
    // mesh of router_Wrap modules

    // rtr-to-rtr ports
    logic    [0:ROWS-1][0:COLUMNS-1][0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]     internal_data_in     ;
    logic    [0:ROWS-1][0:COLUMNS-1][0:NUM_PORTS - 2][DEST_WIDTH - 1 : 0]     internal_dest_in     ;
    logic    [0:ROWS-1][0:COLUMNS-1][0:NUM_PORTS - 2]                         internal_is_tail_in  ;
    logic    [0:ROWS-1][0:COLUMNS-1][0:NUM_PORTS - 2]                         internal_send_in     ;
    logic    [0:ROWS-1][0:COLUMNS-1][0:NUM_PORTS - 2]                         internal_credit_out  ;
    logic    [0:ROWS-1][0:COLUMNS-1][0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]     internal_data_out    ;
    logic    [0:ROWS-1][0:COLUMNS-1][0:NUM_PORTS - 2][DEST_WIDTH - 1 : 0]     internal_dest_out    ;
    logic    [0:ROWS-1][0:COLUMNS-1][0:NUM_PORTS - 2]                         internal_is_tail_out ;
    logic    [0:ROWS-1][0:COLUMNS-1][0:NUM_PORTS - 2]                         internal_send_out    ;
    logic    [0:ROWS-1][0:COLUMNS-1][0:NUM_PORTS - 2]                         internal_credit_in   ;

    logic [0:ROWS-1][0:COLUMNS-1][RTR_ADDR_WIDTH - 1 : 0] router_address ;

    generate
        for (i = 0; i < ROWS; i = i + 1) begin : mesh_row_gen
            for (j = 0; j < COLUMNS; j = j + 1) begin : mesh_col_gen
                assign router_address[i][j][RTR_ADDR_WIDTH-1:COL_WIDTH] = i;
                assign router_address[i][j][COL_WIDTH-1:0] = j;

                (* keep *)
                router_wrap #(
                    .NUM_PORTS                  (5), 
                    .TID_WIDTH                  (TIDW),
                    .TDEST_WIDTH                (TDESTW),
                    .TDATA_WIDTH                (TDATAW),
                    .SERIALIZATION_FACTOR       (SERIALIZATION_FACTOR),
                    .CLKCROSS_FACTOR            (CLKCROSS_FACTOR),
                    .SINGLE_CLOCK               (SINGLE_CLOCK),
                    .FLIT_WIDTH                 (FLIT_WIDTH),
                    .DEST_WIDTH                 (DEST_WIDTH),

                    .ROUTE_WIDTH                (ROUTE_WIDTH),
                    .RTR_ADDR_WIDTH             (RTR_ADDR_WIDTH)
                ) router_inst (
                    .clk_noc         (CLK_NOC),
                    .clk_usr         (CLK),
                    .rst_n           (RST_N),

                    .axis_in_tvalid  (axis_in_tvalid[i][j]),
                    .axis_in_tready  (axis_in_tready[i][j]),
                    .axis_in_tdata   (mesh_in_tdata[i][j]),
                    .axis_in_tlast   (axis_in_tlast[i][j]),
                    .axis_in_tdest   (axis_in_tdest[i][j]),

                    .axis_out_tvalid (axis_out_tvalid[i][j]),
                    .axis_out_tready (axis_out_tready[i][j]),
                    .axis_out_tdata  (mesh_out_tdata[i][j]),
                    .axis_out_tlast  (axis_out_tlast[i][j]),
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

                    // .DISABLE_TURNS(),
                    .router_address( router_address[i][j] )
                );
            end
        end
    endgenerate

    // router to router connections
    generate
    if (HARD_LINK) begin
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
    end
    endgenerate

endmodule