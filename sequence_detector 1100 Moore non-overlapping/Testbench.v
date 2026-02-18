module seq_1100_moore_nov_test;
	reg in_seq,clk,rst;
	wire det_out;

moore_seq_1100_nov dut(in_seq,clk,rst,det_out);
	
	initial begin
		clk= 0;
		rst= 0;
	#12 rst= 1;
	in_seq= 1;
	#10 in_seq= 1;
	#10 in_seq= 0;
	#10 in_seq= 0;
	#10 in_seq= 1;
    #10 in_seq= 1;
	#10 in_seq= 0;
	#10 in_seq= 0;
	#10 in_seq= 1;
	#20 $finish;
	end

	always #5 clk= ~clk;
	
  initial begin
	  $monitor("time=%0t | in_seq=%b | clk=%b | rst=%b | det_out=%b",$time,in_seq,clk,rst,det_out);
  end
	
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,in_seq,clk,rst,det_out);
  end
endmodule

