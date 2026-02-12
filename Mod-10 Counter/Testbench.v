module mod10_counter_tb;

    reg clk,rst;
  wire [3:0]count;
  mod10_counter uut ( clk,rst,count);
    initial begin
        clk = 0;
        rst = 0;
      #10 rst = 1;
      #80;

        // Reset again mid-simulation
        #10 rst = 0;
        #15 rst = 1;
   	   #30 $finish;
    end
  always begin
    #5 clk= ~clk;
  end
   initial begin
        $monitor("Time = %0t | clk = %b, rst = %b, count = %d", $time, clk, rst, count);
    end
 initial begin
			$dumpfile("dump.vcd");
   $dumpvars(0,clk,rst,count);
		end

endmodule