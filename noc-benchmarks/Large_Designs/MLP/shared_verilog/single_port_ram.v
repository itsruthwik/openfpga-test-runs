(* whitebox *)
module single_port_ram(
    input wire clk,
    input wire we,
    input wire [39:0] data,
    input wire [8:0] addr,
    output reg [39:0] out
);

    // Define a memory array with 512 locations, each 40 bits wide
    reg [39:0] mem [0:511];

    always @(posedge clk) begin
        if (we) begin
            // Write data to memory at the specified address
            mem[addr] <= data;
        end
        // Read data from memory at the specified address
        out <= mem[addr];
    end

endmodule