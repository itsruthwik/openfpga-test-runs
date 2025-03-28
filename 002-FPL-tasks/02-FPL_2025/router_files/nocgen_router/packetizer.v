module packetizer #(
    parameter DATA_WIDTH = 32,
    parameter VCH_WIDTH = 4,
    parameter TYPE_WIDTH = 2,
    parameter DST_WIDTH = 4,
    parameter SRC_WIDTH = 4,
    parameter FLIT_ID_WIDTH = 4,
    parameter MAX_PACKET_SIZE = 64      // Maximum packet length
) (
    input wire clk,
    input wire rst_n,

    // Packet configuration
    input wire [DST_WIDTH - 1:0] dst,
    input wire [SRC_WIDTH - 1:0] src_id,    // Source ID as an input instead of parameter
    input wire [VCH_WIDTH - 1:0] vch,
    input wire [5:0] len,               // Packet length (max 64)
    input wire [15:0] timestamp,        // For enqueue time
    input wire start,                   // Start signal to begin packet generation
    
    // Flow control signals
    input wire [1:0] ordy,              // Ready signals from router (per VCH)
    
    // Output signals to router
    output reg [DATA_WIDTH - 1:0] idata,
    output reg ivalid,
    output reg [VCH_WIDTH - 1:0] ivch,
    
    // Status signals
    output reg done,                    // Indicates packet has been fully sent
    output reg busy                     // Indicates packetizer is currently sending
);

    // Flit type definitions
    localparam TYPE_HEAD = 2'b00;
    localparam TYPE_DATA = 2'b01;
    localparam TYPE_TAIL = 2'b10;
    localparam TYPE_HEADTAIL = 2'b11;

    // Field positions within the flit
    localparam TYPE_MSB = DATA_WIDTH - 1;
    localparam TYPE_LSB = DATA_WIDTH - TYPE_WIDTH;
    localparam DST_MSB = TYPE_LSB - 1;
    localparam DST_LSB = DST_MSB - DST_WIDTH + 1;
    localparam SRC_MSB = DST_LSB - 1;
    localparam SRC_LSB = SRC_MSB - SRC_WIDTH + 1;
    localparam VCH_MSB = SRC_LSB - 1;
    localparam VCH_LSB = VCH_MSB - VCH_WIDTH + 1;
    localparam FLIT_ID_MSB = 15;
    localparam FLIT_ID_LSB = 12;
    localparam ENQUEUE_TIME_MSB = 31;
    localparam ENQUEUE_TIME_LSB = 16;

    // State machine states
    localparam IDLE = 2'b00;
    localparam INIT = 2'b01;
    localparam SEND = 2'b10;
    localparam WAIT = 2'b11;
    
    reg [1:0] state;
    reg [DATA_WIDTH - 1:0] packet [0:MAX_PACKET_SIZE-1];
    reg [5:0] flit_count;
    reg [5:0] packet_len;
    reg [VCH_WIDTH - 1:0] packet_vch;
    reg [SRC_WIDTH - 1:0] packet_src;
    
    // Packet construction state machine
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            state <= IDLE;
            flit_count <= 0;
            packet_len <= 0;
            packet_vch <= 0;
            packet_src <= 0;
            idata <= 0;
            ivalid <= 0;
            ivch <= 0;
            done <= 0;
            busy <= 0;
        end else begin
            case (state)
                IDLE: begin
                    if (start) begin
                        // Store parameters
                        packet_len <= len;
                        packet_vch <= vch;
                        packet_src <= src_id;  // Store the source ID input
                        
                        // Initialize packet
                        state <= INIT;
                        busy <= 1;
                        done <= 0;
                    end else begin
                        busy <= 0;
                        done <= 0;
                        ivalid <= 0;
                    end
                end
                
                INIT: begin
                    // Initialize all packet flits
                    if (packet_len == 1) begin
                        // Single flit packet (HEADTAIL)
                        packet[0] <= 0;
                        packet[0][TYPE_MSB:TYPE_LSB] <= TYPE_HEADTAIL;
                        packet[0][DST_MSB:DST_LSB] <= dst;
                        packet[0][SRC_MSB:SRC_LSB] <= packet_src;  // Use the stored source ID
                        packet[0][VCH_MSB:VCH_LSB] <= packet_vch;
                    end else begin
                        // Multi-flit packet
                        // Head flit
                        packet[0] <= 0;
                        packet[0][TYPE_MSB:TYPE_LSB] <= TYPE_HEAD;
                        packet[0][DST_MSB:DST_LSB] <= dst;
                        packet[0][SRC_MSB:SRC_LSB] <= packet_src;  // Use the stored source ID
                        packet[0][VCH_MSB:VCH_LSB] <= packet_vch;
                        
                        // Body and tail flits
                        for (integer i = 1; i < packet_len; i = i + 1) begin
                            packet[i] <= 0;
                            if (i == packet_len - 1)
                                packet[i][TYPE_MSB:TYPE_LSB] <= TYPE_TAIL;
                            else
                                packet[i][TYPE_MSB:TYPE_LSB] <= TYPE_DATA;
                                
                            packet[i][FLIT_ID_MSB:FLIT_ID_LSB] <= i;
                            packet[i][ENQUEUE_TIME_MSB:ENQUEUE_TIME_LSB] <= timestamp;
                        end
                    end
                    
                    flit_count <= 0;
                    state <= SEND;
                end
                
                SEND: begin
                    // Check if we need to wait for ready signal for head flit
                    if ((flit_count == 0 && ordy[packet_vch]) || flit_count > 0) begin
                        // Send the flit
                        idata <= packet[flit_count];
                        ivalid <= 1;
                        ivch <= packet_vch;
                        
                        // Move to next flit
                        if (flit_count < packet_len - 1) begin
                            flit_count <= flit_count + 1;
                        end else begin
                            // Last flit sent
                            state <= IDLE;
                            done <= 1;
                            busy <= 0;
                        end
                    end else begin
                        // Wait for ready signal for head flit
                        idata <= 0;
                        ivalid <= 0;
                        state <= WAIT;
                    end
                end
                
                WAIT: begin
                    // Wait for router to be ready
                    if (ordy[packet_vch]) begin
                        state <= SEND;
                    end else begin
                        ivalid <= 0;
                    end
                end
            endcase
        end
    end
endmodule