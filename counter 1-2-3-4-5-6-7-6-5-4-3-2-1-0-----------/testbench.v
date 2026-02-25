`timescale 1ns/1ps

module tb_counter;

  reg clk;
  reg rst;
  wire [2:0] count;

    counter uut (
    .clk(clk),
    .rst(rst),
    .count(count)
  );

  // Clock generation: 10ns period (100MHz)
  initial clk = 0;
  always #5 clk = ~clk;

  // Stimulus block
  initial begin
   $display("Time\t rst count");
   $monitor(" rst=%d,\t count=%d", rst, count);

    // Initialize reset
    rst = 0;
    #12 rst = 1;  // De-assert reset after 12ns

    // Let the counter run for a while
    #200;

    $finish;
  end

endmodule
