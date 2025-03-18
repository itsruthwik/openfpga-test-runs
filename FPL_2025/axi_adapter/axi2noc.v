
module axis_to_noc_adapter #(
    parameter DEST_WIDTH = 4
)(
    input  wire         clk,
    input  wire         rst,
    
    // AXI-Stream Interface
    input  wire         axis_tvalid,
    output reg          axis_tready,
    input  wire [31:0]  axis_tdata,
    input  wire [DEST_WIDTH-1:0] axis_tdest,
    
    // NoC Interface
    output reg  [35:0]  router_out_port,  // [35] valid, [34:32] ctrl, [31:0] data
    input  wire         flow_ctrl_in_op
);

// Flit control encoding
localparam HEAD_CTRL = 3'b110;  // valid=1, head=1, tail=0
localparam TAIL_CTRL = 3'b101;  // valid=1, head=0, tail=1

// State machine
// typedef enum {IDLE, SEND_HEAD, SEND_TAIL} state_t;
// state_t state;
localparam IDLE = 2'b10;
localparam SEND_HEAD = 2'b11;
localparam SEND_TAIL = 2'b01;
reg [1:0] state;
reg [31:0]  data_buffer;
reg [DEST_WIDTH-1:0] dest_buffer;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= IDLE;
        axis_tready <= 0;
        router_out_port <= 0;
        data_buffer <= 0;
        dest_buffer <= 0;
    end else begin
        case (state)
            IDLE: begin
                router_out_port[35] <= 0;  // Clear valid
                axis_tready <= 1;
                
                if (axis_tvalid && axis_tready) begin
                    // Capture data and destination
                    data_buffer <= axis_tdata;
                    dest_buffer <= axis_tdest;
                    state <= SEND_HEAD;
                    axis_tready <= 0;
                end
            end
            
            SEND_HEAD: begin
                if (flow_ctrl_in_op) begin
                    // Construct head flit: {4b dest, 3'b101, 25'b0}
                    router_out_port <= {
                        1'b1,           // link_valid
                        HEAD_CTRL,       // flit_ctrl
                        {dest_buffer, 3'b101, 25'b0}  // flit_data
                    };
                    state <= SEND_TAIL;
                end
            end
            
            SEND_TAIL: begin
                if (flow_ctrl_in_op) begin
                    // Send tail flit with actual data
                    router_out_port <= {
                        1'b1,           // link_valid
                        TAIL_CTRL,      // flit_ctrl
                        data_buffer     // flit_data
                    };
                    state <= IDLE;
                    axis_tready <= 1;
                end
            end
        endcase
        
        // Clear valid if no credit
        if (!flow_ctrl_in_op) begin
            router_out_port[35] <= 0;
        end
    end
end

endmodule