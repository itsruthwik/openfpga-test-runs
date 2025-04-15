module noc_loaded #(
    parameter DATAW = 128,                   
    parameter BYTEW = 8,                  
    parameter IDW = 32,      
    parameter DESTW = 32,    
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
    parameter HARD_LINK = 1
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
    parameter ROW_WIDTH = 3;        // $clog2(ROWS)
    parameter COL_WIDTH = 3;        // $clog2(COLUMNS)
    parameter RTR_ADDR_WIDTH = 6;   // ROW_WIDTH + COL_WIDTH

    parameter FLIT_WIDTH = DATAW / SERIALIZATION_FACTOR / CLKCROSS_FACTOR;
    parameter DEST_WIDTH = TDESTW + TIDW;


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

    assign router_address[0*RTR_ADDR_WIDTH + COL_WIDTH +: ROW_WIDTH] = 0;
    assign router_address[0*RTR_ADDR_WIDTH +: COL_WIDTH] = 1;

    assign router_address[1*RTR_ADDR_WIDTH + COL_WIDTH +: ROW_WIDTH] = 1;
    assign router_address[1*RTR_ADDR_WIDTH +: COL_WIDTH] = 0;

    assign router_address[2*RTR_ADDR_WIDTH + COL_WIDTH +: ROW_WIDTH] = 1;
    assign router_address[2*RTR_ADDR_WIDTH +: COL_WIDTH] = 1;

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
    // (* keep *)
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
    
    .DISABLE_TURNS ({4{'{default:0}}}),
        
        .router_address(router_address[0*RTR_ADDR_WIDTH +: RTR_ADDR_WIDTH])
    );

    // rtr 1
    // (* keep *)
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

    .data_in     ({3'b0, rtr0_to_neighbor_data[0]}),
    .dest_in     ({3'b0, rtr0_to_neighbor_dest[0]}),
    .is_tail_in  ({3'b0, rtr0_to_neighbor_is_tail[0]}),
    .send_in     ({3'b0, rtr0_to_neighbor_send[0]}),
    .credit_out  ({3'b0, rtr0_to_neighbor_credit[0]}),
    
    .data_out    ({/*W,E,S*/, neighbor_to_rtr0_data[0]}),
    .dest_out    ({/*W,E,S*/, neighbor_to_rtr0_dest[0]}),
    .is_tail_out ({/*W,E,S*/, neighbor_to_rtr0_is_tail[0]}),
    .send_out    ({/*W,E,S*/, neighbor_to_rtr0_send[0]}),
    .credit_in   ({/*W,E,S*/, neighbor_to_rtr0_credit[0]}),
    
    .DISABLE_TURNS ({4{'{default:0}}})


        .router_address(router_address[1*RTR_ADDR_WIDTH +: RTR_ADDR_WIDTH])
    );

    // rtr 2
    // (* keep *)
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
    ) router_inst_3 (
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

    .data_in     ({2'b0, rtr0_to_neighbor_data[1], 1'b0}),
    .dest_in     ({2'b0, rtr0_to_neighbor_dest[1], 1'b0}),
    .is_tail_in  ({2'b0, rtr0_to_neighbor_is_tail[1], 1'b0}),
    .send_in     ({2'b0, rtr0_to_neighbor_send[1], 1'b0}),
    .credit_out  ({2'b0, rtr0_to_neighbor_credit[1], 1'b0}),
    
    .data_out    ({/*E,W*/, neighbor_to_rtr0_data[1], /*N*/}),
    .dest_out    ({/*E,W*/, neighbor_to_rtr0_dest[1], /*N*/}),
    .is_tail_out ({/*E,W*/, neighbor_to_rtr0_is_tail[1], /*N*/}),
    .send_out    ({/*E,W*/, neighbor_to_rtr0_send[1], /*N*/}),
    .credit_in   ({/*E,W*/, neighbor_to_rtr0_credit[1], /*N*/}),
    
    .DISABLE_TURNS ({4{'{default:0}}})

        .router_address(router_address[2*RTR_ADDR_WIDTH +: RTR_ADDR_WIDTH])
    );

        // rtr 4
    // (* keep *)
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

    // Connect only WEST port to Router 0
    .data_in     ({1'b0, rtr0_to_neighbor_data[2], 2'b0}),
    .dest_in     ({1'b0, rtr0_to_neighbor_dest[2], 2'b0}),
    .is_tail_in  ({1'b0, rtr0_to_neighbor_is_tail[2], 2'b0}),
    .send_in     ({1'b0, rtr0_to_neighbor_send[2], 2'b0}),
    .credit_out  ({1'b0, rtr0_to_neighbor_credit[2], 2'b0}),
    
    .data_out    ({/*N*/, neighbor_to_rtr0_data[2], /*S,W*/}),
    .dest_out    ({/*N*/, neighbor_to_rtr0_dest[2], /*S,W*/}),
    .is_tail_out ({/*N*/, neighbor_to_rtr0_is_tail[2], /*S,W*/}),
    .send_out    ({/*N*/, neighbor_to_rtr0_send[2], /*S,W*/}),
    .credit_in   ({/*N*/, neighbor_to_rtr0_credit[2], /*S,W*/}),
    
    .DISABLE_TURNS ({4{'{default:0}}})

        .router_address(router_address[2*RTR_ADDR_WIDTH +: RTR_ADDR_WIDTH])
    );


endmodule