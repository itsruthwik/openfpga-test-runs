`timescale 1ns / 1ps

module depacketizer (
clk ,reset ,channel_data_in ,flow_ctrl_out ,data_valid_out ,data_out, source_address_out ,data_ready_in ,packet_in_progress ,error
);

    // Constants
    `include "c_functions.v"
    `include "c_constants.v"
    `include "rtr_constants.v"
    `include "vcr_constants.v"
    
    // Parameters (should match packetizer settings)
    parameter buffer_size = 32;
    parameter num_message_classes = 2;
    parameter num_resource_classes = 2;
    parameter num_vcs_per_class = 1;
    parameter num_routers_per_dim = 4;
    parameter num_dimensions = 2;
    parameter num_nodes_per_router = 1;
    parameter connectivity = `CONNECTIVITY_LINE;
    parameter packet_format = `PACKET_FORMAT_HEAD_TAIL;
    parameter flow_ctrl_type = `FLOW_CTRL_TYPE_CREDIT;
    parameter max_payload_length = 4;
    parameter min_payload_length = 1;
    parameter enable_link_pm = 1;
    parameter flit_data_width = 64;
    parameter routing_type = `ROUTING_TYPE_PHASED_DOR;
    parameter dim_order = `DIM_ORDER_ASCENDING;
    parameter reset_type = `RESET_TYPE_ASYNC;
    
    // Derived parameters (match packetizer)
    localparam resource_class_idx_width = clogb(num_resource_classes);
    localparam num_packet_classes = num_message_classes * num_resource_classes;
    localparam num_vcs = num_packet_classes * num_vcs_per_class;
    localparam vc_idx_width = clogb(num_vcs);
    localparam dim_addr_width = clogb(num_routers_per_dim);
    localparam router_addr_width = num_dimensions * dim_addr_width;
    localparam node_addr_width = clogb(num_nodes_per_router);
    localparam addr_width = router_addr_width + node_addr_width;
    localparam num_neighbors_per_dim = ((connectivity == `CONNECTIVITY_LINE) || 
                                       (connectivity == `CONNECTIVITY_RING)) ? 
                                       2 : (connectivity == `CONNECTIVITY_FULL) ? 
                                       (num_routers_per_dim - 1) : -1;
    localparam num_ports = num_dimensions * num_neighbors_per_dim + num_nodes_per_router;
    localparam port_idx_width = clogb(num_ports);
    localparam flow_ctrl_width = (flow_ctrl_type == `FLOW_CTRL_TYPE_CREDIT) ? 
                                (1 + vc_idx_width) : -1;
    localparam payload_length_width = clogb(max_payload_length - min_payload_length + 1);
    localparam lar_info_width = port_idx_width + resource_class_idx_width;
    localparam dest_info_width = (routing_type == `ROUTING_TYPE_PHASED_DOR) ? 
                                (num_resource_classes * router_addr_width + node_addr_width) : -1;
    localparam route_info_width = lar_info_width + dest_info_width;
    localparam link_ctrl_width = enable_link_pm ? 1 : 0;
    localparam flit_ctrl_width = (packet_format == `PACKET_FORMAT_HEAD_TAIL) ? 
                                (1 + vc_idx_width + 1 + 1) : 
                                (packet_format == `PACKET_FORMAT_TAIL_ONLY) ? 
                                (1 + vc_idx_width + 1) : 
                                (packet_format == `PACKET_FORMAT_EXPLICIT_LENGTH) ? 
                                (1 + vc_idx_width + 1) : -1;
    localparam channel_width = link_ctrl_width + flit_ctrl_width + flit_data_width;
    localparam header_info_width = (packet_format == `PACKET_FORMAT_HEAD_TAIL) ? 
                                  route_info_width : 
                                  (packet_format == `PACKET_FORMAT_TAIL_ONLY) ? 
                                  route_info_width : 
                                  (packet_format == `PACKET_FORMAT_EXPLICIT_LENGTH) ? 
                                  (route_info_width + payload_length_width) : -1;

    // State machine states
    localparam IDLE = 2'b00;
    localparam HEAD = 2'b01;
    localparam DATA = 2'b10;
    localparam TAIL = 2'b11;


    // Clock and reset
    input wire clk;
    input wire reset;
    
    // Channel interface from router
    input wire [0:channel_width-1] channel_data_in;
    output wire [0:flow_ctrl_width-1] flow_ctrl_out;
    
    // Output data interface
    output reg data_valid_out;
    output reg [0:flit_data_width-1] data_out;
    output reg [0:router_addr_width-1] source_address_out;
    input wire data_ready_in;
    
    // Status signals
    output wire packet_in_progress;
    output wire error;



    // Internal registers
    reg [1:0] state;
    reg [3:0] flit_count;
    reg [0:vc_idx_width-1] current_vc;
    reg [0:31] credit_counter; // Track credits available to return

    // Extract signals from channel
    wire link_active = (link_ctrl_width > 0) ? channel_data_in[0] : 1'b1;
    wire flit_valid = channel_data_in[link_ctrl_width];
    wire [0:vc_idx_width-1] flit_vc = channel_data_in[link_ctrl_width+1 +: vc_idx_width];
    
    wire flit_head, flit_tail;
    if (packet_format == `PACKET_FORMAT_HEAD_TAIL) begin
        assign flit_head = channel_data_in[link_ctrl_width+vc_idx_width+1];
        assign flit_tail = channel_data_in[link_ctrl_width+vc_idx_width+2];
    end else if (packet_format == `PACKET_FORMAT_TAIL_ONLY) begin
        assign flit_tail = channel_data_in[link_ctrl_width+vc_idx_width+1];
        assign flit_head = 1'b0; // Inferred from state
    end else begin // EXPLICIT_LENGTH
        assign flit_head = channel_data_in[link_ctrl_width+vc_idx_width+1];
        assign flit_tail = 1'b0; // Inferred from length
    end
    
    wire [0:flit_data_width-1] flit_data = channel_data_in[link_ctrl_width+flit_ctrl_width +: flit_data_width];

    // Error detection
    reg protocol_error;
    assign error = protocol_error;
    assign packet_in_progress = (state != IDLE);

    // Flow control signals (credit return)
    reg credit_return;
    reg [0:vc_idx_width-1] credit_vc;
    assign flow_ctrl_out = {credit_return, credit_vc};

    // Source address extraction (from head flit)
    wire [0:router_addr_width-1] extracted_source_addr = 
        flit_data[lar_info_width +: router_addr_width];

    // Main state machine
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= IDLE;
            flit_count <= 0;
            data_valid_out <= 0;
            data_out <= 0;
            source_address_out <= 0;
            current_vc <= 0;
            protocol_error <= 0;
            credit_counter <= 0;
            credit_return <= 0;
            credit_vc <= 0;
        end else begin
            // Default assignments
            data_valid_out <= 0;
            credit_return <= 0;
            
            case (state)
                IDLE: begin
                    if (link_active && flit_valid) begin
                        if (flit_head) begin
                            // New packet head
                            current_vc <= flit_vc;
                            flit_count <= 1;
                            source_address_out <= extracted_source_addr;
                            state <= HEAD;
                            
                            // Return credit for head flit
                            credit_return <= 1;
                            credit_vc <= flit_vc;
                        end else begin
                            // Error - received non-head flit in IDLE state
                            protocol_error <= 1;
                            credit_return <= 1; // Still return credit
                            credit_vc <= flit_vc;
                        end
                    end
                end
                
                HEAD: begin
                    if (link_active && flit_valid) begin
                        if (flit_vc == current_vc) begin
                            // Process data flit of current packet
                            data_valid_out <= 1;
                            data_out <= flit_data;
                            flit_count <= flit_count + 1;
                            
                            if (flit_tail) begin
                                state <= IDLE;
                            end else begin
                                state <= DATA;
                            end
                            
                            // Return credit
                            if (data_ready_in) begin
                                credit_return <= 1;
                                credit_vc <= flit_vc;
                            end else begin
                                credit_counter <= credit_counter + 1;
                            end
                        end else begin
                            // Error - unexpected VC
                            protocol_error <= 1;
                            credit_return <= 1;
                            credit_vc <= flit_vc;
                        end
                    end else if (data_ready_in && credit_counter > 0) begin
                        // Return pending credits
                        credit_return <= 1;
                        credit_vc <= current_vc;
                        credit_counter <= credit_counter - 1;
                    end
                end
                
                DATA: begin
                    if (link_active && flit_valid) begin
                        if (flit_vc == current_vc) begin
                            // Process data flit
                            data_valid_out <= 1;
                            data_out <= flit_data;
                            
                            if (flit_tail) begin
                                state <= IDLE;
                            end
                            
                            // Return credit
                            if (data_ready_in) begin
                                credit_return <= 1;
                                credit_vc <= flit_vc;
                            end else begin
                                credit_counter <= credit_counter + 1;
                            end
                        end else begin
                            // Error - unexpected VC
                            protocol_error <= 1;
                            credit_return <= 1;
                            credit_vc <= flit_vc;
                        end
                    end else if (data_ready_in && credit_counter > 0) begin
                        // Return pending credits
                        credit_return <= 1;
                        credit_vc <= current_vc;
                        credit_counter <= credit_counter - 1;
                    end
                end
                
                default: begin
                    // Should never get here
                    state <= IDLE;
                    protocol_error <= 1;
                end
            endcase
        end
    end

endmodule