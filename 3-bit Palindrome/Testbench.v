TESTBENCH

module palindrome_TB;
  reg A, B, C;
  wire F;
  palindrome DUT(A,B,C,F);
  initial begin
        A = 1'b0; B = 1'b0; C = 1'b0; 
    #5; A = 1'b0; B = 1'b0; C = 1'b1;
    #5; A = 1'b0; B = 1'b1; C = 1'b0; 
    #5; A = 1'b0; B = 1'b1; C = 1'b1;
    #5; A = 1'b1; B = 1'b0; C = 1'b0;
    #5; A = 1'b1; B = 1'b0; C = 1'b1; 
    #5; A = 1'b1; B = 1'b1; C = 1'b0;
    #5; A = 1'b1; B = 1'b1; C = 1'b1;
  end
  initial begin 
   $monitor("simtime=%0t,A=%b,B=%b,C=%b,F=%b",$time,A,B,C,F);
  end
	initial begin 
     $dumpfile("dump.vcd");
     $dumpvars(0,A,B,C,F);
    end  
endmodule
