(* whitebox *)
module router_wrap (
    input wire clk_noc,
    input wire clk_usr,
    input wire rst_n,

    input wire [4:0] axis_in_tvalid,
    output wire [4:0] axis_in_tready,
    input wire [159:0] axis_in_tdata,  // 5 * 32 = 160 bits
    input wire [4:0] axis_in_tlast,
    input wire [9:0] axis_in_tid,      // 5 * 2 = 10 bits
    input wire [19:0] axis_in_tdest,   // 5 * 4 = 20 bits
    
    output wire [4:0] axis_out_tvalid,
    input wire [4:0] axis_out_tready,
    output wire [159:0] axis_out_tdata, // 5 * 32 = 160 bits
    output wire [4:0] axis_out_tlast,
    output wire [9:0] axis_out_tid,     // 5 * 2 = 10 bits
    output wire [19:0] axis_out_tdest   // 5 * 4 = 20 bits
);

    // Wire arrays to connect to axis router
    wire axis_in_tvalid_array [0:4];
    wire axis_in_tready_array [0:4];
    wire [31:0] axis_in_tdata_array [0:4];
    wire axis_in_tlast_array [0:4];
    wire [1:0] axis_in_tid_array [0:4];
    wire [3:0] axis_in_tdest_array [0:4];
    
    wire axis_out_tvalid_array [0:4];
    wire axis_out_tready_array [0:4];
    wire [31:0] axis_out_tdata_array [0:4];
    wire axis_out_tlast_array [0:4];
    wire [1:0] axis_out_tid_array [0:4];
    wire [3:0] axis_out_tdest_array [0:4];

    // Connect flattened ports to wire arrays
    genvar i, j;
    
    generate
        for (i = 0; i < 5; i = i + 1) begin : input_conn
            assign axis_in_tvalid_array[i] = axis_in_tvalid[i];
            assign axis_in_tready[i] = axis_in_tready_array[i];
            assign axis_in_tdata_array[i] = axis_in_tdata[(i+1)*32-1:i*32];
            assign axis_in_tlast_array[i] = axis_in_tlast[i];
            assign axis_in_tid_array[i] = axis_in_tid[(i+1)*2-1:i*2];
            assign axis_in_tdest_array[i] = axis_in_tdest[(i+1)*4-1:i*4];
        end
        
        for (j = 0; j < 5; j = j + 1) begin : output_conn
            assign axis_out_tvalid[j] = axis_out_tvalid_array[j];
            assign axis_out_tready_array[j] = axis_out_tready[j];
            assign axis_out_tdata[(j+1)*32-1:j*32] = axis_out_tdata_array[j];
            assign axis_out_tlast[j] = axis_out_tlast_array[j];
            assign axis_out_tid[(j+1)*2-1:j*2] = axis_out_tid_array[j];
            assign axis_out_tdest[(j+1)*4-1:j*4] = axis_out_tdest_array[j];
        end
    endgenerate

    axis_router #(
        .RESET_SYNC_EXTEND_CYCLES(2),
        .RESET_NUM_OUTPUT_REGISTERS(1),
        .NUM_INPUTS(5),
        .NUM_OUTPUTS(5),
        .TID_WIDTH(2),
        .TDEST_WIDTH(4),
        .TDATA_WIDTH(32),
        .SERIALIZATION_FACTOR(1),
        .CLKCROSS_FACTOR(1),
        .SINGLE_CLOCK(0),
        .SERDES_IN_BUFFER_DEPTH(4),
        .SERDES_OUT_BUFFER_DEPTH(4),
        .SERDES_EXTRA_SYNC_STAGES(0),
        .SERDES_FORCE_MLAB(0),
        .FLIT_BUFFER_DEPTH(4),
        .ROUTING_TABLE_PREFIX("/"),
        .ROUTER_PIPELINE_ROUTE_COMPUTE(1),
        .ROUTER_PIPELINE_ARBITER(0),
        .ROUTER_PIPELINE_OUTPUT(1),
        .ROUTER_FORCE_MLAB(0)
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