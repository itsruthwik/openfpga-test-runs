module rtl_mvm # (
    parameter DATAW = 32,                   // Bitwidth of axi-s tdata
    parameter BYTEW = 8,                    // Bitwidth of axi-s tkeep, tstrb
    parameter IDW = 32,                     // Bitwidth of axi-s tid
    parameter DESTW = 6,                    // Bitwidth of axi-s tdest
    parameter USERW = 32,                   // Bitwidth of axi-s tuser
    parameter IPRECISION = 8,               // Input precision in bits
    parameter OPRECISION = 8,               // Output precision in bits
    parameter LANES = 4,                    // Number of dot-product INT8 lanes
    parameter DPES = 4,                     // Number of dot-product engines
    parameter NODES = 16,                   // Max number of nodes in each NoC
    parameter NODESW = 4,                   // Bitwidth of store node ID
    parameter RFDEPTH = 64,                 // Depth of register files (RFs)
    parameter RFADDRW = 6,                  // Bitwidth of RF address
    parameter INSTW = 32,                   // Instruction bitwidth
    parameter INSTD = 64,                   // Depth of instruction FIFO
    parameter INSTADDRW = 6,                // Bitwidth of instruction memory address
    parameter AXIS_OPS = 4,                 // Number of AXI-S operations
    parameter AXIS_OPSW = 2,                // AXI-S operations width
    parameter FIFOD = 64,                   // Depth of input, accumulation, and output FIFOs
    parameter USE_RELU = 1,                 // Use ReLU activation
    parameter DATAPATH_DELAY = 10
)(
    input  clk,
    input  rst,
    // Rx interface
    input  axis_rx_tvalid,
    input  [DATAW-1:0] axis_rx_tdata,
    input  [BYTEW-1:0] axis_rx_tstrb,
    input  [BYTEW-1:0] axis_rx_tkeep,
    input  [IDW-1:0] axis_rx_tid,
    input  [DESTW-1:0] axis_rx_tdest,
    input  [USERW-1:0] axis_rx_tuser,
    input  axis_rx_tlast,
    output axis_rx_tready,	
    // Tx interface
    output axis_tx_tvalid,
    output [DATAW-1:0] axis_tx_tdata,
    output [BYTEW-1:0] axis_tx_tstrb,
    output [BYTEW-1:0] axis_tx_tkeep,
    output [IDW-1:0] axis_tx_tid,
    output [DESTW-1:0] axis_tx_tdest,
    output [USERW-1:0] axis_tx_tuser,
    output axis_tx_tlast,
    input  axis_tx_tready
);

// Hook up unused Rx signals to dummy registers to avoid being synthesized away
(*noprune*) reg [BYTEW-1:0] dummy_axis_rx_tstrb;
(*noprune*) reg [BYTEW-1:0] dummy_axis_rx_tkeep;
(*noprune*) reg [DESTW-1:0] dummy_axis_rx_tdest;
(*noprune*) reg [IDW-1:0] dummy_axis_rx_tid;
always @ (posedge clk) begin
    dummy_axis_rx_tstrb <= axis_rx_tstrb;
    dummy_axis_rx_tkeep <= axis_rx_tkeep;
    dummy_axis_rx_tdest <= axis_rx_tdest;
    dummy_axis_rx_tid <= axis_rx_tid;
end

reg  [AXIS_OPSW-1:0] r_tuser_op;

reg  inst_fifo_push, inst_init_fifo_push;
reg  [INSTW-1:0] inst_fifo_idata, inst_init_idata;
wire [INSTW-1:0] inst_fifo_odata;
wire inst_fifo_full, inst_fifo_empty;
wire inst_fifo_pop;

wire input_fifo_empty, input_fifo_full;
reg  [DATAW-1:0] input_fifo_idata;
wire [DATAW-1:0] input_fifo_odata;
reg  input_fifo_push;
wire input_fifo_pop;

wire inst_fifo_almost_full;
wire input_fifo_almost_full;
wire reduction_fifo_almost_full;

wire reduction_fifo_empty, reduction_fifo_full;
reg  [DATAW-1:0] reduction_fifo_idata;
wire [DATAW-1:0] reduction_fifo_odata;
reg  reduction_fifo_push;
wire reduction_fifo_pop;

wire output_fifo_empty, output_fifo_full, output_fifo_almost_full;
wire [NODESW-1:0] output_fifo_odest;
wire output_fifo_oop;
wire [DATAW-1:0] output_fifo_odata;
reg  output_fifo_pop;

reg  [RFADDRW-1:0] rf_waddr;
reg  [DPES-1:0] rf_wen;  
reg  [DATAW-1:0] rf_wdata;
wire [DPES*DATAW-1:0] rf_rdata; 

wire [RFADDRW-1:0] accum_mem_waddr;
wire [DATAW-1:0] accum_mem_rdata;

wire [OPRECISION*DPES-1:0] datapath_results;
wire [DATAW-1:0] truncated_datapath_results;
wire [DPES-1:0] datapath_ovalid;
wire [NODESW-1:0] datapath_dest;
wire datapath_op;

wire [NODESW-1:0] inst_release_dest;
wire [RFADDRW-1:0] inst_rf_raddr, inst_accum_raddr;
wire inst_reduce, inst_accum_en, inst_release_op, inst_release, inst_jump, inst_en, inst_last;
wire [RFADDRW-1:0] tuser_rf_addr;
wire [AXIS_OPSW-1:0] tuser_op;
wire [DPES-1:0] tuser_rf_en;

reg rxtready, txtvalid;
reg [AXIS_OPSW:0] tx_tuser_op;
reg [INSTW-1:0] r_inst, rr_inst;
reg r_inst_valid, r_inst_accum_en, r_inst_release, r_inst_reduce, r_inst_release_op;
reg rr_inst_valid, rr_inst_accum_en, rr_inst_release, rr_inst_reduce, rr_inst_release_op;
reg [DATAW-1:0] r_input_operands, rr_input_operands;
reg [DATAW-1:0] r_reduction_operands, rr_reduction_operands;
reg [RFADDRW-1:0] r_inst_accum_raddr, rr_inst_accum_raddr;
reg [NODESW-1:0] r_inst_release_dest, rr_inst_release_dest;

wire last_dword_s;

// FIFO to store instructions
fifo # (
    .DATAW(INSTW),
    .DEPTH(INSTD),
	.ALMOST_FULL_DEPTH(INSTD),
	.ADDRW(INSTADDRW)
) instruction_fifo (
    .clk(clk),
    .rst(rst),
    .push(inst_fifo_push),
    .pop(inst_fifo_pop),
    .idata(inst_fifo_idata),
    .odata(inst_fifo_odata),
    .empty(inst_fifo_empty),
    .full(inst_fifo_full),
    .almost_full(inst_fifo_almost_full)
);

// Split the instructions into fields for ease-of-use later
assign inst_release_op 		= inst_fifo_odata[31]; 		
assign inst_release_dest 	= inst_fifo_odata[30:22]; 	
assign inst_rf_raddr 		= inst_fifo_odata[21:13]; 	
assign inst_accum_raddr 	= inst_fifo_odata[12:4]; 	
assign inst_last 			= inst_fifo_odata[3]; 		
assign inst_reduce 			= inst_fifo_odata[0]; 		
assign inst_accum_en 		= inst_fifo_odata[1]; 		
assign inst_release 		= inst_fifo_odata[2]; 		

// Split the tuser field for ease-of-use later
assign tuser_rf_addr 		= axis_rx_tuser[8:0];
assign tuser_op 			= axis_rx_tuser[10:9];
assign tuser_rf_en = {{(DPES){1'b0}}, axis_rx_tuser[14:11]};

// FIFO for input vectors sent to the MVM
fifo # (
    .DATAW(DATAW),
    .DEPTH(FIFOD),
	.ADDRW(INSTADDRW),
	.ALMOST_FULL_DEPTH(FIFOD)
) input_fifo (
    .clk(clk),
    .rst(rst),
    .push(input_fifo_push),
    .idata(input_fifo_idata),
    .pop(input_fifo_pop),
    .odata(input_fifo_odata),
    .empty(input_fifo_empty),
    .full(input_fifo_full),
    .almost_full(input_fifo_almost_full)
);

// FIFO for accumulation vectors sent to the MVM
fifo # (
    .DATAW(DATAW),
    .DEPTH(FIFOD),
	.ADDRW(INSTADDRW),
	.ALMOST_FULL_DEPTH(FIFOD)
) reduction_fifo (
    .clk(clk),
    .rst(rst),
    .push(reduction_fifo_push),
    .idata(reduction_fifo_idata),
    .pop(reduction_fifo_pop),
    .odata(reduction_fifo_odata),
    .empty(reduction_fifo_empty),
    .full(reduction_fifo_full),
    .almost_full(reduction_fifo_almost_full)
);

// Pipeline to pass release_dest and release_op alongside datapath
pipeline # (
    .DELAY(DATAPATH_DELAY),
    .WIDTH(NODESW+1)
) release_pipeline (
    .clk(clk),
    .rst(rst),
    .data_in({rr_inst_release_op, rr_inst_release_dest}),
    .data_out({datapath_op, datapath_dest})
);

// Datapath 0
memory_block # (
    .DATAW(DATAW),
    .DEPTH(RFDEPTH),
    .ADDRW(RFADDRW)
) rf_0 (
    .clk(clk),
    .rst(rst),
    .waddr(rf_waddr),
    .wen(rf_wen[0]),
    .wdata(rf_wdata),
    .raddr(inst_rf_raddr),
    .rdata(rf_rdata[DATAW-1:0])
);

datapath # (
    .LANES(LANES),
    .DATAW(DATAW),
    .IPREC(IPRECISION),
    .OPREC(OPRECISION),
    .MEM_DEPTH(RFDEPTH),
    .ADDRW(RFADDRW)
) datapath_inst_0 (
    .clk(clk),
    .rst(rst),
    .i_valid(rr_inst_valid),
    .i_dataa(rr_input_operands),
    .i_datab(rf_rdata[DATAW-1:0]), 
    .i_datac(rr_reduction_operands[IPRECISION-1:0]),
    .i_accum_addr(rr_inst_accum_raddr),
    .i_accum(rr_inst_accum_en),
    .i_last(rr_inst_release),
    .i_reduce(rr_inst_reduce),
    .o_valid(datapath_ovalid[0]),
    .o_result(datapath_results[OPRECISION-1:0])
);

// ReLU implementation for datapath 0
wire signed [OPRECISION-1:0] mvm_result_0 = datapath_results[OPRECISION-1:0];
wire signed [IPRECISION-1:0] mvm_input_result_0 = mvm_result_0[IPRECISION-1:0];
wire [IPRECISION-1:0] relu_result_0 = (USE_RELU && (mvm_input_result_0 < 0)) ? {IPRECISION{1'b0}} : mvm_input_result_0;
assign truncated_datapath_results[IPRECISION-1:0] = datapath_results[IPRECISION-1:0];

// Datapath 1
memory_block # (
    .DATAW(DATAW),
    .DEPTH(RFDEPTH),
    .ADDRW(RFADDRW)
) rf_1 (
    .clk(clk),
    .rst(rst),
    .waddr(rf_waddr),
    .wen(rf_wen[1]),
    .wdata(rf_wdata),
    .raddr(inst_rf_raddr),
    .rdata(rf_rdata[2*DATAW-1:DATAW]) 
);

datapath # (
    .LANES(LANES),
    .DATAW(DATAW),
    .IPREC(IPRECISION),
    .OPREC(OPRECISION),
    .MEM_DEPTH(RFDEPTH),
    .ADDRW(RFADDRW)
) datapath_inst_1 (
    .clk(clk),
    .rst(rst),
    .i_valid(rr_inst_valid),
    .i_dataa(rr_input_operands),
    .i_datab(rf_rdata[2*DATAW-1:DATAW]), 
    .i_datac(rr_reduction_operands[2*IPRECISION-1:IPRECISION]),
    .i_accum_addr(rr_inst_accum_raddr),
    .i_accum(rr_inst_accum_en),
    .i_last(rr_inst_release),
    .i_reduce(rr_inst_reduce),
    .o_valid(datapath_ovalid[1]),
    .o_result(datapath_results[2*OPRECISION-1:OPRECISION])
);

// ReLU implementation for datapath 1
wire signed [OPRECISION-1:0] mvm_result_1 = datapath_results[2*OPRECISION-1:OPRECISION];
wire signed [IPRECISION-1:0] mvm_input_result_1 = mvm_result_1[IPRECISION-1:0];
wire [IPRECISION-1:0] relu_result_1 = (USE_RELU && (mvm_input_result_1 < 0)) ? {IPRECISION{1'b0}} : mvm_input_result_1;
assign truncated_datapath_results[2*IPRECISION-1:IPRECISION] = datapath_results[OPRECISION+IPRECISION-1:OPRECISION];

// Datapath 2
memory_block # (
    .DATAW(DATAW),
    .DEPTH(RFDEPTH),
    .ADDRW(RFADDRW)
) rf_2 (
    .clk(clk),
    .rst(rst),
    .waddr(rf_waddr),
    .wen(rf_wen[2]),
    .wdata(rf_wdata),
    .raddr(inst_rf_raddr),
    .rdata(rf_rdata[3*DATAW-1:2*DATAW])
);

datapath # (
    .LANES(LANES),
    .DATAW(DATAW),
    .IPREC(IPRECISION),
    .OPREC(OPRECISION),
    .MEM_DEPTH(RFDEPTH),
    .ADDRW(RFADDRW)
) datapath_inst_2 (
    .clk(clk),
    .rst(rst),
    .i_valid(rr_inst_valid),
    .i_dataa(rr_input_operands),
    .i_datab(rf_rdata[3*DATAW-1:2*DATAW]), 
    .i_datac(rr_reduction_operands[3*IPRECISION-1:2*IPRECISION]),
    .i_accum_addr(rr_inst_accum_raddr),
    .i_accum(rr_inst_accum_en),
    .i_last(rr_inst_release),
    .i_reduce(rr_inst_reduce),
    .o_valid(datapath_ovalid[2]),
    .o_result(datapath_results[3*OPRECISION-1:2*OPRECISION])
);

// ReLU implementation for datapath 2
wire signed [OPRECISION-1:0] mvm_result_2 = datapath_results[3*OPRECISION-1:2*OPRECISION];
wire signed [IPRECISION-1:0] mvm_input_result_2 = mvm_result_2[IPRECISION-1:0];
wire [IPRECISION-1:0] relu_result_2 = (USE_RELU && (mvm_input_result_2 < 0)) ? {IPRECISION{1'b0}} : mvm_input_result_2;
assign truncated_datapath_results[3*IPRECISION-1:2*IPRECISION] = datapath_results[2*OPRECISION+IPRECISION-1:2*OPRECISION];

// Datapath 3
memory_block # (
    .DATAW(DATAW),
    .DEPTH(RFDEPTH),
    .ADDRW(RFADDRW)
) rf_3 (
    .clk(clk),
    .rst(rst),
    .waddr(rf_waddr),
    .wen(rf_wen[3]),
    .wdata(rf_wdata),
    .raddr(inst_rf_raddr),
    .rdata(rf_rdata[4*DATAW-1:3*DATAW])
);

datapath # (
    .LANES(LANES),
    .DATAW(DATAW),
    .IPREC(IPRECISION),
    .OPREC(OPRECISION),
    .MEM_DEPTH(RFDEPTH),
    .ADDRW(RFADDRW)
) datapath_inst_3 (
    .clk(clk),
    .rst(rst),
    .i_valid(rr_inst_valid),
    .i_dataa(rr_input_operands),
    .i_datab(rf_rdata[4*DATAW-1:3*DATAW]), 
    .i_datac(rr_reduction_operands[4*IPRECISION-1:3*IPRECISION]),
    .i_accum_addr(rr_inst_accum_raddr),
    .i_accum(rr_inst_accum_en),
    .i_last(rr_inst_release),
    .i_reduce(rr_inst_reduce),
    .o_valid(datapath_ovalid[3]),
    .o_result(datapath_results[4*OPRECISION-1:3*OPRECISION])
);

// ReLU implementation for datapath 3
wire signed [OPRECISION-1:0] mvm_result_3 = datapath_results[4*OPRECISION-1:3*OPRECISION];
wire signed [IPRECISION-1:0] mvm_input_result_3 = mvm_result_3[IPRECISION-1:0];
wire [IPRECISION-1:0] relu_result_3 = (USE_RELU && (mvm_input_result_3 < 0)) ? {IPRECISION{1'b0}} : mvm_input_result_3;
assign truncated_datapath_results[4*IPRECISION-1:3*IPRECISION] = datapath_results[3*OPRECISION+IPRECISION-1:3*OPRECISION];

// Specify if ready to accept input
always @ (*) begin
    if (axis_rx_tvalid && tuser_op == 0) begin
        rxtready <= !inst_fifo_full;
    end else if (axis_rx_tvalid && tuser_op == 1) begin
        rxtready <= !reduction_fifo_full;
    end else if (axis_rx_tvalid && tuser_op == 2) begin
        rxtready <= !input_fifo_full;
    end else if (axis_rx_tvalid && tuser_op == 3) begin
        rxtready <= 1'b1;
    end else begin
        rxtready <= 1'b0;
    end
end

// Read from input interface and steer to destination mem/FIFO
always @ (posedge clk) begin
    if (axis_rx_tvalid && axis_rx_tready) begin
        if (tuser_op == 0) begin
            inst_init_idata <= axis_rx_tdata[INSTW-1:0];
            inst_init_fifo_push <= 1'b1;
            reduction_fifo_push <= 1'b0;
            input_fifo_push <= 1'b0;
            rf_wen <= {DPES{1'b0}}; 
        end else if (tuser_op == 1) begin
            reduction_fifo_idata <= axis_rx_tdata[DATAW-1:0];
            inst_init_fifo_push <= 1'b0;
            reduction_fifo_push <= 1'b1;
            input_fifo_push <= 1'b0;
            rf_wen <= {DPES{1'b0}}; 
        end else if (tuser_op == 2) begin
            input_fifo_idata <= axis_rx_tdata[DATAW-1:0];
            input_fifo_push <= 1'b1;
            inst_init_fifo_push <= 1'b0;
            reduction_fifo_push <= 1'b0;
            rf_wen <= {DPES{1'b0}}; 
        end else if (tuser_op == 3) begin
            rf_wen <= tuser_rf_en[DPES-1:0]; 
            rf_wdata <= axis_rx_tdata[DATAW-1:0];
            rf_waddr <= tuser_rf_addr;
            inst_init_fifo_push <= 1'b0;
            reduction_fifo_push <= 1'b0;
            input_fifo_push <= 1'b0;
        end
        
        r_tuser_op <= tuser_op;
    end else begin
        inst_init_fifo_push <= 1'b0;
        reduction_fifo_push <= 1'b0;
        input_fifo_push <= 1'b0;
        rf_wen <= {DPES{1'b0}}; 
    end
end

// Multiplexer logic to switch between initial instruction writes, and looping the instructions
always @ (*) begin
    if (r_tuser_op == 0) begin
        inst_fifo_push = inst_init_fifo_push;
        inst_fifo_idata = inst_init_idata;
    end else begin
        inst_fifo_push = inst_fifo_pop;
        inst_fifo_idata = inst_fifo_odata;
    end
end

// Combinatory logic for tx_tuser_op
always @ (*) begin
    if (output_fifo_oop) begin
        tx_tuser_op = 2'h2;
    end else begin
        tx_tuser_op = 2'h1;
    end
end

// Process next instruction if there is an instruction and input vector available, and the output FIFO is able to take outputs
assign inst_fifo_pop = ~inst_fifo_empty && !input_fifo_empty && !output_fifo_almost_full && (!inst_reduce || !reduction_fifo_empty);
// Pop reduction vector if a request to reduce is made, the reduction vector is available, and the next instruction is able to be processed
assign reduction_fifo_pop = inst_reduce && !reduction_fifo_empty && inst_fifo_pop;
// Pop input vector if this is the last chunk for the input vector, and the next instruction is able to be processed
assign input_fifo_pop = inst_last && inst_fifo_pop;

// Issue instruction and advance instruction raddr, pop inputs
always @ (posedge clk) begin
    if (rst) begin
        r_inst_valid <= 1'b0;
        r_inst_reduce <= 1'b0;
        r_inst_accum_en <= 1'b0;
        r_inst_release <= 1'b0;
        r_inst <= 0;
        r_input_operands <= {(DATAW){1'b0}};
        r_reduction_operands <= {(DATAW){1'b0}};
        r_inst_accum_raddr <= {(RFADDRW){1'b0}};
        rr_inst_valid <= 1'b0;
        rr_inst_reduce <= 1'b0;
        rr_inst_accum_en <= 1'b0;
        rr_inst_release <= 1'b0;
        rr_inst <= 0;
        rr_input_operands <= {(DATAW){1'b0}};
        rr_reduction_operands <= {(DATAW){1'b0}};
        rr_inst_accum_raddr <= {(RFADDRW){1'b0}};
    end else begin
        if (!inst_fifo_empty) begin
            if (inst_reduce) begin
                // If there are input and reduction vectors available and output is able to take on new outputs
                if (!input_fifo_empty && !reduction_fifo_empty && !output_fifo_almost_full) begin
                    r_inst_valid <= 1'b1;
                end else begin
                    r_inst_valid <= 1'b0;
                end
            end else begin
                // If there are inputs available and output is able to take on new outputs
                if (!input_fifo_empty && !output_fifo_almost_full) begin
                    r_inst_valid <= 1'b1;
                end else begin
                    r_inst_valid <= 1'b0;
                end
            end
        end else begin
            r_inst_valid <= 1'b0;
        end
    end
    
    r_inst_release_op <= inst_release_op;
    r_inst_release_dest <= inst_release_dest;
    r_inst_reduce <= inst_reduce;
    r_inst_accum_en <= inst_accum_en;
    r_inst_release <= inst_release;
    r_inst <= inst_fifo_odata;
    r_input_operands <= input_fifo_odata;
    r_reduction_operands <= reduction_fifo_odata;
    r_inst_accum_raddr <= inst_accum_raddr;
    
    rr_inst_release_op <= r_inst_release_op;
    rr_inst_release_dest <= r_inst_release_dest;
    rr_inst_reduce <= r_inst_reduce;
    rr_inst_accum_en <= r_inst_accum_en;
    rr_inst_release <= r_inst_release;
    rr_inst <= r_inst;
    rr_input_operands <= r_input_operands;
    rr_reduction_operands <= r_reduction_operands;
    rr_inst_accum_raddr <= r_inst_accum_raddr;
    rr_inst_valid <= r_inst_valid;
end

// MVM output FIFO
fifo # (
    .DATAW(1 + NODESW + DATAW + 1),
    .DEPTH(FIFOD),
    .ALMOST_FULL_DEPTH(FIFOD-13),
	.ADDRW(INSTADDRW)
) output_data_fifo (
    .clk(clk),
    .rst(rst),
    .push(datapath_ovalid[0]),
    .idata({datapath_op, datapath_dest, truncated_datapath_results, axis_rx_tlast}),
    .pop(axis_tx_tready && !output_fifo_empty),
    .odata({output_fifo_oop, output_fifo_odest, output_fifo_odata, last_dword_s}),
    .empty(output_fifo_empty),
    .full(output_fifo_full),
    .almost_full(output_fifo_almost_full)
);

assign axis_rx_tready = rxtready;
assign axis_tx_tvalid = !output_fifo_empty;
assign axis_tx_tdata = output_fifo_odata;
assign axis_tx_tdest = output_fifo_odest;
assign axis_tx_tid = 0;
assign axis_tx_tuser = {19'h0, tx_tuser_op, 9'h0}; // Send tuser field as either input or reduction vector

// Hook up rest of Tx signals to dummy values to avoid optimizing them out
assign axis_tx_tstrb = output_fifo_odata[BYTEW-1:0];
assign axis_tx_tkeep = output_fifo_odata[2*BYTEW-1:BYTEW];
assign axis_tx_tlast = last_dword_s;

endmodule