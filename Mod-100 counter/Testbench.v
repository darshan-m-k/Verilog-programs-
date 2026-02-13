module mod100_counter_tb;
  reg clk,rst;
  wire [6:0]count;
	
  mod100_counter dut ( clk,rst,count);
    initial begin
        clk = 0;
        rst = 0;
      #10 rst = 1;
      #200;

        // Reset again mid-simulation
        #10 rst = 0;
        #10 rst = 1;
   	   #1000 $finish;
    end
	
  always begin
    #5 clk= ~clk;
  end
	
   initial begin
	   $monitor("Time = %0t | clk = %b | rst = %b | count = %d", $time, clk, rst, count);
    end
	
 initial begin
			$dumpfile("dump.vcd");
            $dumpvars(1,clk,rst,count);
		end
endmodule
