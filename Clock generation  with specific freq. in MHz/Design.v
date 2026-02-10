DESIGN

// Generate the clock with specific freq. in MHz

`timescale 1ns/1ps

module test;

  reg clk;
  real freq = 100;       
  real time_period;      

  initial begin
    clk = 0;
    time_period = 1000/ freq; 
  end

  always begin
    #(time_period/2) clk = ~clk;
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, clk);
    #1000 $finish;
  end
endmodule
