module concatenation_operators_tb;
 reg [3:0] A, B;
 wire [7:0] concat_result,replicate_result;
 
 concatenation_operators dut(A,B,concat_result,replicate_result);
 
 initial begin
 A = 4'b1010; B = 4'b0101; #5;
 A = 4'b1100; B = 4'b0011; #5;
 A = 4'b1111; B = 4'b0000; #5;
 A = 4'b0001; B = 4'b1110; #5;
 end
 
 initial begin
 $monitor("Time=%0t A=%b B=%b |{A,B}=%b | {2{A}}=%b",$time, A, B, concat_result,replicate_result);
 end
 
 initial begin
  $dumpfile("concat_operators.vcd");
  $dumpvars(0, A, B, concat_result,replicate_result);
 end
  endmodule
