`timescale 1ns / 1ps // Time unit

module tb();
  
  //Global signals clk, rst
  reg clk;
  reg rst;
  
  // Data or control
  reg [3:0] temp; //4-bit variable
  
  // 1. Initialize global variables
  initial begin
    clk = 1'b0; // generating a single-bit value, the value is zero, in binary format
    rst = 1'b0;
  end
  
  // 2. Initialize random signal for data/control
  initial begin
    rst = 1'b1;
    #30;
    rst = 1'b0;
  end
  
  initial begin
    temp = 4'b0100; 
    #10; // 10 * 1ns
    temp = 4'b1100;
    #10; 
    temp = 4'b0011;
    #10;
  end
  
  // 3. System task at the start of simulation
  initial begin
    // Allow us to analyze the waveform viewer
    $dumpfile("dump.vcd");
    $dumpvars;
  end

  // 4. Analyze variable values on a console  
  initial begin
    $monitor("Temp : %0d at time : %0t", temp, $time);
  end
  
  // 5. Stop simulation by forcefully calling $finish
  initial begin
    #200;// Finish simulation after 200ns
    $finish(); 
  end
endmodule
