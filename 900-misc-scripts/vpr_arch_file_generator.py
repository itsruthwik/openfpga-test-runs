import subprocess
import argparse
import os
import shutil

def parse_arguments():
    parser = argparse.ArgumentParser(description='Generate XML VPR architecture description file for a Verilog hardblock specified.')
    parser.add_argument('--yosys_path', required=False, help='Path to the yosys executable')
    parser.add_argument('--verilog_file', required=True, help='Path to the Verilog file')
    parser.add_argument('--top', help='Top module name for the hardblock')
    parser.add_argument('--output_dir', required=False, help='Output directory for the generated architecture files')
    parser.add_argument('--vpr_arch', required=True, help='Path to the base VPR architecture template file')
    

    return parser.parse_args()

def execute_command(command):
    try:
        result = subprocess.run(command, shell=True, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
        return result.stdout
    except subprocess.CalledProcessError as e:
        return f"An error occurred: {e.stderr}"


def create_unique_directory(path):
    base_path = path
    counter = 1
    path = f"{base_path}_{counter}"
    while os.path.exists(path):
        counter += 1
        path = f"{base_path}_{counter}"
    os.makedirs(path)
    print(f"Created directory: {path}")
    return path

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
#######################################################
args = parse_arguments()

if args.output_dir:
    task_dir = args.output_dir
    print(f"Using output directory {args.output_dir}")  
else:
    print(f"Did not find output directory at: {args.output_dir}")
    task_dir = create_unique_directory("./task")
    print(f"Using output directory {task_dir}")  


#set yosys path
if args.yosys_path:
    yosys_path = args.yosys_path    
else:
    yosys_path = "$OPENFPGA_PATH/build/yosys/bin/yosys"


# generate portlist.txt with yosys
yosys_command = f"{yosys_path} -p 'read_verilog -nowb -sv -noopt  {args.verilog_file}; tee -o {task_dir}/portlist.txt portlist {args.top}'"

try:
    result = subprocess.run(yosys_command, shell=True, check=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
    # print(result.stdout)
    print(f"Generated portlist from Verilog file at {task_dir}/portlist.txt")
except subprocess.CalledProcessError as e:
    print(f"An error occurred: {e.stderr}")

# execute_command(yosys_command)


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
    print("Does not have a clock signal")

# for input_port in port_dict[args.top]["inputs"]:
#     for name, size in input_port.items():
#         print(f"  {name}: {size}")
###########################################################
from lxml import etree as ET

arch_dir = f"{task_dir}/arch"
os.mkdir(arch_dir)

shutil.copy(f'{args.vpr_arch}', f'{arch_dir}/vpr_arch.xml')

# Parse the XML file
tree = ET.parse(f'{arch_dir}/vpr_arch.xml')
root = tree.getroot()

# Create the new <model> tag
new_model = ET.Element('model', {'name': args.top})
input_ports = ET.SubElement(new_model, 'input_ports')
output_ports = ET.SubElement(new_model, 'output_ports')
## TODO: Add combinational and sequential type of ports definition in models
for input_port in port_dict[args.top]["inputs"]:
    for name, size in input_port.items():
        if has_clock:
            ET.SubElement(input_ports, 'port', {'name': name, 'clock': clock_port})
        else:
            ET.SubElement(input_ports, 'port', {'name': name})

for output_port in port_dict[args.top]["outputs"]:
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
tree.write(f'{arch_dir}/vpr_arch.xml')
print(f" - Added model '{args.top}' in VPR arch file at {arch_dir}/vpr_arch.xml")

###################################

# Create the new <tile> tag
new_tile = ET.Element('tile', {'name': f'{args.top}_tile', 'width': '1', 'height': '1', 'area': '1'})
sub_tile = ET.SubElement(new_tile, 'sub_tile', {'name': f'{args.top}_tile'})
equivalent_sites = ET.SubElement(sub_tile, 'equivalent_sites')
ET.SubElement(equivalent_sites, 'site', {'pb_type': f'{args.top}_tile'})
## 
for input_port in port_dict[args.top]["inputs"]:
    for name, size in input_port.items():
        if name == clock_port:
            ET.SubElement(sub_tile, 'clock', {'name': clock_port, 'num_pins': '1'})
        else:
            ET.SubElement(sub_tile, 'input', {'name': name, 'num_pins': f'{size}'})
for output_port in port_dict[args.top]["outputs"]:
    for name, size in output_port.items():
        ET.SubElement(sub_tile, 'output', {'name': name, 'num_pins': f'{size}'})
ET.SubElement(sub_tile, 'fc', {'in_type': 'frac', 'in_val': '0.15', 'out_type': 'frac', 'out_val': '0.10'})
ET.SubElement(sub_tile, 'pinlocations', {'pattern': 'spread'})


indent_xml(new_tile, level=2)

models_element = root.find('.//tiles')
models_element.append(new_tile)

tree.write(f'{arch_dir}/vpr_arch.xml')
print(f" - Added tile '{args.top}_tile' in VPR arch file at {arch_dir}/vpr_arch.xml")

########################################

# Create the new <pb_type> tag
new_pb_type = ET.Element('pb_type', {'name': f'{args.top}_tile'})
for input_port in port_dict[args.top]["inputs"]:
    for name, size in input_port.items():
        if name == clock_port:
            ET.SubElement(new_pb_type, 'clock', {'name': clock_port, 'num_pins': '1'})
        else:
            ET.SubElement(new_pb_type, 'input', {'name': name, 'num_pins': f'{size}'})
for output_port in port_dict[args.top]["outputs"]:
    for name, size in output_port.items():
        ET.SubElement(new_pb_type, 'output', {'name': name, 'num_pins': f'{size}'})

mode_1 = ET.SubElement(new_pb_type, 'mode', {'name': args.top})
pb_type_1 = ET.SubElement(mode_1, 'pb_type', {'name': args.top, 'blif_model': f'.subckt {args.top}', 'num_pb': '1'})
for input_port in port_dict[args.top]["inputs"]:
    for name, size in input_port.items():
        if name == clock_port:
            ET.SubElement(pb_type_1, 'clock', {'name': clock_port, 'num_pins': '1'})
        else:
            ET.SubElement(pb_type_1, 'input', {'name': name, 'num_pins': f'{size}'})
for output_port in port_dict[args.top]["outputs"]:
    for name, size in output_port.items():
        ET.SubElement(pb_type_1, 'output', {'name': name, 'num_pins': f'{size}'})

if has_clock:
    for input_port in port_dict[args.top]["inputs"]:
        for name, size in input_port.items():
            if name != clock_port:
                # ET.SubElement(pb_type_1, 'clock', {'name': clock_port, 'num_pins': '1'})
            # else:
                ET.SubElement(pb_type_1, 'T_setup', {'value': '66e-12', 'port': f'{args.top}.{name}', 'clock': clock_port})
                ET.SubElement(pb_type_1, 'T_clock_to_Q', {'value': '124e-12', 'port': f'{args.top}.{name}', 'clock': clock_port})

    for output_port in port_dict[args.top]["outputs"]:
        for name, size in output_port.items():
            ET.SubElement(pb_type_1, 'T_setup', {'value': '66e-12', 'port': f'{args.top}.{name}', 'clock': clock_port})
            ET.SubElement(pb_type_1, 'T_clock_to_Q', {'value': '124e-12', 'port': f'{args.top}.{name}', 'clock': clock_port})

interconnect_1 = ET.SubElement(mode_1, 'interconnect')
for input_port in port_dict[args.top]["inputs"]:
    for name, size in input_port.items():
        # if name == clock_port:
        #     ET.SubElement(interconnect_1, 'direct', {'name': f'connection_{clock_port}', 'input': f'{args.top}_tile.{clock_port}', 'output': f'{args.top}.{clock_port}'})
        # else:
        ET.SubElement(interconnect_1, 'direct', {'name': f'connection_{name}', 'input': f'{args.top}_tile.{name}', 'output': f'{args.top}.{name}'})
for output_port in port_dict[args.top]["outputs"]:
    for name, size in output_port.items():
        ET.SubElement(interconnect_1, 'direct', {'name': f'connection_{name}', 'input': f'{args.top}.{name}', 'output': f'{args.top}_tile.{name}'})

indent_xml(new_pb_type, level=1)

models_element = root.find('.//complexblocklist')
models_element.append(new_pb_type)

tree.write(f'{arch_dir}/vpr_arch.xml')
print(f" - Added pb_type '{args.top}_tile' in VPR arch file at {arch_dir}/vpr_arch.xml")

print(f"Completed writing VPR arch file with '{args.top}' as a hard block at {arch_dir}/vpr_arch.xml")
