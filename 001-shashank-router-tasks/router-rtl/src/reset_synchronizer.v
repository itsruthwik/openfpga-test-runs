module reset_synchronizer #(
    parameter NUM_EXTEND_CYCLES = 4,
    parameter NUM_OUTPUT_REGISTERS = 1
) (
    input wire reset_async,
    input wire sync_clk,
    output wire reset_sync
);
    reg reset_async_reg;
    reg reset_async_reg2;
    
    // cycle register 
    reg reset_extend_0;
    reg reset_extend_1;
    reg reset_extend_2;
    reg reset_extend_3;
    
    // Output registers
    reg reset_sync_reg_0;
    reg reset_sync_reg_1;
    reg reset_sync_reg_2;
    reg reset_sync_reg_3;
    
    // Internal reset signals
    reg reset_sync_int;
    reg reset_sync_tmp;
    
    // Double-flop synchronizer
    always @(posedge sync_clk) begin
        reset_async_reg <= reset_async;
        reset_async_reg2 <= reset_async_reg;
    end
    
    // Extend reset signal if NUM_EXTEND_CYCLES > 0
    always @(posedge sync_clk) begin
        reset_extend_0 <= reset_async_reg2;
        reset_extend_1 <= reset_extend_0;
        reset_extend_2 <= reset_extend_1;
        reset_extend_3 <= reset_extend_2;
    end
    
    // Combine extended reset signals
    always @(*) begin
        reset_sync_tmp = reset_async_reg2;
        
        if (NUM_EXTEND_CYCLES >= 1) reset_sync_tmp = reset_sync_tmp | reset_extend_0;
        if (NUM_EXTEND_CYCLES >= 2) reset_sync_tmp = reset_sync_tmp | reset_extend_1;
        if (NUM_EXTEND_CYCLES >= 3) reset_sync_tmp = reset_sync_tmp | reset_extend_2;
        if (NUM_EXTEND_CYCLES >= 4) reset_sync_tmp = reset_sync_tmp | reset_extend_3;
        
        reset_sync_int = reset_sync_tmp;
    end
    
    // Output registers
    always @(posedge sync_clk) begin
        reset_sync_reg_0 <= reset_sync_int;
        reset_sync_reg_1 <= reset_sync_reg_0;
        reset_sync_reg_2 <= reset_sync_reg_1;
        reset_sync_reg_3 <= reset_sync_reg_2;
    end
    
    // Select the appropriate output based on NUM_OUTPUT_REGISTERS
    // Use conditional assignments which synthesize to a mux
    assign reset_sync = (NUM_OUTPUT_REGISTERS == 0) ? reset_sync_int :
                        (NUM_OUTPUT_REGISTERS == 1) ? reset_sync_reg_0 :
                        (NUM_OUTPUT_REGISTERS == 2) ? reset_sync_reg_1 :
                        (NUM_OUTPUT_REGISTERS == 3) ? reset_sync_reg_2 :
                        reset_sync_reg_3;

endmodule