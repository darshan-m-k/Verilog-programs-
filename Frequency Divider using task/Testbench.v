module FD_task_tb;
  wire clk_out;
  reg clk, rst;
  FD dut(clk, rst, clk_out);
  initial begin
    clk = 0;
    rst= 1;
    #13 rst = 0;
    #200 $finish;
  end
    always #5 clk =~clk;
  
  initial begin
 $dumpfile("dump.vcd");
 $dumpvars(1,clk, rst, clk_out);
 end
    endmodule
