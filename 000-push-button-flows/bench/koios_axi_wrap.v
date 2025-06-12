

`include "/mnt/vault1/rsunketa/OpenFPGA/openfpga-test-runs/000-push-button-flows/bench/proxy.6.v"

module koios_axi_wrap #(
    parameter AXI_DATAW = 128,
    parameter PE_IN_DATAW = 603,
    parameter PE_OUT_DATAW = 420
) (
    input clk, 
    input reset, 
    input [3:0] test_input,
    output reg [3:0] test_output,
    input [AXI_DATAW-1:0] inp_data, 
    input inp_valid, 
    output reg inp_ready,
    input [3:0] inp_dest,
    input [1:0] inp_id,
    output reg [AXI_DATAW-1:0] outp_data, 
    output reg outp_valid, 
    input outp_ready,
    output reg [3:0] outp_dest,
    output reg [1:0] outp_id
); 
    //  add register 
    reg [AXI_DATAW-1:0] inp_data_reg;
    always @(posedge clk or posedge reset) begin  // moved to line 106
        if (reset) begin
            inp_data_reg <= {AXI_DATAW{1'b0}};
            inp_ready <= 1'b1;
        end else if (inp_valid && inp_ready) begin
            inp_data_reg <= inp_data;
            inp_ready <= 1'b0;
        end else if (outp_valid && outp_ready) begin
            inp_ready <= 1'b1;
        end
    end

    wire [PE_IN_DATAW-1:0] top_inp;
    wire [PE_OUT_DATAW-1:0] top_outp; 
    wire [AXI_DATAW-1:0] temp_outp;

    genvar i, j;
    generate 
        if (PE_IN_DATAW >= AXI_DATAW) begin
           for (i = 0; i < PE_IN_DATAW/AXI_DATAW; i++) begin
                assign top_inp[i*AXI_DATAW +: AXI_DATAW] = inp_data_reg;
            end
            assign top_inp[PE_IN_DATAW-1:PE_IN_DATAW - (PE_IN_DATAW % AXI_DATAW)] = 0; 
        end else begin
            assign top_inp = inp_data_reg[PE_IN_DATAW-1:0];
        end


        if (AXI_DATAW >= PE_OUT_DATAW) begin
            for (j = 0; j < AXI_DATAW/PE_OUT_DATAW; j++) begin
                assign temp_outp[j*PE_OUT_DATAW +: PE_OUT_DATAW] = top_outp;
            end
            assign temp_outp[AXI_DATAW-1:AXI_DATAW - (AXI_DATAW % PE_OUT_DATAW)] = 0;
        end else begin
            assign temp_outp = top_outp[AXI_DATAW-1:0];
        end        
    endgenerate

    // koios proxy pe instance
    top top_inst (
        .clk(clk),
        .reset(reset),
        .top_inp(top_inp),
        .top_outp(top_outp)
    );

    reg [3:0] count_cyc;
    always @(posedge clk or posedge reset) begin
        if (reset)
            count_cyc <= 4'b0;
        else if (inp_valid && inp_ready)
            count_cyc <= count_cyc + 1;
        else if (outp_valid && outp_ready)
            count_cyc <= 4'b0; // Reset count when output is ready
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            outp_valid <= 1'b0;
        end else begin
            if (count_cyc == 4'b0110) begin 
                outp_valid <= 1'b1; 
            end else begin
                outp_valid <= 1'b0; 
            end
        end
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            outp_data <= 128'b0;
            outp_dest <= 4'b0000; 
            outp_id <= 2'b00; 
            test_output <= 4'b0000;
        end else if (outp_valid && outp_ready) begin
            outp_data <= temp_outp;
            outp_dest <= 4'b0010 + inp_dest; 
            outp_id <= inp_id + 2'b01;
            test_output <= ^temp_outp[3:0] + test_input;
        end
    end

endmodule