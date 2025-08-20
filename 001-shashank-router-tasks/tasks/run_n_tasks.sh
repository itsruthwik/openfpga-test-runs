#!/bin/bash
# filepath: /mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/001-shashank-router-tasks/tasks/run_simple_parallel.sh

# HARDCODED PARAMETERS - Edit these values directly
# TASK_DIR="/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/001-shashank-router-tasks/tasks/10-axis-switch-12.bkp"
TASK_DIR="/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/001-shashank-router-tasks/tasks/00-00-switch-vpr-runs"
NUM_RUNS=5
MAX_JOBS=12  # Maximum concurrent jobs
SEEDS=(4 9 15 28 33 37 42 45 49 53 57 61 65 69 73 77 81 85 89 93 97 101 105 109 113 117 121 125 129 133 137 141 145) 


# Create results directory
RESULTS_DIR="${TASK_DIR}/${NUM_RUNS}_task_run_results_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$RESULTS_DIR"
echo "Created directory: $RESULTS_DIR"

# Modify the OpenFPGA script to use a specific seed
modify_script_seed() {
  local run_id=$1
  local output_dir=$2
  
  # Get seed value from predefined array
  SEED_INDEX=$(( (run_id - 1) % ${#SEEDS[@]} ))
  SEED_VALUE=${SEEDS[$SEED_INDEX]}
  
  # Script file path - will modify directly
  SCRIPT_FILE="/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/001-shashank-router-tasks/scripts/baseline_device_script.openfpga"
  
  # Simply replace the seed value in the original script
  sed -i "s/--seed [0-9]\\+/--seed ${SEED_VALUE}/" "$SCRIPT_FILE"
    
  echo "Modified original script with SEED=${SEED_VALUE} for run ${run_id}"
}

# Updated run_task function
run_task() {
  local run_id=$1
  local output_dir="${RESULTS_DIR}/run_${run_id}"
  
  echo "Starting task ${run_id}"
  mkdir -p "$output_dir"
  
  # Modify the script seed
  modify_script_seed $run_id "$output_dir"
  
  # Run the OpenFPGA task with modified script
  python3 "${OPENFPGA_PATH}/openfpga_flow/scripts/run_fpga_task.py" "$TASK_DIR" > "${output_dir}/task_output.log" 2>&1
  
  # Copy log files
  find "${TASK_DIR}/latest" -name "*.log" -o -name "*.rpt" -exec cp {} "${output_dir}/" \;
  
  echo "Completed task ${run_id}"
}

# Run tasks with job control
active_jobs=0
for ((i=1; i<=NUM_RUNS; i++)); do
  # Check if we need to wait for a job slot
  while [ $active_jobs -ge $MAX_JOBS ]; do
    # Wait for any child process to finish
    wait -n
    active_jobs=$((active_jobs - 1))
  done
  
  # Start new job
  run_task $i &
  active_jobs=$((active_jobs + 1))
  echo "Started job $i (Active: $active_jobs)"
done

# Wait for all remaining jobs to finish
echo "Waiting for remaining jobs to complete..."
wait
echo "All jobs completed!"

# Generate a simple summary
echo "Run Summary:" > "${RESULTS_DIR}/summary.txt"
for ((i=1; i<=NUM_RUNS; i++)); do
  echo "Run $i:" >> "${RESULTS_DIR}/summary.txt"
  grep "critical path" "${RESULTS_DIR}/run_${i}/vpr_stdout.log" >> "${RESULTS_DIR}/summary.txt" 2>/dev/null || echo "  No timing data found" >> "${RESULTS_DIR}/summary.txt"
done

echo "All ${NUM_RUNS} tasks completed. Results saved in ${RESULTS_DIR}"