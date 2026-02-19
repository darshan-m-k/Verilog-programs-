
module mealy_seq_101_ov_test;
  reg clk,rst;
  wire [2:0]count;
  mealy_seq_101_ov dut(rst,clk,count);
  initial begin
    clk=0;
    rst=0;
    #12 rst=1;
    #100$finish;
  end
  always #5 clk=~clk;
  initial begin
    $monitor("clk=%b,rst=%b,count=%b",clk,rst,count);
  end
  initial begin 
    $dumpfile("dump.vcd");
    $dumpvars(0,mealy_seq_101_ov_test);
  end
endmodule