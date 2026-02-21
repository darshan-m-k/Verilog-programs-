module square_generator_tb;
 reg A, B;
 wire [3:0] D;
 square_generator
dut(.A(A), .B(B), .D(D));
 initial begin
 A = 0; B = 0;
 #5 A = 0; B = 1;
 #5 A = 1; B = 0;
 #5 A = 1; B = 1;
 #5 A = 1; B = 0;
 #5;
 end
 initial begin
 $monitor("Simtime=%0t, A=%b,
B=%b -> D=%b", $time, A, B, D);
 end
 initial begin
 $dumpfile("square_generator.vcd");
 $dumpvars(0, A, B, D);
 end
endmodule
