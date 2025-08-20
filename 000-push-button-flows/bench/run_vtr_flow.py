import os
import shutil

bench_dir = "/mnt/vault1/rsunketa/OpenFPGA/openfpga_noc/results/benchmarks/soft_noc_hbm_eth"
blif_dir = "/mnt/vault1/rsunketa/OpenFPGA/openfpga_noc/results/benchmarks/soft_noc_hbm_eth/blif"
arch_file = "/mnt/vault1/rsunketa/OpenFPGA/openfpga_noc/results/arch/baseline_complexDSP_mem32k_hbm_eth_vpr.xml"

output_dir = "/mnt/vault1/rsunketa/OpenFPGA/openfpga_noc/results/soft_noc_hbm_eth_results"

vtr_flow_script = "/mnt/vault1/rsunketa/vtr-verilog-to-routing/vtr_flow/scripts/run_vtr_flow.py"

ROUTE_CHAN_WIDTH = 350

for root, dirs, files in os.walk(bench_dir):
    for file in files:
        bench_file = os.path.join(root, file)
        bench_name = os.path.splitext(file)[0]
        print(f"Running VTR flow for benchmark: {bench_name}")
        temp_dir = os.path.join(output_dir, bench_name)
        if os.path.exists(temp_dir):
            shutil.rmtree(temp_dir)
        # os.makedirs(temp_dir, exist_ok=True)
        vtr_run_command = f"python3 {vtr_flow_script}  {bench_file}  {arch_file} -temp_dir {temp_dir} --route_chan_width {ROUTE_CHAN_WIDTH} --timing_report_detail aggregated --sdc_file /mnt/vault1/mfaroo19/OpenFPGA/openfpga-test-runs/001-shashank-router-tasks/scripts/clk_file.sdc"
        print(f"Command: {vtr_run_command}")
        os.system(vtr_run_command)
        print(f"Finished running VTR flow for benchmark: {bench_name}\n")
        #  copy all pre vpr blifs
        pre_vpr_blif = os.path.join(temp_dir, bench_name + ".pre-vpr.blif")
        if os.path.exists(pre_vpr_blif):
            dest_path = os.path.join(blif_dir, bench_name + ".blif")
            # os.rename(pre_vpr_blif, dest_path)
            # shutil.copy2(pre_vpr_blif, dest_path)
            print(f"Copied {pre_vpr_blif} to {dest_path}")
        else:
            print(f"Pre VPR BLIF file not found for {bench_name}")


print("All benchmarks processed.")



