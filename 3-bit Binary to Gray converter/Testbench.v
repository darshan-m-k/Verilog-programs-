TESTBENCH

module binary_to_gray_tb;
  reg b2, b1, b0;
  wire g2, g1, g0;
    binary_to_gray dut (b2, b1, b0,g2, g1, g0);
initial begin
            b2=0; b1=0; b0=0; 
    #10;    b2=0; b1=0; b0=1; 
    #10;    b2=0; b1=1; b0=0; 
    #10;    b2=0; b1=1; b0=1; 
    #10;    b2=1; b1=0; b0=0; 
    #10;    b2=1; b1=0; b0=1; 
    #10;    b2=1; b1=1; b0=0; 
    #10;    b2=1; b1=1; b0=1; 
    end
initial begin
  $monitor("Binary = %b%b%b | Gray = %b%b%b",b2, b1, b0,g2,g1,g0);
    end
  initial begin 
     $dumpfile("dump.vcd");
     $dumpvars(0, b2, b1, b0,g2, g1, g0);
    end  
endmodule
