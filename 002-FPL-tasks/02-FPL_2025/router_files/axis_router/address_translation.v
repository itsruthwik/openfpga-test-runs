module logic2phys #(
    parameter addr_width = 4,        // Width of logical addresses
    parameter num_routers = 16       // Number of physical addresses
) (
    input [addr_width-1:0] curr_addr,
    input [addr_width*num_routers:0] input_bits,
    output reg [addr_width-1:0] translated_addrs,
    output  mode
);


wire [addr_width*num_routers-1:0] router_addrs;
integer i;

assign out = input_bits[addr_width*num_routers];
assign router_addrs = input_bits[addr_width*num_routers-1:0];

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

module phys2logic #(
    parameter addr_width = 4,        // Width of logical addresses
    parameter num_routers = 16       // Number of physical addresses
) (
    input [addr_width-1:0] curr_addr,
    input [addr_width*num_routers:0] input_bits,
    output  [addr_width-1:0] translated_addrs
);
wire [addr_width*num_routers-1:0] router_addrs;
assign router_addrs = input_bits[addr_width*num_routers-1:0];


assign translated_addrs = router_addrs[curr_addr * addr_width +: addr_width];
    
endmodule