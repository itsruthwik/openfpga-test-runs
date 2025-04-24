module wrapper_pe_256 (
    input clk,
    input reset,
    
    // Input Interface (from router)
    input in_tvalid,
    input [255:0] in_tdata_256,
    output in_tready,
    
    // Output Interface (to router)
    output out_tvalid,
    output [255:0] out_tdata_256,
    input out_tready,
    
    output done  // Flag raised 20 cycles after valid_in
);


    
    
    wire [127:0] in_tdata;  
    wire [127:0] out_tdata; 

    assign in_tdata = in_tdata_256[255:128] ^ in_tdata_256[127:0];
    assign out_tdata_256 = {out_tdata, out_tdata};

    reg [4:0] counter;        // 5-bit counter (0 to 19)
    reg valid_detected;       // Latches when valid_in is detected
    reg [127:0] output_reg;   // Output data register
    
    // Instantiate the processing element
    pe_load top_inst (
        .clk(clk),
        .reset(reset),
        .top_inp(in_tdata),
        .top_outp(output_reg)
    );

    // Input handshake logic
    assign in_tready = ~valid_detected;  // Ready when not processing
    
    // Output handshake logic
    reg out_valid_reg;
    assign out_tvalid = out_valid_reg;
    assign out_tdata = output_reg;
    
    // Detect valid_in and start counter
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            valid_detected <= 1'b0;
            counter <= 5'b0;
            out_valid_reg <= 1'b0;
        end else begin
            // Input handshake
            if (in_tvalid && in_tready) begin
                valid_detected <= 1'b1;
                counter <= 5'b0;
            end
            
            // Counter logic
            if (valid_detected) begin
                if (counter < 5'd19) begin
                    counter <= counter + 1'b1;
                end else begin
                    counter <= 5'b0;
                    valid_detected <= 1'b0;
                    out_valid_reg <= 1'b1;  // Data ready for output
                end
            end
            
            // Output handshake
            if (out_tvalid && out_tready) begin
                out_valid_reg <= 1'b0;
            end
        end
    end

    assign done = (counter == 5'd19) & valid_detected;
endmodule