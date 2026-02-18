module tb_111010;

reg clk, rst, in_seq;
wire det_out;


 moore_111010_ov DUT(in_seq, clk, rst, det_out);

always #5 clk = ~clk;

initial begin
 clk = 0;
 rst = 0;
 in_seq = 0;
 #10 rst = 1;

 // Input: 111010 -> detect
 //        111010 -> detect again

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

 #50 $finish;
end

initial begin
 $monitor("Time=%0t  In=%b  Detected=%b",
           $time, in_seq, det_out);
end

endmodule
