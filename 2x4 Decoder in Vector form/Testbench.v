TESTBENCH

module decoder2x4_tb;
  reg  [1:0] I;
  wire [3:0] D;
decoder2x4_dataflow dut (I,D);

  initial begin
         I = 2'b00; 
    #10; I = 2'b01; 
    #10; I = 2'b10; 
    #10; I = 2'b11; 
end

initial
  $monitor("Time=%0t,I=%b,D=%b", $time, I,D);
endmodule
