module delays_tb;
 reg a, b;
 wire o1, o2;
 delays dut (a, b, o1, o2);
 
 initial begin
  a = 0; b = 0;
  $monitor ("T=%0t | a=%0b | b=%0b | out1=%0b | out2=%0b",$time, a, b, o1, o2);
  #10 a <= 1;
  #10 b <= 1;
  #10 a <= 0;
  #10 b <= 0;
 end
  endmodule

