module mesh_4x4 #(
    // parameters for sweep
    parameter NUM_PORTS = 5,
    parameter NOC_NUM_ENDPOINTS = 16, // rows * cols
    parameter FLIT_BUFFER_DEPTH = 8,
    parameter SERDES_BUFFER_DEPTH = 8,

    parameter TID_WIDTH = 2,
    parameter TDEST_WIDTH = 4,
    parameter TDATA_WIDTH = 128,

    parameter SERIALIZATION_FACTOR = 2,
    parameter CLKCROSS_FACTOR = 1,
    parameter bit SINGLE_CLOCK = 1,

    // fixed parameters     
    parameter RESET_SYNC_EXTEND_CYCLES = 2,
    parameter RESET_NUM_OUTPUT_REGISTERS = 1,
    parameter SERDES_IN_BUFFER_DEPTH = SERDES_BUFFER_DEPTH,
    parameter SERDES_OUT_BUFFER_DEPTH = SERDES_BUFFER_DEPTH,
    parameter SERDES_EXTRA_SYNC_STAGES = 0,
    parameter SERDES_FORCE_MLAB = 0,

    // parameter ROUTING_TABLE_HEX = "routing_tables/router_4x4/",

    parameter bit ROUTER_PIPELINE_ROUTE_COMPUTE = 1,
    parameter bit ROUTER_PIPELINE_ARBITER = 1,
    parameter bit ROUTER_PIPELINE_OUTPUT = 1,
    parameter bit ROUTER_FORCE_MLAB = 0,

    parameter FLIT_WIDTH = TDATA_WIDTH / SERIALIZATION_FACTOR / CLKCROSS_FACTOR,
    parameter DEST_WIDTH = 4,

    parameter RTR_ADDR_WIDTH=4,
    parameter ROUTE_WIDTH=3,

    parameter NUM_PIPELINE = 0

) (
    input  wire clk_noc,
    input  wire clk_usr,
    input  wire rst_n,
   
    // injection port
    input   wire                            axis_in_tvalid_0,
        input   wire                           axis_in_tvalid_1,
        input   wire                           axis_in_tvalid_2,
        input   wire                           axis_in_tvalid_3,
        input   wire                           axis_in_tvalid_4,
        input   wire                           axis_in_tvalid_5,
        input   wire                           axis_in_tvalid_6,
        input   wire                           axis_in_tvalid_7,
        input   wire                           axis_in_tvalid_8,
        input   wire                           axis_in_tvalid_9,
        input   wire                           axis_in_tvalid_10,
        input   wire                           axis_in_tvalid_11,   
        input   wire                           axis_in_tvalid_12,
        input   wire                           axis_in_tvalid_13,
        input   wire                           axis_in_tvalid_14,
        input   wire                           axis_in_tvalid_15,


    output  logic                           axis_in_tready_0,
        output  logic                           axis_in_tready_1,
        output  logic                           axis_in_tready_2,
        output  logic                           axis_in_tready_3,
        output  logic                           axis_in_tready_4,
        output  logic                           axis_in_tready_5,
        output  logic                           axis_in_tready_6,
        output  logic                           axis_in_tready_7,
        output  logic                           axis_in_tready_8,
        output  logic                           axis_in_tready_9,
        output  logic                           axis_in_tready_10,
        output  logic                           axis_in_tready_11,
        output  logic                           axis_in_tready_12,
        output  logic                           axis_in_tready_13,
        output  logic                           axis_in_tready_14,
        output  logic                           axis_in_tready_15,



    input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_0,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_1,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_2,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_3,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_4,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_5,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_6,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_7,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_8,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_9,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_10,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_11,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_12,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_13,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_14,
        input   wire    [TDATA_WIDTH - 1 : 0]   axis_in_tdata_15,



    input   wire                            axis_in_tlast_0,
        input   wire                            axis_in_tlast_1,
        input   wire                            axis_in_tlast_2,
        input   wire                            axis_in_tlast_3,
        input   wire                            axis_in_tlast_4,
        input   wire                            axis_in_tlast_5,
        input   wire                            axis_in_tlast_6,
        input   wire                            axis_in_tlast_7,
        input   wire                            axis_in_tlast_8,
        input   wire                            axis_in_tlast_9,
        input   wire                            axis_in_tlast_10,
        input   wire                            axis_in_tlast_11,
        input   wire                            axis_in_tlast_12,
        input   wire                            axis_in_tlast_13,
        input   wire                            axis_in_tlast_14,
        input   wire                            axis_in_tlast_15,


    input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_0,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_1,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_2,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_3,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_4,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_5,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_6,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_7,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_8,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_9,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_10,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_11,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_12,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_13,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_14,
        input   wire    [TID_WIDTH - 1 : 0]     axis_in_tid_15,

    input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_0,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_1,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_2,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_3,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_4,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_5,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_6,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_7,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_8,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_9,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_10,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_11,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_12,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_13,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_14,
        input   wire    [TDEST_WIDTH - 1 : 0]   axis_in_tdest_15,

    output  logic                           axis_out_tvalid_0,
        output  logic                           axis_out_tvalid_1,
        output  logic                           axis_out_tvalid_2,
        output  logic                           axis_out_tvalid_3,
        output  logic                           axis_out_tvalid_4,
        output  logic                           axis_out_tvalid_5,
        output  logic                           axis_out_tvalid_6,
        output  logic                           axis_out_tvalid_7,
        output  logic                           axis_out_tvalid_8,
        output  logic                           axis_out_tvalid_9,
        output  logic                           axis_out_tvalid_10,
        output  logic                           axis_out_tvalid_11,
        output  logic                           axis_out_tvalid_12,
        output  logic                           axis_out_tvalid_13,
        output  logic                           axis_out_tvalid_14,
        output  logic                           axis_out_tvalid_15,


    input   wire                            axis_out_tready_0,
        input   wire                            axis_out_tready_1,
        input   wire                            axis_out_tready_2,
        input   wire                            axis_out_tready_3,
        input   wire                            axis_out_tready_4,
        input   wire                            axis_out_tready_5,
        input   wire                            axis_out_tready_6,
        input   wire                            axis_out_tready_7,
        input   wire                            axis_out_tready_8,
        input   wire                            axis_out_tready_9,
        input   wire                            axis_out_tready_10,
        input   wire                            axis_out_tready_11,
        input   wire                            axis_out_tready_12,
        input   wire                            axis_out_tready_13,
        input   wire                            axis_out_tready_14,
        input   wire                            axis_out_tready_15,

    output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_0,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_1,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_2,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_3,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_4,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_5,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_6,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_7,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_8,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_9,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_10,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_11,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_12,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_13,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_14,
        output  logic   [TDATA_WIDTH - 1 : 0]   axis_out_tdata_15,

    output  logic                           axis_out_tlast_0,
        output  logic                           axis_out_tlast_1,
        output  logic                           axis_out_tlast_2,
        output  logic                           axis_out_tlast_3,
        output  logic                           axis_out_tlast_4,
        output  logic                           axis_out_tlast_5,
        output  logic                           axis_out_tlast_6,
        output  logic                           axis_out_tlast_7,
        output  logic                           axis_out_tlast_8,
        output  logic                           axis_out_tlast_9,
        output  logic                           axis_out_tlast_10,
        output  logic                           axis_out_tlast_11,
        output  logic                           axis_out_tlast_12,
        output  logic                           axis_out_tlast_13,
        output  logic                           axis_out_tlast_14,
        output  logic                           axis_out_tlast_15,

    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_0,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_1,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_2,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_3,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_4,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_5,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_6,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_7,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_8,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_9,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_10,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_11,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_12,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_13,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_14,
    output  logic   [TID_WIDTH - 1 : 0]     axis_out_tid_15,

    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_0,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_1,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_2,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_3,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_4,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_5,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_6,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_7,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_8,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_9,   
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_10,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_11,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_12,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_13,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_14,
    output  logic   [TDEST_WIDTH - 1 : 0]   axis_out_tdest_15

);


    wire    [0:NUM_PORTS -2][FLIT_WIDTH - 1 : 0]    data_in_0 ;
    wire    [0:NUM_PORTS -2][FLIT_WIDTH - 1 : 0]    data_in_1 ;
    wire    [0:NUM_PORTS -2][FLIT_WIDTH - 1 : 0]    data_in_2 ;
    wire    [0:NUM_PORTS -2][FLIT_WIDTH - 1 : 0]    data_in_3 ;
    wire    [0:NUM_PORTS -2][FLIT_WIDTH - 1 : 0]    data_in_4 ;
    wire    [0:NUM_PORTS -2][FLIT_WIDTH - 1 : 0]    data_in_5 ;
    wire    [0:NUM_PORTS -2][FLIT_WIDTH - 1 : 0]    data_in_6 ;
    wire    [0:NUM_PORTS -2][FLIT_WIDTH - 1 : 0]    data_in_7 ;
    wire    [0:NUM_PORTS -2][FLIT_WIDTH - 1 : 0]    data_in_8 ;
    wire    [0:NUM_PORTS -2][FLIT_WIDTH - 1 : 0]    data_in_9 ;
    wire    [0:NUM_PORTS -2][FLIT_WIDTH - 1 : 0]    data_in_10 ;
    wire    [0:NUM_PORTS -2][FLIT_WIDTH - 1 : 0]    data_in_11 ;
    wire    [0:NUM_PORTS -2][FLIT_WIDTH - 1 : 0]    data_in_12 ;
    wire    [0:NUM_PORTS -2][FLIT_WIDTH - 1 : 0]    data_in_13 ;
    wire    [0:NUM_PORTS -2][FLIT_WIDTH - 1 : 0]    data_in_14 ;
    wire    [0:NUM_PORTS -2][FLIT_WIDTH - 1 : 0]    data_in_15 ;

    wire    [0:NUM_PORTS -2][DEST_WIDTH - 1 : 0]    dest_in_0 ;
    wire    [0:NUM_PORTS -2][DEST_WIDTH - 1 : 0]    dest_in_1 ;
    wire    [0:NUM_PORTS -2][DEST_WIDTH - 1 : 0]    dest_in_2 ;
    wire    [0:NUM_PORTS -2][DEST_WIDTH - 1 : 0]    dest_in_3 ;
    wire    [0:NUM_PORTS -2][DEST_WIDTH - 1 : 0]    dest_in_4 ;
    wire    [0:NUM_PORTS -2][DEST_WIDTH - 1 : 0]    dest_in_5 ;
    wire    [0:NUM_PORTS -2][DEST_WIDTH - 1 : 0]    dest_in_6 ;
    wire    [0:NUM_PORTS -2][DEST_WIDTH - 1 : 0]    dest_in_7 ;
    wire    [0:NUM_PORTS -2][DEST_WIDTH - 1 : 0]    dest_in_8 ;
    wire    [0:NUM_PORTS -2][DEST_WIDTH - 1 : 0]    dest_in_9 ;
    wire    [0:NUM_PORTS -2][DEST_WIDTH - 1 : 0]    dest_in_10 ;
    wire    [0:NUM_PORTS -2][DEST_WIDTH - 1 : 0]    dest_in_11 ;
    wire    [0:NUM_PORTS -2][DEST_WIDTH - 1 : 0]    dest_in_12 ;
    wire    [0:NUM_PORTS -2][DEST_WIDTH - 1 : 0]    dest_in_13 ;
    wire    [0:NUM_PORTS -2][DEST_WIDTH - 1 : 0]    dest_in_14 ;
    wire    [0:NUM_PORTS -2][DEST_WIDTH - 1 : 0]    dest_in_15 ;

    wire    [0:NUM_PORTS -2]                        is_tail_in_0  ;
    wire    [0:NUM_PORTS -2]                        is_tail_in_1  ;
    wire    [0:NUM_PORTS -2]                        is_tail_in_2  ;
    wire    [0:NUM_PORTS -2]                        is_tail_in_3  ;
    wire    [0:NUM_PORTS -2]                        is_tail_in_4  ;
    wire    [0:NUM_PORTS -2]                        is_tail_in_5  ;
    wire    [0:NUM_PORTS -2]                        is_tail_in_6  ;
    wire    [0:NUM_PORTS -2]                        is_tail_in_7  ;
    wire    [0:NUM_PORTS -2]                        is_tail_in_8  ;
    wire    [0:NUM_PORTS -2]                        is_tail_in_9  ;
    wire    [0:NUM_PORTS -2]                        is_tail_in_10 ;
    wire    [0:NUM_PORTS -2]                        is_tail_in_11 ;
    wire    [0:NUM_PORTS -2]                        is_tail_in_12 ;
    wire    [0:NUM_PORTS -2]                        is_tail_in_13 ;
    wire    [0:NUM_PORTS -2]                        is_tail_in_14 ;
    wire    [0:NUM_PORTS -2]                        is_tail_in_15 ;

    wire    [0:NUM_PORTS -2]                        send_in_0     ;
    wire    [0:NUM_PORTS -2]                        send_in_1     ;
    wire    [0:NUM_PORTS -2]                        send_in_2     ;
    wire    [0:NUM_PORTS -2]                        send_in_3     ;
    wire    [0:NUM_PORTS -2]                        send_in_4     ;
    wire    [0:NUM_PORTS -2]                        send_in_5     ;
    wire    [0:NUM_PORTS -2]                        send_in_6     ;
    wire    [0:NUM_PORTS -2]                        send_in_7     ;
    wire    [0:NUM_PORTS -2]                        send_in_8     ;
    wire    [0:NUM_PORTS -2]                        send_in_9     ;
    wire    [0:NUM_PORTS -2]                        send_in_10    ;
    wire    [0:NUM_PORTS -2]                        send_in_11    ;
    wire    [0:NUM_PORTS -2]                        send_in_12    ;
    wire    [0:NUM_PORTS -2]                        send_in_13    ;
    wire    [0:NUM_PORTS -2]                        send_in_14    ;
    wire    [0:NUM_PORTS -2]                        send_in_15    ;

    logic   [0:NUM_PORTS -2]                        credit_out_0  ;
    logic   [0:NUM_PORTS -2]                        credit_out_1  ;
    logic   [0:NUM_PORTS -2]                        credit_out_2  ;
    logic   [0:NUM_PORTS -2]                        credit_out_3  ;
    logic   [0:NUM_PORTS -2]                        credit_out_4  ;
    logic   [0:NUM_PORTS -2]                        credit_out_5  ;
    logic   [0:NUM_PORTS -2]                        credit_out_6  ;
    logic   [0:NUM_PORTS -2]                        credit_out_7  ;
    logic   [0:NUM_PORTS -2]                        credit_out_8  ;
    logic   [0:NUM_PORTS -2]                        credit_out_9  ;
    logic   [0:NUM_PORTS -2]                        credit_out_10 ;
    logic   [0:NUM_PORTS -2]                        credit_out_11 ;
    logic   [0:NUM_PORTS -2]                        credit_out_12 ;
    logic   [0:NUM_PORTS -2]                        credit_out_13 ;
    logic   [0:NUM_PORTS -2]                        credit_out_14 ;
    logic   [0:NUM_PORTS -2]                        credit_out_15 ;

    logic   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_out_0    ;
    logic   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_out_1    ;
    logic   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_out_2    ;
    logic   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_out_3    ;
    logic   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_out_4    ;
    logic   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_out_5    ;
    logic   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_out_6    ;
    logic   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_out_7    ;
    logic   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_out_8    ;
    logic   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_out_9    ;
    logic   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_out_10   ;
    logic   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_out_11   ;
    logic   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_out_12   ;
    logic   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_out_13   ;
    logic   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_out_14   ;
    logic   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_out_15   ;

    logic   [0:NUM_PORTS - 2][DEST_WIDTH - 1 : 0]    dest_out_0    ;
    logic   [0:NUM_PORTS - 2][DEST_WIDTH - 1 : 0]    dest_out_1    ;
    logic   [0:NUM_PORTS - 2][DEST_WIDTH - 1 : 0]    dest_out_2    ;
    logic   [0:NUM_PORTS - 2][DEST_WIDTH - 1 : 0]    dest_out_3    ;
    logic   [0:NUM_PORTS - 2][DEST_WIDTH - 1 : 0]    dest_out_4    ;
    logic   [0:NUM_PORTS - 2][DEST_WIDTH - 1 : 0]    dest_out_5    ;
    logic   [0:NUM_PORTS - 2][DEST_WIDTH - 1 : 0]    dest_out_6    ;
    logic   [0:NUM_PORTS - 2][DEST_WIDTH - 1 : 0]    dest_out_7    ;
    logic   [0:NUM_PORTS - 2][DEST_WIDTH - 1 : 0]    dest_out_8    ;
    logic   [0:NUM_PORTS - 2][DEST_WIDTH - 1 : 0]    dest_out_9    ;
    logic   [0:NUM_PORTS - 2][DEST_WIDTH - 1 : 0]    dest_out_10   ;
    logic   [0:NUM_PORTS - 2][DEST_WIDTH - 1 : 0]    dest_out_11   ;
    logic   [0:NUM_PORTS - 2][DEST_WIDTH - 1 : 0]    dest_out_12   ;
    logic   [0:NUM_PORTS - 2][DEST_WIDTH - 1 : 0]    dest_out_13   ;
    logic   [0:NUM_PORTS - 2][DEST_WIDTH - 1 : 0]    dest_out_14   ;
    logic   [0:NUM_PORTS - 2][DEST_WIDTH - 1 : 0]    dest_out_15   ;

    logic   [0:NUM_PORTS - 2]                        is_tail_out_0  ;
    logic   [0:NUM_PORTS - 2]                        is_tail_out_1  ;
    logic   [0:NUM_PORTS - 2]                        is_tail_out_2  ;
    logic   [0:NUM_PORTS - 2]                        is_tail_out_3  ;
    logic   [0:NUM_PORTS - 2]                        is_tail_out_4  ;
    logic   [0:NUM_PORTS - 2]                        is_tail_out_5  ;
    logic   [0:NUM_PORTS - 2]                        is_tail_out_6  ;
    logic   [0:NUM_PORTS - 2]                        is_tail_out_7  ;
    logic   [0:NUM_PORTS - 2]                        is_tail_out_8  ;
    logic   [0:NUM_PORTS - 2]                        is_tail_out_9  ;
    logic   [0:NUM_PORTS - 2]                        is_tail_out_10 ;
    logic   [0:NUM_PORTS - 2]                        is_tail_out_11 ;
    logic   [0:NUM_PORTS - 2]                        is_tail_out_12 ;
    logic   [0:NUM_PORTS - 2]                        is_tail_out_13 ;
    logic   [0:NUM_PORTS - 2]                        is_tail_out_14 ;
    logic   [0:NUM_PORTS - 2]                        is_tail_out_15 ;

    logic   [0:NUM_PORTS - 2]                        send_out_0    ;
    logic   [0:NUM_PORTS - 2]                        send_out_1    ;
    logic   [0:NUM_PORTS - 2]                        send_out_2    ;
    logic   [0:NUM_PORTS - 2]                        send_out_3    ;
    logic   [0:NUM_PORTS - 2]                        send_out_4    ;
    logic   [0:NUM_PORTS - 2]                        send_out_5    ;
    logic   [0:NUM_PORTS - 2]                        send_out_6    ;
    logic   [0:NUM_PORTS - 2]                        send_out_7    ;
    logic   [0:NUM_PORTS - 2]                        send_out_8    ;
    logic   [0:NUM_PORTS - 2]                        send_out_9    ;
    logic   [0:NUM_PORTS - 2]                        send_out_10   ;
    logic   [0:NUM_PORTS - 2]                        send_out_11   ;
    logic   [0:NUM_PORTS - 2]                        send_out_12   ;
    logic   [0:NUM_PORTS - 2]                        send_out_13   ;
    logic   [0:NUM_PORTS - 2]                        send_out_14   ;
    logic   [0:NUM_PORTS - 2]                        send_out_15   ;

    wire    [0:NUM_PORTS - 2]                        credit_in_0   ;
    wire    [0:NUM_PORTS - 2]                        credit_in_1   ;
    wire    [0:NUM_PORTS - 2]                        credit_in_2   ;
    wire    [0:NUM_PORTS - 2]                        credit_in_3   ;
    wire    [0:NUM_PORTS - 2]                        credit_in_4   ;
    wire    [0:NUM_PORTS - 2]                        credit_in_5   ;
    wire    [0:NUM_PORTS - 2]                        credit_in_6   ;
    wire    [0:NUM_PORTS - 2]                        credit_in_7   ;
    wire    [0:NUM_PORTS - 2]                        credit_in_8   ;
    wire    [0:NUM_PORTS - 2]                        credit_in_9   ;
    wire    [0:NUM_PORTS - 2]                        credit_in_10  ;
    wire    [0:NUM_PORTS - 2]                        credit_in_11  ;
    wire    [0:NUM_PORTS - 2]                        credit_in_12  ;
    wire    [0:NUM_PORTS - 2]                        credit_in_13  ;
    wire    [0:NUM_PORTS - 2]                        credit_in_14  ;
    wire    [0:NUM_PORTS - 2]                        credit_in_15  ;


    wire     [RTR_ADDR_WIDTH-1 : 0] router_address_0;
    wire     [RTR_ADDR_WIDTH-1 : 0] router_address_1;
    wire     [RTR_ADDR_WIDTH-1 : 0] router_address_2;
    wire     [RTR_ADDR_WIDTH-1 : 0] router_address_3;
    wire     [RTR_ADDR_WIDTH-1 : 0] router_address_4;
    wire     [RTR_ADDR_WIDTH-1 : 0] router_address_5;
    wire     [RTR_ADDR_WIDTH-1 : 0] router_address_6;
    wire     [RTR_ADDR_WIDTH-1 : 0] router_address_7;
    wire     [RTR_ADDR_WIDTH-1 : 0] router_address_8;
    wire     [RTR_ADDR_WIDTH-1 : 0] router_address_9;
    wire     [RTR_ADDR_WIDTH-1 : 0] router_address_10;
    wire     [RTR_ADDR_WIDTH-1 : 0] router_address_11;
    wire     [RTR_ADDR_WIDTH-1 : 0] router_address_12;
    wire     [RTR_ADDR_WIDTH-1 : 0] router_address_13;
    wire     [RTR_ADDR_WIDTH-1 : 0] router_address_14;
    wire     [RTR_ADDR_WIDTH-1 : 0] router_address_15;

    wire  [0: NOC_NUM_ENDPOINTS - 1][ROUTE_WIDTH - 1 : 0] routing_table_0 ;
    wire  [0: NOC_NUM_ENDPOINTS - 1][ROUTE_WIDTH - 1 : 0] routing_table_1 ;
    wire  [0: NOC_NUM_ENDPOINTS - 1][ROUTE_WIDTH - 1 : 0] routing_table_2 ;
    wire  [0: NOC_NUM_ENDPOINTS - 1][ROUTE_WIDTH - 1 : 0] routing_table_3 ;
    wire  [0: NOC_NUM_ENDPOINTS - 1][ROUTE_WIDTH - 1 : 0] routing_table_4 ;
    wire  [0: NOC_NUM_ENDPOINTS - 1][ROUTE_WIDTH - 1 : 0] routing_table_5 ;
    wire  [0: NOC_NUM_ENDPOINTS - 1][ROUTE_WIDTH - 1 : 0] routing_table_6 ;
    wire  [0: NOC_NUM_ENDPOINTS - 1][ROUTE_WIDTH - 1 : 0] routing_table_7 ;
    wire  [0: NOC_NUM_ENDPOINTS - 1][ROUTE_WIDTH - 1 : 0] routing_table_8 ;
    wire  [0: NOC_NUM_ENDPOINTS - 1][ROUTE_WIDTH - 1 : 0] routing_table_9 ;
    wire  [0: NOC_NUM_ENDPOINTS - 1][ROUTE_WIDTH - 1 : 0] routing_table_10 ;
    wire  [0: NOC_NUM_ENDPOINTS - 1][ROUTE_WIDTH - 1 : 0] routing_table_11 ;
    wire  [0: NOC_NUM_ENDPOINTS - 1][ROUTE_WIDTH - 1 : 0] routing_table_12 ;
    wire  [0: NOC_NUM_ENDPOINTS - 1][ROUTE_WIDTH - 1 : 0] routing_table_13 ;
    wire  [0: NOC_NUM_ENDPOINTS - 1][ROUTE_WIDTH - 1 : 0] routing_table_14 ;
    wire  [0: NOC_NUM_ENDPOINTS - 1][ROUTE_WIDTH - 1 : 0] routing_table_15 ;

// reg ][ROUTE_WIDTH - 1 : 0] routing_table  ;



    bit     [0:NUM_PORTS-1][0:NUM_PORTS-1]           DISABLE_TURNS_0 ;
    bit     [0:NUM_PORTS-1][0:NUM_PORTS-1]           DISABLE_TURNS_1 ;
    bit     [0:NUM_PORTS-1][0:NUM_PORTS-1]           DISABLE_TURNS_2 ;
    bit     [0:NUM_PORTS-1][0:NUM_PORTS-1]           DISABLE_TURNS_3 ;
    bit     [0:NUM_PORTS-1][0:NUM_PORTS-1]           DISABLE_TURNS_4 ;
    bit     [0:NUM_PORTS-1][0:NUM_PORTS-1]           DISABLE_TURNS_5 ;   
    bit     [0:NUM_PORTS-1][0:NUM_PORTS-1]           DISABLE_TURNS_6 ;
    bit     [0:NUM_PORTS-1][0:NUM_PORTS-1]           DISABLE_TURNS_7 ;
    bit     [0:NUM_PORTS-1][0:NUM_PORTS-1]           DISABLE_TURNS_8 ;
    bit     [0:NUM_PORTS-1][0:NUM_PORTS-1]           DISABLE_TURNS_9 ;
    bit     [0:NUM_PORTS-1][0:NUM_PORTS-1]           DISABLE_TURNS_10 ;  
    bit     [0:NUM_PORTS-1][0:NUM_PORTS-1]           DISABLE_TURNS_11 ;
    bit     [0:NUM_PORTS-1][0:NUM_PORTS-1]           DISABLE_TURNS_12 ;
    bit     [0:NUM_PORTS-1][0:NUM_PORTS-1]           DISABLE_TURNS_13 ;
    bit     [0:NUM_PORTS-1][0:NUM_PORTS-1]           DISABLE_TURNS_14 ;
    bit     [0:NUM_PORTS-1][0:NUM_PORTS-1]           DISABLE_TURNS_15 ;

    router_wrap #(
        .SERIALIZATION_FACTOR(SERIALIZATION_FACTOR),
        .CLKCROSS_FACTOR(CLKCROSS_FACTOR),
        .SINGLE_CLOCK(SINGLE_CLOCK)
    ) rtr_inst0 (
        .clk_usr(clk_usr),
        .clk_noc(clk_noc),
        .rst_n(rst_n),

        .data_in(data_in_0),
        .dest_in(dest_in_0),
        .is_tail_in(is_tail_in_0),
        .send_in(send_in_0),
        .credit_out(credit_out_0),

        .data_out(data_out_0),
        .dest_out(dest_out_0),
        .is_tail_out(is_tail_out_0),
        .send_out(send_out_0),
        .credit_in(credit_in_0),

        .DISABLE_TURNS(DISABLE_TURNS_0),
        .routing_table(routing_table_0),
        .router_address(router_address_0),

        .axis_in_tvalid(axis_in_tvalid_0),
        .axis_in_tready(axis_in_tready_0),
        .axis_in_tdata(axis_in_tdata_0),
        .axis_in_tlast(axis_in_tlast_0),
        .axis_in_tid(axis_in_tid_0),
        .axis_in_tdest(axis_in_tdest_0),

        .axis_out_tvalid(axis_out_tvalid_0),
        .axis_out_tready(axis_out_tready_0),
        .axis_out_tdata(axis_out_tdata_0),
        .axis_out_tlast(axis_out_tlast_0),
        .axis_out_tid(axis_out_tid_0),
        .axis_out_tdest(axis_out_tdest_0)
    );

    router_wrap #(
        .SERIALIZATION_FACTOR(SERIALIZATION_FACTOR),
        .CLKCROSS_FACTOR(CLKCROSS_FACTOR),
        .SINGLE_CLOCK(SINGLE_CLOCK)
    ) rtr_inst1 (
        .clk_usr(clk_usr),
        .clk_noc(clk_noc),
        .rst_n(rst_n),

        .data_in(data_in_1),
        .dest_in(dest_in_1),
        .is_tail_in(is_tail_in_1),
        .send_in(send_in_1),
        .credit_out(credit_out_1),

        .data_out(data_out_1),
        .dest_out(dest_out_1),
        .is_tail_out(is_tail_out_1),
        .send_out(send_out_1),
        .credit_in(credit_in_1),

        .DISABLE_TURNS(DISABLE_TURNS_1),
        .routing_table(routing_table_1),
        .router_address(router_address_1),

        .axis_in_tvalid(axis_in_tvalid_1),
        .axis_in_tready(axis_in_tready_1),
        .axis_in_tdata(axis_in_tdata_1),
        .axis_in_tlast(axis_in_tlast_1),
        .axis_in_tid(axis_in_tid_1),
        .axis_in_tdest(axis_in_tdest_1),

        .axis_out_tvalid(axis_out_tvalid_1),
        .axis_out_tready(axis_out_tready_1),
        .axis_out_tdata(axis_out_tdata_1),
        .axis_out_tlast(axis_out_tlast_1),
        .axis_out_tid(axis_out_tid_1),
        .axis_out_tdest(axis_out_tdest_1)
    );

    router_wrap #(
        .SERIALIZATION_FACTOR(SERIALIZATION_FACTOR),
        .CLKCROSS_FACTOR(CLKCROSS_FACTOR),
        .SINGLE_CLOCK(SINGLE_CLOCK)
    ) rtr_inst2 (
        .clk_usr(clk_usr),
        .clk_noc(clk_noc),
        .rst_n(rst_n),

        .data_in(data_in_2),
        .dest_in(dest_in_2),
        .is_tail_in(is_tail_in_2),
        .send_in(send_in_2),
        .credit_out(credit_out_2),

        .data_out(data_out_2),
        .dest_out(dest_out_2),
        .is_tail_out(is_tail_out_2),
        .send_out(send_out_2),
        .credit_in(credit_in_2),

        .DISABLE_TURNS(DISABLE_TURNS_2),
        .routing_table(routing_table_2),
        .router_address(router_address_2),

        .axis_in_tvalid(axis_in_tvalid_2),
        .axis_in_tready(axis_in_tready_2),
        .axis_in_tdata(axis_in_tdata_2),
        .axis_in_tlast(axis_in_tlast_2),
        .axis_in_tid(axis_in_tid_2),
        .axis_in_tdest(axis_in_tdest_2),

        .axis_out_tvalid(axis_out_tvalid_2),
        .axis_out_tready(axis_out_tready_2),
        .axis_out_tdata(axis_out_tdata_2),
        .axis_out_tlast(axis_out_tlast_2),
        .axis_out_tid(axis_out_tid_2),
        .axis_out_tdest(axis_out_tdest_2)
    );

    router_wrap #(
        .SERIALIZATION_FACTOR(SERIALIZATION_FACTOR),
        .CLKCROSS_FACTOR(CLKCROSS_FACTOR),
        .SINGLE_CLOCK(SINGLE_CLOCK)
    ) rtr_inst3 (
        .clk_usr(clk_usr),
        .clk_noc(clk_noc),
        .rst_n(rst_n),

        .data_in(data_in_3),
        .dest_in(dest_in_3),
        .is_tail_in(is_tail_in_3),
        .send_in(send_in_3),
        .credit_out(credit_out_3),

        .data_out(data_out_3),
        .dest_out(dest_out_3),
        .is_tail_out(is_tail_out_3),
        .send_out(send_out_3),
        .credit_in(credit_in_3),

        .DISABLE_TURNS(DISABLE_TURNS_3),
        .routing_table(routing_table_3),
        .router_address(router_address_3),

        .axis_in_tvalid(axis_in_tvalid_3),
        .axis_in_tready(axis_in_tready_3),
        .axis_in_tdata(axis_in_tdata_3),
        .axis_in_tlast(axis_in_tlast_3),
        .axis_in_tid(axis_in_tid_3),
        .axis_in_tdest(axis_in_tdest_3),

        .axis_out_tvalid(axis_out_tvalid_3),
        .axis_out_tready(axis_out_tready_3),
        .axis_out_tdata(axis_out_tdata_3),
        .axis_out_tlast(axis_out_tlast_3),
        .axis_out_tid(axis_out_tid_3),
        .axis_out_tdest(axis_out_tdest_3)
    );
    router_wrap #(
        .SERIALIZATION_FACTOR(SERIALIZATION_FACTOR),
        .CLKCROSS_FACTOR(CLKCROSS_FACTOR),
        .SINGLE_CLOCK(SINGLE_CLOCK)
    ) rtr_inst4 (
        .clk_usr(clk_usr),
        .clk_noc(clk_noc),
        .rst_n(rst_n),

        .data_in(data_in_4),
        .dest_in(dest_in_4),
        .is_tail_in(is_tail_in_4),
        .send_in(send_in_4),
        .credit_out(credit_out_4),

        .data_out(data_out_4),
        .dest_out(dest_out_4),
        .is_tail_out(is_tail_out_4),
        .send_out(send_out_4),
        .credit_in(credit_in_4),

        .DISABLE_TURNS(DISABLE_TURNS_4),
        .routing_table(routing_table_4),
        .router_address(router_address_4),

        .axis_in_tvalid(axis_in_tvalid_4),
        .axis_in_tready(axis_in_tready_4),
        .axis_in_tdata(axis_in_tdata_4),
        .axis_in_tlast(axis_in_tlast_4),
        .axis_in_tid(axis_in_tid_4),
        .axis_in_tdest(axis_in_tdest_4),

        .axis_out_tvalid(axis_out_tvalid_4),
        .axis_out_tready(axis_out_tready_4),
        .axis_out_tdata(axis_out_tdata_4),
        .axis_out_tlast(axis_out_tlast_4),
        .axis_out_tid(axis_out_tid_4),
        .axis_out_tdest(axis_out_tdest_4)
    );

    router_wrap #(
        .SERIALIZATION_FACTOR(SERIALIZATION_FACTOR),
        .CLKCROSS_FACTOR(CLKCROSS_FACTOR),
        .SINGLE_CLOCK(SINGLE_CLOCK)
    ) rtr_inst5 (
        .clk_usr(clk_usr),
        .clk_noc(clk_noc),
        .rst_n(rst_n),

        .data_in(data_in_5),
        .dest_in(dest_in_5),
        .is_tail_in(is_tail_in_5),
        .send_in(send_in_5),
        .credit_out(credit_out_5),

        .data_out(data_out_5),
        .dest_out(dest_out_5),
        .is_tail_out(is_tail_out_5),
        .send_out(send_out_5),
        .credit_in(credit_in_5),

        .DISABLE_TURNS(DISABLE_TURNS_5),
        .routing_table(routing_table_5),
        .router_address(router_address_5),

        .axis_in_tvalid(axis_in_tvalid_5),
        .axis_in_tready(axis_in_tready_5),
        .axis_in_tdata(axis_in_tdata_5),
        .axis_in_tlast(axis_in_tlast_5),
        .axis_in_tid(axis_in_tid_5),
        .axis_in_tdest(axis_in_tdest_5),

        .axis_out_tvalid(axis_out_tvalid_5),
        .axis_out_tready(axis_out_tready_5),
        .axis_out_tdata(axis_out_tdata_5),
        .axis_out_tlast(axis_out_tlast_5),
        .axis_out_tid(axis_out_tid_5),
        .axis_out_tdest(axis_out_tdest_5)
    );
    router_wrap #(
        .SERIALIZATION_FACTOR(SERIALIZATION_FACTOR),
        .CLKCROSS_FACTOR(CLKCROSS_FACTOR),
        .SINGLE_CLOCK(SINGLE_CLOCK)
    ) rtr_inst6 (
        .clk_usr(clk_usr),
        .clk_noc(clk_noc),
        .rst_n(rst_n),

        .data_in(data_in_6),
        .dest_in(dest_in_6),
        .is_tail_in(is_tail_in_6),
        .send_in(send_in_6),
        .credit_out(credit_out_6),

        .data_out(data_out_6),
        .dest_out(dest_out_6),
        .is_tail_out(is_tail_out_6),
        .send_out(send_out_6),
        .credit_in(credit_in_6),

        .DISABLE_TURNS(DISABLE_TURNS_6),
        .routing_table(routing_table_6),
        .router_address(router_address_6),

        .axis_in_tvalid(axis_in_tvalid_6),
        .axis_in_tready(axis_in_tready_6),
        .axis_in_tdata(axis_in_tdata_6),
        .axis_in_tlast(axis_in_tlast_6),
        .axis_in_tid(axis_in_tid_6),
        .axis_in_tdest(axis_in_tdest_6),

        .axis_out_tvalid(axis_out_tvalid_6),
        .axis_out_tready(axis_out_tready_6),
        .axis_out_tdata(axis_out_tdata_6),
        .axis_out_tlast(axis_out_tlast_6),
        .axis_out_tid(axis_out_tid_6),
        .axis_out_tdest(axis_out_tdest_6)
    );  

    router_wrap #(
        .SERIALIZATION_FACTOR(SERIALIZATION_FACTOR),
        .CLKCROSS_FACTOR(CLKCROSS_FACTOR),
        .SINGLE_CLOCK(SINGLE_CLOCK)
    ) rtr_inst7 (
        .clk_usr(clk_usr),
        .clk_noc(clk_noc),
        .rst_n(rst_n),

        .data_in(data_in_7),
        .dest_in(dest_in_7),
        .is_tail_in(is_tail_in_7),
        .send_in(send_in_7),
        .credit_out(credit_out_7),

        .data_out(data_out_7),
        .dest_out(dest_out_7),
        .is_tail_out(is_tail_out_7),
        .send_out(send_out_7),
        .credit_in(credit_in_7),

        .DISABLE_TURNS(DISABLE_TURNS_7),
        .routing_table(routing_table_7),
        .router_address(router_address_7),

        .axis_in_tvalid(axis_in_tvalid_7),
        .axis_in_tready(axis_in_tready_7),
        .axis_in_tdata(axis_in_tdata_7),
        .axis_in_tlast(axis_in_tlast_7),
        .axis_in_tid(axis_in_tid_7),
        .axis_in_tdest(axis_in_tdest_7),

        .axis_out_tvalid(axis_out_tvalid_7),
        .axis_out_tready(axis_out_tready_7),
        .axis_out_tdata(axis_out_tdata_7),
        .axis_out_tlast(axis_out_tlast_7),
        .axis_out_tid(axis_out_tid_7),
        .axis_out_tdest(axis_out_tdest_7)
    );
    router_wrap #(
        .SERIALIZATION_FACTOR(SERIALIZATION_FACTOR),
        .CLKCROSS_FACTOR(CLKCROSS_FACTOR),
        .SINGLE_CLOCK(SINGLE_CLOCK)
    ) rtr_inst8 (
        .clk_usr(clk_usr),
        .clk_noc(clk_noc),
        .rst_n(rst_n),

        .data_in(data_in_8),
        .dest_in(dest_in_8),
        .is_tail_in(is_tail_in_8),
        .send_in(send_in_8),
        .credit_out(credit_out_8),

        .data_out(data_out_8),
        .dest_out(dest_out_8),
        .is_tail_out(is_tail_out_8),
        .send_out(send_out_8),
        .credit_in(credit_in_8),

        .DISABLE_TURNS(DISABLE_TURNS_8),
        .routing_table(routing_table_8),
        .router_address(router_address_8),

        .axis_in_tvalid(axis_in_tvalid_8),
        .axis_in_tready(axis_in_tready_8),
        .axis_in_tdata(axis_in_tdata_8),
        .axis_in_tlast(axis_in_tlast_8),
        .axis_in_tid(axis_in_tid_8),
        .axis_in_tdest(axis_in_tdest_8),

        .axis_out_tvalid(axis_out_tvalid_8),
        .axis_out_tready(axis_out_tready_8),
        .axis_out_tdata(axis_out_tdata_8),
        .axis_out_tlast(axis_out_tlast_8),
        .axis_out_tid(axis_out_tid_8),
        .axis_out_tdest(axis_out_tdest_8)
    );

    router_wrap #(
        .SERIALIZATION_FACTOR(SERIALIZATION_FACTOR),
        .CLKCROSS_FACTOR(CLKCROSS_FACTOR),
        .SINGLE_CLOCK(SINGLE_CLOCK)
    ) rtr_inst9 (
        .clk_usr(clk_usr),
        .clk_noc(clk_noc),
        .rst_n(rst_n),

        .data_in(data_in_9),
        .dest_in(dest_in_9),
        .is_tail_in(is_tail_in_9),
        .send_in(send_in_9),
        .credit_out(credit_out_9),

        .data_out(data_out_9),
        .dest_out(dest_out_9),
        .is_tail_out(is_tail_out_9),
        .send_out(send_out_9),
        .credit_in(credit_in_9),

        .DISABLE_TURNS(DISABLE_TURNS_9),
        .routing_table(routing_table_9),
        .router_address(router_address_9),

        .axis_in_tvalid(axis_in_tvalid_9),
        .axis_in_tready(axis_in_tready_9),
        .axis_in_tdata(axis_in_tdata_9),
        .axis_in_tlast(axis_in_tlast_9),
        .axis_in_tid(axis_in_tid_9),
        .axis_in_tdest(axis_in_tdest_9),

        .axis_out_tvalid(axis_out_tvalid_9),
        .axis_out_tready(axis_out_tready_9),
        .axis_out_tdata(axis_out_tdata_9),
        .axis_out_tlast(axis_out_tlast_9),
        .axis_out_tid(axis_out_tid_9),
        .axis_out_tdest(axis_out_tdest_9)
    );

    router_wrap #(
        .SERIALIZATION_FACTOR(SERIALIZATION_FACTOR),
        .CLKCROSS_FACTOR(CLKCROSS_FACTOR),
        .SINGLE_CLOCK(SINGLE_CLOCK)
    ) rtr_inst10 (
        .clk_usr(clk_usr),
        .clk_noc(clk_noc),
        .rst_n(rst_n),

        .data_in(data_in_10),
        .dest_in(dest_in_10),
        .is_tail_in(is_tail_in_10),
        .send_in(send_in_10),
        .credit_out(credit_out_10),

        .data_out(data_out_10),
        .dest_out(dest_out_10),
        .is_tail_out(is_tail_out_10),
        .send_out(send_out_10),
        .credit_in(credit_in_10),

        .DISABLE_TURNS(DISABLE_TURNS_10),
        .routing_table(routing_table_10),
        .router_address(router_address_10),

        .axis_in_tvalid(axis_in_tvalid_10),
        .axis_in_tready(axis_in_tready_10),
        .axis_in_tdata(axis_in_tdata_10),
        .axis_in_tlast(axis_in_tlast_10),
        .axis_in_tid(axis_in_tid_10),
        .axis_in_tdest(axis_in_tdest_10),

        .axis_out_tvalid(axis_out_tvalid_10),
        .axis_out_tready(axis_out_tready_10),
        .axis_out_tdata(axis_out_tdata_10),
        .axis_out_tlast(axis_out_tlast_10),
        .axis_out_tid(axis_out_tid_10),
        .axis_out_tdest(axis_out_tdest_10)
    );

    router_wrap #(
        .SERIALIZATION_FACTOR(SERIALIZATION_FACTOR),
        .CLKCROSS_FACTOR(CLKCROSS_FACTOR),
        .SINGLE_CLOCK(SINGLE_CLOCK)
    ) rtr_inst11 (
        .clk_usr(clk_usr),
        .clk_noc(clk_noc),
        .rst_n(rst_n),

        .data_in(data_in_11),
        .dest_in(dest_in_11),
        .is_tail_in(is_tail_in_11),
        .send_in(send_in_11),
        .credit_out(credit_out_11),

        .data_out(data_out_11),
        .dest_out(dest_out_11),
        .is_tail_out(is_tail_out_11),
        .send_out(send_out_11),
        .credit_in(credit_in_11),

        .DISABLE_TURNS(DISABLE_TURNS_11),
        .routing_table(routing_table_11),
        .router_address(router_address_11),

        .axis_in_tvalid(axis_in_tvalid_11),
        .axis_in_tready(axis_in_tready_11),
        .axis_in_tdata(axis_in_tdata_11),
        .axis_in_tlast(axis_in_tlast_11),
        .axis_in_tid(axis_in_tid_11),
        .axis_in_tdest(axis_in_tdest_11),

        .axis_out_tvalid(axis_out_tvalid_11),
        .axis_out_tready(axis_out_tready_11),
        .axis_out_tdata(axis_out_tdata_11),
        .axis_out_tlast(axis_out_tlast_11),
        .axis_out_tid(axis_out_tid_11),
        .axis_out_tdest(axis_out_tdest_11)
    );

    router_wrap #(
        .SERIALIZATION_FACTOR(SERIALIZATION_FACTOR),
        .CLKCROSS_FACTOR(CLKCROSS_FACTOR),
        .SINGLE_CLOCK(SINGLE_CLOCK)
    ) rtr_inst12 (
        .clk_usr(clk_usr),
        .clk_noc(clk_noc),
        .rst_n(rst_n),

        .data_in(data_in_12),
        .dest_in(dest_in_12),
        .is_tail_in(is_tail_in_12),
        .send_in(send_in_12),
        .credit_out(credit_out_12),

        .data_out(data_out_12),
        .dest_out(dest_out_12),
        .is_tail_out(is_tail_out_12),
        .send_out(send_out_12),
        .credit_in(credit_in_12),

        .DISABLE_TURNS(DISABLE_TURNS_12),
        .routing_table(routing_table_12),
        .router_address(router_address_12),

        .axis_in_tvalid(axis_in_tvalid_12),
        .axis_in_tready(axis_in_tready_12),
        .axis_in_tdata(axis_in_tdata_12),
        .axis_in_tlast(axis_in_tlast_12),
        .axis_in_tid(axis_in_tid_12),
        .axis_in_tdest(axis_in_tdest_12),

        .axis_out_tvalid(axis_out_tvalid_12),
        .axis_out_tready(axis_out_tready_12),
        .axis_out_tdata(axis_out_tdata_12),
        .axis_out_tlast(axis_out_tlast_12),
        .axis_out_tid(axis_out_tid_12),
        .axis_out_tdest(axis_out_tdest_12)
    );

    router_wrap #(
        .SERIALIZATION_FACTOR(SERIALIZATION_FACTOR),
        .CLKCROSS_FACTOR(CLKCROSS_FACTOR),
        .SINGLE_CLOCK(SINGLE_CLOCK)
    ) rtr_inst13 (
        .clk_usr(clk_usr),
        .clk_noc(clk_noc),
        .rst_n(rst_n),

        .data_in(data_in_13),
        .dest_in(dest_in_13),
        .is_tail_in(is_tail_in_13),
        .send_in(send_in_13),
        .credit_out(credit_out_13),

        .data_out(data_out_13),
        .dest_out(dest_out_13),
        .is_tail_out(is_tail_out_13),
        .send_out(send_out_13),
        .credit_in(credit_in_13),

        .DISABLE_TURNS(DISABLE_TURNS_13),
        .routing_table(routing_table_13),
        .router_address(router_address_13),

        .axis_in_tvalid(axis_in_tvalid_13),
        .axis_in_tready(axis_in_tready_13),
        .axis_in_tdata(axis_in_tdata_13),
        .axis_in_tlast(axis_in_tlast_13),
        .axis_in_tid(axis_in_tid_13),
        .axis_in_tdest(axis_in_tdest_13),

        .axis_out_tvalid(axis_out_tvalid_13),
        .axis_out_tready(axis_out_tready_13),
        .axis_out_tdata(axis_out_tdata_13),
        .axis_out_tlast(axis_out_tlast_13),
        .axis_out_tid(axis_out_tid_13),
        .axis_out_tdest(axis_out_tdest_13)
    );

    router_wrap #(
        .SERIALIZATION_FACTOR(SERIALIZATION_FACTOR),
        .CLKCROSS_FACTOR(CLKCROSS_FACTOR),
        .SINGLE_CLOCK(SINGLE_CLOCK)
    ) rtr_inst14 (
        .clk_usr(clk_usr),
        .clk_noc(clk_noc),
        .rst_n(rst_n),

        .data_in(data_in_14),
        .dest_in(dest_in_14),
        .is_tail_in(is_tail_in_14),
        .send_in(send_in_14),
        .credit_out(credit_out_14),

        .data_out(data_out_14),
        .dest_out(dest_out_14),
        .is_tail_out(is_tail_out_14),
        .send_out(send_out_14),
        .credit_in(credit_in_14),

        .DISABLE_TURNS(DISABLE_TURNS_14),
        .routing_table(routing_table_14),
        .router_address(router_address_14),

        .axis_in_tvalid(axis_in_tvalid_14),
        .axis_in_tready(axis_in_tready_14),
        .axis_in_tdata(axis_in_tdata_14),
        .axis_in_tlast(axis_in_tlast_14),
        .axis_in_tid(axis_in_tid_14),
        .axis_in_tdest(axis_in_tdest_14),

        .axis_out_tvalid(axis_out_tvalid_14),
        .axis_out_tready(axis_out_tready_14),
        .axis_out_tdata(axis_out_tdata_14),
        .axis_out_tlast(axis_out_tlast_14),
        .axis_out_tid(axis_out_tid_14),
        .axis_out_tdest(axis_out_tdest_14)
    );

    router_wrap #(
        .SERIALIZATION_FACTOR(SERIALIZATION_FACTOR),
        .CLKCROSS_FACTOR(CLKCROSS_FACTOR),
        .SINGLE_CLOCK(SINGLE_CLOCK)
    ) rtr_inst15 (
        .clk_usr(clk_usr),
        .clk_noc(clk_noc),
        .rst_n(rst_n),

        .data_in(data_in_15),
        .dest_in(dest_in_15),
        .is_tail_in(is_tail_in_15),
        .send_in(send_in_15),
        .credit_out(credit_out_15),

        .data_out(data_out_15),
        .dest_out(dest_out_15),
        .is_tail_out(is_tail_out_15),
        .send_out(send_out_15),
        .credit_in(credit_in_15),

        .DISABLE_TURNS(DISABLE_TURNS_15),
        .routing_table(routing_table_15),
        .router_address(router_address_15),

        .axis_in_tvalid(axis_in_tvalid_15),
        .axis_in_tready(axis_in_tready_15),
        .axis_in_tdata(axis_in_tdata_15),
        .axis_in_tlast(axis_in_tlast_15),
        .axis_in_tid(axis_in_tid_15),
        .axis_in_tdest(axis_in_tdest_15),

        .axis_out_tvalid(axis_out_tvalid_15),
        .axis_out_tready(axis_out_tready_15),
        .axis_out_tdata(axis_out_tdata_15),
        .axis_out_tlast(axis_out_tlast_15),
        .axis_out_tid(axis_out_tid_15),
        .axis_out_tdest(axis_out_tdest_15)
    );


    // router to router connections
//  NORTH = 0;
//  SOUTH = 1;
//  EAST = 2;
//  WEST = 3;

    // rtr 0 = rtr 1 & 4
         // 0 east = 1 west
    assign data_in_1[3] = data_out_0[2];
    assign dest_in_1[3] = dest_out_0[2];
    assign is_tail_in_1[3] = is_tail_out_0[2];
    assign send_in_1[3] = send_out_0[2];
    assign  credit_in_1[3]  =  credit_out_0[2]  ;
    
    assign data_in_0[2] = data_out_1[3];
    assign dest_in_0[2] = dest_out_1[3];
    assign is_tail_in_0[2] = is_tail_out_1[3];
    assign send_in_0[2] = send_out_1[3];
    assign  credit_in_0[2]  =  credit_out_1[3]  ;
    
      // 0 south = 4 north
    assign data_in_4[0] = data_out_0[1];
    assign dest_in_4[0] = dest_out_0[1];
    assign is_tail_in_4[0] = is_tail_out_0[1];
    assign send_in_4[0] = send_out_0[1];
    assign  credit_in_4[0]  =  credit_out_0[1]  ;
    
    assign data_in_0[1] = data_out_4[0];
    assign dest_in_0[1] = dest_out_4[0];
    assign is_tail_in_0[1] = is_tail_out_4[0];
    assign send_in_0[1] = send_out_4[0];
    assign  credit_in_0[1]  =  credit_out_4[0]  ;
    
    // rtr 1 = rtr 2 & 5  // 0 done above
         // 1 east = 2 west
    assign data_in_2[3] = data_out_1[2];
    assign dest_in_2[3] = dest_out_1[2];
    assign is_tail_in_2[3] = is_tail_out_1[2];
    assign send_in_2[3] = send_out_1[2];    
    assign  credit_in_2[3]  =  credit_out_1[2]  ;
    
    assign data_in_1[2] = data_out_2[3];
    assign dest_in_1[2] = dest_out_2[3];
    assign is_tail_in_1[2] = is_tail_out_2[3];
    assign send_in_1[2] = send_out_2[3];
    assign  credit_in_1[2]  =  credit_out_2[3]  ;
    
      // 1 south = 5 north
    assign data_in_5[0] = data_out_1[1];
    assign dest_in_5[0] = dest_out_1[1];
    assign is_tail_in_5[0] = is_tail_out_1[1];
    assign send_in_5[0] = send_out_1[1];
    assign  credit_in_5[0]  =  credit_out_1[1]  ;
    
    assign data_in_1[1] = data_out_5[0];
    assign dest_in_1[1] = dest_out_5[0];
    assign is_tail_in_1[1] = is_tail_out_5[0];
    assign send_in_1[1] = send_out_5[0];
    assign  credit_in_1[1]  =  credit_out_5[0]  ;
    
    // rtr 2 = rtr 3 & 6
         // 2 east = 3 west
    assign data_in_3[3] = data_out_2[2];
    assign dest_in_3[3] = dest_out_2[2];
    assign is_tail_in_3[3] = is_tail_out_2[2];
    assign send_in_3[3] = send_out_2[2];
    assign  credit_in_3[3]  =  credit_out_2[2]  ;
    
    assign data_in_2[2] = data_out_3[3];
    assign dest_in_2[2] = dest_out_3[3];
    assign is_tail_in_2[2] = is_tail_out_3[3];
    assign send_in_2[2] = send_out_3[3];
    assign  credit_in_2[2]  =  credit_out_3[3]  ;
    
      // 2 south = 6 north
    assign data_in_6[0] = data_out_2[1];
    assign dest_in_6[0] = dest_out_2[1];
    assign is_tail_in_6[0] = is_tail_out_2[1];
    assign send_in_6[0] = send_out_2[1];
    assign  credit_in_6[0]  =  credit_out_2[1]  ;
    
    assign data_in_2[1] = data_out_6[0];
    assign dest_in_2[1] = dest_out_6[0];
    assign is_tail_in_2[1] = is_tail_out_6[0];
    assign send_in_2[1] = send_out_6[0];
    assign  credit_in_2[1]  =  credit_out_6[0]  ;
    
    // rtr 3 = rtr  7
         // 3 south = 7 north
    assign data_in_7[0] = data_out_3[1];
    assign dest_in_7[0] = dest_out_3[1];
    assign is_tail_in_7[0] = is_tail_out_3[1];
    assign send_in_7[0] = send_out_3[1];
    assign  credit_in_7[0]  =  credit_out_3[1]  ;
    
    assign data_in_3[1] = data_out_7[0];
    assign dest_in_3[1] = dest_out_7[0];
    assign is_tail_in_3[1] = is_tail_out_7[0];
    assign send_in_3[1] = send_out_7[0];
    assign  credit_in_3[1]  =  credit_out_7[0]  ;
    
    // rtr 4 = rtr 5 & 8
         // 4 east = 5 west
    assign data_in_5[3] = data_out_4[2];
    assign dest_in_5[3] = dest_out_4[2];
    assign is_tail_in_5[3] = is_tail_out_4[2];
    assign send_in_5[3] = send_out_4[2];
    assign  credit_in_5[3]  =  credit_out_4[2]  ;
    
    assign data_in_4[2] = data_out_5[3];
    assign dest_in_4[2] = dest_out_5[3];
    assign is_tail_in_4[2] = is_tail_out_5[3];
    assign send_in_4[2] = send_out_5[3];
    assign  credit_in_4[2]  =  credit_out_5[3]  ;
    
      // 4 south = 8 north
    assign data_in_8[0] = data_out_4[1];
    assign dest_in_8[0] = dest_out_4[1];
    assign is_tail_in_8[0] = is_tail_out_4[1];
    assign send_in_8[0] = send_out_4[1];
    assign  credit_in_8[0]  =  credit_out_4[1]  ;
    
    assign data_in_4[1] = data_out_8[0];
    assign dest_in_4[1] = dest_out_8[0];
    assign is_tail_in_4[1] = is_tail_out_8[0];
    assign send_in_4[1] = send_out_8[0];
    assign  credit_in_4[1]  =  credit_out_8[0]  ;
    
    // rtr 5 = rtr 6 & 9
         // 5 east = 6 west
    assign data_in_6[3] = data_out_5[2];
    assign dest_in_6[3] = dest_out_5[2];
    assign is_tail_in_6[3] = is_tail_out_5[2];
    assign send_in_6[3] = send_out_5[2];
    assign  credit_in_6[3]  =  credit_out_5[2]  ;
    
    assign data_in_5[2] = data_out_6[3];
    assign dest_in_5[2] = dest_out_6[3];
    assign is_tail_in_5[2] = is_tail_out_6[3];
    assign send_in_5[2] = send_out_6[3];
    assign  credit_in_5[2]  =  credit_out_6[3]  ;
    
      // 5 south = 9 north
    assign data_in_9[0] = data_out_5[1];
    assign dest_in_9[0] = dest_out_5[1];
    assign is_tail_in_9[0] = is_tail_out_5[1];
    assign send_in_9[0] = send_out_5[1];
    assign  credit_in_9[0]  =  credit_out_5[1]  ;
    
    assign data_in_5[1] = data_out_9[0];
    assign dest_in_5[1] = dest_out_9[0];
    assign is_tail_in_5[1] = is_tail_out_9[0];
    assign send_in_5[1] = send_out_9[0];
    assign  credit_in_5[1]  =  credit_out_9[0]  ;
    
    // rtr 6 = rtr 7 & 10
         // 6 east = 7 west
    assign data_in_7[3] = data_out_6[2];
    assign dest_in_7[3] = dest_out_6[2];
    assign is_tail_in_7[3] = is_tail_out_6[2];
    assign send_in_7[3] = send_out_6[2];
    assign  credit_in_7[3]  =  credit_out_6[2]  ;
    
    assign data_in_6[2] = data_out_7[3];
    assign dest_in_6[2] = dest_out_7[3];
    assign is_tail_in_6[2] = is_tail_out_7[3];
    assign send_in_6[2] = send_out_7[3];
    assign  credit_in_6[2]  =  credit_out_7[3]  ;
    
      // 6 south = 10 north
    assign data_in_10[0] = data_out_6[1];
    assign dest_in_10[0] = dest_out_6[1];
    assign is_tail_in_10[0] = is_tail_out_6[1];
    assign send_in_10[0] = send_out_6[1];
    assign  credit_in_10[0]  =  credit_out_6[1]  ;
    
    assign data_in_6[1] = data_out_10[0];
    assign dest_in_6[1] = dest_out_10[0];
    assign is_tail_in_6[1] = is_tail_out_10[0];
    assign send_in_6[1] = send_out_10[0];
    assign  credit_in_6[1]  =  credit_out_10[0]  ;
    
    // rtr 7 = rtr 11
         // 7 south = 11 north
    assign data_in_11[0] = data_out_7[1];
    assign dest_in_11[0] = dest_out_7[1];
    assign is_tail_in_11[0] = is_tail_out_7[1];
    assign send_in_11[0] = send_out_7[1];
    assign  credit_in_11[0]  =  credit_out_7[1]  ;
    
    assign data_in_7[1] = data_out_11[0];
    assign dest_in_7[1] = dest_out_11[0];
    assign is_tail_in_7[1] = is_tail_out_11[0];
    assign send_in_7[1] = send_out_11[0];
    assign  credit_in_7[1]  =  credit_out_11[0]  ;
    
    // rtr 8 = rtr 9 & 12
         // 8 east = 9 west
    assign data_in_9[3] = data_out_8[2];
    assign dest_in_9[3] = dest_out_8[2];
    assign is_tail_in_9[3] = is_tail_out_8[2];
    assign send_in_9[3] = send_out_8[2];
    assign  credit_in_9[3]  =  credit_out_8[2]  ;
    
    assign data_in_8[2] = data_out_9[3];
    assign dest_in_8[2] = dest_out_9[3];
    assign is_tail_in_8[2] = is_tail_out_9[3];
    assign send_in_8[2] = send_out_9[3];
    assign  credit_in_8[2]  =  credit_out_9[3]  ;
    
      // 8 south = 12 north

    assign data_in_12[0] = data_out_8[1];
    assign dest_in_12[0] = dest_out_8[1];
    assign is_tail_in_12[0] = is_tail_out_8[1];
    assign send_in_12[0] = send_out_8[1];
    assign  credit_in_12[0]  =  credit_out_8[1]  ;
    
    assign data_in_8[1] = data_out_12[0];
    assign dest_in_8[1] = dest_out_12[0];
    assign is_tail_in_8[1] = is_tail_out_12[0];
    assign send_in_8[1] = send_out_12[0];   
    assign  credit_in_8[1]  =  credit_out_12[0]  ;
    
    // rtr 9 = rtr 10 & 13
         // 9 east = 10 west
    assign data_in_10[3] = data_out_9[2];
    assign dest_in_10[3] = dest_out_9[2];
    assign is_tail_in_10[3] = is_tail_out_9[2];
    assign send_in_10[3] = send_out_9[2];
    assign  credit_in_10[3]  =  credit_out_9[2]  ;
        
    assign data_in_9[2] = data_out_10[3];
    assign dest_in_9[2] = dest_out_10[3];
    assign is_tail_in_9[2] = is_tail_out_10[3];
    assign send_in_9[2] = send_out_10[3];
    assign  credit_in_9[2]  =  credit_out_10[3]  ;
    
      // 9 south = 13 north
    assign data_in_13[0] = data_out_9[1];
    assign dest_in_13[0] = dest_out_9[1];
    assign is_tail_in_13[0] = is_tail_out_9[1];
    assign send_in_13[0] = send_out_9[1];
    assign  credit_in_13[0]  =  credit_out_9[1]  ;
    
    assign data_in_9[1] = data_out_13[0];
    assign dest_in_9[1] = dest_out_13[0];
    assign is_tail_in_9[1] = is_tail_out_13[0];
    assign send_in_9[1] = send_out_13[0];   
    assign  credit_in_9[1]  =  credit_out_13[0]  ;
    
    // rtr 10 = rtr 11 & 14
         // 10 east = 11 west
    assign data_in_11[3] = data_out_10[2];
    assign dest_in_11[3] = dest_out_10[2];
    assign is_tail_in_11[3] = is_tail_out_10[2];
    assign send_in_11[3] = send_out_10[2];
    assign  credit_in_11[3]  =  credit_out_10[2]  ;
    
    assign data_in_10[2] = data_out_11[3];
    assign dest_in_10[2] = dest_out_11[3];
    assign is_tail_in_10[2] = is_tail_out_11[3];
    assign send_in_10[2] = send_out_11[3];
    assign  credit_in_10[2]  =  credit_out_11[3]  ;
    
      // 10 south = 14 north
    assign data_in_14[0] = data_out_10[1];
    assign dest_in_14[0] = dest_out_10[1];
    assign is_tail_in_14[0] = is_tail_out_10[1];
    assign send_in_14[0] = send_out_10[1];
    assign  credit_in_14[0]  =  credit_out_10[1]  ;
    
    assign data_in_10[1] = data_out_14[0];
    assign dest_in_10[1] = dest_out_14[0];
    assign is_tail_in_10[1] = is_tail_out_14[0];
    assign send_in_10[1] = send_out_14[0];
    assign  credit_in_10[1]  =  credit_out_14[0]  ;
    
    // rtr 11 = rtr 15
         // 11 south = 15 north
    assign data_in_15[0] = data_out_11[1];
    assign dest_in_15[0] = dest_out_11[1];
    assign is_tail_in_15[0] = is_tail_out_11[1];
    assign send_in_15[0] = send_out_11[1];
    assign  credit_in_15[0]  =  credit_out_11[1]  ;
    
    assign data_in_11[1] = data_out_15[0];
    assign dest_in_11[1] = dest_out_15[0];
    assign is_tail_in_11[1] = is_tail_out_15[0];
    assign send_in_11[1] = send_out_15[0];
    assign  credit_in_11[1]  =  credit_out_15[0]  ;
    
    // rtr 12 = rtr 13 
         // 12 east = 13 west
    assign data_in_13[3] = data_out_12[2];
    assign dest_in_13[3] = dest_out_12[2];
    assign is_tail_in_13[3] = is_tail_out_12[2];
    assign send_in_13[3] = send_out_12[2];
    assign  credit_in_13[3]  =  credit_out_12[2]  ;
    
    assign data_in_12[2] = data_out_13[3];
    assign dest_in_12[2] = dest_out_13[3];
    assign is_tail_in_12[2] = is_tail_out_13[3];
    assign send_in_12[2] = send_out_13[3];
    assign  credit_in_12[2]  =  credit_out_13[3]  ;
    
    // rtr 13 - 14
            // 13 east = 14 west
    assign data_in_14[3] = data_out_13[2];
    assign dest_in_14[3] = dest_out_13[2];
    assign is_tail_in_14[3] = is_tail_out_13[2];
    assign send_in_14[3] = send_out_13[2];
    assign  credit_in_14[3]  =  credit_out_13[2]  ;
    
    assign data_in_13[2] = data_out_14[3];
    assign dest_in_13[2] = dest_out_14[3];
    assign is_tail_in_13[2] = is_tail_out_14[3];
    assign send_in_13[2] = send_out_14[3];
    assign  credit_in_13[2]  =  credit_out_14[3]  ;
    
    // rtr 14 - 15
            // 14 east = 15 west
    assign data_in_15[3] = data_out_14[2];
    assign dest_in_15[3] = dest_out_14[2];
    assign is_tail_in_15[3] = is_tail_out_14[2];
    assign send_in_15[3] = send_out_14[2];
    assign  credit_in_15[3]  =  credit_out_14[2]  ;
    
    assign data_in_14[2] = data_out_15[3];
    assign dest_in_14[2] = dest_out_15[3];
    assign is_tail_in_14[2] = is_tail_out_15[3];
    assign send_in_14[2] = send_out_15[3];
    assign  credit_in_14[2]  =  credit_out_15[3]  ;

    // unconnected credit in 
// Router 0 (top-left corner): North and West unconnected
assign credit_in_0[0] = 1'b0; // North
assign credit_in_0[3] = 1'b0; // West

// Router 1, 2 (top row): North unconnected
assign credit_in_1[0] = 1'b0; // North
assign credit_in_2[0] = 1'b0; // North

// Router 3 (top-right): North and East unconnected
assign credit_in_3[0] = 1'b0; // North
assign credit_in_3[2] = 1'b0; // East

// Router 4, 8 (left column): West unconnected
assign credit_in_4[3] = 1'b0; // West
assign credit_in_8[3] = 1'b0; // West

// Router 7, 11 (right column): East unconnected
assign credit_in_7[2] = 1'b0; // East
assign credit_in_11[2] = 1'b0; // East

// Router 12 (bottom-left): South and West unconnected
assign credit_in_12[1] = 1'b0; // South
assign credit_in_12[3] = 1'b0; // West

// Router 13, 14 (bottom row): South unconnected
assign credit_in_13[1] = 1'b0; // South
assign credit_in_14[1] = 1'b0; // South

// Router 15 (bottom-right): South and East unconnected
assign credit_in_15[1] = 1'b0; // South
assign credit_in_15[2] = 1'b0; // East
    

    // router_address
    assign router_address_0 = 4'b0000;
    assign router_address_1 = 4'b0001;
    assign router_address_2 = 4'b0010;
    assign router_address_3 = 4'b0011;
    assign router_address_4 = 4'b0100;
    assign router_address_5 = 4'b0101;
    assign router_address_6 = 4'b0110;
    assign router_address_7 = 4'b0111;
    assign router_address_8 = 4'b1000;
    assign router_address_9 = 4'b1001;
    assign router_address_10 = 4'b1010;
    assign router_address_11 = 4'b1011;
    assign router_address_12 = 4'b1100;
    assign router_address_13 = 4'b1101;
    assign router_address_14 = 4'b1110;
    assign router_address_15 = 4'b1111;


    // routing tables
//  NORTH = 0;
//  SOUTH = 1;
//  EAST = 2;
//  WEST = 3;

// Automatically generated routing tables for a 4x4 mesh network

// Routing table for router 0:
    assign routing_table_0[0] = 3'b000;
    assign routing_table_0[1] = 3'b011;
    assign routing_table_0[2] = 3'b011;
    assign routing_table_0[3] = 3'b011;
    assign routing_table_0[4] = 3'b010;
    assign routing_table_0[5] = 3'b011;
    assign routing_table_0[6] = 3'b011;
    assign routing_table_0[7] = 3'b011;
    assign routing_table_0[8] = 3'b010;
    assign routing_table_0[9] = 3'b011;
    assign routing_table_0[10] = 3'b011;
    assign routing_table_0[11] = 3'b011;
    assign routing_table_0[12] = 3'b010;
    assign routing_table_0[13] = 3'b011;
    assign routing_table_0[14] = 3'b011;
    assign routing_table_0[15] = 3'b011;

// Routing table for router 1:
    assign routing_table_1[0] = 3'b100;
    assign routing_table_1[1] = 3'b000;
    assign routing_table_1[2] = 3'b011;
    assign routing_table_1[3] = 3'b011;
    assign routing_table_1[4] = 3'b100;
    assign routing_table_1[5] = 3'b010;
    assign routing_table_1[6] = 3'b011;
    assign routing_table_1[7] = 3'b011;
    assign routing_table_1[8] = 3'b100;
    assign routing_table_1[9] = 3'b010;
    assign routing_table_1[10] = 3'b011;
    assign routing_table_1[11] = 3'b011;
    assign routing_table_1[12] = 3'b100;
    assign routing_table_1[13] = 3'b010;
    assign routing_table_1[14] = 3'b011;
    assign routing_table_1[15] = 3'b011;

// Routing table for router 2:
    assign routing_table_2[0] = 3'b100;
    assign routing_table_2[1] = 3'b100;
    assign routing_table_2[2] = 3'b000;
    assign routing_table_2[3] = 3'b011;
    assign routing_table_2[4] = 3'b100;
    assign routing_table_2[5] = 3'b100;
    assign routing_table_2[6] = 3'b010;
    assign routing_table_2[7] = 3'b011;
    assign routing_table_2[8] = 3'b100;
    assign routing_table_2[9] = 3'b100;
    assign routing_table_2[10] = 3'b010;
    assign routing_table_2[11] = 3'b011;
    assign routing_table_2[12] = 3'b100;
    assign routing_table_2[13] = 3'b100;
    assign routing_table_2[14] = 3'b010;
    assign routing_table_2[15] = 3'b011;

// Routing table for router 3:
    assign routing_table_3[0] = 3'b100;
    assign routing_table_3[1] = 3'b100;
    assign routing_table_3[2] = 3'b100;
    assign routing_table_3[3] = 3'b000;
    assign routing_table_3[4] = 3'b100;
    assign routing_table_3[5] = 3'b100;
    assign routing_table_3[6] = 3'b100;
    assign routing_table_3[7] = 3'b010;
    assign routing_table_3[8] = 3'b100;
    assign routing_table_3[9] = 3'b100;
    assign routing_table_3[10] = 3'b100;
    assign routing_table_3[11] = 3'b010;
    assign routing_table_3[12] = 3'b100;
    assign routing_table_3[13] = 3'b100;
    assign routing_table_3[14] = 3'b100;
    assign routing_table_3[15] = 3'b010;

// Routing table for router 4:
    assign routing_table_4[0] = 3'b001;
    assign routing_table_4[1] = 3'b011;
    assign routing_table_4[2] = 3'b011;
    assign routing_table_4[3] = 3'b011;
    assign routing_table_4[4] = 3'b000;
    assign routing_table_4[5] = 3'b011;
    assign routing_table_4[6] = 3'b011;
    assign routing_table_4[7] = 3'b011;
    assign routing_table_4[8] = 3'b010;
    assign routing_table_4[9] = 3'b011;
    assign routing_table_4[10] = 3'b011;
    assign routing_table_4[11] = 3'b011;
    assign routing_table_4[12] = 3'b010;
    assign routing_table_4[13] = 3'b011;
    assign routing_table_4[14] = 3'b011;
    assign routing_table_4[15] = 3'b011;

// Routing table for router 5:
    assign routing_table_5[0] = 3'b100;
    assign routing_table_5[1] = 3'b001;
    assign routing_table_5[2] = 3'b011;
    assign routing_table_5[3] = 3'b011;
    assign routing_table_5[4] = 3'b100;
    assign routing_table_5[5] = 3'b000;
    assign routing_table_5[6] = 3'b011;
    assign routing_table_5[7] = 3'b011;
    assign routing_table_5[8] = 3'b100;
    assign routing_table_5[9] = 3'b010;
    assign routing_table_5[10] = 3'b011;
    assign routing_table_5[11] = 3'b011;
    assign routing_table_5[12] = 3'b100;
    assign routing_table_5[13] = 3'b010;
    assign routing_table_5[14] = 3'b011;
    assign routing_table_5[15] = 3'b011;

// Routing table for router 6:
    assign routing_table_6[0] = 3'b100;
    assign routing_table_6[1] = 3'b100;
    assign routing_table_6[2] = 3'b001;
    assign routing_table_6[3] = 3'b011;
    assign routing_table_6[4] = 3'b100;
    assign routing_table_6[5] = 3'b100;
    assign routing_table_6[6] = 3'b000;
    assign routing_table_6[7] = 3'b011;
    assign routing_table_6[8] = 3'b100;
    assign routing_table_6[9] = 3'b100;
    assign routing_table_6[10] = 3'b010;
    assign routing_table_6[11] = 3'b011;
    assign routing_table_6[12] = 3'b100;
    assign routing_table_6[13] = 3'b100;
    assign routing_table_6[14] = 3'b010;
    assign routing_table_6[15] = 3'b011;

// Routing table for router 7:
    assign routing_table_7[0] = 3'b100;
    assign routing_table_7[1] = 3'b100;
    assign routing_table_7[2] = 3'b100;
    assign routing_table_7[3] = 3'b001;
    assign routing_table_7[4] = 3'b100;
    assign routing_table_7[5] = 3'b100;
    assign routing_table_7[6] = 3'b100;
    assign routing_table_7[7] = 3'b000;
    assign routing_table_7[8] = 3'b100;
    assign routing_table_7[9] = 3'b100;
    assign routing_table_7[10] = 3'b100;
    assign routing_table_7[11] = 3'b010;
    assign routing_table_7[12] = 3'b100;
    assign routing_table_7[13] = 3'b100;
    assign routing_table_7[14] = 3'b100;
    assign routing_table_7[15] = 3'b010;

// Routing table for router 8:
    assign routing_table_8[0] = 3'b001;
    assign routing_table_8[1] = 3'b011;
    assign routing_table_8[2] = 3'b011;
    assign routing_table_8[3] = 3'b011;
    assign routing_table_8[4] = 3'b001;
    assign routing_table_8[5] = 3'b011;
    assign routing_table_8[6] = 3'b011;
    assign routing_table_8[7] = 3'b011;
    assign routing_table_8[8] = 3'b000;
    assign routing_table_8[9] = 3'b011;
    assign routing_table_8[10] = 3'b011;
    assign routing_table_8[11] = 3'b011;
    assign routing_table_8[12] = 3'b010;
    assign routing_table_8[13] = 3'b011;
    assign routing_table_8[14] = 3'b011;
    assign routing_table_8[15] = 3'b011;

// Routing table for router 9:
    assign routing_table_9[0] = 3'b100;
    assign routing_table_9[1] = 3'b001;
    assign routing_table_9[2] = 3'b011;
    assign routing_table_9[3] = 3'b011;
    assign routing_table_9[4] = 3'b100;
    assign routing_table_9[5] = 3'b001;
    assign routing_table_9[6] = 3'b011;
    assign routing_table_9[7] = 3'b011;
    assign routing_table_9[8] = 3'b100;
    assign routing_table_9[9] = 3'b000;
    assign routing_table_9[10] = 3'b011;
    assign routing_table_9[11] = 3'b011;
    assign routing_table_9[12] = 3'b100;
    assign routing_table_9[13] = 3'b010;
    assign routing_table_9[14] = 3'b011;
    assign routing_table_9[15] = 3'b011;

// Routing table for router 10:
    assign routing_table_10[0] = 3'b100;
    assign routing_table_10[1] = 3'b100;
    assign routing_table_10[2] = 3'b001;
    assign routing_table_10[3] = 3'b011;
    assign routing_table_10[4] = 3'b100;
    assign routing_table_10[5] = 3'b100;
    assign routing_table_10[6] = 3'b001;
    assign routing_table_10[7] = 3'b011;
    assign routing_table_10[8] = 3'b100;
    assign routing_table_10[9] = 3'b100;
    assign routing_table_10[10] = 3'b000;
    assign routing_table_10[11] = 3'b011;
    assign routing_table_10[12] = 3'b100;
    assign routing_table_10[13] = 3'b100;
    assign routing_table_10[14] = 3'b010;
    assign routing_table_10[15] = 3'b011;

// Routing table for router 11:
    assign routing_table_11[0] = 3'b100;
    assign routing_table_11[1] = 3'b100;
    assign routing_table_11[2] = 3'b100;
    assign routing_table_11[3] = 3'b001;
    assign routing_table_11[4] = 3'b100;
    assign routing_table_11[5] = 3'b100;
    assign routing_table_11[6] = 3'b100;
    assign routing_table_11[7] = 3'b001;
    assign routing_table_11[8] = 3'b100;
    assign routing_table_11[9] = 3'b100;
    assign routing_table_11[10] = 3'b100;
    assign routing_table_11[11] = 3'b000;
    assign routing_table_11[12] = 3'b100;
    assign routing_table_11[13] = 3'b100;
    assign routing_table_11[14] = 3'b100;
    assign routing_table_11[15] = 3'b010;

// Routing table for router 12:
    assign routing_table_12[0] = 3'b001;
    assign routing_table_12[1] = 3'b011;
    assign routing_table_12[2] = 3'b011;
    assign routing_table_12[3] = 3'b011;
    assign routing_table_12[4] = 3'b001;
    assign routing_table_12[5] = 3'b011;
    assign routing_table_12[6] = 3'b011;
    assign routing_table_12[7] = 3'b011;
    assign routing_table_12[8] = 3'b001;
    assign routing_table_12[9] = 3'b011;
    assign routing_table_12[10] = 3'b011;
    assign routing_table_12[11] = 3'b011;
    assign routing_table_12[12] = 3'b000;
    assign routing_table_12[13] = 3'b011;
    assign routing_table_12[14] = 3'b011;
    assign routing_table_12[15] = 3'b011;

// Routing table for router 13:
    assign routing_table_13[0] = 3'b100;
    assign routing_table_13[1] = 3'b001;
    assign routing_table_13[2] = 3'b011;
    assign routing_table_13[3] = 3'b011;
    assign routing_table_13[4] = 3'b100;
    assign routing_table_13[5] = 3'b001;
    assign routing_table_13[6] = 3'b011;
    assign routing_table_13[7] = 3'b011;
    assign routing_table_13[8] = 3'b100;
    assign routing_table_13[9] = 3'b001;
    assign routing_table_13[10] = 3'b011;
    assign routing_table_13[11] = 3'b011;
    assign routing_table_13[12] = 3'b100;
    assign routing_table_13[13] = 3'b000;
    assign routing_table_13[14] = 3'b011;
    assign routing_table_13[15] = 3'b011;

// Routing table for router 14:
    assign routing_table_14[0] = 3'b100;
    assign routing_table_14[1] = 3'b100;
    assign routing_table_14[2] = 3'b001;
    assign routing_table_14[3] = 3'b011;
    assign routing_table_14[4] = 3'b100;
    assign routing_table_14[5] = 3'b100;
    assign routing_table_14[6] = 3'b001;
    assign routing_table_14[7] = 3'b011;
    assign routing_table_14[8] = 3'b100;
    assign routing_table_14[9] = 3'b100;
    assign routing_table_14[10] = 3'b001;
    assign routing_table_14[11] = 3'b011;
    assign routing_table_14[12] = 3'b100;
    assign routing_table_14[13] = 3'b100;
    assign routing_table_14[14] = 3'b000;
    assign routing_table_14[15] = 3'b011;

// Routing table for router 15:
    assign routing_table_15[0] = 3'b100;
    assign routing_table_15[1] = 3'b100;
    assign routing_table_15[2] = 3'b100;
    assign routing_table_15[3] = 3'b001;
    assign routing_table_15[4] = 3'b100;
    assign routing_table_15[5] = 3'b100;
    assign routing_table_15[6] = 3'b100;
    assign routing_table_15[7] = 3'b001;
    assign routing_table_15[8] = 3'b100;
    assign routing_table_15[9] = 3'b100;
    assign routing_table_15[10] = 3'b100;
    assign routing_table_15[11] = 3'b001;
    assign routing_table_15[12] = 3'b100;
    assign routing_table_15[13] = 3'b100;
    assign routing_table_15[14] = 3'b100;
    assign routing_table_15[15] = 3'b000;



// Not using any disable turns for now; make all 0
    assign disable_turn_0 = 0;
    assign disable_turn_1 = 0;
    assign disable_turn_2 = 0;
    assign disable_turn_3 = 0;
    assign disable_turn_4 = 0;
    assign disable_turn_5 = 0;
    assign disable_turn_6 = 0;
    assign disable_turn_7 = 0;
    assign disable_turn_8 = 0;
    assign disable_turn_9 = 0;
    assign disable_turn_10 = 0;
    assign disable_turn_11 = 0;
    assign disable_turn_12 = 0;
    assign disable_turn_13 = 0;
    assign disable_turn_14 = 0;
    assign disable_turn_15 = 0;






endmodule
