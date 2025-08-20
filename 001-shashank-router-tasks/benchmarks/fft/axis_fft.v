module axis_fft (
    // AXI Stream interface
    input wire         clk,
    input wire         reset,
    // Input stream
    input wire [31:0]  in_tdata,    // [31:16] Real, [15:0] Imaginary
    input wire         in_tvalid,
    output wire        in_tready,
    // Output stream
    output wire [37:0] out_tdata,   // [37:19] Real, [18:0] Imaginary
    output wire        out_tvalid,
    input wire         out_tready
);

    // Internal signals
    reg [3:0]  shift_reg = 4'b0000;   // No shifting by default
    reg        start_reg = 1'b0;
    reg        enable_reg = 1'b0;
    
    // Sample counter to track 64-point FFT progress
    reg [6:0] sample_counter = 7'b0;
    
    // FFT output signals
    wire        fft_ready;
    wire        fft_ovf1, fft_ovf2;
    wire [5:0]  fft_addr;
    wire [18:0] fft_dor, fft_doi;
    
    // State machine states
    localparam IDLE = 2'b00;
    localparam COLLECTING = 2'b01;
    localparam PROCESSING = 2'b10;
    localparam OUTPUTTING = 2'b11;
    
    reg [1:0] state = IDLE;
    
    // Input control logic
    assign in_tready = (state == IDLE || state == COLLECTING);
    
    // Output data composition
    assign out_tdata = {fft_dor, fft_doi};
    assign out_tvalid = (state == OUTPUTTING && fft_ready);
    
    // State machine
    always @(posedge clk) begin
        if (reset) begin
            state <= IDLE;
            sample_counter <= 0;
            start_reg <= 1'b0;
            enable_reg <= 1'b0;
        end else begin
            case (state)
                IDLE: begin
                    start_reg <= 1'b0;
                    if (in_tvalid && in_tready) begin
                        state <= COLLECTING;
                        sample_counter <= 7'd1;  // First sample already accepted
                        enable_reg <= 1'b1;
                    end
                end
                
                COLLECTING: begin
                    start_reg <= 1'b0;
                    if (in_tvalid && in_tready) begin
                        sample_counter <= sample_counter + 1;
                        if (sample_counter == 7'd63) begin
                            // Got all 64 samples, start processing
                            state <= PROCESSING;
                            start_reg <= 1'b1;  // Pulse START to begin transform
                        end
                    end
                end
                
                PROCESSING: begin
                    start_reg <= 1'b0;  // Reset start pulse
                    if (fft_ready) begin
                        state <= OUTPUTTING;
                        sample_counter <= 7'd0;
                    end
                end
                
                OUTPUTTING: begin
                    if (out_tready && out_tvalid) begin
                        sample_counter <= sample_counter + 1;
                        if (sample_counter == 7'd63) begin
                            // Output all 64 samples, go back to IDLE
                            state <= IDLE;
                            enable_reg <= 1'b0;
                        end
                    end
                end
            endcase
        end
    end
    
    // Instantiate the FFT module
    USFFT64_2B fft_core (
        .CLK(clk),
        .RST(reset),
        .ED(enable_reg),
        .START(start_reg),
        .SHIFT(shift_reg),
        .DR(in_tdata[31:16]),
        .DI(in_tdata[15:0]),
        .RDY(fft_ready),
        .OVF1(fft_ovf1),
        .OVF2(fft_ovf2),
        .ADDR(fft_addr),
        .DOR(fft_dor),
        .DOI(fft_doi)
    );
    
endmodule