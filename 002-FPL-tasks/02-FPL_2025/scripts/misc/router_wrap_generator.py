#!/usr/bin/env python3
import yaml
import os
import sys
from string import Template

# Define paths
yaml_path = "/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/FPL_2025/noc.yaml"
output_path = "/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/FPL_2025/test/router_wrap_generated.v"

# Read YAML file
try:
    with open(yaml_path, 'r') as yaml_file:
        config = yaml.safe_load(yaml_file)
        noc_params = config['noc']
except (FileNotFoundError, yaml.YAMLError) as e:
    print(f"Error reading YAML file: {e}")
    sys.exit(1)

# Verilog template with parameter placeholders
verilog_template = '''
(* whitebox *)
module router_wrap #(
    parameter RESET_SYNC_EXTEND_CYCLES = $RESET_SYNC_EXTEND_CYCLES,
    parameter RESET_NUM_OUTPUT_REGISTERS = $RESET_NUM_OUTPUT_REGISTERS,
    parameter NUM_INPUTS = $NUM_INPUTS,
    parameter NUM_OUTPUTS = $NUM_OUTPUTS,
    parameter TID_WIDTH = $TID_WIDTH,
    parameter TDEST_WIDTH = $TDEST_WIDTH,
    parameter TDATA_WIDTH = $TDATA_WIDTH,
    parameter SERIALIZATION_FACTOR = $SERIALIZATION_FACTOR,
    parameter CLKCROSS_FACTOR = $CLKCROSS_FACTOR,
    parameter bit SINGLE_CLOCK = $SINGLE_CLOCK,
    parameter SERDES_IN_BUFFER_DEPTH = $SERDES_IN_BUFFER_DEPTH,
    parameter SERDES_OUT_BUFFER_DEPTH = $SERDES_OUT_BUFFER_DEPTH,
    parameter SERDES_EXTRA_SYNC_STAGES = $SERDES_EXTRA_SYNC_STAGES,
    parameter bit SERDES_FORCE_MLAB = $SERDES_FORCE_MLAB,
    parameter FLIT_BUFFER_DEPTH = $FLIT_BUFFER_DEPTH,
    parameter ROUTING_TABLE_PREFIX = "$ROUTING_TABLE_PREFIX",
    parameter ROUTER_PIPELINE_ROUTE_COMPUTE = $ROUTER_PIPELINE_ROUTE_COMPUTE,
    parameter ROUTER_PIPELINE_ARBITER = $ROUTER_PIPELINE_ARBITER,
    parameter ROUTER_PIPELINE_OUTPUT = $ROUTER_PIPELINE_OUTPUT,
    parameter bit ROUTER_FORCE_MLAB = $ROUTER_FORCE_MLAB
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

    // Wire arrays to connect to axis router - cannot be passed directly to module ports
    wire [NUM_INPUTS-1:0] axis_in_tvalid_flat;
    wire [NUM_INPUTS-1:0] axis_in_tready_flat;
    wire [(NUM_INPUTS*TDATA_WIDTH)-1:0] axis_in_tdata_flat;
    wire [NUM_INPUTS-1:0] axis_in_tlast_flat;
    wire [(NUM_INPUTS*TID_WIDTH)-1:0] axis_in_tid_flat;
    wire [(NUM_INPUTS*TDEST_WIDTH)-1:0] axis_in_tdest_flat;
    
    wire [NUM_OUTPUTS-1:0] axis_out_tvalid_flat;
    wire [NUM_OUTPUTS-1:0] axis_out_tready_flat;
    wire [(NUM_OUTPUTS*TDATA_WIDTH)-1:0] axis_out_tdata_flat;
    wire [NUM_OUTPUTS-1:0] axis_out_tlast_flat;
    wire [(NUM_OUTPUTS*TID_WIDTH)-1:0] axis_out_tid_flat;
    wire [(NUM_OUTPUTS*TDEST_WIDTH)-1:0] axis_out_tdest_flat;

    // Connect direction-specific ports to flat arrays
    // top port
    assign axis_in_tvalid_flat[0] = axis_in_tvalid_top;
    assign axis_in_tready_top = axis_in_tready_flat[0];
    assign axis_in_tdata_flat[TDATA_WIDTH-1:0] = axis_in_tdata_top;
    assign axis_in_tlast_flat[0] = axis_in_tlast_top;
    assign axis_in_tid_flat[TID_WIDTH-1:0] = axis_in_tid_top;
    assign axis_in_tdest_flat[TDEST_WIDTH-1:0] = axis_in_tdest_top;
    assign axis_out_tvalid_top = axis_out_tvalid_flat[0];
    assign axis_out_tready_flat[0] = axis_out_tready_top;
    assign axis_out_tdata_top = axis_out_tdata_flat[TDATA_WIDTH-1:0];
    assign axis_out_tlast_top = axis_out_tlast_flat[0];
    assign axis_out_tid_top = axis_out_tid_flat[TID_WIDTH-1:0];
    assign axis_out_tdest_top = axis_out_tdest_flat[TDEST_WIDTH-1:0];
    
    // right port
    assign axis_in_tvalid_flat[1] = axis_in_tvalid_right;
    assign axis_in_tready_right = axis_in_tready_flat[1];
    assign axis_in_tdata_flat[2*TDATA_WIDTH-1:TDATA_WIDTH] = axis_in_tdata_right;
    assign axis_in_tlast_flat[1] = axis_in_tlast_right;
    assign axis_in_tid_flat[2*TID_WIDTH-1:TID_WIDTH] = axis_in_tid_right;
    assign axis_in_tdest_flat[2*TDEST_WIDTH-1:TDEST_WIDTH] = axis_in_tdest_right;
    assign axis_out_tvalid_right = axis_out_tvalid_flat[1];
    assign axis_out_tready_flat[1] = axis_out_tready_right;
    assign axis_out_tdata_right = axis_out_tdata_flat[2*TDATA_WIDTH-1:TDATA_WIDTH];
    assign axis_out_tlast_right = axis_out_tlast_flat[1];
    assign axis_out_tid_right = axis_out_tid_flat[2*TID_WIDTH-1:TID_WIDTH];
    assign axis_out_tdest_right = axis_out_tdest_flat[2*TDEST_WIDTH-1:TDEST_WIDTH];
    
    // bottom pot 
    assign axis_in_tvalid_flat[2] = axis_in_tvalid_bottom;
    assign axis_in_tready_bottom = axis_in_tready_flat[2];
    assign axis_in_tdata_flat[3*TDATA_WIDTH-1:2*TDATA_WIDTH] = axis_in_tdata_bottom;
    assign axis_in_tlast_flat[2] = axis_in_tlast_bottom;
    assign axis_in_tid_flat[3*TID_WIDTH-1:2*TID_WIDTH] = axis_in_tid_bottom;
    assign axis_in_tdest_flat[3*TDEST_WIDTH-1:2*TDEST_WIDTH] = axis_in_tdest_bottom;
    assign axis_out_tvalid_bottom = axis_out_tvalid_flat[2];
    assign axis_out_tready_flat[2] = axis_out_tready_bottom;
    assign axis_out_tdata_bottom = axis_out_tdata_flat[3*TDATA_WIDTH-1:2*TDATA_WIDTH];
    assign axis_out_tlast_bottom = axis_out_tlast_flat[2];
    assign axis_out_tid_bottom = axis_out_tid_flat[3*TID_WIDTH-1:2*TID_WIDTH];
    assign axis_out_tdest_bottom = axis_out_tdest_flat[3*TDEST_WIDTH-1:2*TDEST_WIDTH];
    
    // left port
    assign axis_in_tvalid_flat[3] = axis_in_tvalid_left;
    assign axis_in_tready_left = axis_in_tready_flat[3];
    assign axis_in_tdata_flat[4*TDATA_WIDTH-1:3*TDATA_WIDTH] = axis_in_tdata_left;
    assign axis_in_tlast_flat[3] = axis_in_tlast_left;
    assign axis_in_tid_flat[4*TID_WIDTH-1:3*TID_WIDTH] = axis_in_tid_left;
    assign axis_in_tdest_flat[4*TDEST_WIDTH-1:3*TDEST_WIDTH] = axis_in_tdest_left;
    assign axis_out_tvalid_left = axis_out_tvalid_flat[3];
    assign axis_out_tready_flat[3] = axis_out_tready_left;
    assign axis_out_tdata_left = axis_out_tdata_flat[4*TDATA_WIDTH-1:3*TDATA_WIDTH];
    assign axis_out_tlast_left = axis_out_tlast_flat[3];
    assign axis_out_tid_left = axis_out_tid_flat[4*TID_WIDTH-1:3*TID_WIDTH];
    assign axis_out_tdest_left = axis_out_tdest_flat[4*TDEST_WIDTH-1:3*TDEST_WIDTH];
    
    // injection port
    assign axis_in_tvalid_flat[4] = axis_in_tvalid;
    assign axis_in_tready = axis_in_tready_flat[4];
    assign axis_in_tdata_flat[5*TDATA_WIDTH-1:4*TDATA_WIDTH] = axis_in_tdata;
    assign axis_in_tlast_flat[4] = axis_in_tlast;
    assign axis_in_tid_flat[5*TID_WIDTH-1:4*TID_WIDTH] = axis_in_tid;
    assign axis_in_tdest_flat[5*TDEST_WIDTH-1:4*TDEST_WIDTH] = axis_in_tdest;
    assign axis_out_tvalid = axis_out_tvalid_flat[4];
    assign axis_out_tready_flat[4] = axis_out_tready;
    assign axis_out_tdata = axis_out_tdata_flat[5*TDATA_WIDTH-1:4*TDATA_WIDTH];
    assign axis_out_tlast = axis_out_tlast_flat[4];
    assign axis_out_tid = axis_out_tid_flat[5*TID_WIDTH-1:4*TID_WIDTH];
    assign axis_out_tdest = axis_out_tdest_flat[5*TDEST_WIDTH-1:4*TDEST_WIDTH];

    // Router instantiation with flattened arrays
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
        
        .axis_in_tvalid(axis_in_tvalid_flat),
        .axis_in_tready(axis_in_tready_flat),
        .axis_in_tdata(axis_in_tdata_flat),
        .axis_in_tlast(axis_in_tlast_flat),
        .axis_in_tid(axis_in_tid_flat),
        .axis_in_tdest(axis_in_tdest_flat),
        
        .axis_out_tvalid(axis_out_tvalid_flat),
        .axis_out_tready(axis_out_tready_flat),
        .axis_out_tdata(axis_out_tdata_flat),
        .axis_out_tlast(axis_out_tlast_flat),
        .axis_out_tid(axis_out_tid_flat),
        .axis_out_tdest(axis_out_tdest_flat)
    );

endmodule
'''

# Create a template from the Verilog code
template = Template(verilog_template)

# Replace the placeholders with values from the YAML file
try:
    verilog_code = template.substitute(
        RESET_SYNC_EXTEND_CYCLES=noc_params.get('RESET_SYNC_EXTEND_CYCLES', 2),
        RESET_NUM_OUTPUT_REGISTERS=noc_params.get('RESET_NUM_OUTPUT_REGISTERS', 1),
        NUM_INPUTS=noc_params.get('NUM_INPUTS', 5),
        NUM_OUTPUTS=noc_params.get('NUM_OUTPUTS', 5),
        TID_WIDTH=noc_params.get('TID_WIDTH', 2),
        TDEST_WIDTH=noc_params.get('TDEST_WIDTH', 4),
        TDATA_WIDTH=noc_params.get('TDATA_WIDTH', 32),
        SERIALIZATION_FACTOR=noc_params.get('SERIALIZATION_FACTOR', 1),
        CLKCROSS_FACTOR=noc_params.get('CLKCROSS_FACTOR', 1),
        SINGLE_CLOCK=noc_params.get('SINGLE_CLOCK', 0),
        SERDES_IN_BUFFER_DEPTH=noc_params.get('SERDES_IN_BUFFER_DEPTH', 4),
        SERDES_OUT_BUFFER_DEPTH=noc_params.get('SERDES_OUT_BUFFER_DEPTH', 4),
        SERDES_EXTRA_SYNC_STAGES=noc_params.get('SERDES_EXTRA_SYNC_STAGES', 0),
        SERDES_FORCE_MLAB=noc_params.get('SERDES_FORCE_MLAB', 0),
        FLIT_BUFFER_DEPTH=noc_params.get('FLIT_BUFFER_DEPTH', 4),
        ROUTING_TABLE_PREFIX=noc_params.get('ROUTING_TABLE_PREFIX', '/'),
        ROUTER_PIPELINE_ROUTE_COMPUTE=noc_params.get('ROUTER_PIPELINE_ROUTE_COMPUTE', 1),
        ROUTER_PIPELINE_ARBITER=noc_params.get('ROUTER_PIPELINE_ARBITER', 0),
        ROUTER_PIPELINE_OUTPUT=noc_params.get('ROUTER_PIPELINE_OUTPUT', 1),
        ROUTER_FORCE_MLAB=noc_params.get('ROUTER_FORCE_MLAB', 0)
    )
except KeyError as e:
    print(f"Missing parameter in YAML: {e}")
    sys.exit(1)

# Add header comment with generation info
header = f'''// Auto-generated router_wrap.v from YAML configuration
// Source YAML: {yaml_path}
'''
# // Generated on {import datetime; datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}

# Write the resulting Verilog file
try:
    with open(output_path, 'w') as verilog_file:
        verilog_file.write(header + verilog_code)
    print(f"Generated router_wrap.v at {output_path}")
except IOError as e:
    print(f"Error writing Verilog file: {e}")
    sys.exit(1)