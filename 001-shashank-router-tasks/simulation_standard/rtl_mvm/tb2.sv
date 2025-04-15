`timescale 1ns/1ps

module  ();

    // Parameters matching DUT
    parameter DATAW = 32;
    parameter BYTEW = 8;
    parameter IDW = 32;
    parameter DESTW = 6;
    parameter USERW = 32;
    parameter IPRECISION = 8;
    parameter OPRECISION = 32;
    parameter LANES = 4;
    parameter DPES = 4;
    parameter NODES = 16;
    parameter NODESW = 4;
    parameter RFDEPTH = 64;
    parameter RFADDRW = 6;
    parameter INSTW = 32;
    parameter INSTD = 64;
    parameter INSTADDRW = 6;
    parameter AXIS_OPS = 4;
    parameter AXIS_OPSW = 2;
    parameter FIFOD = 64;
    parameter USE_RELU = 1;
    parameter DATAPATH_DELAY = 10;
    parameter CLK_PERIOD = 10;

    // Clock and Reset
    reg clk;
    reg rst_n;

    // DUT Interfaces
    reg                  axis_s_tvalid;
    wire                 axis_s_tready;
    reg  [DATAW-1:0]     axis_s_tdata;
    reg                  axis_s_tlast;
    reg  [IDW-1:0]       axis_s_tid;
    reg  [USERW-1:0]     axis_s_tuser;
    reg  [DESTW-1:0]     axis_s_tdest;

    wire                 axis_m_tvalid;
    reg                  axis_m_tready;
    wire [DATAW-1:0]     axis_m_tdata;
    wire                 axis_m_tlast;
    wire [IDW-1:0]       axis_m_tid;
    wire [USERW-1:0]     axis_m_tuser;
    wire [DESTW-1:0]     axis_m_tdest;

    localparam WEIGHT_OP = 3'b011;
    localparam INPUT_OP  = 3'b010;
    localparam INST_OP   = 3'b001;
    
    // Modified Test Control
    integer test_count = 0;
    integer error_count = 0;
    integer warning_count = 0;
    realtime test_start_time;
    realtime max_test_duration = 1ms;
    // Instantiate DUT
    mvm_simple_crossbar #(
        .DATAW(DATAW),
        .BYTEW(BYTEW),
        .IDW(IDW),
        .DESTW(DESTW),
        .USERW(USERW),
        .IPRECISION(IPRECISION),
        .OPRECISION(OPRECISION),
        .LANES(LANES),
        .DPES(DPES),
        .NODES(NODES),
        .NODESW(NODESW),
        .RFDEPTH(RFDEPTH),
        .RFADDRW(RFADDRW),
        .INSTW(INSTW),
        .INSTD(INSTD),
        .INSTADDRW(INSTADDRW),
        .AXIS_OPS(AXIS_OPS),
        .AXIS_OPSW(AXIS_OPSW),
        .FIFOD(FIFOD),
        .USE_RELU(USE_RELU),
        .DATAPATH_DELAY(DATAPATH_DELAY))
    dut (
        .CLK(clk),
        .RST_N(rst_n),
        .AXIS_S_TVALID(axis_s_tvalid),
        .AXIS_S_TREADY(axis_s_tready),
        .AXIS_S_TDATA(axis_s_tdata),
        .AXIS_S_TLAST(axis_s_tlast),
        .AXIS_S_TID(axis_s_tid),
        .AXIS_S_TUSER(axis_s_tuser),
        .AXIS_S_TDEST(axis_s_tdest),
        .AXIS_M_TVALID(axis_m_tvalid),
        .AXIS_M_TREADY(axis_m_tready),
        .AXIS_M_TDATA(axis_m_tdata),
        .AXIS_M_TLAST(axis_m_tlast),
        .AXIS_M_TID(axis_m_tid),
        .AXIS_M_TUSER(axis_m_tuser),
        .AXIS_M_TDEST(axis_m_tdest)
    );

    // Clock generation
    always #(CLK_PERIOD/2) clk = ~clk;

    // Test tasks
    task send_transaction;
        input [DATAW-1:0] data;
        input [DESTW-1:0] dest;
        input [IDW-1:0]   id;
        input [USERW-1:0] user;
        input             last;
        integer           attempt;
        begin
            attempt = 0;
            axis_s_tvalid = 1'b1;
            axis_s_tdata  = data;
            axis_s_tdest  = dest;
            axis_s_tid    = id;
            axis_s_tuser  = user;
            axis_s_tlast  = last;

            while (!axis_s_tready && attempt < 100) begin
                @(posedge clk);
                attempt++;
                if (attempt >= 100) begin
                    $display("Error: Timeout waiting for tready");
                    error_count++;
                    disable send_transaction;
                end
            end
            
            @(negedge clk);
            axis_s_tvalid = 1'b0;
            axis_s_tlast  = 1'b0;
            test_count++;
        end
    endtask

    task send_instruction;
        input [DATAW-1:0] instr_data;
        input [DESTW-1:0] dest;
        begin
            // Set instruction operation in tuser
            send_transaction(
                .data(instr_data),
                .dest(dest),
                .id(0),
                .user({WEIGHT_OP, {(USERW-3){1'b0}}}),
                .last(1'b1)
            );
        end
    endtask

    task send_weight;
        input [DATAW-1:0] weight_data;
        input [DESTW-1:0] dest;
        input [RFADDRW-1:0] rf_addr;
        begin
            // Set weight operation in tuser
            send_transaction(
                .data(weight_data),
                .dest(dest),
                .id(0),
                .user({WEIGHT_OP, rf_addr, {(USERW-3-RFADDRW){1'b0}}}),
                .last(1'b1)
            );
        end
    endtask

    task send_input_vector;
        input [DATAW-1:0] vector_data;
        input [DESTW-1:0] dest;
        begin
            // Set input operation in tuser
            send_transaction(
                .data(vector_data),
                .dest(dest),
                .id(0),
                .user({INPUT_OP, {(USERW-3){1'b0}}}),
                .last(1'b1)
            );
        end
    endtask

    // Improved output checking with protocol verification
    task check_output;
        input [DATAW-1:0] expected_data;
        input [DESTW-1:0] expected_dest;
        input [IDW-1:0]   expected_id;
        input [USERW-1:0] expected_user;
        input integer     max_latency;
        begin
            fork
                begin : timeout_block
                    #(max_latency * CLK_PERIOD);
                    $display("Error: Timeout waiting for output");
                    error_count++;
                    disable check_output;
                end
                
                begin : check_block
                    while (1) begin
                        @(posedge clk);
                        if (axis_m_tvalid && axis_m_tready) begin
                            // Check protocol signals
                            if (axis_m_tvalid !== 1'b1) begin
                                $display("Error: tvalid not asserted with tready");
                                error_count++;
                            end
                            
                            if (axis_m_tdata !== expected_data) begin
                                $display("Data mismatch! Expected: %h, Got: %h", 
                                        expected_data, axis_m_tdata);
                                error_count++;
                            end
                            
                            if (axis_m_tdest !== expected_dest) begin
                                $display("Dest mismatch! Expected: %h, Got: %h", 
                                        expected_dest, axis_m_tdest);
                                error_count++;
                            end
                            
                            // Add other checks as needed...
                            
                            disable timeout_block;
                            break;
                        end
                    end
                end
            join
        end
    endtask

    // Main test sequence with proper initialization
    initial begin
        // [Keep initialization...]
        
        // Test 0: Reset sequence
        $display("Test 0: Reset sequence");
        #(CLK_PERIOD*2);
        if (axis_s_tready !== 1'b0) begin
            $display("Error: tready not deasserted during reset");
            error_count++;
        end
        rst_n = 1;
        #(CLK_PERIOD*2);
        
        // Test 1: Configure MVMs
        $display("Test 1: MVM Configuration");
        // Send instructions to both MVMs
        send_instruction(32'h0000_0001, 4'b0001); // Configure MVM0
        send_instruction(32'h0000_0001, 4'b0010); // Configure MVM1
        #(CLK_PERIOD*10);
        
        // Test 2: Load weights
        $display("Test 2: Weight Loading");
        for (int i=0; i<16; i++) begin
            send_weight($urandom(), 4'b0001, i);  // MVM0 weights
            send_weight($urandom(), 4'b0010, i);  // MVM1 weights
        end
        #(CLK_PERIOD*20);
        
        // Test 3: Simple vector processing
        $display("Test 3: Vector Processing");
        fork
            begin
                // Send input to MVM0
                send_input_vector(32'h12345678, 4'b0001);
                check_output(32'h12345678, 4'b0011, 0, {INPUT_OP,29'b0}, 50);
            end
            begin
                // Send input to MVM1
                send_input_vector(32'h9ABCDEF0, 4'b0010);
                check_output(32'h9ABCDEF0, 4'b0011, 0, {INPUT_OP,29'b0}, 50);
            end
        join
        
        // Test 4: Backpressure test
        $display("Test 4: Backpressure Handling");
        axis_m_tready = 0;
        repeat(5) send_input_vector($urandom(), 4'b0001);
        #(CLK_PERIOD*20);
        axis_m_tready = 1;
        #(CLK_PERIOD*50); // Allow time for drain
        
        // [Add more tests as needed...]

        // Final report
        $display("\nTest Complete");
        $display("Tests executed: %0d", test_count);
        $display("Errors detected: %0d", error_count);
        $display("Warnings: %0d", warning_count);
        $finish;
    end

    // Improved monitoring
    always @(posedge clk) begin
        if (axis_s_tvalid && axis_s_tready) begin
            $display("[%0t] Input Transaction:", $time);
            $display("  DATA: %h", axis_s_tdata);
            $display("  DEST: %h", axis_s_tdest);
            $display("  USER: %h", axis_s_tuser);
        end
        
        if (axis_m_tvalid && axis_m_tready) begin
            $display("[%0t] Output Transaction:", $time);
            $display("  DATA: %h", axis_m_tdata);
            $display("  DEST: %h", axis_m_tdest);
            $display("  USER: %h", axis_m_tuser);
        end
    end
    // Simulation timeout
    initial begin
        #100000;
        $display("Simulation timeout!");
        $finish;
    end

endmodule