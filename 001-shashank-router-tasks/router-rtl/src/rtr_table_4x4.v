module routing_table_4x4 (
    input  [3:0] router_address,  // 4 bits to address 16 nodes (4x4 mesh)
    output [47:0] routing_table_flat // 16 destinations x 3 bits each = 48 bits
);
    // Hardcoded parameters for 4x4 mesh
    parameter ROUTE_WIDTH = 3;  // Width of each routing entry
    
    // Extract row and column from router address
    wire [1:0] row_id;  // 2 bits for 4 rows
    wire [1:0] col_id;  // 2 bits for 4 columns
    assign row_id = router_address[3:2]; 
    assign col_id = router_address[1:0];

    // Port calculation helper signals
    wire is_last_row = (row_id == 2'b11);  // Row 3
    wire is_last_col = (col_id == 2'b11);  // Col 3
    wire is_first_col = (col_id == 2'b00); // Col 0
    
    // Direction port assignments
    wire [2:0] port_north = 3'b001;  // Port 1
    wire [2:0] port_south = is_last_row ? 3'b001 : 3'b010;  // Port 1 or 2
    wire [2:0] port_east = is_last_col ? 3'b001 : 3'b011;   // Port 1 or 3
    wire [2:0] port_west = is_first_col ? 3'b001 : 3'b100;  // Port 1 or 4
    wire [2:0] port_self = 3'b000;  // Port 0
    
    // Internal routing table array - 16 entries for 4x4 mesh
    reg [2:0] routing_table [0:15];
    
    // Explicitly flatten the output using individual assignments for all 16 nodes
    assign routing_table_flat[2:0]   = routing_table[0];    // Node (0,0)
    assign routing_table_flat[5:3]   = routing_table[1];    // Node (0,1)
    assign routing_table_flat[8:6]   = routing_table[2];    // Node (0,2)
    assign routing_table_flat[11:9]  = routing_table[3];    // Node (0,3)
    assign routing_table_flat[14:12] = routing_table[4];    // Node (1,0)
    assign routing_table_flat[17:15] = routing_table[5];    // Node (1,1)
    assign routing_table_flat[20:18] = routing_table[6];    // Node (1,2)
    assign routing_table_flat[23:21] = routing_table[7];    // Node (1,3)
    assign routing_table_flat[26:24] = routing_table[8];    // Node (2,0)
    assign routing_table_flat[29:27] = routing_table[9];    // Node (2,1)
    assign routing_table_flat[32:30] = routing_table[10];   // Node (2,2)
    assign routing_table_flat[35:33] = routing_table[11];   // Node (2,3)
    assign routing_table_flat[38:36] = routing_table[12];   // Node (3,0)
    assign routing_table_flat[41:39] = routing_table[13];   // Node (3,1)
    assign routing_table_flat[44:42] = routing_table[14];   // Node (3,2)
    assign routing_table_flat[47:45] = routing_table[15];   // Node (3,3)

    // Calculate routing table entries
    integer row, col, index;
    always @(*) begin
        for (row = 0; row < 4; row = row + 1) begin        // 4 rows
            for (col = 0; col < 4; col = col + 1) begin    // 4 columns
                index = row * 4 + col;                      // 4 columns per row
                
                if (col == col_id) begin
                    if (row == row_id) begin
                        routing_table[index] = port_self;
                    end else if (row < row_id) begin
                        routing_table[index] = port_north;
                    end else begin
                        routing_table[index] = port_south;
                    end
                end else if (col < col_id) begin
                    routing_table[index] = port_west;
                end else begin
                    routing_table[index] = port_east;
                end
            end
        end
    end

endmodule