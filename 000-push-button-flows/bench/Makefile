# Define directories and files
SOFT_NOC_HBM_ETH_BENCH_DIR := /mnt/vault1/rsunketa/OpenFPGA/openfpga_noc/results/benchmarks/soft_noc_hbm_eth
HARD_NOC_BENCH_DIR := /mnt/vault1/rsunketa/OpenFPGA/openfpga_noc/results/benchmarks/hard_noc

SOFT_NOC_ARCH_FILE := /mnt/vault1/rsunketa/OpenFPGA/openfpga_noc/results/arch/baseline_complexDSP_mem32k_hbm_eth_vpr.xml
HARD_NOC_ARCH_FILE := /mnt/vault1/rsunketa/OpenFPGA/openfpga_noc/results/arch/baseline_complexDSP_mem32k_hbm_eth_vpr.xml

SOFT_NOC_HBM_ETH_OUTPUT_DIR := /mnt/vault1/rsunketa/OpenFPGA/openfpga_noc/results/soft_noc_hbm_eth_results
HARD_NOC_OUTPUT_DIR := /mnt/vault1/rsunketa/OpenFPGA/openfpga_noc/results/hard_noc_results

VTR_FLOW_SCRIPT := /mnt/vault1/rsunketa/vtr-verilog-to-routing/vtr_flow/scripts/run_vtr_flow.py
ROUTE_CHAN_WIDTH := 350
SDC_FILE := /mnt/vault1/mfaroo19/OpenFPGA/openfpga-test-runs/001-shashank-router-tasks/scripts/clk_file.sdc

# Find all benchmark files for each type
SOFT_NOC_HBM_ETH_FILES := $(wildcard $(SOFT_NOC_HBM_ETH_BENCH_DIR)/*.v)
HARD_NOC_FILES := $(wildcard $(HARD_NOC_BENCH_DIR)/*.v)

# Create targets for each benchmark
SOFT_NOC_HBM_ETH_TARGETS := $(patsubst $(SOFT_NOC_HBM_ETH_BENCH_DIR)/%.v,run_soft_%,$(SOFT_NOC_HBM_ETH_FILES))
HARD_NOC_TARGETS := $(patsubst $(HARD_NOC_BENCH_DIR)/%.v,run_hard_%,$(HARD_NOC_FILES))

# Default target to run all benchmarks
.PHONY: all
all: soft_noc_hbm_eth hard_noc

# Target to run all soft_noc_hbm_eth benchmarks
.PHONY: soft_noc_hbm_eth
soft_noc_hbm_eth: $(SOFT_NOC_HBM_ETH_TARGETS)
	@echo "Completed all Soft NoC HBM ETH benchmarks"

# Target to run all hard_noc benchmarks
.PHONY: hard_noc
hard_noc: $(HARD_NOC_TARGETS)
	@echo "Completed all Hard NoC benchmarks"

# Pattern rule for soft_noc benchmarks
.PHONY: run_soft_%
run_soft_%: $(SOFT_NOC_HBM_ETH_BENCH_DIR)/%.v
	@echo "Running VTR flow for Soft NoC benchmark: $*"
	@rm -rf $(SOFT_NOC_HBM_ETH_OUTPUT_DIR)/$*
	@python3 $(VTR_FLOW_SCRIPT) \
	    --design $< \
	    --arch $(SOFT_NOC_ARCH_FILE) \
	    -temp_dir $(SOFT_NOC_HBM_ETH_OUTPUT_DIR)/$* \
	    --route_chan_width $(ROUTE_CHAN_WIDTH) \
	    --timing_report_detail aggregated --seed 24 \
	    --sdc_file $(SDC_FILE)
	@echo "Finished running VTR flow for Soft NoC benchmark: $*"

# Pattern rule for hard_noc benchmarks
.PHONY: run_hard_%
run_hard_%: $(HARD_NOC_BENCH_DIR)/%.v
	@echo "Running VTR flow for Hard NoC benchmark: $*"
	@rm -rf $(HARD_NOC_OUTPUT_DIR)/$*
	@python3 $(VTR_FLOW_SCRIPT) \
	    --design $< \
	    --arch $(HARD_NOC_ARCH_FILE) \
	    -temp_dir $(HARD_NOC_OUTPUT_DIR)/$* \
	    --route_chan_width $(ROUTE_CHAN_WIDTH) \
	    --timing_report_detail aggregated \
	    --sdc_file $(SDC_FILE)
	@echo "Finished running VTR flow for Hard NoC benchmark: $*"

# Clean targets
.PHONY: clean
clean: clean_soft clean_hard

.PHONY: clean_soft
clean_soft:
	rm -rf $(SOFT_NOC_HBM_ETH_OUTPUT_DIR)/*

.PHONY: clean_hard
clean_hard:
	rm -rf $(HARD_NOC_OUTPUT_DIR)/*

# Help target
.PHONY: help
help:
	@echo "Available targets:"
	@echo "  all              - Run all benchmarks"
	@echo "  soft_noc_hbm_eth - Run all Soft NoC HBM ETH benchmarks"
	@echo "  hard_noc         - Run all Hard NoC benchmarks"
	@echo "  run_soft_NAME    - Run specific Soft NoC benchmark"
	@echo "  run_hard_NAME    - Run specific Hard NoC benchmark"
	@echo "  clean            - Clean all output directories"
	@echo "  clean_soft       - Clean Soft NoC output directory"
	@echo "  clean_hard       - Clean Hard NoC output directory"