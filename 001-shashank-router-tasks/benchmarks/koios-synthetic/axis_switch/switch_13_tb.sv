`timescale 1ns / 1ps

module switch_13_tb();

// Parameters
parameter DATA_WIDTH = 128;
parameter KEEP_WIDTH = DATA_WIDTH/8;
parameter ID_ENABLE = 1;
parameter S_ID_WIDTH = 4;
parameter M_ID_WIDTH = 4;
parameter S_DEST_WIDTH = 4;
parameter M_DEST_WIDTH = 4;
parameter USER_ENABLE = 1;
parameter USER_WIDTH = 1;
parameter CLK_PERIOD = 10; // 100MHz clock

// Clock and reset
reg clk;
reg rst;

// Input port signals (s00 - s12)
reg [12:0] s_axis_tvalid;
wire [12:0] s_axis_tready;
reg [12:0][DATA_WIDTH-1:0] s_axis_tdata;
reg [12:0][KEEP_WIDTH-1:0] s_axis_tkeep;
reg [12:0] s_axis_tlast;
reg [12:0][S_ID_WIDTH-1:0] s_axis_tid;
reg [12:0][S_DEST_WIDTH-1:0] s_axis_tdest;
reg [12:0][USER_WIDTH-1:0] s_axis_tuser;

// Output port signals (m00 - m12)
wire [12:0] m_axis_tvalid;
reg [12:0] m_axis_tready;
wire [12:0][DATA_WIDTH-1:0] m_axis_tdata;
wire [12:0][KEEP_WIDTH-1:0] m_axis_tkeep;
wire [12:0] m_axis_tlast;
wire [12:0][M_ID_WIDTH-1:0] m_axis_tid;
wire [12:0][M_DEST_WIDTH-1:0] m_axis_tdest;
wire [12:0][USER_WIDTH-1:0] m_axis_tuser;

// For measuring packet latency
integer cycle_counts[0:12];
reg counting[0:12];
integer start_times[0:12];
integer end_times[0:12];

// Packet tracking
struct {
    int src;
    int dst;
    int start_time;
    int end_time;
    int latency;
} packet_stats[$];

// Testbench statistics
integer total_packets_sent;
integer total_packets_received;
real total_latency;
integer min_latency;
integer max_latency;

// Instantiate the axis_switch_wrap_13x13 module
axis_switch_wrap_13x13 #(
    .DATA_WIDTH(DATA_WIDTH),
    .KEEP_ENABLE(DATA_WIDTH > 8),
    .KEEP_WIDTH(KEEP_WIDTH),
    .ID_ENABLE(ID_ENABLE),
    .S_ID_WIDTH(S_ID_WIDTH),
    .M_ID_WIDTH(M_ID_WIDTH),
    .S_DEST_WIDTH(S_DEST_WIDTH),
    .M_DEST_WIDTH(M_DEST_WIDTH),
    .USER_ENABLE(USER_ENABLE),
    .USER_WIDTH(USER_WIDTH),
    .ARB_TYPE_ROUND_ROBIN(1),
    .ARB_LSB_HIGH_PRIORITY(1)
) dut (
    .clk(clk),
    .rst(rst),
    
    // Input ports
    .s00_axis_tvalid(s_axis_tvalid[0]),
    .s00_axis_tready(s_axis_tready[0]),
    .s00_axis_tdata(s_axis_tdata[0]),
    .s00_axis_tkeep(s_axis_tkeep[0]),
    .s00_axis_tlast(s_axis_tlast[0]),
    .s00_axis_tid(s_axis_tid[0]),
    .s00_axis_tdest(s_axis_tdest[0]),
    .s00_axis_tuser(s_axis_tuser[0]),
    
    .s01_axis_tvalid(s_axis_tvalid[1]),
    .s01_axis_tready(s_axis_tready[1]),
    .s01_axis_tdata(s_axis_tdata[1]),
    .s01_axis_tkeep(s_axis_tkeep[1]),
    .s01_axis_tlast(s_axis_tlast[1]),
    .s01_axis_tid(s_axis_tid[1]),
    .s01_axis_tdest(s_axis_tdest[1]),
    .s01_axis_tuser(s_axis_tuser[1]),
    
    .s02_axis_tvalid(s_axis_tvalid[2]),
    .s02_axis_tready(s_axis_tready[2]),
    .s02_axis_tdata(s_axis_tdata[2]),
    .s02_axis_tkeep(s_axis_tkeep[2]),
    .s02_axis_tlast(s_axis_tlast[2]),
    .s02_axis_tid(s_axis_tid[2]),
    .s02_axis_tdest(s_axis_tdest[2]),
    .s02_axis_tuser(s_axis_tuser[2]),
    
    .s03_axis_tvalid(s_axis_tvalid[3]),
    .s03_axis_tready(s_axis_tready[3]),
    .s03_axis_tdata(s_axis_tdata[3]),
    .s03_axis_tkeep(s_axis_tkeep[3]),
    .s03_axis_tlast(s_axis_tlast[3]),
    .s03_axis_tid(s_axis_tid[3]),
    .s03_axis_tdest(s_axis_tdest[3]),
    .s03_axis_tuser(s_axis_tuser[3]),
    
    .s04_axis_tvalid(s_axis_tvalid[4]),
    .s04_axis_tready(s_axis_tready[4]),
    .s04_axis_tdata(s_axis_tdata[4]),
    .s04_axis_tkeep(s_axis_tkeep[4]),
    .s04_axis_tlast(s_axis_tlast[4]),
    .s04_axis_tid(s_axis_tid[4]),
    .s04_axis_tdest(s_axis_tdest[4]),
    .s04_axis_tuser(s_axis_tuser[4]),
    
    .s05_axis_tvalid(s_axis_tvalid[5]),
    .s05_axis_tready(s_axis_tready[5]),
    .s05_axis_tdata(s_axis_tdata[5]),
    .s05_axis_tkeep(s_axis_tkeep[5]),
    .s05_axis_tlast(s_axis_tlast[5]),
    .s05_axis_tid(s_axis_tid[5]),
    .s05_axis_tdest(s_axis_tdest[5]),
    .s05_axis_tuser(s_axis_tuser[5]),
    
    .s06_axis_tvalid(s_axis_tvalid[6]),
    .s06_axis_tready(s_axis_tready[6]),
    .s06_axis_tdata(s_axis_tdata[6]),
    .s06_axis_tkeep(s_axis_tkeep[6]),
    .s06_axis_tlast(s_axis_tlast[6]),
    .s06_axis_tid(s_axis_tid[6]),
    .s06_axis_tdest(s_axis_tdest[6]),
    .s06_axis_tuser(s_axis_tuser[6]),
    
    .s07_axis_tvalid(s_axis_tvalid[7]),
    .s07_axis_tready(s_axis_tready[7]),
    .s07_axis_tdata(s_axis_tdata[7]),
    .s07_axis_tkeep(s_axis_tkeep[7]),
    .s07_axis_tlast(s_axis_tlast[7]),
    .s07_axis_tid(s_axis_tid[7]),
    .s07_axis_tdest(s_axis_tdest[7]),
    .s07_axis_tuser(s_axis_tuser[7]),
    
    .s08_axis_tvalid(s_axis_tvalid[8]),
    .s08_axis_tready(s_axis_tready[8]),
    .s08_axis_tdata(s_axis_tdata[8]),
    .s08_axis_tkeep(s_axis_tkeep[8]),
    .s08_axis_tlast(s_axis_tlast[8]),
    .s08_axis_tid(s_axis_tid[8]),
    .s08_axis_tdest(s_axis_tdest[8]),
    .s08_axis_tuser(s_axis_tuser[8]),
    
    .s09_axis_tvalid(s_axis_tvalid[9]),
    .s09_axis_tready(s_axis_tready[9]),
    .s09_axis_tdata(s_axis_tdata[9]),
    .s09_axis_tkeep(s_axis_tkeep[9]),
    .s09_axis_tlast(s_axis_tlast[9]),
    .s09_axis_tid(s_axis_tid[9]),
    .s09_axis_tdest(s_axis_tdest[9]),
    .s09_axis_tuser(s_axis_tuser[9]),
    
    .s10_axis_tvalid(s_axis_tvalid[10]),
    .s10_axis_tready(s_axis_tready[10]),
    .s10_axis_tdata(s_axis_tdata[10]),
    .s10_axis_tkeep(s_axis_tkeep[10]),
    .s10_axis_tlast(s_axis_tlast[10]),
    .s10_axis_tid(s_axis_tid[10]),
    .s10_axis_tdest(s_axis_tdest[10]),
    .s10_axis_tuser(s_axis_tuser[10]),
    
    .s11_axis_tvalid(s_axis_tvalid[11]),
    .s11_axis_tready(s_axis_tready[11]),
    .s11_axis_tdata(s_axis_tdata[11]),
    .s11_axis_tkeep(s_axis_tkeep[11]),
    .s11_axis_tlast(s_axis_tlast[11]),
    .s11_axis_tid(s_axis_tid[11]),
    .s11_axis_tdest(s_axis_tdest[11]),
    .s11_axis_tuser(s_axis_tuser[11]),
    
    .s12_axis_tvalid(s_axis_tvalid[12]),
    .s12_axis_tready(s_axis_tready[12]),
    .s12_axis_tdata(s_axis_tdata[12]),
    .s12_axis_tkeep(s_axis_tkeep[12]),
    .s12_axis_tlast(s_axis_tlast[12]),
    .s12_axis_tid(s_axis_tid[12]),
    .s12_axis_tdest(s_axis_tdest[12]),
    .s12_axis_tuser(s_axis_tuser[12]),
    
    // Output ports
    .m00_axis_tvalid(m_axis_tvalid[0]),
    .m00_axis_tready(m_axis_tready[0]),
    .m00_axis_tdata(m_axis_tdata[0]),
    .m00_axis_tkeep(m_axis_tkeep[0]),
    .m00_axis_tlast(m_axis_tlast[0]),
    .m00_axis_tid(m_axis_tid[0]),
    .m00_axis_tdest(m_axis_tdest[0]),
    .m00_axis_tuser(m_axis_tuser[0]),
    
    .m01_axis_tvalid(m_axis_tvalid[1]),
    .m01_axis_tready(m_axis_tready[1]),
    .m01_axis_tdata(m_axis_tdata[1]),
    .m01_axis_tkeep(m_axis_tkeep[1]),
    .m01_axis_tlast(m_axis_tlast[1]),
    .m01_axis_tid(m_axis_tid[1]),
    .m01_axis_tdest(m_axis_tdest[1]),
    .m01_axis_tuser(m_axis_tuser[1]),
    
    .m02_axis_tvalid(m_axis_tvalid[2]),
    .m02_axis_tready(m_axis_tready[2]),
    .m02_axis_tdata(m_axis_tdata[2]),
    .m02_axis_tkeep(m_axis_tkeep[2]),
    .m02_axis_tlast(m_axis_tlast[2]),
    .m02_axis_tid(m_axis_tid[2]),
    .m02_axis_tdest(m_axis_tdest[2]),
    .m02_axis_tuser(m_axis_tuser[2]),
    
    .m03_axis_tvalid(m_axis_tvalid[3]),
    .m03_axis_tready(m_axis_tready[3]),
    .m03_axis_tdata(m_axis_tdata[3]),
    .m03_axis_tkeep(m_axis_tkeep[3]),
    .m03_axis_tlast(m_axis_tlast[3]),
    .m03_axis_tid(m_axis_tid[3]),
    .m03_axis_tdest(m_axis_tdest[3]),
    .m03_axis_tuser(m_axis_tuser[3]),
    
    .m04_axis_tvalid(m_axis_tvalid[4]),
    .m04_axis_tready(m_axis_tready[4]),
    .m04_axis_tdata(m_axis_tdata[4]),
    .m04_axis_tkeep(m_axis_tkeep[4]),
    .m04_axis_tlast(m_axis_tlast[4]),
    .m04_axis_tid(m_axis_tid[4]),
    .m04_axis_tdest(m_axis_tdest[4]),
    .m04_axis_tuser(m_axis_tuser[4]),
    
    .m05_axis_tvalid(m_axis_tvalid[5]),
    .m05_axis_tready(m_axis_tready[5]),
    .m05_axis_tdata(m_axis_tdata[5]),
    .m05_axis_tkeep(m_axis_tkeep[5]),
    .m05_axis_tlast(m_axis_tlast[5]),
    .m05_axis_tid(m_axis_tid[5]),
    .m05_axis_tdest(m_axis_tdest[5]),
    .m05_axis_tuser(m_axis_tuser[5]),
    
    .m06_axis_tvalid(m_axis_tvalid[6]),
    .m06_axis_tready(m_axis_tready[6]),
    .m06_axis_tdata(m_axis_tdata[6]),
    .m06_axis_tkeep(m_axis_tkeep[6]),
    .m06_axis_tlast(m_axis_tlast[6]),
    .m06_axis_tid(m_axis_tid[6]),
    .m06_axis_tdest(m_axis_tdest[6]),
    .m06_axis_tuser(m_axis_tuser[6]),
    
    .m07_axis_tvalid(m_axis_tvalid[7]),
    .m07_axis_tready(m_axis_tready[7]),
    .m07_axis_tdata(m_axis_tdata[7]),
    .m07_axis_tkeep(m_axis_tkeep[7]),
    .m07_axis_tlast(m_axis_tlast[7]),
    .m07_axis_tid(m_axis_tid[7]),
    .m07_axis_tdest(m_axis_tdest[7]),
    .m07_axis_tuser(m_axis_tuser[7]),
    
    .m08_axis_tvalid(m_axis_tvalid[8]),
    .m08_axis_tready(m_axis_tready[8]),
    .m08_axis_tdata(m_axis_tdata[8]),
    .m08_axis_tkeep(m_axis_tkeep[8]),
    .m08_axis_tlast(m_axis_tlast[8]),
    .m08_axis_tid(m_axis_tid[8]),
    .m08_axis_tdest(m_axis_tdest[8]),
    .m08_axis_tuser(m_axis_tuser[8]),
    
    .m09_axis_tvalid(m_axis_tvalid[9]),
    .m09_axis_tready(m_axis_tready[9]),
    .m09_axis_tdata(m_axis_tdata[9]),
    .m09_axis_tkeep(m_axis_tkeep[9]),
    .m09_axis_tlast(m_axis_tlast[9]),
    .m09_axis_tid(m_axis_tid[9]),
    .m09_axis_tdest(m_axis_tdest[9]),
    .m09_axis_tuser(m_axis_tuser[9]),
    
    .m10_axis_tvalid(m_axis_tvalid[10]),
    .m10_axis_tready(m_axis_tready[10]),
    .m10_axis_tdata(m_axis_tdata[10]),
    .m10_axis_tkeep(m_axis_tkeep[10]),
    .m10_axis_tlast(m_axis_tlast[10]),
    .m10_axis_tid(m_axis_tid[10]),
    .m10_axis_tdest(m_axis_tdest[10]),
    .m10_axis_tuser(m_axis_tuser[10]),
    
    .m11_axis_tvalid(m_axis_tvalid[11]),
    .m11_axis_tready(m_axis_tready[11]),
    .m11_axis_tdata(m_axis_tdata[11]),
    .m11_axis_tkeep(m_axis_tkeep[11]),
    .m11_axis_tlast(m_axis_tlast[11]),
    .m11_axis_tid(m_axis_tid[11]),
    .m11_axis_tdest(m_axis_tdest[11]),
    .m11_axis_tuser(m_axis_tuser[11]),
    
    .m12_axis_tvalid(m_axis_tvalid[12]),
    .m12_axis_tready(m_axis_tready[12]),
    .m12_axis_tdata(m_axis_tdata[12]),
    .m12_axis_tkeep(m_axis_tkeep[12]),
    .m12_axis_tlast(m_axis_tlast[12]),
    .m12_axis_tid(m_axis_tid[12]),
    .m12_axis_tdest(m_axis_tdest[12]),
    .m12_axis_tuser(m_axis_tuser[12])
);

// Clock generation
always #(CLK_PERIOD/2) clk = ~clk;

// Latency measurement for all ports
always @(posedge clk) begin
    if (rst) begin
        for (int i = 0; i < 13; i++) begin
            cycle_counts[i] <= 0;
            counting[i] <= 0;
        end
    end else begin
        for (int i = 0; i < 13; i++) begin
            if (counting[i]) begin
                cycle_counts[i] <= cycle_counts[i] + 1;
            end
        end
    end
end

// Function to send packet from source to destination port
task automatic send_packet;
    input int src_port;
    input int dst_port;
    input [DATA_WIDTH-1:0] data;
    
    begin
        // Start latency measurement
        counting[src_port] = 1;
        start_times[src_port] = $time;
        cycle_counts[src_port] = 0;
        
        // Prepare packet data
        s_axis_tvalid[src_port] = 1;
        s_axis_tdata[src_port] = data;
        s_axis_tkeep[src_port] = {KEEP_WIDTH{1'b1}};
        s_axis_tlast[src_port] = 1;
        s_axis_tid[src_port] = src_port[S_ID_WIDTH-1:0];
        s_axis_tdest[src_port] = dst_port[S_DEST_WIDTH-1:0];
        s_axis_tuser[src_port] = 0;
        
        $display("Time %0t: Sending packet from port %0d to port %0d", $time, src_port, dst_port);
        
        // Add to packet tracking
        packet_stats.push_back('{src: src_port, dst: dst_port, start_time: start_times[src_port], end_time: 0, latency: 0});
        total_packets_sent++;
        
        // Wait until packet is accepted
        wait(s_axis_tready[src_port]);
        @(posedge clk);
        s_axis_tvalid[src_port] = 0;
    end
endtask

// Test scenario
initial begin
    // Initialize signals
    clk = 0;
    rst = 1;
    total_packets_sent = 0;
    total_packets_received = 0;
    total_latency = 0;
    min_latency = 1000000; // Large initial value
    max_latency = 0;
    
    // Initialize inputs
// Initialize inputs
for (int i = 0; i < 13; i++) begin
    s_axis_tvalid[i] = 0;
    s_axis_tdata[i] = 0;
    s_axis_tkeep[i] = 0;
    s_axis_tlast[i] = 0;
    s_axis_tid[i] = 0;
    s_axis_tdest[i] = 0;
    s_axis_tuser[i] = 0;
    m_axis_tready[i] = 1; // Always ready to receive
end

    // Apply reset
    #(CLK_PERIOD*10);
    rst = 0;
    #(CLK_PERIOD*10);
    
    $display("===================================================================");
    $display("Starting AXI-Stream Switch 13x13 Latency Test");
    $display("===================================================================");
    
    // Test 1: All-to-all communication pattern
    $display("\nTest 1: All-to-all communication pattern (single packet from each source)");
    
    for (int src = 0; src < 13; src++) begin
        for (int dst = 0; dst < 13; dst++) begin
            if (src != dst) begin // Don't send to self
                // Wait a few cycles between packet injections
                repeat (5) @(posedge clk);
                
                // Send packet with unique data pattern
                send_packet(src, dst, {32'hA5A5_A5A5, 32'h0000_0000 + src, 32'h0000_0000 + dst, 32'h0000_0000 + src*dst});
            end
        end
    end
    
    // Wait for all packets to be received
    repeat (100) @(posedge clk);
    
    // Test 2: Hotspot traffic pattern (all to port 0)
    $display("\nTest 2: Hotspot traffic pattern (all ports sending to port 0)");
    
    for (int src = 1; src < 13; src++) begin
        // Send in rapid succession to create contention
        repeat (2) @(posedge clk);
        send_packet(src, 0, {32'hB6B6_B6B6, 32'h0000_0000 + src, 32'h0000_0000, 32'h0000_FAFA});
    end
    
    // Wait for all packets to be received
    repeat (100) @(posedge clk);
    
    // Test 3: Simultaneous packets (creating contention)
    $display("\nTest 3: Simultaneous packet injection (creating contention)");
    
    fork
        send_packet(0, 5, {32'hC7C7_C7C7, 32'h0000_0000, 32'h0000_0005, 32'h0000_0001});
        send_packet(1, 5, {32'hC7C7_C7C7, 32'h0000_0001, 32'h0000_0005, 32'h0000_0002});
        send_packet(2, 5, {32'hC7C7_C7C7, 32'h0000_0002, 32'h0000_0005, 32'h0000_0003});
        send_packet(3, 5, {32'hC7C7_C7C7, 32'h0000_0003, 32'h0000_0005, 32'h0000_0004});
    join_none
    
    // Wait for all packets to be received
    repeat (100) @(posedge clk);
    
    // Test 4: Random traffic pattern
    $display("\nTest 4: Random traffic pattern (50 packets)");
    
    for (int i = 0; i < 50; i++) begin
        int src_port = $urandom_range(0, 12);
        int dst_port = $urandom_range(0, 12);
        
        // Ensure source != destination
        while (src_port == dst_port) begin
            dst_port = $urandom_range(0, 12);
        end
        
        // Random delay between packets
        repeat ($urandom_range(1, 5)) @(posedge clk);
        
        // Send packet with random data
        send_packet(src_port, dst_port, {$random, $random, $random, $random});
    end
    
    // Wait for all packets to be processed
    repeat (200) @(posedge clk);
    
    // Display final statistics
    $display("\n===================================================================");
    $display("Final Statistics");
    $display("===================================================================");
    $display("Total packets sent:     %0d", total_packets_sent);
    $display("Total packets received: %0d", total_packets_received);
    
    if (total_packets_received > 0) begin
        $display("Average latency:       %0.2f ns", total_latency/total_packets_received);
        $display("Minimum latency:       %0d ns", min_latency);
        $display("Maximum latency:       %0d ns", max_latency);
    end else begin
        $display("No packets received");
    end
    
    $finish;
end

// Monitor for packet reception at output ports
genvar g;
generate
    for (g = 0; g < 13; g++) begin: output_monitors
        int port_num;
        initial port_num = g; // Capture the generate block index
        
        always @(posedge clk) begin
            // Declare variables at the beginning of the block
            automatic int src_port;
            automatic int dst_port;
            automatic int latency;
            automatic int i;
            
            if (!rst && m_axis_tvalid[port_num] && m_axis_tready[port_num] && m_axis_tlast[port_num]) begin
                // Get source port from ID
                src_port = m_axis_tid[port_num];
                dst_port = port_num;
                
                // Stop counting cycles for this port
                if (counting[src_port]) begin
                    counting[src_port] <= 0;
                    end_times[src_port] = $time;
                    
                    // Calculate latency
                    latency = end_times[src_port] - start_times[src_port];
                    
                    // Find matching packet in our stats tracking
                    for (i = 0; i < packet_stats.size(); i++) begin
                        if (packet_stats[i].src == src_port && 
                            packet_stats[i].dst == dst_port && 
                            packet_stats[i].end_time == 0) begin
                            
                            packet_stats[i].end_time = end_times[src_port];
                            packet_stats[i].latency = latency;
                            break;
                        end
                    end
                    
                    // Update global statistics
                    total_packets_received++;
                    total_latency += latency;
                    
                    if (latency < min_latency) min_latency = latency;
                    if (latency > max_latency) max_latency = latency;
                    
                    // Display packet receipt
                    $display("Time %0t: Received packet at port %0d from port %0d, Latency: %0d ns, %0d cycles", 
                             $time, dst_port, src_port, latency, cycle_counts[src_port]);
                end
            end
        end
    end
endgenerate

endmodule