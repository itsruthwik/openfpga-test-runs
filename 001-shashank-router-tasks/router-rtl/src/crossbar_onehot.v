module crossbar_onehot #(
    parameter DATA_WIDTH = 32,
    parameter NUM_INPUTS = 2,
    parameter NUM_OUTPUTS = 2,
    parameter MODE = "ONEHOT",      // BINARY, ONEHOT, EXPLICIT (supports upto 5x5)
    parameter BINARY_WIDTH = 1      
) (
    input   wire    [(NUM_INPUTS*DATA_WIDTH) - 1 : 0]    data_in,
    input   wire    [NUM_INPUTS - 1 : 0]                 valid_in,

    output  reg     [(NUM_OUTPUTS*DATA_WIDTH) - 1 : 0]   data_out,
    output  reg     [NUM_OUTPUTS - 1 : 0]                valid_out,
    input   wire    [(NUM_OUTPUTS*NUM_INPUTS) - 1 : 0]   select      
);

    generate
        if (MODE == "BINARY") begin
            wire [BINARY_WIDTH*NUM_OUTPUTS - 1 : 0] select_binary;
            genvar i;
            for (i = 0; i < NUM_OUTPUTS; i = i + 1) begin: for_outputs
                wire [NUM_INPUTS-1:0] select_i;
                assign select_i = select[i*NUM_INPUTS +: NUM_INPUTS];
                
                onehot_to_binary #(
                    .WIDTH(NUM_INPUTS),
                    .BINARY_WIDTH(BINARY_WIDTH)
                ) onehot_to_binary_inst (
                    .onehot(select_i),
                    .binary(select_binary[i*BINARY_WIDTH +: BINARY_WIDTH])
                );
                
                wire [BINARY_WIDTH-1:0] sel_binary_i;
                assign sel_binary_i = select_binary[i*BINARY_WIDTH +: BINARY_WIDTH];
                
                wire [DATA_WIDTH-1:0] data_val;
                wire valid_val;
                
                assign data_val = (select_i == 0) ? 0 : 
                                  data_in[sel_binary_i*DATA_WIDTH +: DATA_WIDTH];
                assign valid_val = (select_i == 0) ? 1'b0 : 
                                   valid_in[sel_binary_i];
                
                assign data_out[i*DATA_WIDTH +: DATA_WIDTH] = data_val;
                assign valid_out[i] = valid_val;
            end
        end else if (MODE == "ONEHOT") begin
            integer i, j;
            
            always @(*) begin
                for (i = 0; i < NUM_OUTPUTS; i = i + 1) begin
                    data_out[i*DATA_WIDTH +: DATA_WIDTH] = 0;
                    valid_out[i] = 0;
                    for (j = 0; j < NUM_INPUTS; j = j + 1) begin
                        if (select[i*NUM_INPUTS + j]) begin
                            data_out[i*DATA_WIDTH +: DATA_WIDTH] = 
                                data_out[i*DATA_WIDTH +: DATA_WIDTH] | 
                                data_in[j*DATA_WIDTH +: DATA_WIDTH];
                            valid_out[i] = valid_out[i] | valid_in[j];
                        end
                    end
                end
            end
        end else if (MODE == "EXPLICIT") begin
            // Expanded vectors for 5x5 case
            wire [4:0] select_expanded [0:NUM_OUTPUTS-1];
            wire [DATA_WIDTH-1:0] data_in_expanded [0:4];
            wire valid_in_expanded [0:4];
            
            genvar i;
            for (i = 0; i < NUM_INPUTS; i = i + 1) begin: for_inputs
                assign data_in_expanded[i] = data_in[i*DATA_WIDTH +: DATA_WIDTH];
                assign valid_in_expanded[i] = valid_in[i];
            end
            
            // Zero-initialize any unused inputs
            for (i = NUM_INPUTS; i < 5; i = i + 1) begin: for_unused_inputs
                assign data_in_expanded[i] = 0;
                assign valid_in_expanded[i] = 0;
            end

            for (i = 0; i < NUM_OUTPUTS; i = i + 1) begin: for_outputs
                wire [NUM_INPUTS-1:0] select_i;
                assign select_i = select[i*NUM_INPUTS +: NUM_INPUTS];
                
                // Zero pad for 5 bits
                assign select_expanded[i] = {5'b0 | select_i};
                
                reg [DATA_WIDTH-1:0] data_out_i;
                reg valid_out_i;
                
                always @(*) begin
                    case (select_expanded[i])
                        5'b00000: begin
                            data_out_i = {DATA_WIDTH{1'bx}};
                            valid_out_i = 0;
                        end
                        5'b00001: begin
                            data_out_i = data_in_expanded[0];
                            valid_out_i = valid_in_expanded[0];
                        end
                        5'b00010: begin
                            data_out_i = data_in_expanded[1];
                            valid_out_i = valid_in_expanded[1];
                        end
                        5'b00100: begin
                            data_out_i = data_in_expanded[2];
                            valid_out_i = valid_in_expanded[2];
                        end
                        5'b01000: begin
                            data_out_i = data_in_expanded[3];
                            valid_out_i = valid_in_expanded[3];
                        end
                        5'b10000: begin
                            data_out_i = data_in_expanded[4];
                            valid_out_i = valid_in_expanded[4];
                        end
                        default: begin
                            data_out_i = {DATA_WIDTH{1'bx}};
                            valid_out_i = 1'bx;
                        end
                    endcase
                end
                
                assign data_out[i*DATA_WIDTH +: DATA_WIDTH] = data_out_i;
                assign valid_out[i] = valid_out_i;
            end
        end
    endgenerate

endmodule