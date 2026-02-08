module test;
  reg clk;
  initial begin
  clk = 0;
    #100 $finish;
end
  always #5 clk = ~clk;
   initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(0,clk);
  end
endmodule