module sa_pipeline #(
    // Parameters
parameter DATA_WIDTH = 32,
parameter DEST_WIDTH = 4,
parameter NUM_OUTPUTS = 2,
parameter FLIT_BUFFER_DEPTH = 2,
parameter ENABLE = 1,          // Removed 'bit' type
parameter ROUTE_WIDTH = 1     // Hardcoded replacement for $clog2(NUM_OUTPUTS)
) (
    clk,
    rst_n,
    grant,
    dest_in,
    is_tail_in,
    grant_in,
    route_in,
    valid_in,
    dest_out,
    is_tail_out,
    grant_out,
    route_out,
    valid_out,
    enable_in
);

    // Inputs
    input       clk;
    input       rst_n;
    input       grant;
    input       [DEST_WIDTH - 1 : 0]    dest_in;
    input       is_tail_in;
    input       [NUM_OUTPUTS - 1 : 0]   grant_in;
    input       [ROUTE_WIDTH - 1 : 0]   route_in;
    input       valid_in;
    input       enable_in;
    
    // Outputs
    output      [DEST_WIDTH - 1 : 0]    dest_out;
    output      is_tail_out;
    output      [NUM_OUTPUTS - 1 : 0]   grant_out;
    output      [ROUTE_WIDTH - 1 : 0]   route_out;
    output      valid_out;
    
    // Internal registers
    reg         [DEST_WIDTH - 1 : 0]    dest_out;
    reg         is_tail_out;
    reg         [NUM_OUTPUTS - 1 : 0]   grant_out;
    reg         [ROUTE_WIDTH - 1 : 0]   route_out;
    reg         valid_out;
    reg         [NUM_OUTPUTS - 1 : 0]   grant_reg;

    generate 
        if (ENABLE == 1) begin: pipe_enabled
            // Register all outputs when enabled
            always @(posedge clk) begin
                if (rst_n == 1'b0) begin
                    valid_out <= 0;
                end else begin
                    if (valid_in & grant & enable_in) 
                        valid_out <= 1'b1;
                    else 
                        valid_out <= 1'b0;
                end

                if (enable_in) begin
                    dest_out <= dest_in;
                    is_tail_out <= is_tail_in;
                    grant_reg <= grant_in;
                    route_out <= route_in;
                end
            end
            
            // Combinational grant output based on valid
            always @(*) begin
                if (valid_out)
                    grant_out = grant_reg;
                else
                    grant_out = 0;
            end
        end 
        else begin: pipe_disabled
            // Direct connections when disabled
            always @(*) begin
                dest_out = dest_in;
                is_tail_out = is_tail_in;
                grant_out = grant_in;
                route_out = route_in;
                valid_out = valid_in;
            end
        end
    endgenerate

endmodule