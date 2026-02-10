TESTBECH

module jk_test;
  reg J,K,clk,rst;
  wire q;
  jk_latch dut(J,K,clk,rst,q);
  initial begin
    clk=0;
    rst=0;
    #7 rst=1;
        {J,K}=0;
    #10 {J,K}=1;
    #5  {J,K}=2;
    #7  {J,K}=3;
    #10 {J,K}=2;
    
    #2 rst=0;
    #10 rst=1;
    #2 {J,K}=3;
    #20 $finish;
  end
  always #4 clk=~clk;
  initial begin
    $monitor("simtime=%0d,J=%b,K=%b,clk=%b,rst=%b,q=%b",$time,J,K,clk,
             rst,q);
end
endmodule