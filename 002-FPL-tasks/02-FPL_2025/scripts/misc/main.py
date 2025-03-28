import os
from arch_file_generator import generate_arch_files
from router_files_generator import generate_router_files
import yaml
import sys

if not os.getenv('OPENFPGA_PATH'):
    print("OPENFPGA_PATH environment variable not set")
    exit(1)
root_dir = os.getenv('OPENFPGA_PATH', '') + '/openfpga-test-runs/FPL_2025'

arch_dir = root_dir + '/arch'
# bench_dir = root_dir + '/benchmarks'
# tasks_dir = root_dir + '/tasks'
# router_files_dir = root_dir + '/router_files'
router_files_dir = '/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/noc-benchmarks/Large_Designs/MLP/shared_verilog/'
# arch_dir = root_dir + '/test'
def find_routers():
    router_names = []
    router_file_paths = []
    for subdir, dirs, files in os.walk(router_files_dir):
        for file in files:
            if file.endswith('v'): 
                file_path = os.path.join(subdir, file)
                router_file_paths.append(file_path)
                router_name = file_path.split('/')[-2]
                # router_name = 'router_wrap'
                router_names.append(router_name)
                # print("Found following routers: ")
                # print(f" - router_name: {router_name}  at  {file_path}")
                # print(f" - router_name: {router_name}")
    return router_names, router_file_paths

top_module_name = 'router_wrap'
# vpr_output_dir = arch_dir + '/vpr_arch'
vpr_output_dir = root_dir + '/test'
openpfga_output_dir = root_dir + '/test'
temp_dir = arch_dir
vpr_arch = '/mnt/vault1/rsunketa/OpenFPGA/openfpga_flow/vpr_arch/k6_frac_N10_tileable_adder_chain_dpram8K_dsp36_fracff_40nm.xml'
openfpga_arch = '/mnt/vault1/rsunketa/OpenFPGA/openfpga_flow/openfpga_arch/k6_frac_N10_adder_chain_dpram8K_dsp36_fracff_40nm_openfpga.xml'
yosys_path = os.getenv('OPENFPGA_PATH', '') + '/build/yosys/bin/yosys'

def generate_vpr_openfpga_arch_files( router_file_paths):
    for router_path in router_file_paths:
        router_name = router_path.split('/')[-2]
        arch_file_path = arch_dir + '/' + router_name + '.vpr.xml'
        # print(f" - router_file_path: {router_path}")
        # print(f" - arch_file_path: {arch_file_path}")
        # generate arch file
        # generate_arch_file(router_path, arch_file_path)
        if router_name.startswith('noc'):
            # print("skipping multimode router")
            print(f"Generating arch file for router: {router_name}: ")
            generate_arch_files(router_name, yosys_path, router_path, router_path, top_module_name , vpr_output_dir, openpfga_output_dir, temp_dir, vpr_arch, openfpga_arch)
        else:
            print(f"skipping arch file for router: {router_name}: ")


#########################################################
    
router_names, router_file_paths = find_routers()
print(f"Found following routers: ")
for router_name in router_names:
    print(f" - router_name: {router_name}")
print(f"Found following router files: ")
for router_file_path in router_file_paths:
    print(f" - router_file_path: {router_file_path}")
generate_vpr_openfpga_arch_files(router_file_paths)
# generate_vpr_openfpga_arch_files('/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/001-Push-button-flow-final/router-rtl/router_wrap_cell_sim.sv')

# yaml_path = "/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/FPL_2025/noc.yaml"
# noc_params = {}

# # Read YAML file
# try:
#     with open(yaml_path, 'r') as yaml_file:
#         config = yaml.safe_load(yaml_file)
#         noc_params = config['noc']
#         router_params = config['router']
#         fpga_params = config['Arch']
# except (FileNotFoundError, yaml.YAMLError) as e:
#     print(f"Error reading YAML file: {e}")
#     sys.exit(1)

# print(f"noc_params: {noc_params}")
# print(f"router_params: {router_params}")
# print(f"fpga_params: {fpga_params}")
# print(noc_params['mesh']['X'])
# # print(noc_params['mesh']['y'])
# # Define source and destination file pairs
# router_files = [
#     # (reference_file, output_file)
#     ("/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/FPL_2025/router_files/axis_router/router_wrap_cell_sim.v", 
#      "/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/FPL_2025/test/ASrouter_wrap_cell_sim_generated.v"),
#     ("/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/FPL_2025/router_files/axis_router/router_wrap.v", 
#      "/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/FPL_2025/test/ASrouter_wrap_generated.v")
# ]

# generate_router_files(router_files, router_params)