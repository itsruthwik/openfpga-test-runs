module axis_switch_loaded_pe6_complex #(
    parameter DATAW = 128,                                    
    parameter IDW = 32,      
    parameter DESTW = 4,    
    parameter USERW = 32
) (
    input                  CLK,
    input                  RST_N,

    // AXI-Stream Slave Interface
    // input                 AXIS_S_TVALID,
    // output                AXIS_S_TREADY,
    // input    [DATAW-1:0]  AXIS_S_TDATA,
    // input                 AXIS_S_TLAST,
    // input    [IDW-1:0]    AXIS_S_TID,
    // input    [USERW-1:0]  AXIS_S_TUSER,
    // input    [DESTW-1:0]  AXIS_S_TDEST,

    input [DESTW-1:0]  pe_out_tdest_0,
    input [DESTW-1:0]  pe_out_tdest_1,
    input [DESTW-1:0]  pe_out_tdest_2,
    input [DESTW-1:0]  pe_out_tdest_3,
    input [DESTW-1:0]  pe_out_tdest_4,
    input [DESTW-1:0]  pe_out_tdest_5,

    // AXI-Stream Master Interface
    output                 AXIS_M_TVALID,
    input                  AXIS_M_TREADY,
    output   [DATAW-1:0]   AXIS_M_TDATA,
    output                 AXIS_M_TLAST,
    output   [IDW-1:0]     AXIS_M_TID,
    output   [USERW-1:0]   AXIS_M_TUSER,
    output   [DESTW-1:0]   AXIS_M_TDEST
);

// PE signals
    wire pe_in_tvalid_0;
    wire pe_in_tvalid_1;
    wire pe_in_tvalid_2;
    wire pe_in_tvalid_3;
    wire pe_in_tvalid_4;
    wire pe_in_tvalid_5;

    wire pe_out_tvalid_0;
    wire pe_out_tvalid_1;
    wire pe_out_tvalid_2;
    wire pe_out_tvalid_3;
    wire pe_out_tvalid_4;
    wire pe_out_tvalid_5;

    wire pe_in_tready_0;
    wire pe_in_tready_1;
    wire pe_in_tready_2;
    wire pe_in_tready_3;
    wire pe_in_tready_4;
    wire pe_in_tready_5;

    wire pe_out_tready_0;
    wire pe_out_tready_1;
    wire pe_out_tready_2;
    wire pe_out_tready_3;
    wire pe_out_tready_4;
    wire pe_out_tready_5;

    wire [DATAW-1:0] pe_in_tdata_0;
    wire [DATAW-1:0] pe_in_tdata_1;
    wire [DATAW-1:0] pe_in_tdata_2;
    wire [DATAW-1:0] pe_in_tdata_3;
    wire [DATAW-1:0] pe_in_tdata_4;
    wire [DATAW-1:0] pe_in_tdata_5;

    wire [DATAW-1:0] pe_out_tdata_0;
    wire [DATAW-1:0] pe_out_tdata_1;
    wire [DATAW-1:0] pe_out_tdata_2;
    wire [DATAW-1:0] pe_out_tdata_3;
    wire [DATAW-1:0] pe_out_tdata_4;
    wire [DATAW-1:0] pe_out_tdata_5;

// master wires 
    wire m_in_tvalid;
    wire m_in_tready;
    wire [DATAW-1:0] m_in_tdata;
    wire [DESTW-1:0] m_in_tdest;

    wire m_out_tvalid;
    wire m_out_tready;
    wire [DATAW-1:0] m_out_tdata;
    wire [DESTW-1:0] m_out_tdest;


// master inst
master_module m_inst (
    .clk(CLK),
    .reset(~RST_N),

    .axis_rx_tvalid(m_in_tvalid),
    .axis_rx_tdata(m_in_tdata),
    .axis_rx_tdest(m_in_tdest),
    .axis_rx_tready(m_in_tready),

    .axis_tx_tvalid(m_out_tvalid),
    .axis_tx_tdata(m_out_tdata),
    .axis_tx_tdest(m_out_tdest),
    .axis_tx_tready(m_out_tready)
);



wrapper_pe pe_inst_0 (
    .clk(CLK),
    .reset(~RST_N),

    .in_tvalid(pe_in_tvalid_0),
    .in_tdata(pe_in_tdata_0),
    .in_tready(pe_in_tready_0),

    .out_tvalid(pe_out_tvalid_0),
    .out_tdata(pe_out_tdata_0),
    .out_tready(pe_out_tready_0)
);

wrapper_pe pe_inst_1 (
    .clk(CLK),
    .reset(~RST_N),

    .in_tvalid(pe_in_tvalid_1),
    .in_tdata(pe_in_tdata_1),
    .in_tready(pe_in_tready_1),

    .out_tvalid(pe_out_tvalid_1),
    .out_tdata(pe_out_tdata_1),
    .out_tready(pe_out_tready_1)
);

wrapper_pe pe_inst_2 (
    .clk(CLK),
    .reset(~RST_N),

    .in_tvalid(pe_in_tvalid_2),
    .in_tdata(pe_in_tdata_2),
    .in_tready(pe_in_tready_2),

    .out_tvalid(pe_out_tvalid_2),
    .out_tdata(pe_out_tdata_2),
    .out_tready(pe_out_tready_2)
);

wrapper_pe pe_inst_3 (
    .clk(CLK),
    .reset(~RST_N),

    .in_tvalid(pe_in_tvalid_3),
    .in_tdata(pe_in_tdata_3),
    .in_tready(pe_in_tready_3),

    .out_tvalid(pe_out_tvalid_3),
    .out_tdata(pe_out_tdata_3),
    .out_tready(pe_out_tready_3)
);

wrapper_pe pe_inst_4 (
    .clk(CLK),
    .reset(~RST_N),

    .in_tvalid(pe_in_tvalid_4),
    .in_tdata(pe_in_tdata_4),
    .in_tready(pe_in_tready_4),

    .out_tvalid(pe_out_tvalid_4),
    .out_tdata(pe_out_tdata_4),
    .out_tready(pe_out_tready_4)
);

wrapper_pe pe_inst_5 (
    .clk(CLK),
    .reset(~RST_N),

    .in_tvalid(pe_in_tvalid_5),
    .in_tdata(pe_in_tdata_5),
    .in_tready(pe_in_tready_5),

    .out_tvalid(pe_out_tvalid_5),
    .out_tdata(pe_out_tdata_5),
    .out_tready(pe_out_tready_5)
);



always @(posedge CLK) begin
    if (~RST_N) begin
        pe_in_tvalid_0 <= 1'b0;
        pe_in_tvalid_1 <= 1'b0;
        pe_in_tvalid_2 <= 1'b0;
        pe_in_tvalid_3 <= 1'b0;
        pe_in_tvalid_4 <= 1'b0;
        pe_in_tvalid_5 <= 1'b0;
    
        pe_in_tdata_0 <= 0;
        pe_in_tdata_1 <= 0;
        pe_in_tdata_2 <= 0;
        pe_in_tdata_3 <= 0;
        pe_in_tdata_4 <= 0;
        pe_in_tdata_5 <= 0;

        pe_out_tready_0 <= 1'b1;
        pe_out_tready_1 <= 1'b1;
        pe_out_tready_2 <= 1'b1;
        pe_out_tready_3 <= 1'b1;
        pe_out_tready_4 <= 1'b1;
        pe_out_tready_5 <= 1'b1;

        m_in_tvalid <= 1'b0;
        m_in_tdata <= 0;
        m_in_tdest <= 0;
        m_out_tready <= 1'b0;

    end else begin
        if (m_out_tvalid) begin
            if (m_out_tdest == 0  && pe_in_tready_0) begin
                pe_in_tvalid_0 <= m_out_tvalid;
                pe_in_tdata_0 <= m_out_tdata;
                m_out_tready <= pe_in_tready_0;
            end else if (m_out_tdest == 1 && pe_in_tready_1) begin
                pe_in_tvalid_1 <= m_out_tvalid;
                pe_in_tdata_1 <= m_out_tdata;
                m_out_tready <= pe_in_tready_1;
            end else if (m_out_tdest == 2 && pe_in_tready_2) begin
                pe_in_tvalid_2 <= m_out_tvalid;
                pe_in_tdata_2 <= m_out_tdata;
                m_out_tready <= pe_in_tready_2;
            end else if (m_out_tdest == 3 && pe_in_tready_3) begin
                pe_in_tvalid_3 <= m_out_tvalid;
                pe_in_tdata_3 <= m_out_tdata;
                m_out_tready <= pe_in_tready_3;
            end else if (m_out_tdest == 4 && pe_in_tready_4) begin
                pe_in_tvalid_4 <= m_out_tvalid;
                pe_in_tdata_4 <= m_out_tdata;
                m_out_tready <= pe_in_tready_4;
            end else if (m_out_tdest == 5 && pe_in_tready_5) begin
                pe_in_tvalid_5 <= m_out_tvalid;
                pe_in_tdata_5 <= m_out_tdata;
                m_out_tready <= pe_in_tready_5;
            end
        end

        if (pe_out_tvalid_0) begin
            if (pe_out_tdest_0 == 1 && pe_in_tready_1) begin
                pe_in_tvalid_1 <= pe_out_tvalid_0;
                pe_in_tdata_1 <= pe_out_tdata_0;
                pe_out_tready_0 <= pe_in_tready_1;
            end else if (pe_out_tdest_0 == 2 && pe_in_tready_2) begin
                pe_in_tvalid_2 <= pe_out_tvalid_0;
                pe_in_tdata_2 <= pe_out_tdata_0;
                pe_out_tready_0 <= pe_in_tready_2;
            end else if (pe_out_tdest_0 == 3 && pe_in_tready_3) begin
                pe_in_tvalid_3 <= pe_out_tvalid_0;
                pe_in_tdata_3 <= pe_out_tdata_0;
                pe_out_tready_0 <= pe_in_tready_3;
            end else if (pe_out_tdest_0 == 4 && pe_in_tready_4) begin
                pe_in_tvalid_4 <= pe_out_tvalid_0;
                pe_in_tdata_4 <= pe_out_tdata_0;
                pe_out_tready_0 <= pe_in_tready_4;
            end else if (pe_out_tdest_0 == 5 && pe_in_tready_5) begin
                pe_in_tvalid_5 <= pe_out_tvalid_0;
                pe_in_tdata_5 <= pe_out_tdata_0;
                pe_out_tready_0 <= pe_in_tready_5;
            end else if (pe_out_tdest_0 == 6 && m_in_tready) begin
                m_in_tvalid <= pe_out_tvalid_0;
                m_in_tdata <= pe_out_tdata_0;
                m_in_tdest <= pe_out_tdest_0;
                pe_out_tready_0 <= m_in_tready;
            end
        end

        if (pe_out_tvalid_1) begin
            if (pe_out_tdest_1 == 0 && pe_in_tready_0) begin
                pe_in_tvalid_0 <= pe_out_tvalid_1;
                pe_in_tdata_0 <= pe_out_tdata_1;
                pe_out_tready_1 <= pe_in_tready_0;
            end else if (pe_out_tdest_1 == 2 && pe_in_tready_2) begin
                pe_in_tvalid_2 <= pe_out_tvalid_1;
                pe_in_tdata_2 <= pe_out_tdata_1;
                pe_out_tready_1 <= pe_in_tready_2;
            end else if (pe_out_tdest_1 == 3 && pe_in_tready_3) begin
                pe_in_tvalid_3 <= pe_out_tvalid_1;
                pe_in_tdata_3 <= pe_out_tdata_1;
                pe_out_tready_1 <= pe_in_tready_3;
            end else if (pe_out_tdest_1 == 4 && pe_in_tready_4) begin
                pe_in_tvalid_4 <= pe_out_tvalid_1;
                pe_in_tdata_4 <= pe_out_tdata_1;
                pe_out_tready_1 <= pe_in_tready_4;
            end else if (pe_out_tdest_1 == 5 && pe_in_tready_5) begin
                pe_in_tvalid_5 <= pe_out_tvalid_1;
                pe_in_tdata_5 <= pe_out_tdata_1;
                pe_out_tready_1 <= pe_in_tready_5;
            end else if (pe_out_tdest_1 == 6 && m_in_tready) begin
                m_in_tvalid <= pe_out_tvalid_1;
                m_in_tdata <= pe_out_tdata_1;
                m_in_tdest <= pe_out_tdest_1;
                m_out_ready <= m_in_ready;
            end
        end
        if (pe_out_tvalid_2) begin
            if (pe_out_tdest_2 == 0 && pe_in_tready_0) begin
                pe_in_tvalid_0 <= pe_out_tvalid_2;
                pe_in_tdata_0 <= pe_out_tdata_2;
                pe_out_tready_2 <= pe_in_tready_0;
            end else if (pe_out_tdest_2 == 1 && pe_in_tready_1) begin
                pe_in_tvalid_1 <= pe_out_tvalid_2;
                pe_in_tdata_1 <= pe_out_tdata_2;
                pe_out_tready_2 <= pe_in_tready_1;
            end else if (pe_out_tdest_2 == 3 && pe_in_tready_3) begin
                pe_in_tvalid_3 <= pe_out_tvalid_2;
                pe_in_tdata_3 <= pe_out_tdata_2;
                pe_out_tready_2 <= pe_in_tready_3;
            end else if (pe_out_tdest_2 == 4 && pe_in_tready_4) begin
                pe_in_tvalid_4 <= pe_out_tvalid_2;
                pe_in_tdata_4 <= pe_out_tdata_2;
                pe_out_tready_2 <= pe_in_tready_4;
            end else if (pe_out_tdest_2 == 5 && pe_in_tready_5) begin
                pe_in_tvalid_5 <= pe_out_tvalid_2;
                pe_in_tdata_5 <= pe_out_tdata_2;
                pe_out_tready_2 <= pe_in_tready_5;
            end else if (pe_out_tdest_2 == 6 && m_in_tready) begin
                m_in_tvalid <= pe_out_tvalid_2;
                m_in_tdata <= pe_out_tdata_2;
                m_in_tdest <= pe_out_tdest_2;
                m_out_ready <= m_in_ready;
            end
        end

        if (pe_out_tvalid_3) begin
            if (pe_out_tdest_3 == 0 && pe_in_tready_0) begin
                pe_in_tvalid_0 <= pe_out_tvalid_3;
                pe_in_tdata_0 <= pe_out_tdata_3;
                pe_out_tready_3 <= pe_in_tready_0;
            end else if (pe_out_tdest_3 == 1 && pe_in_tready_1) begin
                pe_in_tvalid_1 <= pe_out_tvalid_3;
                pe_in_tdata_1 <= pe_out_tdata_3;
                pe_out_tready_3 <= pe_in_tready_1;
            end else if (pe_out_tdest_3 == 2 && pe_in_tready_2) begin
                pe_in_tvalid_2 <= pe_out_tvalid_3;
                pe_in_tdata_2 <= pe_out_tdata_3;
                pe_out_tready_3 <= pe_in_tready_2;
            end else if (pe_out_tdest_3 == 4 && pe_in_tready_4) begin
                pe_in_tvalid_4 <= pe_out_tvalid_3;
                pe_in_tdata_4 <= pe_out_tdata_3;
                pe_out_tready_3 <= pe_in_tready_4;
            end else if (pe_out_tdest_3 == 5 && pe_in_tready_5) begin
                pe_in_tvalid_5 <= pe_out_tvalid_3;
                pe_in_tdata_5 <= pe_out_tdata_3;
                pe_out_tready_3 <= pe_in_tready_5;
            end else if (pe_out_tdest_3 == 6 && m_in_tready) begin
                m_in_tvalid <= pe_out_tvalid_3;
                m_in_tdata <= pe_out_tdata_3;
                m_in_tdest <= pe_out_tdest_3;
                pe_out_tready_3 <= m_in_ready;
            end
        end

        if (pe_out_tvalid_4) begin
            if (pe_out_tdest_4 == 0 && pe_in_tready_0) begin
                pe_in_tvalid_0 <= pe_out_tvalid_4;
                pe_in_tdata_0 <= pe_out_tdata_4;
                pe_out_tready_4 <= pe_in_tready_0;
            end else if (pe_out_tdest_4 == 1 && pe_in_tready_1) begin
                pe_in_tvalid_1 <= pe_out_tvalid_4;
                pe_in_tdata_1 <= pe_out_tdata_4;
                pe_out_tready_4 <= pe_in_tready_1;
            end else if (pe_out_tdest_4 == 2 && pe_in_tready_2) begin
                pe_in_tvalid_2 <= pe_out_tvalid_4;
                pe_in_tdata_2 <= pe_out_tdata_4;
                pe_out_tready_4 <= pe_in_tready_2;
            end else if (pe_out_tdest_4 == 3 && pe_in_tready_3) begin
                pe_in_tvalid_3 <= pe_out_tvalid_4;
                pe_in_tdata_3 <= pe_out_tdata_4;
                pe_out_tready_4 <= pe_in_tready_3;
            end else if (pe_out_tdest_4 == 5 && pe_in_tready_5) begin
                pe_in_tvalid_5 <= pe_out_tvalid_4;
                pe_in_tdata_5 <= pe_out_tdata_4;
                pe_out_tready_4 <= pe_int_ready_5;
            end else if (pe_out_dest == 6 && m_in_ready) begin
                m_in_valid <= pe_out_tvalid_4;
                m_in_data <= pe_out_tdata_4;
                m_in_dest <= pe_out_tdest_4;
                pe_out_tready_4 <= m_in_ready;
            end
        end

        if (pe_out_tvalid_5) begin
            if (pe_out_tdest_5 == 0 && pe_in_tready_0) begin
                pe_in_tvalid_0 <= pe_out_tvalid_5;
                pe_in_tdata_0 <= pe_out_tdata_5;
                pe_out_tready_5 <= pe_in_tready_0;
            end else if (pe_out_tdest_5 == 1 && pe_in_tready_1) begin
                pe_in_tvalid_1 <= pe_out_tvalid_5;
                pe_in_tdata_1 <= pe_out_tdata_5;
                pe_out_tready_5 <= pe_in_tready_1;
            end else if (pe_out_tdest_5 == 2 && pe_in_tready_2) begin
                pe_in_tvalid_2 <= pe_out_tvalid_5;
                pe_in_tdata_2 <= pe_out_tdata_5;
                pe_out_tready_5 <= pe_in_tready_2;
            end else if (pe_out_dest == 3 && pe_in_tready_3) begin
                pe_in_tvalid_3 <= pe_out_tvalid_5;
                pe_in_tdata_3 <= pe_out_tdata_5;
                pe_out_tready_5 <= pe_in_tready_3;
            end else if (pe_out_dest == 4 && pe_in_tready_4) begin
                pe_in_tvalid_4 <= pe_out_tvalid_5;
                pe_in_tdata_4 <= pe_out_tdata_5;
                pe_out_tready_5 <= pe_in_tready_4;
            end else if (pe_out_dest == 6 && m_in_ready) begin
                m_in_valid <= pe_out_tvalid_5;
                m_in_data <= pe_out_tdata_5;
                m_in_dest <= pe_out_tdest_5;
                pe_out_tready_5 <= m_in_ready;
            end
        end
    end
end


assign AXIS_M_TVALID = m_in_tvalid;
assign AXIS_M_TDATA = m_in_tdata;
assign AXIS_M_TLAST = 1'b0;
// assign AXIS_M_TID = 0;
assign AXIS_M_TID = 0 + AXIS_M_TREADY;
assign AXIS_M_TUSER = 0;
assign AXIS_M_TDEST = m_in_tdest;
// assign m_out_tready = AXIS_M_TREADY;

endmodule


