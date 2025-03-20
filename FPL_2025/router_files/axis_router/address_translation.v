module address_translation #(
    parameter addr_width = 4,        // Width of logical addresses
    parameter num_routers = 16       // Number of physical addresses
) (
    input [addr_width-1:0] curr_addr,
    input [addr_width*num_routers-1:0] router_addrs,
    output reg [addr_width-1:0] translated_addrs
);

integer i;

always @(*) begin
    translated_addrs = {addr_width{1'b0}};
    
    // Physical addresses are indices (0 to num_routers-1)
    for (i = 0; i < num_routers; i = i + 1) begin
        if (router_addrs[i*addr_width +: addr_width] == curr_addr) begin
            translated_addrs = i[addr_width-1:0];
        end
    end
end

endmodule

module tb_address_translation;
    reg [3:0] curr_addr;
    reg [63:0] router_addrs;  // 16 routers * 4 bits = 64 bits
    wire [3:0] translated_addrs;
//    wire valid;

    address_translation dut (
        .curr_addr(curr_addr),
        .router_addrs(router_addrs),
        .translated_addrs(translated_addrs)
 //       .valid(valid)
    );

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, tb_address_translation);
        
        // Physical index -> logical address mapping:
        // Index 0: 0xC, Index 1: 0xA, Index 2: 0x8, etc.
        router_addrs = 64'b10000000000000000000000000000000_0000_0000_0100_0000_0010_0000_0000_1100;  // Hexadecimal pattern
        
        // Test case 1: Find physical address for logical 0xC (should be 0)
        curr_addr = 4'b1000;
        #10 $display("Logical: %b -> Physical: %b", 
                   curr_addr, translated_addrs);

        // Test case 2: Find physical address for logical 0xA (should be 1)
        curr_addr = 4'b1100;
        #10 $display("Logical: %b -> Physical: %b", 
                   curr_addr, translated_addrs);

        // Test case 3: Invalid address (0x5)
        curr_addr = 4'b0100;
        #10 $display("Logical: %b -> Physical: %b ", 
                   curr_addr, translated_addrs);

        curr_addr = 4'b0010;
        #10 $display("Logical: %b -> Physical: %b ", 
                   curr_addr, translated_addrs);


        #10 $finish;
    end
endmodule