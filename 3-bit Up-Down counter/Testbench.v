module updown_counter_tb;

  reg clk, rst, ctrl;
  wire [2:0] count;

  updown dut (clk,rst,ctrl,count);
  
  always #5 clk = ~clk;


  initial begin
    // Initialize signals
    clk = 0;
    rst = 1;
    ctrl = 0;

    // Apply reset
    #10 rst = 0;

    // Count down for 4 cycles
    #20 ctrl = 0;

    // Count up for 4 cycles
    #40 ctrl = 1;

    // Count down again
    #30 ctrl = 0;

    // Final count up
    #30 ctrl = 1;

    #50 $finish;
  end

  // Monitor output on console
  initial begin
    $monitor("Time=%0t | clk=%b | rst=%b  | ctrl=%b | count=%b", $time, clk, rst, ctrl, count);
  end

  initial begin
    $dumpfile("updown_dump.vcd");
    $dumpvars(0, clk,rst,ctrl,count);
  end
endmodule

