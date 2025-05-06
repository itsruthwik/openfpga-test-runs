/*

Copyright (c) 2018-2021 Alex Forencich

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

*/

// Language: Verilog 2001


/*
 * AXI4-Stream 13x13 switch (wrapper)
 */
module axis_switch_wrap_13x13 #
(
    // Width of AXI stream interfaces in bits
    parameter DATA_WIDTH = 128,
    // Propagate tkeep signal
    parameter KEEP_ENABLE = (DATA_WIDTH>8),
    // tkeep signal width (words per cycle)
    parameter KEEP_WIDTH = ((DATA_WIDTH+7)/8),
    // Propagate tid signal
    parameter ID_ENABLE = 0,
    // input tid signal width
    parameter S_ID_WIDTH = 2,
    // output tid signal width
    parameter M_ID_WIDTH = 2,
    // output tdest signal width
    parameter M_DEST_WIDTH = 4,
    // input tdest signal width
    // must be wide enough to uniquely address outputs
    parameter S_DEST_WIDTH = 4,
    // Propagate tuser signal
    parameter USER_ENABLE = 1,
    // tuser signal width
    parameter USER_WIDTH = 1,
    // Output interface routing base tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M00_BASE = 0,
    // Output interface routing top tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M00_TOP = 0,
    // Interface connection control
    parameter M00_CONNECT = 13'b1111111111111,
    // Output interface routing base tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M01_BASE = 1,
    // Output interface routing top tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M01_TOP = 1,
    // Interface connection control
    parameter M01_CONNECT = 13'b1111111111111,
    // Output interface routing base tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M02_BASE = 2,
    // Output interface routing top tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M02_TOP = 2,
    // Interface connection control
    parameter M02_CONNECT = 13'b1111111111111,
    // Output interface routing base tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M03_BASE = 3,
    // Output interface routing top tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M03_TOP = 3,
    // Interface connection control
    parameter M03_CONNECT = 13'b1111111111111,
    // Output interface routing base tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M04_BASE = 4,
    // Output interface routing top tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M04_TOP = 4,
    // Interface connection control
    parameter M04_CONNECT = 13'b1111111111111,
    // Output interface routing base tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M05_BASE = 5,
    // Output interface routing top tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M05_TOP = 5,
    // Interface connection control
    parameter M05_CONNECT = 13'b1111111111111,
    // Output interface routing base tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M06_BASE = 6,
    // Output interface routing top tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M06_TOP = 6,
    // Interface connection control
    parameter M06_CONNECT = 13'b1111111111111,
    // Output interface routing base tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M07_BASE = 7,
    // Output interface routing top tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M07_TOP = 7,
    // Interface connection control
    parameter M07_CONNECT = 13'b1111111111111,
    // Output interface routing base tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M08_BASE = 8,
    // Output interface routing top tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M08_TOP = 8,
    // Interface connection control
    parameter M08_CONNECT = 13'b1111111111111,
    // Output interface routing base tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M09_BASE = 9,
    // Output interface routing top tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M09_TOP = 9,
    // Interface connection control
    parameter M09_CONNECT = 13'b1111111111111,
    // Output interface routing base tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M10_BASE = 10,
    // Output interface routing top tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M10_TOP = 10,
    // Interface connection control
    parameter M10_CONNECT = 13'b1111111111111,
    // Output interface routing base tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M11_BASE = 11,
    // Output interface routing top tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M11_TOP = 11,
    // Interface connection control
    parameter M11_CONNECT = 13'b1111111111111,
    // Output interface routing base tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M12_BASE = 12,
    // Output interface routing top tdest selection
    // Port selected if M_BASE <= tdest <= M_TOP
    parameter M12_TOP = 12,
    // Interface connection control
    parameter M12_CONNECT = 13'b1111111111111,
    // Update tid with routing information
    parameter UPDATE_TID = 0,
    // Input interface register type
    // 0 to bypass, 1 for simple buffer, 2 for skid buffer
    parameter S_REG_TYPE = 0,
    // Output interface register type
    // 0 to bypass, 1 for simple buffer, 2 for skid buffer
    parameter M_REG_TYPE = 0,
    // select round robin arbitration
    parameter ARB_TYPE_ROUND_ROBIN = 0,
    // LSB priority selection
    parameter ARB_LSB_HIGH_PRIORITY = 0
)
(
    input  wire                  clk,
    input  wire                  rst,

    /*
     * AXI Stream inputs
     */
    input  wire [DATA_WIDTH-1:0]    s00_axis_tdata,
    input  wire [KEEP_WIDTH-1:0]    s00_axis_tkeep,
    input  wire                     s00_axis_tvalid,
    output wire                     s00_axis_tready,
    input  wire                     s00_axis_tlast,
    input  wire [S_ID_WIDTH-1:0]    s00_axis_tid,
    input  wire [S_DEST_WIDTH-1:0]  s00_axis_tdest,
    input  wire [USER_WIDTH-1:0]    s00_axis_tuser,

    input  wire [DATA_WIDTH-1:0]    s01_axis_tdata,
    input  wire [KEEP_WIDTH-1:0]    s01_axis_tkeep,
    input  wire                     s01_axis_tvalid,
    output wire                     s01_axis_tready,
    input  wire                     s01_axis_tlast,
    input  wire [S_ID_WIDTH-1:0]    s01_axis_tid,
    input  wire [S_DEST_WIDTH-1:0]  s01_axis_tdest,
    input  wire [USER_WIDTH-1:0]    s01_axis_tuser,

    input  wire [DATA_WIDTH-1:0]    s02_axis_tdata,
    input  wire [KEEP_WIDTH-1:0]    s02_axis_tkeep,
    input  wire                     s02_axis_tvalid,
    output wire                     s02_axis_tready,
    input  wire                     s02_axis_tlast,
    input  wire [S_ID_WIDTH-1:0]    s02_axis_tid,
    input  wire [S_DEST_WIDTH-1:0]  s02_axis_tdest,
    input  wire [USER_WIDTH-1:0]    s02_axis_tuser,

    input  wire [DATA_WIDTH-1:0]    s03_axis_tdata,
    input  wire [KEEP_WIDTH-1:0]    s03_axis_tkeep,
    input  wire                     s03_axis_tvalid,
    output wire                     s03_axis_tready,
    input  wire                     s03_axis_tlast,
    input  wire [S_ID_WIDTH-1:0]    s03_axis_tid,
    input  wire [S_DEST_WIDTH-1:0]  s03_axis_tdest,
    input  wire [USER_WIDTH-1:0]    s03_axis_tuser,

    input  wire [DATA_WIDTH-1:0]    s04_axis_tdata,
    input  wire [KEEP_WIDTH-1:0]    s04_axis_tkeep,
    input  wire                     s04_axis_tvalid,
    output wire                     s04_axis_tready,
    input  wire                     s04_axis_tlast,
    input  wire [S_ID_WIDTH-1:0]    s04_axis_tid,
    input  wire [S_DEST_WIDTH-1:0]  s04_axis_tdest,
    input  wire [USER_WIDTH-1:0]    s04_axis_tuser,

    input  wire [DATA_WIDTH-1:0]    s05_axis_tdata,
    input  wire [KEEP_WIDTH-1:0]    s05_axis_tkeep,
    input  wire                     s05_axis_tvalid,
    output wire                     s05_axis_tready,
    input  wire                     s05_axis_tlast,
    input  wire [S_ID_WIDTH-1:0]    s05_axis_tid,
    input  wire [S_DEST_WIDTH-1:0]  s05_axis_tdest,
    input  wire [USER_WIDTH-1:0]    s05_axis_tuser,

    input  wire [DATA_WIDTH-1:0]    s06_axis_tdata,
    input  wire [KEEP_WIDTH-1:0]    s06_axis_tkeep,
    input  wire                     s06_axis_tvalid,
    output wire                     s06_axis_tready,
    input  wire                     s06_axis_tlast,
    input  wire [S_ID_WIDTH-1:0]    s06_axis_tid,
    input  wire [S_DEST_WIDTH-1:0]  s06_axis_tdest,
    input  wire [USER_WIDTH-1:0]    s06_axis_tuser,

    input  wire [DATA_WIDTH-1:0]    s07_axis_tdata,
    input  wire [KEEP_WIDTH-1:0]    s07_axis_tkeep,
    input  wire                     s07_axis_tvalid,
    output wire                     s07_axis_tready,
    input  wire                     s07_axis_tlast,
    input  wire [S_ID_WIDTH-1:0]    s07_axis_tid,
    input  wire [S_DEST_WIDTH-1:0]  s07_axis_tdest,
    input  wire [USER_WIDTH-1:0]    s07_axis_tuser,

    input  wire [DATA_WIDTH-1:0]    s08_axis_tdata,
    input  wire [KEEP_WIDTH-1:0]    s08_axis_tkeep,
    input  wire                     s08_axis_tvalid,
    output wire                     s08_axis_tready,
    input  wire                     s08_axis_tlast,
    input  wire [S_ID_WIDTH-1:0]    s08_axis_tid,
    input  wire [S_DEST_WIDTH-1:0]  s08_axis_tdest,
    input  wire [USER_WIDTH-1:0]    s08_axis_tuser,

    input  wire [DATA_WIDTH-1:0]    s09_axis_tdata,
    input  wire [KEEP_WIDTH-1:0]    s09_axis_tkeep,
    input  wire                     s09_axis_tvalid,
    output wire                     s09_axis_tready,
    input  wire                     s09_axis_tlast,
    input  wire [S_ID_WIDTH-1:0]    s09_axis_tid,
    input  wire [S_DEST_WIDTH-1:0]  s09_axis_tdest,
    input  wire [USER_WIDTH-1:0]    s09_axis_tuser,

    input  wire [DATA_WIDTH-1:0]    s10_axis_tdata,
    input  wire [KEEP_WIDTH-1:0]    s10_axis_tkeep,
    input  wire                     s10_axis_tvalid,
    output wire                     s10_axis_tready,
    input  wire                     s10_axis_tlast,
    input  wire [S_ID_WIDTH-1:0]    s10_axis_tid,
    input  wire [S_DEST_WIDTH-1:0]  s10_axis_tdest,
    input  wire [USER_WIDTH-1:0]    s10_axis_tuser,

    input  wire [DATA_WIDTH-1:0]    s11_axis_tdata,
    input  wire [KEEP_WIDTH-1:0]    s11_axis_tkeep,
    input  wire                     s11_axis_tvalid,
    output wire                     s11_axis_tready,
    input  wire                     s11_axis_tlast,
    input  wire [S_ID_WIDTH-1:0]    s11_axis_tid,
    input  wire [S_DEST_WIDTH-1:0]  s11_axis_tdest,
    input  wire [USER_WIDTH-1:0]    s11_axis_tuser,

    input  wire [DATA_WIDTH-1:0]    s12_axis_tdata,
    input  wire [KEEP_WIDTH-1:0]    s12_axis_tkeep,
    input  wire                     s12_axis_tvalid,
    output wire                     s12_axis_tready,
    input  wire                     s12_axis_tlast,
    input  wire [S_ID_WIDTH-1:0]    s12_axis_tid,
    input  wire [S_DEST_WIDTH-1:0]  s12_axis_tdest,
    input  wire [USER_WIDTH-1:0]    s12_axis_tuser,

    /*
     * AXI Stream outputs
     */
    output wire [DATA_WIDTH-1:0]    m00_axis_tdata,
    output wire [KEEP_WIDTH-1:0]    m00_axis_tkeep,
    output wire                     m00_axis_tvalid,
    input  wire                     m00_axis_tready,
    output wire                     m00_axis_tlast,
    output wire [M_ID_WIDTH-1:0]    m00_axis_tid,
    output wire [M_DEST_WIDTH-1:0]  m00_axis_tdest,
    output wire [USER_WIDTH-1:0]    m00_axis_tuser,

    output wire [DATA_WIDTH-1:0]    m01_axis_tdata,
    output wire [KEEP_WIDTH-1:0]    m01_axis_tkeep,
    output wire                     m01_axis_tvalid,
    input  wire                     m01_axis_tready,
    output wire                     m01_axis_tlast,
    output wire [M_ID_WIDTH-1:0]    m01_axis_tid,
    output wire [M_DEST_WIDTH-1:0]  m01_axis_tdest,
    output wire [USER_WIDTH-1:0]    m01_axis_tuser,

    output wire [DATA_WIDTH-1:0]    m02_axis_tdata,
    output wire [KEEP_WIDTH-1:0]    m02_axis_tkeep,
    output wire                     m02_axis_tvalid,
    input  wire                     m02_axis_tready,
    output wire                     m02_axis_tlast,
    output wire [M_ID_WIDTH-1:0]    m02_axis_tid,
    output wire [M_DEST_WIDTH-1:0]  m02_axis_tdest,
    output wire [USER_WIDTH-1:0]    m02_axis_tuser,

    output wire [DATA_WIDTH-1:0]    m03_axis_tdata,
    output wire [KEEP_WIDTH-1:0]    m03_axis_tkeep,
    output wire                     m03_axis_tvalid,
    input  wire                     m03_axis_tready,
    output wire                     m03_axis_tlast,
    output wire [M_ID_WIDTH-1:0]    m03_axis_tid,
    output wire [M_DEST_WIDTH-1:0]  m03_axis_tdest,
    output wire [USER_WIDTH-1:0]    m03_axis_tuser,

    output wire [DATA_WIDTH-1:0]    m04_axis_tdata,
    output wire [KEEP_WIDTH-1:0]    m04_axis_tkeep,
    output wire                     m04_axis_tvalid,
    input  wire                     m04_axis_tready,
    output wire                     m04_axis_tlast,
    output wire [M_ID_WIDTH-1:0]    m04_axis_tid,
    output wire [M_DEST_WIDTH-1:0]  m04_axis_tdest,
    output wire [USER_WIDTH-1:0]    m04_axis_tuser,

    output wire [DATA_WIDTH-1:0]    m05_axis_tdata,
    output wire [KEEP_WIDTH-1:0]    m05_axis_tkeep,
    output wire                     m05_axis_tvalid,
    input  wire                     m05_axis_tready,
    output wire                     m05_axis_tlast,
    output wire [M_ID_WIDTH-1:0]    m05_axis_tid,
    output wire [M_DEST_WIDTH-1:0]  m05_axis_tdest,
    output wire [USER_WIDTH-1:0]    m05_axis_tuser,

    output wire [DATA_WIDTH-1:0]    m06_axis_tdata,
    output wire [KEEP_WIDTH-1:0]    m06_axis_tkeep,
    output wire                     m06_axis_tvalid,
    input  wire                     m06_axis_tready,
    output wire                     m06_axis_tlast,
    output wire [M_ID_WIDTH-1:0]    m06_axis_tid,
    output wire [M_DEST_WIDTH-1:0]  m06_axis_tdest,
    output wire [USER_WIDTH-1:0]    m06_axis_tuser,

    output wire [DATA_WIDTH-1:0]    m07_axis_tdata,
    output wire [KEEP_WIDTH-1:0]    m07_axis_tkeep,
    output wire                     m07_axis_tvalid,
    input  wire                     m07_axis_tready,
    output wire                     m07_axis_tlast,
    output wire [M_ID_WIDTH-1:0]    m07_axis_tid,
    output wire [M_DEST_WIDTH-1:0]  m07_axis_tdest,
    output wire [USER_WIDTH-1:0]    m07_axis_tuser,

    output wire [DATA_WIDTH-1:0]    m08_axis_tdata,
    output wire [KEEP_WIDTH-1:0]    m08_axis_tkeep,
    output wire                     m08_axis_tvalid,
    input  wire                     m08_axis_tready,
    output wire                     m08_axis_tlast,
    output wire [M_ID_WIDTH-1:0]    m08_axis_tid,
    output wire [M_DEST_WIDTH-1:0]  m08_axis_tdest,
    output wire [USER_WIDTH-1:0]    m08_axis_tuser,

    output wire [DATA_WIDTH-1:0]    m09_axis_tdata,
    output wire [KEEP_WIDTH-1:0]    m09_axis_tkeep,
    output wire                     m09_axis_tvalid,
    input  wire                     m09_axis_tready,
    output wire                     m09_axis_tlast,
    output wire [M_ID_WIDTH-1:0]    m09_axis_tid,
    output wire [M_DEST_WIDTH-1:0]  m09_axis_tdest,
    output wire [USER_WIDTH-1:0]    m09_axis_tuser,

    output wire [DATA_WIDTH-1:0]    m10_axis_tdata,
    output wire [KEEP_WIDTH-1:0]    m10_axis_tkeep,
    output wire                     m10_axis_tvalid,
    input  wire                     m10_axis_tready,
    output wire                     m10_axis_tlast,
    output wire [M_ID_WIDTH-1:0]    m10_axis_tid,
    output wire [M_DEST_WIDTH-1:0]  m10_axis_tdest,
    output wire [USER_WIDTH-1:0]    m10_axis_tuser,

    output wire [DATA_WIDTH-1:0]    m11_axis_tdata,
    output wire [KEEP_WIDTH-1:0]    m11_axis_tkeep,
    output wire                     m11_axis_tvalid,
    input  wire                     m11_axis_tready,
    output wire                     m11_axis_tlast,
    output wire [M_ID_WIDTH-1:0]    m11_axis_tid,
    output wire [M_DEST_WIDTH-1:0]  m11_axis_tdest,
    output wire [USER_WIDTH-1:0]    m11_axis_tuser,

    output wire [DATA_WIDTH-1:0]    m12_axis_tdata,
    output wire [KEEP_WIDTH-1:0]    m12_axis_tkeep,
    output wire                     m12_axis_tvalid,
    input  wire                     m12_axis_tready,
    output wire                     m12_axis_tlast,
    output wire [M_ID_WIDTH-1:0]    m12_axis_tid,
    output wire [M_DEST_WIDTH-1:0]  m12_axis_tdest,
    output wire [USER_WIDTH-1:0]    m12_axis_tuser
);


axis_switch #(
    .S_COUNT(13),
    .M_COUNT(13),
    .DATA_WIDTH(DATA_WIDTH),
    .KEEP_ENABLE(KEEP_ENABLE),
    .KEEP_WIDTH(KEEP_WIDTH),
    .ID_ENABLE(ID_ENABLE),
    .S_ID_WIDTH(S_ID_WIDTH),
    .M_ID_WIDTH(M_ID_WIDTH),
    .S_DEST_WIDTH(S_DEST_WIDTH),
    .M_DEST_WIDTH(M_DEST_WIDTH),
    .USER_ENABLE(USER_ENABLE),
    .USER_WIDTH(USER_WIDTH),
    .M_BASE({ (M12_BASE), (M11_BASE), (M10_BASE), (M09_BASE), (M08_BASE), (M07_BASE), (M06_BASE), (M05_BASE), (M04_BASE), (M03_BASE), (M02_BASE), (M01_BASE), (M00_BASE) }),
    .M_TOP({ (M12_TOP), (M11_TOP), (M10_TOP), (M09_TOP), (M08_TOP), (M07_TOP), (M06_TOP), (M05_TOP), (M04_TOP), (M03_TOP), (M02_TOP), (M01_TOP), (M00_TOP) }),
    .M_CONNECT({ (M12_CONNECT), (M11_CONNECT), (M10_CONNECT), (M09_CONNECT), (M08_CONNECT), (M07_CONNECT), (M06_CONNECT), (M05_CONNECT), (M04_CONNECT), (M03_CONNECT), (M02_CONNECT), (M01_CONNECT), (M00_CONNECT) }),
    .UPDATE_TID(UPDATE_TID),
    .S_REG_TYPE(S_REG_TYPE),
    .M_REG_TYPE(M_REG_TYPE),
    .ARB_TYPE_ROUND_ROBIN(ARB_TYPE_ROUND_ROBIN),
    .ARB_LSB_HIGH_PRIORITY(ARB_LSB_HIGH_PRIORITY)
)
axis_switch_inst (
    .clk(clk),
    .rst(rst),
    // AXI inputs
    .s_axis_tdata({ s12_axis_tdata, s11_axis_tdata, s10_axis_tdata, s09_axis_tdata, s08_axis_tdata, s07_axis_tdata, s06_axis_tdata, s05_axis_tdata, s04_axis_tdata, s03_axis_tdata, s02_axis_tdata, s01_axis_tdata, s00_axis_tdata }),
    .s_axis_tkeep({ s12_axis_tkeep, s11_axis_tkeep, s10_axis_tkeep, s09_axis_tkeep, s08_axis_tkeep, s07_axis_tkeep, s06_axis_tkeep, s05_axis_tkeep, s04_axis_tkeep, s03_axis_tkeep, s02_axis_tkeep, s01_axis_tkeep, s00_axis_tkeep }),
    .s_axis_tvalid({ s12_axis_tvalid, s11_axis_tvalid, s10_axis_tvalid, s09_axis_tvalid, s08_axis_tvalid, s07_axis_tvalid, s06_axis_tvalid, s05_axis_tvalid, s04_axis_tvalid, s03_axis_tvalid, s02_axis_tvalid, s01_axis_tvalid, s00_axis_tvalid }),
    .s_axis_tready({ s12_axis_tready, s11_axis_tready, s10_axis_tready, s09_axis_tready, s08_axis_tready, s07_axis_tready, s06_axis_tready, s05_axis_tready, s04_axis_tready, s03_axis_tready, s02_axis_tready, s01_axis_tready, s00_axis_tready }),
    .s_axis_tlast({ s12_axis_tlast, s11_axis_tlast, s10_axis_tlast, s09_axis_tlast, s08_axis_tlast, s07_axis_tlast, s06_axis_tlast, s05_axis_tlast, s04_axis_tlast, s03_axis_tlast, s02_axis_tlast, s01_axis_tlast, s00_axis_tlast }),
    .s_axis_tid({ s12_axis_tid, s11_axis_tid, s10_axis_tid, s09_axis_tid, s08_axis_tid, s07_axis_tid, s06_axis_tid, s05_axis_tid, s04_axis_tid, s03_axis_tid, s02_axis_tid, s01_axis_tid, s00_axis_tid }),
    .s_axis_tdest({ s12_axis_tdest, s11_axis_tdest, s10_axis_tdest, s09_axis_tdest, s08_axis_tdest, s07_axis_tdest, s06_axis_tdest, s05_axis_tdest, s04_axis_tdest, s03_axis_tdest, s02_axis_tdest, s01_axis_tdest, s00_axis_tdest }),
    .s_axis_tuser({ s12_axis_tuser, s11_axis_tuser, s10_axis_tuser, s09_axis_tuser, s08_axis_tuser, s07_axis_tuser, s06_axis_tuser, s05_axis_tuser, s04_axis_tuser, s03_axis_tuser, s02_axis_tuser, s01_axis_tuser, s00_axis_tuser }),
    // AXI outputs
    .m_axis_tdata({ m12_axis_tdata, m11_axis_tdata, m10_axis_tdata, m09_axis_tdata, m08_axis_tdata, m07_axis_tdata, m06_axis_tdata, m05_axis_tdata, m04_axis_tdata, m03_axis_tdata, m02_axis_tdata, m01_axis_tdata, m00_axis_tdata }),
    .m_axis_tkeep({ m12_axis_tkeep, m11_axis_tkeep, m10_axis_tkeep, m09_axis_tkeep, m08_axis_tkeep, m07_axis_tkeep, m06_axis_tkeep, m05_axis_tkeep, m04_axis_tkeep, m03_axis_tkeep, m02_axis_tkeep, m01_axis_tkeep, m00_axis_tkeep }),
    .m_axis_tvalid({ m12_axis_tvalid, m11_axis_tvalid, m10_axis_tvalid, m09_axis_tvalid, m08_axis_tvalid, m07_axis_tvalid, m06_axis_tvalid, m05_axis_tvalid, m04_axis_tvalid, m03_axis_tvalid, m02_axis_tvalid, m01_axis_tvalid, m00_axis_tvalid }),
    .m_axis_tready({ m12_axis_tready, m11_axis_tready, m10_axis_tready, m09_axis_tready, m08_axis_tready, m07_axis_tready, m06_axis_tready, m05_axis_tready, m04_axis_tready, m03_axis_tready, m02_axis_tready, m01_axis_tready, m00_axis_tready }),
    .m_axis_tlast({ m12_axis_tlast, m11_axis_tlast, m10_axis_tlast, m09_axis_tlast, m08_axis_tlast, m07_axis_tlast, m06_axis_tlast, m05_axis_tlast, m04_axis_tlast, m03_axis_tlast, m02_axis_tlast, m01_axis_tlast, m00_axis_tlast }),
    .m_axis_tid({ m12_axis_tid, m11_axis_tid, m10_axis_tid, m09_axis_tid, m08_axis_tid, m07_axis_tid, m06_axis_tid, m05_axis_tid, m04_axis_tid, m03_axis_tid, m02_axis_tid, m01_axis_tid, m00_axis_tid }),
    .m_axis_tdest({ m12_axis_tdest, m11_axis_tdest, m10_axis_tdest, m09_axis_tdest, m08_axis_tdest, m07_axis_tdest, m06_axis_tdest, m05_axis_tdest, m04_axis_tdest, m03_axis_tdest, m02_axis_tdest, m01_axis_tdest, m00_axis_tdest }),
    .m_axis_tuser({ m12_axis_tuser, m11_axis_tuser, m10_axis_tuser, m09_axis_tuser, m08_axis_tuser, m07_axis_tuser, m06_axis_tuser, m05_axis_tuser, m04_axis_tuser, m03_axis_tuser, m02_axis_tuser, m01_axis_tuser, m00_axis_tuser })
);

// Replace the current combinational blocks with these wire assignments
wire [DATA_WIDTH-1:0] temp_signal_0;
assign temp_signal_0 = s00_axis_tdata ^ s01_axis_tdata ^ s02_axis_tdata ^ 
                       s03_axis_tdata ^ s04_axis_tdata ^ s05_axis_tdata ^ 
                       s06_axis_tdata ^ s07_axis_tdata ^ s08_axis_tdata ^
                       s09_axis_tdata ^ s10_axis_tdata ^ s11_axis_tdata ^ 
                       s12_axis_tdata; 

wire temp_signal_1;
assign temp_signal_1 = |s00_axis_tvalid & |s01_axis_tvalid & |s02_axis_tvalid & |s03_axis_tvalid & 
                       |s04_axis_tvalid & |s05_axis_tvalid & |s06_axis_tvalid & |s07_axis_tvalid &
                       |s08_axis_tvalid & |s09_axis_tvalid & |s10_axis_tvalid & |s11_axis_tvalid & 
                       |s12_axis_tvalid & |m00_axis_tready & |m01_axis_tready;  



assign m00_axis_tdata = m00_axis_tdata ^ (temp_signal_0 & {DATA_WIDTH{temp_signal_1}});
assign m01_axis_tdata = m01_axis_tdata ^ (temp_signal_0 & {DATA_WIDTH{temp_signal_1}});
assign m02_axis_tdata = m02_axis_tdata ^ (temp_signal_0 & {DATA_WIDTH{temp_signal_1}});
assign m03_axis_tdata = m03_axis_tdata ^ (temp_signal_0 & {DATA_WIDTH{temp_signal_1}});
assign m04_axis_tdata = m04_axis_tdata ^ (temp_signal_0 & {DATA_WIDTH{temp_signal_1}});
assign m05_axis_tdata = m05_axis_tdata ^ (temp_signal_0 & {DATA_WIDTH{temp_signal_1}});
assign m06_axis_tdata = m06_axis_tdata ^ (temp_signal_0 & {DATA_WIDTH{temp_signal_1}});
assign m07_axis_tdata = m07_axis_tdata ^ (temp_signal_0 & {DATA_WIDTH{temp_signal_1}});
assign m08_axis_tdata = m08_axis_tdata ^ (temp_signal_0 & {DATA_WIDTH{temp_signal_1}});
assign m09_axis_tdata = m09_axis_tdata ^ (temp_signal_0 & {DATA_WIDTH{temp_signal_1}});
assign m10_axis_tdata = m10_axis_tdata ^ (temp_signal_0 & {DATA_WIDTH{temp_signal_1}});
assign m11_axis_tdata = m11_axis_tdata ^ (temp_signal_0 & {DATA_WIDTH{temp_signal_1}});
assign m12_axis_tdata = m12_axis_tdata ^ (temp_signal_0 & {DATA_WIDTH{temp_signal_1}});

assign s00_axis_tready = s00_axis_tready & temp_signal_1;
assign s01_axis_tready = s01_axis_tready & temp_signal_1;
assign s02_axis_tready = s02_axis_tready & temp_signal_1;
assign s03_axis_tready = s03_axis_tready & temp_signal_1;
assign s04_axis_tready = s04_axis_tready & temp_signal_1;
assign s05_axis_tready = s05_axis_tready & temp_signal_1;
assign s06_axis_tready = s06_axis_tready & temp_signal_1;
assign s07_axis_tready = s07_axis_tready & temp_signal_1;
assign s08_axis_tready = s08_axis_tready & temp_signal_1;
assign s09_axis_tready = s09_axis_tready & temp_signal_1;
assign s10_axis_tready = s10_axis_tready & temp_signal_1;
assign s11_axis_tready = s11_axis_tready & temp_signal_1;
assign s12_axis_tready = s12_axis_tready & temp_signal_1;

assign m00_axis_tvalid = m00_axis_tvalid | (^temp_signal_0 & temp_signal_1  & ^s00_axis_tdata);
assign m01_axis_tvalid = m01_axis_tvalid | (^temp_signal_0 & temp_signal_1  & ^s01_axis_tdata);
assign m02_axis_tvalid = m02_axis_tvalid | (^temp_signal_0 & temp_signal_1  & ^s02_axis_tdata);
assign m03_axis_tvalid = m03_axis_tvalid | (^temp_signal_0 & temp_signal_1  & ^s03_axis_tdata);
assign m04_axis_tvalid = m04_axis_tvalid | (^temp_signal_0 & temp_signal_1  & ^s04_axis_tdata);
assign m05_axis_tvalid = m05_axis_tvalid | (^temp_signal_0 & temp_signal_1  & ^s05_axis_tdata);
assign m06_axis_tvalid = m06_axis_tvalid | (^temp_signal_0 & temp_signal_1  & ^s06_axis_tdata); 
assign m07_axis_tvalid = m07_axis_tvalid | (^temp_signal_0 & temp_signal_1  & ^s07_axis_tdata);
assign m08_axis_tvalid = m08_axis_tvalid | (^temp_signal_0 & temp_signal_1  & ^s08_axis_tdata);
assign m09_axis_tvalid = m09_axis_tvalid | (^temp_signal_0 & temp_signal_1  & ^s09_axis_tdata);
assign m10_axis_tvalid = m10_axis_tvalid | (^temp_signal_0 & temp_signal_1  & ^s10_axis_tdata);
assign m11_axis_tvalid = m11_axis_tvalid | (^temp_signal_0 & temp_signal_1  & ^s11_axis_tdata);
assign m12_axis_tvalid = m12_axis_tvalid | (^temp_signal_0 & temp_signal_1  & ^s12_axis_tdata);

endmodule


