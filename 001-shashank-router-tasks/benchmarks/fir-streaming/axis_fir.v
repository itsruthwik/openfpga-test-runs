module axis_fir #(
    parameter NTAPS = 8,
    parameter IW = 64,           // Input width
    parameter TW = IW,           // Tap width 
    parameter OW = 2*IW+7,       // Output width
    parameter TDATA_WIDTH = 128   // Data bus width (min = IW)
) (
    // Clock and reset
    input  wire                     clk,
    input  wire                     resetn,
    
    // AXI Stream input interface
    input  wire                     s_axis_tvalid,
    output wire                     s_axis_tready,
    input  wire [TDATA_WIDTH-1:0]   s_axis_tdata,
    input  wire                     s_axis_tlast,
    
    // AXI Stream output interface
    output reg                      m_axis_tvalid,
    input  wire                     m_axis_tready,
    output reg  [OW-1:0]            m_axis_tdata,
    output reg                      m_axis_tlast
);

    // FIR processing signals
    reg  [IW-1:0]         sample_data;
    wire [OW-1:0]         result;
    reg                   processing;
    reg                   tlast_r;
    
    // Coefficient loading - using tlast to indicate coefficient data
    reg                   tap_wr;
    reg  [$clog2(NTAPS):0] tap_addr;
    reg  [TW-1:0]         tap_data;
    
    // Ready to accept data when not currently processing
    assign s_axis_tready = !processing || m_axis_tready;
    
    // Input handling
    always @(posedge clk) begin
        if (!resetn) begin
            processing <= 1'b0;
            tap_wr <= 1'b0;
            tap_addr <= 0;
            tap_data <= 0;
            tlast_r <= 1'b0;
        end else begin
            // Default state
            tap_wr <= 1'b0;
            
            if (s_axis_tvalid && s_axis_tready) begin
                if (s_axis_tlast) begin
                    // When tlast is set, interpret as coefficient data
                    tap_addr <= s_axis_tdata[TDATA_WIDTH-1:TDATA_WIDTH-$clog2(NTAPS)-1];
                    tap_data <= s_axis_tdata[TW-1:0];
                    tap_wr <= 1'b1;
                    // Don't set processing flag for coefficient updates
                end else begin
                    // Normal sample data
                    sample_data <= s_axis_tdata[IW-1:0];
                    processing <= 1'b1;
                    tlast_r <= s_axis_tlast;
                end
            end else if (processing && m_axis_tvalid && m_axis_tready) begin
                // Clear processing flag when output is taken
                processing <= 1'b0;
            end
        end
    end
    
    // Output handling
    always @(posedge clk) begin
        if (!resetn) begin
            m_axis_tvalid <= 1'b0;
            m_axis_tdata <= {OW{1'b0}};
            m_axis_tlast <= 1'b0;
        end else begin
            // Set output valid when we have processed data
            if (processing && !m_axis_tvalid) begin
                m_axis_tvalid <= 1'b1;
                m_axis_tdata <= result;
                m_axis_tlast <= tlast_r;
            end else if (m_axis_tready) begin
                // Clear valid when data is accepted
                m_axis_tvalid <= 1'b0;
            end
        end
    end
    
    // Instantiate the FIR filter
    fir #(
        .NTAPS(NTAPS),
        .IW(IW),
        .TW(TW),
        .OW(OW)
    ) fir_inst (
        .i_clk(clk),
        .i_reset(~resetn),           // Convert active-low to active-high
        
        // Sample processing
        .i_ce(s_axis_tvalid && s_axis_tready && !s_axis_tlast),  // Only process actual samples
        .i_sample(sample_data),
        .o_result(result),
        
        // Fixed tap configuration
        .i_fixed_tap_wr(tap_wr),
        .i_fixed_tap_addr(tap_addr),
        .i_fixed_tap_data(tap_data)
    );

endmodule


/////////////////////////

module fir #(
    parameter       NTAPS=128, IW=12, TW=IW, OW=2*IW+7
) (
    input   wire            i_clk, i_reset,
    
    // Sample processing
    input   wire            i_ce,
    input   wire    [(IW-1):0]      i_sample,
    output  wire    [(OW-1):0]      o_result,
    
    // Fixed tap configuration interface
    input   wire            i_fixed_tap_wr,
    input   wire    [$clog2(NTAPS):0]       i_fixed_tap_addr,
    input   wire    [(TW-1):0]      i_fixed_tap_data
);

    // Local declarations
    wire    [(TW-1):0] tap    [NTAPS:0];
    wire    [(IW-1):0] sample [NTAPS:0];
    wire    [(OW-1):0] result [NTAPS:0];
    
    genvar  k;

    // The first sample in our sample chain is the sample we are given
    assign  sample[0] = i_sample;
    // Initialize the partial summing accumulator with zero
    assign  result[0] = 0;
    
    // Fixed taps storage
    reg [(TW-1):0] fixed_taps [0:NTAPS-1];
    
    // Handle fixed tap initialization through register writes
    integer i;
    always @(posedge i_clk) begin
        if (i_reset) begin
            // Reset all taps to zero during reset
            for (i = 0; i < NTAPS; i = i + 1) begin
                fixed_taps[i] <= 0;
            end
        end else if (i_fixed_tap_wr) begin
            // Allow writing to fixed taps during operation
            fixed_taps[i_fixed_tap_addr] <= i_fixed_tap_data;
        end
    end

    // Each tap gets its appropriate value from the fixed_taps array
    generate 
        for (k = 0; k < NTAPS; k = k + 1) begin : ASSIGN_TAPS
            assign tap[k] = fixed_taps[k];
        end
    
        for(k=0; k<NTAPS; k=k+1) begin: FILTER
            // We need a dummy wire for the o_tap output of firtap that isn't used
            wire [(TW-1):0] unused_tap;
            
            firtap #(
                .IW(IW), .OW(OW), .TW(TW)
            ) tapk(
                .i_clk(i_clk),
                .i_reset(i_reset),
                // Tap value
                .i_tap(tap[NTAPS-1-k]),
                // Sample delay line
                .i_ce(i_ce),
                .i_sample(sample[k]),
                .o_sample(sample[k+1]),
                // The output accumulator
                .i_partial_acc(result[k]),
                .o_acc(result[k+1])
            );
        end
    endgenerate

    assign  o_result = result[NTAPS];

endmodule


module firtap #(
    parameter       IW=16, TW=IW, OW=IW+TW+8
) (
    input   wire            i_clk, i_reset,
    // Coefficient input (fixed tap value)
    input   wire    [(TW-1):0]      i_tap,
    // Data pipeline
    input   wire            i_ce,
    input   wire signed [(IW-1):0]  i_sample,
    output  reg     [(IW-1):0]      o_sample,
    // Output "results"
    input   wire    [(OW-1):0]      i_partial_acc,
    output  reg     [(OW-1):0]      o_acc
);

    // Local declarations
    reg     [(IW-1):0]      delayed_sample;
    reg     signed  [(TW+IW-1):0]   product;

    // Fixed tap implementation - tap comes directly from input
    wire signed [(TW-1):0] tap;
    assign tap = i_tap;

    // Sample delay pipeline
    always @(posedge i_clk)
    if (i_reset) begin
        delayed_sample <= 0;
        o_sample <= 0;
    end else if (i_ce) begin
        // Note the two sample delay in this forwarding structure
        delayed_sample <= i_sample;
        o_sample <= delayed_sample;
    end

    // Multiply tap by sample
    always @(posedge i_clk)
    if (i_reset)
        product <= 0;
    else if (i_ce)
        product <= tap * i_sample;

    // Accumulate partial result
    always @(posedge i_clk)
    if (i_reset)
        o_acc <= 0;
    else if (i_ce)
        o_acc <= i_partial_acc + {{(OW-(TW+IW)){product[(TW+IW-1)]}}, product};

endmodule