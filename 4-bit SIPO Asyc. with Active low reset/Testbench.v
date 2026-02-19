
module sipo_4bit_test;
  reg sin,clk,rst;
  wire [3:0]pout;
  sipo_4bit dut(sin,clk,rst,pout);
  initial begin
    clk=0;
    rst=0;
    #12 rst =1;
    sin=1;
    #10 sin =0;
     #10 sin =1;
     #10 sin=0;
    #20 $finish;
      end
  always #5 clk=~clk;
  initial begin
    $monitor("time=%0t,sin=%b,clk=%b,rst=%b,pout=%b",$time,sin,clk,rst,pout);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,sin,clk,rst,pout);
  end
endmodule