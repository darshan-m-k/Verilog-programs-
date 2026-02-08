TESTBENCH

module bit2_compa_test;
  reg [1:0]A;
  reg [1:0]B;
  wire G,L,E;
   bit2_compa dut (A,B,G,L,E);
  initial begin    
      	A=2'b00; B=2'b00;
    #10  A=2'b00; B=2'b01;
    #10  A=2'b00; B=2'b10;
    #10  A=2'b00; B=2'b11;
    
    #10  A=2'b01; B=2'b00;
    #10  A=2'b01; B=2'b01;
    #10  A=2'b01; B=2'b10;
    #10  A=2'b01; B=2'b11;
    
    #10  A=2'b10; B=2'b00;
    #10  A=2'b10; B=2'b01;
    #10  A=2'b10; B=2'b10;
    #10  A=2'b10; B=2'b11;
    
    #10  A=2'b11; B=2'b00;
    #10  A=2'b11; B=2'b01;
    #10  A=2'b11; B=2'b10;
    #10  A=2'b11; B=2'b11;
  end
  initial begin
    $monitor("simtime=%0t,A=%b,B=%b,G=%b,L=%b,E=%b", $time, A,B,G,L,E);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, A,B,G,L,E);
  end
endmodule
