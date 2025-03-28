module axi_stream_with_router_adapter #(
// AXI Stream Interface Parameters
    parameter AXI_DATA_WIDTH = 32,
    parameter ROUTER_ADDR_WIDTH = 4,
    parameter FIFO_DEPTH = 16,
    parameter NODE_ID = 0,
    
    // Stanford Router Parameters
    parameter TOPOLOGY = 0,
    parameter BUFFER_SIZE = 32,
    parameter NUM_MESSAGE_CLASSES = 1,
    parameter NUM_RESOURCE_CLASSES = 1,
    parameter NUM_VCS_PER_CLASS = 4,
    parameter NUM_NODES = 9,
    parameter NUM_DIMENSIONS = 2,
    parameter NUM_NODES_PER_ROUTER = 1,
    parameter PACKET_FORMAT = 0,
    parameter FLOW_CTRL_TYPE = 0,
    parameter FLOW_CTRL_BYPASS = 0,
    parameter MAX_PAYLOAD_LENGTH = 4,
    parameter MIN_PAYLOAD_LENGTH = 0,
    parameter ROUTER_TYPE = 1,
    parameter ENABLE_LINK_PM = 1,
    parameter FLIT_DATA_WIDTH = 32,
    parameter ERROR_CAPTURE_MODE = 1,
    parameter RESTRICT_TURNS = 1,
    parameter PREDECODE_LAR_INFO = 1,
    parameter ROUTING_TYPE = 0,
    parameter DIM_ORDER = 0,
    parameter INPUT_STAGE_CAN_HOLD = 0,
    parameter FB_REGFILE_TYPE = 0,
    parameter FB_MGMT_TYPE = 0,
    parameter EXPLICIT_PIPELINE_REGISTER = 0,
    parameter DUAL_PATH_ALLOC = 0,
    parameter DUAL_PATH_ALLOW_CONFLICTS = 0,
    parameter DUAL_PATH_MASK_ON_READY = 1,
    parameter PRECOMP_IVC_SEL = 0,
    parameter PRECOMP_IP_SEL = 0,
    parameter ELIG_MASK = 1,
    parameter VC_ALLOC_TYPE = 0,
    parameter VC_ALLOC_ARBITER_TYPE = 0,
    parameter VC_ALLOC_PREFER_EMPTY = 0,
    parameter SW_ALLOC_TYPE = 0,
    parameter SW_ALLOC_ARBITER_TYPE = 0,
    parameter SW_ALLOC_SPEC_TYPE = 1,
    parameter CROSSBAR_TYPE = 0,
    parameter RESET_TYPE = 0
//
)(
    input wire clk,
    input wire reset,
    
    input wire                          slave_tvalid,
    output reg                          slave_tready,
    input wire [AXI_DATA_WIDTH-1:0]     slave_tdata,
    input wire                          slave_tlast,
    input wire [7:0]                    slave_tid,
    input wire [ROUTER_ADDR_WIDTH-1:0]  slave_tdest,
    input wire [ROUTER_ADDR_WIDTH-1:0]  slave_tuser,
    input wire [(AXI_DATA_WIDTH/8)-1:0] slave_tstrb,
    input wire [(AXI_DATA_WIDTH/8)-1:0] slave_tkeep,
    
    output reg                          master_tvalid,
    input wire                          master_tready,
    output reg [AXI_DATA_WIDTH-1:0]     master_tdata,
    output reg                          master_tlast,
    output reg [7:0]                    master_tid,
    output reg [ROUTER_ADDR_WIDTH-1:0]  master_tdest,
    output reg [ROUTER_ADDR_WIDTH-1:0]  master_tuser,
    output reg [(AXI_DATA_WIDTH/8)-1:0] master_tstrb,
    output reg [(AXI_DATA_WIDTH/8)-1:0] master_tkeep,

    input wire [151:0]       channel_in_ip,
    output reg [11:0]                  flow_ctrl_out_ip
    output reg [151:0]                  channel_out_op
    input wire [11:0]       flow_ctrl_in_op
);

// router signals
    wire [37:0] channel_in_ip_injection;
    wire [2:0]  flow_ctrl_out_ip_injection;
    wire [37:0] channel_out_op_injection;
    wire [2:0]  flow_ctrl_in_op_injection;
    wire         router_error

// Calculate total VCs based on parameters
    localparam NUM_VCS = NUM_MESSAGE_CLASSES * NUM_RESOURCE_CLASSES * NUM_VCS_PER_CLASS;

    // States for TX and RX state machines
    localparam [1:0]
        IDLE = 2'b00,
        HEADER = 2'b01,
        PAYLOAD = 2'b10,
        WAIT = 2'b11;
    
    // State registers
    reg [1:0] tx_state;
    reg [1:0] rx_state;
    
    // TX packet counting and tracking
    reg [3:0] tx_flit_count;
    reg [$clog2(NUM_VCS)-1:0] tx_vc; // Virtual channel of outgoing packet
    
    // RX packet tracking
    reg [3:0] rx_flit_count;
    reg [$clog2(NUM_VCS)-1:0] rx_vc; // Virtual channel of incoming packet
    
    // TX FIFO 
    reg [AXI_DATA_WIDTH+8+1-1:0] tx_fifo [0:FIFO_DEPTH-1]; // data + dest + last
    reg [$clog2(FIFO_DEPTH):0] tx_wr_ptr, tx_rd_ptr;
    wire tx_fifo_empty = (tx_wr_ptr == tx_rd_ptr);
    wire tx_fifo_full = ((tx_wr_ptr + 1) & (FIFO_DEPTH-1)) == tx_rd_ptr;
    
    // RX FIFO 
    reg [AXI_DATA_WIDTH+8+1-1:0] rx_fifo [0:FIFO_DEPTH-1]; // data + dest + last
    reg [$clog2(FIFO_DEPTH):0] rx_wr_ptr, rx_rd_ptr;
    wire rx_fifo_empty = (rx_wr_ptr == rx_rd_ptr);
    wire rx_fifo_full = ((rx_wr_ptr + 1) & (FIFO_DEPTH-1)) == rx_rd_ptr;
    
    // Credits tracking for flow control (if using credit-based flow control)
    reg [5:0] vc_credits [0:NUM_VCS-1];
    integer i;

    reg [15:0] rx_timeout_counter;

    // Initialize credits for flow control if using credit-based flow control
    generate
        if (FLOW_CTRL_TYPE == 0) begin
            // Credit-based flow control initialization
            always @(posedge clk or posedge reset) begin
                if (reset) begin
                    for (i = 0; i < NUM_VCS; i = i + 1) begin
                        vc_credits[i] <= BUFFER_SIZE;  // Initialize with buffer size
                    end
                end
                else begin
                    // Update credits based on flow control signals
                    for (i = 0; i < NUM_VCS; i = i + 1) begin
                        // Basic credit tracking - this may need adjustment based on exact protocol
                        if ((tx_state == HEADER || tx_state == PAYLOAD) && 
                           (tx_vc == i) && (channel_in_ip_injection[69] == 1'b1) && vc_credits[i] > 0) begin
                            vc_credits[i] <= vc_credits[i] - 1;
                        end else if (flow_ctrl_out_ip_injection[i*3 +: 3] == 3'b001 && vc_credits[i] < BUFFER_SIZE) begin
                            vc_credits[i] <= vc_credits[i] + 1;
                        end
                    end
                end
            end
        end
    endgenerate
    
    // Ready signal depends on FIFO availability
    always @(*) begin
        slave_tready = !tx_fifo_full;
    end
    
    // Router instantiation with full parameter set
    router_slice #(
        .topology(TOPOLOGY),
        .buffer_size(BUFFER_SIZE),
        .num_message_classes(NUM_MESSAGE_CLASSES),
        .num_resource_classes(NUM_RESOURCE_CLASSES),
        .num_vcs_per_class(NUM_VCS_PER_CLASS),
        .num_nodes(NUM_NODES),
        .num_dimensions(NUM_DIMENSIONS),
        .num_nodes_per_router(NUM_NODES_PER_ROUTER),
        .packet_format(PACKET_FORMAT),
        .flow_ctrl_type(FLOW_CTRL_TYPE),
        .flow_ctrl_bypass(FLOW_CTRL_BYPASS),
        .max_payload_length(MAX_PAYLOAD_LENGTH),
        .min_payload_length(MIN_PAYLOAD_LENGTH),
        .router_type(ROUTER_TYPE),
        .enable_link_pm(ENABLE_LINK_PM),
        .flit_data_width(FLIT_DATA_WIDTH),
        .error_capture_mode(ERROR_CAPTURE_MODE),
        .restrict_turns(RESTRICT_TURNS),
        .predecode_lar_info(PREDECODE_LAR_INFO),
        .routing_type(ROUTING_TYPE),
        .dim_order(DIM_ORDER),
        .input_stage_can_hold(INPUT_STAGE_CAN_HOLD),
        .fb_regfile_type(FB_REGFILE_TYPE),
        .fb_mgmt_type(FB_MGMT_TYPE),
        .explicit_pipeline_register(EXPLICIT_PIPELINE_REGISTER),
        .dual_path_alloc(DUAL_PATH_ALLOC),
        .dual_path_allow_conflicts(DUAL_PATH_ALLOW_CONFLICTS),
        .dual_path_mask_on_ready(DUAL_PATH_MASK_ON_READY),
        .precomp_ivc_sel(PRECOMP_IVC_SEL),
        .precomp_ip_sel(PRECOMP_IP_SEL),
        .elig_mask(ELIG_MASK),
        .vc_alloc_type(VC_ALLOC_TYPE),
        .vc_alloc_arbiter_type(VC_ALLOC_ARBITER_TYPE),
        .vc_alloc_prefer_empty(VC_ALLOC_PREFER_EMPTY),
        .sw_alloc_type(SW_ALLOC_TYPE),
        .sw_alloc_arbiter_type(SW_ALLOC_ARBITER_TYPE),
        .sw_alloc_spec_type(SW_ALLOC_SPEC_TYPE),
        .crossbar_type(CROSSBAR_TYPE),
        .reset_type(RESET_TYPE)
    ) router_inst (
        .clk(clk),
        .reset(reset),
        .router_address(slave_tuser),
        .channel_in_ip({channel_in_ip, channel_in_ip_injection}),
        .flow_ctrl_out_ip({flow_ctrl_out_ip, flow_ctrl_out_ip_injection}),
        .channel_out_op({channel_out_op, channel_out_op_injection}),
        .flow_ctrl_in_op({flow_ctrl_in_op, flow_ctrl_in_op_injection}),
        .error(router_error)
    );

    reg router_error_q;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            router_error_q <= 1'b0;
        end
    end
    // Handle flow control to router based on FLOW_CTRL_TYPE
    assign flow_ctrl_in_op_injection = rx_fifo_full ? 
                             (FLOW_CTRL_TYPE == 0 ? 
                              (15'h7 << (rx_vc * 3)) : 15'h7FFF) : 
                             15'b0;
    
    // TX FIFO write logic - from AXI to FIFO
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            tx_wr_ptr <= 0;
        end
        else if (slave_tvalid && slave_tready) begin
            tx_fifo[tx_wr_ptr[$clog2(FIFO_DEPTH)-1:0]] <= {slave_tdata, slave_tdest[7:0], slave_tlast};
            tx_wr_ptr <= (tx_wr_ptr + 1) & (FIFO_DEPTH-1);
        end
    end
    
    // Temporary wire declarations for TX data extraction
    wire [AXI_DATA_WIDTH-1:0] tx_data;
    wire [7:0] tx_dest;
    wire tx_last;
    
    assign tx_data = tx_fifo[tx_rd_ptr[$clog2(FIFO_DEPTH)-1:0]][AXI_DATA_WIDTH+8:9];
    assign tx_dest = tx_fifo[tx_rd_ptr[$clog2(FIFO_DEPTH)-1:0]][8:1];
    assign tx_last = tx_fifo[tx_rd_ptr[$clog2(FIFO_DEPTH)-1:0]][0];
    
    // TX state machine - FIFO to router
    reg [189:0] channel_data; // For building channel_in_ip_injection

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            tx_state <= IDLE;
            tx_flit_count <= 0;
            tx_rd_ptr <= 0;
            tx_vc <= 0;
            channel_data <= 190'b0;
        end
        else begin
            case (tx_state)
                IDLE: begin
                    channel_data[69] <= 1'b0; // Clear valid bit
                    
                    // Check ability to send based on credit system or flow control type
                    if (!tx_fifo_empty) begin
                        if (FLOW_CTRL_TYPE == 0) begin
                            // Credit-based: check if credits are available
                            if (vc_credits[tx_vc] > 0)
                                tx_state <= HEADER;
                        end else begin
                            // On/off: check if backpressure is off
                            if (flow_ctrl_out_ip_injection[tx_vc] == 1'b0)
                                tx_state <= HEADER;
                        end
                    end
                end
                
                HEADER: begin
                    if (!tx_fifo_empty) begin
                        // Format Stanford router channel based on PACKET_FORMAT parameter
                        if (PACKET_FORMAT == 0) begin
                            // Standard format: [vc(log2(NUM_VCS)) | head(1) | tail(1) | routing(32) | payload(32) | valid(1)]
                            channel_data[0:$clog2(NUM_VCS)-1] <= tx_vc;   // VC ID
                            channel_data[$clog2(NUM_VCS)] <= 1'b1;        // Head flit
                            channel_data[$clog2(NUM_VCS)+1] <= tx_last;   // Tail if only one flit
                            
                            // Routing data formatting depends on TOPOLOGY parameter
                            if (TOPOLOGY == 0) begin // Mesh
                                // For mesh, encode destination as coordinates
                                channel_data[$clog2(NUM_VCS)+2:$clog2(NUM_VCS)+2+3] <= tx_dest[3:0]; // X coordinate 
                                channel_data[$clog2(NUM_VCS)+2+4:$clog2(NUM_VCS)+2+7] <= tx_dest[7:4]; // Y coordinate
                                channel_data[$clog2(NUM_VCS)+2+8:$clog2(NUM_VCS)+2+31] <= 24'h0; // Padding
                            end else begin
                                // For other topologies, use direct node addressing
                                channel_data[$clog2(NUM_VCS)+2:$clog2(NUM_VCS)+2+31] <= {tx_dest, 24'h0};
                            end
                            
                            // Payload data
                            channel_data[$clog2(NUM_VCS)+2+32:$clog2(NUM_VCS)+2+63] <= tx_data;
                            channel_data[$clog2(NUM_VCS)+2+64] <= 1'b1;  // Valid bit
                            
                            // Fill remaining bits in channel
                            channel_data[$clog2(NUM_VCS)+2+65:189] <= 0;
                        end else begin
                            // For other packet formats, adjust accordingly
                            // This is simplified and should be updated based on actual format specs
                            channel_data[0:2] <= tx_vc;         // VC ID
                            channel_data[3] <= 1'b1;           // Head flit
                            channel_data[4] <= tx_last;        // Tail if only one flit
                            channel_data[5:36] <= {tx_dest, 24'h0};  // Destination in header flit
                            channel_data[37:68] <= tx_data;    // Payload data
                            channel_data[69] <= 1'b1;          // Valid bit
                            channel_data[70:189] <= 120'b0;    // Unused bits
                        end
                        
                        tx_rd_ptr <= (tx_rd_ptr + 1) & (FIFO_DEPTH-1);
                        tx_flit_count <= tx_flit_count + 1;
                        
                        if (tx_last) 
                            tx_state <= WAIT;
                        else
                            tx_state <= PAYLOAD;
                    end
                end
                
                PAYLOAD: begin
                    if (!tx_fifo_empty) begin
                        // Check ability to send based on credit system or flow control type
                        if (FLOW_CTRL_TYPE == 0 && vc_credits[tx_vc] <= 0) begin
                            // Wait for credits to become available
                        end else if (FLOW_CTRL_TYPE != 0 && flow_ctrl_out_ip_injection[tx_vc] != 1'b0) begin
                            // Wait for flow control to allow sending
                        end else begin
                            // Format payload flit according to packet format
                            if (PACKET_FORMAT == 0) begin
                                channel_data[0:$clog2(NUM_VCS)-1] <= tx_vc;   // VC ID
                                channel_data[$clog2(NUM_VCS)] <= 1'b0;        // Not a head flit
                                channel_data[$clog2(NUM_VCS)+1] <= tx_last;   // Tail bit
                                channel_data[$clog2(NUM_VCS)+2:$clog2(NUM_VCS)+2+31] <= 32'h0; // No routing info
                                channel_data[$clog2(NUM_VCS)+2+32:$clog2(NUM_VCS)+2+63] <= tx_data; // Payload
                                channel_data[$clog2(NUM_VCS)+2+64] <= 1'b1;  // Valid bit
                                channel_data[$clog2(NUM_VCS)+2+65:189] <= 0; // Remaining bits
                            end else begin
                                // For other packet formats
                                channel_data[0:2] <= tx_vc;         // VC ID
                                channel_data[3] <= 1'b0;           // Not a head flit
                                channel_data[4] <= tx_last;        // Tail bit
                                channel_data[5:36] <= 32'h0;       // No header data
                                channel_data[37:68] <= tx_data;    // Payload data
                                channel_data[69] <= 1'b1;          // Valid bit
                                channel_data[70:189] <= 120'b0;    // Unused bits
                            end
                            
                            tx_rd_ptr <= (tx_rd_ptr + 1) & (FIFO_DEPTH-1);
                            tx_flit_count <= tx_flit_count + 1;
                            
                            if (tx_last || tx_flit_count >= (MAX_PAYLOAD_LENGTH-1)) begin
                                tx_state <= WAIT;
                                // Use round-robin among VCs
                                tx_vc <= (tx_vc + 1) % NUM_VCS;
                                tx_flit_count <= 0;
                            end
                        end
                    end
                end
                
                WAIT: begin
                    // Wait for router to process the flit
                    channel_data[69] <= 1'b0;  // Clear valid bit
                    tx_state <= IDLE;
                end
            endcase
        end
    end
    
    // Connect TX datapath to router
    assign channel_in_ip_injection = channel_data;
    
    // RX state machine - router to FIFO
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            rx_state <= IDLE;
            rx_flit_count <= 0;
            rx_wr_ptr <= 0;
            rx_timeout_counter <= 0;
        end
        else begin
            // Update timeout counter
            if (rx_state != IDLE) begin
                if (channel_out_op_injection[69])  // Valid data
                    rx_timeout_counter <= 0;
                else 
                    rx_timeout_counter <= rx_timeout_counter + 1;

                if (rx_timeout_counter > 16'd1000) begin
                    rx_state <= IDLE;
                    rx_flit_count <= 0;
                end
            end
            case (rx_state)
                IDLE: begin
                    if (channel_out_op_injection[69] == 1'b1) begin  // Valid bit set
                        // Adapt this check based on packet format parameter
                        if (PACKET_FORMAT == 0)
                            rx_state <= channel_out_op_injection[$clog2(NUM_VCS)] ? HEADER : PAYLOAD;
                        else
                            rx_state <= channel_out_op_injection[3] ? HEADER : PAYLOAD;
                        
                        rx_vc <= channel_out_op_injection[0:$clog2(NUM_VCS)-1];  // Capture VC
                    end
                end
                
                HEADER: begin
                    // Process header flit
                    if (channel_out_op_injection[69] == 1'b1) begin  // Valid bit
                        // Extract data based on packet format
                        if (PACKET_FORMAT == 0) begin
                            // Store data according to format
                            // Typically: get destination from routing field, data from payload field
                            rx_fifo[rx_wr_ptr[$clog2(FIFO_DEPTH)-1:0]] <= {
                                channel_out_op_injection[$clog2(NUM_VCS)+2+32:$clog2(NUM_VCS)+2+63],  // data
                                channel_out_op_injection[$clog2(NUM_VCS)+2:$clog2(NUM_VCS)+2+7],      // dest 
                                channel_out_op_injection[$clog2(NUM_VCS)+1]                           // last bit
                            };
                        end else begin
                            rx_fifo[rx_wr_ptr[$clog2(FIFO_DEPTH)-1:0]] <= {
                                channel_out_op_injection[37:68],  // data
                                channel_out_op_injection[5:12],   // dest
                                channel_out_op_injection[4]       // last bit
                            };
                        end
                        
                        rx_wr_ptr <= (rx_wr_ptr + 1) & (FIFO_DEPTH-1);
                        rx_flit_count <= rx_flit_count + 1;
                        
                        if ((PACKET_FORMAT == 0 && channel_out_op_injection[$clog2(NUM_VCS)+1]) || 
                            (PACKET_FORMAT != 0 && channel_out_op_injection[4])) begin
                            // Tail bit set - end of packet
                            rx_state <= IDLE;
                            rx_flit_count <= 0;
                            end else begin
                            rx_state <= PAYLOAD;
                            end
                    end
                end
                
                PAYLOAD: begin
                    // Process payload flit
                    if (channel_out_op_injection[69] == 1'b1) begin  // Valid bit
                        // Store in RX FIFO based on packet format
                        if (PACKET_FORMAT == 0) begin
                            rx_fifo[rx_wr_ptr[$clog2(FIFO_DEPTH)-1:0]] <= {
                                channel_out_op_injection[$clog2(NUM_VCS)+2+32:$clog2(NUM_VCS)+2+63],  // data
                                8'h0,                                                       // default dest for body flits
                                channel_out_op_injection[$clog2(NUM_VCS)+1]                           // last bit
                            };
                        end else begin
                            rx_fifo[rx_wr_ptr[$clog2(FIFO_DEPTH)-1:0]] <= {
                                channel_out_op_injection[37:68],  // data
                                8'h0,                   // default dest for body flits
                                channel_out_op_injection[4]       // last bit
                            };
                        end
                        
                        rx_wr_ptr <= (rx_wr_ptr + 1) & (FIFO_DEPTH-1);
                        
                        if ((PACKET_FORMAT == 0 && channel_out_op_injection[$clog2(NUM_VCS)+1]) || 
                            (PACKET_FORMAT != 0 && channel_out_op_injection[4])) begin
                            // Tail bit set - end of packet
                            rx_state <= IDLE;
                            rx_flit_count <= 0;
                        end
                    end
                end
                
                default: rx_state <= IDLE;
            endcase
        end
    end
    // RX FIFO read logic - from FIFO to AXI
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            rx_rd_ptr <= 0;
            master_tvalid <= 1'b0;
        end
        else if (router_error_q) begin
            // Signal error by deasserting master_tvalid
            master_tvalid <= 1'b0;
        end
        else if (!rx_fifo_empty && (!master_tvalid || master_tready)) begin
            // Read from RX FIFO and present on AXI Stream interface
            master_tdata <= rx_fifo[rx_rd_ptr[$clog2(FIFO_DEPTH)-1:0]][AXI_DATA_WIDTH+8:9];
            master_tdest <= rx_fifo[rx_rd_ptr[$clog2(FIFO_DEPTH)-1:0]][8:1];
            master_tlast <= rx_fifo[rx_rd_ptr[$clog2(FIFO_DEPTH)-1:0]][0];
            master_tvalid <= 1'b1;
            master_tid <= NODE_ID[7:0];  // Use our node ID as the source ID
            master_tuser <= 8'b0;
            master_tstrb <= {(AXI_DATA_WIDTH/8){1'b1}}; // All bytes valid
            master_tkeep <= {(AXI_DATA_WIDTH/8){1'b1}}; // All bytes kept
            
            rx_rd_ptr <= (rx_rd_ptr + 1) & (FIFO_DEPTH-1);
        end
        else if (master_tvalid && master_tready) begin
            // Transaction complete, clear valid if no new data
            if (rx_fifo_empty)
                master_tvalid <= 1'b0;
        end
    end

endmodule