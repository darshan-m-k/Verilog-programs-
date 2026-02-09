`timescale 1ns/1ps

module tb_t_ff_async;

    reg clk;
    reg rst_n;
    reg t;
    wire q;

    // DUT
    t_ff_async dut (
        .clk(clk),
        .rst_n(rst_n),
        .t(t),
        .q(q)
    );

    // Clock generation: 10 ns period
    always #5 clk = ~clk;

    initial begin
        // Initialize signals
        clk   = 0;
        rst_n = 0;   // active-low reset
        t     = 0;

        // Release reset asynchronously
        #7 rst_n = 1;

        // Toggle enabled
        #13 t = 1;
        #40;

        // Hold state
        #10 t = 0;
        #20;

        // Assert async reset in middle of clock
        #7 rst_n = 0;
        #10 rst_n = 1;

        // Toggle again
        #10 t = 1;
        #30;

        $finish;
    end

    // Monitor
    initial begin
        $monitor("Time=%0t | clk=%b rst_n=%b t=%b q=%b", 
                  $time, clk, rst_n, t, q);
    end

endmodule
