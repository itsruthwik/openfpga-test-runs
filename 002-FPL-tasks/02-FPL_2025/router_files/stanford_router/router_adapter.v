module router_axis_local #(
    // AXI-Stream parameters
    parameter AXIS_TDATA_WIDTH = 32,
    parameter AXIS_TDEST_WIDTH = 4,
    parameter AXIS_TID_WIDTH = 4,    // For source router address
    parameter AXIS_TUSER_WIDTH = 4  // For status signals
    
    // // Router parameters - inherit from rtr_top.v
    // parameter buffer_size = 32,
    // parameter num_message_classes = 2,
    // parameter num_resource_classes = 2,
    // parameter num_vcs_per_class = 1,
    // parameter num_routers_per_dim = 4,
    // parameter num_dimensions = 2,
    // parameter num_nodes_per_router = 1,
    // parameter connectivity = `CONNECTIVITY_LINE
    // parameter packet_format = `PACKET_FORMAT_HEAD_TAIL,
    // parameter flow_ctrl_type = `FLOW_CTRL_TYPE_CREDIT,
    // parameter max_payload_length = 4,
    // parameter min_payload_length = 1,
    // parameter enable_link_pm = 1,
    // parameter flit_data_width = 64,
    // parameter routing_type = `ROUTING_TYPE_PHASED_DOR,
    // parameter dim_order = `DIM_ORDER_ASCENDING,
    // parameter reset_type = `RESET_TYPE_ASYNC,
    
    // // Local node index within router
    // parameter node_port_idx = 0
) ( 
    clk, reset, s_axis_tvalid, s_axis_tready, s_axis_tdata, s_axis_tlast, s_axis_tdest, s_axis_tid, s_axis_tuser, m_axis_tdata, m_axis_tvalid, m_axis_tready, m_axis_tlast, m_axis_tdest, m_axis_tid, m_axis_tuser, channel_to_router, channel_from_router, flow_ctrl_to_router, flow_ctrl_from_router
);

    // Include constants files
    `include "c_functions.v"
    `include "c_constants.v"
    `include "rtr_constants.v"
    `include "vcr_constants.v"
    `include "parameters.v"
    
    // Derived parameters for internal connections
    localparam resource_class_idx_width = clogb(num_resource_classes);
    localparam num_packet_classes = num_message_classes * num_resource_classes;
    localparam num_vcs = num_packet_classes * num_vcs_per_class;
    localparam vc_idx_width = clogb(num_vcs);
    localparam dim_addr_width = 2;
    localparam router_addr_width = num_dimensions * dim_addr_width;
    // localparam flow_ctrl_width = (flow_ctrl_type == `FLOW_CTRL_TYPE_CREDIT) ? 
    //                             (1 + vc_idx_width) : -1;
    localparam flow_ctrl_width = (1 + vc_idx_width);
    localparam link_ctrl_width = enable_link_pm ? 1 : 0;
    localparam flit_ctrl_width = (packet_format == `PACKET_FORMAT_HEAD_TAIL) ? 
                                (1 + vc_idx_width + 1 + 1) : 
                                (packet_format == `PACKET_FORMAT_TAIL_ONLY) ? 
                                (1 + vc_idx_width + 1) : 
                                (packet_format == `PACKET_FORMAT_EXPLICIT_LENGTH) ? 
                                (1 + vc_idx_width + 1) : -1;
    localparam channel_width = link_ctrl_width + flit_ctrl_width + flit_data_width;
    
    // Clock and reset
    input  wire                        clk;
    input  wire                        reset;
    
    // AXI-Stream slave interface (input to router)
    input  wire                        s_axis_tvalid;
    output wire                        s_axis_tready;
    input  wire [0:AXIS_TDATA_WIDTH-1] s_axis_tdata;
    input  wire                        s_axis_tlast;
    input  wire [0:AXIS_TDEST_WIDTH-1] s_axis_tdest;
    input  wire [0:AXIS_TID_WIDTH-1]   s_axis_tid;
    input  wire [0:AXIS_TUSER_WIDTH-1] s_axis_tuser;
    
    // AXI-Stream master interface (output from router)
    output wire [0:AXIS_TDATA_WIDTH-1] m_axis_tdata;
    output wire                        m_axis_tvalid;
    input  wire                        m_axis_tready;
    output wire                        m_axis_tlast;
    output wire [0:AXIS_TDEST_WIDTH-1] m_axis_tdest;
    output wire [0:AXIS_TID_WIDTH-1]   m_axis_tid;
    output wire [0:AXIS_TUSER_WIDTH-1] m_axis_tuser;
    
    // Router interface signals
    output wire [0:channel_width-1]     channel_to_router;
    input  wire [0:channel_width-1]     channel_from_router;    
    input  wire [0:flow_ctrl_width-1]   flow_ctrl_to_router;
    output wire [0:flow_ctrl_width-1]   flow_ctrl_from_router;

    //=======================================================================
    // Internal status signals (mapped to TUSER output)
    //=======================================================================
    wire tx_error;
    wire rx_error;
    wire tx_packet_in_progress;
    wire rx_packet_in_progress;
    
    // Map status signals to TUSER output
    assign m_axis_tuser[0] = tx_error;
    assign m_axis_tuser[1] = rx_error;
    assign m_axis_tuser[2] = tx_packet_in_progress;
    assign m_axis_tuser[3] = rx_packet_in_progress;
    
    //=======================================================================
    // TX PATH (AXI-Stream → Router)
    //=======================================================================
    
    // Extract router address from TID
    wire [0:router_addr_width-1] source_router_address;
    generate
        if (AXIS_TID_WIDTH >= router_addr_width) begin
            // TID has enough bits - just take what we need
            assign source_router_address = s_axis_tid[0:router_addr_width-1];
        end else begin
            // TID doesn't have enough bits - zero extend
            assign source_router_address = {s_axis_tid, {(router_addr_width-AXIS_TID_WIDTH){1'b0}}};
        end
    endgenerate
    
    // Address translation - AXIS TDEST to router address format
    wire [0:router_addr_width-1] dest_address;
    
    function [0:router_addr_width-1] tdest_to_router_addr;
        input [0:AXIS_TDEST_WIDTH-1] tdest;
        begin
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
    
    // TX datapath signals
    wire [0:flit_data_width-1] tx_data_in;
    wire tx_data_valid_in = s_axis_tvalid;
    wire tx_is_last_in = s_axis_tlast;
    wire tx_data_ready_out;
    
    // Handle TX width adaptation
    generate
        if (AXIS_TDATA_WIDTH == flit_data_width) begin
            // Direct connection when widths match
            assign tx_data_in = s_axis_tdata;
        end else if (AXIS_TDATA_WIDTH < flit_data_width) begin
            // Zero extend when AXI is narrower
            assign tx_data_in = {s_axis_tdata, {(flit_data_width-AXIS_TDATA_WIDTH){1'b0}}};
        end else begin
            // Truncate when AXI is wider
            assign tx_data_in = s_axis_tdata[0:flit_data_width-1];
        end
    endgenerate
    
    // TX packet in progress tracking
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
    
    // FIX: Enhanced AXI-Stream ready signal logic to maintain 'ready' signal during packet transfers
    // This ensures multi-flit packets can be transferred completely
    reg maintain_ready;
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            maintain_ready <= 0;
        end else begin
            if (s_axis_tvalid && s_axis_tready) begin
                // Start maintaining ready when first flit is accepted but not the last
                if (!s_axis_tlast) begin
                    maintain_ready <= 1;
                end else begin
                    maintain_ready <= 0;  // Stop when last flit is received
                end
            end
        end
    end
    
    // Connect AXI-Stream ready signal - maintain high during packet transmission
    assign s_axis_tready = tx_data_ready_out || maintain_ready;
    
    // Instantiate packetizer for TX path
    packetizer #(
        .buffer_size(buffer_size),
        .num_message_classes(num_message_classes),
        .num_resource_classes(num_resource_classes),
        .num_vcs_per_class(num_vcs_per_class),
        .num_routers_per_dim(4),
        .num_dimensions(num_dimensions),
        .num_nodes_per_router(num_nodes_per_router),
        .connectivity(`CONNECTIVITY_LINE),
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
        .data_valid_in(tx_data_valid_in),
        .is_last_in(tx_is_last_in),
        .data_in(tx_data_in),
        .dest_address(dest_address),
        .flow_ctrl_in(flow_ctrl_to_router),
        .source_address(source_router_address),
        .data_ready_out(tx_data_ready_out),
        .channel(channel_to_router),
        .error(tx_error)
    );

    //=======================================================================
    // RX PATH (Router → AXI-Stream)
    //=======================================================================
    
    // RX datapath signals
    wire rx_data_valid_out;
    wire [0:flit_data_width-1] rx_data_out;
    wire rx_data_ready_in = m_axis_tready;
    
    // Source address extraction from received packets
    wire [0:router_addr_width-1] rx_source_address;
    
    // Handle RX width adaptation
    generate
        if (flit_data_width == AXIS_TDATA_WIDTH) begin
            // Direct connection when widths match
            assign m_axis_tdata = rx_data_out;
        end else if (flit_data_width < AXIS_TDATA_WIDTH) begin
            // Zero extend when router data is narrower
            assign m_axis_tdata = {rx_data_out, {(AXIS_TDATA_WIDTH-flit_data_width){1'b0}}};
        end else begin
            // Truncate when router data is wider
            assign m_axis_tdata = rx_data_out[0:AXIS_TDATA_WIDTH-1];
        end
    endgenerate
    
    // Connect AXI-Stream valid signal
    assign m_axis_tvalid = rx_data_valid_out;
    
    // Assign rx_tdest (currently hardcoded to 0)
    reg [0:AXIS_TDEST_WIDTH-1] rx_tdest;
    initial rx_tdest = 0;
    assign m_axis_tdest = rx_tdest;
    
    // Generate tlast from packet completion detection
    assign m_axis_tlast = rx_data_valid_out && !rx_packet_in_progress;

    generate
        if (router_addr_width <= AXIS_TID_WIDTH) begin
            // Router address fits in TID
            assign m_axis_tid = {rx_source_address, {(AXIS_TID_WIDTH-router_addr_width){1'b0}}};
        end else begin
            // Router address is too large, truncate
            assign m_axis_tid = rx_source_address[0:AXIS_TID_WIDTH-1];
        end
    endgenerate
    
    // Instantiate depacketizer for RX path
    depacketizer #(
        .buffer_size(buffer_size),
        .num_message_classes(num_message_classes),
        .num_resource_classes(num_resource_classes),
        .num_vcs_per_class(num_vcs_per_class),
        .num_routers_per_dim(4),
        .num_dimensions(num_dimensions),
        .num_nodes_per_router(num_nodes_per_router),
        .connectivity(`CONNECTIVITY_LINE),
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
        .source_address_out(rx_source_address),
        .channel_data_in(channel_from_router),
        .flow_ctrl_out(flow_ctrl_from_router),
        .data_valid_out(rx_data_valid_out),
        .data_out(rx_data_out),
        .data_ready_in(rx_data_ready_in),
        .packet_in_progress(rx_packet_in_progress),
        .error(rx_error)
    );

    // Add debug monitoring for AXI handshakes
    always @(posedge clk) begin
        if (s_axis_tvalid && s_axis_tready) begin
            $display("Time %0t: DEBUG - Router adapter accepting flit: last=%b, maintain_ready=%b", 
                     $time, s_axis_tlast, maintain_ready);
        end
    end

endmodule