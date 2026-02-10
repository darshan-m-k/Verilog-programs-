`timescale 1ns/1ps

module tb_t_ff_sync;
    reg clk,rst,t;
    wire q;

    t_ff_sync dut (clk,rst,t,q);

    // Clock generation: 10 ns period
    always #5 clk = ~clk;

    initial begin
        // Initialize signals
        clk = 0;
        rst = 1;
        t   = 0;

        // Apply synchronous reset
        #10 rst = 0;

        // Toggle enabled
        #10 t = 1;
        #40;

        // Hold state
        #10 t = 0;
        #20;

        // Apply reset again
        #10 rst = 1;
        #10 rst = 0;

        // Toggle again
        #10 t = 1;
        #30;

        $finish;
    end

    initial begin
        $monitor("Time=%0t | clk=%b rst=%b t=%b q=%b", $time, clk, rst, t, q);
    end
endmodule

