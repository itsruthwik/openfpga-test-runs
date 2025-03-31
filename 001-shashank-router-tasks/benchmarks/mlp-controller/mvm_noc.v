module mvm_noc #(
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
    parameter NODESW = 4,         
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
    parameter TDATAW = DATAW + USERW,
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

// 3routers    
    wire [2:0] axis_in_tvalid;
    wire [2:0] axis_in_tready;
    wire [3*DATAW-1:0] axis_in_tdata;
    wire [2:0] axis_in_tlast;
    wire [3*USERW-1:0] axis_in_tuser;
    wire [3*DESTW-1:0] axis_in_tdest;

    wire [2:0] axis_out_tvalid;
    wire [2:0] axis_out_tready;
    wire [3*DATAW-1:0] axis_out_tdata;
    wire [2:0] axis_out_tlast;
    wire [3*USERW-1:0] axis_out_tuser;
    wire [3*DESTW-1:0] axis_out_tdest;

    wire [3*TDATAW-1:0] mesh_in_tdata;
    wire [3*TDATAW-1:0] mesh_out_tdata;
    wire [3*RTR_ADDR_WIDTH-1:0] router_address;

    assign mesh_in_tdata[0*TDATAW +: TDATAW] = {
        axis_in_tuser[0*USERW +: USERW], 
        axis_in_tdata[0*DATAW +: DATAW]
    };
    assign axis_out_tdata[0*DATAW +: DATAW] = mesh_out_tdata[0*TDATAW +: DATAW];
    assign axis_out_tuser[0*USERW +: USERW] = mesh_out_tdata[0*TDATAW + DATAW +: USERW];
    assign router_address[0*RTR_ADDR_WIDTH + COL_WIDTH +: ROW_WIDTH] = 0;
    assign router_address[0*RTR_ADDR_WIDTH +: COL_WIDTH] = 1;

    assign mesh_in_tdata[1*TDATAW +: TDATAW] = {
        axis_in_tuser[1*USERW +: USERW], 
        axis_in_tdata[1*DATAW +: DATAW]
    };
    assign axis_out_tdata[1*DATAW +: DATAW] = mesh_out_tdata[1*TDATAW +: DATAW];
    assign axis_out_tuser[1*USERW +: USERW] = mesh_out_tdata[1*TDATAW + DATAW +: USERW];
    assign router_address[1*RTR_ADDR_WIDTH + COL_WIDTH +: ROW_WIDTH] = 1;
    assign router_address[1*RTR_ADDR_WIDTH +: COL_WIDTH] = 0;

    assign mesh_in_tdata[2*TDATAW +: TDATAW] = {
        axis_in_tuser[2*USERW +: USERW], 
        axis_in_tdata[2*DATAW +: DATAW]
    };
    assign axis_out_tdata[2*DATAW +: DATAW] = mesh_out_tdata[2*TDATAW +: DATAW];
    assign axis_out_tuser[2*USERW +: USERW] = mesh_out_tdata[2*TDATAW + DATAW +: USERW];
    assign router_address[2*RTR_ADDR_WIDTH + COL_WIDTH +: ROW_WIDTH] = 1;
    assign router_address[2*RTR_ADDR_WIDTH +: COL_WIDTH] = 1;

    // input
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
        // .AXIS_S_TUSER(AXIS_S_TUSER),
        .AXIS_S_TDEST(AXIS_S_TDEST),
        .AXIS_M_TVALID(axis_in_tvalid[2]),
        .AXIS_M_TREADY(axis_in_tready[2]),
        .AXIS_M_TDATA(axis_in_tdata[2*DATAW +: DATAW]),
        .AXIS_M_TLAST(axis_in_tlast[2]),
        // .AXIS_M_TUSER(axis_in_tuser[2*USERW +: USERW]),
        .AXIS_M_TDEST(axis_in_tdest[2*DESTW +: DESTW])
    );

    // output
    axis_passthrough #(
        .DATAW(DATAW),
        .IDW(IDW),
        .USERW(USERW),
        .DESTW(DESTW)
    ) axis_passthrough_inst2 (
        .CLK(CLK),
        .RST_N(RST_N),
        .AXIS_S_TVALID(axis_out_tvalid[2]),
        .AXIS_S_TREADY(axis_out_tready[2]),
        .AXIS_S_TDATA (axis_out_tdata[2*DATAW +: DATAW]),
        .AXIS_S_TLAST (axis_out_tlast[2]),
        // .AXIS_S_TUSER (axis_out_tuser[2*USERW +: USERW]),
        .AXIS_S_TDEST (axis_out_tdest[2*DESTW +: DESTW]),
        .AXIS_M_TVALID(AXIS_M_TVALID),
        .AXIS_M_TREADY(AXIS_M_TREADY),
        .AXIS_M_TDATA (AXIS_M_TDATA),
        .AXIS_M_TLAST (AXIS_M_TLAST),
        // .AXIS_M_TUSER (AXIS_M_TUSER),
        .AXIS_M_TDEST (AXIS_M_TDEST)
    );

    // rtr 0 - mvm1
    rtl_mvm #(
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
        .RFDEPTH(RFDEPTH),
        .RFADDRW(RFADDRW),
        .INSTW(INSTW),
        .INSTD(INSTD),
        .INSTADDRW(INSTADDRW),
        .AXIS_OPS(AXIS_OPS),
        .AXIS_OPSW(AXIS_OPSW),
        .FIFOD(FIFOD),
        .USE_RELU(USE_RELU),
        .DATAPATH_DELAY(DATAPATH_DELAY)
    ) mvm_inst_0 (
        .clk(CLK),
        .rst(RST_N),
        .axis_rx_tvalid(axis_out_tvalid[0]),
        .axis_rx_tdata(axis_out_tdata[0*DATAW +: DATAW]),
        .axis_rx_tdest(axis_out_tdest[0*DESTW +: DESTW]),
        .axis_rx_tuser(axis_out_tuser[0*USERW +: USERW]),
        .axis_rx_tlast(axis_out_tlast[0]),
        .axis_rx_tready(axis_out_tready[0]),
        .axis_tx_tvalid(axis_in_tvalid[0]),
        .axis_tx_tdata(axis_in_tdata[0*DATAW +: DATAW]),
        .axis_tx_tdest(axis_in_tdest[0*DESTW +: DESTW]),
        .axis_tx_tuser(axis_in_tuser[0*USERW +: USERW]),
        .axis_tx_tlast(axis_in_tlast[0]),
        .axis_tx_tready(axis_in_tready[0])
    );

    // rtr 1 -mvm 2
    rtl_mvm #(
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
        .RFDEPTH(RFDEPTH),
        .RFADDRW(RFADDRW),
        .INSTW(INSTW),
        .INSTD(INSTD),
        .INSTADDRW(INSTADDRW),
        .AXIS_OPS(AXIS_OPS),
        .AXIS_OPSW(AXIS_OPSW),
        .FIFOD(FIFOD),
        .USE_RELU(USE_RELU),
        .DATAPATH_DELAY(DATAPATH_DELAY)
    ) mvm_inst_1 (
        .clk(CLK),
        .rst(RST_N),
        .axis_rx_tvalid(axis_out_tvalid[1]),
        .axis_rx_tdata(axis_out_tdata[1*DATAW +: DATAW]),
        .axis_rx_tdest(axis_out_tdest[1*DESTW +: DESTW]),
        .axis_rx_tuser(axis_out_tuser[1*USERW +: USERW]),
        .axis_rx_tlast(axis_out_tlast[1]),
        .axis_rx_tready(axis_out_tready[1]),
        .axis_tx_tvalid(axis_in_tvalid[1]),
        .axis_tx_tdata(axis_in_tdata[1*DATAW +: DATAW]),
        .axis_tx_tdest(axis_in_tdest[1*DESTW +: DESTW]),
        .axis_tx_tuser(axis_in_tuser[1*USERW +: USERW]),
        .axis_tx_tlast(axis_in_tlast[1]),
        .axis_tx_tready(axis_in_tready[1])
    );

    // rtr 0
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
    ) router_inst_0_1 (
        .clk_noc(CLK_NOC),
        .clk_usr(CLK),
        .rst_n(RST_N),
        .axis_in_tvalid(axis_in_tvalid[0]),
        .axis_in_tready(axis_in_tready[0]),
        // .axis_in_tdata(mesh_in_tdata[0*TDATAW +: TDATAW]),
        .axis_in_tdata(axis_in_tdata[0*DATAW +: DATAW]),
        .axis_in_tlast(axis_in_tlast[0]),
        .axis_in_tdest(axis_in_tdest[0*DESTW +: DESTW]),

        .axis_out_tvalid(axis_out_tvalid[0]),
        .axis_out_tready(axis_out_tready[0]),
        // .axis_out_tdata(mesh_out_tdata[0*TDATAW +: TDATAW]),
        .axis_out_tdata(axis_out_tdata[0*DATAW +: DATAW]),
        .axis_out_tlast(axis_out_tlast[0]),
        .axis_out_tdest(axis_out_tdest[0*DESTW +: DESTW]),
        
        .router_address(router_address[0*RTR_ADDR_WIDTH +: RTR_ADDR_WIDTH])
    );

    // rtr 1
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
    ) router_inst_1_0 (
        .clk_noc(CLK_NOC),
        .clk_usr(CLK),
        .rst_n(RST_N),
        .axis_in_tvalid(axis_in_tvalid[1]),
        .axis_in_tready(axis_in_tready[1]),
        // .axis_in_tdata(mesh_in_tdata[1*TDATAW +: TDATAW]),
        .axis_in_tdata(axis_in_tdata[1*DATAW +: DATAW]),
        .axis_in_tlast(axis_in_tlast[1]),
        .axis_in_tdest(axis_in_tdest[1*DESTW +: DESTW]),

        .axis_out_tvalid(axis_out_tvalid[1]),
        .axis_out_tready(axis_out_tready[1]),
        // .axis_out_tdata(mesh_out_tdata[1*TDATAW +: TDATAW]),
        .axis_out_tdata(axis_out_tdata[1*DATAW +: DATAW]),
        .axis_out_tlast(axis_out_tlast[1]),
        .axis_out_tdest(axis_out_tdest[1*DESTW +: DESTW]),

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
    ) router_inst_1_1 (
        .clk_noc(CLK_NOC),
        .clk_usr(CLK),
        .rst_n(RST_N),

        .axis_in_tvalid(axis_in_tvalid[2]),
        .axis_in_tready(axis_in_tready[2]),
        // .axis_in_tdata(mesh_in_tdata[2*TDATAW +: TDATAW]),
        .axis_in_tdata(axis_in_tdata[2*DATAW +: DATAW]),
        .axis_in_tlast(axis_in_tlast[2]),
        .axis_in_tdest(axis_in_tdest[2*DESTW +: DESTW]),

        .axis_out_tvalid(axis_out_tvalid[2]),
        .axis_out_tready(axis_out_tready[2]),
        // .axis_out_tdata(mesh_out_tdata[2*TDATAW +: TDATAW]),
        .axis_out_tdata(axis_out_tdata[2*DATAW +: DATAW]),
        .axis_out_tlast(axis_out_tlast[2]),
        .axis_out_tdest(axis_out_tdest[2*DESTW +: DESTW]),

        .router_address(router_address[2*RTR_ADDR_WIDTH +: RTR_ADDR_WIDTH])
    );

endmodule