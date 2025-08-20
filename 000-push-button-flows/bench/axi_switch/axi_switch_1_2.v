





module axis_switch_1_to_2 (
    input clk,
    input rst,

    // axis_in_0  input AXI Stream interface  
    input     [127:0]   axis_in_0_tdata,
    input               axis_in_0_tvalid,
    input     [3:0]     axis_in_0_tdest,
    input     [1:0]     axis_in_0_tid,
    output reg          axis_in_0_tready,
    // axis_out_0  output AXI Stream interface  
    output reg [127:0]  axis_out_0_tdata,
    output reg          axis_out_0_tvalid,
    output reg [3:0]    axis_out_0_tdest,
    output reg [1:0]    axis_out_0_tid,
    input               axis_out_0_tready,

    // axis_in_1  input AXI Stream interface  
    input     [127:0]   axis_in_1_tdata,
    input               axis_in_1_tvalid,
    input     [3:0]     axis_in_1_tdest,
    input     [1:0]     axis_in_1_tid,
    output reg          axis_in_1_tready,
    // axis_out_1  output AXI Stream interface  
    output reg [127:0]  axis_out_1_tdata,
    output reg          axis_out_1_tvalid,
    output reg [3:0]    axis_out_1_tdest,
    output reg [1:0]    axis_out_1_tid,
    input               axis_out_1_tready,

    // axis_in_2  input AXI Stream interface  
    input     [127:0]   axis_in_2_tdata,
    input               axis_in_2_tvalid,
    input     [3:0]     axis_in_2_tdest,
    input     [1:0]     axis_in_2_tid,
    output reg          axis_in_2_tready,
    // axis_out_2  output AXI Stream interface  
    output reg [127:0]  axis_out_2_tdata,
    output reg          axis_out_2_tvalid,
    output reg [3:0]    axis_out_2_tdest,
    output reg [1:0]    axis_out_2_tid,
    input               axis_out_2_tready

);

//Ready signals for inputs
always @(*) begin
    axis_in_0_tready = 1'b0; // Default to not ready
    if (axis_in_0_tvalid && axis_in_0_tdest < 3) begin
        case (axis_in_0_tdest)
                0: axis_in_0_tready = axis_out_0_tready;
                1: axis_in_0_tready = axis_out_1_tready;
                2: axis_in_0_tready = axis_out_2_tready;
            default: axis_in_0_tready = 1'b0; // No valid output port
        endcase        
    end
    axis_in_1_tready = 1'b0; // Default to not ready
    if (axis_in_1_tvalid && axis_in_1_tdest < 3) begin
        case (axis_in_1_tdest)
                0: axis_in_1_tready = axis_out_0_tready;
                1: axis_in_1_tready = axis_out_1_tready;
                2: axis_in_1_tready = axis_out_2_tready;
            default: axis_in_1_tready = 1'b0; // No valid output port
        endcase        
    end
    axis_in_2_tready = 1'b0; // Default to not ready
    if (axis_in_2_tvalid && axis_in_2_tdest < 3) begin
        case (axis_in_2_tdest)
                0: axis_in_2_tready = axis_out_0_tready;
                1: axis_in_2_tready = axis_out_1_tready;
                2: axis_in_2_tready = axis_out_2_tready;
            default: axis_in_2_tready = 1'b0; // No valid output port
        endcase        
    end
end


// Output 0 handling
always @(*) begin    
    if (axis_in_0_tdest == 0) begin
        // Connect input port 0 to output port 0
        axis_out_0_tdata = axis_in_0_tdata;
        axis_out_0_tvalid = axis_in_0_tvalid;
        axis_out_0_tdest = axis_in_0_tdest;
        axis_out_0_tid = axis_in_0_tid;
    end else
    if (axis_in_1_tdest == 0) begin
        // Connect input port 1 to output port 0
        axis_out_0_tdata = axis_in_1_tdata;
        axis_out_0_tvalid = axis_in_1_tvalid;
        axis_out_0_tdest = axis_in_1_tdest;
        axis_out_0_tid = axis_in_1_tid;
    end else
    if (axis_in_2_tdest == 0) begin
        // Connect input port 2 to output port 0
        axis_out_0_tdata = axis_in_2_tdata;
        axis_out_0_tvalid = axis_in_2_tvalid;
        axis_out_0_tdest = axis_in_2_tdest;
        axis_out_0_tid = axis_in_2_tid;
    end else
    begin 
        // Default: no valid data
        axis_out_0_tdata = {128{1'b0}};
        axis_out_0_tvalid = 1'b0;
        axis_out_0_tdest = {4{1'b0}};
        axis_out_0_tid = {2{1'b0}};
    end
end
// Output 1 handling
always @(*) begin    
    if (axis_in_0_tdest == 1) begin
        // Connect input port 0 to output port 1
        axis_out_1_tdata = axis_in_0_tdata;
        axis_out_1_tvalid = axis_in_0_tvalid;
        axis_out_1_tdest = axis_in_0_tdest;
        axis_out_1_tid = axis_in_0_tid;
    end else
    if (axis_in_1_tdest == 1) begin
        // Connect input port 1 to output port 1
        axis_out_1_tdata = axis_in_1_tdata;
        axis_out_1_tvalid = axis_in_1_tvalid;
        axis_out_1_tdest = axis_in_1_tdest;
        axis_out_1_tid = axis_in_1_tid;
    end else
    if (axis_in_2_tdest == 1) begin
        // Connect input port 2 to output port 1
        axis_out_1_tdata = axis_in_2_tdata;
        axis_out_1_tvalid = axis_in_2_tvalid;
        axis_out_1_tdest = axis_in_2_tdest;
        axis_out_1_tid = axis_in_2_tid;
    end else
    begin 
        // Default: no valid data
        axis_out_1_tdata = {128{1'b0}};
        axis_out_1_tvalid = 1'b0;
        axis_out_1_tdest = {4{1'b0}};
        axis_out_1_tid = {2{1'b0}};
    end
end
// Output 2 handling
always @(*) begin    
    if (axis_in_0_tdest == 2) begin
        // Connect input port 0 to output port 2
        axis_out_2_tdata = axis_in_0_tdata;
        axis_out_2_tvalid = axis_in_0_tvalid;
        axis_out_2_tdest = axis_in_0_tdest;
        axis_out_2_tid = axis_in_0_tid;
    end else
    if (axis_in_1_tdest == 2) begin
        // Connect input port 1 to output port 2
        axis_out_2_tdata = axis_in_1_tdata;
        axis_out_2_tvalid = axis_in_1_tvalid;
        axis_out_2_tdest = axis_in_1_tdest;
        axis_out_2_tid = axis_in_1_tid;
    end else
    if (axis_in_2_tdest == 2) begin
        // Connect input port 2 to output port 2
        axis_out_2_tdata = axis_in_2_tdata;
        axis_out_2_tvalid = axis_in_2_tvalid;
        axis_out_2_tdest = axis_in_2_tdest;
        axis_out_2_tid = axis_in_2_tid;
    end else
    begin 
        // Default: no valid data
        axis_out_2_tdata = {128{1'b0}};
        axis_out_2_tvalid = 1'b0;
        axis_out_2_tdest = {4{1'b0}};
        axis_out_2_tid = {2{1'b0}};
    end
end


endmodule
