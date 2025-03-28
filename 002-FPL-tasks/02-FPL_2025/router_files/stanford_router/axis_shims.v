`timescale 1ns / 1ps

module axis_to_router #(
    // AXI-Stream parameters
    parameter AXIS_TDATA_WIDTH = 64,
    parameter AXIS_TDEST_WIDTH = 8,
    
    // Router parameters
    parameter buffer_size = 32,
    parameter num_message_classes = 2,
    parameter num_resource_classes = 2,
    parameter num_vcs_per_class = 1,
    parameter num_routers_per_dim = 4,
    parameter num_dimensions = 2,
    parameter num_nodes_per_router = 1,
    parameter connectivity = 0, // CONNECTIVITY_LINE
    parameter packet_format = 0, // PACKET_FORMAT_HEAD_TAIL
    parameter flow_ctrl_type = 2, // FLOW_CTRL_TYPE_CREDIT
    parameter max_payload_length = 4,
    parameter min_payload_length = 1,
    parameter enable_link_pm = 1,
    parameter flit_data_width = 64,
    parameter routing_type = 1, // ROUTING_TYPE_PHASED_DOR
    parameter dim_order = 0, // DIM_ORDER_ASCENDING
    parameter reset_type = 0 // RESET_TYPE_ASYNC
) (
    // Clock and reset
    input  wire                        clk,
    input  wire                        reset,
    
    // AXI-Stream slave interface
    input  wire                        s_axis_tvalid,
    output wire                        s_axis_tready,
    input  wire [0:AXIS_TDATA_WIDTH-1] s_axis_tdata,
    input  wire                        s_axis_tlast,
    input  wire [0:AXIS_TDEST_WIDTH-1] s_axis_tdest,
    
    // Router interface
    output wire [0:channel_width-1]    channel_out,
    input  wire [0:flow_ctrl_width-1]  flow_ctrl_in,
    
    // Optional source address input (typically hardwired by router node)
    input  wire [0:router_addr_width-1] source_address,
    
    // Status signals
    output wire                        tx_error,
    output wire                        tx_packet_in_progress
);

    // Include constants files
    `include "c_functions.v"
    `include "c_constants.v"
    `include "rtr_constants.v"
    `include "vcr_constants.v"
    
    // Derived parameters for internal connections
    localparam resource_class_idx_width = clogb(num_resource_classes);
    localparam num_packet_classes = num_message_classes * num_resource_classes;
    localparam num_vcs = num_packet_classes * num_vcs_per_class;
    localparam vc_idx_width = clogb(num_vcs);
    localparam dim_addr_width = clogb(num_routers_per_dim);
    localparam router_addr_width = num_dimensions * dim_addr_width;
    localparam flow_ctrl_width = (flow_ctrl_type == `FLOW_CTRL_TYPE_CREDIT) ? 
                                (1 + vc_idx_width) : -1;
    localparam link_ctrl_width = enable_link_pm ? 1 : 0;
    localparam flit_ctrl_width = (packet_format == `PACKET_FORMAT_HEAD_TAIL) ? 
                                (1 + vc_idx_width + 1 + 1) : 
                                (packet_format == `PACKET_FORMAT_TAIL_ONLY) ? 
                                (1 + vc_idx_width + 1) : 
                                (packet_format == `PACKET_FORMAT_EXPLICIT_LENGTH) ? 
                                (1 + vc_idx_width + 1) : -1;
    localparam channel_width = link_ctrl_width + flit_ctrl_width + flit_data_width;
    
    // Address translation - AXIS TDEST to router address format
    wire [0:router_addr_width-1] dest_address;
    
    // Internal signals for packetizer
    wire data_valid_in = s_axis_tvalid;
    wire is_last_in = s_axis_tlast;
    wire [0:flit_data_width-1] data_in;
    wire data_ready_out;
    
    // Handle width adaptation between AXI and router data
    generate
        if (AXIS_TDATA_WIDTH == flit_data_width) begin
            // Direct connection when widths match
            assign data_in = s_axis_tdata;
        end else if (AXIS_TDATA_WIDTH < flit_data_width) begin
            // Zero extend when AXI is narrower
            assign data_in = {s_axis_tdata, {(flit_data_width-AXIS_TDATA_WIDTH){1'b0}}};
        end else begin
            // Truncate when AXI is wider
            assign data_in = s_axis_tdata[0:flit_data_width-1];
        end
    endgenerate
    
    // Connect AXI-Stream ready signal
    assign s_axis_tready = data_ready_out;
    
    // Packet in progress tracking
    reg tx_packet_active;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            tx_packet_active <= 0;
        end else begin
            if (s_axis_tvalid && s_axis_tready) begin
                if (s_axis_tlast) begin
                    tx_packet_active <= 0;
                end else begin
                    tx_packet_active <= 1;
                end
            end
        end
    end
    
    assign tx_packet_in_progress = tx_packet_active;
    
    // Address translation function: AXI-Stream TDEST to router address
    function [0:router_addr_width-1] tdest_to_router_addr;
        input [0:AXIS_TDEST_WIDTH-1] tdest;
        begin
            // Simple mapping - takes the appropriate number of bits
            if (AXIS_TDEST_WIDTH >= router_addr_width) begin
                // TDEST has enough bits - just take what we need
                tdest_to_router_addr = tdest[0:router_addr_width-1];
            end else begin
                // TDEST doesn't have enough bits - zero extend
                tdest_to_router_addr = {tdest, {(router_addr_width-AXIS_TDEST_WIDTH){1'b0}}};
            end
        end
    endfunction
    
    assign dest_address = tdest_to_router_addr(s_axis_tdest);
    
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
        .flow_ctrl_in(flow_ctrl_in),
        .source_address(source_address),
        .data_ready_out(data_ready_out),
        .channel(channel_out),
        .error(tx_error)
    );

endmodule



module router_to_axis #(
    // AXI-Stream parameters
    parameter AXIS_TDATA_WIDTH = 64,
    parameter AXIS_TDEST_WIDTH = 8,
    
    // Router parameters
    parameter buffer_size = 32,
    parameter num_message_classes = 2,
    parameter num_resource_classes = 2,
    parameter num_vcs_per_class = 1,
    parameter num_routers_per_dim = 4,
    parameter num_dimensions = 2,
    parameter num_nodes_per_router = 1,
    parameter connectivity = 0, // CONNECTIVITY_LINE
    parameter packet_format = 0, // PACKET_FORMAT_HEAD_TAIL
    parameter flow_ctrl_type = 2, // FLOW_CTRL_TYPE_CREDIT
    parameter max_payload_length = 4,
    parameter min_payload_length = 1,
    parameter enable_link_pm = 1,
    parameter flit_data_width = 64,
    parameter routing_type = 1, // ROUTING_TYPE_PHASED_DOR
    parameter dim_order = 0, // DIM_ORDER_ASCENDING
    parameter reset_type = 0 // RESET_TYPE_ASYNC
) (
    // Clock and reset
    input  wire                        clk,
    input  wire                        reset,
    
    // AXI-Stream master interface
    output wire [0:AXIS_TDATA_WIDTH-1] m_axis_tdata,
    output wire                        m_axis_tvalid,
    input  wire                        m_axis_tready,
    output wire                        m_axis_tlast,
    output wire [0:AXIS_TDEST_WIDTH-1] m_axis_tdest,
    
    // Router interface
    input  wire [0:channel_width-1]    channel_in,
    output wire [0:flow_ctrl_width-1]  flow_ctrl_out,
    
    // Status signals
    output wire                        rx_error,
    output wire                        rx_packet_in_progress
);

    // Include constants files
    `include "c_functions.v"
    `include "c_constants.v"
    `include "rtr_constants.v"
    `include "vcr_constants.v"
    
    // Derived parameters for internal connections
    localparam resource_class_idx_width = clogb(num_resource_classes);
    localparam num_packet_classes = num_message_classes * num_resource_classes;
    localparam num_vcs = num_packet_classes * num_vcs_per_class;
    localparam vc_idx_width = clogb(num_vcs);
    localparam dim_addr_width = clogb(num_routers_per_dim);
    localparam router_addr_width = num_dimensions * dim_addr_width;
    localparam flow_ctrl_width = (flow_ctrl_type == `FLOW_CTRL_TYPE_CREDIT) ? 
                                (1 + vc_idx_width) : -1;
    localparam link_ctrl_width = enable_link_pm ? 1 : 0;
    localparam flit_ctrl_width = (packet_format == `PACKET_FORMAT_HEAD_TAIL) ? 
                                (1 + vc_idx_width + 1 + 1) : 
                                (packet_format == `PACKET_FORMAT_TAIL_ONLY) ? 
                                (1 + vc_idx_width + 1) : 
                                (packet_format == `PACKET_FORMAT_EXPLICIT_LENGTH) ? 
                                (1 + vc_idx_width + 1) : -1;
    localparam channel_width = link_ctrl_width + flit_ctrl_width + flit_data_width;
    
    // Internal signals for depacketizer
    wire data_valid_out;
    wire [0:flit_data_width-1] data_out;
    wire data_ready_in = m_axis_tready;
    
    // Handle width adaptation between router and AXI data
    generate
        if (flit_data_width == AXIS_TDATA_WIDTH) begin
            // Direct connection when widths match
            assign m_axis_tdata = data_out;
        end else if (flit_data_width < AXIS_TDATA_WIDTH) begin
            // Zero extend when router data is narrower
            assign m_axis_tdata = {data_out, {(AXIS_TDATA_WIDTH-flit_data_width){1'b0}}};
        end else begin
            // Truncate when router data is wider
            assign m_axis_tdata = data_out[0:AXIS_TDATA_WIDTH-1];
        end
    endgenerate
    
    // Connect AXI-Stream valid signal
    assign m_axis_tvalid = data_valid_out;
    
    // Destination information for AXI-Stream
    // For now, hardcoded to zero since we don't extract source from flits
    reg [0:AXIS_TDEST_WIDTH-1] rx_tdest;
    initial rx_tdest = 0;
    assign m_axis_tdest = rx_tdest;
    
    // Generate tlast from packet completion detection
    wire rx_packet_last;
    assign m_axis_tlast = rx_packet_last;
    
    // Track packet last signal for RX path
    reg rx_last_flit;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            rx_last_flit <= 0;
        end else begin
            if (data_valid_out && data_ready_in) begin
                if (!rx_packet_in_progress) begin
                    // When packet completes, assert last
                    rx_last_flit <= 1;
                end else begin
                    rx_last_flit <= 0;
                end
            end else if (rx_last_flit && m_axis_tready) begin
                // Clear after being acknowledged
                rx_last_flit <= 0;
            end
        end
    end
    
    // Use the packet completion as the tlast signal
    assign rx_packet_last = data_valid_out && !rx_packet_in_progress;
    
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
        .channel_data_in(channel_in),
        .flow_ctrl_out(flow_ctrl_out),
        .data_valid_out(data_valid_out),
        .data_out(data_out),
        .data_ready_in(data_ready_in),
        .packet_in_progress(rx_packet_in_progress),
        .error(rx_error)
    );

endmodule