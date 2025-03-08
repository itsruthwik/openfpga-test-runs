(* whitebox *)
module router_wrap #(
    parameter RESET_SYNC_EXTEND_CYCLES = 2,
    parameter RESET_NUM_OUTPUT_REGISTERS = 1,
    parameter NUM_INPUTS = 5,
    parameter NUM_OUTPUTS = 5,
    parameter TID_WIDTH = 2,
    parameter TDEST_WIDTH = 4,
    parameter TDATA_WIDTH = 32,
    parameter SERIALIZATION_FACTOR = 1,
    parameter CLKCROSS_FACTOR = 1,
    parameter bit SINGLE_CLOCK = 0,
    parameter SERDES_IN_BUFFER_DEPTH = 4,
    parameter SERDES_OUT_BUFFER_DEPTH = 4,
    parameter SERDES_EXTRA_SYNC_STAGES = 0,
    parameter bit SERDES_FORCE_MLAB = 0,
    parameter FLIT_BUFFER_DEPTH = 4,
    parameter ROUTING_TABLE_PREFIX = "/",
    parameter ROUTER_PIPELINE_ROUTE_COMPUTE = 1,
    parameter ROUTER_PIPELINE_ARBITER = 0,
    parameter ROUTER_PIPELINE_OUTPUT = 1,
    parameter bit ROUTER_FORCE_MLAB = 0
) (
    input wire clk_noc,
    input wire clk_usr,
    input wire rst_n,

    input wire axis_in_tvalid_top,
    output reg axis_in_tready_top,
    input wire [TDATA_WIDTH-1:0] axis_in_tdata_top,
    input wire axis_in_tlast_top,
    input wire [TID_WIDTH-1:0] axis_in_tid_top,
    input wire [TDEST_WIDTH-1:0] axis_in_tdest_top,
    output reg axis_out_tvalid_top,
    input wire axis_out_tready_top,
    output reg [TDATA_WIDTH-1:0] axis_out_tdata_top,
    output reg axis_out_tlast_top,
    output reg [TID_WIDTH-1:0] axis_out_tid_top,
    output reg [TDEST_WIDTH-1:0] axis_out_tdest_top,
    
    input wire axis_in_tvalid_right,
    output reg axis_in_tready_right,
    input wire [TDATA_WIDTH-1:0] axis_in_tdata_right,
    input wire axis_in_tlast_right,
    input wire [TID_WIDTH-1:0] axis_in_tid_right,
    input wire [TDEST_WIDTH-1:0] axis_in_tdest_right,
    output reg axis_out_tvalid_right,
    input wire axis_out_tready_right,
    output reg [TDATA_WIDTH-1:0] axis_out_tdata_right,
    output reg axis_out_tlast_right,
    output reg [TID_WIDTH-1:0] axis_out_tid_right,
    output reg [TDEST_WIDTH-1:0] axis_out_tdest_right,
    
    input wire axis_in_tvalid_bottom,
    output reg axis_in_tready_bottom,
    input wire [TDATA_WIDTH-1:0] axis_in_tdata_bottom,
    input wire axis_in_tlast_bottom,
    input wire [TID_WIDTH-1:0] axis_in_tid_bottom,
    input wire [TDEST_WIDTH-1:0] axis_in_tdest_bottom,
    output reg axis_out_tvalid_bottom,
    input wire axis_out_tready_bottom,
    output reg [TDATA_WIDTH-1:0] axis_out_tdata_bottom,
    output reg axis_out_tlast_bottom,
    output reg [TID_WIDTH-1:0] axis_out_tid_bottom,
    output reg [TDEST_WIDTH-1:0] axis_out_tdest_bottom,
    
    input wire axis_in_tvalid_left,
    output reg axis_in_tready_left,
    input wire [TDATA_WIDTH-1:0] axis_in_tdata_left,
    input wire axis_in_tlast_left,
    input wire [TID_WIDTH-1:0] axis_in_tid_left,
    input wire [TDEST_WIDTH-1:0] axis_in_tdest_left,
    output reg axis_out_tvalid_left,
    input wire axis_out_tready_left,
    output reg [TDATA_WIDTH-1:0] axis_out_tdata_left,
    output reg axis_out_tlast_left,
    output reg [TID_WIDTH-1:0] axis_out_tid_left,
    output reg [TDEST_WIDTH-1:0] axis_out_tdest_left,
    
    input wire axis_in_tvalid,
    output reg axis_in_tready,
    input wire [TDATA_WIDTH-1:0] axis_in_tdata,
    input wire axis_in_tlast,
    input wire [TID_WIDTH-1:0] axis_in_tid,
    input wire [TDEST_WIDTH-1:0] axis_in_tdest,
    output reg axis_out_tvalid,
    input wire axis_out_tready,
    output reg [TDATA_WIDTH-1:0] axis_out_tdata,
    output reg axis_out_tlast,
    output reg [TID_WIDTH-1:0] axis_out_tid,
    output reg [TDEST_WIDTH-1:0] axis_out_tdest
);

    always @(posedge clk_usr or negedge rst_n) begin
        if (!rst_n) begin
            axis_in_tready_top <= 1'b0;
            axis_out_tvalid_top <= 1'b0;
            axis_out_tdata_top <= {TDATA_WIDTH{1'b0}};
            axis_out_tlast_top <= 1'b0;
            axis_out_tid_top <= {TID_WIDTH{1'b0}};
            axis_out_tdest_top <= {TDEST_WIDTH{1'b0}};
            
            axis_in_tready_right <= 1'b0;
            axis_out_tvalid_right <= 1'b0;
            axis_out_tdata_right <= {TDATA_WIDTH{1'b0}};
            axis_out_tlast_right <= 1'b0;
            axis_out_tid_right <= {TID_WIDTH{1'b0}};
            axis_out_tdest_right <= {TDEST_WIDTH{1'b0}};
            
            axis_in_tready_bottom <= 1'b0;
            axis_out_tvalid_bottom <= 1'b0;
            axis_out_tdata_bottom <= {TDATA_WIDTH{1'b0}};
            axis_out_tlast_bottom <= 1'b0;
            axis_out_tid_bottom <= {TID_WIDTH{1'b0}};
            axis_out_tdest_bottom <= {TDEST_WIDTH{1'b0}};
            
            axis_in_tready_left <= 1'b0;
            axis_out_tvalid_left <= 1'b0;
            axis_out_tdata_left <= {TDATA_WIDTH{1'b0}};
            axis_out_tlast_left <= 1'b0;
            axis_out_tid_left <= {TID_WIDTH{1'b0}};
            axis_out_tdest_left <= {TDEST_WIDTH{1'b0}};
            
            axis_in_tready <= 1'b0;
            axis_out_tvalid <= 1'b0;
            axis_out_tdata <= {TDATA_WIDTH{1'b0}};
            axis_out_tlast <= 1'b0;
            axis_out_tid <= {TID_WIDTH{1'b0}};
            axis_out_tdest <= {TDEST_WIDTH{1'b0}};
        end
        else begin
            axis_in_tready_top <= axis_out_tready_top;
            axis_out_tvalid_top <= axis_in_tvalid_top;
            axis_out_tdata_top <= axis_in_tdata_top;
            axis_out_tlast_top <= axis_in_tlast_top;
            axis_out_tid_top <= axis_in_tid_top;
            axis_out_tdest_top <= axis_in_tdest_top;
            axis_in_tready_right <= axis_out_tready_right;
            axis_out_tvalid_right <= axis_in_tvalid_right;
            axis_out_tdata_right <= axis_in_tdata_right;
            axis_out_tlast_right <= axis_in_tlast_right;
            axis_out_tid_right <= axis_in_tid_right;
            axis_out_tdest_right <= axis_in_tdest_right;
            axis_in_tready_bottom <= axis_out_tready_bottom;
            axis_out_tvalid_bottom <= axis_in_tvalid_bottom;
            axis_out_tdata_bottom <= axis_in_tdata_bottom;
            axis_out_tlast_bottom <= axis_in_tlast_bottom;
            axis_out_tid_bottom <= axis_in_tid_bottom;
            axis_out_tdest_bottom <= axis_in_tdest_bottom;
            axis_in_tready_left <= axis_out_tready_left;
            axis_out_tvalid_left <= axis_in_tvalid_left;
            axis_out_tdata_left <= axis_in_tdata_left;
            axis_out_tlast_left <= axis_in_tlast_left;
            axis_out_tid_left <= axis_in_tid_left;
            axis_out_tdest_left <= axis_in_tdest_left;
            axis_in_tready <= axis_out_tready;
            axis_out_tvalid <= axis_in_tvalid;
            axis_out_tdata <= axis_in_tdata;
            axis_out_tlast <= axis_in_tlast;
            axis_out_tid <= axis_in_tid;
            axis_out_tdest <= axis_in_tdest;
        end
    end

endmodule