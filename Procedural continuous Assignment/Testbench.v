module dff_tb;
  reg din; reg rst; reg clk;  wire q;
  dff uut ( .din(din), .rst(rst), .clk(clk), 
.q(q) );
initial begin clk = 0;
    forever #5 clk = ~clk; 
  end
  initial begin
    din = 0; rst = 0;
    #3 rst = 1; #7 rst = 0;
    #10 din = 1;  #10 din = 0;
    #5 rst = 1;  #10 din = 1;
    #10 din = 0; #20 $finish;
  end
  initial begin
    $monitor("Time=%0t rst=%b 
din=%b q=%b", $time, rst, din, q);
  end
endmodule