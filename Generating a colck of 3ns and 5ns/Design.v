`timescale 1ns/1ps
module test;
reg clk1;
  reg clk2;
initial begin
  
clk1 = 0;
      clk2 = 0;
      #50 $finish;
end
always #1.5 clk1 = ~clk1;
  always #2.5 clk2 = ~clk2;
  
  initial begin 
      $dumpfile("Dump.vcd");
      $dumpvars(0, clk1,clk2); 
  end
endmodule