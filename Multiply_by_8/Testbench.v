TESTBENCH

module multiply_8_tb;
    reg  [3:0] n;
    wire [6:0] Y;

   multiply_8 dut (n,Y);
	
	initial begin
	
            n = 4'd0;  
        #10 n = 4'd1;  
        #10 n = 4'd2;  
        #10 n = 4'd3;  
        #10 n = 4'd4;  
        #10 n = 4'd7;  
        #10 n = 4'd10; 
        #10 n = 4'd12; 
        #10 n = 4'd15; 
		end
  initial begin
       $monitor("simtime=%0t,n=%b,Y=%b", $time, n,Y);
    end
  initial begin
$dumpfile("dump.vcd");
$dumpvars(0,n,Y);
end
endmodule
