module test;
  reg clk;
  real time_period=8;
  initial begin
    clk=0;
    #1000 $finish;
  end
  always
    #((time_period)/2) clk=~clk;
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(0,clk);
  end
endmodule