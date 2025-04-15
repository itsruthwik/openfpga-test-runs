module axis_passthrough #(
    parameter DATAW   = 32,  // Data width
    parameter IDW     = 32,   // ID width
    parameter USERW   = 32,   // User width
    parameter DESTW   = 6    // Destination width
)(
    input                     CLK,
    input                     RST_N,

    // -------------------------------------------------------
    // AXI-Stream Slave Interface
    // -------------------------------------------------------
    input                     AXIS_S_TVALID,
    output reg                AXIS_S_TREADY,
    input      [DATAW-1:0]    AXIS_S_TDATA,
    input                     AXIS_S_TLAST,
    input      [IDW-1:0]      AXIS_S_TID,
    input      [USERW-1:0]    AXIS_S_TUSER,
    input      [DESTW-1:0]    AXIS_S_TDEST,

    // -------------------------------------------------------
    // AXI-Stream Master Interface
    // -------------------------------------------------------
    output reg                AXIS_M_TVALID,
    input                     AXIS_M_TREADY,
    output reg [DATAW-1:0]    AXIS_M_TDATA,
    output reg                AXIS_M_TLAST,
    output reg [IDW-1:0]      AXIS_M_TID,
    output reg [USERW-1:0]    AXIS_M_TUSER,
    output reg [DESTW-1:0]    AXIS_M_TDEST
);

    // -------------------------------------------------------
    // Pass-through logic
    // -------------------------------------------------------
    always @(posedge CLK or negedge RST_N) begin
        if (!RST_N) begin
            AXIS_M_TVALID <= 1'b0;
            AXIS_S_TREADY <= 1'b0;
            AXIS_M_TDATA  <= 0;
            AXIS_M_TLAST  <= 1'b0;
            AXIS_M_TID    <= 0;
            AXIS_M_TUSER  <= 0;
            AXIS_M_TDEST  <= 0;
        end else begin
            AXIS_M_TVALID <= AXIS_S_TVALID;
            AXIS_S_TREADY <= AXIS_M_TREADY;
            AXIS_M_TDATA  <= AXIS_S_TDATA;
            AXIS_M_TLAST  <= AXIS_S_TLAST;
            AXIS_M_TID    <= AXIS_S_TID;
            AXIS_M_TUSER  <= AXIS_S_TUSER;
            AXIS_M_TDEST  <= AXIS_S_TDEST;
        end
    end

endmodule