`timescale 1ns / 1ps
 
// Testbench top
module tb();
  
  
  reg a = 0;
  
  // Single statement
  initial a = 1;
  
  // Multiple statement
  initial begin
    
    a = 1;
    #10;
    a = 0;
    
  end
  
endmodule

// the reg a will still hold its value till the end of the simulation due to the reg data type
// this basically has memory that keeps the last value till the end of the simulation.
// Fundamentals:
// - that initial will be executed at the start of a simulation and then it will execute all
// the statements that you have mentioned inside it, and then it completes its execution
// - so when we say it completes its execution, the variable will still hold its last value till
// the end of the simulation
