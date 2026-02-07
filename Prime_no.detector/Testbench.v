TESTBENCH

module prime_det_tb;
  reg A, B, C;
  wire F;
  prime_det DUT( .A(A),.B(B),.C(C),.F(F)  );
  initial begin
        A = 1'b0; B = 1'b0; C = 1'b0; 
    #10;    A = 1'b0; B = 1'b0; C = 1'b1;
    #10;    A = 1'b0; B = 1'b1; C = 1'b0; 
    #10; 	A = 1'b0; B = 1'b1; C = 1'b1;
    #10;    A = 1'b1; B = 1'b0; C = 1'b0;
    #10;    A = 1'b1; B = 1'b0; C = 1'b1; 
    #10;    A = 1'b1; B = 1'b1; C = 1'b0;
    #10;    A = 1'b1; B = 1'b1; C = 1'b1;
  end
  initial begin 
   $monitor("simtime=%0t,A=%b,B=%b,C=%b,F=%b",$time,A,B,C,F);
  end
	initial begin 
     $dumpfile("dump.vcd");
     $dumpvars(0,A,B,C,F);
    end  
endmodule

