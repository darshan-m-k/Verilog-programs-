TESTBENCH

module xor_nand_tb;
   reg A,B;
   wire Y;
  xor_nand dut(A,B,Y);
  initial begin 
	     A = 1'b0; B = 1'b0; 
    #10; A = 1'b0; B = 1'b1;
    #10; A = 1'b1; B = 1'b0; 
    #10; A = 1'b1; B = 1'b1;
  end
  initial begin
    $monitor("time=%0t,A=%b,B=%b,Y=%b",$time,A,B,Y);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,A,B,Y);
  end
endmodule
    
