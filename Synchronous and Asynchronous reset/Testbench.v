module sync_async_reset_tb;
  reg clk,rst_n;
  wire [7:0] counter;

 sync_async_reset dut (clk,rst_n,counter);
   
  always #5 clk = ~clk;

  initial begin
    
    clk = 0;
    rst_n = 0; 
    $display("Time=%0t: Reset asserted", $time);
    
    #12 rst_n = 1; 
    $display("Time=%0t: Reset released", $time);

    #40 rst_n = 0;
    $display("Time=%0t: Reset asserted again", $time);

    #10 rst_n = 1; 
    $display("Time=%0t: Reset released again", $time);

    #50 $finish; 
  end

  
  initial begin
    $monitor("Time=%0t | clk=%b | rst_n=%b | counter=%0d", $time, clk, rst_n, counter);
  end
    endmodule

