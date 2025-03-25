module mvm_twos_network (
    input   wire                  CLK,
    input   wire                  CLK_NOC,
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

    // Update parameters for 4x4 mesh
    localparam ROWS = 4;
    localparam COLUMNS = 4;

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

    // Module Instantiations
    // Generate axis_passthrough for [0][0] input
    axis_passthrough #(
        .DATAW(DATAW),
        .IDW(IDW),
        .USERW(USERW),
        .DESTW(DESTW)
    ) axis_passthrough_input (
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

    // Generate axis_passthrough for output at [3][3]
    axis_passthrough #(
        .DATAW(DATAW),
        .IDW(IDW),
        .USERW(USERW),
        .DESTW(DESTW)
    ) axis_passthrough_output (
        .CLK(CLK),
        .RST_N(RST_N),
        .AXIS_S_TVALID(axis_out_tvalid[3][3]),
        .AXIS_S_TREADY(axis_out_tready[3][3]),
        .AXIS_S_TDATA(axis_out_tdata[3][3]),
        .AXIS_S_TLAST(axis_out_tlast[3][3]),
        .AXIS_S_TUSER(axis_out_tuser[3][3]),
        .AXIS_S_TDEST(axis_out_tdest[3][3]),
        .AXIS_M_TVALID(AXIS_M_TVALID),
        .AXIS_M_TREADY(AXIS_M_TREADY),
        .AXIS_M_TDATA(AXIS_M_TDATA),
        .AXIS_M_TLAST(AXIS_M_TLAST),
        .AXIS_M_TUSER(AXIS_M_TUSER),
        .AXIS_M_TDEST(AXIS_M_TDEST)
    );

    // Generate mvm_twos instances for all positions
    generate
        for (i = 0; i < ROWS; i = i + 1) begin : NUM_ROWS
            for (j = 0; j < COLUMNS; j = j + 1) begin : NUM_COLUMNS
                mvm_twos #(
                    .DATAW(DATAW),
                    .IDW(IDW),
                    .USERW(USERW),
                    .DESTW(DESTW)
                ) mvm_inst (
                    .CLK(CLK),
                    .RST_N(RST_N),
                    .AXIS_S_TVALID(axis_out_tvalid[i][j]),
                    .AXIS_S_TREADY(axis_out_tready[i][j]),
                    .AXIS_S_TDATA(axis_out_tdata[i][j]),
                    .AXIS_S_TLAST(axis_out_tlast[i][j]),
                    .AXIS_S_TID(axis_out_tid[i][j]),      // Assuming TID is needed
                    .AXIS_S_TUSER(axis_out_tuser[i][j]),
                    .AXIS_S_TDEST(axis_out_tdest[i][j]),
                    .AXIS_M_TVALID(axis_in_tvalid[i][j]),
                    .AXIS_M_TREADY(axis_in_tready[i][j]),
                    .AXIS_M_TDATA(axis_in_tdata[i][j]),
                    .AXIS_M_TLAST(axis_in_tlast[i][j]),
                    .AXIS_M_TID(axis_in_tid[i][j]),       // Assuming TID is needed
                    .AXIS_M_TUSER(axis_in_tuser[i][j]),
                    .AXIS_M_TDEST(axis_in_tdest[i][j])
                );
            end
        end
    endgenerate

    // Mesh of router_wrap modules - update turn prohibition for 4x4
    generate
        for (i = 0; i < ROWS; i = i + 1) begin : mesh_row_gen
            for (j = 0; j < COLUMNS; j = j + 1) begin : mesh_col_gen
                // Updated turn prohibition matrix for 4x4 mesh
                bit DISABLE_TURNS[5][5] = 
                    (i == 0 && j == 0) ? '{           // Top-Left corner
                        '{1, 1, 0, 0, 1},  // Local
                        '{0, 1, 0, 0, 1},  // North (unused)
                        '{0, 1, 1, 1, 1},  // South
                        '{0, 1, 0, 1, 1},  // East
                        '{0, 1, 0, 0, 1}   // West (unused)
                    } : (i == 0 && j == 3) ? '{       // Top-Right corner
                        '{1, 1, 0, 1, 0},  // Local
                        '{0, 1, 0, 1, 0},  // North (unused)
                        '{0, 1, 1, 1, 1},  // South
                        '{0, 1, 0, 1, 0},  // East (unused)
                        '{0, 1, 0, 1, 1}   // West
                    } : (i == 3 && j == 0) ? '{       // Bottom-Left corner
                        '{1, 0, 1, 0, 1},  // Local
                        '{0, 1, 0, 1, 1},  // North
                        '{0, 0, 1, 0, 1},  // South (unused)
                        '{0, 0, 0, 1, 1},  // East
                        '{0, 0, 0, 0, 1}   // West (unused)
                    } : (i == 3 && j == 3) ? '{       // Bottom-Right corner
                        '{1, 0, 1, 1, 0},  // Local
                        '{0, 1, 0, 1, 1},  // North
                        '{0, 0, 1, 1, 0},  // South (unused)
                        '{0, 0, 0, 1, 0},  // East (unused)
                        '{0, 0, 1, 1, 1}   // West
                    } : (i == 0) ? '{                 // Top edge (not corners)
                        '{1, 1, 0, 1, 0},  // Local
                        '{0, 1, 0, 1, 0},  // North (unused)
                        '{0, 1, 1, 1, 1},  // South
                        '{0, 1, 0, 1, 1},  // East
                        '{0, 1, 0, 1, 1}   // West
                    } : (i == 3) ? '{                 // Bottom edge (not corners)
                        '{1, 0, 1, 1, 0},  // Local
                        '{0, 1, 0, 1, 1},  // North
                        '{0, 0, 1, 1, 0},  // South (unused)
                        '{0, 0, 0, 1, 1},  // East
                        '{0, 0, 1, 1, 1}   // West
                    } : (j == 0) ? '{                 // Left edge (not corners)
                        '{1, 0, 1, 0, 1},  // Local
                        '{0, 1, 0, 1, 1},  // North
                        '{0, 0, 1, 1, 1},  // South
                        '{0, 0, 0, 1, 1},  // East
                        '{0, 0, 0, 0, 1}   // West (unused)
                    } : (j == 3) ? '{                 // Right edge (not corners)
                        '{1, 0, 1, 1, 0},  // Local
                        '{0, 1, 0, 1, 1},  // North
                        '{0, 0, 1, 1, 1},  // South
                        '{0, 0, 0, 1, 0},  // East (unused)
                        '{0, 0, 1, 1, 1}   // West
                    } : '{                            // Interior nodes
                        '{1, 0, 1, 1, 0},  // Local
                        '{0, 1, 0, 1, 1},  // North
                        '{0, 0, 1, 1, 1},  // South
                        '{0, 0, 0, 1, 1},  // East
                        '{0, 0, 1, 1, 1}   // West
                    };

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
                    .DISABLE_TURNS(DISABLE_TURNS),

                    .router_address( router_address[i][j] )
                );
            end
        end
    endgenerate

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