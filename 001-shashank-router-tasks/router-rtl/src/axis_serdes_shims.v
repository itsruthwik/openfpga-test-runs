/**
 * @file axis_serdes_shim.v
 *
 * @brief AXI-Stream and serdes shims for the NoC
 *
 * @author Shashank Obla
 * Contact: sobla@andrew.cmu.edu
 *
 */

module axis_serializer_shim_in (
    clk_usr,
    clk_noc,
    rst_n_usr_sync,
    rst_n_noc_sync,
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
    // Parameters
    parameter TDEST_WIDTH = 3;
    parameter TDATA_WIDTH = 512;
    parameter SERIALIZATION_FACTOR = 1;
    parameter CLKCROSS_FACTOR = 1;
    parameter SINGLE_CLOCK = 0; // Removed 'bit' type
    parameter BUFFER_DEPTH = 4;
    parameter FLIT_BUFFER_DEPTH = 4;
    parameter EXTRA_SYNC_STAGES = 0;
    parameter FORCE_MLAB = 0; // Removed 'bit' type
    
    // Local parameters
    parameter TDATA_INT_WIDTH = TDATA_WIDTH / SERIALIZATION_FACTOR;

    // Ports
    input                                               clk_usr;
    input                                               clk_noc;
    input                                               rst_n_usr_sync;
    input                                               rst_n_noc_sync;
    input                                               axis_tvalid;
    output                                              axis_tready;
    input      [TDATA_WIDTH - 1 : 0]                    axis_tdata;
    input                                               axis_tlast;
    input      [TDEST_WIDTH - 1 : 0]                    axis_tdest;
    output     [TDATA_WIDTH / SERIALIZATION_FACTOR 
                            / CLKCROSS_FACTOR - 1 : 0]  data_out;
    output     [TDEST_WIDTH - 1 : 0]                    dest_out;
    output                                              is_tail_out;
    output                                              send_out;
    input                                               credit_in;

    // Internal signals
    wire                                axis_int_tvalid;
    wire                                axis_int_tready;
    wire [TDATA_INT_WIDTH - 1 : 0]      axis_int_tdata;
    wire                                axis_int_tlast;
    wire [TDEST_WIDTH - 1 : 0]          axis_int_tdest;

    // SERIALIZATION_FACTOR == 1 path (direct connection)
    wire                                direct_axis_int_tvalid;
    wire                                direct_axis_int_tready;
    wire [TDATA_INT_WIDTH - 1 : 0]      direct_axis_int_tdata;
    wire                                direct_axis_int_tlast;
    wire [TDEST_WIDTH - 1 : 0]          direct_axis_int_tdest;
    
    // Assignment for SERIALIZATION_FACTOR == 1
    assign direct_axis_int_tvalid = axis_tvalid;
    assign axis_tready = (SERIALIZATION_FACTOR == 1) ? direct_axis_int_tready : serializer_axis_tready;
    assign direct_axis_int_tdata = axis_tdata;
    assign direct_axis_int_tlast = axis_tlast;
    assign direct_axis_int_tdest = axis_tdest;
    
    // SERIALIZATION_FACTOR != 1 path (serializer)
    wire                                serializer_axis_tready;
    
    // Instantiate serializer for SERIALIZATION_FACTOR != 1 case
    wire                                serializer_axis_int_tvalid;
    wire                                serializer_axis_int_tready;
    wire [TDATA_INT_WIDTH - 1 : 0]      serializer_axis_int_tdata;
    wire                                serializer_axis_int_tlast;
    wire [TDEST_WIDTH - 1 : 0]          serializer_axis_int_tdest;
    
    axis_serializer serializer_inst (
        .clk                (clk_usr),
        .rst_n              (rst_n_usr_sync),
        .axis_in_tvalid     (axis_tvalid),
        .axis_in_tready     (serializer_axis_tready),
        .axis_in_tdata      (axis_tdata),
        .axis_in_tlast      (axis_tlast),
        .axis_in_tdest      (axis_tdest),
        .axis_out_tvalid    (serializer_axis_int_tvalid),
        .axis_out_tready    (serializer_axis_int_tready),
        .axis_out_tdata     (serializer_axis_int_tdata),
        .axis_out_tlast     (serializer_axis_int_tlast),
        .axis_out_tdest     (serializer_axis_int_tdest)
    );
    
    // Select signals based on SERIALIZATION_FACTOR
    assign axis_int_tvalid = (SERIALIZATION_FACTOR == 1) ? direct_axis_int_tvalid : serializer_axis_int_tvalid;
    assign axis_int_tready = (SERIALIZATION_FACTOR == 1) ? direct_axis_int_tready : serializer_axis_int_tready;
    assign axis_int_tdata = (SERIALIZATION_FACTOR == 1) ? direct_axis_int_tdata : serializer_axis_int_tdata;
    assign axis_int_tlast = (SERIALIZATION_FACTOR == 1) ? direct_axis_int_tlast : serializer_axis_int_tlast;
    assign axis_int_tdest = (SERIALIZATION_FACTOR == 1) ? direct_axis_int_tdest : serializer_axis_int_tdest;
    
    // SINGLE_CLOCK == 1 path
    wire                                          sc_axis_tready;
    wire [TDATA_WIDTH / SERIALIZATION_FACTOR
                       / CLKCROSS_FACTOR - 1 : 0] sc_data_out;
    wire [TDEST_WIDTH - 1 : 0]                    sc_dest_out;
    wire                                          sc_is_tail_out;
    wire                                          sc_send_out;
    
    // Instantiate single clock shim
    axis_shim_in #(
        .TDEST_WIDTH        (TDEST_WIDTH),
        .TDATA_WIDTH        (TDATA_INT_WIDTH),
        .BUFFER_DEPTH       (BUFFER_DEPTH * SERIALIZATION_FACTOR),
        .FLIT_BUFFER_DEPTH  (FLIT_BUFFER_DEPTH),
        .FORCE_MLAB         (FORCE_MLAB))
    sc_shim_inst (
        .clk            (clk_usr),
        .rst_n          (rst_n_usr_sync),
        .axis_tvalid    (axis_int_tvalid),
        .axis_tready    (sc_axis_tready),
        .axis_tdata     (axis_int_tdata),
        .axis_tlast     (axis_int_tlast),
        .axis_tdest     (axis_int_tdest),
        .data_out       (sc_data_out),
        .dest_out       (sc_dest_out),
        .is_tail_out    (sc_is_tail_out),
        .send_out       (sc_send_out),
        .credit_in      (credit_in)
    );

    // SINGLE_CLOCK == 0 path
    wire                                          cc_axis_tready;
    wire [TDATA_WIDTH / SERIALIZATION_FACTOR
                       / CLKCROSS_FACTOR - 1 : 0] cc_data_out;
    wire [TDEST_WIDTH - 1 : 0]                    cc_dest_out;
    wire                                          cc_is_tail_out;
    wire                                          cc_send_out;
    
    // Instantiate clock crossing shim
    axis_clkcross_shim_in #(
        .TDEST_WIDTH            (TDEST_WIDTH),
        .TDATA_WIDTH            (TDATA_INT_WIDTH),
        .SERIALIZATION_FACTOR   (CLKCROSS_FACTOR),
        .BUFFER_DEPTH           (BUFFER_DEPTH * SERIALIZATION_FACTOR),
        .FLIT_BUFFER_DEPTH      (FLIT_BUFFER_DEPTH),
        .EXTRA_SYNC_STAGES      (EXTRA_SYNC_STAGES),
        .FORCE_MLAB             (FORCE_MLAB))
    cc_shim_inst (
        .clk_usr        (clk_usr),
        .clk_noc        (clk_noc),
        .rst_n_usr_sync (rst_n_usr_sync),
        .rst_n_noc_sync (rst_n_noc_sync),
        .axis_tvalid    (axis_int_tvalid),
        .axis_tready    (cc_axis_tready),
        .axis_tdata     (axis_int_tdata),
        .axis_tlast     (axis_int_tlast),
        .axis_tdest     (axis_int_tdest),
        .data_out       (cc_data_out),
        .dest_out       (cc_dest_out),
        .is_tail_out    (cc_is_tail_out),
        .send_out       (cc_send_out),
        .credit_in      (credit_in)
    );

    // Connect outputs based on SINGLE_CLOCK parameter
    assign direct_axis_int_tready = (SINGLE_CLOCK == 1) ? sc_axis_tready : cc_axis_tready;
    assign serializer_axis_int_tready = (SINGLE_CLOCK == 1) ? sc_axis_tready : cc_axis_tready;
    assign data_out = (SINGLE_CLOCK == 1) ? sc_data_out : cc_data_out;
    assign dest_out = (SINGLE_CLOCK == 1) ? sc_dest_out : cc_dest_out;
    assign is_tail_out = (SINGLE_CLOCK == 1) ? sc_is_tail_out : cc_is_tail_out;
    assign send_out = (SINGLE_CLOCK == 1) ? sc_send_out : cc_send_out;

endmodule

module axis_clkcross_shim_in (
    clk_usr,
    clk_noc,
    rst_n_usr_sync,
    rst_n_noc_sync,
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
    // Parameters
    parameter TDEST_WIDTH = 3;
    parameter TDATA_WIDTH = 512;
    parameter SERIALIZATION_FACTOR = 4;
    parameter BUFFER_DEPTH = 4;
    parameter FLIT_BUFFER_DEPTH = 4;
    parameter EXTRA_SYNC_STAGES = 0;
    parameter FORCE_MLAB = 0; // Removed 'bit' type
    
    // Local parameters
    parameter FLIT_WIDTH = TDATA_WIDTH / SERIALIZATION_FACTOR;
    parameter CREDIT_WIDTH = 3;  // Hardcoded to replace $clog2(FLIT_BUFFER_DEPTH)
    parameter SER_COUNT_WIDTH = 2; // Hardcoded to replace $clog2(SERIALIZATION_FACTOR)

    // Ports
    input                                                 clk_usr;
    input                                                 clk_noc;
    input                                                 rst_n_usr_sync;
    input                                                 rst_n_noc_sync;
    input                                                 axis_tvalid;
    output                                                axis_tready;
    input      [TDATA_WIDTH - 1 : 0]                      axis_tdata;
    input                                                 axis_tlast;
    input      [TDEST_WIDTH - 1 : 0]                      axis_tdest;
    output     [TDATA_WIDTH / SERIALIZATION_FACTOR - 1 : 0] data_out;
    output     [TDEST_WIDTH - 1 : 0]                      dest_out;
    output                                                is_tail_out;
    output                                                send_out;
    input                                                 credit_in;

    // Internal signals
    wire [TDEST_WIDTH + 1 - 1 : 0] dest_buffer_out;
    wire dest_buffer_rdempty, dest_buffer_rdreq;
    wire data_buffer_wrfull, data_buffer_rdempty, data_buffer_rdreq;
    reg [CREDIT_WIDTH - 1 : 0] credit_count;
    reg [SER_COUNT_WIDTH - 1 : 0] ser_count;
    reg send_out_reg;
    
    // Signal assignments
    assign send_out = send_out_reg;
    assign axis_tready = ~data_buffer_wrfull;
    assign data_buffer_rdreq = (credit_count > 0) & ~data_buffer_rdempty;
    assign dest_buffer_rdreq = (ser_count == (SERIALIZATION_FACTOR - 1)) & data_buffer_rdreq;
    assign dest_out = dest_buffer_out[TDEST_WIDTH : 1];
    assign is_tail_out = dest_buffer_out[0] & (ser_count == (SERIALIZATION_FACTOR - 1));

    // Send register
    always @(posedge clk_noc) begin
        send_out_reg <= data_buffer_rdreq;
    end

    // Credit counter
    always @(posedge clk_noc) begin
        if (rst_n_noc_sync == 1'b0) begin
            credit_count <= FLIT_BUFFER_DEPTH;
        end else begin
            credit_count <= credit_count + credit_in - data_buffer_rdreq;
        end
    end

    // Serialization counter
    always @(posedge clk_noc) begin
        if (rst_n_noc_sync == 1'b0) begin
            ser_count <= SERIALIZATION_FACTOR - 1;
        end else begin
            ser_count <= ser_count - data_buffer_rdreq;
            if ((ser_count == 0) && data_buffer_rdreq) begin
                ser_count <= SERIALIZATION_FACTOR - 1;
            end
        end
    end

    // Destination + Tail buffer
    dcfifo #(
        .WIDTH              (TDEST_WIDTH + 1),
        .DEPTH              (BUFFER_DEPTH),
        .EXTRA_SYNC_STAGES  (EXTRA_SYNC_STAGES),
        .SHOWAHEAD          ("OFF"),
        .FORCE_MLAB         (FORCE_MLAB)
    ) dest_buffer (
        .aclr   (~rst_n_noc_sync | ~rst_n_usr_sync),
        .data   ({axis_tdest, axis_tlast}),
        .rdclk  (clk_noc),
        .rdreq  (dest_buffer_rdreq),
        .wrclk  (clk_usr),
        .wrreq  (axis_tvalid & axis_tready),
        .q      (dest_buffer_out),
        .rdempty(dest_buffer_rdempty),
        .wrfull ()
    );

    // Data buffer - single factor case
    wire sf_data_buffer_rdempty, sf_data_buffer_wrfull;
    wire [TDATA_WIDTH / SERIALIZATION_FACTOR - 1 : 0] sf_data_out;
    
    dcfifo #(
        .WIDTH              (TDATA_WIDTH),
        .DEPTH              (BUFFER_DEPTH),
        .EXTRA_SYNC_STAGES  (EXTRA_SYNC_STAGES),
        .SHOWAHEAD          ("OFF"),
        .FORCE_MLAB         (FORCE_MLAB)
    ) sf_data_buffer (
        .aclr   (~rst_n_noc_sync | ~rst_n_usr_sync),
        .data   (axis_tdata),
        .rdclk  (clk_noc),
        .rdreq  (data_buffer_rdreq),
        .wrclk  (clk_usr),
        .wrreq  (axis_tvalid & axis_tready),
        .q      (sf_data_out),
        .rdempty(sf_data_buffer_rdempty),
        .wrfull (sf_data_buffer_wrfull)
    );
    
    // Data buffer - multi factor case
    wire mf_data_buffer_rdempty, mf_data_buffer_wrfull;
    wire [TDATA_WIDTH / SERIALIZATION_FACTOR - 1 : 0] mf_data_out;
    
    dcfifo_mixed #(
        .WIDTH_IN           (TDATA_WIDTH),
        .WIDTH_OUT          (FLIT_WIDTH),
        .DEPTH              (BUFFER_DEPTH),
        .EXTRA_SYNC_STAGES  (EXTRA_SYNC_STAGES),
        .SHOWAHEAD          ("OFF")
    ) mf_data_buffer (
        .aclr   (~rst_n_noc_sync | ~rst_n_usr_sync),
        .data   (axis_tdata),
        .rdclk  (clk_noc),
        .rdreq  (data_buffer_rdreq),
        .wrclk  (clk_usr),
        .wrreq  (axis_tvalid & axis_tready),
        .q      (mf_data_out),
        .rdempty(mf_data_buffer_rdempty),
        .wrfull (mf_data_buffer_wrfull)
    );
    
    // Select the right implementation based on SERIALIZATION_FACTOR parameter
    assign data_buffer_rdempty = (SERIALIZATION_FACTOR == 1) ? sf_data_buffer_rdempty : mf_data_buffer_rdempty;
    assign data_buffer_wrfull = (SERIALIZATION_FACTOR == 1) ? sf_data_buffer_wrfull : mf_data_buffer_wrfull;
    assign data_out = (SERIALIZATION_FACTOR == 1) ? sf_data_out : mf_data_out;

endmodule

module axis_clkcross_shim_out (
    clk_usr,
    clk_noc,
    rst_n_usr_sync,
    rst_n_noc_sync,
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
    // Parameters
    parameter TDEST_WIDTH = 3;
    parameter TDATA_WIDTH = 512;
    parameter SERIALIZATION_FACTOR = 4;
    parameter BUFFER_DEPTH = 4;
    parameter FLIT_BUFFER_DEPTH = 4;
    parameter EXTRA_SYNC_STAGES = 0;
    parameter FORCE_MLAB = 0; // Removed 'bit' type
    
    // Local parameters
    parameter FLIT_WIDTH = TDATA_WIDTH / SERIALIZATION_FACTOR;
    parameter SER_COUNT_WIDTH = 2; // Hardcoded for $clog2(SERIALIZATION_FACTOR)
    parameter WRUSEDW_WIDTH = 4; // Hardcoded for $clog2(BUFFER_DEPTH * SERIALIZATION_FACTOR) + 1
    parameter CREDIT_WIDTH = 3; // Hardcoded for $clog2(FLIT_BUFFER_DEPTH) + 1

    // Ports
    input                                                 clk_usr;
    input                                                 clk_noc;
    input                                                 rst_n_usr_sync;
    input                                                 rst_n_noc_sync;
    output                                                axis_tvalid;
    input                                                 axis_tready;
    output     [TDATA_WIDTH - 1 : 0]                      axis_tdata;
    output                                                axis_tlast;
    output     [TDEST_WIDTH - 1 : 0]                      axis_tdest;
    input      [TDATA_WIDTH / SERIALIZATION_FACTOR - 1 : 0] data_in;
    input      [TDEST_WIDTH - 1 : 0]                      dest_in;
    input                                                 is_tail_in;
    input                                                 send_in;
    output                                                credit_out;

    // Internal signals
    wire [TDEST_WIDTH + 1 - 1 : 0] dest_buffer_out;
    wire dest_buffer_rdempty, dest_buffer_wrreq, data_buffer_rdempty;
    wire [WRUSEDW_WIDTH - 1 : 0] data_buffer_wrusedw;
    reg [CREDIT_WIDTH - 1 : 0] credit_count, credit_count_reg;
    reg [SER_COUNT_WIDTH - 1 : 0] ser_count;
    wire credit_out_wire;

    // Signal assignments
    assign dest_buffer_wrreq = (ser_count == 0) & send_in;
    assign axis_tvalid = ~data_buffer_rdempty;
    assign {axis_tdest, axis_tlast} = dest_buffer_out;
    assign credit_out = credit_out_wire;
    
    // Credit counter
    always @(posedge clk_noc) begin
        if (rst_n_noc_sync == 1'b0) begin
            credit_count <= FLIT_BUFFER_DEPTH;
        end else begin
            credit_count <= credit_count + credit_out_wire - send_in;
        end
    end

    // Delay used credits
    always @(posedge clk_noc) begin
        credit_count_reg <= credit_count;
    end

    // Credits are sent when there is space in the data buffer to hold more
    assign credit_out_wire = ((credit_count < FLIT_BUFFER_DEPTH) || send_in) &&
        ((BUFFER_DEPTH * SERIALIZATION_FACTOR) - 1 > data_buffer_wrusedw) &&
        (credit_count_reg < ((BUFFER_DEPTH * SERIALIZATION_FACTOR) - data_buffer_wrusedw - 1'b1));

    // Serialization counter
    always @(posedge clk_noc) begin
        if (rst_n_noc_sync == 1'b0) begin
            ser_count <= SERIALIZATION_FACTOR - 1;
        end else begin
            ser_count <= ser_count - send_in;
            if ((ser_count == 0) && send_in) begin
                ser_count <= SERIALIZATION_FACTOR - 1;
            end
        end
    end

    // Destination + Tail buffer
    dcfifo #(
        .WIDTH              (TDEST_WIDTH + 1),
        .DEPTH              (BUFFER_DEPTH),
        .EXTRA_SYNC_STAGES  (EXTRA_SYNC_STAGES),
        .SHOWAHEAD          ("ON"),
        .FORCE_MLAB         (FORCE_MLAB)
    ) dest_buffer (
        .aclr   (~rst_n_usr_sync | ~rst_n_noc_sync),
        .data   ({dest_in, is_tail_in}),
        .rdclk  (clk_usr),
        .rdreq  (axis_tvalid & axis_tready),
        .wrclk  (clk_noc),
        .wrreq  (dest_buffer_wrreq),
        .q      (dest_buffer_out),
        .rdempty(dest_buffer_rdempty),
        .wrfull ()
    );

    // Data buffer - single factor case
    wire sf_data_buffer_rdempty;
    wire [TDATA_WIDTH - 1 : 0] sf_axis_tdata;
    wire [WRUSEDW_WIDTH - 1 : 0] sf_data_buffer_wrusedw;
    
    dcfifo #(
        .WIDTH              (FLIT_WIDTH),
        .DEPTH              (BUFFER_DEPTH * SERIALIZATION_FACTOR),
        .EXTRA_SYNC_STAGES  (EXTRA_SYNC_STAGES),
        .SHOWAHEAD          ("ON"),
        .FORCE_MLAB         (FORCE_MLAB)
    ) sf_data_buffer (
        .aclr   (~rst_n_usr_sync | ~rst_n_noc_sync),
        .data   (data_in),
        .rdclk  (clk_usr),
        .rdreq  (axis_tvalid & axis_tready),
        .wrclk  (clk_noc),
        .wrreq  (send_in),
        .q      (sf_axis_tdata),
        .rdempty(sf_data_buffer_rdempty),
        .wrfull (),
        .wrusedw(sf_data_buffer_wrusedw)
    );
    
    // Data buffer - multi factor case
    wire mf_data_buffer_rdempty;
    wire [TDATA_WIDTH - 1 : 0] mf_axis_tdata;
    wire [WRUSEDW_WIDTH - 1 : 0] mf_data_buffer_wrusedw;
    
    dcfifo_mixed #(
        .WIDTH_IN           (FLIT_WIDTH),
        .WIDTH_OUT          (TDATA_WIDTH),
        .DEPTH              (BUFFER_DEPTH * SERIALIZATION_FACTOR),
        .EXTRA_SYNC_STAGES  (EXTRA_SYNC_STAGES),
        .SHOWAHEAD          ("ON")
    ) mf_data_buffer (
        .aclr   (~rst_n_usr_sync | ~rst_n_noc_sync),
        .data   (data_in),
        .rdclk  (clk_usr),
        .rdreq  (axis_tvalid & axis_tready),
        .wrclk  (clk_noc),
        .wrreq  (send_in),
        .q      (mf_axis_tdata),
        .rdempty(mf_data_buffer_rdempty),
        .wrfull (),
        .wrusedw(mf_data_buffer_wrusedw)
    );
    
    // Select the right implementation based on SERIALIZATION_FACTOR parameter
    assign data_buffer_rdempty = (SERIALIZATION_FACTOR == 1) ? sf_data_buffer_rdempty : mf_data_buffer_rdempty;
    assign data_buffer_wrusedw = (SERIALIZATION_FACTOR == 1) ? sf_data_buffer_wrusedw : mf_data_buffer_wrusedw;
    assign axis_tdata = (SERIALIZATION_FACTOR == 1) ? sf_axis_tdata : mf_axis_tdata;

endmodule

module axis_deserializer_shim_out (
    clk_usr,
    clk_noc,
    rst_n_usr_sync,
    rst_n_noc_sync,
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
    // Parameters
    parameter TDEST_WIDTH = 3;
    parameter TDATA_WIDTH = 512;
    parameter SERIALIZATION_FACTOR = 1;
    parameter CLKCROSS_FACTOR = 1;
    parameter SINGLE_CLOCK = 0;  // Removed 'bit' type
    parameter BUFFER_DEPTH = 4;
    parameter FLIT_BUFFER_DEPTH = 4;
    parameter EXTRA_SYNC_STAGES = 0;
    parameter FORCE_MLAB = 0;    // Removed 'bit' type
    
    // Local parameters
    parameter TDATA_INT_WIDTH = TDATA_WIDTH / SERIALIZATION_FACTOR;

    // Ports
    input                                                clk_usr;
    input                                                clk_noc;
    input                                                rst_n_usr_sync;
    input                                                rst_n_noc_sync;
    output                                               axis_tvalid;
    input                                                axis_tready;
    output     [TDATA_WIDTH - 1 : 0]                     axis_tdata;
    output                                               axis_tlast;
    output     [TDEST_WIDTH - 1 : 0]                     axis_tdest;
    input      [TDATA_WIDTH / SERIALIZATION_FACTOR
                            / CLKCROSS_FACTOR - 1 : 0]   data_in;
    input      [TDEST_WIDTH - 1 : 0]                     dest_in;
    input                                                is_tail_in;
    input                                                send_in;
    output                                               credit_out;

    // Internal signals
    wire                            axis_int_tvalid;
    wire                            axis_int_tready;
    wire [TDATA_INT_WIDTH - 1 : 0]  axis_int_tdata;
    wire                            axis_int_tlast;
    wire [TDEST_WIDTH - 1 : 0]      axis_int_tdest;

    // SINGLE_CLOCK == 1 path
    wire                            sc_axis_tvalid;
    wire                            sc_axis_int_tready;
    wire [TDATA_INT_WIDTH - 1 : 0]  sc_axis_int_tdata;
    wire                            sc_axis_int_tlast;
    wire [TDEST_WIDTH - 1 : 0]      sc_axis_int_tdest;
    wire                            sc_credit_out;
    
    // Single clock instantiation
    axis_shim_out sc_shim_inst (
        .clk            (clk_usr),
        .rst_n          (rst_n_usr_sync),
        .axis_tvalid    (sc_axis_tvalid),
        .axis_tready    (sc_axis_int_tready),
        .axis_tdata     (sc_axis_int_tdata),
        .axis_tlast     (sc_axis_int_tlast),
        .axis_tdest     (sc_axis_int_tdest),
        .data_in        (data_in),
        .dest_in        (dest_in),
        .is_tail_in     (is_tail_in),
        .send_in        (send_in),
        .credit_out     (sc_credit_out)
    );

    // SINGLE_CLOCK == 0 path
    wire                            cc_axis_tvalid;
    wire                            cc_axis_int_tready;
    wire [TDATA_INT_WIDTH - 1 : 0]  cc_axis_int_tdata;
    wire                            cc_axis_int_tlast;
    wire [TDEST_WIDTH - 1 : 0]      cc_axis_int_tdest;
    wire                            cc_credit_out;
    
    // Clock crossing instantiation
    axis_clkcross_shim_out cc_shim_inst (
        .clk_usr        (clk_usr),
        .clk_noc        (clk_noc),
        .rst_n_usr_sync (rst_n_usr_sync),
        .rst_n_noc_sync (rst_n_noc_sync),
        .axis_tvalid    (cc_axis_tvalid),
        .axis_tready    (cc_axis_int_tready),
        .axis_tdata     (cc_axis_int_tdata),
        .axis_tlast     (cc_axis_int_tlast),
        .axis_tdest     (cc_axis_int_tdest),
        .data_in        (data_in),
        .dest_in        (dest_in),
        .is_tail_in     (is_tail_in),
        .send_in        (send_in),
        .credit_out     (cc_credit_out)
    );
    
    // Select based on SINGLE_CLOCK parameter
    assign axis_int_tvalid = (SINGLE_CLOCK == 1) ? sc_axis_tvalid : cc_axis_tvalid; 
    assign sc_axis_int_tready = (SINGLE_CLOCK == 1) ? axis_int_tready : 1'b0;
    assign cc_axis_int_tready = (SINGLE_CLOCK == 1) ? 1'b0 : axis_int_tready;
    assign axis_int_tdata = (SINGLE_CLOCK == 1) ? sc_axis_int_tdata : cc_axis_int_tdata;
    assign axis_int_tlast = (SINGLE_CLOCK == 1) ? sc_axis_int_tlast : cc_axis_int_tlast;
    assign axis_int_tdest = (SINGLE_CLOCK == 1) ? sc_axis_int_tdest : cc_axis_int_tdest;
    assign credit_out = (SINGLE_CLOCK == 1) ? sc_credit_out : cc_credit_out;

    // SERIALIZATION_FACTOR == 1 path (direct connection)
    assign axis_tvalid = (SERIALIZATION_FACTOR == 1) ? axis_int_tvalid : deser_axis_tvalid;
    assign axis_int_tready = (SERIALIZATION_FACTOR == 1) ? axis_tready : deser_axis_int_tready;
    assign axis_tdata = (SERIALIZATION_FACTOR == 1) ? axis_int_tdata : deser_axis_tdata;
    assign axis_tlast = (SERIALIZATION_FACTOR == 1) ? axis_int_tlast : deser_axis_tlast;
    assign axis_tdest = (SERIALIZATION_FACTOR == 1) ? axis_int_tdest : deser_axis_tdest;

    // SERIALIZATION_FACTOR != 1 path (deserializer)
    wire                            deser_axis_tvalid;
    wire                            deser_axis_int_tready;
    wire [TDATA_WIDTH - 1 : 0]      deser_axis_tdata;
    wire                            deser_axis_tlast;
    wire [TDEST_WIDTH - 1 : 0]      deser_axis_tdest;
    
    // Deserializer instantiation
    axis_deserializer deserializer_inst (
        .clk                (clk_usr),
        .rst_n              (rst_n_usr_sync),
        .axis_in_tvalid     (axis_int_tvalid),
        .axis_in_tready     (deser_axis_int_tready),
        .axis_in_tdata      (axis_int_tdata),
        .axis_in_tlast      (axis_int_tlast),
        .axis_in_tdest      (axis_int_tdest),
        .axis_out_tvalid    (deser_axis_tvalid),
        .axis_out_tready    (axis_tready),
        .axis_out_tdata     (deser_axis_tdata),
        .axis_out_tlast     (deser_axis_tlast),
        .axis_out_tdest     (deser_axis_tdest)
    );

endmodule