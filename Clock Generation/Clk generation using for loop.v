module test;
 reg clk;
  integer i;
  initial begin
    clk = 0;
        for (i = 0; i < 20; i = i + 1) begin
      #5 clk = ~clk;
    end
  end
   initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(0,clk);
  end
endmodule