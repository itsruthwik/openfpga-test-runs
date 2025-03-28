`timescale 1ns / 1ps

module mesh_testbench();
    // Include router constants
    `include "c_functions.v"
    `include "c_constants.v"
    `include "rtr_constants.v"
    `include "vcr_constants.v"
    `include "parameters.v"
    
    // Mesh parameters
    parameter CLOCK_PERIOD = 10;
    parameter RESET_CYCLES = 5;
    parameter MESH_SIZE = 3;          // 3×3 mesh
    parameter NUM_ROUTERS = MESH_SIZE * MESH_SIZE;
    
    // AXI-Stream parameters
    parameter AXIS_TDATA_WIDTH = 32;
    parameter AXIS_TDEST_WIDTH = 4;
    parameter AXIS_TID_WIDTH = 4;
    parameter AXIS_TUSER_WIDTH = 4;
    
    // Derived router parameters
    localparam NUM_PORTS = 5;  // 4 directions + local port
    localparam vc_idx_width = 2;
    localparam flow_ctrl_width = (1 + vc_idx_width);
    localparam link_ctrl_width = 1;
    localparam flit_ctrl_width = (1 + vc_idx_width + 1 + 1);
    localparam channel_width = link_ctrl_width + flit_ctrl_width + flit_data_width;
    
    // Clock and reset
    reg clk;
    reg reset;
    
    // Arrays for all router signals using generate
    wire [0:channel_width-1] channel_router_op [0:NUM_ROUTERS-1][0:NUM_PORTS-1];
    wire [0:channel_width-1] channel_router_ip [0:NUM_ROUTERS-1][0:NUM_PORTS-1];
    wire [0:flow_ctrl_width-1] flow_ctrl_router_op [0:NUM_ROUTERS-1][0:NUM_PORTS-1];
    wire [0:flow_ctrl_width-1] flow_ctrl_router_ip [0:NUM_ROUTERS-1][0:NUM_PORTS-1];
    
    // AXI interface signals
    wire                        axis_tvalid [0:NUM_ROUTERS-1];
    wire                        axis_tready [0:NUM_ROUTERS-1];
    wire [0:AXIS_TDATA_WIDTH-1] axis_tdata  [0:NUM_ROUTERS-1];
    wire                        axis_tlast  [0:NUM_ROUTERS-1];
    wire [0:AXIS_TDEST_WIDTH-1] axis_tdest  [0:NUM_ROUTERS-1];
    wire [0:AXIS_TID_WIDTH-1]   axis_tid    [0:NUM_ROUTERS-1];
    wire [0:AXIS_TUSER_WIDTH-1] axis_tuser  [0:NUM_ROUTERS-1];
    
    // RX AXI signals
    wire                        m_axis_tvalid [0:NUM_ROUTERS-1];
    wire                        m_axis_tready [0:NUM_ROUTERS-1];
    wire [0:AXIS_TDATA_WIDTH-1] m_axis_tdata  [0:NUM_ROUTERS-1];
    wire                        m_axis_tlast  [0:NUM_ROUTERS-1];
    wire [0:AXIS_TDEST_WIDTH-1] m_axis_tdest  [0:NUM_ROUTERS-1];
    wire [0:AXIS_TID_WIDTH-1]   m_axis_tid    [0:NUM_ROUTERS-1];
    wire [0:AXIS_TUSER_WIDTH-1] m_axis_tuser  [0:NUM_ROUTERS-1];
    
    // Sender control signals
    reg [31:0] data_to_send [0:NUM_ROUTERS-1];
    reg [3:0]  packet_length [0:NUM_ROUTERS-1];
    reg [3:0]  dest_router_addr [0:NUM_ROUTERS-1];
    reg [3:0]  my_router_addr [0:NUM_ROUTERS-1];
    reg        send_packet [0:NUM_ROUTERS-1];
    wire       packet_done [0:NUM_ROUTERS-1];
    
    // Receiver status signals
    wire        packet_received [0:NUM_ROUTERS-1];
    wire [31:0] received_data [0:NUM_ROUTERS-1];
    wire [3:0]  received_length [0:NUM_ROUTERS-1];
    wire [3:0]  received_dest_addr [0:NUM_ROUTERS-1];
    wire [3:0]  received_src_addr [0:NUM_ROUTERS-1];
    
    // Credit tracking arrays
    reg [0:31] credits_available_per_vc [0:NUM_ROUTERS-1][0:3]; 
    reg [0:31] flits_sent_per_vc [0:NUM_ROUTERS-1][0:3]; 
    reg [0:31] credits_returned_per_vc [0:NUM_ROUTERS-1][0:3];
    
    // Router error signals
    wire router_error [0:NUM_ROUTERS-1];
    
    // Generate variables
    genvar x, y, i;
    integer r, v, p;
    
    // Clock and reset
    initial begin
        clk = 0;
        forever #(CLOCK_PERIOD/2) clk = ~clk;
    end
    
    initial begin
        reset = 1;
        repeat(RESET_CYCLES) @(posedge clk);
        reset = 0;
    end
    
    // // Initialize credit counters and router addresses
    // initial begin
    //     for (r = 0; r < NUM_ROUTERS; r = r + 1) begin
    //         // Set router address
    //         my_router_addr[r] = r;
            
    //         // Initialize credit counters
    //         for (v = 0; v < 4; v = v + 1) begin
    //             credits_available_per_vc[r][v] = buffer_size;
    //             flits_sent_per_vc[r][v] = 0;
    //             credits_returned_per_vc[r][v] = 0;
    //         end
            
    //         // Initialize ready signals
    //         m_axis_tready[r] = 1'b1;  // Always ready to receive
    //     end
    // end
    
    // GENERATE BLOCKS FOR COMPONENT INSTANTIATION
    // =========================================
    
    // Generate mesh of routers with AXI interfaces
    generate
        // Loop through each position in the mesh
        for (x = 0; x < MESH_SIZE; x = x + 1) begin : row
            for (y = 0; y < MESH_SIZE; y = y + 1) begin : col
                // Current router index
                localparam r = x * MESH_SIZE + y;
                
                // Router address is its index
                wire [3:0] router_addr = r[3:0];
                
                // Instantiate AXI sender for this router
                axi_stream_sender #(
                    .AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),
                    .AXIS_TDEST_WIDTH(AXIS_TDEST_WIDTH),
                    .AXIS_TID_WIDTH(AXIS_TID_WIDTH),
                    .AXIS_TUSER_WIDTH(AXIS_TUSER_WIDTH)
                ) sender (
                    .clk(clk),
                    .reset(reset),
                    .data_to_send(data_to_send[r]),
                    .packet_length(packet_length[r]),
                    .dest_router_addr(dest_router_addr[r]),
                    .my_router_addr(my_router_addr[r]),
                    .send_packet(send_packet[r]),
                    .packet_done(packet_done[r]),
                    
                    .m_axis_tvalid(axis_tvalid[r]),
                    .m_axis_tready(axis_tready[r]),
                    .m_axis_tdata(axis_tdata[r]),
                    .m_axis_tlast(axis_tlast[r]),
                    .m_axis_tdest(axis_tdest[r]),
                    .m_axis_tid(axis_tid[r]),
                    .m_axis_tuser(axis_tuser[r])
                );
                
                // Instantiate AXI interface for this router
                router_axis_local #(
                    .AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),
                    .AXIS_TDEST_WIDTH(AXIS_TDEST_WIDTH),
                    .AXIS_TID_WIDTH(AXIS_TID_WIDTH),
                    .AXIS_TUSER_WIDTH(AXIS_TUSER_WIDTH)
                ) router_if (
                    .clk(clk),
                    .reset(reset),
                    
                    // AXI-Stream slave interface (input to router)
                    .s_axis_tvalid(axis_tvalid[r]),
                    .s_axis_tready(axis_tready[r]),
                    .s_axis_tdata(axis_tdata[r]),
                    .s_axis_tlast(axis_tlast[r]),
                    .s_axis_tdest(axis_tdest[r]),
                    .s_axis_tid(axis_tid[r]),
                    .s_axis_tuser(axis_tuser[r]),
                    
                    // AXI-Stream master interface (output from router)
                    .m_axis_tvalid(m_axis_tvalid[r]),
                    .m_axis_tready(m_axis_tready[r]),
                    .m_axis_tdata(m_axis_tdata[r]),
                    .m_axis_tlast(m_axis_tlast[r]),
                    .m_axis_tdest(m_axis_tdest[r]),
                    .m_axis_tid(m_axis_tid[r]),
                    .m_axis_tuser(m_axis_tuser[r]),
                    
                    // Router interface
                    .channel_to_router(channel_router_ip[r][4]),  // Local port
                    .channel_from_router(channel_router_op[r][4]), // Local port
                    .flow_ctrl_to_router(flow_ctrl_router_op[r][4]),
                    .flow_ctrl_from_router(flow_ctrl_router_ip[r][4])
                );
                
                // Instantiate AXI receiver for this router
                axi_stream_receiver #(
                    .AXIS_TDATA_WIDTH(AXIS_TDATA_WIDTH),
                    .AXIS_TDEST_WIDTH(AXIS_TDEST_WIDTH),
                    .AXIS_TID_WIDTH(AXIS_TID_WIDTH),
                    .AXIS_TUSER_WIDTH(AXIS_TUSER_WIDTH)
                ) receiver (
                    .clk(clk),
                    .reset(reset),
                    
                    .packet_received(packet_received[r]),
                    .received_data(received_data[r]),
                    .received_length(received_length[r]),
                    .received_dest_addr(received_dest_addr[r]),
                    .received_src_addr(received_src_addr[r]),
                    
                    .s_axis_tvalid(m_axis_tvalid[r]),
                    .s_axis_tready(m_axis_tready[r]),
                    .s_axis_tdata(m_axis_tdata[r]),
                    .s_axis_tlast(m_axis_tlast[r]),
                    .s_axis_tdest(m_axis_tdest[r]),
                    .s_axis_tid(m_axis_tid[r]),
                    .s_axis_tuser(m_axis_tuser[r])
                );
                
                // Instantiate router
                router_wrap router (
                    .clk(clk),
                    .reset(reset),
                    .router_address(router_addr),
                    .channel_in_ip({
                        channel_router_ip[r][0], 
                        channel_router_ip[r][1], 
                        channel_router_ip[r][2], 
                        channel_router_ip[r][3], 
                        channel_router_ip[r][4]
                    }),
                    .flow_ctrl_out_ip({
                        flow_ctrl_router_ip[r][0], 
                        flow_ctrl_router_ip[r][1], 
                        flow_ctrl_router_ip[r][2], 
                        flow_ctrl_router_ip[r][3], 
                        flow_ctrl_router_ip[r][4]
                    }),
                    .channel_out_op({
                        channel_router_op[r][0], 
                        channel_router_op[r][1], 
                        channel_router_op[r][2], 
                        channel_router_op[r][3], 
                        channel_router_op[r][4]
                    }),
                    .flow_ctrl_in_op({
                        flow_ctrl_router_op[r][0], 
                        flow_ctrl_router_op[r][1], 
                        flow_ctrl_router_op[r][2], 
                        flow_ctrl_router_op[r][3], 
                        flow_ctrl_router_op[r][4]
                    }),
                    .error(router_error[r])
                );
            end
        end
    endgenerate
always @(posedge clk) begin
    if (axis_tvalid[0] && axis_tready[0]) begin
        $display("Time %0t: AXI TX: Router 0 sending flit: data=%h, last=%b",
                $time, axis_tdata[0], axis_tlast[0]);
    end
    
    if (m_axis_tvalid[3] && m_axis_tready[3]) begin
        $display("Time %0t: AXI RX: Router 3 receiving flit: data=%h, last=%b",
                $time, m_axis_tdata[3], m_axis_tlast[3]);
    end
end
// // Add to test_pkt.v to monitor AXI handshaking on Router 0
// always @(posedge clk) begin
//     $display("Time %0t: Router 0 AXI handshake: valid=%b ready=%b",
//              $time, axis_tvalid[0], axis_tready[0]);
// end

// Minimal AXI handshaking monitor - only print when something interesting happens
always @(posedge clk) begin
    // Only display when handshaking occurs or ready drops during valid
    if ((axis_tvalid[0] && axis_tready[0]) || 
        (axis_tvalid[0] && !axis_tready[0] && $past(axis_tready[0]))) begin
        $display("Time %0t: Router 0 AXI handshake: valid=%b ready=%b %s",
                 $time, axis_tvalid[0], axis_tready[0],
                 (axis_tvalid[0] && axis_tready[0]) ? "- TRANSFER" : "- STALLED");
    end
end
// Add to your testbench
always @(posedge clk) begin
    if (router_error[0] || router_error[3]) begin
        $display("Time %0t: Router error! R0=%b, R3=%b",
                $time, router_error[0], router_error[3]);
    end
end
    // Generate interconnections between routers in mesh topology
    generate
        for (x = 0; x < MESH_SIZE; x = x + 1) begin : mesh_x
            for (y = 0; y < MESH_SIZE; y = y + 1) begin : mesh_y
                // Current router index
                localparam r = x * MESH_SIZE + y;
                
                // NORTH connections (if not top row)
                if (x > 0) begin
                    localparam north = (x-1) * MESH_SIZE + y;
                    assign channel_router_ip[r][0] = channel_router_op[north][2]; // North's South → This North
                    assign flow_ctrl_router_op[r][0] = flow_ctrl_router_ip[north][2];
                end
                
                // EAST connections (if not rightmost column)
                if (y < MESH_SIZE-1) begin
                    localparam east = x * MESH_SIZE + (y+1);
                    assign channel_router_ip[r][1] = channel_router_op[east][3]; // East's West → This East
                    assign flow_ctrl_router_op[r][1] = flow_ctrl_router_ip[east][3];
                end
                
                // SOUTH connections (if not bottom row)
                if (x < MESH_SIZE-1) begin
                    localparam south = (x+1) * MESH_SIZE + y;
                    assign channel_router_ip[r][2] = channel_router_op[south][0]; // South's North → This South
                    assign flow_ctrl_router_op[r][2] = flow_ctrl_router_ip[south][0];
                end
                
                // WEST connections (if not leftmost column)
                if (y > 0) begin
                    localparam west = x * MESH_SIZE + (y-1);
                    assign channel_router_ip[r][3] = channel_router_op[west][1]; // West's East → This West
                    assign flow_ctrl_router_op[r][3] = flow_ctrl_router_ip[west][1];
                end
            end
        end
    endgenerate
    
// Add to track flits through the router network
generate
    for (i = 0; i < NUM_ROUTERS; i = i + 1) begin : router_flit_tracker
        // Track flits entering each router from all ports
        for (p = 0; p < NUM_PORTS; p = p + 1) begin : port_tracker
            always @(posedge clk) begin
                if (!reset && channel_router_ip[i][p][link_ctrl_width]) begin
                    $display("Time %0t: FLIT ENTERING: Router %0d, Port %0d (VC=%0d, HEAD=%b, TAIL=%b)",
                            $time, i, p, 
                            channel_router_ip[i][p][link_ctrl_width+1 +: vc_idx_width],
                            channel_router_ip[i][p][link_ctrl_width+1+vc_idx_width],
                            channel_router_ip[i][p][link_ctrl_width+1+vc_idx_width+1]);
                end
                
                // Also track flits leaving each router
                if (!reset && channel_router_op[i][p][link_ctrl_width]) begin
                    $display("Time %0t: FLIT LEAVING: Router %0d, Port %0d (VC=%0d, HEAD=%b, TAIL=%b)",
                            $time, i, p, 
                            channel_router_op[i][p][link_ctrl_width+1 +: vc_idx_width],
                            channel_router_op[i][p][link_ctrl_width+1+vc_idx_width],
                            channel_router_op[i][p][link_ctrl_width+1+vc_idx_width+1]);
                end
            end
        end
    end
endgenerate

// Modify the Router adapter debug statement to show router ID
always @(posedge clk) begin
    if (s_axis_tvalid && s_axis_tready) begin
        $display("Time %0t: DEBUG - Router %0d adapter accepting flit: last=%b, maintain_ready=%b", 
                 $time, router_address, s_axis_tlast, maintain_ready);
    end
end
    // Generate credit tracking monitors for each router
    generate
        for (i = 0; i < NUM_ROUTERS; i = i + 1) begin : credit_tracking
                reg [0:vc_idx_width-1] credit_vc;
                reg [0:vc_idx_width-1] vc;
            always @(posedge clk) begin
                // Track credits returning from router

            
                if (flow_ctrl_router_ip[i][4][0]) begin
                    credit_vc = flow_ctrl_router_ip[i][4][1 +: vc_idx_width];
                    credits_available_per_vc[i][credit_vc] = credits_available_per_vc[i][credit_vc] + 1;
                    credits_returned_per_vc[i][credit_vc] = credits_returned_per_vc[i][credit_vc] + 1;
                
                    $display("Time %0t: Router %0d, VC %0d - Credit returned. Available=%0d",
                         $time, i, credit_vc, credits_available_per_vc[i][credit_vc]);                
                end
                
                // Track flits being sent to router
                if (!reset && channel_router_ip[i][4][link_ctrl_width]) begin
                    vc = channel_router_ip[i][4][link_ctrl_width+1 +: vc_idx_width];
                    
                    if (credits_available_per_vc[i][vc] > 0) begin
                        credits_available_per_vc[i][vc] = credits_available_per_vc[i][vc] - 1;
                        flits_sent_per_vc[i][vc] = flits_sent_per_vc[i][vc] + 1;
                  
                        $display("Time %0t: Router %0d, VC %0d - Flit sent. Remaining=%0d, Total sent=%0d",
                             $time, i, vc, credits_available_per_vc[i][vc], flits_sent_per_vc[i][vc]);
                    end else begin
                    // Display when credit starvation occurs
                    $display("Time %0t: Router %0d, VC %0d - BLOCKED: No credits available!",
                             $time, i, vc);
                  
                    end
                end
            end
        end
    endgenerate
reg [31:0] display_counter;
initial display_counter = 0;

// always @(posedge clk) begin
//     display_counter <= display_counter + 1;
    
//     // Display credit status every 1000 cycles
//     if (display_counter % 1000 == 0) begin
//         $display("\n*** Credit Status at time %0t ***", $time);
//         for (r = 0; r < NUM_ROUTERS; r = r + 1) begin
//             $display("Router %0d:", r);
//             for (v = 0; v < 4; v = v + 1) begin
//                 $display("  VC=%0d: Sent=%0d, Credits Returned=%0d, Available=%0d",
//                          v, flits_sent_per_vc[r][v], credits_returned_per_vc[r][v],
//                          credits_available_per_vc[r][v]);
//             end
//         end
//     end
// end
    
// // Monitor packet transmission/reception
// always @(posedge clk) begin
//     for (r = 0; r < NUM_ROUTERS; r = r + 1) begin
//         // Monitor sent packets
//         if (packet_done[r]) begin
//             $display("Time %0t: Router %0d sent packet to Router %0d. Data=0x%h, Length=%0d",
//                      $time, r, dest_router_addr[r], data_to_send[r], packet_length[r]);
//         end
        
//         // Monitor received packets
//         if (packet_received[r]) begin
//             $display("Time %0t: Router %0d received packet from Router %0d. Data=0x%h, Length=%0d",
//                      $time, r, received_src_addr[r], received_data[r], received_length[r]);
//         end
//     end
// end

// Monitor router errors
always @(posedge clk) begin
    for (r = 0; r < NUM_ROUTERS; r = r + 1) begin
        if (router_error[r]) begin
            $display("Time %0t: ERROR detected in Router %0d!", $time, r);
        end
    end
end

// Initialize credit counters and router addresses
initial begin
    // Initialize all arrays
    for (r = 0; r < NUM_ROUTERS; r = r + 1) begin
        // Set router address
        my_router_addr[r] = r;
        
        // Initialize credit counters (crucial for packet flow)
        for (v = 0; v < 4; v = v + 1) begin
            credits_available_per_vc[r][v] = buffer_size;  // Start with full credits
            flits_sent_per_vc[r][v] = 0;
            credits_returned_per_vc[r][v] = 0;
        end
    end
    
    $display("*** Credits initialized: %0d credits per VC ***", buffer_size);
end

// Traffic generation - send one packet from router 0 to router 3
initial begin
    // Initialize router addresses
    for (r = 0; r < NUM_ROUTERS; r = r + 1) begin
        my_router_addr[r] = r;
    end
    
    // Initialize all send signals to 0
    for (r = 0; r < NUM_ROUTERS; r = r + 1) begin
        send_packet[r] = 1'b0;
    end
    
    // Wait for reset to complete
    @(negedge reset);
    repeat(20) @(posedge clk);
    
    // Send packet from Router 0 to Router 3
    $display("\n*** Sending test packet from Router 0 to Router 3 ***");
    data_to_send[0] = 32'hA5A5_A5A5;  // Test pattern
    packet_length[0] = 3;             // 3-flit packet
    dest_router_addr[0] = 4'd3;       // Send to Router 3
    
    // Send the packet (pulse the send signal)
    send_packet[0] = 1'b1;
    @(posedge clk);
    send_packet[0] = 1'b0;
    
    // Wait for completion or timeout
    fork
        begin
            // Wait for reception at router 3
            wait(packet_received[3]);
            $display("\n*** SUCCESS: Packet received at Router 3 from Router 0 ***");
            $display("Received data=0x%h, length=%0d", received_data[3], received_length[3]);
        end
        
        begin
            // Timeout after 10,000 cycles
            repeat(10000) @(posedge clk);
            $display("\n*** TIMEOUT: Packet not received within timeout period ***");
        end
    join
    
    // Let simulation continue for a while to see any remaining activity
    repeat(1000) @(posedge clk);
    
    // End simulation
    $display("\n*** Test complete ***");
    $finish;
end
    // Traffic generation and test code
    // (Rest of the testbench would be similar to the original)
endmodule