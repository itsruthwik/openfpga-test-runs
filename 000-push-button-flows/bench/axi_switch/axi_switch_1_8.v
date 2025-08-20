





module axis_switch_1_to_8 (
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
    input               axis_out_2_tready,

    // axis_in_3  input AXI Stream interface  
    input     [127:0]   axis_in_3_tdata,
    input               axis_in_3_tvalid,
    input     [3:0]     axis_in_3_tdest,
    input     [1:0]     axis_in_3_tid,
    output reg          axis_in_3_tready,
    // axis_out_3  output AXI Stream interface  
    output reg [127:0]  axis_out_3_tdata,
    output reg          axis_out_3_tvalid,
    output reg [3:0]    axis_out_3_tdest,
    output reg [1:0]    axis_out_3_tid,
    input               axis_out_3_tready,

    // axis_in_4  input AXI Stream interface  
    input     [127:0]   axis_in_4_tdata,
    input               axis_in_4_tvalid,
    input     [3:0]     axis_in_4_tdest,
    input     [1:0]     axis_in_4_tid,
    output reg          axis_in_4_tready,
    // axis_out_4  output AXI Stream interface  
    output reg [127:0]  axis_out_4_tdata,
    output reg          axis_out_4_tvalid,
    output reg [3:0]    axis_out_4_tdest,
    output reg [1:0]    axis_out_4_tid,
    input               axis_out_4_tready,

    // axis_in_5  input AXI Stream interface  
    input     [127:0]   axis_in_5_tdata,
    input               axis_in_5_tvalid,
    input     [3:0]     axis_in_5_tdest,
    input     [1:0]     axis_in_5_tid,
    output reg          axis_in_5_tready,
    // axis_out_5  output AXI Stream interface  
    output reg [127:0]  axis_out_5_tdata,
    output reg          axis_out_5_tvalid,
    output reg [3:0]    axis_out_5_tdest,
    output reg [1:0]    axis_out_5_tid,
    input               axis_out_5_tready,

    // axis_in_6  input AXI Stream interface  
    input     [127:0]   axis_in_6_tdata,
    input               axis_in_6_tvalid,
    input     [3:0]     axis_in_6_tdest,
    input     [1:0]     axis_in_6_tid,
    output reg          axis_in_6_tready,
    // axis_out_6  output AXI Stream interface  
    output reg [127:0]  axis_out_6_tdata,
    output reg          axis_out_6_tvalid,
    output reg [3:0]    axis_out_6_tdest,
    output reg [1:0]    axis_out_6_tid,
    input               axis_out_6_tready,

    // axis_in_7  input AXI Stream interface  
    input     [127:0]   axis_in_7_tdata,
    input               axis_in_7_tvalid,
    input     [3:0]     axis_in_7_tdest,
    input     [1:0]     axis_in_7_tid,
    output reg          axis_in_7_tready,
    // axis_out_7  output AXI Stream interface  
    output reg [127:0]  axis_out_7_tdata,
    output reg          axis_out_7_tvalid,
    output reg [3:0]    axis_out_7_tdest,
    output reg [1:0]    axis_out_7_tid,
    input               axis_out_7_tready,

    // axis_in_8  input AXI Stream interface  
    input     [127:0]   axis_in_8_tdata,
    input               axis_in_8_tvalid,
    input     [3:0]     axis_in_8_tdest,
    input     [1:0]     axis_in_8_tid,
    output reg          axis_in_8_tready,
    // axis_out_8  output AXI Stream interface  
    output reg [127:0]  axis_out_8_tdata,
    output reg          axis_out_8_tvalid,
    output reg [3:0]    axis_out_8_tdest,
    output reg [1:0]    axis_out_8_tid,
    input               axis_out_8_tready

);

//Ready signals for inputs
always @(*) begin
    axis_in_0_tready = 1'b0; // Default to not ready
    if (axis_in_0_tvalid && axis_in_0_tdest < 9) begin
        case (axis_in_0_tdest)
                0: axis_in_0_tready = axis_out_0_tready;
                1: axis_in_0_tready = axis_out_1_tready;
                2: axis_in_0_tready = axis_out_2_tready;
                3: axis_in_0_tready = axis_out_3_tready;
                4: axis_in_0_tready = axis_out_4_tready;
                5: axis_in_0_tready = axis_out_5_tready;
                6: axis_in_0_tready = axis_out_6_tready;
                7: axis_in_0_tready = axis_out_7_tready;
                8: axis_in_0_tready = axis_out_8_tready;
            default: axis_in_0_tready = 1'b0; // No valid output port
        endcase        
    end
    axis_in_1_tready = 1'b0; // Default to not ready
    if (axis_in_1_tvalid && axis_in_1_tdest < 9) begin
        case (axis_in_1_tdest)
                0: axis_in_1_tready = axis_out_0_tready;
                1: axis_in_1_tready = axis_out_1_tready;
                2: axis_in_1_tready = axis_out_2_tready;
                3: axis_in_1_tready = axis_out_3_tready;
                4: axis_in_1_tready = axis_out_4_tready;
                5: axis_in_1_tready = axis_out_5_tready;
                6: axis_in_1_tready = axis_out_6_tready;
                7: axis_in_1_tready = axis_out_7_tready;
                8: axis_in_1_tready = axis_out_8_tready;
            default: axis_in_1_tready = 1'b0; // No valid output port
        endcase        
    end
    axis_in_2_tready = 1'b0; // Default to not ready
    if (axis_in_2_tvalid && axis_in_2_tdest < 9) begin
        case (axis_in_2_tdest)
                0: axis_in_2_tready = axis_out_0_tready;
                1: axis_in_2_tready = axis_out_1_tready;
                2: axis_in_2_tready = axis_out_2_tready;
                3: axis_in_2_tready = axis_out_3_tready;
                4: axis_in_2_tready = axis_out_4_tready;
                5: axis_in_2_tready = axis_out_5_tready;
                6: axis_in_2_tready = axis_out_6_tready;
                7: axis_in_2_tready = axis_out_7_tready;
                8: axis_in_2_tready = axis_out_8_tready;
            default: axis_in_2_tready = 1'b0; // No valid output port
        endcase        
    end
    axis_in_3_tready = 1'b0; // Default to not ready
    if (axis_in_3_tvalid && axis_in_3_tdest < 9) begin
        case (axis_in_3_tdest)
                0: axis_in_3_tready = axis_out_0_tready;
                1: axis_in_3_tready = axis_out_1_tready;
                2: axis_in_3_tready = axis_out_2_tready;
                3: axis_in_3_tready = axis_out_3_tready;
                4: axis_in_3_tready = axis_out_4_tready;
                5: axis_in_3_tready = axis_out_5_tready;
                6: axis_in_3_tready = axis_out_6_tready;
                7: axis_in_3_tready = axis_out_7_tready;
                8: axis_in_3_tready = axis_out_8_tready;
            default: axis_in_3_tready = 1'b0; // No valid output port
        endcase        
    end
    axis_in_4_tready = 1'b0; // Default to not ready
    if (axis_in_4_tvalid && axis_in_4_tdest < 9) begin
        case (axis_in_4_tdest)
                0: axis_in_4_tready = axis_out_0_tready;
                1: axis_in_4_tready = axis_out_1_tready;
                2: axis_in_4_tready = axis_out_2_tready;
                3: axis_in_4_tready = axis_out_3_tready;
                4: axis_in_4_tready = axis_out_4_tready;
                5: axis_in_4_tready = axis_out_5_tready;
                6: axis_in_4_tready = axis_out_6_tready;
                7: axis_in_4_tready = axis_out_7_tready;
                8: axis_in_4_tready = axis_out_8_tready;
            default: axis_in_4_tready = 1'b0; // No valid output port
        endcase        
    end
    axis_in_5_tready = 1'b0; // Default to not ready
    if (axis_in_5_tvalid && axis_in_5_tdest < 9) begin
        case (axis_in_5_tdest)
                0: axis_in_5_tready = axis_out_0_tready;
                1: axis_in_5_tready = axis_out_1_tready;
                2: axis_in_5_tready = axis_out_2_tready;
                3: axis_in_5_tready = axis_out_3_tready;
                4: axis_in_5_tready = axis_out_4_tready;
                5: axis_in_5_tready = axis_out_5_tready;
                6: axis_in_5_tready = axis_out_6_tready;
                7: axis_in_5_tready = axis_out_7_tready;
                8: axis_in_5_tready = axis_out_8_tready;
            default: axis_in_5_tready = 1'b0; // No valid output port
        endcase        
    end
    axis_in_6_tready = 1'b0; // Default to not ready
    if (axis_in_6_tvalid && axis_in_6_tdest < 9) begin
        case (axis_in_6_tdest)
                0: axis_in_6_tready = axis_out_0_tready;
                1: axis_in_6_tready = axis_out_1_tready;
                2: axis_in_6_tready = axis_out_2_tready;
                3: axis_in_6_tready = axis_out_3_tready;
                4: axis_in_6_tready = axis_out_4_tready;
                5: axis_in_6_tready = axis_out_5_tready;
                6: axis_in_6_tready = axis_out_6_tready;
                7: axis_in_6_tready = axis_out_7_tready;
                8: axis_in_6_tready = axis_out_8_tready;
            default: axis_in_6_tready = 1'b0; // No valid output port
        endcase        
    end
    axis_in_7_tready = 1'b0; // Default to not ready
    if (axis_in_7_tvalid && axis_in_7_tdest < 9) begin
        case (axis_in_7_tdest)
                0: axis_in_7_tready = axis_out_0_tready;
                1: axis_in_7_tready = axis_out_1_tready;
                2: axis_in_7_tready = axis_out_2_tready;
                3: axis_in_7_tready = axis_out_3_tready;
                4: axis_in_7_tready = axis_out_4_tready;
                5: axis_in_7_tready = axis_out_5_tready;
                6: axis_in_7_tready = axis_out_6_tready;
                7: axis_in_7_tready = axis_out_7_tready;
                8: axis_in_7_tready = axis_out_8_tready;
            default: axis_in_7_tready = 1'b0; // No valid output port
        endcase        
    end
    axis_in_8_tready = 1'b0; // Default to not ready
    if (axis_in_8_tvalid && axis_in_8_tdest < 9) begin
        case (axis_in_8_tdest)
                0: axis_in_8_tready = axis_out_0_tready;
                1: axis_in_8_tready = axis_out_1_tready;
                2: axis_in_8_tready = axis_out_2_tready;
                3: axis_in_8_tready = axis_out_3_tready;
                4: axis_in_8_tready = axis_out_4_tready;
                5: axis_in_8_tready = axis_out_5_tready;
                6: axis_in_8_tready = axis_out_6_tready;
                7: axis_in_8_tready = axis_out_7_tready;
                8: axis_in_8_tready = axis_out_8_tready;
            default: axis_in_8_tready = 1'b0; // No valid output port
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
    if (axis_in_3_tdest == 0) begin
        // Connect input port 3 to output port 0
        axis_out_0_tdata = axis_in_3_tdata;
        axis_out_0_tvalid = axis_in_3_tvalid;
        axis_out_0_tdest = axis_in_3_tdest;
        axis_out_0_tid = axis_in_3_tid;
    end else
    if (axis_in_4_tdest == 0) begin
        // Connect input port 4 to output port 0
        axis_out_0_tdata = axis_in_4_tdata;
        axis_out_0_tvalid = axis_in_4_tvalid;
        axis_out_0_tdest = axis_in_4_tdest;
        axis_out_0_tid = axis_in_4_tid;
    end else
    if (axis_in_5_tdest == 0) begin
        // Connect input port 5 to output port 0
        axis_out_0_tdata = axis_in_5_tdata;
        axis_out_0_tvalid = axis_in_5_tvalid;
        axis_out_0_tdest = axis_in_5_tdest;
        axis_out_0_tid = axis_in_5_tid;
    end else
    if (axis_in_6_tdest == 0) begin
        // Connect input port 6 to output port 0
        axis_out_0_tdata = axis_in_6_tdata;
        axis_out_0_tvalid = axis_in_6_tvalid;
        axis_out_0_tdest = axis_in_6_tdest;
        axis_out_0_tid = axis_in_6_tid;
    end else
    if (axis_in_7_tdest == 0) begin
        // Connect input port 7 to output port 0
        axis_out_0_tdata = axis_in_7_tdata;
        axis_out_0_tvalid = axis_in_7_tvalid;
        axis_out_0_tdest = axis_in_7_tdest;
        axis_out_0_tid = axis_in_7_tid;
    end else
    if (axis_in_8_tdest == 0) begin
        // Connect input port 8 to output port 0
        axis_out_0_tdata = axis_in_8_tdata;
        axis_out_0_tvalid = axis_in_8_tvalid;
        axis_out_0_tdest = axis_in_8_tdest;
        axis_out_0_tid = axis_in_8_tid;
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
    if (axis_in_3_tdest == 1) begin
        // Connect input port 3 to output port 1
        axis_out_1_tdata = axis_in_3_tdata;
        axis_out_1_tvalid = axis_in_3_tvalid;
        axis_out_1_tdest = axis_in_3_tdest;
        axis_out_1_tid = axis_in_3_tid;
    end else
    if (axis_in_4_tdest == 1) begin
        // Connect input port 4 to output port 1
        axis_out_1_tdata = axis_in_4_tdata;
        axis_out_1_tvalid = axis_in_4_tvalid;
        axis_out_1_tdest = axis_in_4_tdest;
        axis_out_1_tid = axis_in_4_tid;
    end else
    if (axis_in_5_tdest == 1) begin
        // Connect input port 5 to output port 1
        axis_out_1_tdata = axis_in_5_tdata;
        axis_out_1_tvalid = axis_in_5_tvalid;
        axis_out_1_tdest = axis_in_5_tdest;
        axis_out_1_tid = axis_in_5_tid;
    end else
    if (axis_in_6_tdest == 1) begin
        // Connect input port 6 to output port 1
        axis_out_1_tdata = axis_in_6_tdata;
        axis_out_1_tvalid = axis_in_6_tvalid;
        axis_out_1_tdest = axis_in_6_tdest;
        axis_out_1_tid = axis_in_6_tid;
    end else
    if (axis_in_7_tdest == 1) begin
        // Connect input port 7 to output port 1
        axis_out_1_tdata = axis_in_7_tdata;
        axis_out_1_tvalid = axis_in_7_tvalid;
        axis_out_1_tdest = axis_in_7_tdest;
        axis_out_1_tid = axis_in_7_tid;
    end else
    if (axis_in_8_tdest == 1) begin
        // Connect input port 8 to output port 1
        axis_out_1_tdata = axis_in_8_tdata;
        axis_out_1_tvalid = axis_in_8_tvalid;
        axis_out_1_tdest = axis_in_8_tdest;
        axis_out_1_tid = axis_in_8_tid;
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
    if (axis_in_3_tdest == 2) begin
        // Connect input port 3 to output port 2
        axis_out_2_tdata = axis_in_3_tdata;
        axis_out_2_tvalid = axis_in_3_tvalid;
        axis_out_2_tdest = axis_in_3_tdest;
        axis_out_2_tid = axis_in_3_tid;
    end else
    if (axis_in_4_tdest == 2) begin
        // Connect input port 4 to output port 2
        axis_out_2_tdata = axis_in_4_tdata;
        axis_out_2_tvalid = axis_in_4_tvalid;
        axis_out_2_tdest = axis_in_4_tdest;
        axis_out_2_tid = axis_in_4_tid;
    end else
    if (axis_in_5_tdest == 2) begin
        // Connect input port 5 to output port 2
        axis_out_2_tdata = axis_in_5_tdata;
        axis_out_2_tvalid = axis_in_5_tvalid;
        axis_out_2_tdest = axis_in_5_tdest;
        axis_out_2_tid = axis_in_5_tid;
    end else
    if (axis_in_6_tdest == 2) begin
        // Connect input port 6 to output port 2
        axis_out_2_tdata = axis_in_6_tdata;
        axis_out_2_tvalid = axis_in_6_tvalid;
        axis_out_2_tdest = axis_in_6_tdest;
        axis_out_2_tid = axis_in_6_tid;
    end else
    if (axis_in_7_tdest == 2) begin
        // Connect input port 7 to output port 2
        axis_out_2_tdata = axis_in_7_tdata;
        axis_out_2_tvalid = axis_in_7_tvalid;
        axis_out_2_tdest = axis_in_7_tdest;
        axis_out_2_tid = axis_in_7_tid;
    end else
    if (axis_in_8_tdest == 2) begin
        // Connect input port 8 to output port 2
        axis_out_2_tdata = axis_in_8_tdata;
        axis_out_2_tvalid = axis_in_8_tvalid;
        axis_out_2_tdest = axis_in_8_tdest;
        axis_out_2_tid = axis_in_8_tid;
    end else
    begin 
        // Default: no valid data
        axis_out_2_tdata = {128{1'b0}};
        axis_out_2_tvalid = 1'b0;
        axis_out_2_tdest = {4{1'b0}};
        axis_out_2_tid = {2{1'b0}};
    end
end
// Output 3 handling
always @(*) begin    
    if (axis_in_0_tdest == 3) begin
        // Connect input port 0 to output port 3
        axis_out_3_tdata = axis_in_0_tdata;
        axis_out_3_tvalid = axis_in_0_tvalid;
        axis_out_3_tdest = axis_in_0_tdest;
        axis_out_3_tid = axis_in_0_tid;
    end else
    if (axis_in_1_tdest == 3) begin
        // Connect input port 1 to output port 3
        axis_out_3_tdata = axis_in_1_tdata;
        axis_out_3_tvalid = axis_in_1_tvalid;
        axis_out_3_tdest = axis_in_1_tdest;
        axis_out_3_tid = axis_in_1_tid;
    end else
    if (axis_in_2_tdest == 3) begin
        // Connect input port 2 to output port 3
        axis_out_3_tdata = axis_in_2_tdata;
        axis_out_3_tvalid = axis_in_2_tvalid;
        axis_out_3_tdest = axis_in_2_tdest;
        axis_out_3_tid = axis_in_2_tid;
    end else
    if (axis_in_3_tdest == 3) begin
        // Connect input port 3 to output port 3
        axis_out_3_tdata = axis_in_3_tdata;
        axis_out_3_tvalid = axis_in_3_tvalid;
        axis_out_3_tdest = axis_in_3_tdest;
        axis_out_3_tid = axis_in_3_tid;
    end else
    if (axis_in_4_tdest == 3) begin
        // Connect input port 4 to output port 3
        axis_out_3_tdata = axis_in_4_tdata;
        axis_out_3_tvalid = axis_in_4_tvalid;
        axis_out_3_tdest = axis_in_4_tdest;
        axis_out_3_tid = axis_in_4_tid;
    end else
    if (axis_in_5_tdest == 3) begin
        // Connect input port 5 to output port 3
        axis_out_3_tdata = axis_in_5_tdata;
        axis_out_3_tvalid = axis_in_5_tvalid;
        axis_out_3_tdest = axis_in_5_tdest;
        axis_out_3_tid = axis_in_5_tid;
    end else
    if (axis_in_6_tdest == 3) begin
        // Connect input port 6 to output port 3
        axis_out_3_tdata = axis_in_6_tdata;
        axis_out_3_tvalid = axis_in_6_tvalid;
        axis_out_3_tdest = axis_in_6_tdest;
        axis_out_3_tid = axis_in_6_tid;
    end else
    if (axis_in_7_tdest == 3) begin
        // Connect input port 7 to output port 3
        axis_out_3_tdata = axis_in_7_tdata;
        axis_out_3_tvalid = axis_in_7_tvalid;
        axis_out_3_tdest = axis_in_7_tdest;
        axis_out_3_tid = axis_in_7_tid;
    end else
    if (axis_in_8_tdest == 3) begin
        // Connect input port 8 to output port 3
        axis_out_3_tdata = axis_in_8_tdata;
        axis_out_3_tvalid = axis_in_8_tvalid;
        axis_out_3_tdest = axis_in_8_tdest;
        axis_out_3_tid = axis_in_8_tid;
    end else
    begin 
        // Default: no valid data
        axis_out_3_tdata = {128{1'b0}};
        axis_out_3_tvalid = 1'b0;
        axis_out_3_tdest = {4{1'b0}};
        axis_out_3_tid = {2{1'b0}};
    end
end
// Output 4 handling
always @(*) begin    
    if (axis_in_0_tdest == 4) begin
        // Connect input port 0 to output port 4
        axis_out_4_tdata = axis_in_0_tdata;
        axis_out_4_tvalid = axis_in_0_tvalid;
        axis_out_4_tdest = axis_in_0_tdest;
        axis_out_4_tid = axis_in_0_tid;
    end else
    if (axis_in_1_tdest == 4) begin
        // Connect input port 1 to output port 4
        axis_out_4_tdata = axis_in_1_tdata;
        axis_out_4_tvalid = axis_in_1_tvalid;
        axis_out_4_tdest = axis_in_1_tdest;
        axis_out_4_tid = axis_in_1_tid;
    end else
    if (axis_in_2_tdest == 4) begin
        // Connect input port 2 to output port 4
        axis_out_4_tdata = axis_in_2_tdata;
        axis_out_4_tvalid = axis_in_2_tvalid;
        axis_out_4_tdest = axis_in_2_tdest;
        axis_out_4_tid = axis_in_2_tid;
    end else
    if (axis_in_3_tdest == 4) begin
        // Connect input port 3 to output port 4
        axis_out_4_tdata = axis_in_3_tdata;
        axis_out_4_tvalid = axis_in_3_tvalid;
        axis_out_4_tdest = axis_in_3_tdest;
        axis_out_4_tid = axis_in_3_tid;
    end else
    if (axis_in_4_tdest == 4) begin
        // Connect input port 4 to output port 4
        axis_out_4_tdata = axis_in_4_tdata;
        axis_out_4_tvalid = axis_in_4_tvalid;
        axis_out_4_tdest = axis_in_4_tdest;
        axis_out_4_tid = axis_in_4_tid;
    end else
    if (axis_in_5_tdest == 4) begin
        // Connect input port 5 to output port 4
        axis_out_4_tdata = axis_in_5_tdata;
        axis_out_4_tvalid = axis_in_5_tvalid;
        axis_out_4_tdest = axis_in_5_tdest;
        axis_out_4_tid = axis_in_5_tid;
    end else
    if (axis_in_6_tdest == 4) begin
        // Connect input port 6 to output port 4
        axis_out_4_tdata = axis_in_6_tdata;
        axis_out_4_tvalid = axis_in_6_tvalid;
        axis_out_4_tdest = axis_in_6_tdest;
        axis_out_4_tid = axis_in_6_tid;
    end else
    if (axis_in_7_tdest == 4) begin
        // Connect input port 7 to output port 4
        axis_out_4_tdata = axis_in_7_tdata;
        axis_out_4_tvalid = axis_in_7_tvalid;
        axis_out_4_tdest = axis_in_7_tdest;
        axis_out_4_tid = axis_in_7_tid;
    end else
    if (axis_in_8_tdest == 4) begin
        // Connect input port 8 to output port 4
        axis_out_4_tdata = axis_in_8_tdata;
        axis_out_4_tvalid = axis_in_8_tvalid;
        axis_out_4_tdest = axis_in_8_tdest;
        axis_out_4_tid = axis_in_8_tid;
    end else
    begin 
        // Default: no valid data
        axis_out_4_tdata = {128{1'b0}};
        axis_out_4_tvalid = 1'b0;
        axis_out_4_tdest = {4{1'b0}};
        axis_out_4_tid = {2{1'b0}};
    end
end
// Output 5 handling
always @(*) begin    
    if (axis_in_0_tdest == 5) begin
        // Connect input port 0 to output port 5
        axis_out_5_tdata = axis_in_0_tdata;
        axis_out_5_tvalid = axis_in_0_tvalid;
        axis_out_5_tdest = axis_in_0_tdest;
        axis_out_5_tid = axis_in_0_tid;
    end else
    if (axis_in_1_tdest == 5) begin
        // Connect input port 1 to output port 5
        axis_out_5_tdata = axis_in_1_tdata;
        axis_out_5_tvalid = axis_in_1_tvalid;
        axis_out_5_tdest = axis_in_1_tdest;
        axis_out_5_tid = axis_in_1_tid;
    end else
    if (axis_in_2_tdest == 5) begin
        // Connect input port 2 to output port 5
        axis_out_5_tdata = axis_in_2_tdata;
        axis_out_5_tvalid = axis_in_2_tvalid;
        axis_out_5_tdest = axis_in_2_tdest;
        axis_out_5_tid = axis_in_2_tid;
    end else
    if (axis_in_3_tdest == 5) begin
        // Connect input port 3 to output port 5
        axis_out_5_tdata = axis_in_3_tdata;
        axis_out_5_tvalid = axis_in_3_tvalid;
        axis_out_5_tdest = axis_in_3_tdest;
        axis_out_5_tid = axis_in_3_tid;
    end else
    if (axis_in_4_tdest == 5) begin
        // Connect input port 4 to output port 5
        axis_out_5_tdata = axis_in_4_tdata;
        axis_out_5_tvalid = axis_in_4_tvalid;
        axis_out_5_tdest = axis_in_4_tdest;
        axis_out_5_tid = axis_in_4_tid;
    end else
    if (axis_in_5_tdest == 5) begin
        // Connect input port 5 to output port 5
        axis_out_5_tdata = axis_in_5_tdata;
        axis_out_5_tvalid = axis_in_5_tvalid;
        axis_out_5_tdest = axis_in_5_tdest;
        axis_out_5_tid = axis_in_5_tid;
    end else
    if (axis_in_6_tdest == 5) begin
        // Connect input port 6 to output port 5
        axis_out_5_tdata = axis_in_6_tdata;
        axis_out_5_tvalid = axis_in_6_tvalid;
        axis_out_5_tdest = axis_in_6_tdest;
        axis_out_5_tid = axis_in_6_tid;
    end else
    if (axis_in_7_tdest == 5) begin
        // Connect input port 7 to output port 5
        axis_out_5_tdata = axis_in_7_tdata;
        axis_out_5_tvalid = axis_in_7_tvalid;
        axis_out_5_tdest = axis_in_7_tdest;
        axis_out_5_tid = axis_in_7_tid;
    end else
    if (axis_in_8_tdest == 5) begin
        // Connect input port 8 to output port 5
        axis_out_5_tdata = axis_in_8_tdata;
        axis_out_5_tvalid = axis_in_8_tvalid;
        axis_out_5_tdest = axis_in_8_tdest;
        axis_out_5_tid = axis_in_8_tid;
    end else
    begin 
        // Default: no valid data
        axis_out_5_tdata = {128{1'b0}};
        axis_out_5_tvalid = 1'b0;
        axis_out_5_tdest = {4{1'b0}};
        axis_out_5_tid = {2{1'b0}};
    end
end
// Output 6 handling
always @(*) begin    
    if (axis_in_0_tdest == 6) begin
        // Connect input port 0 to output port 6
        axis_out_6_tdata = axis_in_0_tdata;
        axis_out_6_tvalid = axis_in_0_tvalid;
        axis_out_6_tdest = axis_in_0_tdest;
        axis_out_6_tid = axis_in_0_tid;
    end else
    if (axis_in_1_tdest == 6) begin
        // Connect input port 1 to output port 6
        axis_out_6_tdata = axis_in_1_tdata;
        axis_out_6_tvalid = axis_in_1_tvalid;
        axis_out_6_tdest = axis_in_1_tdest;
        axis_out_6_tid = axis_in_1_tid;
    end else
    if (axis_in_2_tdest == 6) begin
        // Connect input port 2 to output port 6
        axis_out_6_tdata = axis_in_2_tdata;
        axis_out_6_tvalid = axis_in_2_tvalid;
        axis_out_6_tdest = axis_in_2_tdest;
        axis_out_6_tid = axis_in_2_tid;
    end else
    if (axis_in_3_tdest == 6) begin
        // Connect input port 3 to output port 6
        axis_out_6_tdata = axis_in_3_tdata;
        axis_out_6_tvalid = axis_in_3_tvalid;
        axis_out_6_tdest = axis_in_3_tdest;
        axis_out_6_tid = axis_in_3_tid;
    end else
    if (axis_in_4_tdest == 6) begin
        // Connect input port 4 to output port 6
        axis_out_6_tdata = axis_in_4_tdata;
        axis_out_6_tvalid = axis_in_4_tvalid;
        axis_out_6_tdest = axis_in_4_tdest;
        axis_out_6_tid = axis_in_4_tid;
    end else
    if (axis_in_5_tdest == 6) begin
        // Connect input port 5 to output port 6
        axis_out_6_tdata = axis_in_5_tdata;
        axis_out_6_tvalid = axis_in_5_tvalid;
        axis_out_6_tdest = axis_in_5_tdest;
        axis_out_6_tid = axis_in_5_tid;
    end else
    if (axis_in_6_tdest == 6) begin
        // Connect input port 6 to output port 6
        axis_out_6_tdata = axis_in_6_tdata;
        axis_out_6_tvalid = axis_in_6_tvalid;
        axis_out_6_tdest = axis_in_6_tdest;
        axis_out_6_tid = axis_in_6_tid;
    end else
    if (axis_in_7_tdest == 6) begin
        // Connect input port 7 to output port 6
        axis_out_6_tdata = axis_in_7_tdata;
        axis_out_6_tvalid = axis_in_7_tvalid;
        axis_out_6_tdest = axis_in_7_tdest;
        axis_out_6_tid = axis_in_7_tid;
    end else
    if (axis_in_8_tdest == 6) begin
        // Connect input port 8 to output port 6
        axis_out_6_tdata = axis_in_8_tdata;
        axis_out_6_tvalid = axis_in_8_tvalid;
        axis_out_6_tdest = axis_in_8_tdest;
        axis_out_6_tid = axis_in_8_tid;
    end else
    begin 
        // Default: no valid data
        axis_out_6_tdata = {128{1'b0}};
        axis_out_6_tvalid = 1'b0;
        axis_out_6_tdest = {4{1'b0}};
        axis_out_6_tid = {2{1'b0}};
    end
end
// Output 7 handling
always @(*) begin    
    if (axis_in_0_tdest == 7) begin
        // Connect input port 0 to output port 7
        axis_out_7_tdata = axis_in_0_tdata;
        axis_out_7_tvalid = axis_in_0_tvalid;
        axis_out_7_tdest = axis_in_0_tdest;
        axis_out_7_tid = axis_in_0_tid;
    end else
    if (axis_in_1_tdest == 7) begin
        // Connect input port 1 to output port 7
        axis_out_7_tdata = axis_in_1_tdata;
        axis_out_7_tvalid = axis_in_1_tvalid;
        axis_out_7_tdest = axis_in_1_tdest;
        axis_out_7_tid = axis_in_1_tid;
    end else
    if (axis_in_2_tdest == 7) begin
        // Connect input port 2 to output port 7
        axis_out_7_tdata = axis_in_2_tdata;
        axis_out_7_tvalid = axis_in_2_tvalid;
        axis_out_7_tdest = axis_in_2_tdest;
        axis_out_7_tid = axis_in_2_tid;
    end else
    if (axis_in_3_tdest == 7) begin
        // Connect input port 3 to output port 7
        axis_out_7_tdata = axis_in_3_tdata;
        axis_out_7_tvalid = axis_in_3_tvalid;
        axis_out_7_tdest = axis_in_3_tdest;
        axis_out_7_tid = axis_in_3_tid;
    end else
    if (axis_in_4_tdest == 7) begin
        // Connect input port 4 to output port 7
        axis_out_7_tdata = axis_in_4_tdata;
        axis_out_7_tvalid = axis_in_4_tvalid;
        axis_out_7_tdest = axis_in_4_tdest;
        axis_out_7_tid = axis_in_4_tid;
    end else
    if (axis_in_5_tdest == 7) begin
        // Connect input port 5 to output port 7
        axis_out_7_tdata = axis_in_5_tdata;
        axis_out_7_tvalid = axis_in_5_tvalid;
        axis_out_7_tdest = axis_in_5_tdest;
        axis_out_7_tid = axis_in_5_tid;
    end else
    if (axis_in_6_tdest == 7) begin
        // Connect input port 6 to output port 7
        axis_out_7_tdata = axis_in_6_tdata;
        axis_out_7_tvalid = axis_in_6_tvalid;
        axis_out_7_tdest = axis_in_6_tdest;
        axis_out_7_tid = axis_in_6_tid;
    end else
    if (axis_in_7_tdest == 7) begin
        // Connect input port 7 to output port 7
        axis_out_7_tdata = axis_in_7_tdata;
        axis_out_7_tvalid = axis_in_7_tvalid;
        axis_out_7_tdest = axis_in_7_tdest;
        axis_out_7_tid = axis_in_7_tid;
    end else
    if (axis_in_8_tdest == 7) begin
        // Connect input port 8 to output port 7
        axis_out_7_tdata = axis_in_8_tdata;
        axis_out_7_tvalid = axis_in_8_tvalid;
        axis_out_7_tdest = axis_in_8_tdest;
        axis_out_7_tid = axis_in_8_tid;
    end else
    begin 
        // Default: no valid data
        axis_out_7_tdata = {128{1'b0}};
        axis_out_7_tvalid = 1'b0;
        axis_out_7_tdest = {4{1'b0}};
        axis_out_7_tid = {2{1'b0}};
    end
end
// Output 8 handling
always @(*) begin    
    if (axis_in_0_tdest == 8) begin
        // Connect input port 0 to output port 8
        axis_out_8_tdata = axis_in_0_tdata;
        axis_out_8_tvalid = axis_in_0_tvalid;
        axis_out_8_tdest = axis_in_0_tdest;
        axis_out_8_tid = axis_in_0_tid;
    end else
    if (axis_in_1_tdest == 8) begin
        // Connect input port 1 to output port 8
        axis_out_8_tdata = axis_in_1_tdata;
        axis_out_8_tvalid = axis_in_1_tvalid;
        axis_out_8_tdest = axis_in_1_tdest;
        axis_out_8_tid = axis_in_1_tid;
    end else
    if (axis_in_2_tdest == 8) begin
        // Connect input port 2 to output port 8
        axis_out_8_tdata = axis_in_2_tdata;
        axis_out_8_tvalid = axis_in_2_tvalid;
        axis_out_8_tdest = axis_in_2_tdest;
        axis_out_8_tid = axis_in_2_tid;
    end else
    if (axis_in_3_tdest == 8) begin
        // Connect input port 3 to output port 8
        axis_out_8_tdata = axis_in_3_tdata;
        axis_out_8_tvalid = axis_in_3_tvalid;
        axis_out_8_tdest = axis_in_3_tdest;
        axis_out_8_tid = axis_in_3_tid;
    end else
    if (axis_in_4_tdest == 8) begin
        // Connect input port 4 to output port 8
        axis_out_8_tdata = axis_in_4_tdata;
        axis_out_8_tvalid = axis_in_4_tvalid;
        axis_out_8_tdest = axis_in_4_tdest;
        axis_out_8_tid = axis_in_4_tid;
    end else
    if (axis_in_5_tdest == 8) begin
        // Connect input port 5 to output port 8
        axis_out_8_tdata = axis_in_5_tdata;
        axis_out_8_tvalid = axis_in_5_tvalid;
        axis_out_8_tdest = axis_in_5_tdest;
        axis_out_8_tid = axis_in_5_tid;
    end else
    if (axis_in_6_tdest == 8) begin
        // Connect input port 6 to output port 8
        axis_out_8_tdata = axis_in_6_tdata;
        axis_out_8_tvalid = axis_in_6_tvalid;
        axis_out_8_tdest = axis_in_6_tdest;
        axis_out_8_tid = axis_in_6_tid;
    end else
    if (axis_in_7_tdest == 8) begin
        // Connect input port 7 to output port 8
        axis_out_8_tdata = axis_in_7_tdata;
        axis_out_8_tvalid = axis_in_7_tvalid;
        axis_out_8_tdest = axis_in_7_tdest;
        axis_out_8_tid = axis_in_7_tid;
    end else
    if (axis_in_8_tdest == 8) begin
        // Connect input port 8 to output port 8
        axis_out_8_tdata = axis_in_8_tdata;
        axis_out_8_tvalid = axis_in_8_tvalid;
        axis_out_8_tdest = axis_in_8_tdest;
        axis_out_8_tid = axis_in_8_tid;
    end else
    begin 
        // Default: no valid data
        axis_out_8_tdata = {128{1'b0}};
        axis_out_8_tvalid = 1'b0;
        axis_out_8_tdest = {4{1'b0}};
        axis_out_8_tid = {2{1'b0}};
    end
end


endmodule
