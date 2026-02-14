
module ha_tb;
  reg a, b;
  wire s, c;
  
  ha dut (a,b,c,s,c);
  
  initial begin
    $display("A B | S C");
    $display("---------");

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


