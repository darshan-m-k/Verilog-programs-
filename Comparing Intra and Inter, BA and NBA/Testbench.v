//Design code for Intra

module delay_tb; //(Non- blocking)
  reg signed [31:0] a, b, c, d;
initial begin
     a <= #2 0;
     b <= #3 1;
     c <= #4 2;
     d <= #5 3;
end
  initial begin
    $monitor("Simtime=%0t, a=%0d, 
b=%0d,c=%0d, d=%0d", $time, a, b,c,d);
end endmodule
module delay_tb;
  reg signed [31:0] a, b, c, d;
initial begin
     a = #2 0;
   b = #3 1;
     c = #4 2;
     d = #5 3;
end
  initial begin
    $monitor("Simtime=%0t, a=%0d, 
b=%0d,c=%0d, d=%0d", $time, a, b,c,d);

end endmodule
