module rc_pipeline (
    clk,
    rst_n,
    dest_in,
    is_tail_in,
    route_in,
    credit_count_in,
    valid_in,
    enable_out,
    dest_out,
    is_tail_out,
    route_out,
    credit_count_out,
    valid_out,
    enable_in
);
    // Parameters
    parameter DATA_WIDTH = 32;
    parameter DEST_WIDTH = 4;
    parameter NUM_OUTPUTS = 2;
    parameter FLIT_BUFFER_DEPTH = 2;
    parameter ENABLE = 1;  
    parameter ROUTE_WIDTH = 1;
    parameter CREDIT_WIDTH = 2; 
    
    // Ports
    input       clk;
    input       rst_n;
    input       [DEST_WIDTH - 1 : 0]    dest_in;
    input       is_tail_in;
    input       [ROUTE_WIDTH - 1 : 0]   route_in;
    input       [CREDIT_WIDTH*NUM_OUTPUTS - 1 : 0] credit_count_in; 
    input       valid_in;
    output      enable_out;
    output      [DEST_WIDTH - 1 : 0]    dest_out;
    output      is_tail_out;
    output      [ROUTE_WIDTH - 1 : 0]   route_out;
    output      [CREDIT_WIDTH - 1 : 0]  credit_count_out;
    output      valid_out;
    input       enable_in;
    
    reg         [DEST_WIDTH - 1 : 0]    dest_out_reg;
    reg         is_tail_out_reg;
    reg         [ROUTE_WIDTH - 1 : 0]   route_out_reg;
    reg         [CREDIT_WIDTH - 1 : 0]  credit_count_out_reg;
    reg         valid_out_reg;
    
    wire        [CREDIT_WIDTH - 1 : 0]  credit_in_selected;
    reg         [CREDIT_WIDTH - 1 : 0]  credit_current_selected;

    generate
        genvar i;
        if (NUM_OUTPUTS == 2) begin: mux_2way
            assign credit_in_selected = 
                (route_in == 0) ? credit_count_in[CREDIT_WIDTH-1:0] :
                                  credit_count_in[2*CREDIT_WIDTH-1:CREDIT_WIDTH];
        end else if (NUM_OUTPUTS == 3) begin: mux_3way
            assign credit_in_selected = 
                (route_in == 0) ? credit_count_in[CREDIT_WIDTH-1:0] :
                (route_in == 1) ? credit_count_in[2*CREDIT_WIDTH-1:CREDIT_WIDTH] :
                                  credit_count_in[3*CREDIT_WIDTH-1:2*CREDIT_WIDTH];
        end else if (NUM_OUTPUTS == 4) begin: mux_4way
            assign credit_in_selected = 
                (route_in == 0) ? credit_count_in[CREDIT_WIDTH-1:0] :
                (route_in == 1) ? credit_count_in[2*CREDIT_WIDTH-1:CREDIT_WIDTH] :
                (route_in == 2) ? credit_count_in[3*CREDIT_WIDTH-1:2*CREDIT_WIDTH] :
                                  credit_count_in[4*CREDIT_WIDTH-1:3*CREDIT_WIDTH];
        end else if (NUM_OUTPUTS == 5) begin: mux_5way
            assign credit_in_selected = 
                (route_in == 0) ? credit_count_in[CREDIT_WIDTH-1:0] :
                (route_in == 1) ? credit_count_in[2*CREDIT_WIDTH-1:CREDIT_WIDTH] :
                (route_in == 2) ? credit_count_in[3*CREDIT_WIDTH-1:2*CREDIT_WIDTH] :
                (route_in == 3) ? credit_count_in[4*CREDIT_WIDTH-1:3*CREDIT_WIDTH] :
                                  credit_count_in[5*CREDIT_WIDTH-1:4*CREDIT_WIDTH];
        end
        // Add more cases if NUM_OUTPUTS > 5
    endgenerate
    
    generate
        genvar j;
        if (NUM_OUTPUTS == 2) begin: mux_curr_2way
            always @(*) begin
                if (route_out_reg == 0)
                    credit_current_selected = credit_count_in[CREDIT_WIDTH-1:0];
                else
                    credit_current_selected = credit_count_in[2*CREDIT_WIDTH-1:CREDIT_WIDTH];
            end
        end else if (NUM_OUTPUTS == 3) begin: mux_curr_3way
            always @(*) begin
                if (route_out_reg == 0)
                    credit_current_selected = credit_count_in[CREDIT_WIDTH-1:0];
                else if (route_out_reg == 1)
                    credit_current_selected = credit_count_in[2*CREDIT_WIDTH-1:CREDIT_WIDTH];
                else
                    credit_current_selected = credit_count_in[3*CREDIT_WIDTH-1:2*CREDIT_WIDTH];
            end
        end else if (NUM_OUTPUTS == 4) begin: mux_curr_4way
            always @(*) begin
                if (route_out_reg == 0)
                    credit_current_selected = credit_count_in[CREDIT_WIDTH-1:0];
                else if (route_out_reg == 1)
                    credit_current_selected = credit_count_in[2*CREDIT_WIDTH-1:CREDIT_WIDTH];
                else if (route_out_reg == 2)
                    credit_current_selected = credit_count_in[3*CREDIT_WIDTH-1:2*CREDIT_WIDTH];
                else
                    credit_current_selected = credit_count_in[4*CREDIT_WIDTH-1:3*CREDIT_WIDTH];
            end
        end else if (NUM_OUTPUTS == 5) begin: mux_curr_5way
            always @(*) begin
                if (route_out_reg == 0)
                    credit_current_selected = credit_count_in[CREDIT_WIDTH-1:0];
                else if (route_out_reg == 1)
                    credit_current_selected = credit_count_in[2*CREDIT_WIDTH-1:CREDIT_WIDTH];
                else if (route_out_reg == 2)
                    credit_current_selected = credit_count_in[3*CREDIT_WIDTH-1:2*CREDIT_WIDTH];
                else if (route_out_reg == 3)
                    credit_current_selected = credit_count_in[4*CREDIT_WIDTH-1:3*CREDIT_WIDTH];
                else
                    credit_current_selected = credit_count_in[5*CREDIT_WIDTH-1:4*CREDIT_WIDTH];
            end
        end
        // Add more cases if NUM_OUTPUTS > 5
    endgenerate
    
    // Implement pipeline logic
    generate
        if (ENABLE == 1) begin: pipe_enabled
            always @(posedge clk) begin
                if (rst_n == 1'b0) begin
                    valid_out_reg <= 0;
                end else begin
                    if (enable_in) valid_out_reg <= 1'b0;
                    if (valid_in) valid_out_reg <= 1'b1;
                end

                if (~valid_out_reg | enable_in) begin
                    dest_out_reg <= dest_in;
                    is_tail_out_reg <= is_tail_in;
                    route_out_reg <= route_in;
                    credit_count_out_reg <= credit_in_selected;
                end else begin
                    credit_count_out_reg <= credit_current_selected;
                end
            end
            
            assign dest_out = dest_out_reg;
            assign is_tail_out = is_tail_out_reg;
            assign route_out = route_out_reg;
            assign valid_out = valid_out_reg;
            assign credit_count_out = credit_count_out_reg;
            assign enable_out = enable_in | ~valid_out_reg;
            
        end else begin: pipe_disabled
            // Direct connections
            assign dest_out = dest_in;
            assign is_tail_out = is_tail_in;
            assign route_out = route_in;
            assign valid_out = valid_in;
            assign credit_count_out = credit_in_selected;
            assign enable_out = enable_in;
        end
    endgenerate

endmodule