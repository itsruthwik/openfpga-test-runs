module axis_to_noc_adapter #(
    parameter DEST_WIDTH = 4,
    parameter AXIW = 32,
    parameter DEPTH = 8
)(
    input  wire         clk,
    input  wire         rst,
    
    // AXI-Stream Interface
    input  wire         axis_tvalid,
    output wire        axis_tready,
    input  wire [AXIW-1:0]  axis_tdata,
    input  wire [DEST_WIDTH-1:0] axis_tdest,
    
    // NoC Interface
    output reg  [35:0]  router_out_port,  // [35] link valid, [34:32] ctrl, [31:0] data
    input  wire         flow_ctrl_in_op
);

// Flit control encoding
localparam HEAD_CTRL = 3'b110;  // valid=1, head=1, tail=0
localparam TAIL_CTRL = 3'b101;  // valid=1, head=0, tail=1

// FIFO signals
wire data_fifo_full, data_fifo_empty;
wire dest_fifo_full, dest_fifo_empty;
wire [AXIW-1:0] data_fifo_dout;
wire [DEST_WIDTH-1:0] dest_fifo_dout;

// Control signals
wire wr_en;
reg rd_en;
reg [1:0] state;

// State encoding
localparam IDLE     = 2'b00;
localparam SEND_HEAD = 2'b01;
localparam SEND_TAIL = 2'b10;

// FIFO Instances
fifo #(
    .WIDTH(AXIW),
    .DEPTH(DEPTH))
data_fifo (
    .clk(clk),
    .rst(rst),
    .wr_en(wr_en),
    .din(axis_tdata),
    .rd_en(rd_en),
    .dout(data_fifo_dout),
    .full(data_fifo_full),
    .empty(data_fifo_empty)
);

fifo #(
    .WIDTH(DEST_WIDTH),
    .DEPTH(DEPTH))
dest_fifo (
    .clk(clk),
    .rst(rst),
    .wr_en(wr_en),
    .din(axis_tdest),
    .rd_en(rd_en),
    .dout(dest_fifo_dout),
    .full(dest_fifo_full),
    .empty(dest_fifo_empty)
);

// Write control
assign wr_en = axis_tvalid && axis_tready;
assign axis_tready = !(data_fifo_full || dest_fifo_full);

// Main state machine
always @(posedge clk or posedge rst) begin
    if (rst) begin
        state <= IDLE;
        router_out_port <= 0;
        rd_en <= 0;
    end else begin
        case (state)
            IDLE: begin
                router_out_port[35] <= 0;  // Clear valid
                rd_en <= 0;
                
                if (flow_ctrl_in_op && !data_fifo_empty && !dest_fifo_empty) begin
                    // Start new transaction
                    rd_en <= 1;
                    state <= SEND_HEAD;
                end
            end
            
            SEND_HEAD: begin
                rd_en <= 0;
                if (flow_ctrl_in_op) begin
                    // Construct head flit
                    router_out_port <= {
                        1'b1,          // link_valid
                        HEAD_CTRL,     // flit_ctrl
                        {dest_fifo_dout, 3'b101, 25'b0}  // flit_data
                    };
                    state <= SEND_TAIL;
                end
            end
            
            SEND_TAIL: begin
                if (flow_ctrl_in_op) begin
                    // Send tail flit
                    router_out_port <= {
                        1'b1,          // link_valid
                        TAIL_CTRL,     // flit_ctrl
                        data_fifo_dout // flit_data
                    };
                    state <= IDLE;
                end
                
                if (!flow_ctrl_in_op) begin
                    router_out_port[35] <= 0;
                end
            end
        endcase
        
        // Clear valid if credit withdrawn
        if (!flow_ctrl_in_op) begin
            router_out_port[35] <= 0;
        end
    end
end

endmodule

module fifo #(
  parameter WIDTH = 32,
  parameter DEPTH = 8
)(
  input wire clk,
  input wire rst,
  input wire wr_en,
  input wire [WIDTH-1:0] din,
  input wire rd_en,
  output wire [WIDTH-1:0] dout,
  output wire full,
  output wire empty
);

  reg [WIDTH-1:0] mem [0:DEPTH-1];
  reg [$clog2(DEPTH)-1:0] wr_ptr;
  reg [$clog2(DEPTH)-1:0] rd_ptr;
  reg [$clog2(DEPTH):0] count;

  integer  i;

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      wr_ptr <= 0;
      rd_ptr <= 0;
      count <= 0;
      for (i = 0; i < DEPTH; i = i + 1)
        mem[i] <= 0;
    end else begin
      if (wr_en && !full) begin
        mem[wr_ptr] <= din;
        wr_ptr <= wr_ptr + 1;
      end
      if (rd_en && !empty) begin
        rd_ptr <= rd_ptr + 1;
      end
      count <= count + (wr_en && !full) - (rd_en && !empty);
    end
  end

  assign full = (count == DEPTH);
  assign empty = (count == 0);
  assign dout = mem[rd_ptr];

endmodule

