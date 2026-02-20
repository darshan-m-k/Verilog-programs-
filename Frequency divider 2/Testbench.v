module fd_tb;
  wire clk_out;
  reg clk, rst;

 
  fd dut(clk, rst, clk_out);
  
  always #5 clk = ~clk;
  
  initial begin
    clk = 0;
    rst = 1;
    $display("Time=%0t: Reset asserted", $time);
    #13 rst = 0;
    $display("Time=%0t: Reset deasserted", $time);
    #200 $finish;
  end

  initial begin
    $monitor("Time=%0t: clk=%b | rst=%b | clk_out=%b", $time, clk, rst, clk_out);
  end

  
  initial begin
    $dumpfile("fd_wave.vcd");
    $dumpvars(0, clk, rst, clk_out);
  end
    endmodule

