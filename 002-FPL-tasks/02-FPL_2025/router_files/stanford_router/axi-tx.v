module axi_stream_sender #(
    parameter AXIS_TDATA_WIDTH = 32,
    parameter AXIS_TDEST_WIDTH = 4,
    parameter AXIS_TID_WIDTH = 4,
    parameter AXIS_TUSER_WIDTH = 4
) (
    // Clock and reset
    input  wire clk,
    input  wire reset,
    
    // User logic signals
    input  wire [31:0] data_to_send,
    input  wire [3:0]  packet_length,
    input  wire [3:0]  dest_router_addr,
    input  wire [3:0]  my_router_addr,
    input  wire        send_packet,
    output wire        packet_done,
    
    // AXI-Stream master interface
    output reg                         m_axis_tvalid,
    input  wire                        m_axis_tready,
    output reg  [0:AXIS_TDATA_WIDTH-1] m_axis_tdata,
    output reg                         m_axis_tlast,
    output reg  [0:AXIS_TDEST_WIDTH-1] m_axis_tdest,
    output reg  [0:AXIS_TID_WIDTH-1]   m_axis_tid,
    output reg  [0:AXIS_TUSER_WIDTH-1] m_axis_tuser
);

    // State machine states
    localparam IDLE = 2'b00;
    localparam SEND = 2'b01;
    localparam WAIT = 2'b10;
    
    // Internal registers
    reg [1:0]  state;
    reg [3:0]  flit_count;
    reg [31:0] current_data;
    
    // Assign packet_done when transmission is complete
    assign packet_done = (state == IDLE);
    
    // State machine for AXI-Stream transmission
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= IDLE;
            flit_count <= 0;
            m_axis_tvalid <= 0;
            m_axis_tdata <= 0;
            m_axis_tlast <= 0;
            m_axis_tdest <= 0;
            m_axis_tid <= 0;
            m_axis_tuser <= 0;
            current_data <= 0;
        end else begin
            case (state)
                IDLE: begin
                    // Wait for send command
                    if (send_packet) begin
                        state <= SEND;
                        flit_count <= 0;
                        current_data <= data_to_send;
                        m_axis_tvalid <= 1;
                        m_axis_tdata <= data_to_send;
                        m_axis_tlast <= (packet_length == 1);
                        m_axis_tdest <= dest_router_addr;   // Destination router address
                        m_axis_tid <= my_router_addr;       // Source router address
                        m_axis_tuser <= 0;                  // Not used for input
                    end
                end
                
SEND: begin
    // Check if receiver accepted data
    if (m_axis_tready) begin
        flit_count <= flit_count + 1;
        
        if (flit_count >= packet_length - 1) begin
            // Last flit was sent
            state <= IDLE;
            m_axis_tvalid <= 0;
            m_axis_tlast <= 0;
        end else begin
            // Send next flit - KEEP VALID HIGH!
            current_data <= current_data + 32'h1;
            m_axis_tdata <= current_data + 32'h1;
            m_axis_tlast <= (flit_count == packet_length - 2);
            m_axis_tvalid <= 1;  // KEEP VALID HIGH FOR NEXT FLIT
        end
    end
end
                
                default: state <= IDLE;
            endcase
        end
    end

endmodule