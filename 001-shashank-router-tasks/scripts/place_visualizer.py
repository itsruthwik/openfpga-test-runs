import re
import matplotlib.pyplot as plt
from collections import defaultdict
import xml.etree.ElementTree as ET
from matplotlib.patches import Rectangle

# ==== PARSE CONSTRAINT XML ====
def parse_constraints(xml_path):
    tree = ET.parse(xml_path)
    root = tree.getroot()
    regions = {}
    
    for partition in root.findall('.//partition'):
        name = partition.get('name')
        region = partition.find('add_region')
        if region is not None:
            regions[name] = {
                'x_low': float(region.get('x_low')),
                'x_high': float(region.get('x_high')),
                'y_low': float(region.get('y_low')),
                'y_high': float(region.get('y_high'))
            }
    
    return regions


# ==== CONFIGURATION ====
place_file_path = "/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/001-shashank-router-tasks/tasks/00-01-row-hbm-soft-noc/pbf_run_4-cp-issue/vpr_run_1/5_task_run_logs_3/run_1/hbm_noc_loaded_pe12_soft_yosys_out.place"
# "/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/001-shashank-router-tasks/tasks/00-00-switch-vpr-runs/5_task_run_logs_2/run_1/axis_switch_loaded_pe12.place"  # REPLACE
constraints_file_path = "/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/001-shashank-router-tasks/scripts/rtr_constraints.xml"
output_image_path = "/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/001-shashank-router-tasks/tasks/00-01-row-hbm-soft-noc/pbf_run_4-cp-issue/vpr_run_1/5_task_run_logs_3/run_1/module_placement_plot.png"
module_names = ['sw_inst'] + ['hbm_inst'] + ['axis_switch_inst'] + ['m_inst'] + [f'pe_inst_{i}' for i in range(12)] + [f'rtr_inst{i}' for i in range(13)]# ADD MODULE NAMES
grid_size = (230, 230)  # Adjust as needed

# ==== DATA STRUCTURE ====
module_coords = defaultdict(list)
router_regions = {} 

# ==== REGEX SETUP ====
regex_patterns = {name: re.compile(rf"\b{name}\b") for name in module_names}

# ==== PARSE PLACE FILE ====
with open(place_file_path, 'r') as file:
    for line in file:
        parts = line.strip().split()
        if len(parts) < 3:
            continue

        identifier = parts[0]
        try:
            x = float(parts[1])
            y = float(parts[2])
        except ValueError:
            continue

        for name, pattern in regex_patterns.items():
            if pattern.search(identifier):
                module_coords[name].append((x, y))
                break

# Parse the XML constraints
router_regions = parse_constraints(constraints_file_path)


# ==== PLOT ====
# plt.figure(figsize=(20, 20))
# colors = plt.cm.get_cmap('tab20', len(module_names))

# for i, name in enumerate(module_names):
#     coords = module_coords[name]
#     if coords:
#         xs, ys = zip(*coords)
#         plt.scatter(xs, ys, label=name, color=colors(i), s=30)

# plt.title("Module Placement Plot")
# plt.xlabel("X Coordinate")
# plt.ylabel("Y Coordinate")
# plt.xlim(0, grid_size[0])
# plt.ylim(0, grid_size[1])
# plt.grid(True)
# plt.legend(title="Modules", bbox_to_anchor=(1.05, 1), loc='upper left')
# plt.gca().set_aspect('equal', adjustable='box')
# plt.tight_layout()

plt.figure(figsize=(20, 20))

# Separate module names
rtr_names = [name for name in module_names if name.startswith('rtr_inst') or name.startswith('sw_inst')]
other_names = [name for name in module_names if not name.startswith('rtr_inst')]



# Draw router constraint boxes first
# for name, region in router_regions.items():
#     width = region['x_high'] - region['x_low']
#     height = region['y_high'] - region['y_low']
#     rect = Rectangle((region['x_low'], region['y_low']), width, height, 
#                     fill=True, alpha=0.2, edgecolor='black', 
#                     facecolor='gray', linestyle='--', linewidth=1)
#     plt.gca().add_patch(rect)
#     # Add region label
#     plt.text(region['x_low'] + width/2, region['y_low'] + height/2, 
#              name, ha='center', va='center', fontsize=8)

# Get colormaps
light_cmap = plt.cm.get_cmap('Set3', len(other_names))
dark_cmap = plt.cm.get_cmap('magma', 5)

# Plot non-rtr_inst modules (lighter colors)
for i, name in enumerate(other_names):
    coords = module_coords[name]
    if coords:
        xs, ys = zip(*coords)
        plt.scatter(xs, ys, label=name, color=light_cmap(i), s=30)

# Plot rtr_inst modules (darker colors)
for i, name in enumerate(rtr_names):
    coords = module_coords[name]
    if coords:
        xs, ys = zip(*coords)
        plt.scatter(xs, ys, label=name, color=dark_cmap(i), s=30)

plt.title("Module Placement Plot")
plt.xlabel("X Coordinate")
plt.ylabel("Y Coordinate")
plt.xlim(0, grid_size[0])
plt.ylim(0, grid_size[1])
plt.grid(True)
plt.legend(title="Modules", bbox_to_anchor=(1.05, 1), loc='upper left')
plt.gca().set_aspect('equal', adjustable='box')
plt.tight_layout()

# ==== SAVE TO FILE ====
plt.savefig(output_image_path, dpi=300, bbox_inches='tight')
print(f"Plot saved to: {output_image_path}")
for name, coords in module_coords.items():
    if coords:
        print(f"{name}: ")
