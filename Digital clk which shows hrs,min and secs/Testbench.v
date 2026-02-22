module clock_test;
 reg clk,rst;
 wire [3:0] hours;
 wire [5:0] mins,secs;
 clock_digi
dut(clk,rst,hours,mins,secs);
 initial begin
 clk= 0;
 rst= 1;
 #13 rst= 0;
 #100000 $finish;
 end
 always #5 clk=~clk;
endmodule
