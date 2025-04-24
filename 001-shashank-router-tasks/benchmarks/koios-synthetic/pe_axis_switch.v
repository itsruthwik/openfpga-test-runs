module pe_axis_switch #(
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


    assign AXIS_M_TVALID = axis_out_tvalid[0];          // Master's TX valid
    assign AXIS_M_TDATA = axis_out_tdata[0*DATAW +: DATAW]; // Master's TX data
    assign AXIS_M_TDEST = axis_out_tdest[0*DESTW +: DESTW]; // Master's TX dest
    assign AXIS_M_TLAST = 1'b0;                        // Not used by master
    assign AXIS_M_TID = {IDW{1'b0}};                   // Zero out unused
    assign AXIS_M_TUSER = {USERW{1'b0}};               // Zero out unused


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

    


endmodule