module tb_down_counter_3bit_async;

    reg clk, rst;
    wire [2:0] count;

    down_counter_3bit_async DUT (
        .clk(clk),
        .rst(rst),
        .count(count)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 1;

        #12 rst = 0;   // release reset

        #200 $finish;
    end

endmodule