TESTBENCH

module up_counter_3bit_tb;

    reg clk;
    reg rst;
    wire [2:0] count;

  up_counter_3bit dut (clk,rst,count);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

   
    initial begin
        rst = 1;          
   #5;  rst = 0;          

                   
   #90; $finish;
    end

    initial begin
        $monitor("Time=%0t | Reset=%b | Count=%b", $time,rst,count);
    end

    initial begin
        $dumpfile("counter.vcd");
        $dumpvars(0, tb_up_counter_3bit);
    end
endmodule
