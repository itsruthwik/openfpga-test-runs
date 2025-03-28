import os
import sys
import shutil
import time
from datetime import timedelta
import shlex
import argparse
from configparser import ConfigParser, ExtendedInterpolation
import logging
import glob
import subprocess
import threading
import csv
from string import Template
import pprint
from importlib import util
from collections import OrderedDict
from lxml import etree as ET


if util.find_spec("coloredlogs"):
    import coloredlogs
if util.find_spec("humanize"):
    import humanize

# def parse_arguments():
#     parser = argparse.ArgumentParser(description='Generate XML VPR architecture description file for a Verilog hardblock specified.')
#     parser.add_argument('--yosys_path', required=False, help='Path to the yosys executable')
#     parser.add_argument('--verilog_file', required=False, help='Path to the Verilog file')
#     parser.add_argument('--spice_file', required=False, help='Path to the spice netlist file')
#     parser.add_argument('--top', help='Top module name for the hardblock')
#     # parser.add_argument('--output_dir', required=False, help='Output directory for the generated architecture files')
#     parser.add_argument('--vpr_output_dir', required=False, help='Output directory for the generated VPR architecture file')
#     parser.add_argument('--openpfga_output_dir', required=False, help='Output directory for the generated OpenFPGA architecture file')
#     parser.add_argument('--temp_dir', required=False, help='Output directory for temporary files')
#     parser.add_argument('--vpr_arch', required=False, help='Path to the base VPR architecture template file')
#     parser.add_argument('--openfpga_arch', required=False, help='Path to the base OpenFPGA architecture template file')                            
#     # parser.add_argument('--is_noc', required=False, help='')
#     return parser.parse_args()

# def create_unique_directory(path):
#     base_path = path
#     counter = 1
#     path = f"{base_path}_{counter}"
#     while os.path.exists(path):
#         counter += 1
#         path = f"{base_path}_{counter}"
#     os.makedirs(path)
#     # print(f"Created directory: {path}")
#     return path

def parse_size(size_str):
    size_str = size_str.strip("[]")
    if ":" in size_str:
        start, end = map(int, size_str.split(":"))
        return abs(start - end) + 1
    return 1

def indent_xml(elem, level=0):
    i = "\n" + level * "   "
    if len(elem):
        if not elem.text or not elem.text.strip():
            elem.text = i + "   "
        for subelem in elem:
            indent_xml(subelem, level + 1)
        if not elem.tail or not elem.tail.strip():
            elem.tail = i
    else:
        if not elem.tail or not elem.tail.strip():
            elem.tail = i

def add_vpr_model(top, port_dict, has_clock, clock_port, vpr_arch_file, root, tree):
    # Create the new <model> tag
    new_model = ET.Element('model', {'name': top})
    input_ports = ET.SubElement(new_model, 'input_ports')
    output_ports = ET.SubElement(new_model, 'output_ports')
    ## TODO: Add combinational and sequential type of ports definition in models
    for input_port in port_dict[top]["inputs"]:
        for name, size in input_port.items():
            if name == clock_port:
                ET.SubElement(input_ports, 'port', {'name': clock_port, 'is_clock': '1'})
            else:
                if has_clock:
                    ET.SubElement(input_ports, 'port', {'name': name, 'clock': clock_port})
                else:
                    ET.SubElement(input_ports, 'port', {'name': name})

    for output_port in port_dict[top]["outputs"]:
        for name, size in output_port.items():
            if has_clock:
                ET.SubElement(output_ports, 'port', {'name': name, 'clock': clock_port})
            else:
                ET.SubElement(output_ports, 'port', {'name': name})

    # Indent 
    indent_xml(new_model, level=2)

    # Find the <models> tag
    models_element = root.find('.//models')

    models_element.append(new_model)
    tree.write(vpr_arch_file)
    print(f" ---------- Added model '{top}' in VPR arch file at $arch_dir/vpr_arch.xml")


def add_vpr_tile(top, port_dict, has_clock, clock_port, vpr_arch_file, root, tree):
    interface = 'axis'
    # Create the new <tile> tag
    new_tile = ET.Element('tile', {'name': f'{top}_tile', 'width': '5', 'height': '5'})
    sub_tile = ET.SubElement(new_tile, 'sub_tile', {'name': f'{top}_tile'})
    equivalent_sites = ET.SubElement(sub_tile, 'equivalent_sites')
    ET.SubElement(equivalent_sites, 'site', {'pb_type': f'{top}_tile'})
    
    # Declare all ports
    for input_port in port_dict[top]["inputs"]:
        for name, size in input_port.items():
            if name == clock_port:
                ET.SubElement(sub_tile, 'clock', {'name': clock_port, 'num_pins': '1'})
            else:
                ET.SubElement(sub_tile, 'input', {'name': name, 'num_pins': f'{size}'})
    for output_port in port_dict[top]["outputs"]:
        for name, size in output_port.items():
            ET.SubElement(sub_tile, 'output', {'name': name, 'num_pins': f'{size}'})
    
    # First collect all ports by direction to use for both fc_override and pinlocations
    top_ports = []
    right_ports = []
    bottom_ports = []
    left_ports = []
    core_ports = []
    clock_reset_ports = []
    
    # Group ports by direction (based on naming conventions)
    for input_port in port_dict[top]["inputs"]:
        for name, size in input_port.items():
            if name == clock_port or 'clk' in name.lower() or 'rst' in name.lower() or 'reset' in name.lower():
                clock_reset_ports.append(name)
            elif 'top' in name.lower() or 'north' in name.lower():
                top_ports.append(name)
            elif 'right' in name.lower() or 'east' in name.lower():
                right_ports.append(name)
            elif 'bottom' in name.lower() or 'south' in name.lower():
                bottom_ports.append(name)
            elif 'left' in name.lower() or 'west' in name.lower():
                left_ports.append(name)
            else:
                core_ports.append(name)
                
    for output_port in port_dict[top]["outputs"]:
        for name, size in output_port.items():
            if 'top' in name.lower() or 'north' in name.lower():
                top_ports.append(name)
            elif 'right' in name.lower() or 'east' in name.lower():
                right_ports.append(name)
            elif 'bottom' in name.lower() or 'south' in name.lower():
                bottom_ports.append(name)
            elif 'left' in name.lower() or 'west' in name.lower():
                left_ports.append(name)
            else:
                core_ports.append(name)
    
    # Create the base fc element with appropriate values for router
    if interface == 'axis' or 'router' in top.lower() or 'noc' in top.lower():
        fc = ET.SubElement(sub_tile, 'fc', {'in_type': 'frac', 'in_val': '0.055', 'out_type': 'frac', 'out_val': '0.075'})
        
        # Add comment for top ports
        fc.append(ET.Comment(' top '))
        for port in top_ports:
            ET.SubElement(fc, 'fc_override', {'port_name': port, 'fc_type': 'frac', 'fc_val': '0'})
        
        # Add comment for right ports
        fc.append(ET.Comment(' right '))
        for port in right_ports:
            ET.SubElement(fc, 'fc_override', {'port_name': port, 'fc_type': 'frac', 'fc_val': '0'})
        
        # Add comment for bottom ports
        fc.append(ET.Comment(' bottom '))
        for port in bottom_ports:
            ET.SubElement(fc, 'fc_override', {'port_name': port, 'fc_type': 'frac', 'fc_val': '0'})
        
        # Add comment for left ports
        fc.append(ET.Comment(' left '))
        for port in left_ports:
            ET.SubElement(fc, 'fc_override', {'port_name': port, 'fc_type': 'frac', 'fc_val': '0'})
        
        # Optionally add fc_override for clock/reset/core ports if needed
        # fc.append(ET.Comment(' control signals '))
        # for port in clock_reset_ports:
        #    ET.SubElement(fc, 'fc_override', {'port_name': port, 'fc_type': 'frac', 'fc_val': '0'})
    else:
        # For non-router tiles, use the default fc values
        ET.SubElement(sub_tile, 'fc', {'in_type': 'frac', 'in_val': '0.15', 'out_type': 'frac', 'out_val': '0.10'})
    
    # Now create pinlocations with the same grouped ports
    if interface == 'axis' or 'router' in top.lower() or 'noc' in top.lower():
        pinlocations = ET.SubElement(sub_tile, 'pinlocations', {'pattern': 'custom'})
        
        # Format the full port names with tile prefix
        top_port_names = [f"{top}_tile.{port}" for port in top_ports]
        right_port_names = [f"{top}_tile.{port}" for port in right_ports]
        bottom_port_names = [f"{top}_tile.{port}" for port in bottom_ports]
        left_port_names = [f"{top}_tile.{port}" for port in left_ports]
        clock_reset_port_names = [f"{top}_tile.{port}" for port in clock_reset_ports]
        core_port_names = [f"{top}_tile.{port}" for port in core_ports]
        
        # Create location elements for each side
        if top_port_names:
            ET.SubElement(pinlocations, 'loc', {'side': 'top', 'xoffset': '4', 'yoffset': '0'}).text = " ".join(top_port_names)
        if right_port_names:
            ET.SubElement(pinlocations, 'loc', {'side': 'right', 'xoffset': '0', 'yoffset': '4'}).text = " ".join(right_port_names)
        if bottom_port_names:
            ET.SubElement(pinlocations, 'loc', {'side': 'bottom', 'xoffset': '4', 'yoffset': '0'}).text = " ".join(bottom_port_names)
        if left_port_names:
            ET.SubElement(pinlocations, 'loc', {'side': 'left', 'xoffset': '0', 'yoffset': '4'}).text = " ".join(left_port_names)
        
        # Add clocks and core ports
        if clock_reset_port_names:
            ET.SubElement(pinlocations, 'loc', {'side': 'left', 'xoffset': '0', 'yoffset': '0'}).text = " ".join(clock_reset_port_names)
        
        # Split core ports into two locations
        if core_port_names:
            half = len(core_port_names) // 2
            ET.SubElement(pinlocations, 'loc', {'side': 'bottom', 'xoffset': '0', 'yoffset': '0'}).text = " ".join(core_port_names[:half])
            ET.SubElement(pinlocations, 'loc', {'side': 'bottom', 'xoffset': '1', 'yoffset': '0'}).text = " ".join(core_port_names[half:])
    else:
        # For non-router tiles, use the default spread pattern
        ET.SubElement(sub_tile, 'pinlocations', {'pattern': 'spread'})

    indent_xml(new_tile, level=2)
    models_element = root.find('.//tiles')
    models_element.append(new_tile)
    tree.write(vpr_arch_file)
    print(f" ---------- Added tile '{top}_tile' in VPR arch file at {vpr_arch_file}")

def add_vpr_pb_type(top, port_dict, has_clock, clock_port, vpr_arch_file, root, tree):
    # Create the new <pb_type> tag
    new_pb_type = ET.Element('pb_type', {'name': f'{top}_tile'})
    for input_port in port_dict[top]["inputs"]:
        for name, size in input_port.items():
            if name == clock_port:
                ET.SubElement(new_pb_type, 'clock', {'name': clock_port, 'num_pins': '1'})
            else:
                ET.SubElement(new_pb_type, 'input', {'name': name, 'num_pins': f'{size}'})
    for output_port in port_dict[top]["outputs"]:
        for name, size in output_port.items():
            ET.SubElement(new_pb_type, 'output', {'name': name, 'num_pins': f'{size}'})

    mode_1 = ET.SubElement(new_pb_type, 'mode', {'name': top})
    pb_type_1 = ET.SubElement(mode_1, 'pb_type', {'name': top, 'blif_model': f'.subckt {top}', 'num_pb': '1'})
    for input_port in port_dict[top]["inputs"]:
        for name, size in input_port.items():
            if name == clock_port:
                ET.SubElement(pb_type_1, 'clock', {'name': clock_port, 'num_pins': '1'})
            else:
                ET.SubElement(pb_type_1, 'input', {'name': name, 'num_pins': f'{size}'})
    for output_port in port_dict[top]["outputs"]:
        for name, size in output_port.items():
            ET.SubElement(pb_type_1, 'output', {'name': name, 'num_pins': f'{size}'})

    if has_clock:
        for input_port in port_dict[top]["inputs"]:
            for name, size in input_port.items():
                if name != clock_port:
                    ET.SubElement(pb_type_1, 'T_setup', {'value': '66e-12', 'port': f'{top}.{name}', 'clock': clock_port})
                    ET.SubElement(pb_type_1, 'T_clock_to_Q', {'max': '42e-12', 'min': '37e-12', 'port': f'{top}.{name}', 'clock': clock_port})

        for output_port in port_dict[top]["outputs"]:
            for name, size in output_port.items():
                ET.SubElement(pb_type_1, 'T_setup', {'value': '66e-12', 'port': f'{top}.{name}', 'clock': clock_port})
                ET.SubElement(pb_type_1, 'T_clock_to_Q', {'max': '42e-12', 'min': '37e-12', 'port': f'{top}.{name}', 'clock': clock_port})

    interconnect_1 = ET.SubElement(mode_1, 'interconnect')
    for input_port in port_dict[top]["inputs"]:
        for name, size in input_port.items():
            ET.SubElement(interconnect_1, 'direct', {'name': f'connection_{name}', 'input': f'{top}_tile.{name}', 'output': f'{top}.{name}'})
    for output_port in port_dict[top]["outputs"]:
        for name, size in output_port.items():
            ET.SubElement(interconnect_1, 'direct', {'name': f'connection_{name}', 'input': f'{top}.{name}', 'output': f'{top}_tile.{name}'})

    indent_xml(new_pb_type, level=1)

    models_element = root.find('.//complexblocklist')
    models_element.append(new_pb_type)

    tree.write(vpr_arch_file)
    print(f" ---------- Added pb_type '{top}_tile' in VPR arch file")

def add_openfpga_circuit_model(top, verilog_file, spice_file, port_dict, has_clock, clock_port, openfpga_arch_file, root, tree):
    # Create the new <model> tag
    new_circuit_model = ET.Element('circuit_model', {'type': 'hard_logic', 'name': top, 'prefix': top, 'is_default': 'false', 'spice_netlist': spice_file, 'verilog_netlist': verilog_file})
    design_technology = ET.SubElement(new_circuit_model, 'design_technology', {'type': 'cmos'})
    input_buffer = ET.SubElement(new_circuit_model, 'input_buffer', {'exist': 'true', 'circuit_model_name': 'INVTX1'})
    output_buffer = ET.SubElement(new_circuit_model, 'output_buffer', {'exist': 'true', 'circuit_model_name': 'INVTX1'})
   
    for input_port in port_dict[top]["inputs"]:
        for name, size in input_port.items():
            if name == clock_port:
                ET.SubElement(new_circuit_model, 'port', {'type': 'clock', 'prefix': name, 'size': '1', 'is_global': 'true', 'is_clock': 'true'})
            else:
                ET.SubElement(new_circuit_model, 'port', {'type': 'input', 'prefix': name, 'lib_name': name, 'size': f'{size}'})
    for output_port in port_dict[top]["outputs"]:
        for name, size in output_port.items():
            ET.SubElement(new_circuit_model, 'port', {'type': 'output', 'prefix': name, 'lib_name': name, 'size': f'{size}'})

    # Indent 
    indent_xml(new_circuit_model, level=2)

    # Find the <models> tag
    circuit_library_element = root.find('.//circuit_library')

    circuit_library_element.append(new_circuit_model)
    tree.write(openfpga_arch_file)
    print(f" ---------- Added circuit model '{top}' in openfpga arch file")

def add_openfpga_pb_type_annotation(top, openfpga_arch_file, root, tree):
    # Create the new <model> tag
    pb_type_top = ET.Element('pb_type', {'name': f'{top}_tile', 'physical_mode_name': top, 'idle_mode_name': top})
    pb_type_primitive = ET.Element('pb_type', {'name': f'{top}_tile[{top}].{top}', 'circuit_model_name': top})

    # Indent
    indent_xml(pb_type_top, level=1)
    indent_xml(pb_type_primitive, level=1)

    pb_type_annotations_element = root.find('.//pb_type_annotations')

    pb_type_annotations_element.append(pb_type_top)
    pb_type_annotations_element.append(pb_type_primitive)

    tree.write(openfpga_arch_file)
    print(f" ---------- Added pb_type annotation '{top}' in openfpga arch file")

def add_vpr_direct_connections(top, port_dict, has_clock, clock_port, arch_dir, root, tree):
    # Create the new <model> tag
    new_model = ET.Element('model', {'name': top})
    input_ports = ET.SubElement(new_model, 'input_ports')
    output_ports = ET.SubElement(new_model, 'output_ports')

# def add_layout_tag(top, port_dict, has_clock, clock_port, vpr_arch_file, vpr_root, vpr_tree):
def add_vpr_layout_tag(top, port_dict, has_clock, clock_port, vpr_arch_file, vpr_root, vpr_tree):
    # Find the <layout> tag or create it if it doesn't exist
    layout_element = vpr_root.find('.//layout')

    # Create the fixed_layout element
    fixed_layout = ET.SubElement(layout_element, 'fixed_layout', {'name': 'large', 'width': '70', 'height': '70'})
    
    # Add comment for layer 0
    fixed_layout.append(ET.Comment(' <layer die="0"> '))
    
    # Add perimeter and corners
    ET.SubElement(fixed_layout, 'perimeter', {'type': 'io', 'priority': '100'})
    ET.SubElement(fixed_layout, 'corners', {'type': 'EMPTY', 'priority': '101'})
    
    # Add fill with 'clb'
    ET.SubElement(fixed_layout, 'fill', {'type': 'clb', 'priority': '10'})
    
    # Add column of memory
    ET.SubElement(fixed_layout, 'col', {
        'type': 'memory',
        'startx': '2',
        'starty': '1',
        'repeatx': '8',
        'priority': '20'
    })
    ET.SubElement(fixed_layout, 'col', {
        'type': 'EMPTY',
        'startx': '2',
        'repeatx': '8',
        'starty': '1',
        'priority': '19'
    })
    
    # Add comment for end of layer 0
    fixed_layout.append(ET.Comment(' </layer> '))
    
    # Add comment for layer -1
    fixed_layout.append(ET.Comment(' <layer die="-1"> '))
    
    # Add grid of router tiles
    x_positions = [10, 25, 40, 55]
    y_positions = [10, 25, 40, 55]
    
    for x in x_positions:
        for y in y_positions:
            ET.SubElement(fixed_layout, 'single', {
                'type': f'{top}_tile',
                'x': str(x),
                'y': str(y),
                'priority': '50'
            })
    
    # Add comment for end of layer -1
    fixed_layout.append(ET.Comment(' </layer> '))
    
    # Indent the XML for readability
    indent_xml(fixed_layout, level=1)
    
    # Write the updated tree to the file
    vpr_tree.write(vpr_arch_file)
    print(f" ---------- Added fixed layout for '{top}_tile' in VPR arch file")

def add_vpr_noc_tag(top, vpr_arch_file, vpr_root, vpr_tree):
    # Find the architecture root to append the noc element
    architecture = vpr_root
    
    # Create the noc element with attributes
    noc_element = ET.Element('noc', {
        'link_bandwidth': '1e6',
        'router_latency': '1e-9',
        'link_latency': '1e-9',
        'noc_router_tile_name': f'{top}_tile'
    })

    # if 'mesh' in noc_params:    
    #     if noc_params['mesh']['X'] == noc_params['mesh']['Y']:
    #     # Create the mesh element
    #         mesh = ET.SubElement(noc_element, 'mesh', { 'startx': '2', 'starty': '2', 'endx': '70', 'endy': '70', 'size': noc_params['mesh']['X']})
    #     else:
    #         for i in range(noc_params['mesh']['X']):
    #             for j in range(noc_params['mesh']['Y']):
    #                 ET.SubElement(mesh, 'single', { 'x': str(2 + 15 * i), 'y': str(2 + 15 * j)})


    # Create the topology element
    topology = ET.SubElement(noc_element, 'topology')
    
    # Define the router positions (same as in the fixed layout)
    x_positions = [10, 25, 40, 55]
    y_positions = [10, 25, 40, 55]
    
    # Define connections for each router in a 4x4 mesh
    # Initialize router IDs
    router_ids = {}
    for y_idx, y in enumerate(y_positions):
        for x_idx, x in enumerate(x_positions):
            router_id = y_idx * 4 + x_idx
            router_ids[(x, y)] = router_id
    
    # Create router elements with connections
    for y_idx, y in enumerate(y_positions):
        for x_idx, x in enumerate(x_positions):
            router_id = router_ids[(x, y)]
            
            # Determine connections to neighboring routers
            connections = []
            
            # Check west neighbor
            if x_idx > 0:
                connections.append(router_ids[(x_positions[x_idx-1], y)])
                
            # Check east neighbor
            if x_idx < 3:
                connections.append(router_ids[(x_positions[x_idx+1], y)])
                
            # Check north neighbor
            if y_idx > 0:
                connections.append(router_ids[(x, y_positions[y_idx-1])])
                
            # Check south neighbor
            if y_idx < 3:
                connections.append(router_ids[(x, y_positions[y_idx+1])])
            
            # Create router element
            router_element = ET.SubElement(topology, 'router', {
                'id': str(router_id),
                'positionx': str(x),
                'positiony': str(y),
                'connections': ' '.join(map(str, connections))
            })
    
    # Indent the XML for readability
    indent_xml(noc_element)
    
    # Add the noc element to the architecture
    architecture.append(noc_element)
    
    # Write the updated tree to the file
    vpr_tree.write(vpr_arch_file)
    print(f" ---------- Added NoC mesh topology for '{top}_tile' in VPR arch file")

def add_openfpga_noc_tag(top, port_dict, openfpga_arch_file, openfpga_root, openfpga_tree):
    print(f"Adding NoC annotation tag to OpenFPGA arch file for {top}")
    
    # Create port classification for directional routing
    top_in_ports = []
    top_out_ports = []
    right_in_ports = []
    right_out_ports = []
    bottom_in_ports = []
    bottom_out_ports = []
    left_in_ports = []
    left_out_ports = []
    
    # Classify input ports by direction
    for input_port in port_dict[top]["inputs"]:
        for name, size in input_port.items():
            if 'top' in name.lower():
                top_in_ports.append(name)
            elif 'right' in name.lower():
                right_in_ports.append(name)
            elif 'bottom' in name.lower():
                bottom_in_ports.append(name)
            elif 'left' in name.lower():
                left_in_ports.append(name)
    
    for output_port in port_dict[top]["outputs"]:
        for name, size in output_port.items():
            if 'top' in name.lower():
                top_out_ports.append(name)
            elif 'right' in name.lower():
                right_out_ports.append(name)
            elif 'bottom' in name.lower():
                bottom_out_ports.append(name)
            elif 'left' in name.lower():
                left_out_ports.append(name)
    
    noc_annotation = ET.Element('noc_annotation', {'noc_router_tile_name': top})
    
    noc_links = ET.SubElement(noc_annotation, 'noc_links', {
        'link_type': 'hard', 
        'circuit_model': 'direct_interc'
    })
    
    ET.SubElement(noc_links, 'noc_port', {
        'side': 'top',
        'input_pins': ' '.join(top_in_ports),
        'output_pins': ' '.join(top_out_ports)
    })
    
    ET.SubElement(noc_links, 'noc_port', {
        'side': 'right',
        'input_pins': ' '.join(right_in_ports),
        'output_pins': ' '.join(right_out_ports)
    })
    
    ET.SubElement(noc_links, 'noc_port', {
        'side': 'bottom',
        'input_pins': ' '.join(bottom_in_ports),
        'output_pins': ' '.join(bottom_out_ports)
    })
    
    ET.SubElement(noc_links, 'noc_port', {
        'side': 'left',
        'input_pins': ' '.join(left_in_ports),
        'output_pins': ' '.join(left_out_ports)
    })
    
    indent_xml(noc_annotation)
    openfpga_root.append(noc_annotation)
    
    openfpga_tree.write(openfpga_arch_file)
    print(f" ---------- Added NoC annotation for '{top}' in OpenFPGA arch file")


def generate_arch_files(name, yosys_path, verilog_file, spice_file, top, vpr_output_dir, openpfga_output_dir, temp_dir, vpr_arch, openfpga_arch):
    # Set defaults paths
    if not yosys_path:
        if not os.getenv('OPENFPGA_PATH'):
            print("ERROR: Please set OPENFPGA_PATH environment variable or provide -yosys_path")
            exit(1)
        yosys_path = os.getenv('OPENFPGA_PATH', '') + '/build/yosys/bin/yosys'
    if not vpr_arch:
        vpr_arch = os.getenv('OPENFPGA_PATH', '') + '/openfpga_flow/vpr_arch/k6_frac_N10_40nm.xml'
        print(f"WARNING: Template VPR arch file not found using default file at: {vpr_arch}")
        exit(1)
    if not openfpga_arch:
        openfpga_arch = os.getenv('OPENFPGA_PATH', '') + '/openfpga_flow/openfpga_arch/k6_frac_N10_40nm_openfpga.xml'
        print("WARNING: Template OpenFPGA arch file not found using default file at: {openfpga_arch}")
        exit(1)
    if not spice_file:
        print("WARNING: Spice file not provided, using verilog file as spice file")
        spice_file = verilog_file

    task_dir = temp_dir
    # copy vpr template to current arch dir
    shutil.copy(f'{vpr_arch}', f'{vpr_output_dir}/{name}_vpr.xml')
    vpr_arch_file = f'{vpr_output_dir}/{name}_vpr.xml'

    # copy vpr template to current arch dir
    shutil.copy(f'{openfpga_arch}', f'{openpfga_output_dir}/{name}_openfpga.xml')
    openfpga_arch_file = f'{openpfga_output_dir}/{name}_openfpga.xml'

    # generate portlist.txt with yosys
    yosys_command = f"{yosys_path} -p 'read_verilog -nowb -sv -noopt  {verilog_file}; tee -o {task_dir}/portlist.txt portlist {top}'"

    try:
        result = subprocess.run(yosys_command, shell=True, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        print(f"Generated hardblock portlist fromm verilog file at $task_dir/portlist.txt")
    except subprocess.CalledProcessError as e:
        print(f"ERROR: An error occurred: {e.stderr}")

    port_dict = {}

    with open(f'{task_dir}/portlist.txt', 'r') as file:
        lines = file.readlines()
        module_name = ""
        inputs = []
        outputs = []
        
        for line in lines:
            line = line.strip()
            if line.startswith("module"):
                module_name = line.split()[1]
                port_dict[module_name] = {"inputs": [], "outputs": []}
            elif line.startswith("input"):
                size_str = line.split()[1]
                name = line.split()[2]
                size = parse_size(size_str)
                port_dict[module_name]["inputs"].append({name: size})
            elif line.startswith("output"):
                size_str = line.split()[1]
                name = line.split()[2]
                size = parse_size(size_str)
                port_dict[module_name]["outputs"].append({name: size})

    if not port_dict:
        print("ERROR: Could not generate portlist from verilog file")
        exit(1)

    # Check if there is a clock in inputs of port_dict
    has_clock = False
    for input_port in port_dict[top]["inputs"]:
        for name, size in input_port.items():
            if name.startswith("clk") or name.lower() == "clock":
                has_clock = True
                clock_port = name
                break
        if has_clock:
            break
        
    if not has_clock:
        print(" --- Does not have a clock signal")

    # write vpr file
    vpr_tree = ET.parse(vpr_arch_file)
    vpr_root = vpr_tree.getroot()

    print(f'Writing VPR arch file using template {vpr_arch} at {vpr_arch_file}')
    # add model tag
    add_vpr_model(top, port_dict, has_clock, clock_port, vpr_arch_file, vpr_root, vpr_tree)

    # add tile tag
    add_vpr_tile(top, port_dict, has_clock, clock_port, vpr_arch_file, vpr_root, vpr_tree)



    # add pb_type tag
    add_vpr_pb_type(top, port_dict, has_clock, clock_port, vpr_arch_file, vpr_root, vpr_tree)

    add_vpr_layout_tag(top, port_dict, has_clock, clock_port, vpr_arch_file, vpr_root, vpr_tree)

    add_vpr_noc_tag(top, vpr_arch_file, vpr_root, vpr_tree)
    # print(f"# Completed writing VPR arch file with '{top}' as a hard block")

    # write openfpga file
    openfpga_tree = ET.parse(openfpga_arch_file)
    openfpga_root = openfpga_tree.getroot()

    # print("-------- Writing openfpga arch file --------")
    print(f'Writing OpenFPGA arch file using template {openfpga_arch} at {openfpga_arch_file}')

    add_openfpga_circuit_model(top, verilog_file, spice_file, port_dict, has_clock, clock_port, openfpga_arch_file, openfpga_root, openfpga_tree)
    add_openfpga_pb_type_annotation(top, openfpga_arch_file, openfpga_root, openfpga_tree)
    add_openfpga_noc_tag(top, port_dict, openfpga_arch_file, openfpga_root, openfpga_tree)



