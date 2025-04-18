module noc_loaded #(
    parameter DATAW = 128,                   
    parameter BYTEW = 8,                  
    parameter IDW = 32,      
    parameter DESTW = 4,    
    parameter USERW = 32,
    parameter IPRECISION = 8,         
    parameter OPRECISION = 8,      
    parameter LANES = 4,         
    parameter DPES  = 4,       
    parameter NODES = 4,   
    parameter NODESW = 2,         
    parameter RFDEPTH = 64,       
    parameter RFADDRW = 6,              
    parameter INSTW = 32,           
    parameter INSTD = 64,                
    parameter INSTADDRW = 6,              
    parameter AXIS_OPS = 4,              
    parameter AXIS_OPSW = 2,               
    parameter FIFOD = 64,                  
    parameter USE_RELU = 1, 
    parameter DATAPATH_DELAY = 10,
    parameter TDATAW = 128,
    parameter TIDW = 2,
    parameter TDESTW = 4,
    parameter NUM_PACKETS = 1,
    parameter HARD_LINK = 0
) (
    input                  CLK,
    input                  CLK_NOC,
    input                  RST_N,

    // AXI-Stream Slave Interface
    input                 AXIS_S_TVALID,
    output                AXIS_S_TREADY,
    input    [DATAW-1:0]  AXIS_S_TDATA,
    input                 AXIS_S_TLAST,
    input    [IDW-1:0]    AXIS_S_TID,
    input    [USERW-1:0]  AXIS_S_TUSER,
    input    [DESTW-1:0]  AXIS_S_TDEST,

    // AXI-Stream Master Interface
    output                 AXIS_M_TVALID,
    input                  AXIS_M_TREADY,
    output   [DATAW-1:0]   AXIS_M_TDATA,
    output                 AXIS_M_TLAST,
    output   [IDW-1:0]     AXIS_M_TID,
    output   [USERW-1:0]   AXIS_M_TUSER,
    output   [DESTW-1:0]   AXIS_M_TDEST
);
    // NoC parameters
    // rows = 2 , cols=2  but consider 4x4 mesh for sizes 
    parameter SERIALIZATION_FACTOR = 1;
    parameter CLKCROSS_FACTOR = 1;
    parameter SINGLE_CLOCK = 1;
    parameter NUM_PORTS = 5;
    parameter ROUTE_WIDTH = 3;      // $clog2(NUM_PORTS)
    parameter ROW_WIDTH = 2;        // $clog2(ROWS)
    parameter COL_WIDTH = 2;        // $clog2(COLUMNS)
    parameter RTR_ADDR_WIDTH = 4;   // ROW_WIDTH + COL_WIDTH

    parameter FLIT_WIDTH = 64;
    parameter DEST_WIDTH = 4;


// 5routers    
    wire [4:0] axis_in_tvalid;
    wire [4:0] axis_in_tready;
    wire [5*DATAW-1:0] axis_in_tdata;
    wire [4:0] axis_in_tlast;
    wire [5*USERW-1:0] axis_in_tuser;
    wire [5*DESTW-1:0] axis_in_tdest;

    wire [4:0] axis_out_tvalid;
    wire [4:0] axis_out_tready;
    wire [5*DATAW-1:0] axis_out_tdata;
    wire [4:0] axis_out_tlast;
    wire [5*USERW-1:0] axis_out_tuser;
    wire [5*DESTW-1:0] axis_out_tdest;

    wire [5*TDATAW-1:0] mesh_in_tdata;
    wire [5*TDATAW-1:0] mesh_out_tdata;
    wire [5*RTR_ADDR_WIDTH-1:0] router_address;

// Define connection parameters
localparam NUM_CONNECTIONS = 4;  // Router 0 connects to 4 neighbors

// Create connection wires between routers
wire [NUM_CONNECTIONS-1:0][FLIT_WIDTH-1:0] rtr0_to_neighbor_data;
wire [NUM_CONNECTIONS-1:0][DEST_WIDTH-1:0] rtr0_to_neighbor_dest;
wire [NUM_CONNECTIONS-1:0]                 rtr0_to_neighbor_is_tail;
wire [NUM_CONNECTIONS-1:0]                 rtr0_to_neighbor_send;
wire [NUM_CONNECTIONS-1:0]                 rtr0_to_neighbor_credit;

wire [NUM_CONNECTIONS-1:0][FLIT_WIDTH-1:0] neighbor_to_rtr0_data;
wire [NUM_CONNECTIONS-1:0][DEST_WIDTH-1:0] neighbor_to_rtr0_dest;
wire [NUM_CONNECTIONS-1:0]                 neighbor_to_rtr0_is_tail;
wire [NUM_CONNECTIONS-1:0]                 neighbor_to_rtr0_send;
wire [NUM_CONNECTIONS-1:0]                 neighbor_to_rtr0_credit;

    assign router_address[0*RTR_ADDR_WIDTH + COL_WIDTH +: ROW_WIDTH] = 00;
    assign router_address[0*RTR_ADDR_WIDTH +: COL_WIDTH] = 00;

    assign router_address[1*RTR_ADDR_WIDTH + COL_WIDTH +: ROW_WIDTH] = 01;
    assign router_address[1*RTR_ADDR_WIDTH +: COL_WIDTH] = 00;

    assign router_address[2*RTR_ADDR_WIDTH + COL_WIDTH +: ROW_WIDTH] = 00;
    assign router_address[2*RTR_ADDR_WIDTH +: COL_WIDTH] = 01;

    assign router_address[3*RTR_ADDR_WIDTH + COL_WIDTH +: ROW_WIDTH] = 10;
    assign router_address[3*RTR_ADDR_WIDTH +: COL_WIDTH] = 00;

    assign router_address[4*RTR_ADDR_WIDTH + COL_WIDTH +: ROW_WIDTH] = 00;
    assign router_address[4*RTR_ADDR_WIDTH +: COL_WIDTH] = 10;


    assign AXIS_M_TVALID = axis_in_tvalid[0];          // Master's TX valid
    assign AXIS_M_TDATA = axis_in_tdata[0*DATAW +: DATAW]; // Master's TX data
    assign AXIS_M_TDEST = axis_in_tdest[0*DESTW +: DESTW]; // Master's TX dest
    assign AXIS_M_TLAST = 1'b0;                        // Not used by master
    assign AXIS_M_TID = {IDW{1'b0}};                   // Zero out unused
    assign AXIS_M_TUSER = {USERW{1'b0}};               // Zero out unused




// ==================== Router 1 ====================
wire [FLIT_WIDTH-1:0] n1_unused, s1_unused, e1_unused, w1_unused;
wire [DEST_WIDTH-1:0] n1d_unused, s1d_unused, e1d_unused, w1d_unused;
wire n1t_unused, s1t_unused, e1t_unused, w1t_unused;
wire n1s_unused, s1s_unused, e1s_unused, w1s_unused;
wire n1c_unused, s1c_unused, e1c_unused, w1c_unused;

// ==================== Router 2 ====================
wire [FLIT_WIDTH-1:0] n2_unused, s2_unused, e2_unused, w2_unused;
wire [DEST_WIDTH-1:0] n2d_unused, s2d_unused, e2d_unused, w2d_unused;
wire n2t_unused, s2t_unused, e2t_unused, w2t_unused;
wire n2s_unused, s2s_unused, e2s_unused, w2s_unused;
wire n2c_unused, s2c_unused, e2c_unused, w2c_unused;

// ==================== Router 3 ====================
wire [FLIT_WIDTH-1:0] n3_unused, s3_unused, e3_unused, w3_unused;
wire [DEST_WIDTH-1:0] n3d_unused, s3d_unused, e3d_unused, w3d_unused;
wire n3t_unused, s3t_unused, e3t_unused, w3t_unused;
wire n3s_unused, s3s_unused, e3s_unused, w3s_unused;
wire n3c_unused, s3c_unused, e3c_unused, w3c_unused;

// ==================== Router 4 ====================
wire [FLIT_WIDTH-1:0] n4_unused, s4_unused, e4_unused, w4_unused;
wire [DEST_WIDTH-1:0] n4d_unused, s4d_unused, e4d_unused, w4d_unused;
wire n4t_unused, s4t_unused, e4t_unused, w4t_unused;
wire n4s_unused, s4s_unused, e4s_unused, w4s_unused;
wire n4c_unused, s4c_unused, e4c_unused, w4c_unused;


    // Connect slave ready to constant (since master drives traffic)
    assign AXIS_S_TREADY = 1'b1;     
master_module master_inst (
    .clk(CLK),                    // Connect to system clock
    .reset(~RST_N),               // Active-high reset (invert router's active-low reset)
    
    // TX Interface (Master -> Router 0)
    .axis_tx_tvalid(axis_in_tvalid[0]),
    .axis_tx_tdata(axis_in_tdata[0*DATAW +: DATAW]),
    .axis_tx_tdest(axis_in_tdest[0*DESTW +: DESTW]),
    .axis_tx_tready(axis_in_tready[0]),
    
    // RX Interface (Router 0 -> Master, left unconnected)
    .axis_rx_tvalid(axis_out_tvalid[0]),
    .axis_rx_tdata(axis_out_tdata[0*DATAW +: DATAW]),
    .axis_rx_tdest(axis_out_tdest[0*DESTW +: DESTW]),
    .axis_rx_tready()             // Left unconnected as master ignores RX
);

//------------------------------------------
// Connect wrapper_pe to Router 1
//------------------------------------------
wrapper_pe pe_inst_1 (
    .clk      (CLK),
    .reset    (~RST_N),
    
    // Input from router
    .in_tvalid (axis_out_tvalid[1]),
    .in_tdata  (axis_out_tdata[1*DATAW +: DATAW]),
    .in_tready (axis_out_tready[1]),
    
    // Output to router
    .out_tvalid (axis_in_tvalid[1]),
    .out_tdata  (axis_in_tdata[1*DATAW +: DATAW]),
    .out_tready (axis_in_tready[1]),
    
    .done     ()  // Optional: connect if needed
);

//------------------------------------------
// Connect wrapper_pe to Router 2
//------------------------------------------
wrapper_pe pe_inst_2 (
    .clk      (CLK),
    .reset    (~RST_N),
    
    .in_tvalid (axis_out_tvalid[2]),
    .in_tdata  (axis_out_tdata[2*DATAW +: DATAW]),
    .in_tready (axis_out_tready[2]),
    
    .out_tvalid (axis_in_tvalid[2]),
    .out_tdata  (axis_in_tdata[2*DATAW +: DATAW]),
    .out_tready (axis_in_tready[2]),
    
    .done     ()
);

//------------------------------------------
// Connect wrapper_pe to Router 3
//------------------------------------------
wrapper_pe pe_inst_3 (
    .clk      (CLK),
    .reset    (~RST_N),
    
    .in_tvalid (axis_out_tvalid[3]),
    .in_tdata  (axis_out_tdata[3*DATAW +: DATAW]),
    .in_tready (axis_out_tready[3]),
    
    .out_tvalid (axis_in_tvalid[3]),
    .out_tdata  (axis_in_tdata[3*DATAW +: DATAW]),
    .out_tready (axis_in_tready[3]),
    
    .done     ()
);

//------------------------------------------
// Connect wrapper_pe to Router 4
//------------------------------------------
wrapper_pe pe_inst_4 (
    .clk      (CLK),
    .reset    (~RST_N),
    
    .in_tvalid (axis_out_tvalid[4]),
    .in_tdata  (axis_out_tdata[4*DATAW +: DATAW]),
    .in_tready (axis_out_tready[4]),
    
    .out_tvalid (axis_in_tvalid[4]),
    .out_tdata  (axis_in_tdata[4*DATAW +: DATAW]),
    .out_tready (axis_in_tready[4]),
    
    .done     ()
);

    // rtr 0
    (* keep *)
    router_wrap #(
        .NUM_PORTS(NUM_PORTS),
        .TID_WIDTH(TIDW),
        .TDEST_WIDTH(TDESTW),
        .TDATA_WIDTH(TDATAW),
        .TDATA_WIDTH(DATAW),
        .SERIALIZATION_FACTOR(SERIALIZATION_FACTOR),
        .CLKCROSS_FACTOR(CLKCROSS_FACTOR),
        .SINGLE_CLOCK(SINGLE_CLOCK),
        .FLIT_WIDTH(FLIT_WIDTH),
        .DEST_WIDTH(DEST_WIDTH),
        .ROUTE_WIDTH(ROUTE_WIDTH),
        .RTR_ADDR_WIDTH(RTR_ADDR_WIDTH)
    ) router_inst_0 (
        .clk_noc(CLK_NOC),
        .clk_usr(CLK),
        .rst_n(RST_N),
    .axis_in_tvalid(axis_in_tvalid[0]),
    .axis_in_tready(axis_in_tready[0]),
    .axis_in_tdata(axis_in_tdata[0*DATAW +: DATAW]),
    .axis_in_tlast(1'b0),                    // Master doesn't use tlast
    .axis_in_tdest(axis_in_tdest[0*DESTW +: DESTW]),
    
    .axis_out_tvalid(axis_out_tvalid[0]),
    .axis_out_tready(1'b1),                  // Master ignores RX, always ready
    .axis_out_tdata(axis_out_tdata[0*DATAW +: DATAW]),
    .axis_out_tlast(),                       // Unused
    .axis_out_tdest(axis_out_tdest[0*DESTW +: DESTW]),

    .data_in     (neighbor_to_rtr0_data),
    .dest_in     (neighbor_to_rtr0_dest),
    .is_tail_in  (neighbor_to_rtr0_is_tail),
    .send_in     (neighbor_to_rtr0_send),
    .credit_out  (neighbor_to_rtr0_credit),
    
    .data_out    (rtr0_to_neighbor_data),
    .dest_out    (rtr0_to_neighbor_dest),
    .is_tail_out (rtr0_to_neighbor_is_tail),
    .send_out    (rtr0_to_neighbor_send),
    .credit_in   (rtr0_to_neighbor_credit),
    
   // .DISABLE_TURNS ({4{'{default:0}}}),
        
        .router_address(router_address[0*RTR_ADDR_WIDTH +: RTR_ADDR_WIDTH])
    );

    // rtr 1
    (* keep *)
    router_wrap #(
        .NUM_PORTS(NUM_PORTS),
        .TID_WIDTH(TIDW),
        .TDEST_WIDTH(TDESTW),
        .TDATA_WIDTH(TDATAW),
        .TDATA_WIDTH(DATAW),
        .SERIALIZATION_FACTOR(SERIALIZATION_FACTOR),
        .CLKCROSS_FACTOR(CLKCROSS_FACTOR),
        .SINGLE_CLOCK(SINGLE_CLOCK),
        .FLIT_WIDTH(FLIT_WIDTH),
        .DEST_WIDTH(DEST_WIDTH),
        .ROUTE_WIDTH(ROUTE_WIDTH),
        .RTR_ADDR_WIDTH(RTR_ADDR_WIDTH)
    ) router_inst_1 (
        .clk_noc(CLK_NOC),
        .clk_usr(CLK),
        .rst_n(RST_N),
        .axis_in_tvalid(axis_in_tvalid[1]),
        .axis_in_tready(axis_in_tready[1]),
        .axis_in_tdata(axis_in_tdata[1*DATAW +: DATAW]),
        .axis_in_tlast(axis_in_tlast[1]),
        .axis_in_tdest(axis_in_tdest[1*DESTW +: DESTW]),
        .axis_out_tvalid(axis_out_tvalid[1]),
        .axis_out_tready(axis_out_tready[1]),
        .axis_out_tdata(axis_out_tdata[1*DATAW +: DATAW]),
        .axis_out_tlast(axis_out_tlast[1]),
        .axis_out_tdest(axis_out_tdest[1*DESTW +: DESTW]),

   .data_in     ({1'b0, rtr0_to_neighbor_data[0], 2'b0}), // [N=0, S=1, E=2, W=3]
    .dest_in     ({1'b0, rtr0_to_neighbor_dest[0], 2'b0}),
    .is_tail_in  ({1'b0, rtr0_to_neighbor_is_tail[0], 2'b0}),
    .send_in     ({1'b0, rtr0_to_neighbor_send[0], 2'b0}),
    .credit_out  ({n1c_unused, rtr0_to_neighbor_credit[0], e1c_unused, w1c_unused}),
    
    .data_out    ({n1_unused, neighbor_to_rtr0_data[0], e1_unused, w1_unused}),
    .dest_out    ({n1d_unused, neighbor_to_rtr0_dest[0], e1d_unused, w1d_unused}),
    .is_tail_out ({n1t_unused, neighbor_to_rtr0_is_tail[0], e1t_unused, w1t_unused}),
    .send_out    ({n1s_unused, neighbor_to_rtr0_send[0], e1s_unused, w1s_unused}),
    .credit_in   ({1'b0, neighbor_to_rtr0_credit[0], 2'b0}),
    
    //.DISABLE_TURNS ({4{'{default:0}}})


        .router_address(router_address[1*RTR_ADDR_WIDTH +: RTR_ADDR_WIDTH])
    );

    // rtr 2
    (* keep *)
    router_wrap #(
        .NUM_PORTS(NUM_PORTS),
        .TID_WIDTH(TIDW),
        .TDEST_WIDTH(TDESTW),
        // .TDATA_WIDTH(TDATAW),
        .TDATA_WIDTH(DATAW),
        .SERIALIZATION_FACTOR(SERIALIZATION_FACTOR),
        .CLKCROSS_FACTOR(CLKCROSS_FACTOR),
        .SINGLE_CLOCK(SINGLE_CLOCK),
        .FLIT_WIDTH(FLIT_WIDTH),
        .DEST_WIDTH(DEST_WIDTH),
        .ROUTE_WIDTH(ROUTE_WIDTH),
        .RTR_ADDR_WIDTH(RTR_ADDR_WIDTH)
    ) router_inst_2 (
        .clk_noc(CLK_NOC),
        .clk_usr(CLK),
        .rst_n(RST_N),

        .axis_in_tvalid(axis_in_tvalid[2]),
        .axis_in_tready(axis_in_tready[2]),
        .axis_in_tdata(axis_in_tdata[2*DATAW +: DATAW]),
        .axis_in_tlast(axis_in_tlast[2]),
        .axis_in_tdest(axis_in_tdest[2*DESTW +: DESTW]),
        .axis_out_tvalid(axis_out_tvalid[2]),
        .axis_out_tready(axis_out_tready[2]),
        .axis_out_tdata(axis_out_tdata[2*DATAW +: DATAW]),
        .axis_out_tlast(axis_out_tlast[2]),
        .axis_out_tdest(axis_out_tdest[2*DESTW +: DESTW]),

    .data_in     ({rtr0_to_neighbor_data[1], 1'b0, 2'b0}), // [N=0, S=1, E=2, W=3]
    .dest_in     ({rtr0_to_neighbor_dest[1], 1'b0, 2'b0}),
    .is_tail_in  ({rtr0_to_neighbor_is_tail[1], 1'b0, 2'b0}),
    .send_in     ({rtr0_to_neighbor_send[1], 1'b0, 2'b0}),
    .credit_out  ({rtr0_to_neighbor_credit[1], s2c_unused, e2c_unused, w2c_unused}),
    
    .data_out    ({neighbor_to_rtr0_data[1], s2_unused, e2_unused, w2_unused}),
    .dest_out    ({neighbor_to_rtr0_dest[1], s2d_unused, e2d_unused, w2d_unused}),
    .is_tail_out ({neighbor_to_rtr0_is_tail[1], s2t_unused, e2t_unused, w2t_unused}),
    .send_out    ({neighbor_to_rtr0_send[1], s2s_unused, e2s_unused, w2s_unused}),
    .credit_in   ({neighbor_to_rtr0_credit[1], 1'b0, 2'b0}),
    
   // .DISABLE_TURNS ({4{'{default:0}}})

        .router_address(router_address[2*RTR_ADDR_WIDTH +: RTR_ADDR_WIDTH])
    );

 // rtr 3
    (* keep *)
    router_wrap #(
        .NUM_PORTS(NUM_PORTS),
        .TID_WIDTH(TIDW),
        .TDEST_WIDTH(TDESTW),
        .TDATA_WIDTH(DATAW),
        .SERIALIZATION_FACTOR(SERIALIZATION_FACTOR),
        .CLKCROSS_FACTOR(CLKCROSS_FACTOR),
        .SINGLE_CLOCK(SINGLE_CLOCK),
        .FLIT_WIDTH(FLIT_WIDTH),
        .DEST_WIDTH(DEST_WIDTH),
        .ROUTE_WIDTH(ROUTE_WIDTH),
        .RTR_ADDR_WIDTH(RTR_ADDR_WIDTH)
    ) router_inst_3 (
        .clk_noc(CLK_NOC),
        .clk_usr(CLK),
        .rst_n(RST_N),

        .axis_in_tvalid(axis_in_tvalid[3]),
        .axis_in_tready(axis_in_tready[3]),
        .axis_in_tdata(axis_in_tdata[3*DATAW +: DATAW]),
        .axis_in_tlast(axis_in_tlast[3]),
        .axis_in_tdest(axis_in_tdest[3*DESTW +: DESTW]),
        .axis_out_tvalid(axis_out_tvalid[3]),
        .axis_out_tready(axis_out_tready[3]),
        .axis_out_tdata(axis_out_tdata[3*DATAW +: DATAW]),
        .axis_out_tlast(axis_out_tlast[3]),
        .axis_out_tdest(axis_out_tdest[3*DESTW +: DESTW]),


     .data_in     ({2'b0, rtr0_to_neighbor_data[2], 1'b0}), // [N=0, S=1, E=2, W=3]
    .dest_in     ({2'b0, rtr0_to_neighbor_dest[2], 1'b0}),
    .is_tail_in  ({2'b0, rtr0_to_neighbor_is_tail[2], 1'b0}),
    .send_in     ({2'b0, rtr0_to_neighbor_send[2], 1'b0}),
    .credit_out  ({n3c_unused, s3c_unused, rtr0_to_neighbor_credit[2], w3c_unused}),
    
    .data_out    ({n3_unused, s3_unused, neighbor_to_rtr0_data[2], w3_unused}),
    .dest_out    ({n3d_unused, s3d_unused, neighbor_to_rtr0_dest[2], w3d_unused}),
    .is_tail_out ({n3t_unused, s3t_unused, neighbor_to_rtr0_is_tail[2], w3t_unused}),
    .send_out    ({n3s_unused, s3s_unused, neighbor_to_rtr0_send[2], w3s_unused}),
    .credit_in   ({2'b0, neighbor_to_rtr0_credit[2], 1'b0}),
        .router_address(router_address[3*RTR_ADDR_WIDTH +: RTR_ADDR_WIDTH])
    );

        // rtr 4
    (* keep *)
    router_wrap #(
        .NUM_PORTS(NUM_PORTS),
        .TID_WIDTH(TIDW),
        .TDEST_WIDTH(TDESTW),
        // .TDATA_WIDTH(TDATAW),
        .TDATA_WIDTH(DATAW),
        .SERIALIZATION_FACTOR(SERIALIZATION_FACTOR),
        .CLKCROSS_FACTOR(CLKCROSS_FACTOR),
        .SINGLE_CLOCK(SINGLE_CLOCK),
        .FLIT_WIDTH(FLIT_WIDTH),
        .DEST_WIDTH(DEST_WIDTH),
        .ROUTE_WIDTH(ROUTE_WIDTH),
        .RTR_ADDR_WIDTH(RTR_ADDR_WIDTH)
    ) router_inst_4 (
        .clk_noc(CLK_NOC),
        .clk_usr(CLK),
        .rst_n(RST_N),

        .axis_in_tvalid(axis_in_tvalid[4]),
        .axis_in_tready(axis_in_tready[4]),
        .axis_in_tdata(axis_in_tdata[4*DATAW +: DATAW]),
        .axis_in_tlast(axis_in_tlast[4]),
        .axis_in_tdest(axis_in_tdest[4*DESTW +: DESTW]),
        .axis_out_tvalid(axis_out_tvalid[4]),
        .axis_out_tready(axis_out_tready[4]),
        .axis_out_tdata(axis_out_tdata[4*DATAW +: DATAW]),
        .axis_out_tlast(axis_out_tlast[4]),
        .axis_out_tdest(axis_out_tdest[4*DESTW +: DESTW]),

    // Connect only WEST port to Router 0
      .data_in     ({3'b0, rtr0_to_neighbor_data[3]}), // [N=0, S=1, E=2, W=3]
    .dest_in     ({3'b0, rtr0_to_neighbor_dest[3]}),
    .is_tail_in  ({3'b0, rtr0_to_neighbor_is_tail[3]}),
    .send_in     ({3'b0, rtr0_to_neighbor_send[3]}),
    .credit_out  ({n4c_unused, s4c_unused, e4c_unused, rtr0_to_neighbor_credit[3]}),
    
    .data_out    ({n4_unused, s4_unused, e4_unused, neighbor_to_rtr0_data[3]}),
    .dest_out    ({n4d_unused, s4d_unused, e4d_unused, neighbor_to_rtr0_dest[3]}),
    .is_tail_out ({n4t_unused, s4t_unused, e4t_unused, neighbor_to_rtr0_is_tail[3]}),
    .send_out    ({n4s_unused, s4s_unused, e4s_unused, neighbor_to_rtr0_send[3]}),
    .credit_in   ({3'b0, neighbor_to_rtr0_credit[3]}),
    
    //.DISABLE_TURNS ({4{'{default:0}}})

        .router_address(router_address[2*RTR_ADDR_WIDTH +: RTR_ADDR_WIDTH])
    );


endmodule