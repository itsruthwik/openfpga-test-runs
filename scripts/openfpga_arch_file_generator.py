import os
import argparse
import shutil
import subprocess
from lxml import etree as ET

def execute_command(command):
    try:
        result = subprocess.run(command, shell=True, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        return result.stdout
    except subprocess.CalledProcessError as e:
        print(f"An error occurred: {e.stderr}")
        return None

def create_unique_directory(path):
    base_path = path
    counter = 1
    path = f"{base_path}_{counter}"
    while os.path.exists(path):
        counter += 1
        path = f"{base_path}_{counter}"
    os.makedirs(path)
    return path

def parse_size(size_str):
    size_str = size_str.strip("[]")
    if ":" in size_str:
        start, end = map(int, size_str.split(":"))
        return abs(start - end) + 1
    return 1

def generate_portlist(yosys_path, verilog_file, top, task_dir):
    yosys_command = f"{yosys_path} -p 'read_verilog -nowb -sv -noopt {verilog_file}; tee -o {task_dir}/portlist.txt portlist {top}'"
    # execute_command(yosys_command)
    try:
        result = subprocess.run(yosys_command, shell=True, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        # print(result.stdout)
        print(f"Generated portlist from Verilog file at {task_dir}/portlist.txt")
    except subprocess.CalledProcessError as e:
        print(f"An error occurred: {e.stderr}")

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
    return port_dict

def update_xml(port_dict, top, has_clock, clock_port, arch_dir):
    # Parse the XML file
    parser = ET.XMLParser(remove_blank_text=True)
    tree = ET.parse(f'{arch_dir}/vpr_arch.xml', parser)
    # tree = ET.parse(f'{arch_dir}/vpr_arch.xml')
    root = tree.getroot()

    # Create the new <model> tag
    new_model = ET.Element('model', {'name': top})
    input_ports = ET.SubElement(new_model, 'input_ports')
    output_ports = ET.SubElement(new_model, 'output_ports')
    ## TODO: Add combinational and sequential type of ports definition in models
    for input_port in port_dict[top]["inputs"]:
        for name, size in input_port.items():
            # print(f"  {name}: {size}")
            # input_port_elem = ET.SubElement(input_ports, 'port', {'name': name})
            if has_clock:
                # input_port_elem.set('clock', clock_port)
                ET.SubElement(input_ports, 'port', {'name': name, 'clock': clock_port})
            else:
                ET.SubElement(input_ports, 'port', {'name': name})

    for output_port in port_dict[top]["outputs"]:
        for name, size in output_port.items():
            # print(f"  {name}: {size}")
            # output_port_elem = ET.SubElement(output_ports, 'port', {'name': name})
            if has_clock:
                # output_port_elem.set('clock', clock_port)
                ET.SubElement(output_ports, 'port', {'name': name, 'clock': clock_port})
            else:
                ET.SubElement(output_ports, 'port', {'name': name})

    # Find the <models> element
    models_element = root.find('.//models')

    # Insert the new <model> element before the closing </models> tag
    models_element.append(new_model)

    tree.write(f'{arch_dir}/vpr_arch.xml', pretty_print=True, xml_declaration=True, encoding='UTF-8')
    print(f" - Added model '{args.top}' in VPR arch file at {arch_dir}/vpr_arch.xml")

    # Create the new <tile> tag
    new_tile = ET.Element('tile', {'name': f'{top}_tile', 'width': '1', 'height': '1', 'area': '1'})
    sub_tile = ET.SubElement(new_tile, 'sub_tile', {'name': f'{top}_tile'})
    equivalent_sites = ET.SubElement(sub_tile, 'equivalent_sites')
    ET.SubElement(equivalent_sites, 'site', {'pb_type': f'{top}_tile'})
    
    for input_port in port_dict[top]["inputs"]:
        for name, size in input_port.items():
            if name == clock_port:
                ET.SubElement(sub_tile, 'clock', {'name': clock_port, 'num_pins': '1'})
            else:
                ET.SubElement(sub_tile, 'input', {'name': name, 'num_pins': f'{size}'})
    for output_port in port_dict[top]["outputs"]:
        for name, size in output_port.items():
            ET.SubElement(sub_tile, 'output', {'name': name, 'num_pins': f'{size}'})
    ET.SubElement(sub_tile, 'fc', {'in_type': 'frac', 'in_val': '0.15', 'out_type': 'frac', 'out_val': '0.10'})
    ET.SubElement(sub_tile, 'pinlocations', {'pattern': 'spread'})

    # Find the <tiles> element
    tiles_element = root.find('.//tiles')

    # Insert the new <tile> element before the closing </tiles> tag
    tiles_element.append(new_tile)

    # Write the modified XML back to the file
    tree.write(f'{arch_dir}/vpr_arch.xml', pretty_print=True, xml_declaration=True, encoding='UTF-8')
    print(f" - Added tile '{args.top}_tile' in VPR arch file at {arch_dir}/vpr_arch.xml")


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
                    # ET.SubElement(pb_type_1, 'clock', {'name': clock_port, 'num_pins': '1'})
                # else:
                    ET.SubElement(pb_type_1, 'T_setup', {'value': '66e-12', 'port': f'{top}.{name}', 'clock': clock_port})
                    ET.SubElement(pb_type_1, 'T_clock_to_Q', {'value': '124e-12', 'port': f'{top}.{name}', 'clock': clock_port})

        for output_port in port_dict[args.top]["outputs"]:
            for name, size in output_port.items():
                ET.SubElement(pb_type_1, 'T_setup', {'value': '66e-12', 'port': f'{top}.{name}', 'clock': clock_port})
                ET.SubElement(pb_type_1, 'T_clock_to_Q', {'value': '124e-12', 'port': f'{top}.{name}', 'clock': clock_port})

    interconnect_1 = ET.SubElement(mode_1, 'interconnect')
    for input_port in port_dict[top]["inputs"]:
        for name, size in input_port.items():
            # if name == clock_port:
            #     ET.SubElement(interconnect_1, 'direct', {'name': f'connection_{clock_port}', 'input': f'{args.top}_tile.{clock_port}', 'output': f'{args.top}.{clock_port}'})
            # else:
            ET.SubElement(interconnect_1, 'direct', {'name': f'connection_{name}', 'input': f'{top}_tile.{name}', 'output': f'{top}.{name}'})
    for output_port in port_dict[args.top]["outputs"]:
        for name, size in output_port.items():
            ET.SubElement(interconnect_1, 'direct', {'name': f'connection_{name}', 'input': f'{top}.{name}', 'output': f'{top}_tile.{name}'})


    models_element = root.find('.//complexblocklist')

    models_element.append(new_pb_type)

    # tree.write(f'{arch_dir}/vpr_arch.xml')
    tree.write(f'{arch_dir}/vpr_arch.xml', pretty_print=True, xml_declaration=True, encoding='UTF-8')

    print(f" - Added pb_type '{args.top}_tile' in VPR arch file at {arch_dir}/vpr_arch.xml")

    print(f"Completed writing VPR arch file with '{args.top}' as a hard block at {arch_dir}/vpr_arch.xml")


###########################################################

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Generate XML VPR architecture description file for a Verilog hardblock specified.')
    parser.add_argument('--yosys_path', required=False, help='Path to the yosys executable')
    parser.add_argument('--verilog_file', required=True, help='Path to the Verilog file')
    parser.add_argument('--top', required=True, help='Top module name for the hardblock')
    parser.add_argument('--output_dir', required=False, help='Output directory for the generated architecture files')
    parser.add_argument('--vpr_arch', required=True, help='Path to the base VPR architecture template file')
    args = parser.parse_args()

    if args.output_dir:
        task_dir = args.output_dir  
        print(f"Using output directory {args.output_dir}")  
    else:
        print(f"Did not find output directory at: {args.output_dir}")
        task_dir = create_unique_directory("./task")
        print(f"Using output directory {task_dir}")  

    # Set yosys path
    if args.yosys_path:
        yosys_path = args.yosys_path    
    else:
        yosys_path = "$OPENFPGA_PATH/build/yosys/bin/yosys"

    # Generate portlist.txt with yosys
    port_dict = generate_portlist(yosys_path, args.verilog_file, args.top, task_dir)

    # print(port_dict[args.top]["inputs"])

    # Check if there is a clock in inputs of port_dict
    has_clock = False
    for input_port in port_dict[args.top]["inputs"]:
        for name, size in input_port.items():
            if name.startswith("clk") or name.lower() == "clock" or name.startswith("CLK"):
                has_clock = True
                clock_port = name
                break
        if has_clock:
            break

    if not has_clock:
        print("Did not find  a clock signal")

    # for input_port in port_dict[args.top]["inputs"]:
    #     for name, size in input_port.items():
    #         print(f"  {name}: {size}")

    arch_dir = f"{task_dir}/arch"
    os.mkdir(arch_dir)

    shutil.copy(f'{args.vpr_arch}', f'{arch_dir}/vpr_arch.xml')

    update_xml(port_dict, args.top, has_clock, clock_port, arch_dir)