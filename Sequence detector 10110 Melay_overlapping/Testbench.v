`timescale 1ns/1ps

module melay_seq_10110_ov_tb;
    reg in_seq,clk,rst;
    wire det_out;
    
    melay_seq_10110_ov dut (in_seq,clk,rst,det_out);

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 0;
        in_seq = 0;

        // Apply reset
        #10 rst = 1;
        
        #10 in_seq = 1;
        #10 in_seq = 0;
        #10 in_seq = 1;
        #10 in_seq = 1;
        #10 in_seq = 0;   

        #10 in_seq = 1;
        #10 in_seq = 0;
        #10 in_seq = 1;
        #10 in_seq = 1;
        #10 in_seq = 0;   

        #20 $finish;
    end

    initial begin
        $monitor("Time=%0t | in_seq=%b | det_out=%b",$time, in_seq, det_out);
    end
    
    initial begin
        $dumpfile("melay_seq_10110_ov.vcd");
        $dumpvars(0, in_seq,clk,rst,det_out);
    end
        endmodule


