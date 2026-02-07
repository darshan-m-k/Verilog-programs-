TESTBENCH

module evenodd_tb;
   reg [15:0]A;
  wire E,O;
  evenodd dut (A,E,O);
  initial begin    
      	A = 4'b0000; 
    #5; A = 4'b0001;
    #5; A = 4'b0010;  
    #5; A = 4'b0011; 
    #5; A = 4'b0100; 
    #5; A = 4'b0101;  
    #5; A = 4'b0110; 
    #5; A = 4'b0111; 

    #5; A = 4'b1000; 
    #5; A = 4'b1001;
    #5; A = 4'b1010;  
    #5; A = 4'b1011; 
    #5; A = 4'b1100; 
    #5; A = 4'b1101;  
    #5; A = 4'b1110; 
    #5; A = 4'b1111; 

  end
  initial begin
    $monitor("simtime=%0t,A=%b,E=%b,O=%b", $time, A, E, O);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, A,E,O);
  end
endmodule
