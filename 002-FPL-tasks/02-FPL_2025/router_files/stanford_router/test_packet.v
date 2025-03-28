`timescale 1ns / 1ps

module packetizer_depacketizer_tb;

    // Include router constants
    `include "c_functions.v"
    `include "c_constants.v"
    `include "rtr_constants.v"
    `include "vcr_constants.v"
    `include "parameters.v"
    // // Parameters (shared between packetizer and depacketizer)
    // parameter buffer_size = 32;
    // parameter num_message_classes = 2;
    // parameter num_resource_classes = 2;
    // parameter num_vcs_per_class = 1;
    parameter num_routers_per_dim = 3;
    // parameter num_dimensions = 2;
    // parameter num_nodes_per_router = 1;
    parameter connectivity = `CONNECTIVITY_LINE;
    // parameter packet_format = `PACKET_FORMAT_HEAD_TAIL; // Using head-tail format for simplicity
    // parameter flow_ctrl_type = `FLOW_CTRL_TYPE_CREDIT;
    // parameter max_payload_length = 4;
    // parameter min_payload_length = 1;
    // parameter enable_link_pm = 1;
    // parameter flit_data_width = 64;
    // parameter routing_type = `ROUTING_TYPE_PHASED_DOR;
    // parameter dim_order = `DIM_ORDER_ASCENDING;
    // parameter reset_type = `RESET_TYPE_ASYNC;
    
    // Derived parameters
    localparam resource_class_idx_width = clogb(num_resource_classes);
    localparam num_packet_classes = num_message_classes * num_resource_classes;
    localparam num_vcs = num_packet_classes * num_vcs_per_class;
    localparam vc_idx_width = clogb(num_vcs);
    localparam dim_addr_width = clogb(num_routers_per_dim);
    localparam router_addr_width = num_dimensions * dim_addr_width;
    localparam flow_ctrl_width = (flow_ctrl_type == `FLOW_CTRL_TYPE_CREDIT) ? (1 + vc_idx_width) : -1;
    localparam link_ctrl_width = enable_link_pm ? 1 : 0;
    localparam flit_ctrl_width = (packet_format == `PACKET_FORMAT_HEAD_TAIL) ? 
                               (1 + vc_idx_width + 1 + 1) : 
                               (packet_format == `PACKET_FORMAT_TAIL_ONLY) ? 
                               (1 + vc_idx_width + 1) : 
                               (packet_format == `PACKET_FORMAT_EXPLICIT_LENGTH) ? 
                               (1 + vc_idx_width + 1) : -1;
    localparam channel_width = link_ctrl_width + flit_ctrl_width + flit_data_width;
    
    // Clock and reset
    reg clk;
    reg reset;
    
    // Stimulus for packetizer
    reg data_valid_in;
    reg [0:flit_data_width-1] data_in;
    reg [0:router_addr_width-1] dest_address;
    wire data_ready_out;
    
    // Connection between packetizer and depacketizer
    wire [0:channel_width-1] channel_data;
    wire [0:flow_ctrl_width-1] flow_ctrl;
    wire flit_valid_out, flit_head_out, flit_tail_out;
    
    // Outputs from depacketizer
    wire data_valid_out;
    wire [0:flit_data_width-1] data_out;
    reg data_ready_in;  // Controls when depacketizer can output data
    wire packet_in_progress;
    wire error;
    wire pkt_error, depkt_error;

    assign error = pkt_error || depkt_error;
    
    // Test data storage and verification
    reg [0:flit_data_width-1] test_data [0:1]; // Store test data samples
    reg [0:1] data_verified;                   // Flag when data is verified
    integer verification_errors;

    wire [0:router_addr_width-1] source_address;
    assign source_address = 4'b0001;
    
    reg is_last_in;
    // Instantiate packetizer
    packetizer #(
        .buffer_size(buffer_size),
        .num_message_classes(num_message_classes),
        .num_resource_classes(num_resource_classes),
        .num_vcs_per_class(num_vcs_per_class),
        .num_routers_per_dim(num_routers_per_dim),
        .num_dimensions(num_dimensions),
        .num_nodes_per_router(num_nodes_per_router),
        .connectivity(connectivity),
        .packet_format(packet_format),
        .flow_ctrl_type(flow_ctrl_type),
        .max_payload_length(max_payload_length),
        .min_payload_length(min_payload_length),
        .enable_link_pm(enable_link_pm),
        .flit_data_width(flit_data_width),
        .routing_type(routing_type),
        .dim_order(dim_order),
        .reset_type(reset_type)
    ) packetizer_inst (
        .clk(clk),
        .reset(reset),
        .data_valid_in(data_valid_in),
        .is_last_in(is_last_in),
        .data_in(data_in),
        .dest_address(dest_address),
        .flow_ctrl_in(flow_ctrl),
         .source_address(source_address),
        .data_ready_out(data_ready_out),
        .channel(channel_data),
        .error(pkt_error)
    );



    // Instantiate depacketizer
    depacketizer #(
        .buffer_size(buffer_size),
        .num_message_classes(num_message_classes),
        .num_resource_classes(num_resource_classes),
        .num_vcs_per_class(num_vcs_per_class),
        .num_routers_per_dim(num_routers_per_dim),
        .num_dimensions(num_dimensions),
        .num_nodes_per_router(num_nodes_per_router),
        .connectivity(connectivity),
        .packet_format(packet_format),
        .flow_ctrl_type(flow_ctrl_type),
        .max_payload_length(max_payload_length),
        .min_payload_length(min_payload_length),
        .enable_link_pm(enable_link_pm),
        .flit_data_width(flit_data_width),
        .routing_type(routing_type),
        .dim_order(dim_order),
        .reset_type(reset_type)
    ) depacketizer_inst (
        .clk(clk),
        .reset(reset),
        .channel_data_in(channel_data),
        .flow_ctrl_out(flow_ctrl),
        .data_valid_out(data_valid_out),
        .data_out(data_out),
        .data_ready_in(data_ready_in),
        .packet_in_progress(packet_in_progress),
        .error(depkt_error)
    );
    
    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100 MHz clock
    end
    integer current_sample = 0;

    // Test sequence
    initial begin
        // Initialize variables
        reset = 1;
        data_valid_in = 0;
        is_last_in = 0;
        data_in = 0;
        dest_address = 0;
        data_ready_in = 1; // Always ready to receive data
        verification_errors = 0;
        data_verified = 2'b00;
        current_sample = 0;
        // Create test data patterns
        test_data[0] = {32'hDEAD_BEEF, 32'h0123_4567};
        test_data[1] = {32'hCAFE_BABE, 32'h89AB_CDEF};
        
        // Apply reset
        #20;
        reset = 0;
        #20;
        
        // Display test start
        $display("Starting packetizer-depacketizer loopback test at time %t", $time);
        
        // Send first data sample
        @(posedge clk);
        dest_address = 4'b0101; // Router at (3,2)
        data_in = test_data[0];
        data_valid_in = 1;
        
        // Wait for packetizer to be ready
        // @(posedge clk);
        wait(data_ready_out);
        
        // Maintain data valid for one more cycle to ensure it's captured
        // @(posedge clk);
        data_valid_in = 0;
        is_last_in = 1;
        
        // Wait for depacketizer to receive and process data
        // wait(data_valid_out);
        @(posedge clk);
        is_last_in = 0;
        
        //         // Wait for first packet to complete processing
        wait(!packet_in_progress);
        #20; 
        #10 ;// Give some additional settling time
        current_sample = 1; // Reset to verify second packet from the beginning
        // Send second data sample
        $display("Sending second data sample at time %t", $time);
        @(posedge clk);
        dest_address = 4'b0101; // Router at (1,4)
        data_in = test_data[1];
        data_valid_in = 1;
        
        // Wait for packetizer to be ready
        @(posedge clk);
        wait(data_ready_out);
        
        // Maintain data valid for one more cycle
        @(posedge clk);
        data_valid_in = 0;
        
        // Wait for depacketizer to receive and process all data
        #100;
        
        // Check results
        if (verification_errors == 0) begin
            $display("TEST PASSED: All data samples correctly transmitted and received!");
        end else begin
            $display("TEST FAILED: %d verification errors detected!", verification_errors);
        end
        
        // End simulation
        #50;
        $finish;
    end
    
    // Monitor depacketizer output and verify data
    always @(posedge clk) begin
        if (data_valid_out && data_ready_in) begin
            $display("Time %t: Received data: %h", $time, data_out);
            
            // Compare with expected test data
            if (current_sample < 2) begin
                if (data_out == test_data[current_sample]) begin
                    $display("Data sample %0d verification PASSED", current_sample);
                    data_verified[current_sample] = 1;
                end else begin
                    $display("Data sample %0d verification FAILED: Expected %h, Got %h", 
                             current_sample, test_data[current_sample], data_out);
                    verification_errors = verification_errors + 1;
                end
                
            end
        end
    end
    
    // Monitor for errors
    always @(posedge clk) begin
        if (error) begin
            $display("ERROR: Depacketizer reported error at time %t", $time);
            verification_errors = verification_errors + 1;
        end
    end

endmodule