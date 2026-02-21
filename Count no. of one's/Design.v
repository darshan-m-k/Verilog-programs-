module test;
  reg  [6:0] a;
  reg  [2:0] y;
  integer i;

  initial begin
    a = 7'b0011111;  // input value
    y = 0;           // initialize count

    for (i = 0; i < 7; i = i + 1) begin
      if (a[i] == 1'b1)
        y = y + 1;
    end

    $display("Input a = %b, Number of 1s = %0d", a, y);
  end
endmodule