module depacketizer #(
    parameter DATA_WIDTH = 32,
    parameter VCH_WIDTH = 4,
    parameter TYPE_WIDTH = 2,
    parameter DST_WIDTH = 4,
    parameter SRC_WIDTH = 4,
    parameter FLIT_ID_WIDTH = 4,
    parameter MAX_PACKET_SIZE = 64,              // Maximum packet length
    parameter BUFFER_DEPTH = 8,                  // Buffer depth per virtual channel
    parameter NUM_VCH = 2,                       // Number of virtual channels
    parameter TIMEOUT_CYCLES = 100,              // Timeout cycles for incomplete packets
    parameter BUFFER_COUNT_WIDTH = $clog2(BUFFER_DEPTH+1),  // Buffer counter width
    parameter PKTLEN_P1 = 16                     // Maximum packet length + 1 (from define.h)
) (
    input wire clk,
    input wire rst_n,

    // Input signals from router
    input wire [DATA_WIDTH - 1:0] idata,         // Data from router
    input wire                    ivalid,        // Valid signal from routejt5
    input wire [VCH_WIDTH - 1:0]  ivch,          // Virtual channel from router
    
    // Flow control interface with router
    output wire [NUM_VCH-1:0]     ordy,          // Ready signals to router (buffer not full)
    output reg [NUM_VCH-1:0]      olck,          // Lock signals to router
    output reg [NUM_VCH-1:0]      iack,          // Acknowledgment back to router
    
    // Output extracted packet information
    output reg [DST_WIDTH - 1:0]  dst,           // Extracted destination
    output reg [SRC_WIDTH - 1:0]  src_id,        // Extracted source ID
    output reg [VCH_WIDTH - 1:0]  vch,           // Extracted virtual channel
    output reg [5:0]              len,           // Packet length (counted)
    output reg [15:0]             timestamp,     // Extracted timestamp
    
    // Payload data output
    output reg [DATA_WIDTH - 1:0] data_out,      // Current flit data
    output reg [FLIT_ID_WIDTH-1:0] flit_id,      // Current flit ID
    
    // Status signals
    output reg [NUM_VCH-1:0]      error,         // Error detected in packet (per VC)
    output reg                    head_valid,    // Head flit received
    output reg                    data_valid,    // Data flit received
    output reg                    tail_valid,    // Tail flit received
    output reg                    packet_done    // Complete packet received
);

    // Flit type definitions
    localparam TYPE_HEAD = 2'b00;
    localparam TYPE_DATA = 2'b01;
    localparam TYPE_TAIL = 2'b10;
    localparam TYPE_HEADTAIL = 2'b11;
    localparam TYPE_NONE = 2'b00;  // When not valid

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
    localparam IDLE     = 3'b000;
    localparam HEAD     = 3'b001;
    localparam BODY     = 3'b010;
    localparam TAIL     = 3'b011;
    localparam ERROR    = 3'b100;
    localparam TIMEOUT  = 3'b101;
    
    // Registers per virtual channel
    reg [2:0] state [NUM_VCH-1:0];                     // State per virtual channel
    reg [5:0] flit_count [NUM_VCH-1:0];                // Flit counter per virtual channel
    reg [NUM_VCH-1:0] vch_active;                      // Active virtual channels
    reg [7:0] timeout_counter [NUM_VCH-1:0];           // Timeout counters
    reg [NUM_VCH-1:0] ilck;                            // Input lock signals (for lock coordination)
    reg [NUM_VCH-1:0] iack_temp;                       // Temporary ack signals for coordination
    
    // Buffer management registers - Credit counter matching outputc.v
    reg [BUFFER_COUNT_WIDTH-1:0] credit_count [NUM_VCH-1:0]; // Credit counter per VC
    
    // Round-robin arbiter registers (declared outside procedures)
    reg [NUM_VCH-1:0] arb_mask;                        // Round-robin arbitration mask
    reg [NUM_VCH-1:0] next_arb_mask;                   // Next cycle's arbitration mask
    reg arb_found;                                     // Found flag for arbitration
    reg [VCH_WIDTH-1:0] current_vch;                   // Currently processing VC
    reg process_flit;                                  // Process current flit
    
    // Temporary storage for packet data
    reg [DATA_WIDTH-1:0] buffer [NUM_VCH-1:0][BUFFER_DEPTH-1:0];
    reg [BUFFER_COUNT_WIDTH-1:0] read_ptr [NUM_VCH-1:0];
    reg [BUFFER_COUNT_WIDTH-1:0] write_ptr [NUM_VCH-1:0];
    reg [BUFFER_COUNT_WIDTH-1:0] buffer_count [NUM_VCH-1:0]; // Buffer occupancy
    
    // Internal signals
    wire [TYPE_WIDTH-1:0] flit_type;                   // Current flit type
    wire [NUM_VCH-1:0] buffer_full;                    // Buffer full flags
    wire [NUM_VCH-1:0] buffer_empty;                   // Buffer empty flags
    
    // Extract flit type
    assign flit_type = ivalid ? idata[TYPE_MSB:TYPE_LSB] : TYPE_NONE;
    
    // Generate buffer status signals
    genvar i;
    generate
        for (i = 0; i < NUM_VCH; i = i + 1) begin: buffer_status
            // Buffer status flags
            assign buffer_full[i] = (buffer_count[i] >= BUFFER_DEPTH);
            assign buffer_empty[i] = (buffer_count[i] == 0);
            
            // Ready signal matches outputc.v using continuous assignment
            assign ordy[i] = ((BUFFER_DEPTH - credit_count[i]) >= PKTLEN_P1) ? 1'b1 : 1'b0;
        end
    endgenerate
    
    // 1. Credit counter and flow control logic - exact match with outputc.v
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            for (integer v = 0; v < NUM_VCH; v = v + 1) begin
                credit_count[v] <= 0;
            end
            iack <= 0;
        end
        else begin
            // First copy iack_temp to iack (actual output to router)
            iack <= iack_temp;
            
            for (integer v = 0; v < NUM_VCH; v = v + 1) begin
                // Credit counter logic matching outputc.v exactly
                if (iack[v] && ~(ivalid && ivch == v) && credit_count[v] != 0)
                    credit_count[v] <= credit_count[v] - 1;
                else if (~iack[v] && (ivalid && ivch == v))
                    credit_count[v] <= credit_count[v] + 1;
            end
        end
    end
    
    // 2. Lock handling logic - matching outputc.v
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            for (integer v = 0; v < NUM_VCH; v = v + 1) begin
                olck[v] <= 0;
                ilck[v] <= 0;
            end
        end
        else begin
            for (integer v = 0; v < NUM_VCH; v = v + 1) begin
                // Lock signal handling matching outputc.v
                if ((ivalid && ivch == v) || (process_flit && current_vch == v))
                    olck[v] <= 1'b1;
                else if (olck[v] && ~ilck[v])
                    olck[v] <= 1'b0;
            end
        end
    end
    
    // 3. Buffer input handling - stores incoming flits
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            for (integer v = 0; v < NUM_VCH; v = v + 1) begin
                buffer_count[v] <= 0;
                write_ptr[v] <= 0;
                iack_temp[v] <= 0;
            end
        end
        else begin
            // Clear acknowledgements by default
            iack_temp <= 0;
            
            // Process incoming flit if valid and within range
            if (ivalid && ivch < NUM_VCH) begin
                if (!buffer_full[ivch]) begin
                    // Accept the flit and store in buffer
                    iack_temp[ivch] <= 1'b1;
                    buffer[ivch][write_ptr[ivch]] <= idata;
                    write_ptr[ivch] <= (write_ptr[ivch] + 1) % BUFFER_DEPTH;
                    buffer_count[ivch] <= buffer_count[ivch] + 1;
                    
                    // Update flit type specific processing
                    case (flit_type)
                        TYPE_HEAD, TYPE_HEADTAIL: begin
                            // Set VC as active when we receive a head flit
                            vch_active[ivch] <= 1'b1;
                            ilck[ivch] <= 1'b1; // Acknowledge the lock
                        end
                    endcase
                end
                // No explicit else case needed - iack_temp is already 0
            end
        end
    end
    
    // 4. Round-robin arbitration - selects next VC to process
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            arb_mask <= 1;
            next_arb_mask <= 0;
            current_vch <= 0;
            process_flit <= 0;
        end
        else begin
            // Update arbitration mask for next cycle
            arb_mask <= next_arb_mask;
            
            // Default: no flit to process
            process_flit <= 0;
            arb_found <= 0;
            
            // First pass: Check VCs with mask priority
            for (integer v = 0; v < NUM_VCH; v = v + 1) begin
                if (!arb_found && vch_active[v] && arb_mask[v] && !buffer_empty[v]) begin
                    current_vch <= v[VCH_WIDTH-1:0];
                    process_flit <= 1'b1;
                    arb_found <= 1'b1;
                    
                    // Set next mask - clear bit for current VC, set next one
                    next_arb_mask <= {NUM_VCH{1'b0}};
                    next_arb_mask[(v+1) % NUM_VCH] <= 1'b1;
                end
            end
            
            // Second pass: If no match in priority mask, check all VCs
            if (!arb_found) begin
                for (integer v = 0; v < NUM_VCH; v = v + 1) begin
                    if (!arb_found && vch_active[v] && !buffer_empty[v]) begin
                        current_vch <= v[VCH_WIDTH-1:0];
                        process_flit <= 1'b1;
                        arb_found <= 1'b1;
                        
                        // Set next mask - clear bit for current VC, set next one
                        next_arb_mask <= {NUM_VCH{1'b0}};
                        next_arb_mask[(v+1) % NUM_VCH] <= 1'b1;
                    end
                end
            end
        end
    end
    
    // 5. Packet processing logic - handles depacketizing based on selected VC
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            for (integer v = 0; v < NUM_VCH; v = v + 1) begin
                state[v] <= IDLE;
                flit_count[v] <= 0;
                read_ptr[v] <= 0;
            end
            dst <= 0;
            src_id <= 0;
            vch <= 0;
            len <= 0;
            timestamp <= 0;
            data_out <= 0;
            flit_id <= 0;
            head_valid <= 0;
            data_valid <= 0;
            tail_valid <= 0;
            packet_done <= 0;
        end
        else begin
            // Default signal values for this cycle
            head_valid <= 0;
            data_valid <= 0;
            tail_valid <= 0;
            packet_done <= 0;
            
            // Process selected flit from current VC
            if (process_flit && !buffer_empty[current_vch]) begin
                // Safety check to ensure current_vch is in valid range
                if (current_vch < NUM_VCH) begin
                    // Get current flit type
                    case (buffer[current_vch][read_ptr[current_vch]][TYPE_MSB:TYPE_LSB])
                        TYPE_HEAD: begin
                            // Extract header information atomically
                            dst <= buffer[current_vch][read_ptr[current_vch]][DST_MSB:DST_LSB];
                            src_id <= buffer[current_vch][read_ptr[current_vch]][SRC_MSB:SRC_LSB];
                            vch <= buffer[current_vch][read_ptr[current_vch]][VCH_MSB:VCH_LSB];
                            data_out <= buffer[current_vch][read_ptr[current_vch]];
                            head_valid <= 1'b1;
                            flit_count[current_vch] <= 1;
                            
                            // Reset timeout
                            timeout_counter[current_vch] <= 0;
                        end
                        
                        TYPE_DATA: begin
                            // Extract data flit information atomically
                            data_out <= buffer[current_vch][read_ptr[current_vch]];
                            flit_id <= buffer[current_vch][read_ptr[current_vch]][FLIT_ID_MSB:FLIT_ID_LSB];
                            timestamp <= buffer[current_vch][read_ptr[current_vch]][ENQUEUE_TIME_MSB:ENQUEUE_TIME_LSB];
                            data_valid <= 1'b1;
                            flit_count[current_vch] <= flit_count[current_vch] + 1;
                            
                            // Reset timeout
                            timeout_counter[current_vch] <= 0;
                        end
                        
                        TYPE_TAIL: begin
                            // Extract tail flit information atomically
                            data_out <= buffer[current_vch][read_ptr[current_vch]];
                            flit_id <= buffer[current_vch][read_ptr[current_vch]][FLIT_ID_MSB:FLIT_ID_LSB];
                            timestamp <= buffer[current_vch][read_ptr[current_vch]][ENQUEUE_TIME_MSB:ENQUEUE_TIME_LSB];
                            tail_valid <= 1'b1;
                            packet_done <= 1'b1;
                            len <= flit_count[current_vch] + 1;
                            
                            // Packet complete, release VC
                            vch_active[current_vch] <= 1'b0;
                            ilck[current_vch] <= 1'b0;
                            
                            // Reset flit count for next packet
                            flit_count[current_vch] <= 0;
                        end
                        
                        TYPE_HEADTAIL: begin
                            // Extract headtail information atomically (single-flit packet)
                            dst <= buffer[current_vch][read_ptr[current_vch]][DST_MSB:DST_LSB];
                            src_id <= buffer[current_vch][read_ptr[current_vch]][SRC_MSB:SRC_LSB];
                            vch <= buffer[current_vch][read_ptr[current_vch]][VCH_MSB:VCH_LSB];
                            flit_id <= buffer[current_vch][read_ptr[current_vch]][FLIT_ID_MSB:FLIT_ID_LSB];
                            timestamp <= buffer[current_vch][read_ptr[current_vch]][ENQUEUE_TIME_MSB:ENQUEUE_TIME_LSB];
                            data_out <= buffer[current_vch][read_ptr[current_vch]];
                            
                            head_valid <= 1'b1;
                            tail_valid <= 1'b1;
                            packet_done <= 1'b1;
                            len <= 1;
                            
                            // Single-flit packet complete, release VC
                            vch_active[current_vch] <= 1'b0;
                            ilck[current_vch] <= 1'b0;
                        end
                        
                        default: begin
                            // Error case - unexpected flit type
                            error[current_vch] <= 1'b1;
                        end
                    endcase
                    
                    // Consume the flit from buffer
                    read_ptr[current_vch] <= (read_ptr[current_vch] + 1) % BUFFER_DEPTH;
                    buffer_count[current_vch] <= buffer_count[current_vch] - 1;
                end
            end
        end
    end
    
    // 6. Timeout logic - handles stalled packets
    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            for (integer v = 0; v < NUM_VCH; v = v + 1) begin
                timeout_counter[v] <= 0;
                error[v] <= 0;
            end
        end
        else begin
            // Timeout checking for all active VCs
            for (integer v = 0; v < NUM_VCH; v = v + 1) begin
                if (vch_active[v]) begin
                    if (buffer_empty[v]) begin
                        // Increment timeout when no data in buffer
                        timeout_counter[v] <= timeout_counter[v] + 1;
                        if (timeout_counter[v] >= TIMEOUT_CYCLES) begin
                            // Timeout occurred, clean up this VC
                            error[v] <= 1'b1;
                            vch_active[v] <= 1'b0;
                            ilck[v] <= 1'b0;
                            timeout_counter[v] <= 0;
                        end
                    end else begin
                        // Reset timeout when we have data
                        timeout_counter[v] <= 0;
                    end
                end else begin
                    // Clear error flag when VC inactive and not in use
                    error[v] <= 1'b0;
                    timeout_counter[v] <= 0;
                end
            end
        end
    end

endmodule