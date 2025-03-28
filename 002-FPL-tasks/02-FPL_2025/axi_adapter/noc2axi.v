
module noc_to_axis_adapter (
  input  wire        clk,
  input  wire        rst,
  
  // NoC Interface (38-bit: [37] valid, [36:32] ctrl, [31:0] data)
  input  wire [35:0] noc_in,
  output reg         noc_credit,
  
  // AXI-Stream Interface
  output reg         axis_tvalid,
  input  wire        axis_tready,
  output reg  [31:0] axis_tdata,
  output reg         axis_tlast
);

// Control signal extraction
wire        link_valid = noc_in[35];
wire [2:0]  flit_ctrl  = noc_in[34:32];
wire [31:0] flit_data  = noc_in[31:0];

wire        flit_valid = flit_ctrl[0];
wire        flit_head  = flit_ctrl[1];
wire        flit_tail  = flit_ctrl[2];
// State machine
// typedef enum {IDLE, WAIT_TAIL, SEND} state_t;
// state_t state;
localparam IDLE = 2'b10;
localparam WAIT_TAIL = 2'b11;
localparam SEND = 2'b01;
reg [1:0] state;

reg [31:0] tail_data;

always @(posedge clk or posedge rst) begin
  if (rst) begin
    state <= IDLE;
    axis_tvalid <= 0;
    axis_tdata <= 0;
    axis_tlast <= 1;  // Always single flit per packet
    noc_credit <= 1;
    tail_data <= 0;
  end else begin
    case (state)
      IDLE: begin
        axis_tvalid <= 0;
        if (flit_valid && flit_head) begin
          // Discard head flit, wait for tail
          state <= WAIT_TAIL;
          noc_credit <= 0;
        end
      end
      
      WAIT_TAIL: begin
        if (flit_valid && flit_tail) begin
          // Capture tail data
          tail_data <= flit_data;
          state <= SEND;
          axis_tvalid <= 1;
        end
      end
      
      SEND: begin
        if (axis_tready) begin
          // Transaction completed
          axis_tvalid <= 0;
          noc_credit <= 1;
          state <= IDLE;
        end
      end
    endcase
  end
end

// Continuous assignment for output data
always @(*) begin
  axis_tdata = tail_data;
end

endmodule