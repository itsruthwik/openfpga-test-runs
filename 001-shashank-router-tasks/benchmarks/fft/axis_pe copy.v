module axis_pe (
    // AXI Stream interface
    input wire         clk,
    input wire         reset,
    // Input stream
    input wire [127:0] in_tdata,    // 128-bit input data
    input wire         in_tvalid,
    output wire        in_tready,
    // Output stream
    output wire [127:0] out_tdata,   // 128-bit output data
    output wire         out_tvalid,
    input wire          out_tready
);

    // Internal connections between FFT modules
    wire [37:0] fft1_in_tdata;
    wire        fft1_in_tvalid;
    wire        fft1_in_tready;

    wire [37:0] fft1_out_tdata;
    wire        fft1_out_tvalid;
    wire        fft1_out_tready;
    
    wire [37:0] fft2_out_tdata;
    wire        fft2_out_tvalid;
    wire        fft2_out_tready;
    

    wire [37:0] fft3_out_tdata;
    wire        fft3_out_tvalid;
    wire        fft3_out_tready;


    // Data buffer for input and output
    reg [127:0] input_buffer;
    reg [127:0] output_buffer;
    
    // Control signals
    reg [1:0] input_select = 2'b00;  // Selects which 32-bit chunk to use
    reg [1:0] output_count = 2'b00;  // Tracks which output portion we're filling
    
    // Status signals
    reg input_buffer_valid = 1'b0;
    reg output_buffer_valid = 1'b0;
    
    // FFT modules input signals - extract from input buffer based on input_select
    assign fft1_in_tdata = input_buffer[31:0];
    assign        fft1_in_tvalid = input_buffer_valid && (input_select == 2'b00);
    
    // Input ready is based on buffer status and first FFT's ready signal
    assign in_tready = !input_buffer_valid || (fft1_in_tready && input_select == 2'b11);
    
    // Output signals


    assign out_tdata = output_buffer;
    assign out_tvalid = output_buffer_valid;
    
    // Input buffer control
    always @(posedge clk) begin
        if (reset) begin
            input_buffer_valid <= 1'b0;
            input_select <= 2'b00;
        end else begin
            // Load new data when buffer is empty or we've used all chunks
            if (!input_buffer_valid && in_tvalid) begin
                input_buffer <= in_tdata;
                input_buffer_valid <= 1'b1;
                input_select <= 2'b00;
            end
            
            // Advance to next 32-bit chunk when FFT1 consumes current chunk
            if (input_buffer_valid && fft1_in_tvalid && fft1_in_tready) begin
                input_select <= input_select + 1;
                
                // Rotate the input buffer for next chunk
                input_buffer <= {32'b0, input_buffer[127:32]};
                
                // If we've used all chunks, mark buffer as empty
                if (input_select == 2'b11) begin
                    input_buffer_valid <= 1'b0;
                end
            end
        end
    end
    
    // Output buffer control
    always @(posedge clk) begin
        if (reset) begin
            output_buffer_valid <= 1'b0;
            output_count <= 2'b00;
        end else begin
            // When third FFT outputs data, store it in the appropriate position
            if (fft3_out_tvalid && !output_buffer_valid) begin
                case (output_count)
                    2'b00: output_buffer[37:0] <= fft3_out_tdata;
                    2'b01: output_buffer[75:38] <= fft3_out_tdata;
                    2'b10: output_buffer[113:76] <= fft3_out_tdata;
                    2'b11: output_buffer[127:114] <= fft3_out_tdata[13:0];
                endcase
                
                output_count <= output_count + 1;
                
                // If this is the last piece, mark the buffer as valid
                if (output_count == 2'b11) begin
                    output_buffer_valid <= 1'b1;
                end
            end
            
            // Clear buffer when output is consumed
            if (output_buffer_valid && out_tready) begin
                output_buffer_valid <= 1'b0;
                output_count <= 2'b00;
            end
        end
    end
    
    // First FFT module - takes input from input buffer
    axis_fft fft1 (
        .clk(clk),
        .reset(reset),
        // Input stream
        .in_tdata(fft1_in_tdata),
        .in_tvalid(fft1_in_tvalid),
        .in_tready(fft1_in_tready),
        // Output stream
        .out_tdata(fft1_out_tdata),
        .out_tvalid(fft1_out_tvalid),
        .out_tready(fft1_out_tready)
    );
    
    // Second FFT module - takes input from first FFT
    // Truncates 38-bit input to 32-bit
    axis_fft fft2 (
        .clk(clk),
        .reset(reset),
        // Input stream - truncate from 38 to 32 bits
        .in_tdata({fft1_out_tdata[37:22], fft1_out_tdata[18:3]}),
        .in_tvalid(fft1_out_tvalid),
        .in_tready(fft1_out_tready),
        // Output stream
        .out_tdata(fft2_out_tdata),
        .out_tvalid(fft2_out_tvalid),
        .out_tready(fft2_out_tready)
    );
    
    // Third FFT module - takes input from second FFT
    axis_fft fft3 (
        .clk(clk),
        .reset(reset),
        // Input stream - truncate from 38 to 32 bits
        .in_tdata({fft2_out_tdata[37:22], fft2_out_tdata[18:3]}),
        .in_tvalid(fft2_out_tvalid),
        .in_tready(fft2_out_tready),
        // Output stream
        .out_tdata(fft3_out_tdata),
        .out_tvalid(fft3_out_tvalid),
        .out_tready(output_count != 2'b11 || !output_buffer_valid)
    );
    
endmodule