`timescale 1ns/1ps

module tb_dec4x16;

  reg [3:0] i;
  wire [15:0] d;

  dec4x16 dut (
    .i(i),
    .d(d)
  );

  integer k;

  initial begin
    $dumpfile("dec4x16_tb.vcd");
    $dumpvars(0, tb_dec4x16);

       for (k = 0; k < 16; k = k + 1) begin
      i = k;
      #10;
      $display("%0t\t%4b\t%016b", $time, i, d);
    end

    $finish;
  end

endmodule