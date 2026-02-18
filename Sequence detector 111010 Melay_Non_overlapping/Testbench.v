module mealy_111010_nonov_tb;
 reg clk, rst, in_seq;
 wire det_out;

melay_seq_10110_nonov dut (in_seq, clk, rst, det_out);

 always #5 clk = ~clk;

 initial begin
   $monitor("TIME=%0t | in_seq=%b | det_out=%b", $time, in_seq, det_out);
 end

 initial begin
   clk = 0;
   rst = 0;
   in_seq = 0;

   #10 rst = 1;
   $display("---- Applying Input Sequence 10110 ----");

   // Input : 10110 10110
   in_seq=1; #10;
   in_seq=0; #10;
   in_seq=1; #10;
   in_seq=1; #10;
   in_seq=0; #10;

   in_seq=1; #10;
   in_seq=0; #10;
   in_seq=1; #10;
   in_seq=1; #10;
   in_seq=0; #10;

   #20;
   $display("---- Simulation Finished ----");
   $finish;
 end
  endmodule

