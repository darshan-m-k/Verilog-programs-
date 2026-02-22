module logical_operators_4bit_tb;
 reg [3:0] A, B;
 wire and_op, or_op, not_op;
 
 logical_operators_4bit dut(A,B,and_op, or_op, not_op);
 
 initial begin
 //scenarios including x and z
 A = 4'b0000; B = 4'b0000; #5;
 A = 4'b0000; B = 4'b0001; #5;
 A = 4'b0010; B = 4'b0000; #5;
 A = 4'b1111; B = 4'b1111; #5;
 A = 4'bxxxx; B = 4'b0001; #5;
 A = 4'b0000; B = 4'bxxxx; #5;
 A = 4'bx11x; B = 4'bxxxx; #5;
 A = 4'bzzzz; B = 4'b0001; #5;
 A = 4'b0001; B = 4'bzzzz; #5;
 A = 4'bzzzz; B = 4'bzzzz; #5;
 A = 4'bzzzz; B = 4'bxxxx; #5;
 A = 4'bx0xx; B = 4'bz01z; #5;
 end
 
 initial begin
 $monitor("Time=%0t A=%b B=%b |A&&B=%b A||B=%b !A=%b", $time, A, B,and_op, or_op, not_op);
 end
 
 initial begin
  $dumpfile("logical_operators_4bit.vcd");
  $dumpvars(0, A, B, and_op, or_op,not_op);
  endmodule

