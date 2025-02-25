		  $VTR_ROOT/build/vpr/vpr $VTR_ROOT/vtr_flow/arch/noc/mesh_noc_topology/stratixiv_arch.timing_with_a_embedded_10X10_mesh_noc_topology.xml \
                  <circuit_netlist_file_location>.blif  --device EP4SE20 --route_chan_width 300 --noc on --noc_flows_file <flows_file_location>.flows \
		  --noc_routing_algorithm xy_routing



 /home/rsunketa/OpenFPGA/build/vtr-verilog-to-routing/vpr/vpr /home/rsunketa/OpenFPGA/openfpga-test-runs/vpr-noc/arch/k6_frac_N10_tileable_adder_chain_dpram8K_dsp36_fracff_40nm.xml  /home/rsunketa/OpenFPGA/openfpga-test-runs/noc-benchmarks/simple_blif/complex_4_noc_1D_chain.blif  --device large  --route_chan_width 300  --echo_file on --save_graphics on --disp on 

  /home/rsunketa/OpenFPGA/build/vtr-verilog-to-routing/vpr/vpr /home/rsunketa/OpenFPGA/openfpga-test-runs/vpr-noc/arch/k6_frac_N10_tileable_adder_chain_dpram8K_dsp36_fracff_40nm.xml  /home/rsunketa/OpenFPGA/openfpga-test-runs/noc-benchmarks/simple_blif/complex_4_noc_1D_chain.blif  --device large  --route_chan_width 300 --noc on --noc_flows_file /home/rsunketa/OpenFPGA/openfpga-test-runs/noc-benchmarks/simple_blif/complex_4_noc_1D_chain.flows --noc_routing_algorithm xy_routing --echo_file on --save_graphics on --disp on 