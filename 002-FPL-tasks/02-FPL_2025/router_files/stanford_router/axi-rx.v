module axi_stream_receiver #(
    parameter AXIS_TDATA_WIDTH = 32,
    parameter AXIS_TDEST_WIDTH = 4,
    parameter AXIS_TID_WIDTH = 4,
    parameter AXIS_TUSER_WIDTH = 4,
    parameter MAX_PACKET_SIZE = 16    // Maximum size of packet to store
) (
    // Clock and reset
    input  wire clk,
    input  wire reset,
    
    // Status outputs
    output reg         packet_received,       // Pulses when packet is complete
    output reg  [31:0] received_data,         // Last received data
    output reg  [3:0]  received_length,       // Length of received packet
    output reg  [3:0]  received_dest_addr,    // Destination address from packet
    output reg  [3:0]  received_src_addr,     // Source address from packet
    
    // Packet storage (flattened array for Verilog compatibility)
    output reg [MAX_PACKET_SIZE*32-1:0] packet_data_flat,
    
    // AXI-Stream slave interface
    input  wire                        s_axis_tvalid,
    output reg                         s_axis_tready,
    input  wire [0:AXIS_TDATA_WIDTH-1] s_axis_tdata,
    input  wire                        s_axis_tlast,
    input  wire [0:AXIS_TDEST_WIDTH-1] s_axis_tdest,
    input  wire [0:AXIS_TID_WIDTH-1]   s_axis_tid,
    input  wire [0:AXIS_TUSER_WIDTH-1] s_axis_tuser
);

    // State machine states
    localparam IDLE = 2'b00;
    localparam RECEIVE = 2'b01;
    
    // Internal registers
    reg [1:0]  state;
    reg [3:0]  flit_count;
    
    // Internal memory to store packet data
    reg [31:0] packet_data [0:MAX_PACKET_SIZE-1];
    
    // Integer for loops
    integer i;
    
    // State machine for AXI-Stream reception
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state = IDLE;
            flit_count = 0;
            s_axis_tready = 1;  // Always ready to receive in this simple model
            packet_received = 0;
            received_data = 0;
            received_length = 0;
            received_dest_addr = 0;
            received_src_addr = 0;
            
            // Clear packet storage
            for (i = 0; i < MAX_PACKET_SIZE; i = i + 1) begin
                packet_data[i] = 0;
            end
        end else begin
            // Default value
            packet_received = 0;
            
            case (state)
                IDLE: begin
                    // Wait for valid data
                    if (s_axis_tvalid) begin
                        state = RECEIVE;
                        flit_count = 1;
                        
                        // Store first flit data
                        packet_data[0] = s_axis_tdata;
                        received_data = s_axis_tdata;
                        received_dest_addr = s_axis_tdest;
                        received_src_addr = s_axis_tid;
                        
                        // Check if single-flit packet
                        if (s_axis_tlast) begin
                            state = IDLE;
                            received_length = 1;
                            packet_received = 1;
                        end
                    end
                end
                
                RECEIVE: begin
                    // Continue receiving data flits
                    if (s_axis_tvalid) begin
                        // Store data
                        if (flit_count < MAX_PACKET_SIZE) begin
                            packet_data[flit_count] = s_axis_tdata;
                        end
                        received_data = s_axis_tdata;
                        
                        // Update flit count
                        flit_count = flit_count + 1;
                        
                        // Check for end of packet
                        if (s_axis_tlast) begin
                            state = IDLE;
                            received_length = flit_count + 1;
                            packet_received = 1;
                        end
                    end
                end
                
                default: state = IDLE;
            endcase
        end
    end

    // Flatten the packet data to the output port
    always @(*) begin
        for (i = 0; i < MAX_PACKET_SIZE; i = i + 1) begin
            packet_data_flat[i*32 +: 32] = packet_data[i];
        end
    end

    // Monitoring and debug signals
    always @(posedge clk) begin
        if (!reset && packet_received) begin
            $display("Packet Received: length=%0d, dest=0x%h, src=0x%h, data=0x%h", 
                     received_length, received_dest_addr, received_src_addr, received_data);
        end
    end

endmodule