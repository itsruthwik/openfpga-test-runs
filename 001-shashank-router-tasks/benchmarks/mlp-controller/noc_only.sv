module noc_only #(
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
    output   [DESTW-1:0]   AXIS_M_TDEST,

    // input  [2:0] axis_in_tvalid,
    // output  [2:0] axis_in_tready,
    // input  [3*DATAW-1:0] axis_in_tdata,
    // input  [2:0] axis_in_tlast,
    // input  [3*USERW-1:0] axis_in_tuser,
    // input  [3*DESTW-1:0] axis_in_tdest,

    // output [2:0] axis_out_tvalid,
    // input [2:0] axis_out_tready,
    // output [3*DATAW-1:0] axis_out_tdata,
    // output [2:0] axis_out_tlast,
    // output [3*USERW-1:0] axis_out_tuser,
    // output [3*DESTW-1:0] axis_out_tdest,

    input     [0:NUM_PORTS-2][0:NUM_PORTS-1]           DISABLE_TURNS_0 ,
    input     [0:NUM_PORTS-2][0:NUM_PORTS-1]           DISABLE_TURNS_1 ,
    input     [0:NUM_PORTS-2][0:NUM_PORTS-1]           DISABLE_TURNS_2 ,

    output                      dummy_axis_out_tlast_0,
    output                      dummy_axis_out_tlast_1,
    output                      dummy_axis_out_tlast_2,

    output   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_out_0 ,
    output   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_out_1 ,
    output   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_out_2 , 

    input   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_in_0 ,
    input   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_in_1 ,
    input   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_in_2 


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


    wire [3*RTR_ADDR_WIDTH-1:0] router_address;


    // wire    [0:NUM_PORTS -2][FLIT_WIDTH - 1 : 0]    data_in_0 ;
    wire    [0:NUM_PORTS -2][DEST_WIDTH - 1 : 0]    dest_in_0 ;
    wire    [0:NUM_PORTS -2]                        is_tail_in_0 ;
    wire    [0:NUM_PORTS -2]                        send_in_0 ;
    wire   [0:NUM_PORTS -2]                        credit_out_0 ;

    // wire   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_out_0 ;
    wire   [0:NUM_PORTS - 2][DEST_WIDTH - 1 : 0]    dest_out_0 ;
    wire   [0:NUM_PORTS - 2]                        is_tail_out_0 ;
    wire   [0:NUM_PORTS - 2]                        send_out_0 ;
    wire    [0:NUM_PORTS - 2]                        credit_in_0 ;


    // wire    [0:NUM_PORTS -2][FLIT_WIDTH - 1 : 0]    data_in_1 ;
    wire    [0:NUM_PORTS -2][DEST_WIDTH - 1 : 0]    dest_in_1 ;
    wire    [0:NUM_PORTS -2]                        is_tail_in_1 ;
    wire    [0:NUM_PORTS -2]                        send_in_1 ;
    wire   [0:NUM_PORTS -2]                        credit_out_1 ;

    // wire   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_out_1 ;
    wire   [0:NUM_PORTS - 2][DEST_WIDTH - 1 : 0]    dest_out_1 ;
    wire   [0:NUM_PORTS - 2]                        is_tail_out_1 ;
    wire   [0:NUM_PORTS - 2]                        send_out_1 ;
    wire    [0:NUM_PORTS - 2]                        credit_in_1 ;

    // wire    [0:NUM_PORTS -2][FLIT_WIDTH - 1 : 0]    data_in_2 ;
    wire    [0:NUM_PORTS -2][DEST_WIDTH - 1 : 0]    dest_in_2 ;
    wire    [0:NUM_PORTS -2]                        is_tail_in_2 ;
    wire    [0:NUM_PORTS -2]                        send_in_2 ;
    wire   [0:NUM_PORTS -2]                        credit_out_2 ;

    // wire   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_out_2 ;
    wire   [0:NUM_PORTS - 2][DEST_WIDTH - 1 : 0]    dest_out_2 ;
    wire   [0:NUM_PORTS - 2]                        is_tail_out_2 ;
    wire   [0:NUM_PORTS - 2]                        send_out_2 ;
    wire    [0:NUM_PORTS - 2]                        credit_in_2 ;


    assign router_address[0*RTR_ADDR_WIDTH + COL_WIDTH +: ROW_WIDTH] = 0;
    assign router_address[0*RTR_ADDR_WIDTH +: COL_WIDTH] = 1;

    assign router_address[1*RTR_ADDR_WIDTH + COL_WIDTH +: ROW_WIDTH] = 1;
    assign router_address[1*RTR_ADDR_WIDTH +: COL_WIDTH] = 0;

    assign router_address[2*RTR_ADDR_WIDTH + COL_WIDTH +: ROW_WIDTH] = 1;
    assign router_address[2*RTR_ADDR_WIDTH +: COL_WIDTH] = 1;


    // rtr 0
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
    ) router_inst_0_1 (
        .clk_noc(CLK_NOC),
        .clk_usr(CLK),
        .rst_n(RST_N),
        .axis_in_tvalid(axis_in_tvalid[0]),
        .axis_in_tready(axis_in_tready[0]),
        .axis_in_tdata(axis_in_tdata[0*DATAW +: DATAW]),
        .axis_in_tlast(axis_in_tlast[0]),
        .axis_in_tdest(axis_in_tdest[0*DESTW +: DESTW]),
        .axis_out_tvalid(axis_out_tvalid[0]),
        .axis_out_tready(axis_out_tready[0]),
        .axis_out_tdata(axis_out_tdata[0*DATAW +: DATAW]),
        .axis_out_tlast(axis_out_tlast[0]),
        .axis_out_tdest(axis_out_tdest[0*DESTW +: DESTW]),

        .data_in(temp_data_in_0),
        .dest_in(temp_dest_in_0),
        .is_tail_in(temp_is_tail_in_0),
        .send_in(temp_send_in_0),
        .credit_out(temp_credit_out_0),
        .data_out(temp_data_out_0),
        .dest_out(temp_dest_out_0),
        .is_tail_out(temp_is_tail_out_0),
        .send_out(temp_send_out_0),
        .credit_in(temp_credit_in_0),

        .DISABLE_TURNS(DISABLE_TURNS_0),
        
        .router_address(router_address[0*RTR_ADDR_WIDTH +: RTR_ADDR_WIDTH])
    );

    // rtr 1
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
    ) router_inst_1_0 (
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

        .data_in(temp_data_in_1),
        .dest_in(temp_dest_in_1),
        .is_tail_in(temp_is_tail_in_1),
        .send_in(temp_send_in_1),
        .credit_out(temp_credit_out_1),
        .data_out(temp_data_out_1),
        .dest_out(temp_dest_out_1),
        .is_tail_out(temp_is_tail_out_1),
        .send_out(temp_send_out_1),
        .credit_in(temp_credit_in_1),

        .DISABLE_TURNS(DISABLE_TURNS_1),


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
    ) router_inst_1_1 (
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

        .data_in(temp_data_in_2),
        .dest_in(temp_dest_in_2),
        .is_tail_in(temp_is_tail_in_2),
        .send_in(temp_send_in_2),
        .credit_out(temp_credit_out_2),
        .data_out(temp_data_out_2),
        .dest_out(temp_dest_out_2),
        .is_tail_out(temp_is_tail_out_2),
        .send_out(temp_send_out_2),
        .credit_in(temp_credit_in_2),

        .DISABLE_TURNS(DISABLE_TURNS_2),


        .router_address(router_address[2*RTR_ADDR_WIDTH +: RTR_ADDR_WIDTH])
    );

    // router to router
    assign temp_data_in_0  = temp_data_out_1;
    assign temp_dest_in_0  = temp_dest_out_1; 
    assign temp_is_tail_in_0  = temp_is_tail_out_1; 
    assign temp_send_in_0  = temp_send_out_1; 

    assign temp_data_in_1  = temp_data_out_2; 
    assign temp_dest_in_1  = temp_dest_out_2; 
    assign temp_is_tail_in_1  = temp_is_tail_out_2; 
    assign temp_send_in_1  = temp_send_out_2; 

    assign temp_credit_in_2 = temp_credit_out_1;
    assign temp_credit_in_1 = temp_credit_out_0;


    assign dummy_axis_out_tlast_0 = axis_out_tlast[0];
    assign dummy_axis_out_tlast_1 = axis_out_tlast[1];
    assign dummy_axis_out_tlast_2 = axis_out_tlast[2];

    assign axis_in_tvalid[2] = AXIS_S_TVALID ;
    assign axis_in_tdata[2*DATAW +: DATAW] = AXIS_S_TDATA ;;
    assign axis_in_tlast[2] = AXIS_S_TLAST ;
    assign axis_in_tdest[2*DESTW +: DESTW] = AXIS_S_TDEST ;

    assign AXIS_S_TREADY = axis_in_tready[2] ;
    
    assign AXIS_M_TVALID = axis_out_tvalid[2] ;
    assign axis_out_tready[2] =  AXIS_M_TREADY ;
    assign AXIS_M_TDATA = axis_out_tdata[2*DATAW +: DATAW] ; 
    assign AXIS_M_TLAST = axis_out_tlast[2] ;
    // assign AXIS_M_TID =
    assign AXIS_M_TUSER = axis_out_tuser[2*USERW +: USERW] ;
    assign AXIS_M_TDEST = axis_out_tdest[2*DESTW +: DESTW] ;

endmodule