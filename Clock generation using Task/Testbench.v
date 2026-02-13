`timescale 1ns/1ps

module clk_gen_tb;
    reg rst;
    wire clk;

    clk_gen dut (rst,clk);
    
    // Reset sequence
    initial begin
        rst = 1;
        #10 rst = 0;   // release reset after 10ns
    end

    initial begin
        $monitor("Time=%0t | rst=%b | clk=%b", $time, rst, clk);
    end
    
     initial begin
        $dumpfile("clk_gen.vcd");
        $dumpvars(0,rst,clk);
         
        #100 $finish;
    end
endmodule

