import xml.etree.ElementTree as ET
import re

import argparse

def parse_arguments():
    parser = argparse.ArgumentParser(description='TDO: write description.')
    parser.add_argument('--bench_top', help='Top module name of the benchmark')
    parser.add_argument('--address_port', help='Name of Address port on the router hard block')
    parser.add_argument('--vpr_tile', help='Tile name of router hard block in VPR arch file')
    parser.add_argument('--run_dir', required=False, help='OprnFPGA run directory')
    parser.add_argument('--vpr_arch', required=True, help='Path to VPR architecture file')
    return parser.parse_args()


args = parse_arguments()
arch_file_path = args.vpr_arch

pack_file_path = args.run_dir + '/' + args.bench_top + '.net'
place_file_path = args.run_dir + '/' + args.bench_top + '.place'
# bitstream_file_path = args.run_dir + '/' + args.bench_top + '_noc_bitstream.txt'
bitstream_file_path = args.run_dir + '/' +  'noc_bitstream.txt'


noc_table = []

device_layout = 'large'


arch_tree = ET.parse(arch_file_path)
arch_root = arch_tree.getroot()

noc_table = []

# Find the layout tag
layout_tag = arch_root.find(".//layout")
for child in layout_tag:
    if child.tag == 'fixed_layout' and child.attrib.get('name') == device_layout:
        for subchild in child:
            if subchild.attrib.get('type') == args.vpr_tile:
                noc_router = {
                    'X' : int(subchild.attrib.get('x')),
                    'Y' : int(subchild.attrib.get('y')),
                    # 'Name' : 'NA',
                    # 'Instance' : 'NA' ,
                    # 'logical_address' : 'NA',
                }
                noc_table.append(noc_router)

vpr_modes = []
complex_blocks = arch_root.find(".//complexblocklist")
for child in complex_blocks:
    if child.tag == 'pb_type' and child.attrib.get('name') == args.vpr_tile:
        for subchild in child:
            if subchild.tag == 'mode':
                vpr_modes.append(subchild.attrib.get('name'))
                

# Parse the .net file
netlist_tree = ET.parse(pack_file_path)
netlist_root = netlist_tree.getroot()

routers_in_netlist = []

# Function to convert the router address string
def convert_router_address(address):
    bin_string = ''.join('1' if part == '$true' else '0' for part in address.split())
    # return int(bin_string, 2)
    return bin_string

for child in netlist_root:
    if child.tag == 'block':
        if child.attrib.get('mode') in vpr_modes:
            # print(child.attrib) 
            for subchild in child:
                if subchild.tag == 'inputs':
                    for ports in subchild:
                        if ports.attrib.get('name') == args.address_port:
                            # print(ports.text)
                            converted_address = convert_router_address(ports.text)
                            # print(converted_address)
            router_block = {
                'name': child.attrib.get('name'),
                'instance': child.attrib.get('instance'),
                # 'mode': child.attrib.get('mode'),
                'logical_address': converted_address,
            }
            routers_in_netlist.append(router_block)


# Extract block names from noc_router_blocks
block_names = {block['name'] for block in routers_in_netlist}


# Path to the .place file

with open(place_file_path, 'r') as file:
    lines = file.readlines()
    for line in lines:
        # Skip comments and empty lines
        if line.startswith('#') or line.strip() == '':
            continue

        # Split the line into components
        parts = re.split(r'\s+', line.strip())
        if len(parts) >= 6 and parts[0] in block_names:
            for block in routers_in_netlist:
                if block['name'] ==  parts[0]: #block_info['block_name']:
                    block['x'] = int(parts[1]) #block_info['x']
                    block['y'] = int(parts[2]) #block_info['y']


for router in routers_in_netlist:
    for block in noc_table:
        if router['x'] == block['X'] and router['y'] == block['Y']:
            block['Name'] = router['name']
            block['Instance'] = router['instance']
            block['logical_address'] = router['logical_address']
    
# generate bitstream

# for router in noc_table:
#     print(router)

# print('############################################################')

# for router in noc_table:
#     if 'logical_address' in router:
#         print(router['logical_address'])
#     else:
#         print('0000')

# print('############################################################')

noc_bitstream = ""

for router in noc_table:
    if 'logical_address' in router:
        noc_bitstream += router['logical_address']
    else:
        noc_bitstream += '0000'

# print(noc_bitstream)

# Write the bitstream to a text file



with open(bitstream_file_path, 'w') as bitstream_file:
    bitstream_file.write('// Bitstream for NoC\n')
    bitstream_file.write('/////////////////////////////////////////  \n')
    # bitstream_file.write('// Router Location | Instance Name         | Logical address\n')
    bitstream_file.write(f'// {" Router Location":<18} | {"Instance Name":^20} | {"Logical address":<10}\n')

    for router in noc_table:
        bitstream_file.write(f'//   X: {router["X"]:<2}, Y: {router["Y"]:<8}  ')
        if 'Name' in router:
            bitstream_file.write(f'{router["Name"]:^20}  {router["logical_address"]:^10}\n')
        else:
            bitstream_file.write(f'{" - ":^20}  {"-":^10}\n')
    bitstream_file.write('/////////////////////////////////////////  \n')
    for bit in noc_bitstream:
        bitstream_file.write(bit + '\n')

print(f"NoC Bitstream written to {bitstream_file_path}")
