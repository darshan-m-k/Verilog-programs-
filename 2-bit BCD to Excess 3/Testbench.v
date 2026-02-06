TESTBENCH

module BCD_to_excess3_tb;
  reg A, B;
  wire S2, S1, S0;
  BCD_to_excess3 dut (A,B,S2,S1,S0);

  initial begin
         A = 0; B = 0; 
   #5; A = 0; B = 1;
   #5; A = 1; B = 0; 
   #5; A = 1; B = 1; 
 end

  initial begin
    $monitor("simtime=%0t A=%b B=%b | S2=%b S1=%b S0=%b",$time, A, B, S2, S1, S0);
  end
initial begin 
     $dumpfile("dump.vcd");
     $dumpvars(0,A,B,S2,S1,S0);
    end  
endmodule
