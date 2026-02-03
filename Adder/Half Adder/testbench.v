// Code your testbench here
// or browse Examples
module ha_tb;

  // Testbench signals
  reg a, b;
  wire s, c;

  // Instantiate the half adder
  ha uut (
    .a(a),
    .b(b),
    .s(s),
    .c(c)
  );

  initial begin
    $display("A B | S C");
    $display("---------");

    // Test all input combinations
    a = 0; b = 0; #10;
    $display("%b %b | %b %b", a, b, s, c);

    a = 0; b = 1; #10;
    $display("%b %b | %b %b", a, b, s, c);

    a = 1; b = 0; #10;
    $display("%b %b | %b %b", a, b, s, c);

    a = 1; b = 1; #10;
    $display("%b %b | %b %b", a, b, s, c);

    $finish;
  end

endmodule
