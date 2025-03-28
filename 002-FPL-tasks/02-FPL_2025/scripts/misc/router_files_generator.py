#!/usr/bin/env python3
import yaml
import os
import sys
import datetime

def update_parameter(code, param_name, param_value):
    lines = code.split('\n')
    for i, line in enumerate(lines):
        if f"parameter {param_name}" in line:
            # Split by equals sign and rebuild the line with the new value
            parts = line.split('=')
            if len(parts) == 2:
                lines[i] = parts[0] + f"= {param_value}," if line.strip().endswith(',') else parts[0] + f"= {param_value}"
    return '\n'.join(lines)

def process_router_file(reference_file, output_file, noc_params):
    try:
        with open(reference_file, 'r') as ref_file:
            verilog_code = ref_file.read()
    except FileNotFoundError as e:
        print(f"Error reading reference file {reference_file}: {e}")
        return False

    param_updates = {
        "RESET_SYNC_EXTEND_CYCLES": noc_params.get("RESET_SYNC_EXTEND_CYCLES", 2),
        "RESET_NUM_OUTPUT_REGISTERS": noc_params.get("RESET_NUM_OUTPUT_REGISTERS", 1),
        "NUM_INPUTS": noc_params.get("NUM_INPUTS", 5),
        "NUM_OUTPUTS": noc_params.get("NUM_OUTPUTS", 5),
        "TID_WIDTH": noc_params.get("TID_WIDTH", 2),
        "TDEST_WIDTH": noc_params.get("TDEST_WIDTH", 4),
        "TDATA_WIDTH": noc_params.get("TDATA_WIDTH", 32),
        "SERIALIZATION_FACTOR": noc_params.get("SERIALIZATION_FACTOR", 1),
        "CLKCROSS_FACTOR": noc_params.get("CLKCROSS_FACTOR", 1),
        "SINGLE_CLOCK": noc_params.get("SINGLE_CLOCK", 0),
        "SERDES_IN_BUFFER_DEPTH": noc_params.get("SERDES_IN_BUFFER_DEPTH", 4),
        "SERDES_OUT_BUFFER_DEPTH": noc_params.get("SERDES_OUT_BUFFER_DEPTH", 4),
        "SERDES_EXTRA_SYNC_STAGES": noc_params.get("SERDES_EXTRA_SYNC_STAGES", 0),
        "SERDES_FORCE_MLAB": noc_params.get("SERDES_FORCE_MLAB", 0),
        "FLIT_BUFFER_DEPTH": noc_params.get("FLIT_BUFFER_DEPTH", 4),
        "ROUTING_TABLE_PREFIX": f'"{noc_params.get("ROUTING_TABLE_PREFIX", "/")}"',
        "ROUTER_PIPELINE_ROUTE_COMPUTE": noc_params.get("ROUTER_PIPELINE_ROUTE_COMPUTE", 1),
        "ROUTER_PIPELINE_ARBITER": noc_params.get("ROUTER_PIPELINE_ARBITER", 0),
        "ROUTER_PIPELINE_OUTPUT": noc_params.get("ROUTER_PIPELINE_OUTPUT", 1),
        "ROUTER_FORCE_MLAB": noc_params.get("ROUTER_FORCE_MLAB", 0),
    }

    for param_name, param_value in param_updates.items():
        verilog_code = update_parameter(verilog_code, param_name, param_value)

    # Add header comment with generation info
    header = f'''// Auto-generated from {os.path.basename(reference_file)} using YAML configuration

// Source reference: {reference_file}

'''

    try:
        with open(output_file, 'w') as verilog_file:
            verilog_file.write(header + verilog_code)
        print(f"Generated {os.path.basename(output_file)} at {output_file}")
        return True
    except IOError as e:
        print(f"Error writing Verilog file {output_file}: {e}")
        return False



def generate_router_files(router_file_paths, noc_params):
    success = True
    for reference_file, output_file in router_file_paths:
        if not process_router_file(reference_file, output_file, noc_params):
            success = False
    if not success:
        print("Some files could not be processed correctly.")
        sys.exit(1)
    else:
        print("All router files processed successfully.")