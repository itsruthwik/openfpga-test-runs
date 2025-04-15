`include "standard_rtl_mvm.v"
`include "rtl_mvm.v"

module mvm_testbench();
  // Common Parameters
  localparam DATAW = 32;
  localparam BYTEW = 8;
  localparam IDW = 32;
  localparam DESTW_STD = 12;
  localparam DESTW_RTL = 6;
  localparam USERW_STD = 75;
  localparam USERW_RTL = 32;
  localparam IPRECISION = 8;
  localparam OPRECISION = 8;
  localparam CLK_PERIOD = 10;

  // Clock and reset
  reg clk;
  reg rst;

  // Signals for standard_rtl_mvm
  reg axis_rx_tvalid_std;
  reg [DATAW-1:0] axis_rx_tdata_std;
  reg [BYTEW-1:0] axis_rx_tstrb_std;
  reg [BYTEW-1:0] axis_rx_tkeep_std;
  reg [IDW-1:0] axis_rx_tid_std;
  reg [DESTW_STD-1:0] axis_rx_tdest_std;
  reg [USERW_STD-1:0] axis_rx_tuser_std;
  reg axis_rx_tlast_std;
  wire axis_rx_tready_std;
  wire axis_tx_tvalid_std;
  wire [DATAW-1:0] axis_tx_tdata_std;
  reg axis_tx_tready_std;

  // Signals for rtl_mvm
  reg axis_rx_tvalid_rtl;
  reg [DATAW-1:0] axis_rx_tdata_rtl;
  reg [BYTEW-1:0] axis_rx_tstrb_rtl;
  reg [BYTEW-1:0] axis_rx_tkeep_rtl;
  reg [IDW-1:0] axis_rx_tid_rtl;
  reg [DESTW_RTL-1:0] axis_rx_tdest_rtl;
  reg [USERW_RTL-1:0] axis_rx_tuser_rtl;
  reg axis_rx_tlast_rtl;
  wire axis_rx_tready_rtl;
  wire axis_tx_tvalid_rtl;
  wire [DATAW-1:0] axis_tx_tdata_rtl;
  reg axis_tx_tready_rtl;

  // Test Control
  integer test_case;
  integer error_count_std;
  integer error_count_rtl;
  integer mismatch_count;

  // Clock generation
  always #(CLK_PERIOD/2) clk = ~clk;

  // Instantiate standard_rtl_mvm
  standard_rtl_mvm #(
    .DATAW(DATAW),
    .BYTEW(BYTEW),
    .IDW(IDW),
    .DESTW(DESTW_STD),
    .USERW(USERW_STD),
    .IPRECISION(IPRECISION),
    .OPRECISION(OPRECISION)
  ) uut_std (
    .clk(clk),
    .rst(rst),
    .axis_rx_tvalid(axis_rx_tvalid_std),
    .axis_rx_tdata(axis_rx_tdata_std),
    .axis_rx_tstrb(axis_rx_tstrb_std),
    .axis_rx_tkeep(axis_rx_tkeep_std),
    .axis_rx_tid(axis_rx_tid_std),
    .axis_rx_tdest(axis_rx_tdest_std),
    .axis_rx_tuser(axis_rx_tuser_std),
    .axis_rx_tlast(axis_rx_tlast_std),
    .axis_rx_tready(axis_rx_tready_std),
    .axis_tx_tvalid(axis_tx_tvalid_std),
    .axis_tx_tdata(axis_tx_tdata_std),
    .axis_tx_tready(axis_tx_tready_std),
    // Tie off unused outputs
    .axis_tx_tstrb(),
    .axis_tx_tkeep(),
    .axis_tx_tid(),
    .axis_tx_tdest(),
    .axis_tx_tuser(),
    .axis_tx_tlast()
  );

  // Instantiate rtl_mvm
  rtl_mvm #(
    .DATAW(DATAW),
    .BYTEW(BYTEW),
    .IDW(IDW),
    .DESTW(DESTW_RTL),
    .USERW(USERW_RTL),
    .IPRECISION(IPRECISION),
    .OPRECISION(OPRECISION)
  ) uut_rtl (
    .clk(clk),
    .rst(rst),
    .axis_rx_tvalid(axis_rx_tvalid_rtl),
    .axis_rx_tdata(axis_rx_tdata_rtl),
    .axis_rx_tstrb(axis_rx_tstrb_rtl),
    .axis_rx_tkeep(axis_rx_tkeep_rtl),
    .axis_rx_tid(axis_rx_tid_rtl),
    .axis_rx_tdest(axis_rx_tdest_rtl),
    .axis_rx_tuser(axis_rx_tuser_rtl),
    .axis_rx_tlast(axis_rx_tlast_rtl),
    .axis_rx_tready(axis_rx_tready_rtl),
    .axis_tx_tvalid(axis_tx_tvalid_rtl),
    .axis_tx_tdata(axis_tx_tdata_rtl),
    .axis_tx_tready(axis_tx_tready_rtl),
    // Tie off unused outputs
    .axis_tx_tstrb(),
    .axis_tx_tkeep(),
    .axis_tx_tid(),
    .axis_tx_tdest(),
    .axis_tx_tuser(),
    .axis_tx_tlast()
  );

  // Test vectors
  typedef struct {
    logic [DATAW-1:0] weights;
    logic [DATAW-1:0] inputs;
    logic [DATAW-1:0] expected;
    string test_name;
  } test_vector_t;

  test_vector_t test_vectors[] = '{
    '{32'h03000000, 32'h05000000, 32'h0F000000, "Basic positive mult"},
    '{32'hFD000000, 32'h05000000, 32'hF1000000, "Positive x Negative"},
    '{32'hFDFDFDFD, 32'hFBFBFBFB, 32'h0F0F0F0F, "Negative x Negative"},
    '{32'h00000000, 32'h05000000, 32'h00000000, "Multiply by zero"},
    '{32'h7F7F7F7F, 32'h7F7F7F7F, 32'h01010101, "Max positive overflow"},
    '{32'h80808080, 32'h80808080, 32'h00000000, "Min negative overflow"},
    '{32'h01020304, 32'hFF010203, 32'hFF010406, "Multi-lane mixed values"},
    '{32'h03030303, 32'h05050505, 32'h0F0F0F0F, "All lanes same mult"}
  };

  // Main test sequence
  initial begin
    // Initialize signals
    clk = 0;
    rst = 1;
    axis_rx_tvalid_std = 0;
    axis_rx_tvalid_rtl = 0;
    axis_rx_tstrb_std = {BYTEW{1'b1}};
    axis_rx_tkeep_std = {BYTEW{1'b1}};
    axis_rx_tid_std = 0;
    axis_rx_tlast_std = 0;
    axis_rx_tstrb_rtl = {BYTEW{1'b1}};
    axis_rx_tkeep_rtl = {BYTEW{1'b1}};
    axis_rx_tid_rtl = 0;
    axis_rx_tlast_rtl = 0;
    axis_tx_tready_std = 1;
    axis_tx_tready_rtl = 1;
    error_count_std = 0;
    error_count_rtl = 0;
    mismatch_count = 0;
    
    // Reset sequence
    #(CLK_PERIOD*2) rst = 0;
    
    // Run test vectors
    foreach (test_vectors[i]) begin
      test_case = i+1;
      $display("\nRunning Test %0d: %s", test_case, test_vectors[i].test_name);
      
      // Load weights to both MVMs
      load_weights(test_vectors[i].weights);
      
      // Send input vector to both MVMs
      send_input(test_vectors[i].inputs);
      
      // Check and compare results
      check_outputs(test_vectors[i].expected);
    end
    
    // Test summary
    $display("\nTest Complete");
    $display("Standard MVM Errors: %0d", error_count_std);
    $display("RTL MVM Errors: %0d", error_count_rtl);
    $display("Mismatches between implementations: %0d", mismatch_count);
    $finish;
  end

  task load_weights(input [DATAW-1:0] weights);
    begin
      $display("Loading weights: %h", weights);
      
      // Standard MVM
      axis_rx_tuser_std = {2'b11, 73'h0};  // tuser_op=3
      axis_rx_tdata_std = weights;
      axis_rx_tvalid_std = 1;
      axis_rx_tdest_std = 0;
      
      // RTL MVM
      axis_rx_tuser_rtl = {2'b11, 30'h0};  // tuser_op=3
      axis_rx_tdata_rtl = weights;
      axis_rx_tvalid_rtl = 1;
      axis_rx_tdest_rtl = 0;
      
      @(posedge clk);
      while (!(axis_rx_tready_std && axis_rx_tready_rtl)) @(posedge clk);
      axis_rx_tvalid_std = 0;
      axis_rx_tvalid_rtl = 0;
      
      #(CLK_PERIOD*2);
    end
  endtask

  task send_input(input [DATAW-1:0] inputs);
    begin
      $display("Sending input: %h", inputs);
      
      // Standard MVM
      axis_rx_tuser_std = {2'b10, 73'h0};  // tuser_op=2
      axis_rx_tdata_std = inputs;
      axis_rx_tvalid_std = 1;
      axis_rx_tdest_std = 0;
      
      // RTL MVM
      axis_rx_tuser_rtl = {2'b10, 30'h0};  // tuser_op=2
      axis_rx_tdata_rtl = inputs;
      axis_rx_tvalid_rtl = 1;
      axis_rx_tdest_rtl = 0;
      
      @(posedge clk);
      while (!(axis_rx_tready_std && axis_rx_tready_rtl)) @(posedge clk);
      axis_rx_tvalid_std = 0;
      axis_rx_tvalid_rtl = 0;
      
      #(CLK_PERIOD*2);
    end
  endtask

  task check_outputs(input [DATAW-1:0] expected);
    integer timeout;
    reg [DATAW-1:0] result_std;
    reg [DATAW-1:0] result_rtl;
    begin
      timeout = 0;
      result_std = 0;
      result_rtl = 0;
      
      // Wait for both outputs with timeout
      while ((!axis_tx_tvalid_std || !axis_tx_tvalid_rtl) && timeout < 100) begin
        @(posedge clk);
        timeout = timeout + 1;
      end
      
      if (timeout >= 100) begin
        $display("Error: Timeout waiting for outputs");
        if (!axis_tx_tvalid_std) error_count_std++;
        if (!axis_tx_tvalid_rtl) error_count_rtl++;
      end
      else begin
        // Capture results
        result_std = axis_tx_tdata_std;
        result_rtl = axis_tx_tdata_rtl;
        
        $display("Standard MVM output: %h", result_std);
        $display("RTL MVM output:     %h", result_rtl);
        
        // Check Standard MVM
        if (result_std !== expected) begin
          $display("Error: Standard MVM mismatch in test case %0d", test_case);
          $display("  Expected: %h, Got: %h", expected, result_std);
          error_count_std++;
        end
        
        // Check RTL MVM
        if (result_rtl !== expected) begin
          $display("Error: RTL MVM mismatch in test case %0d", test_case);
          $display("  Expected: %h, Got: %h", expected, result_rtl);
          error_count_rtl++;
        end
        
        // Compare implementations
        if (result_std !== result_rtl) begin
          $display("Warning: Implementation mismatch in test case %0d", test_case);
          mismatch_count++;
        end
      end
      
      #(CLK_PERIOD*2);
    end
  endtask

endmodule