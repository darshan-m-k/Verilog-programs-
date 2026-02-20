`timescale 1ns/1ps

module tb_counter;

  reg clk;
  reg rst;
  wire [2:0] count;

  counter uut (clk,rst,count);

 
  initial clk = 0;
  always #5 clk = ~clk;

  
  initial begin
   $display("Time\t rst count");
   $monitor(" rst=%d,\t count=%d", rst, count);

    
    rst = 0;
    #12 rst = 1;  
    
    #200;

    $finish;
  end

endmodule