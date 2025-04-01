module arbiter_matrix #(
    parameter NUM_INPUTS = 4
) (
    input   wire                            clk,
    input   wire                            rst_n,

    input   wire    [NUM_INPUTS - 1 : 0]    request,
    input   wire    [NUM_INPUTS - 1 : 0]    hold,
    output  reg     [NUM_INPUTS - 1 : 0]    grant
);
    reg [NUM_INPUTS*NUM_INPUTS-1:0] matrix;

    reg [NUM_INPUTS - 1 : 0] hold_delay;
    reg anyhold;
    reg [NUM_INPUTS - 1 : 0] grant_int, grant_prev;
    
    reg [NUM_INPUTS-1:0] deactivate;

    // Generate instantaneous grant logic combinationally
    integer i, j;
    always @(*) begin
        for (i = 0; i < NUM_INPUTS; i = i + 1) begin
            grant_int[i] = request[i] & ~deactivate[i];
        end
    end

    // Latch grant and hold logic
    always @(posedge clk) begin
        // This should not depend on request since request is only dependent on
        // data being valid but hold must act to hold the request for when it is
        // low. Hold is later gated by whether grant is high or not which
        // accounts for the case when the request is low to start and the
        // request has not been granted yet so as to not hold a no-grant
        hold_delay <= hold;
        if (rst_n == 1'b0) begin
            grant_prev <= 0;
        end else begin
            grant_prev <= grant;
        end
    end

    // Generate anyhold signal
    always @(*) begin
        anyhold = 1'b0;
        for (i = 0; i < NUM_INPUTS; i = i + 1) begin
            anyhold = anyhold | (hold_delay[i] & grant_prev[i]);
        end
    end

    // Generate grant logic
    always @(*) begin
        for (i = 0; i < NUM_INPUTS; i = i + 1) begin
            grant[i] = (hold_delay[i] & grant_prev[i]) ? grant_prev[i] : (grant_int[i] & ~anyhold);
        end
    end

    // Generate deactivate signals
    always @(*) begin
        for (i = 0; i < NUM_INPUTS; i = i + 1) begin
            deactivate[i] = 1'b0;
            for (j = 0; j < NUM_INPUTS; j = j + 1) begin
                deactivate[i] = deactivate[i] | (matrix[j*NUM_INPUTS+i] & request[j]);
            end
        end
    end

    // Matrix update logic
    always @(posedge clk) begin
        if (rst_n == 1'b0) begin
            for (i = 0; i < NUM_INPUTS; i = i + 1) begin
                for (j = i + 1; j < NUM_INPUTS; j = j + 1) begin
                    matrix[i*NUM_INPUTS+j] <= 1'b1;
                    matrix[j*NUM_INPUTS+i] <= 1'b0;
                end
            end
            for (i = 0; i < NUM_INPUTS; i = i + 1) begin
                matrix[i*NUM_INPUTS+i] <= 1'b0;
            end
        end else begin
            // Matrix can always be updated because grants are held with holds
            for (i = 1; i < NUM_INPUTS; i = i + 1) begin
                for (j = 0; j < i; j = j + 1) begin
                    matrix[i*NUM_INPUTS+j] <= (matrix[i*NUM_INPUTS+j] & ~grant[i]) | grant[j];
                    matrix[j*NUM_INPUTS+i] <= (matrix[j*NUM_INPUTS+i] & ~grant[j]) | grant[i];
                end
            end
        end
    end

endmodule