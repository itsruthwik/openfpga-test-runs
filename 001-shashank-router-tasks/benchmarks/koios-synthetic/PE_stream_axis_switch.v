module PE_stream_axis_switch #(
    parameter DATAW = 128,
    parameter IDW = 2,
    parameter USERW = 4,
    parameter DESTW = 4
)(
        input                  clk,
        // input                  CLK_NOC,
        input                  reset,
    
        // AXI-Stream Slave Interface
        input                 AXIS_S_TVALID,
        output                AXIS_S_TREADY,
        input    [DATAW-1:0]  AXIS_S_TDATA,
        input                 AXIS_S_TLAST,
        input    [IDW-1:0]    AXIS_S_TID,
        input    [USERW-1:0]  AXIS_S_TUSER,
        input    [DESTW-1:0]  AXIS_S_TDEST,
    
        // AXI-Stream Master Interface
        output                 AXIS_M_TVALID,
        input                  AXIS_M_TREADY,
        output   [DATAW-1:0]   AXIS_M_TDATA,
        output                 AXIS_M_TLAST,
        output   [IDW-1:0]     AXIS_M_TID,
        output   [USERW-1:0]   AXIS_M_TUSER,
        output   [DESTW-1:0]   AXIS_M_TDEST
    );


// signals for master 
    wire m_in_tvalid;
    wire m_in_tready;
    wire [127:0] m_in_tdata;
    wire [3:0] m_in_tdest;

    wire m_out_tvalid;
    wire m_out_tready;
    wire [127:0] m_out_tdata;
    wire [3:0] m_out_tdest;

    // signals for slave PEs

// signals for 4 PE modules

    wire [127:0] pe_in_tdata_0;
    wire [127:0] pe_in_tdata_1;
    wire [127:0] pe_in_tdata_2;
    wire [127:0] pe_in_tdata_3;

    wire [127:0] pe_out_tdata0;
    wire [127:0] pe_out_tdata1;
    wire [127:0] pe_out_tdata2;
    wire [127:0] pe_out_tdata3;

    wire pe_in_tvalid_0;
    wire pe_in_tvalid_1;
    wire pe_in_tvalid_2;
    wire pe_in_tvalid_3;

    wire pe_out_tvalid_0;
    wire pe_out_tvalid_1;
    wire pe_out_tvalid_2;
    wire pe_out_tvalid_3;

    wire pe_out_tready_0;
    wire pe_out_tready_1;
    wire pe_out_tready_2;
    wire pe_out_tready_3;

    wire pe_in_tready_0;
    wire pe_in_tready_1;
    wire pe_in_tready_2;
    wire pe_in_tready_3;

    wire [3:0] pe_in_tdest_0;
    wire [3:0] pe_in_tdest_1;
    wire [3:0] pe_in_tdest_2;
    wire [3:0] pe_in_tdest_3;

    wire [3:0] pe_out_tdest_0;
    wire [3:0] pe_out_tdest_1;
    wire [3:0] pe_out_tdest_2;
    wire [3:0] pe_out_tdest_3;


    // 4 slave PEs

    pe_axis pe0 (
        .clk(clk),
        .reset(reset),
        .axis_in_tvalid(pe_in_tvalid_0),
        .axis_in_tdata(pe_in_tdata_0),
        .axis_in_tdest(pe_in_tdest_0),
        .axis_in_tready(pe_in_tready_0),
        .axis_out_tvalid(pe_out_tvalid_0),
        .axis_out_tdata(pe_out_tdata0),
        .axis_out_tdest(pe_out_tdest_0),
        .axis_out_tready(pe_out_tready_0)
    );


    pe_axis pe1 (
        .clk(clk),
        .reset(reset),
        .axis_in_tvalid(pe_in_tvalid_1),
        .axis_in_tdata(pe_in_tdata_1),
        .axis_in_tdest(pe_in_tdest_1),
        .axis_in_tready(pe_in_tready_1),
        .axis_out_tvalid(pe_out_tvalid_1),
        .axis_out_tdata(pe_out_tdata1),
        .axis_out_tdest(pe_out_tdest_1),
        .axis_out_tready(pe_out_tready_1)
    );
    pe_axis pe2 (
        .clk(clk),
        .reset(reset),
        .axis_in_tvalid(pe_in_tvalid_2),
        .axis_in_tdata(pe_in_tdata_2),
        .axis_in_tdest(pe_in_tdest_2),
        .axis_in_tready(pe_in_tready_2),
        .axis_out_tvalid(pe_out_tvalid_2),
        .axis_out_tdata(pe_out_tdata2),
        .axis_out_tdest(pe_out_tdest_2),
        .axis_out_tready(pe_out_tready_2)
    );
    pe_axis pe3 (
        .clk(clk),
        .reset(reset),
        .axis_in_tvalid(pe_in_tvalid_3),
        .axis_in_tdata(pe_in_tdata_3),
        .axis_in_tdest(pe_in_tdest_3),
        .axis_in_tready(pe_in_tready_3),
        .axis_out_tvalid(pe_out_tvalid_3),
        .axis_out_tdata(pe_out_tdata3),
        .axis_out_tdest(pe_out_tdest_3),
        .axis_out_tready(pe_out_tready_3)
    );
        

    // master module
    master_module master (
        .clk(clk),
        .reset(reset),
        .axis_in_tvalid(m_in_tvalid),
        .axis_in_tdata(m_in_tdata),
        .axis_in_tdest(m_in_tdest),
        .axis_in_tready(m_in_tready),
        .axis_out_tvalid(m_out_tvalid),
        .axis_out_tdata(m_out_tdata),
        .axis_out_tdest(m_out_tdest),
        .axis_out_tready(m_out_tready)
    );

    axis_switch_wrap_6x6 axis_switch (
        .clk(clk),
        .rst(reset),
    
        /*
         * AXI Stream inputs
         */
         // s00 is master module
        .s00_axis_tdata(m_out_tdata),
        // .s00_axis_tkeep(),
        .s00_axis_tvalid(m_out_tvalid),
        .s00_axis_tready(m_out_tready),
        // .s00_axis_tlast(),
        // .s00_axis_tid(),
        .s00_axis_tdest(m_out_tdest),
        // .s00_axis_tuser(),

        .s01_axis_tdata(pe_out_tdata0),
        // .s01_axis_tkeep(),
        .s01_axis_tvalid(pe_out_tvalid_0),
        .s01_axis_tready(pe_out_tready_0),
        // .s01_axis_tlast(),
        // .s01_axis_tid(),
        .s01_axis_tdest(pe_out_tlast_0),
        // .s01_axis_tuser(),

        .s02_axis_tdata(pe_out_tdata1),
        // .s02_axis_tkeep(),
        .s02_axis_tvalid(pe_out_tvalid_1),
        .s02_axis_tready(pe_out_tready_1),
        .s02_axis_tlast(pe_out_tlast_1),
        // .s02_axis_tid(),
        .s02_axis_tdest(pe_out_tdest_1),
        // .s02_axis_tuser(),

        .s03_axis_tdata(pe_out_tdata2),
        // .s03_axis_tkeep(),
        .s03_axis_tvalid(pe_out_tvalid_2),
        .s03_axis_tready(pe_out_tready_2),
        // .s03_axis_tlast(),
        // .s03_axis_tid(),
        .s03_axis_tdest(pe_out_tdest_2),
        // .s03_axis_tuser(),

        .s04_axis_tdata(pe_out_tdata3),
        // .s04_axis_tkeep(),
        .s04_axis_tvalid(pe_out_tvalid_3),
        .s04_axis_tready(pe_out_tready_3),
        // .s04_axis_tlast(),
        // .s04_axis_tid(),
        .s04_axis_tdest(pe_out_tdest_3),
        // .s04_axis_tuser(),


        .s05_axis_tdata(AXIS_S_TDATA),
        // .s05_axis_tkeep(),
        .s05_axis_tvalid(AXIS_S_TVALID),
        .s05_axis_tready(AXIS_S_TREADY),
        .s05_axis_tlast(AXIS_S_TLAST),
        // .s05_axis_tid(),
        .s05_axis_tdest(AXIS_S_TDEST),
        // .s05_axis_tuser(),


    
        /*
         * AXI Stream outputs
         */
         .m00_axis_tdata(m_in_tdata),
        //  .m00_axis_tkeep(),
         .m00_axis_tvalid(m_in_tvalid),
         .m00_axis_tready(m_in_tready),
        //  .m00_axis_tlast(),
        //  .m00_axis_tid(),
         .m00_axis_tdest(m_in_tdest),
        //  .m00_axis_tuser(),

         .m01_axis_tdata(pe_in_tdata_0),
        //  .m01_axis_tkeep(),
         .m01_axis_tvalid(pe_in_tvalid_0),
         .m01_axis_tready(pe_in_tready_0),
        //  .m01_axis_tlast(pe),
        //  .m01_axis_tid(),
         .m01_axis_tdest(pe_in_tdest_0),
        //  .m01_axis_tuser(),

        .m02_axis_tdata(pe_in_tdata_1),
        // .m02_axis_tkeep(),
        .m02_axis_tvalid(pe_in_tvalid_1),
        .m02_axis_tready(pe_in_tready_1),
        // .m02_axis_tlast(),
        // .m02_axis_tid(),
        .m02_axis_tdest(pe_in_tdest_1),
        // .m02_axis_tuser(),

        .m03_axis_tdata(pe_in_tdata_2),
        // .m03_axis_tkeep(),
        .m03_axis_tvalid(pe_in_tvalid_2),
        .m03_axis_tready(pe_in_tready_2),
        // .m03_axis_tlast(),
        // .m03_axis_tid(),
        .m03_axis_tdest(pe_in_tdest_2),
        // .m03_axis_tuser(),

        .m04_axis_tdata(pe_in_tdata_3),
        // .m04_axis_tkeep(),
        .m04_axis_tvalid(pe_in_tvalid_3),
        .m04_axis_tready(pe_in_tready_3),
        // .m04_axis_tlast(),
        // .m04_axis_tid(),
        .m04_axis_tdest(pe_in_tdest_3),
        // .m04_axis_tuser(),

        .m05_axis_tdata(AXIS_M_TDATA),
        // .m05_axis_tkeep(),
        .m05_axis_tvalid(AXIS_M_TVALID),
        .m05_axis_tready(AXIS_M_TREADY),
        .m05_axis_tlast(AXIS_M_TLAST),
        // .m05_axis_tid(),
        .m05_axis_tdest(AXIS_M_TDEST)
        // .m05_axis_tuser(),
    );

endmodule