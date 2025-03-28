#!/usr/bin/env python3
import os
import glob

def main():
    # Directory containing the .v files
    source_dir = "/mnt/vault1/mfaroo19/OpenFPGA/openfpga-test-runs/stanford-router-adder/router-rtl-files/src/"
    
    # Output file that will store the include statements
    output_file = "rtr_includes.v"
    
    # Use glob to find all .v files in the directory
    verilog_files = glob.glob(os.path.join(source_dir, "*.v"))
    verilog_files.sort()  # Optional: sort alphabetically
    
    # Write a `include statement for each file into the output file
    with open(output_file, "w") as outfile:
        for vfile in verilog_files:
            # Use only the base filename so that the include directive is cleaner.
            base_filename = os.path.basename(vfile)
            outfile.write('`include "{}"\n'.format(base_filename))
    
    print(f"Created {output_file} with includes for {len(verilog_files)} files.")

if __name__ == "__main__":
    main()

