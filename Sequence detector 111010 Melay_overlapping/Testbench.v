module  mealy_111010_ov_tb;
 reg clk, rst, in_seq;
 wire det_out;

mealy_111010_ov dut(in_seq, clk, rst, det_out);

always #5 clk = ~clk;

initial begin
 clk = 0;
 rst = 0;
 in_seq = 0;
 #10 rst = 1;

 
 #10 in_seq=1;
 #10 in_seq=1;
 #10 in_seq=1;
 #10 in_seq=0;
 #10 in_seq=1;
 #10 in_seq=0;

 #10 in_seq=1;
 #10 in_seq=1;
 #10 in_seq=1;
 #10 in_seq=0;
 #10 in_seq=1;
 #10 in_seq=0;

 #40 $finish;
end
 initial begin
 $monitor("Time=%0t | In=%b | Detected=%b",$time, in_seq, det_out);
end
 endmodule
