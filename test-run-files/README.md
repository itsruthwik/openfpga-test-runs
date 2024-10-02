- 3x3Noc_ys0_to_34: OpenFPGA run with YOSYS_CELL_SIM_VERILOG file containing ports in [0:34] order.
- 3x3Noc_ys34_to_0: OpenFPGA run with YOSYS_CELL_SIM_VERILOG file containing ports in [34:0] order.

Both folders has 2 include_netlists files in SRC folder

- noc_include_netlists_router_0_to_34.v: Instaniates router hard blocks with a wrapper that converts ports to have a bit ordering of [0:34]
- noc_include_netlists_router_34_to_0.v: Instaniates router hardblock with original [34:0] bit ordering.

Simulation passed for 3x3Noc_ys0_to_34 with noc_include_netlists_router_34_to_0.v : Router hard block has [34:0] and yosys_cell_sim_verilog has [0:34]