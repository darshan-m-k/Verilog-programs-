TESTBENCH

module gray_to_binary_tb;
  reg g2, g1, g0;
  wire b2, b1, b0;
  gray_to_binary dut ( g2, g1, g0, b2, b1, b0);

  initial begin
        g2=0; g1=0; g0=0; 
  #10;  g2=0; g1=0; g0=1; 
  #10;  g2=0; g1=1; g0=1; 
  #10;  g2=0; g1=1; g0=0; 
  #10;  g2=1; g1=1; g0=0; 
  #10;  g2=1; g1=1; g0=1; 
  #10;  g2=1; g1=0; g0=1; 
  #10;  g2=1; g1=0; g0=0;
  end
initial begin
  $monitor("Gray = %b%b%b |  Binary = %b%b%b",g2, g1, g0,b2, b1,b0);
  end
  initial begin 
     $dumpfile("dump.vcd");
     $dumpvars(0, g2, g1, g0, b2, b1, b0);
    end  
endmodule
