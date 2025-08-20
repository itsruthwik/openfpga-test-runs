`timescale 1ns/1ps

module tb_router();

parameter NUM_PORTS = 5;
parameter FLIT_WIDTH = 64;
parameter DEST_WIDTH = 4;

parameter TDATA_WIDTH = 128;
parameter TID_WIDTH = 2;
parameter TDEST_WIDTH = 4;

parameter RTR_ADDR_WIDTH = 4;

parameter NOC_NUM_ENDPOINTS = 16;
parameter ROUTE_WIDTH=3;


reg clk_noc;
reg clk_usr;
reg rst_n;

//  NORTH = 1;
//  SOUTH = 2;
//  EAST = 3;
//  WEST = 4;
    // rtr-to-rtr ports
reg    [0:NUM_PORTS -2][FLIT_WIDTH - 1 : 0]    data_in     ;
reg    [0:NUM_PORTS -2][DEST_WIDTH - 1 : 0]    dest_in     ;
reg    [0:NUM_PORTS -2]                        is_tail_in  ;
reg    [0:NUM_PORTS -2]                        send_in     ;
wire   [0:NUM_PORTS -2]                        credit_out  ;

wire   [0:NUM_PORTS - 2][FLIT_WIDTH - 1 : 0]    data_out    ;
wire   [0:NUM_PORTS - 2][DEST_WIDTH - 1 : 0]    dest_out    ;
wire   [0:NUM_PORTS - 2]                        is_tail_out ;
wire   [0:NUM_PORTS - 2]                        send_out    ;
reg    [0:NUM_PORTS - 2]                        credit_in   ;

reg    [0:NUM_PORTS-1][0:NUM_PORTS-1]           DISABLE_TURNS ;

// injection port
reg                            axis_in_tvalid  ;
wire                           axis_in_tready  ;
reg    [TDATA_WIDTH - 1 : 0]   axis_in_tdata  ;
reg                            axis_in_tlast  ;
reg    [TID_WIDTH - 1 : 0]     axis_in_tid  ;
reg    [TDEST_WIDTH - 1 : 0]   axis_in_tdest  ;

wire                           axis_out_tvalid  ;
reg                            axis_out_tready  ;
wire   [TDATA_WIDTH - 1 : 0]   axis_out_tdata  ;
wire                           axis_out_tlast  ;
wire   [TID_WIDTH - 1 : 0]     axis_out_tid  ;
wire   [TDEST_WIDTH - 1 : 0]   axis_out_tdest  ;

reg [0: NOC_NUM_ENDPOINTS - 1][ROUTE_WIDTH - 1 : 0] routing_table  ;

reg     [RTR_ADDR_WIDTH-1 : 0] router_address  ;



router_wrap rtr_inst (
    .clk_noc(clk_noc),
    .clk_usr(clk_usr),
    .rst_n(rst_n),

    .data_in(data_in),
    .dest_in(dest_in),
    .is_tail_in(is_tail_in),
    .send_in(send_in),
    .credit_out(credit_out),

    .data_out(data_out),
    .dest_out(dest_out),
    .is_tail_out(is_tail_out),
    .send_out(send_out),
    .credit_in(credit_in),

    .DISABLE_TURNS(DISABLE_TURNS),

    .axis_in_tvalid(axis_in_tvalid),
    .axis_in_tready(axis_in_tready),
    .axis_in_tdata(axis_in_tdata),
    .axis_in_tlast(axis_in_tlast),
    .axis_in_tid(axis_in_tid),
    .axis_in_tdest(axis_in_tdest),

    .axis_out_tvalid(axis_out_tvalid),
    .axis_out_tready(axis_out_tready),
    .axis_out_tdata(axis_out_tdata),
    .axis_out_tlast(axis_out_tlast),
    .axis_out_tid(axis_out_tid),
    .axis_out_tdest(axis_out_tdest),

    .routing_table(routing_table),
    .router_address(router_address)
);
    


always #5 clk_noc = ~clk_noc;
always #5 clk_usr = ~clk_usr;

initial begin
    clk_noc = 0;
    clk_usr = 0;
    rst_n = 1;

    // Initialize inputs
    // data_in = 0;
    // dest_in = 0;
    // is_tail_in = 0;
    // send_in = 0;
    credit_in = 0;
    DISABLE_TURNS = 0;

    axis_in_tvalid = 1'b0;
    axis_in_tdata = 0;
    axis_in_tlast = 1'b0;
    axis_in_tid = 0;
    axis_in_tdest = 0;

    axis_out_tready = 1'b0;

    router_address = 0;

    #10;
    rst_n = 0;
    #10;
    rst_n = 1;
    #10;

    // set router address
    router_address = 4'b0000;

    // enable all ports 
    DISABLE_TURNS = 0; 

    // set routing table
    // routing_table[0] = 4'b0011;    // 0
    // routing_table[1] = 4'b0000;  // 1
    // routing_table[2] = 4'b0010;  // 2
    // routing_table[3] = 4'b0010;   // 3
    // routing_table[4] = 4'b0011;   // 4
    // routing_table[5] = 4'b0001;  // 5
    // routing_table[6] = 4'b0010;  // 6
    // routing_table[7] = 4'b0010;   // 7
    // routing_table[8] = 4'b0011;   // 8
    // routing_table[9] = 4'b0001;     // 9
    // routing_table[10] = 4'b0010;   // 10
    // routing_table[11] = 4'b0010;   // 11
    // routing_table[12] = 4'b0011;   // 12
    // routing_table[13] = 4'b0001;   // 13
    // routing_table[14] = 4'b0010;   // 14
    // routing_table[15] = 4'b0010;   // 15

    routing_table[0] = 3'b000;
    routing_table[1] = 3'b011;
    routing_table[2] = 3'b011;
    routing_table[3] = 3'b011;
    routing_table[4] = 3'b010;
    routing_table[5] = 3'b011;
    routing_table[6] = 3'b011;
    routing_table[7] = 3'b011;
    routing_table[8] = 3'b010;
    routing_table[9] = 3'b011;
    routing_table[10] = 3'b011;
    routing_table[11] = 3'b011;
    routing_table[12] = 3'b010;
    routing_table[13] = 3'b011;
    routing_table[14] = 3'b011;
    routing_table[15] = 3'b011;

    #10;

    // send data
    axis_in_tdata = 128'hDEADBEEFDEADBEEFDEADBEEFDEADBEEF;
    axis_in_tvalid = 1'b1;
    axis_in_tlast = 1'b1;
    axis_in_tid = 2'b00;
    axis_in_tdest = 4'hf;

    axis_out_tready = 1'b1;
    #10;



end

integer cycle_count;
reg counting;

always @(posedge clk_noc) begin
    if (!rst_n) begin
        cycle_count <= 0;
        counting <= 0;
    end else begin
        // Start counting when input is valid
        if (axis_in_tvalid && axis_in_tready && !counting) begin
            counting <= 1;
            cycle_count <= 0;
        end
        // Count cycles while waiting for output
        if (counting) begin
            cycle_count <= cycle_count + 1;
            // Check for valid data on data_out (example: port 0)
            if (data_out !== 0) begin
                $display("Cycles from axis_in_tdata to data_out: %0d", cycle_count);
                counting <= 0;
            end
        end
    end
end



endmodule