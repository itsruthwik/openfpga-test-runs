#!/usr/bin/env python3
import random
import argparse

# NoC parameters
TDATA_WIDTH = 128
TID_WIDTH = 2
TDEST_WIDTH = 4
NUM_ROUTERS = 16

def generate_traffic(output_file, num_cycles=100, injection_rate=0.1):
    """
    Generate NoC traffic and write to a file with Verilog test harness
    
    Parameters:
    - output_file: File to write the traffic data
    - num_cycles: Number of clock cycles to generate data for
    - injection_rate: Probability of generating a packet per cycle per router
    """
    traffic_data = []
    next_packet_id = 0
    
    with open(output_file, 'w') as f:
        # Write traffic pattern data header
        f.write(f"// NoC Traffic - Pattern: uniform, Injection Rate: {injection_rate}\n\n")
        f.write("// Format: <cycle> <router_id> <valid> <data> <last> <tid> <tdest>\n\n")
        
        # Generate and write traffic patterns
        for cycle in range(num_cycles):
            # For each router, decide whether to inject a packet
            for src_router in range(NUM_ROUTERS):
                if random.random() < injection_rate:
                    # Uniform random traffic (avoid sending to self)
                    dest_router = src_router
                    while dest_router == src_router:
                        dest_router = random.randint(0, NUM_ROUTERS-1)

                    packet_id = next_packet_id
                    
                    # Generate full 128-bit random data (in four 32-bit sections for readability)
                    data_part1 = packet_id  # Use packet ID as first 32 bits
                    next_packet_id += 1
                    data_part2 = random.randrange(0, 2**32)
                    data_part3 = random.randrange(0, 2**32)
                    data_part4 = random.randrange(0, 2**32)
                    
                    # Format for display in the file (keep it readable)
                    data_hex = f"0x{data_part1:08x}_{data_part2:08x}_{data_part3:08x}_{data_part4:08x}"
                    
                    # The full 128-bit value for SystemVerilog
                    data_sv = f"128'h{data_part1:08x}_{data_part2:08x}_{data_part3:08x}_{data_part4:08x}"
                    
                    # Generate random ID
                    tid = random.randrange(0, 2**TID_WIDTH)
                    
                    # Last flag is always 1 for single-flit packets
                    last = 1
                    
                    # Write to file (use the readable format)
                    line = f"//  {cycle} {src_router} 1 {data_hex} {last} {tid} {dest_router}"
                    f.write(line + "\n")
                    
                    # Store with SystemVerilog format for testbench generation
                    traffic_data.append((cycle, src_router, data_sv, last, tid, dest_router, packet_id))
        
        # Write Verilog test harness
        f.write("\n\n// ========================================\n")
        f.write("// Verilog Testbench Harness\n")
        f.write("// ========================================\n\n")
        
        # Write declarations for latency tracking
        f.write("""
// Latency tracking data structures
longint send_times[int];  // Stores send time for each packet ID
int latencies[$];         // Queue to store all latencies
int total_latency;        // Running sum of all latencies
int min_latency = 1000000; // Start with large number
int max_latency;          // Track maximum latency

// Global counters
int packets_sent;
int packets_received;

// Router-specific statistics (optional)
int router_pair_latencies[int][int][$]; // [src][dst] -> queue of latencies
""")
        
        # Write clock and reset generation
        f.write("""
// Clock generation
initial begin
    clk_noc = 0;
    forever #(CLK_PERIOD/2) clk_noc = ~clk_noc;
end

initial begin
    clk_usr = 0;
    if (SINGLE_CLOCK)
        assign clk_usr = clk_noc;
    else
        forever #(CLK_PERIOD/2 * 1.5) clk_usr = ~clk_usr;
end

// Reset sequence
initial begin
    // Initialize counters
    packets_sent = 0;
    packets_received = 0;
    total_latency = 0;
    min_latency = 1000000;
    max_latency = 0;
    
    rst_n = 0;
    
    // Initialize all input signals
""")

        # Initialize all input signals
        for i in range(NUM_ROUTERS):
            f.write(f"    axis_in_tvalid_{i} = 0;\n")
            f.write(f"    axis_in_tdata_{i} = '0;\n")
            f.write(f"    axis_in_tlast_{i} = 0;\n")
            f.write(f"    axis_in_tid_{i} = 0;\n")
            f.write(f"    axis_in_tdest_{i} = 0;\n\n")
        
        f.write("""
    // Set all output ready signals to 1
""")
        for i in range(NUM_ROUTERS):
            f.write(f"    axis_out_tready_{i} = 1'b1;\n")

        f.write(f"""
    // Apply reset for multiple cycles
    repeat(10) @(posedge clk_usr);
    rst_n = 1;
    repeat(5) @(posedge clk_usr);
    
    // Run test sequence based on traffic pattern
    $display("Starting uniform traffic injection with rate: %f", {injection_rate});
    fork
        // Start packet injection
        begin
            apply_traffic_pattern();
        end
        
        // Monitor outputs for received packets
        begin
            monitor_outputs();
        end
    join_none
    
    // Run for enough cycles to complete transmission
    repeat({num_cycles} + 100) @(posedge clk_usr);
    
    // Report results
    $display("Test completed: Sent %0d packets, received %0d packets", packets_sent, packets_received);
    if (packets_received >= packets_sent * 0.95)
        $display("TEST PASSED: At least 95%% of packets were received");
    else
        $display("TEST FAILED: Less than 95%% of packets were received");
    
    // Calculate and display latency statistics
    $display("\\n--- Latency Statistics ---");
    $display("Total packets: %0d", latencies.size());
    
    if (latencies.size() > 0) begin
        int avg_latency = total_latency / latencies.size() / CLK_PERIOD;
        $display("Average latency: %0d cycles", avg_latency);
        $display("Minimum latency: %0d cycles", min_latency/CLK_PERIOD);
        $display("Maximum latency: %0d cycles", max_latency/CLK_PERIOD);
        
        // Standard deviation calculation
        if (latencies.size() > 1) begin
            real variance = 0;
            real mean = real'(total_latency) / latencies.size();
            
            foreach (latencies[i]) begin
                variance += (latencies[i] - mean) ** 2;
            end
            
            variance = variance / latencies.size();
            real std_dev = $sqrt(variance) / CLK_PERIOD;
            $display("Latency standard deviation: %0.2f cycles", std_dev);
        end
        
        // Generate latency histogram
        int histogram[int];
        int bin_size = CLK_PERIOD;  // 1 cycle per bin
        int max_bin = 0;
        
        foreach (latencies[i]) begin
            int bin = latencies[i] / bin_size / CLK_PERIOD;
            histogram[bin]++;
            if (bin > max_bin) max_bin = bin;
        end
        
        $display("\\n--- Latency Histogram ---");
        $display("Bin (cycles) | Count | Distribution");
        $display("-------------------------------");
        
        for (int bin = 0; bin <= max_bin; bin++) begin
            string bar = "";
            int count = histogram.exists(bin) ? histogram[bin] : 0;
            int stars = count * 40 / latencies.size();
            
            for (int s = 0; s < stars; s++)
                bar = $sformatf(\"%s*\", bar);\n")
            
            $display("%5d       | %5d | %s", bin, count, bar);
        end
    end
    else begin
        $display("No latency data collected");
    end
    
    // Report lost packets
    if (send_times.size() > 0) begin
        $display("\\n--- Lost Packets ---");
        $display("%0d packets were sent but never received:", send_times.size());
        
        foreach (send_times[id]) begin
            $display("Packet ID: %0d, Source Router: %0d", id, id % NUM_ROUTERS);
        end
    end
    
    $finish;
end

// Task to apply traffic patterns
task apply_traffic_pattern();
    int cycle;
    int router_id;
    logic [TDATA_WIDTH-1:0] data;
    logic last;
    logic [TID_WIDTH-1:0] tid;
    logic [TDEST_WIDTH-1:0] tdest;
    
    // Apply traffic pattern from generated data
""")

        # Generate specific traffic application code
        prev_cycle = -1
        for cycle, router, data, last, tid, dest, packet_id in traffic_data:
            if cycle != prev_cycle:
                if prev_cycle != -1:
                    f.write("    @(posedge clk_usr);\n")
                if cycle - prev_cycle > 1:
                    f.write(f"    repeat({cycle - prev_cycle - 1}) @(posedge clk_usr);\n")
                prev_cycle = cycle
            
            f.write(f"    // Cycle {cycle}, Router {router}, Packet {packet_id}\n")
            f.write(f"    axis_in_tvalid_{router} = 1'b1;\n")
            f.write(f"    axis_in_tdata_{router} = {data};\n")
            f.write(f"    axis_in_tlast_{router} = {last};\n")
            f.write(f"    axis_in_tid_{router} = {tid};\n")
            f.write(f"    axis_in_tdest_{router} = {dest};\n")
            f.write(f"    wait(axis_in_tready_{router});\n")
            f.write(f"    packets_sent++;\n")
            # Add send time recording
            f.write(f"    // Record send time for packet {packet_id}\n")
            f.write(f"    send_times[{packet_id}] = $time;\n")
            f.write(f"    axis_in_tvalid_{router} = 1'b0;\n\n")
        
        # Write the monitor task with correct implementation for all routers
        f.write("""
endtask

// Task to monitor outputs and count received packets
task monitor_outputs();
    int packet_id;
    int latency;
    int src_router;
    
    forever begin
        @(posedge clk_usr);
""")

        # Add monitoring logic for all routers with complete latency calculation
        for i in range(NUM_ROUTERS):
            f.write(f"""
        // Monitor Router {i} output
        if (axis_out_tvalid_{i} && axis_out_tready_{i}) begin
            packets_received++;
            
            // Extract packet ID from the first 32 bits of data
            packet_id = axis_out_tdata_{i}[127:96];
            
            // Calculate source router from packet ID (assumes sequential assignment)
            src_router = packet_id % NUM_ROUTERS;
            
            // Calculate latency if this packet has a recorded send time
            if (send_times.exists(packet_id)) begin
                latency = $time - send_times[packet_id];
                
                // Update statistics
                latencies.push_back(latency);
                total_latency += latency;
                
                // Update min/max
                if (latency < min_latency) min_latency = latency;
                if (latency > max_latency) max_latency = latency;
                
                // Optional: track router pair statistics
                if (!router_pair_latencies.exists(src_router))
                    router_pair_latencies[src_router] = {{}};
                if (!router_pair_latencies[src_router].exists({i}))
                    router_pair_latencies[src_router][{i}] = {{}};
                router_pair_latencies[src_router][{i}].push_back(latency);
                
                $display("Packet %0d: From router %0d to router {i}, latency = %0d cycles",
                         packet_id, src_router, latency/CLK_PERIOD);
                
                // Remove from tracking table to free memory
                send_times.delete(packet_id);
            end
            else begin
                $display("Warning: Received packet with unknown ID %0d at router {i}", packet_id);
            end
        end
""")

        # Close the monitor task
        f.write("""
    end
endtask
""")

def main():
    parser = argparse.ArgumentParser(description='Generate NoC traffic patterns with testbench harness')
    parser.add_argument('--output', '-o', default='noc_traffic.txt', help='Output file name')
    parser.add_argument('--cycles', '-c', type=int, default=100, help='Number of clock cycles')
    parser.add_argument('--rate', '-r', type=float, default=0.1, help='Injection rate (0.0-1.0)')
    
    args = parser.parse_args()
    
    generate_traffic(args.output, args.cycles, args.rate)
    print(f"Generated uniform traffic with {args.rate} injection rate for {args.cycles} cycles")
    print(f"Output written to {args.output} with Verilog testbench harness")

if __name__ == "__main__":
    main()