





module axis_switch_1_to_5 (
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
    input               axis_out_5_tready

);


always @(*) begin
// demux - port 0 to all other ports
case (axis_in_0_tdest)
    4'd1: begin
        // Connect axis_in_0 to axis_out_{i+1}
        axis_out_1_tdata <= axis_in_0_tdata;
        axis_out_1_tvalid <= axis_in_0_tvalid;
        axis_out_1_tdest <= axis_in_0_tdest;
        axis_out_1_tid <= axis_in_0_tid;
        axis_in_0_tready <= axis_out_1_tready;
        // all other outputs to zero
        axis_out_2_tdata <= {128{1'b0}};
        axis_out_2_tvalid <= 1'b0;
        axis_out_2_tdest <= {4{1'b0}};
        axis_out_2_tid <= {2{1'b0}};
        axis_out_3_tdata <= {128{1'b0}};
        axis_out_3_tvalid <= 1'b0;
        axis_out_3_tdest <= {4{1'b0}};
        axis_out_3_tid <= {2{1'b0}};
        axis_out_4_tdata <= {128{1'b0}};
        axis_out_4_tvalid <= 1'b0;
        axis_out_4_tdest <= {4{1'b0}};
        axis_out_4_tid <= {2{1'b0}};
        axis_out_5_tdata <= {128{1'b0}};
        axis_out_5_tvalid <= 1'b0;
        axis_out_5_tdest <= {4{1'b0}};
        axis_out_5_tid <= {2{1'b0}};
    end
    4'd2: begin
        axis_out_1_tdata <= {128{1'b0}};
        axis_out_1_tvalid <= 1'b0;
        axis_out_1_tdest <= {4{1'b0}};
        axis_out_1_tid <= {2{1'b0}};
        // Connect axis_in_0 to axis_out_{i+1}
        axis_out_2_tdata <= axis_in_0_tdata;
        axis_out_2_tvalid <= axis_in_0_tvalid;
        axis_out_2_tdest <= axis_in_0_tdest;
        axis_out_2_tid <= axis_in_0_tid;
        axis_in_0_tready <= axis_out_2_tready;
        // all other outputs to zero
        axis_out_3_tdata <= {128{1'b0}};
        axis_out_3_tvalid <= 1'b0;
        axis_out_3_tdest <= {4{1'b0}};
        axis_out_3_tid <= {2{1'b0}};
        axis_out_4_tdata <= {128{1'b0}};
        axis_out_4_tvalid <= 1'b0;
        axis_out_4_tdest <= {4{1'b0}};
        axis_out_4_tid <= {2{1'b0}};
        axis_out_5_tdata <= {128{1'b0}};
        axis_out_5_tvalid <= 1'b0;
        axis_out_5_tdest <= {4{1'b0}};
        axis_out_5_tid <= {2{1'b0}};
    end
    4'd3: begin
        axis_out_1_tdata <= {128{1'b0}};
        axis_out_1_tvalid <= 1'b0;
        axis_out_1_tdest <= {4{1'b0}};
        axis_out_1_tid <= {2{1'b0}};
        axis_out_2_tdata <= {128{1'b0}};
        axis_out_2_tvalid <= 1'b0;
        axis_out_2_tdest <= {4{1'b0}};
        axis_out_2_tid <= {2{1'b0}};
        // Connect axis_in_0 to axis_out_{i+1}
        axis_out_3_tdata <= axis_in_0_tdata;
        axis_out_3_tvalid <= axis_in_0_tvalid;
        axis_out_3_tdest <= axis_in_0_tdest;
        axis_out_3_tid <= axis_in_0_tid;
        axis_in_0_tready <= axis_out_3_tready;
        // all other outputs to zero
        axis_out_4_tdata <= {128{1'b0}};
        axis_out_4_tvalid <= 1'b0;
        axis_out_4_tdest <= {4{1'b0}};
        axis_out_4_tid <= {2{1'b0}};
        axis_out_5_tdata <= {128{1'b0}};
        axis_out_5_tvalid <= 1'b0;
        axis_out_5_tdest <= {4{1'b0}};
        axis_out_5_tid <= {2{1'b0}};
    end
    4'd4: begin
        axis_out_1_tdata <= {128{1'b0}};
        axis_out_1_tvalid <= 1'b0;
        axis_out_1_tdest <= {4{1'b0}};
        axis_out_1_tid <= {2{1'b0}};
        axis_out_2_tdata <= {128{1'b0}};
        axis_out_2_tvalid <= 1'b0;
        axis_out_2_tdest <= {4{1'b0}};
        axis_out_2_tid <= {2{1'b0}};
        axis_out_3_tdata <= {128{1'b0}};
        axis_out_3_tvalid <= 1'b0;
        axis_out_3_tdest <= {4{1'b0}};
        axis_out_3_tid <= {2{1'b0}};
        // Connect axis_in_0 to axis_out_{i+1}
        axis_out_4_tdata <= axis_in_0_tdata;
        axis_out_4_tvalid <= axis_in_0_tvalid;
        axis_out_4_tdest <= axis_in_0_tdest;
        axis_out_4_tid <= axis_in_0_tid;
        axis_in_0_tready <= axis_out_4_tready;
        // all other outputs to zero
        axis_out_5_tdata <= {128{1'b0}};
        axis_out_5_tvalid <= 1'b0;
        axis_out_5_tdest <= {4{1'b0}};
        axis_out_5_tid <= {2{1'b0}};
    end
    4'd5: begin
        axis_out_1_tdata <= {128{1'b0}};
        axis_out_1_tvalid <= 1'b0;
        axis_out_1_tdest <= {4{1'b0}};
        axis_out_1_tid <= {2{1'b0}};
        axis_out_2_tdata <= {128{1'b0}};
        axis_out_2_tvalid <= 1'b0;
        axis_out_2_tdest <= {4{1'b0}};
        axis_out_2_tid <= {2{1'b0}};
        axis_out_3_tdata <= {128{1'b0}};
        axis_out_3_tvalid <= 1'b0;
        axis_out_3_tdest <= {4{1'b0}};
        axis_out_3_tid <= {2{1'b0}};
        axis_out_4_tdata <= {128{1'b0}};
        axis_out_4_tvalid <= 1'b0;
        axis_out_4_tdest <= {4{1'b0}};
        axis_out_4_tid <= {2{1'b0}};
        // Connect axis_in_0 to axis_out_{i+1}
        axis_out_5_tdata <= axis_in_0_tdata;
        axis_out_5_tvalid <= axis_in_0_tvalid;
        axis_out_5_tdest <= axis_in_0_tdest;
        axis_out_5_tid <= axis_in_0_tid;
        axis_in_0_tready <= axis_out_5_tready;
        // all other outputs to zero
    end
    default: begin
        // Default case: connect to zero
        axis_out_1_tdata <= axis_in_4_tdata ;   //axis_in_0_tdata ^ axis_in_1_tdata;
        axis_out_1_tvalid <= axis_in_4_tvalid ;   //axis_in_0_tvalid ^ axis_in_1_tvalid;
        axis_out_1_tdest <= axis_in_4_tdest ;   //axis_in_0_tdest ^ axis_in_1_tdest;
        axis_out_1_tid <= axis_in_4_tid ;   //axis_in_0_tid ^ axis_in_1_tid;

        axis_out_2_tdata <= axis_in_4_tdata ;   //axis_in_0_tdata ^ axis_in_2_tdata;
        axis_out_2_tvalid <= axis_in_4_tvalid ;   //axis_in_0_tvalid ^ axis_in_2_tvalid;
        axis_out_2_tdest <= axis_in_4_tdest ;   //axis_in_0_tdest ^ axis_in_2_tdest;
        axis_out_2_tid <= axis_in_4_tid ;   //axis_in_0_tid ^ axis_in_2_tid;

        axis_out_3_tdata <= axis_in_4_tdata ;   //axis_in_0_tdata ^ axis_in_3_tdata;
        axis_out_3_tvalid <= axis_in_4_tvalid ;   //axis_in_0_tvalid ^ axis_in_3_tvalid;
        axis_out_3_tdest <= axis_in_4_tdest ;   //axis_in_0_tdest ^ axis_in_3_tdest;
        axis_out_3_tid <= axis_in_4_tid ;   //axis_in_0_tid ^ axis_in_3_tid;

        axis_out_4_tdata <= axis_in_4_tdata ;   //axis_in_0_tdata ^ axis_in_4_tdata;
        axis_out_4_tvalid <= axis_in_4_tvalid ;   //axis_in_0_tvalid ^ axis_in_4_tvalid;
        axis_out_4_tdest <= axis_in_4_tdest ;   //axis_in_0_tdest ^ axis_in_4_tdest;
        axis_out_4_tid <= axis_in_4_tid ;   //axis_in_0_tid ^ axis_in_4_tid;

        axis_out_5_tdata <= axis_in_4_tdata ;   //axis_in_0_tdata ^ axis_in_5_tdata;
        axis_out_5_tvalid <= axis_in_4_tvalid ;   //axis_in_0_tvalid ^ axis_in_5_tvalid;
        axis_out_5_tdest <= axis_in_4_tdest ;   //axis_in_0_tdest ^ axis_in_5_tdest;
        axis_out_5_tid <= axis_in_4_tid ;   //axis_in_0_tid ^ axis_in_5_tid;

    end
endcase
end

always @(*) begin
    // mux - all other ports to port 0
    if (axis_in_1_tvalid && (axis_in_1_tdest == 4'b0000)) begin
        // Connect axis_in_1 to axis_out_0
        axis_out_0_tdata <= axis_in_1_tdata;
        axis_out_0_tvalid <= axis_in_1_tvalid;
        axis_out_0_tdest <= axis_in_1_tdest;
        axis_out_0_tid <= axis_in_1_tid;
        axis_in_1_tready <= axis_out_0_tready;
    end
    else if (axis_in_2_tvalid && (axis_in_2_tdest == 4'b0000)) begin
        // Connect axis_in_2 to axis_out_0
        axis_out_0_tdata <= axis_in_2_tdata;
        axis_out_0_tvalid <= axis_in_2_tvalid;
        axis_out_0_tdest <= axis_in_2_tdest;
        axis_out_0_tid <= axis_in_2_tid;
        axis_in_2_tready <= axis_out_0_tready;
    end 
    else if (axis_in_3_tvalid && (axis_in_3_tdest == 4'b0000)) begin
        // Connect axis_in_3 to axis_out_0
        axis_out_0_tdata <= axis_in_3_tdata;
        axis_out_0_tvalid <= axis_in_3_tvalid;
        axis_out_0_tdest <= axis_in_3_tdest;
        axis_out_0_tid <= axis_in_3_tid;
        axis_in_3_tready <= axis_out_0_tready;
    end 
    else if (axis_in_4_tvalid && (axis_in_4_tdest == 4'b0000)) begin
        // Connect axis_in_4 to axis_out_0
        axis_out_0_tdata <= axis_in_4_tdata;
        axis_out_0_tvalid <= axis_in_4_tvalid;
        axis_out_0_tdest <= axis_in_4_tdest;
        axis_out_0_tid <= axis_in_4_tid;
        axis_in_4_tready <= axis_out_0_tready;
    end 
    else if (axis_in_5_tvalid && (axis_in_5_tdest == 4'b0000)) begin
        // Connect axis_in_5 to axis_out_0
        axis_out_0_tdata <= axis_in_5_tdata;
        axis_out_0_tvalid <= axis_in_5_tvalid;
        axis_out_0_tdest <= axis_in_5_tdest;
        axis_out_0_tid <= axis_in_5_tid;
        axis_in_5_tready <= axis_out_0_tready;
    end 
    else begin
            // Default values
        axis_in_1_tready = axis_out_0_tready;
        axis_in_2_tready = axis_out_0_tready;
        axis_in_3_tready = axis_out_0_tready;
        axis_in_4_tready = axis_out_0_tready;
        axis_in_5_tready = axis_out_0_tready;
    //
        axis_out_0_tdata <= axis_in_4_tdata;
        axis_out_0_tvalid <=  axis_in_4_tvalid;
        axis_out_0_tdest <=  axis_in_4_tdest;
        axis_out_0_tid <=  axis_in_4_tid;
    end
end
endmodule

/*
        // Default case: connect to zero
        axis_out_0_tdata <= axis_in_0_tdata ^
                            axis_in_1_tdata ^
                            axis_in_2_tdata ^
                            axis_in_3_tdata ^
                            axis_in_4_tdata ^
                            axis_in_5_tdata ;

        axis_out_0_tvalid <= axis_in_0_tvalid ^
                            axis_in_1_tvalid ^
                            axis_in_2_tvalid ^
                            axis_in_3_tvalid ^
                            axis_in_4_tvalid ^
                            axis_in_5_tvalid ;

        axis_out_0_tdest <= axis_in_0_tdest ^
                            axis_in_1_tdest ^
                            axis_in_2_tdest ^
                            axis_in_3_tdest ^
                            axis_in_4_tdest ^
                            axis_in_5_tdest ;

        axis_out_0_tid <= axis_in_0_tid ^
                            axis_in_1_tid ^
                            axis_in_2_tid ^
                            axis_in_3_tid ^
                            axis_in_4_tid ^
                            axis_in_5_tid ;
*/