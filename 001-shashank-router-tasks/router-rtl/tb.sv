`timescale 1ns/1ps

module tb_router();
    // Parameters
    localparam NUM_PORTS = 5;
    localparam NOC_NUM_ENDPOINTS = 4;
    localparam TID_WIDTH = 2;
    localparam TDEST_WIDTH = 4;
    localparam TDATA_WIDTH = 32;
    localparam SERIALIZATION_FACTOR = 1;  // Keep simple for test
    localparam CLKCROSS_FACTOR = 1;       // Keep simple for test
    localparam RTR_ADDR_WIDTH = 2;
    localparam ROUTE_WIDTH = 3;
    localparam bit SINGLE_CLOCK = 1;      // Use same clock for simplicity
    
    // Calculate dependent parameters
    localparam FLIT_WIDTH = TDATA_WIDTH / SERIALIZATION_FACTOR / CLKCROSS_FACTOR;
    localparam DEST_WIDTH = TDEST_WIDTH + TID_WIDTH;
    
    // Clock and reset
    logic clk_noc;
    logic clk_usr;
    logic rst_n;
    
    // Timing variables
    int clock_count;
    int data_sent_cycle;
    int data_received_cycle;
    logic data_received;
    
    // Router ports
    logic [0:NUM_PORTS-1][FLIT_WIDTH-1:0] data_in;
    logic [0:NUM_PORTS-1][DEST_WIDTH-1:0] dest_in;
    logic [0:NUM_PORTS-1] is_tail_in;
    logic [0:NUM_PORTS-1] send_in;
    logic [0:NUM_PORTS-1] credit_out;
    
    logic [0:NUM_PORTS-1][FLIT_WIDTH-1:0] data_out;
    logic [0:NUM_PORTS-1][DEST_WIDTH-1:0] dest_out;
    logic [0:NUM_PORTS-1] is_tail_out;
    logic [0:NUM_PORTS-1] send_out;
    logic [0:NUM_PORTS-1] credit_in;
    
    // Turn disable matrix
    bit [0:NUM_PORTS-1][0:NUM_PORTS-1] DISABLE_TURNS;
    
    // AXI Stream ports
    logic axis_in_tvalid;
    logic axis_in_tready;
    logic [TDATA_WIDTH-1:0] axis_in_tdata;
    logic axis_in_tlast;
    logic [TID_WIDTH-1:0] axis_in_tid;
    logic [TDEST_WIDTH-1:0] axis_in_tdest;
    
    logic axis_out_tvalid;
    logic axis_out_tready;
    logic [TDATA_WIDTH-1:0] axis_out_tdata;
    logic axis_out_tlast;
    logic [TID_WIDTH-1:0] axis_out_tid;
    logic [TDEST_WIDTH-1:0] axis_out_tdest;
    
    // Router address
    logic [RTR_ADDR_WIDTH-1:0] router_address;
    
    // Clock generation
    initial begin
        clk_noc = 0;
        clk_usr = 0;
        forever begin
            #5 clk_noc = ~clk_noc;
            clk_usr = clk_noc; // Using same clock for simplicity
        end
    end
    
    // Initialize disable turns matrix
    initial begin
        for (int i = 0; i < NUM_PORTS; i++) begin
            for (int j = 0; j < NUM_PORTS; j++) begin
                DISABLE_TURNS[i][j] = 0;
            end
        end
    end
    
    // DUT instantiation
    router_wrap #(
        .NUM_PORTS(NUM_PORTS),
        .NOC_NUM_ENDPOINTS(NOC_NUM_ENDPOINTS),
        .TID_WIDTH(TID_WIDTH),
        .TDEST_WIDTH(TDEST_WIDTH),
        .TDATA_WIDTH(TDATA_WIDTH),
        .SERIALIZATION_FACTOR(SERIALIZATION_FACTOR),
        .CLKCROSS_FACTOR(CLKCROSS_FACTOR),
        .SINGLE_CLOCK(SINGLE_CLOCK),
        .RTR_ADDR_WIDTH(RTR_ADDR_WIDTH),
        .ROUTE_WIDTH(ROUTE_WIDTH)
    ) dut (
        .clk_noc(clk_noc),
        .clk_usr(clk_usr),
        .rst_n(rst_n),
        
        .data_in(data_in),
        .dest_in(dest_in),
        .is_tail_in(is_tail_in),
        .send_in(send_in),
        .credit_out(credit_out),
        
        .data_out(data_out),
        .dest_out(dest_out),
        .is_tail_out(is_tail_out),
        .send_out(send_out),
        .credit_in(credit_in),
        
        .DISABLE_TURNS(DISABLE_TURNS),
        
        .axis_in_tvalid(axis_in_tvalid),
        .axis_in_tready(axis_in_tready),
        .axis_in_tdata(axis_in_tdata),
        .axis_in_tlast(axis_in_tlast),
        .axis_in_tid(axis_in_tid),
        .axis_in_tdest(axis_in_tdest),
        
        .axis_out_tvalid(axis_out_tvalid),
        .axis_out_tready(axis_out_tready),
        .axis_out_tdata(axis_out_tdata),
        .axis_out_tlast(axis_out_tlast),
        .axis_out_tid(axis_out_tid),
        .axis_out_tdest(axis_out_tdest),
        
        .router_address(router_address)
    );
    
    // Initialize inputs
    initial begin
        for (int i = 0; i < NUM_PORTS-1; i++) begin
            data_in[i] = 0;
            dest_in[i] = 0;
            is_tail_in[i] = 0;
            send_in[i] = 0;
            credit_in[i] = 1; // Ready to receive data
        end
        
        axis_in_tvalid = 0;
        axis_in_tdata = 0;
        axis_in_tlast = 0;
        axis_in_tid = 0;
        axis_in_tdest = 0;
        axis_out_tready = 1; // Always ready to receive data
        
        router_address = 0; // Router at position 0
        
        data_received = 0;
    end
    
    // Main test
    initial begin
        // Reset the system
        rst_n = 0;
        repeat(5) @(posedge clk_noc);
        rst_n = 1;
        
        // Wait for a few cycles after reset
        repeat(10) @(posedge clk_noc);
        
        // Start counting cycles
        clock_count = 0;
        
        // Send one data through AXI Stream
        @(posedge clk_noc);
        axis_in_tvalid = 1;
        axis_in_tdata = 32'hA5A5_A5A5; // Test pattern
        axis_in_tlast = 1;             // Single flit packet
        axis_in_tid = 2'b01;           // Target ID
        axis_in_tdest = 4'b0001;       // Target destination = 1
        
        // Record when data is sent
        data_sent_cycle = clock_count;
        
        // Wait until ready is asserted
        wait(axis_in_tready);
        @(posedge clk_noc);
        
        // Clear input signals
        axis_in_tvalid = 0;
        axis_in_tdata = 0;
        axis_in_tlast = 0;
        axis_in_tid = 0;
        axis_in_tdest = 0;
        
        // Wait for data to be received or timeout
        fork
            begin
                // Wait for data on any output port
                wait(send_out[0] || send_out[1] || send_out[2] || send_out[3] || axis_out_tvalid);
                data_received = 1;
                data_received_cycle = clock_count;
                $display("Data received after %0d cycles", data_received_cycle - data_sent_cycle);
                
                // Print which port received the data
                if (axis_out_tvalid)
                    $display("Data received at AXIS output port: 0x%h", axis_out_tdata);
                
                for (int i = 0; i < NUM_PORTS-1; i++) begin
                    if (send_out[i])
                        $display("Data received at router port %0d: 0x%h", i, data_out[i]);
                end
                
                #20;
                $finish;
            end
            begin
                // Timeout after 100 cycles
                repeat(100) @(posedge clk_noc);
                if (!data_received) begin
                    $display("ERROR: No data received within 100 clock cycles");
                    $finish;
                end
            end
        join
    end
    
    // Count clock cycles
    always @(posedge clk_noc) begin
        if (rst_n)
            clock_count <= clock_count + 1;
    end
    
    // Display activity
    always @(posedge clk_noc) begin
        if (axis_in_tvalid && axis_in_tready)
            $display("Time %0t: Sent data 0x%h to dest %0d, id %0d", 
                     $time, axis_in_tdata, axis_in_tdest, axis_in_tid);
            
        if (axis_out_tvalid && axis_out_tready)
            $display("Time %0t: Received data 0x%h at AXIS output", 
                     $time, axis_out_tdata);
        
        for (int i = 0; i < NUM_PORTS-1; i++) begin
            if (send_out[i])
                $display("Time %0t: Port %0d has data 0x%h", 
                         $time, i, data_out[i]);
        end
    end
    
endmodule