module tb;
  reg clk, rst, data_in;
  wire data_out;

  shift_register uut (
    .clk(clk),
    .rst(rst),
    .data_in(data_in),
    .data_out(data_out)
  );

  
  always #5 clk = ~clk;

  initial begin
    clk = 0; rst = 0; data_in = 0;
    #10 rst = 1;

    
    #10 data_in = 1;
    #10 data_in = 0;
    #10 data_in = 1;
    #10 data_in = 1;
    #40 $finish;
  end

  initial begin
    $monitor("Time=%0t | data_in=%b | mem_out=%b", $time, data_in, data_out);
  end
endmodule
