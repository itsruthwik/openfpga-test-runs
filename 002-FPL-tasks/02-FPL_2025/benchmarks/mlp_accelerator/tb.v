`timescale 1ns/1ps

module mlp_controller_tb;
  
  reg clk;
  reg reset_n;
  reg [3:0] address;
  reg chipselect;
  reg read;
  reg write;
  reg [31:0] writedata;
  wire [9:0] led_out;
  wire [31:0] readdata;
  
  mlp_controller dut (
    .address(address),
    .chipselect(chipselect),
    .clk(clk),
    .read(read),
    .reset_n(reset_n),
    .write(write),
    .writedata(writedata),
    .led_out(led_out),
    .readdata(readdata)
  );

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  
  // write data
  task write_reg(input [3:0] addr, input [31:0] data);
    @(posedge clk);
    chipselect = 1;
    write = 1;
    address = addr;
    writedata = data;
    @(posedge clk);
    chipselect = 0;
    write = 0;
    #10; 
  endtask
  
  // raed
  task read_reg(input [3:0] addr, output [31:0] data);
    @(posedge clk);
    chipselect = 1;
    read = 1;
    address = addr;
    @(posedge clk);
    data = readdata;
    chipselect = 0;
    read = 0;
    #10; 
  endtask
  
  initial begin
    address = 0;
    chipselect = 0;
    read = 0;
    write = 0;
    writedata = 0;
    
    // reset
    reset_n = 0;
    repeat(5) @(posedge clk);
    reset_n = 1;
    repeat(5) @(posedge clk);
    
    $display("Application to run the mvm noc");
    
    $display("Sending mvm noc input data");
    write_reg(4'h1, 32'h01010101);  // Write to input reg 1
    write_reg(4'h2, 32'h01020102);  // Write to input reg 2
    write_reg(4'h3, 32'h03010301);  // Write to input reg 3
    write_reg(4'h4, 32'h01010104);  // Write to input reg 4
    
    // Read back data that was just written
    begin
      logic [31:0] data;
      read_reg(4'h1, data);
      $display("DATA READBACK FROM MVM_INPUT_REG_1 is 0x%h", data);
      
      read_reg(4'h2, data);
      $display("DATA READBACK FROM MVM_INPUT_REG_2 is 0x%h", data);
      
      read_reg(4'h3, data);
      $display("DATA READBACK FROM MVM_INPUT_REG_3 is 0x%h", data);
      
      read_reg(4'h4, data);
      $display("DATA READBACK FROM MVM_INPUT_REG_4 is 0x%h", data);
    end
    
    // Send input data bits 6:5=01 for data, bits 4:1=0010 for dest, bit 0=1 to trigger
    // Control reg: 0b01000011  - op=01, dest=2, send=1
    write_reg(4'h0, 32'h00000043);  
    
    // Wait for the send bit to auto-clear
    repeat(5) @(posedge clk);
    
    $display("Sending mvm noc instruction");
    // Write to instruction reg - 5 
    write_reg(4'h5, 32'h80C0200C);  
    
    // Read back instruction data that was written
    begin
      logic [31:0] data;
      read_reg(4'h5, data);
      $display("DATA READBACK FROM MVM_INSTR_REG_1 is 0x%h", data);
    end
    
    // Send instruction (bits 6:5=00 for instr, bits 4:1=0001 for dest, bit 0=1 to trigger)
    // Control reg: 0b00000011 (op=00, dest=1, send=1)
    write_reg(4'h0, 32'h00000003);  
    
    // Wait 
    repeat(200) @(posedge clk);  
    
    // Poll for output ready
    begin
      logic [31:0] status;
      logic ready = 0;
      
      while (!ready) begin
        read_reg(4'hA, status);  // Read status register
        ready = status[0];       // Check if output is ready
        
        if (!ready)
          repeat(10) @(posedge clk);  // Wait 10 cycles before polling again
      end
      
      $display("Output data ready!");
      
      // Read output registers
      logic [31:0] data;
      read_reg(4'h6, data);
      $display("DATA READBACK FROM MVM_OUTPUT_REG_1 is 0x%h", data);
      
      read_reg(4'h7, data);
      $display("DATA READBACK FROM MVM_OUTPUT_REG_2 is 0x%h", data);
      
      read_reg(4'h8, data);
      $display("DATA READBACK FROM MVM_OUTPUT_REG_3 is 0x%h", data);
      
      read_reg(4'h9, data);
      $display("DATA READBACK FROM MVM_OUTPUT_REG_4 is 0x%h", data);
    end
    
    // End simulation
    repeat(10) @(posedge clk);
    $finish;
  end
  
  // Optional: Monitor signals for debug
  initial begin
    $monitor("Time=%0t: control_reg=%h, output_ready=%b", 
              $time, dut.mvm_control_reg, dut.mvm_output_ready_reg);
  end
  
endmodule