(* whitebox *)
module router_wrap #(
    parameter RESET_SYNC_EXTEND_CYCLES = 2,
    parameter RESET_NUM_OUTPUT_REGISTERS = 1,
    parameter NUM_INPUTS = 5,
    parameter NUM_OUTPUTS = 5,
    parameter TID_WIDTH = 2,
    parameter TDEST_WIDTH = 4,
    parameter TDATA_WIDTH = 32,
    parameter SERIALIZATION_FACTOR = 1,
    parameter CLKCROSS_FACTOR = 1,
    parameter bit SINGLE_CLOCK = 0,
    parameter SERDES_IN_BUFFER_DEPTH = 4,
    parameter SERDES_OUT_BUFFER_DEPTH = 4,
    parameter SERDES_EXTRA_SYNC_STAGES = 0,
    parameter bit SERDES_FORCE_MLAB = 0,
    parameter FLIT_BUFFER_DEPTH = 4,
    parameter ROUTING_TABLE_PREFIX = "/",
    parameter ROUTER_PIPELINE_ROUTE_COMPUTE = 1,
    parameter ROUTER_PIPELINE_ARBITER = 0,
    parameter ROUTER_PIPELINE_OUTPUT = 1,
    parameter bit ROUTER_FORCE_MLAB = 0
) (
    input wire clk_noc,
    input wire clk_usr,
    input wire rst_n,

    // top
    input wire axis_in_tvalid_top,
    output wire axis_in_tready_top,
    input wire [TDATA_WIDTH-1:0] axis_in_tdata_top,
    input wire axis_in_tlast_top,
    input wire [TID_WIDTH-1:0] axis_in_tid_top,
    input wire [TDEST_WIDTH-1:0] axis_in_tdest_top,
    output wire axis_out_tvalid_top,
    input wire axis_out_tready_top,
    output wire [TDATA_WIDTH-1:0] axis_out_tdata_top,
    output wire axis_out_tlast_top,
    output wire [TID_WIDTH-1:0] axis_out_tid_top,
    output wire [TDEST_WIDTH-1:0] axis_out_tdest_top,
    
    // right
    input wire axis_in_tvalid_right,
    output wire axis_in_tready_right,
    input wire [TDATA_WIDTH-1:0] axis_in_tdata_right,
    input wire axis_in_tlast_right,
    input wire [TID_WIDTH-1:0] axis_in_tid_right,
    input wire [TDEST_WIDTH-1:0] axis_in_tdest_right,
    output wire axis_out_tvalid_right,
    input wire axis_out_tready_right,
    output wire [TDATA_WIDTH-1:0] axis_out_tdata_right,
    output wire axis_out_tlast_right,
    output wire [TID_WIDTH-1:0] axis_out_tid_right,
    output wire [TDEST_WIDTH-1:0] axis_out_tdest_right,
    
    // bottom
    input wire axis_in_tvalid_bottom,
    output wire axis_in_tready_bottom,
    input wire [TDATA_WIDTH-1:0] axis_in_tdata_bottom,
    input wire axis_in_tlast_bottom,
    input wire [TID_WIDTH-1:0] axis_in_tid_bottom,
    input wire [TDEST_WIDTH-1:0] axis_in_tdest_bottom,
    output wire axis_out_tvalid_bottom,
    input wire axis_out_tready_bottom,
    output wire [TDATA_WIDTH-1:0] axis_out_tdata_bottom,
    output wire axis_out_tlast_bottom,
    output wire [TID_WIDTH-1:0] axis_out_tid_bottom,
    output wire [TDEST_WIDTH-1:0] axis_out_tdest_bottom,
    
    // left
    input wire axis_in_tvalid_left,
    output wire axis_in_tready_left,
    input wire [TDATA_WIDTH-1:0] axis_in_tdata_left,
    input wire axis_in_tlast_left,
    input wire [TID_WIDTH-1:0] axis_in_tid_left,
    input wire [TDEST_WIDTH-1:0] axis_in_tdest_left,
    output wire axis_out_tvalid_left,
    input wire axis_out_tready_left,
    output wire [TDATA_WIDTH-1:0] axis_out_tdata_left,
    output wire axis_out_tlast_left,
    output wire [TID_WIDTH-1:0] axis_out_tid_left,
    output wire [TDEST_WIDTH-1:0] axis_out_tdest_left,
    
    // injection port
    input wire axis_in_tvalid,
    output wire axis_in_tready,
    input wire [TDATA_WIDTH-1:0] axis_in_tdata,
    input wire axis_in_tlast,
    input wire [TID_WIDTH-1:0] axis_in_tid,
    input wire [TDEST_WIDTH-1:0] axis_in_tdest,
    output wire axis_out_tvalid,
    input wire axis_out_tready,
    output wire [TDATA_WIDTH-1:0] axis_out_tdata,
    output wire axis_out_tlast,
    output wire [TID_WIDTH-1:0] axis_out_tid,
    output wire [TDEST_WIDTH-1:0] axis_out_tdest
);

    wire axis_in_tvalid_array [0:NUM_INPUTS-1];
    wire axis_in_tready_array [0:NUM_INPUTS-1];
    wire [TDATA_WIDTH-1:0] axis_in_tdata_array [0:NUM_INPUTS-1];
    wire axis_in_tlast_array [0:NUM_INPUTS-1];
    wire [TID_WIDTH-1:0] axis_in_tid_array [0:NUM_INPUTS-1];
    wire [TDEST_WIDTH-1:0] axis_in_tdest_array [0:NUM_INPUTS-1];
    
    wire axis_out_tvalid_array [0:NUM_OUTPUTS-1];
    wire axis_out_tready_array [0:NUM_OUTPUTS-1];
    wire [TDATA_WIDTH-1:0] axis_out_tdata_array [0:NUM_OUTPUTS-1];
    wire axis_out_tlast_array [0:NUM_OUTPUTS-1];
    wire [TID_WIDTH-1:0] axis_out_tid_array [0:NUM_OUTPUTS-1];
    wire [TDEST_WIDTH-1:0] axis_out_tdest_array [0:NUM_OUTPUTS-1];

    assign axis_in_tvalid_array[0] = axis_in_tvalid_top;
    assign axis_in_tready_top = axis_in_tready_array[0];
    assign axis_in_tdata_array[0] = axis_in_tdata_top;
    assign axis_in_tlast_array[0] = axis_in_tlast_top;
    assign axis_in_tid_array[0] = axis_in_tid_top;
    assign axis_in_tdest_array[0] = axis_in_tdest_top;
    assign axis_out_tvalid_top = axis_out_tvalid_array[0];
    assign axis_out_tready_array[0] = axis_out_tready_top;
    assign axis_out_tdata_top = axis_out_tdata_array[0];
    assign axis_out_tlast_top = axis_out_tlast_array[0];
    assign axis_out_tid_top = axis_out_tid_array[0];
    assign axis_out_tdest_top = axis_out_tdest_array[0];
    
    assign axis_in_tvalid_array[1] = axis_in_tvalid_right;
    assign axis_in_tready_right = axis_in_tready_array[1];
    assign axis_in_tdata_array[1] = axis_in_tdata_right;
    assign axis_in_tlast_array[1] = axis_in_tlast_right;
    assign axis_in_tid_array[1] = axis_in_tid_right;
    assign axis_in_tdest_array[1] = axis_in_tdest_right;
    assign axis_out_tvalid_right = axis_out_tvalid_array[1];
    assign axis_out_tready_array[1] = axis_out_tready_right;
    assign axis_out_tdata_right = axis_out_tdata_array[1];
    assign axis_out_tlast_right = axis_out_tlast_array[1];
    assign axis_out_tid_right = axis_out_tid_array[1];
    assign axis_out_tdest_right = axis_out_tdest_array[1];
    
    assign axis_in_tvalid_array[2] = axis_in_tvalid_bottom;
    assign axis_in_tready_bottom = axis_in_tready_array[2];
    assign axis_in_tdata_array[2] = axis_in_tdata_bottom;
    assign axis_in_tlast_array[2] = axis_in_tlast_bottom;
    assign axis_in_tid_array[2] = axis_in_tid_bottom;
    assign axis_in_tdest_array[2] = axis_in_tdest_bottom;
    assign axis_out_tvalid_bottom = axis_out_tvalid_array[2];
    assign axis_out_tready_array[2] = axis_out_tready_bottom;
    assign axis_out_tdata_bottom = axis_out_tdata_array[2];
    assign axis_out_tlast_bottom = axis_out_tlast_array[2];
    assign axis_out_tid_bottom = axis_out_tid_array[2];
    assign axis_out_tdest_bottom = axis_out_tdest_array[2];
    
    assign axis_in_tvalid_array[3] = axis_in_tvalid_left;
    assign axis_in_tready_left = axis_in_tready_array[3];
    assign axis_in_tdata_array[3] = axis_in_tdata_left;
    assign axis_in_tlast_array[3] = axis_in_tlast_left;
    assign axis_in_tid_array[3] = axis_in_tid_left;
    assign axis_in_tdest_array[3] = axis_in_tdest_left;
    assign axis_out_tvalid_left = axis_out_tvalid_array[3];
    assign axis_out_tready_array[3] = axis_out_tready_left;
    assign axis_out_tdata_left = axis_out_tdata_array[3];
    assign axis_out_tlast_left = axis_out_tlast_array[3];
    assign axis_out_tid_left = axis_out_tid_array[3];
    assign axis_out_tdest_left = axis_out_tdest_array[3];
    
    assign axis_in_tvalid_array[4] = axis_in_tvalid;
    assign axis_in_tready = axis_in_tready_array[4];
    assign axis_in_tdata_array[4] = axis_in_tdata;
    assign axis_in_tlast_array[4] = axis_in_tlast;
    assign axis_in_tid_array[4] = axis_in_tid;
    assign axis_in_tdest_array[4] = axis_in_tdest;
    assign axis_out_tvalid = axis_out_tvalid_array[4];
    assign axis_out_tready_array[4] = axis_out_tready;
    assign axis_out_tdata = axis_out_tdata_array[4];
    assign axis_out_tlast = axis_out_tlast_array[4];
    assign axis_out_tid = axis_out_tid_array[4];
    assign axis_out_tdest = axis_out_tdest_array[4];

    axis_router #(
        .RESET_SYNC_EXTEND_CYCLES(RESET_SYNC_EXTEND_CYCLES),
        .RESET_NUM_OUTPUT_REGISTERS(RESET_NUM_OUTPUT_REGISTERS),
        .NUM_INPUTS(NUM_INPUTS),
        .NUM_OUTPUTS(NUM_OUTPUTS),
        .TID_WIDTH(TID_WIDTH),
        .TDEST_WIDTH(TDEST_WIDTH),
        .TDATA_WIDTH(TDATA_WIDTH),
        .SERIALIZATION_FACTOR(SERIALIZATION_FACTOR),
        .CLKCROSS_FACTOR(CLKCROSS_FACTOR),
        .SINGLE_CLOCK(SINGLE_CLOCK),
        .SERDES_IN_BUFFER_DEPTH(SERDES_IN_BUFFER_DEPTH),
        .SERDES_OUT_BUFFER_DEPTH(SERDES_OUT_BUFFER_DEPTH),
        .SERDES_EXTRA_SYNC_STAGES(SERDES_EXTRA_SYNC_STAGES),
        .SERDES_FORCE_MLAB(SERDES_FORCE_MLAB),
        .FLIT_BUFFER_DEPTH(FLIT_BUFFER_DEPTH),
        .ROUTING_TABLE_PREFIX(ROUTING_TABLE_PREFIX),
        .ROUTER_PIPELINE_ROUTE_COMPUTE(ROUTER_PIPELINE_ROUTE_COMPUTE),
        .ROUTER_PIPELINE_ARBITER(ROUTER_PIPELINE_ARBITER),
        .ROUTER_PIPELINE_OUTPUT(ROUTER_PIPELINE_OUTPUT),
        .ROUTER_FORCE_MLAB(ROUTER_FORCE_MLAB)
    ) router_inst (
        .clk_noc(clk_noc),
        .clk_usr(clk_usr),
        .rst_n(rst_n),
        
        .axis_in_tvalid(axis_in_tvalid_array),
        .axis_in_tready(axis_in_tready_array),
        .axis_in_tdata(axis_in_tdata_array),
        .axis_in_tlast(axis_in_tlast_array),
        .axis_in_tid(axis_in_tid_array),
        .axis_in_tdest(axis_in_tdest_array),
        
        .axis_out_tvalid(axis_out_tvalid_array),
        .axis_out_tready(axis_out_tready_array),
        .axis_out_tdata(axis_out_tdata_array),
        .axis_out_tlast(axis_out_tlast_array),
        .axis_out_tid(axis_out_tid_array),
        .axis_out_tdest(axis_out_tdest_array)
    );

endmodule