TESTBENCH

`timescale 1ns / 1ps

module tb_jk_latch_sync_reset;
    reg clk, j, k, rst;
    wire q;
    jk_latch dut ( j,k,clk,rst,q );
    initial begin
        clk = 0;
        rst = 1;
      #5 rst = 0;
      #10{j,k}=2'b00;
      #10{j,k}=2'b01;
      #10{j,k}=2'b10;
    	#10{j,k}=2'b11;
   	   #200 $finish;
    end
  always begin
    #5 clk= ~clk;
  end
 initial begin
			$dumpfile("dump.vcd");
			$dumpvars(0,j,k,clk,rst,q);
		end
endmodule