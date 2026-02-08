module test;
reg clk;
initial begin
  clk = 0;
  forever #5 clk = ~clk;  
end
 initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(0,clk);
  end
endmodule