################################################################## 
# Adapted from DC script used in COFFE flow
# Using ASAP7 PDK
# Author: Ruthwik Sunketa
# Date: December 5th 2024
################################################################## 

# Set the maximum number of cores to be used for multicore processing
set_host_options -max_cores 16

# Set the library directory paths
set search_path [list "/afs/asu.edu/class/e/e/e/eee525b/asap7libs/asap7libs_24/db/" ]

# Set the link library and target library paths
set link_library "* asap7sc7p5t_22b_AO_RVT_TT_170906.db asap7sc7p5t_22b_INVBUF_RVT_TT_170906.db asap7sc7p5t_22b_OA_RVT_TT_170906.db asap7sc7p5t_22b_SEQ_RVT_TT_170906.db asap7sc7p5t_22b_SIMPLE_RVT_TT_170906.db"
set target_library "asap7sc7p5t_22b_AO_RVT_TT_170906.db asap7sc7p5t_22b_INVBUF_RVT_TT_170906.db asap7sc7p5t_22b_OA_RVT_TT_170906.db asap7sc7p5t_22b_SEQ_RVT_TT_170906.db asap7sc7p5t_22b_SIMPLE_RVT_TT_170906.db"

# Set the top-level module
set src_paths [list "./../src" "./../src/clib"]
set top_level "router_wrap"

# Set the clock (ns)
set clk_pin clk
set clk_period 2.0

set wire_selection "WireAreaLowkCon"

set ungroup_regex ".*ff.*|.*vcr.*"

# Set the static probability and toggle rate for power analysis
set static_probability 0.5
set toggle_rate 25

#########################################################################

# Read Verilog files
read_file $src_paths -autoread -format sverilog -top $top_level

# List all designs
list_designs

current_design $top_level

check_design > ./RPT/check_precompile.rpt

# Link and uniquify  the design
link
uniquify

# Set the wire load mode
# set_wire_load_mode "segmented"
set_wire_load_selection $wire_selection

# Find the clock port and create a clock if it exists
# set find_clock [ find port [list $clk_pin] ]
# if { $find_clock != [list] } { 
#   set clk_name $clk_pin 
#   create_clock -period $clk_period $clk_name
# } 
create_clock -period $clk_period $clk_pin

# Set the attribute to ungroup cells based on a regex pattern
set_attribute [get_cells -regex $ungroup_regex] ungroup false

compile_ultra

check_design > ./RPT/check.rpt

# Write the synthesized design  with hierarchy
write -format verilog -hierarchy -output ./RPT/synthesized_hier.v

# Write the synthesized design in DDC format with hierarchy
write_file -format ddc -hierarchy -output ./RPT/${top_level}.ddc

# Set the switching activity for power analysis
# set_switching_activity -static_probability 0.1 -toggle_rate 0.2 -base_clock $clk_pin -type inputs
set_switching_activity -static_probability $static_probability -toggle_rate $toggle_rate -base_clock $clk_pin -type inputs

# Ungroup all cells and flatten the hierarchy
ungroup -all -flatten 

# Generate various reports and save them in the RPT directory
report_power > ./RPT/power.rpt
report_area -nosplit -hierarchy > ./RPT/area.rpt
report_resources -nosplit -hierarchy > ./RPT/resources.rpt
report_design > ./RPT/design.rpt
all_registers > ./RPT/registers.rpt

# Generate timing reports for setup and hold times
report_timing -delay max > ./RPT/setup_timing.rpt
report_timing -delay min > ./RPT/hold_timing.rpt

# Change the names of the design elements to follow Verilog naming rules
change_names -hier -rule verilog 

# Write the final synthesized design in Verilog format
write -f verilog -output ./RPT/synthesized_flat.v

# Write the Standard Delay Format (SDF) file
write_sdf ./RPT/synthesized.sdf

# Write the Standard Parasitic Exchange Format (SPEF) file
write_parasitics -output ./RPT/synthesized.spef

# Write the Synopsys Design Constraints (SDC) file
write_sdc ./RPT/synthesized.sdc

# Exit the Design Compiler
quit