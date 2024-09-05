- This task has a dummy router as a hard block in the fpga fabric.
- task.conf file has dummy_router.v as the source file for router initialized in the benchmark design.
- openfpga_arch.xml file present in arch directory also has a dummy router, dummy_router_wrap.v as source file for hardblock.

- All the verilog files(dummy router and benchmarks) are present in verilog-files directory
- Yosys scripts are present in yosys-scripts directory.
    Only 1 script is currently used in task.conf file, the other 2 are not used (mentioned in the README file of root directory)
