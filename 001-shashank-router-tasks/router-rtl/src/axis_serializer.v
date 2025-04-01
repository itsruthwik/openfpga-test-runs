module axis_serializer #(
    // Parameters
parameter TDEST_WIDTH = 3,
parameter TDATA_WIDTH = 512,
parameter SERIALIZATION_FACTOR = 2,
parameter SER_COUNT_WIDTH = 1 // Hardcoded for SERIALIZATION_FACTOR=2, use 2 for factor=4

) (
    clk,
    rst_n,
    axis_in_tvalid,
    axis_in_tready,
    axis_in_tdata,
    axis_in_tlast,
    axis_in_tdest,
    axis_out_tvalid,
    axis_out_tready,
    axis_out_tdata,
    axis_out_tlast,
    axis_out_tdest
);

    // Local parameters
    parameter TDATA_OUT_WIDTH = TDATA_WIDTH / SERIALIZATION_FACTOR;
    
    // Ports
    input wire clk;
    input wire rst_n;
    input wire axis_in_tvalid;
    output reg axis_in_tready;
    input wire [TDATA_WIDTH - 1 : 0] axis_in_tdata;
    input wire axis_in_tlast;
    input wire [TDEST_WIDTH - 1 : 0] axis_in_tdest;
    
    output reg axis_out_tvalid;
    input wire axis_out_tready;
    output reg [TDATA_OUT_WIDTH - 1 : 0] axis_out_tdata;
    output reg axis_out_tlast;
    output reg [TDEST_WIDTH - 1 : 0] axis_out_tdest;

    // Internal signals
    reg [TDATA_WIDTH - 1 : 0] tdata_buffer;
    reg [TDEST_WIDTH - 1 : 0] tdest_buffer;
    reg tlast_buffer;
    reg [SER_COUNT_WIDTH - 1 : 0] ser_count;
    
    // Combinational assignments
    wire [TDATA_OUT_WIDTH - 1 : 0] axis_out_tdata_next;
    wire at_last_count;
    wire handshake_in;
    wire handshake_out;
    
    // Data selection based on counter
    // For SERIALIZATION_FACTOR=2: select upper or lower half
    assign axis_out_tdata_next = (ser_count == 0) ? 
                                 tdata_buffer[TDATA_OUT_WIDTH-1:0] : 
                                 tdata_buffer[TDATA_WIDTH-1:TDATA_OUT_WIDTH];
    
    assign at_last_count = (ser_count == SERIALIZATION_FACTOR - 1);
    assign handshake_in = axis_in_tvalid & axis_in_tready;
    assign handshake_out = axis_out_tvalid & axis_out_tready;
    
    // Ready signal generation
    always @(*) begin
        axis_in_tready = !axis_out_tvalid || (handshake_out && at_last_count);
    end
    
    // Serial counter
    always @(posedge clk) begin
        if (!rst_n) begin
            ser_count <= 0;
        end else begin
            if (handshake_out) begin
                if (at_last_count) begin
                    ser_count <= 0;
                end else begin
                    ser_count <= ser_count + 1'b1;
                end
            end
        end
    end
    
    // Data output
    always @(*) begin
        axis_out_tdata = axis_out_tdata_next;
    end
    
    // Buffer loading
    always @(posedge clk) begin
        if (handshake_in) begin
            tdata_buffer <= axis_in_tdata;
            tdest_buffer <= axis_in_tdest;
            tlast_buffer <= axis_in_tlast;
        end
    end
    
    // Output control signals
    always @(posedge clk) begin
        if (!rst_n) begin
            axis_out_tvalid <= 1'b0;
        end else begin
            if (at_last_count && handshake_out)
                axis_out_tvalid <= 1'b0;
            if (handshake_in)
                axis_out_tvalid <= 1'b1;
        end
    end
    
    always @(posedge clk) begin
        if (!rst_n) begin
            axis_out_tlast <= 1'b0;
            axis_out_tdest <= 0;
        end else begin
            if (handshake_out) begin
                axis_out_tlast <= tlast_buffer & (ser_count == (SERIALIZATION_FACTOR - 1));
                axis_out_tdest <= tdest_buffer;
            end
        end
    end
endmodule

module axis_deserializer #(
    // Parameters
parameter TDEST_WIDTH = 3,
parameter TDATA_WIDTH = 512,
parameter SERIALIZATION_FACTOR = 2,
parameter SER_COUNT_WIDTH = 1 // Hardcoded for SERIALIZATION_FACTOR=2, use 2 for factor=4

) (
    clk,
    rst_n,
    axis_in_tvalid,
    axis_in_tready,
    axis_in_tdata,
    axis_in_tlast,
    axis_in_tdest,
    axis_out_tvalid,
    axis_out_tready,
    axis_out_tdata,
    axis_out_tlast,
    axis_out_tdest
);

    // Local parameters
    parameter TDATA_IN_WIDTH = TDATA_WIDTH / SERIALIZATION_FACTOR;
    
    // Ports
    input wire clk;
    input wire rst_n;
    input wire axis_in_tvalid;
    output reg axis_in_tready;
    input wire [TDATA_IN_WIDTH - 1 : 0] axis_in_tdata;
    input wire axis_in_tlast;
    input wire [TDEST_WIDTH - 1 : 0] axis_in_tdest;
    
    output reg axis_out_tvalid;
    input wire axis_out_tready;
    output reg [TDATA_WIDTH - 1 : 0] axis_out_tdata;
    output reg axis_out_tlast;
    output reg [TDEST_WIDTH - 1 : 0] axis_out_tdest;

    // Internal signals
    reg [TDATA_WIDTH - 1 : 0] tdata_buffer;
    reg [TDEST_WIDTH - 1 : 0] tdest_buffer;
    reg tlast_buffer;
    reg [SER_COUNT_WIDTH - 1 : 0] ser_count;
    
    // Helper signals
    wire at_last_count;
    wire handshake_in;
    wire handshake_out;
    
    assign at_last_count = (ser_count == SERIALIZATION_FACTOR - 1);
    assign handshake_in = axis_in_tvalid & axis_in_tready;
    assign handshake_out = axis_out_tvalid & axis_out_tready;
    
    // Ready signal generation
    always @(*) begin
        axis_in_tready = !axis_out_tvalid || (handshake_out && at_last_count);
    end
    
    // Buffer output
    always @(*) begin
        axis_out_tdata = tdata_buffer;
        axis_out_tdest = tdest_buffer;
        axis_out_tlast = tlast_buffer;
    end
    
    // Serial counter
    always @(posedge clk) begin
        if (!rst_n) begin
            ser_count <= 0;
        end else begin
            if (handshake_in) begin
                if (at_last_count) begin
                    ser_count <= 0;
                end else begin
                    ser_count <= ser_count + 1'b1;
                end
            end
        end
    end
    
    // Buffer loading - specialization for SERIALIZATION_FACTOR=2
    always @(posedge clk) begin
        if (handshake_in) begin
            // Load data into the appropriate part of buffer based on counter
            if (ser_count == 0) begin
                tdata_buffer[TDATA_IN_WIDTH-1:0] <= axis_in_tdata;
            end else begin
                tdata_buffer[TDATA_WIDTH-1:TDATA_IN_WIDTH] <= axis_in_tdata;
            end
            
            // Only capture control signals at the last transfer
            if (at_last_count) begin
                tdest_buffer <= axis_in_tdest;
                tlast_buffer <= axis_in_tlast;
            end
        end
    end
    
    // Valid control
    always @(posedge clk) begin
        if (!rst_n) begin
            axis_out_tvalid <= 1'b0;
        end else begin
            if (handshake_out)
                axis_out_tvalid <= 1'b0;
            if (at_last_count && handshake_in)
                axis_out_tvalid <= 1'b1;
        end
    end
endmodule