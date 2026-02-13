//---------------- TESTBENCH ----------------
`timescale 1ns/1ps

module tb_clk_gen;

    reg rst;
    wire clk;

    // Instantiate DUT
    clk_gen dut (
        .rst(rst),
        .clk(clk)
    );

    // Reset sequence
    initial begin
        rst = 1;
        #10 rst = 0;   // release reset after 10ns
    end

    // Simulation control
    initial begin
        $dumpfile("clk_gen.vcd");
        $dumpvars(0, tb_clk_gen);
        #100 $finish;
    end

    // Monitor
    initial begin
        $monitor("Time=%0t | rst=%b | clk=%b", $time, rst, clk);
    end

endmodule
