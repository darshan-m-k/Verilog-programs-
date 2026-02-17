`timescale 1ns/1ps

module tb_melay_seq_10110_ov;

    reg in_seq;
    reg clk;
    reg rst;
    wire det_out;

    // Instantiate DUT
    melay_seq_10110_ov DUT (
        .in_seq(in_seq),
        .clk(clk),
        .rst(rst),
        .det_out(det_out)
    );

    // Clock generation (10 ns period)
    always #5 clk = ~clk;

    initial begin
        // Initialize
        clk = 0;
        rst = 0;
        in_seq = 0;

        // Apply reset
        #10 rst = 1;

        // Apply input sequence:
        // Stream: 1 0 1 1 0 1 0 1 1 0
        // Pattern 10110 appears twice (overlapping)
        #10 in_seq = 1;
        #10 in_seq = 0;
        #10 in_seq = 1;
        #10 in_seq = 1;
        #10 in_seq = 0;   // <-- detect here

        #10 in_seq = 1;
        #10 in_seq = 0;
        #10 in_seq = 1;
        #10 in_seq = 1;
        #10 in_seq = 0;   // <-- detect here

        #20 $finish;
    end

    // Monitor values
    initial begin
        $monitor("Time=%0t | in_seq=%b | det_out=%b",
                  $time, in_seq, det_out);
    end

    // Dump waveform
    initial begin
        $dumpfile("melay_seq_10110_ov.vcd");
        $dumpvars(0, tb_melay_seq_10110_ov);
    end

endmodule
