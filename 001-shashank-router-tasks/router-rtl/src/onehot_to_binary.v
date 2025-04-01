module onehot_to_binary #(
    parameter WIDTH = 4,
    parameter BINARY_WIDTH = 2  
) (
    input   wire    [WIDTH - 1 : 0]         onehot,
    output  reg     [BINARY_WIDTH - 1 : 0]  binary 
);
    integer i;  
    
    always @(*) begin 
        binary = 0;    
        for (i = 0; i < WIDTH; i = i + 1) begin 
            binary = binary | (onehot[i] ? i : 0); 
        end
    end
endmodule  