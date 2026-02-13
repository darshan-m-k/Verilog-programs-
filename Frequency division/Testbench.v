//----------TB----------

module fd_test;
 reg rst, clk; 
 wire clk_out;
 
FD dut (clk,rst, clk_out) ; 
 
initial begin
 rst= 1;
 clk= 0;
 #12 rst= 0;
 #100 $stop;
end
 
always #5 clk= ~clk;
 
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,clk,rst,clk_out);
  end
endmodule

