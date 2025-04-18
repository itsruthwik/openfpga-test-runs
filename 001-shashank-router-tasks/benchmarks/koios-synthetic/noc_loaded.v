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
    parameter SERIALIZATION_FACTOR = 1;
    parameter CLKCROSS_FACTOR = 1;
    parameter SINGLE_CLOCK = 1;
    parameter NUM_PORTS = 5;
    parameter ROUTE_WIDTH = 3;
    parameter ROW_WIDTH = 3;
    parameter COL_WIDTH = 3;
    parameter RTR_ADDR_WIDTH = 6;

    parameter FLIT_WIDTH = 64;  // DATAW/SERIALIZATION_FACTOR/CLKCROSS_FACTOR
    parameter DEST_WIDTH = 4;   // Matches physical pin definition

    // AXI Stream signals
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

    wire [5*RTR_ADDR_WIDTH-1:0] router_address;

    // Router address assignments
    assign router_address[0*RTR_ADDR_WIDTH + COL_WIDTH +: ROW_WIDTH] = 0;
    assign router_address[0*RTR_ADDR_WIDTH +: COL_WIDTH] = 1;

    assign router_address[1*RTR_ADDR_WIDTH + COL_WIDTH +: ROW_WIDTH] = 1;
    assign router_address[1*RTR_ADDR_WIDTH +: COL_WIDTH] = 0;

    assign router_address[2*RTR_ADDR_WIDTH + COL_WIDTH +: ROW_WIDTH] = 1;
    assign router_address[2*RTR_ADDR_WIDTH +: COL_WIDTH] = 1;



    assign AXIS_M_TVALID = axis_out_tvalid[0];
    assign AXIS_M_TDATA = axis_out_tdata[0*DATAW +: DATAW];
    assign AXIS_M_TDEST = axis_out_tdest[0*DESTW +: DESTW];

    // Master module
    master_module master_inst (
        .clk(CLK),
        .reset(~RST_N),
        .axis_tx_tvalid(axis_in_tvalid[0]),
        .axis_tx_tdata(axis_in_tdata[0*DATAW +: DATAW]),
        .axis_tx_tdest(axis_in_tdest[0*DESTW +: DESTW]),
        .axis_tx_tready(axis_in_tready[0]),
        .axis_rx_tvalid(axis_out_tvalid[0]),
        .axis_rx_tdata(axis_out_tdata[0*DATAW +: DATAW]),
        .axis_rx_tdest(axis_out_tdest[0*DESTW +: DESTW]),
        .axis_rx_tready()
    );

    // Processing elements
    wrapper_pe pe_inst_1 (
        .clk(CLK),
        .reset(~RST_N),
        .in_tvalid(axis_out_tvalid[1]),
        .in_tdata(axis_out_tdata[1*DATAW +: DATAW]),
        .in_tready(axis_out_tready[1]),
        .out_tvalid(axis_in_tvalid[1]),
        .out_tdata(axis_in_tdata[1*DATAW +: DATAW]),
        .out_tready(axis_in_tready[1]),
        .done()
    );
    (*keep*)
    wrapper_pe pe_inst_2 (
        .clk(CLK),
        .reset(~RST_N),
        .in_tvalid(axis_out_tvalid[2]),
        .in_tdata(axis_out_tdata[2*DATAW +: DATAW]),
        .in_tready(axis_out_tready[2]),
        .out_tvalid(axis_in_tvalid[2]),
        .out_tdata(axis_in_tdata[2*DATAW +: DATAW]),
        .out_tready(axis_in_tready[2]),
        .done()
    );
    (*keep*)

    wrapper_pe pe_inst_3 (
        .clk(CLK),
        .reset(~RST_N),
        .in_tvalid(axis_out_tvalid[3]),
        .in_tdata(axis_out_tdata[3*DATAW +: DATAW]),
        .in_tready(axis_out_tready[3]),
        .out_tvalid(axis_in_tvalid[3]),
        .out_tdata(axis_in_tdata[3*DATAW +: DATAW]),
        .out_tready(axis_in_tready[3]),
        .done()
    );
    (*keep*)

    wrapper_pe pe_inst_4 (
        .clk(CLK),
        .reset(~RST_N),
        .in_tvalid(axis_out_tvalid[4]),
        .in_tdata(axis_out_tdata[4*DATAW +: DATAW]),
        .in_tready(axis_out_tready[4]),
        .out_tvalid(axis_in_tvalid[4]),
        .out_tdata(axis_in_tdata[4*DATAW +: DATAW]),
        .out_tready(axis_in_tready[4]),
        .done()
    );

    // Router instantiations with consistent parameters

    (*keep*)
    router_wrap #(
        .TDATA_WIDTH(128),
        .TID_WIDTH(2),
        .TDEST_WIDTH(4),
        .FLIT_WIDTH(64),
        .DEST_WIDTH(4),
        .NUM_PORTS(5),
        .RTR_ADDR_WIDTH(4)
    ) router_inst_0 (
        .clk_noc(CLK_NOC),
        .clk_usr(CLK),
        .rst_n(RST_N),
        .axis_in_tvalid(axis_in_tvalid[0]),
        .axis_in_tready(axis_in_tready[0]),
        .axis_in_tdata(axis_in_tdata[0*DATAW +: DATAW]),
        .axis_in_tlast(1'b0),
        .axis_in_tid(2'b0),
        .axis_in_tdest(axis_in_tdest[0*DESTW +: DESTW]),
        .axis_out_tvalid(axis_out_tvalid[0]),
        .axis_out_tready(1'b1),
        .axis_out_tdata(axis_out_tdata[0*DATAW +: DATAW]),
        .axis_out_tlast(),
        .axis_out_tid(),
        .axis_out_tdest(axis_out_tdest[0*DESTW +: DESTW]),
        .router_address(router_address[0*RTR_ADDR_WIDTH +: RTR_ADDR_WIDTH])
    );

    (*keep*)
    router_wrap #(
        .TDATA_WIDTH(128),
        .TID_WIDTH(2),
        .TDEST_WIDTH(4),
        .FLIT_WIDTH(64),
        .DEST_WIDTH(4),
        .NUM_PORTS(5),
        .RTR_ADDR_WIDTH(4)
    ) router_inst_1 (
        .clk_noc(CLK_NOC),
        .clk_usr(CLK),
        .rst_n(RST_N),
        .axis_in_tvalid(axis_in_tvalid[1]),
        .axis_in_tready(axis_in_tready[1]),
        .axis_in_tdata(axis_in_tdata[1*DATAW +: DATAW]),
        .axis_in_tlast(1'b0),
        .axis_in_tid(2'b0),
        .axis_in_tdest(axis_in_tdest[1*DESTW +: DESTW]),
        .axis_out_tvalid(axis_out_tvalid[1]),
        .axis_out_tready(1'b1),
        .axis_out_tdata(axis_out_tdata[1*DATAW +: DATAW]),
        .axis_out_tlast(),
        .axis_out_tid(),
        .axis_out_tdest(axis_out_tdest[1*DESTW +: DESTW]),
        .router_address(router_address[1*RTR_ADDR_WIDTH +: RTR_ADDR_WIDTH])
    );

    (*keep*)
    router_wrap #(
        .TDATA_WIDTH(128),
        .TID_WIDTH(2),
        .TDEST_WIDTH(4),
        .FLIT_WIDTH(64),
        .DEST_WIDTH(4),
        .NUM_PORTS(5),
        .RTR_ADDR_WIDTH(4)
    ) router_inst_2 (
        .clk_noc(CLK_NOC),
        .clk_usr(CLK),
        .rst_n(RST_N),
        .axis_in_tvalid(axis_in_tvalid[2]),
        .axis_in_tready(axis_in_tready[2]),
        .axis_in_tdata(axis_in_tdata[2*DATAW +: DATAW]),
        .axis_in_tlast(1'b0),
        .axis_in_tid(2'b0),
        .axis_in_tdest(axis_in_tdest[2*DESTW +: DESTW]),
        .axis_out_tvalid(axis_out_tvalid[2]),
        .axis_out_tready(1'b1),
        .axis_out_tdata(axis_out_tdata[2*DATAW +: DATAW]),
        .axis_out_tlast(),
        .axis_out_tid(),
        .axis_out_tdest(axis_out_tdest[2*DESTW +: DESTW]),
        .router_address(router_address[2*RTR_ADDR_WIDTH +: RTR_ADDR_WIDTH])
    );

    (*keep*)
    router_wrap #(
        .TDATA_WIDTH(128),
        .TID_WIDTH(2),
        .TDEST_WIDTH(4),
        .FLIT_WIDTH(64),
        .DEST_WIDTH(4),
        .NUM_PORTS(5),
        .RTR_ADDR_WIDTH(4)
    ) router_inst_3 (
        .clk_noc(CLK_NOC),
        .clk_usr(CLK),
        .rst_n(RST_N),
        .axis_in_tvalid(axis_in_tvalid[3]),
        .axis_in_tready(axis_in_tready[3]),
        .axis_in_tdata(axis_in_tdata[3*DATAW +: DATAW]),
        .axis_in_tlast(1'b0),
        .axis_in_tid(2'b0),
        .axis_in_tdest(axis_in_tdest[3*DESTW +: DESTW]),
        .axis_out_tvalid(axis_out_tvalid[3]),
        .axis_out_tready(1'b1),
        .axis_out_tdata(axis_out_tdata[3*DATAW +: DATAW]),
        .axis_out_tlast(),
        .axis_out_tid(),
        .axis_out_tdest(axis_out_tdest[3*DESTW +: DESTW]),
        .router_address(router_address[3*RTR_ADDR_WIDTH +: RTR_ADDR_WIDTH])
    );

    (*keep*)
    router_wrap #(
        .TDATA_WIDTH(128),
        .TID_WIDTH(2),
        .TDEST_WIDTH(4),
        .FLIT_WIDTH(64),
        .DEST_WIDTH(4),
        .NUM_PORTS(5),
        .RTR_ADDR_WIDTH(4)
    ) router_inst_4 (
        .clk_noc(CLK_NOC),
        .clk_usr(CLK),
        .rst_n(RST_N),
        .axis_in_tvalid(axis_in_tvalid[4]),
        .axis_in_tready(axis_in_tready[4]),
        .axis_in_tdata(axis_in_tdata[4*DATAW +: DATAW]),
        .axis_in_tlast(1'b0),
        .axis_in_tid(2'b0),
        .axis_in_tdest(axis_in_tdest[4*DESTW +: DESTW]),
        .axis_out_tvalid(axis_out_tvalid[4]),
        .axis_out_tready(1'b1),
        .axis_out_tdata(axis_out_tdata[4*DATAW +: DATAW]),
        .axis_out_tlast(),
        .axis_out_tid(),
        .axis_out_tdest(axis_out_tdest[4*DESTW +: DESTW]),
        .router_address(router_address[4*RTR_ADDR_WIDTH +: RTR_ADDR_WIDTH])
    );

endmodule