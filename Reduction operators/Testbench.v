module reduction_operators_tb;
 reg [3:0] A;
 wire and_red, or_red, xor_red,nand_red, nor_red, xnor_red;
 reduction_operators dut(A,and_red, or_red, xor_red,nand_red, nor_red, xnor_red);
 
 initial begin
 A = 4'b0000; #5;
 A = 4'b0001; #5;
 A = 4'b0011; #5;
 A = 4'b0101; #5;
 A = 4'b1111; #5;
 A = 4'b1010; #5;
 A = 4'b010x; #5;
 A = 4'b11z1; #5;
 A = 4'b1xz0; #5;
 A = 4'b0xz0; #5;
 end
 
 initial begin
  $monitor("Time=%0t A=%b | &=%b|=%b ^=%b ~&=%b ~|=%b ~^=%b",$time, A, and_red, or_red,xor_red, nand_red, nor_red, xnor_red);
 end
 
 initial begin
  $dumpfile("reduction_operators.vcd");
  $dumpvars(0, A, and_red, or_red,xor_red, nand_red, nor_red, xnor_red);
 end
  endmodule
