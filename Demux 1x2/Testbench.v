TESTBENCH

module demux_1x2_tb;
  reg A, S;
  wire Y0, Y1;
  demux_1x2 dut (S,A,Y1,Y0);

  initial begin
       S=0; A=0; 
  #5;  S=0; A=1; 
  #5;  S=1; A=0; 
  #5;  S=1; A=1; 
  end
initial begin
  $monitor("time=%0t S=%b A=%b | Y1=%b Y0=%b",
              $time, S,A,Y1,Y0);
  end
initial begin 
     $dumpfile("dump.vcd");
     $dumpvars(0,S,A,Y1,Y0);
    end  
endmodule
