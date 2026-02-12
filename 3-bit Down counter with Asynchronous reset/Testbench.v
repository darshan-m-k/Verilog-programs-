module down_counter_3bit_async_tb;
    reg clk, rst;
    wire [2:0] count;

    down_counter_3bit_async dut (clk,rst,count);
       
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;

        #12 rst = 0;  

        #80 $finish;
    end
    
  initial begin
        $monitor("Time=%0t | Reset=%b | Count=%b", $time,rst,count);
    end

    initial begin
        $dumpfile("counter.vcd");
        $dumpvars(0,clk,rst,count);
    end
endmodule

