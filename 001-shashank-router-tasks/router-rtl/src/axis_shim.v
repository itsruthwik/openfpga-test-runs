module axis_shim_in #(
    // Parameters
parameter TDEST_WIDTH = 3,
parameter TDATA_WIDTH = 512,
parameter BUFFER_DEPTH = 4,
parameter FLIT_BUFFER_DEPTH = 4,
parameter FORCE_MLAB = 0,      // Removed 'bit' type
parameter CREDIT_WIDTH = 3    // Hardcoded replacement for $clog2(FLIT_BUFFER_DEPTH)+1

) (
    clk,
    rst_n,
    axis_tvalid,
    axis_tready,
    axis_tdata,
    axis_tlast,
    axis_tdest,
    data_out,
    dest_out,
    is_tail_out,
    send_out,
    credit_in
);

    // Ports
    input          clk;
    input          rst_n;
    input          axis_tvalid;
    output         axis_tready;
    input  [TDATA_WIDTH - 1 : 0]  axis_tdata;
    input          axis_tlast;
    input  [TDEST_WIDTH - 1 : 0]  axis_tdest;
    output [TDATA_WIDTH - 1 : 0]  data_out;
    output [TDEST_WIDTH - 1 : 0]  dest_out;
    output         is_tail_out;
    output         send_out;
    input          credit_in;

    // Internal signals
    reg    [CREDIT_WIDTH - 1 : 0] credit_count;
    wire   credit_used;
    reg    send_out_reg;          // Register for registered output
    
    // Credit counter
    always @(posedge clk) begin
        if (!rst_n) begin
            credit_count <= FLIT_BUFFER_DEPTH;
        end else begin
            credit_count <= credit_count + credit_in - credit_used;
        end
    end

    // Handle BUFFER_DEPTH == 0 case directly with if/else
    // Direct connection assignments
    wire direct_data_out;
    wire direct_dest_out;
    wire direct_is_tail_out;
    wire direct_send_out;
    wire direct_axis_tready;
    wire direct_credit_used;
    
    // Direct connection implementation
    assign direct_data_out = axis_tdata;
    assign direct_dest_out = axis_tdest;
    assign direct_is_tail_out = axis_tlast;
    assign direct_send_out = axis_tvalid & direct_axis_tready;
    assign direct_axis_tready = (credit_count != 0);
    assign direct_credit_used = direct_send_out;
    
    // Buffered implementation signals
    wire buffer_empty, buffer_full, buffer_rdreq;
    wire buffered_axis_tready;
    wire buffered_credit_used;
    wire [TDATA_WIDTH - 1 : 0] buffered_data_out;
    wire [TDEST_WIDTH - 1 : 0] buffered_dest_out;
    wire buffered_is_tail_out;
    
    // Buffered implementation
    assign buffered_axis_tready = !buffer_full;
    assign buffered_credit_used = buffer_rdreq;
    assign buffer_rdreq = (credit_count > 0) & !buffer_empty;
    
    always @(posedge clk) begin
        if (!rst_n)
            send_out_reg <= 0;
        else
            send_out_reg <= buffer_rdreq;
    end
    
    // scfifo instantiation for buffered implementation
    scfifo #(
        .WIDTH      (TDATA_WIDTH + TDEST_WIDTH + 1),
        .DEPTH      (BUFFER_DEPTH),
        .FORCE_MLAB (FORCE_MLAB))
    buffer (
        .clock  (clk),
        .data   ({axis_tdata, axis_tdest, axis_tlast}),
        .rdreq  (buffer_rdreq),
        .sclr   (~rst_n),
        .wrreq  (axis_tvalid & buffered_axis_tready),
        .empty  (buffer_empty),
        .full   (buffer_full),
        .q      ({buffered_data_out, buffered_dest_out, buffered_is_tail_out})
    );
    
    // Output selection based on BUFFER_DEPTH parameter
    assign data_out = (BUFFER_DEPTH == 0) ? direct_data_out : buffered_data_out;
    assign dest_out = (BUFFER_DEPTH == 0) ? direct_dest_out : buffered_dest_out;
    assign is_tail_out = (BUFFER_DEPTH == 0) ? direct_is_tail_out : buffered_is_tail_out;
    assign send_out = (BUFFER_DEPTH == 0) ? direct_send_out : send_out_reg;
    assign axis_tready = (BUFFER_DEPTH == 0) ? direct_axis_tready : buffered_axis_tready;
    assign credit_used = (BUFFER_DEPTH == 0) ? direct_credit_used : buffered_credit_used;

endmodule

module axis_shim_out #(
    // Parameters
parameter TDEST_WIDTH = 3,
parameter TDATA_WIDTH = 512,
parameter BUFFER_DEPTH = 4,
parameter FLIT_BUFFER_DEPTH = 4,
parameter FORCE_MLAB = 0,      // Removed 'bit' type
parameter BUFFER_WIDTH = 3     // Hardcoded replacement for $clog2(BUFFER_DEPTH)+1

) (
    clk,
    rst_n,
    axis_tvalid,
    axis_tready,
    axis_tdata,
    axis_tlast,
    axis_tdest,
    data_in,
    dest_in,
    is_tail_in,
    send_in,
    credit_out
);
  
    // Ports
    input          clk;
    input          rst_n;
    output         axis_tvalid;
    input          axis_tready;
    output [TDATA_WIDTH - 1 : 0] axis_tdata;
    output         axis_tlast;
    output [TDEST_WIDTH - 1 : 0] axis_tdest;
    input  [TDATA_WIDTH - 1 : 0] data_in;
    input  [TDEST_WIDTH - 1 : 0] dest_in;
    input          is_tail_in;
    input          send_in;
    output         credit_out;

    // Internal signals
    wire   buffer_empty, buffer_full;
    reg    [BUFFER_WIDTH - 1 : 0] credit_count;
    reg    [BUFFER_WIDTH - 1 : 0] buffer_usedw;

    // Credit counter and buffer usage tracking
    always @(posedge clk) begin
        if (!rst_n) begin
            credit_count <= FLIT_BUFFER_DEPTH;
            buffer_usedw <= 0;
        end else begin
            credit_count <= credit_count - send_in + credit_out;
            buffer_usedw <= buffer_usedw + send_in - (axis_tready & axis_tvalid);
        end
    end

    // Output logic
    assign axis_tvalid = ~buffer_empty;

    assign credit_out = ((credit_count < FLIT_BUFFER_DEPTH) || send_in) &&
                        ((credit_count < (BUFFER_DEPTH - buffer_usedw)) || (axis_tready & axis_tvalid));

    // scfifo instantiation
    scfifo #(
        .WIDTH      (TDATA_WIDTH + TDEST_WIDTH + 1),
        .DEPTH      (BUFFER_DEPTH),
        .SHOWAHEAD  ("ON"),
        .FORCE_MLAB (FORCE_MLAB))
    buffer (
        .clock  (clk),
        .data   ({data_in, dest_in, is_tail_in}),
        .rdreq  (axis_tvalid & axis_tready),
        .sclr   (~rst_n),
        .wrreq  (send_in),
        .empty  (buffer_empty),
        .full   (buffer_full),
        .q      ({axis_tdata, axis_tdest, axis_tlast})
    );

endmodule