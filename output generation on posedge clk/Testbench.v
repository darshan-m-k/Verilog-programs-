`timescale 1ns / 1ps
module output_gen_posedge clk_tb;
  reg clk,d;
  wire q;
  
output_gen_posedge clk  dut (clk,d,q);
  
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  
    initial begin
       d = 0;
    #12 d = 1;
    #10 d = 0;
    #10 d = 1;
    #10 d = 0;
    #10 d = 1;
    #10 d = 1;
    #10 d = 0;
    #10 d = 1;
    #20 $finish;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,clk,d,q);
  end
  
  initial begin
    $monitor("Time=%0t | clk=%b | d=%b | q=%b", $time, clk, d, q);
  end
    endmodule
