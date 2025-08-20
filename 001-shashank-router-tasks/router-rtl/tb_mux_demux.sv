`timescale 1ns / 1ps

module tb_mux_demux_1_15();

    // Parameters
    localparam TID_WIDTH = 2;
    localparam TDEST_WIDTH = 4;
    localparam TDATA_WIDTH = 128;
    localparam CLK_PERIOD = 10; // 100MHz clock
    
    // Signals
    logic clk;
    logic rst_n;
    
    // Input port 0 signals
    logic axis_in_tvalid_0;
    logic [TDATA_WIDTH-1:0] axis_in_tdata_0;
    logic axis_in_tlast_0;
    logic [TID_WIDTH-1:0] axis_in_tid_0;
    logic [TDEST_WIDTH-1:0] axis_in_tdest_0;
    logic axis_in_tready_0;
    
    // Output port 0 signals
    logic axis_out_tvalid_0;
    logic [TDATA_WIDTH-1:0] axis_out_tdata_0;
    logic axis_out_tlast_0;
    logic [TID_WIDTH-1:0] axis_out_tid_0;
    logic [TDEST_WIDTH-1:0] axis_out_tdest_0;
    logic axis_out_tready_0;
    
    // Arrays for other ports (1-15)
    logic [15:1] axis_in_tvalid;
    logic [15:1] axis_in_tready;
    logic [15:1] axis_out_tvalid;
    logic [15:1] axis_out_tready;
    logic [15:1][TDATA_WIDTH-1:0] axis_in_tdata;
    logic [15:1][TDATA_WIDTH-1:0] axis_out_tdata;
    logic [15:1] axis_in_tlast;
    logic [15:1] axis_out_tlast;
    logic [15:1][TID_WIDTH-1:0] axis_in_tid;
    logic [15:1][TID_WIDTH-1:0] axis_out_tid;
    logic [15:1][TDEST_WIDTH-1:0] axis_in_tdest;
    logic [15:1][TDEST_WIDTH-1:0] axis_out_tdest;


    // latency calc vars
    integer cycle_counts[0:15];
    integer counting[0:15];
    integer start_times[0:15];
    integer end_times[0:15];


    integer current_src_port;


        // Latency measurement block
    always @(posedge clk) begin
        if (!rst_n) begin
            for (int i = 0; i <= 15; i++) begin
                cycle_counts[i] <= 0;
                counting[i] <= 0;
            end
        end else begin
            // For Demux testing (port 0 to other ports)
            for (int i = 1; i <= 15; i++) begin
                if (counting[i]) begin
                    cycle_counts[i] <= cycle_counts[i] + 1;
                    if (axis_out_tvalid[i] && axis_out_tready[i]) begin
                        end_times[i] = $time;
                        $display("Demux latency (port 0 -> port %0d): %0d cycles, %0d ns", 
                                 i, cycle_counts[i], end_times[i] - start_times[i]);
                        counting[i] <= 0;
                    end
                end
            end
            
            // For Mux testing (other ports to port 0)
            if (counting[0]) begin
                cycle_counts[0] <= cycle_counts[0] + 1;
                if (axis_out_tvalid_0 && axis_out_tready_0) begin
                    end_times[0] = $time;
                    $display("Mux latency (port %0d -> port 0): %0d cycles, %0d ns", 
                             current_src_port, cycle_counts[0], end_times[0] - start_times[0]);
                    counting[0] <= 0;
                end
            end
        end
    end

        // Test 1: Demux - Test routing from port 0 to various output ports



    // Instantiate the DUT
    mux_demux_1_15 #(
        .TID_WIDTH(TID_WIDTH),
        .TDEST_WIDTH(TDEST_WIDTH),
        .TDATA_WIDTH(TDATA_WIDTH)
    ) dut (
        .clk(clk),
        .rst_n(rst_n),
        
        // Input port 0
        .axis_in_tvalid_0(axis_in_tvalid_0),
        .axis_in_tready_0(axis_in_tready_0),
        .axis_in_tdata_0(axis_in_tdata_0),
        .axis_in_tlast_0(axis_in_tlast_0),
        .axis_in_tid_0(axis_in_tid_0),
        .axis_in_tdest_0(axis_in_tdest_0),
        
        // Input ports 1-15
        .axis_in_tvalid_1(axis_in_tvalid[1]),
        .axis_in_tvalid_2(axis_in_tvalid[2]),
        .axis_in_tvalid_3(axis_in_tvalid[3]),
        .axis_in_tvalid_4(axis_in_tvalid[4]),
        .axis_in_tvalid_5(axis_in_tvalid[5]),
        .axis_in_tvalid_6(axis_in_tvalid[6]),
        .axis_in_tvalid_7(axis_in_tvalid[7]),
        .axis_in_tvalid_8(axis_in_tvalid[8]),
        .axis_in_tvalid_9(axis_in_tvalid[9]),
        .axis_in_tvalid_10(axis_in_tvalid[10]),
        .axis_in_tvalid_11(axis_in_tvalid[11]),
        .axis_in_tvalid_12(axis_in_tvalid[12]),
        .axis_in_tvalid_13(axis_in_tvalid[13]),
        .axis_in_tvalid_14(axis_in_tvalid[14]),
        .axis_in_tvalid_15(axis_in_tvalid[15]),
        
        .axis_in_tready_1(axis_in_tready[1]),
        .axis_in_tready_2(axis_in_tready[2]),
        .axis_in_tready_3(axis_in_tready[3]),
        .axis_in_tready_4(axis_in_tready[4]),
        .axis_in_tready_5(axis_in_tready[5]),
        .axis_in_tready_6(axis_in_tready[6]),
        .axis_in_tready_7(axis_in_tready[7]),
        .axis_in_tready_8(axis_in_tready[8]),
        .axis_in_tready_9(axis_in_tready[9]),
        .axis_in_tready_10(axis_in_tready[10]),
        .axis_in_tready_11(axis_in_tready[11]),
        .axis_in_tready_12(axis_in_tready[12]),
        .axis_in_tready_13(axis_in_tready[13]),
        .axis_in_tready_14(axis_in_tready[14]),
        .axis_in_tready_15(axis_in_tready[15]),
        
        .axis_in_tdata_1(axis_in_tdata[1]),
        .axis_in_tdata_2(axis_in_tdata[2]),
        .axis_in_tdata_3(axis_in_tdata[3]),
        .axis_in_tdata_4(axis_in_tdata[4]),
        .axis_in_tdata_5(axis_in_tdata[5]),
        .axis_in_tdata_6(axis_in_tdata[6]),
        .axis_in_tdata_7(axis_in_tdata[7]),
        .axis_in_tdata_8(axis_in_tdata[8]),
        .axis_in_tdata_9(axis_in_tdata[9]),
        .axis_in_tdata_10(axis_in_tdata[10]),
        .axis_in_tdata_11(axis_in_tdata[11]),
        .axis_in_tdata_12(axis_in_tdata[12]),
        .axis_in_tdata_13(axis_in_tdata[13]),
        .axis_in_tdata_14(axis_in_tdata[14]),
        .axis_in_tdata_15(axis_in_tdata[15]),
        
        .axis_in_tlast_1(axis_in_tlast[1]),
        .axis_in_tlast_2(axis_in_tlast[2]),
        .axis_in_tlast_3(axis_in_tlast[3]),
        .axis_in_tlast_4(axis_in_tlast[4]),
        .axis_in_tlast_5(axis_in_tlast[5]),
        .axis_in_tlast_6(axis_in_tlast[6]),
        .axis_in_tlast_7(axis_in_tlast[7]),
        .axis_in_tlast_8(axis_in_tlast[8]),
        .axis_in_tlast_9(axis_in_tlast[9]),
        .axis_in_tlast_10(axis_in_tlast[10]),
        .axis_in_tlast_11(axis_in_tlast[11]),
        .axis_in_tlast_12(axis_in_tlast[12]),
        .axis_in_tlast_13(axis_in_tlast[13]),
        .axis_in_tlast_14(axis_in_tlast[14]),
        .axis_in_tlast_15(axis_in_tlast[15]),
        
        .axis_in_tid_1(axis_in_tid[1]),
        .axis_in_tid_2(axis_in_tid[2]),
        .axis_in_tid_3(axis_in_tid[3]),
        .axis_in_tid_4(axis_in_tid[4]),
        .axis_in_tid_5(axis_in_tid[5]),
        .axis_in_tid_6(axis_in_tid[6]),
        .axis_in_tid_7(axis_in_tid[7]),
        .axis_in_tid_8(axis_in_tid[8]),
        .axis_in_tid_9(axis_in_tid[9]),
        .axis_in_tid_10(axis_in_tid[10]),
        .axis_in_tid_11(axis_in_tid[11]),
        .axis_in_tid_12(axis_in_tid[12]),
        .axis_in_tid_13(axis_in_tid[13]),
        .axis_in_tid_14(axis_in_tid[14]),
        .axis_in_tid_15(axis_in_tid[15]),
        
        .axis_in_tdest_1(axis_in_tdest[1]),
        .axis_in_tdest_2(axis_in_tdest[2]),
        .axis_in_tdest_3(axis_in_tdest[3]),
        .axis_in_tdest_4(axis_in_tdest[4]),
        .axis_in_tdest_5(axis_in_tdest[5]),
        .axis_in_tdest_6(axis_in_tdest[6]),
        .axis_in_tdest_7(axis_in_tdest[7]),
        .axis_in_tdest_8(axis_in_tdest[8]),
        .axis_in_tdest_9(axis_in_tdest[9]),
        .axis_in_tdest_10(axis_in_tdest[10]),
        .axis_in_tdest_11(axis_in_tdest[11]),
        .axis_in_tdest_12(axis_in_tdest[12]),
        .axis_in_tdest_13(axis_in_tdest[13]),
        .axis_in_tdest_14(axis_in_tdest[14]),
        .axis_in_tdest_15(axis_in_tdest[15]),
        
        // Output port 0
        .axis_out_tvalid_0(axis_out_tvalid_0),
        .axis_out_tready_0(axis_out_tready_0),
        .axis_out_tdata_0(axis_out_tdata_0),
        .axis_out_tlast_0(axis_out_tlast_0),
        .axis_out_tid_0(axis_out_tid_0),
        .axis_out_tdest_0(axis_out_tdest_0),
        
        // Output ports 1-15
        .axis_out_tvalid_1(axis_out_tvalid[1]),
        .axis_out_tvalid_2(axis_out_tvalid[2]),
        .axis_out_tvalid_3(axis_out_tvalid[3]),
        .axis_out_tvalid_4(axis_out_tvalid[4]),
        .axis_out_tvalid_5(axis_out_tvalid[5]),
        .axis_out_tvalid_6(axis_out_tvalid[6]),
        .axis_out_tvalid_7(axis_out_tvalid[7]),
        .axis_out_tvalid_8(axis_out_tvalid[8]),
        .axis_out_tvalid_9(axis_out_tvalid[9]),
        .axis_out_tvalid_10(axis_out_tvalid[10]),
        .axis_out_tvalid_11(axis_out_tvalid[11]),
        .axis_out_tvalid_12(axis_out_tvalid[12]),
        .axis_out_tvalid_13(axis_out_tvalid[13]),
        .axis_out_tvalid_14(axis_out_tvalid[14]),
        .axis_out_tvalid_15(axis_out_tvalid[15]),
        
        .axis_out_tready_1(axis_out_tready[1]),
        .axis_out_tready_2(axis_out_tready[2]),
        .axis_out_tready_3(axis_out_tready[3]),
        .axis_out_tready_4(axis_out_tready[4]),
        .axis_out_tready_5(axis_out_tready[5]),
        .axis_out_tready_6(axis_out_tready[6]),
        .axis_out_tready_7(axis_out_tready[7]),
        .axis_out_tready_8(axis_out_tready[8]),
        .axis_out_tready_9(axis_out_tready[9]),
        .axis_out_tready_10(axis_out_tready[10]),
        .axis_out_tready_11(axis_out_tready[11]),
        .axis_out_tready_12(axis_out_tready[12]),
        .axis_out_tready_13(axis_out_tready[13]),
        .axis_out_tready_14(axis_out_tready[14]),
        .axis_out_tready_15(axis_out_tready[15]),
        
        .axis_out_tdata_1(axis_out_tdata[1]),
        .axis_out_tdata_2(axis_out_tdata[2]),
        .axis_out_tdata_3(axis_out_tdata[3]),
        .axis_out_tdata_4(axis_out_tdata[4]),
        .axis_out_tdata_5(axis_out_tdata[5]),
        .axis_out_tdata_6(axis_out_tdata[6]),
        .axis_out_tdata_7(axis_out_tdata[7]),
        .axis_out_tdata_8(axis_out_tdata[8]),
        .axis_out_tdata_9(axis_out_tdata[9]),
        .axis_out_tdata_10(axis_out_tdata[10]),
        .axis_out_tdata_11(axis_out_tdata[11]),
        .axis_out_tdata_12(axis_out_tdata[12]),
        .axis_out_tdata_13(axis_out_tdata[13]),
        .axis_out_tdata_14(axis_out_tdata[14]),
        .axis_out_tdata_15(axis_out_tdata[15]),
        
        .axis_out_tlast_1(axis_out_tlast[1]),
        .axis_out_tlast_2(axis_out_tlast[2]),
        .axis_out_tlast_3(axis_out_tlast[3]),
        .axis_out_tlast_4(axis_out_tlast[4]),
        .axis_out_tlast_5(axis_out_tlast[5]),
        .axis_out_tlast_6(axis_out_tlast[6]),
        .axis_out_tlast_7(axis_out_tlast[7]),
        .axis_out_tlast_8(axis_out_tlast[8]),
        .axis_out_tlast_9(axis_out_tlast[9]),
        .axis_out_tlast_10(axis_out_tlast[10]),
        .axis_out_tlast_11(axis_out_tlast[11]),
        .axis_out_tlast_12(axis_out_tlast[12]),
        .axis_out_tlast_13(axis_out_tlast[13]),
        .axis_out_tlast_14(axis_out_tlast[14]),
        .axis_out_tlast_15(axis_out_tlast[15]),
        
        .axis_out_tid_1(axis_out_tid[1]),
        .axis_out_tid_2(axis_out_tid[2]),
        .axis_out_tid_3(axis_out_tid[3]),
        .axis_out_tid_4(axis_out_tid[4]),
        .axis_out_tid_5(axis_out_tid[5]),
        .axis_out_tid_6(axis_out_tid[6]),
        .axis_out_tid_7(axis_out_tid[7]),
        .axis_out_tid_8(axis_out_tid[8]),
        .axis_out_tid_9(axis_out_tid[9]),
        .axis_out_tid_10(axis_out_tid[10]),
        .axis_out_tid_11(axis_out_tid[11]),
        .axis_out_tid_12(axis_out_tid[12]),
        .axis_out_tid_13(axis_out_tid[13]),
        .axis_out_tid_14(axis_out_tid[14]),
        .axis_out_tid_15(axis_out_tid[15]),
        
        .axis_out_tdest_1(axis_out_tdest[1]),
        .axis_out_tdest_2(axis_out_tdest[2]),
        .axis_out_tdest_3(axis_out_tdest[3]),
        .axis_out_tdest_4(axis_out_tdest[4]),
        .axis_out_tdest_5(axis_out_tdest[5]),
        .axis_out_tdest_6(axis_out_tdest[6]),
        .axis_out_tdest_7(axis_out_tdest[7]),
        .axis_out_tdest_8(axis_out_tdest[8]),
        .axis_out_tdest_9(axis_out_tdest[9]),
        .axis_out_tdest_10(axis_out_tdest[10]),
        .axis_out_tdest_11(axis_out_tdest[11]),
        .axis_out_tdest_12(axis_out_tdest[12]),
        .axis_out_tdest_13(axis_out_tdest[13]),
        .axis_out_tdest_14(axis_out_tdest[14]),
        .axis_out_tdest_15(axis_out_tdest[15])
    );
    
    // Clock generation
    initial begin
        clk = 0;
        forever #(CLK_PERIOD/2) clk = ~clk;
    end
    
    // Test procedure
    initial begin
        // Initialize signals
        rst_n = 0;
        axis_in_tvalid_0 = 0;
        axis_in_tdata_0 = 0;
        axis_in_tlast_0 = 0;
        axis_in_tid_0 = 0;
        axis_in_tdest_0 = 0;
        axis_out_tready_0 = 1;
        
        for (int i = 1; i <= 15; i++) begin
            axis_in_tvalid[i] = 0;
            axis_in_tdata[i] = 0;
            axis_in_tlast[i] = 0;
            axis_in_tid[i] = 0;
            axis_in_tdest[i] = 0;
            axis_out_tready[i] = 1;
        end
        
        // Reset sequence
        #20 rst_n = 1;
        #20;
        
        // Test 1: Demux - Test routing from port 0 to various output ports
    $display("Test 1: Demux - Port 0 to other ports");
    
    // Route from port 0 to port 3
    axis_in_tvalid_0 = 1;
    axis_in_tdata_0 = 'h12345678;
    axis_in_tid_0 = 2'b01;
    axis_in_tdest_0 = 4'b0011; // Route to port 3
    axis_in_tlast_0 = 0;
    
    // Start latency measurement for port 3
    counting[3] = 1;
    start_times[3] = $time;
    cycle_counts[3] = 0;

        #10;
        // Verify routing to port 3
        if (axis_out_tvalid[3] == 1 && axis_out_tdata[3] == 'h12345678 && axis_out_tid[3] == 2'b01) begin
            $display("PASS: Data correctly routed from port 0 to port 3");
        end else begin
            $display("FAIL: Data not correctly routed from port 0 to port 3");
        end
        
        // Route from port 0 to port 7
        axis_in_tdest_0 = 4'b0111; // Route to port 7
        axis_in_tdata_0 = 'hABCDEF01;
        #10;
        
        // Verify routing to port 7
        if (axis_out_tvalid[7] == 1 && axis_out_tdata[7] == 'hABCDEF01) begin
            $display("PASS: Data correctly routed from port 0 to port 7");
        end else begin
            $display("FAIL: Data not correctly routed from port 0 to port 7");
        end
        
        // Reset inputs
        axis_in_tvalid_0 = 0;
        #20;
        
        // Test 2: Mux - Test routing from various input ports to port 0
        $display("Test 2: Mux - Other ports to port 0");
        
        // Route from port 5 to port 0
        axis_in_tvalid[5] = 1;
        axis_in_tdata[5] = 'h55555555;
        axis_in_tid[5] = 2'b10;
        axis_in_tdest[5] = 4'b0000; // Destination doesn't matter for mux
        axis_in_tlast[5] = 1;

        current_src_port = 5;
        counting[0] = 1;
        start_times[0] = $time;
        cycle_counts[0] = 0;

        
        #10;
        // Verify routing to port 0
        if (axis_out_tvalid_0 == 1 && axis_out_tdata_0 == 'h55555555 && axis_out_tid_0 == 2'b10 && axis_out_tlast_0 == 1) begin
            $display("PASS: Data correctly routed from port 5 to port 0");
        end else begin
            $display("FAIL: Data not correctly routed from port 5 to port 0");
        end
        
        // Reset inputs
        axis_in_tvalid[5] = 0;
        #20;
        
        // Test 3: Priority - Lower-numbered ports have higher priority
        $display("Test 3: Testing priority with multiple valid inputs");
        
        // Set multiple valid signals
        axis_in_tvalid[10] = 1;
        axis_in_tdata[10] = 'hAAAAAAAA;
        
        axis_in_tvalid[3] = 1;
        axis_in_tdata[3] = 'h33333333;
        
        #10;
        // Port 3 should have priority over port 10
        if (axis_out_tvalid_0 == 1 && axis_out_tdata_0 == 'h33333333) begin
            $display("PASS: Port 3 correctly prioritized over port 10");
        end else begin
            $display("FAIL: Port priority not working correctly");
        end
        
        // Reset inputs
        axis_in_tvalid[3] = 0;
        axis_in_tvalid[10] = 0;
        #20;
        
        // Test 4: Test backpressure mechanism
        $display("Test 4: Testing backpressure");
        
        // Set valid signal and de-assert ready
        axis_in_tvalid_0 = 1;
        axis_in_tdata_0 = 'hBBBBBBBB;
        axis_in_tdest_0 = 4'b0010; // Route to port 2
        axis_out_tready[2] = 0; // Port 2 not ready
        
        #10;
        // Check if handshaking correctly prevents data transfer
        if (axis_in_tready_0 == 0) begin
            $display("PASS: Backpressure correctly applied when output not ready");
        end else begin
            $display("FAIL: Backpressure not working correctly");
        end
        
        // Make port ready and check data transfer
        axis_out_tready[2] = 1;
        #10;
        
        if (axis_out_tvalid[2] && axis_out_tdata[2] == 'hBBBBBBBB) begin
            $display("PASS: Data transferred when output became ready");
        end else begin
            $display("FAIL: Data not transferred when output became ready");
        end
        
        // Finish simulation
        #50 $display("Tests completed");
        $finish;
    end
    
    // Optional: Monitor key signals
    initial begin
        $monitor("Time=%0t, in_valid_0=%b, in_tdest_0=%h, out_valid_3=%b, out_data_3=%h", 
                 $time, axis_in_tvalid_0, axis_in_tdest_0, axis_out_tvalid[3], axis_out_tdata[3]);
    end

    initial begin
                // Latency summary
        $display("\nLatency Summary:");
        $display("---------------------------------------------------");
        $display("Test                 | Cycles | Time (ns)");
        $display("---------------------------------------------------");
        for (int i = 1; i <= 15; i++) begin
            if (end_times[i] > 0) begin
                $display("Demux: Port 0 -> Port %2d | %6d | %8d", 
                         i, cycle_counts[i], end_times[i] - start_times[i]);
            end
        end
        if (end_times[0] > 0) begin
            $display("Mux: Port %2d -> Port 0  | %6d | %8d", 
                     current_src_port, cycle_counts[0], end_times[0] - start_times[0]);
        end
        $display("---------------------------------------------------");
    end

endmodule