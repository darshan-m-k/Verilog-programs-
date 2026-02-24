module delay_tb; //(blocking)
  reg signed [31:0] a, b, c, d;
  initial begin
    #2 a = 0;
    #3 b = 1;
    #4 c = 2;
    #5 d = 3;
end
  initial begin
    $monitor("Simtime=%0t | a=%0d | b=%0d | c=%0d | d=%0d", $time, a, b,c,d);
  end 
endmodule

module delay_tb; //(Non- blocking)
  reg signed [31:0] a, b, c, d;
initial begin
    #2 a <= 0;
    #3 b <= 1;
    #4 c <= 2;
    #5 d <= 3;
end
  initial begin
    $monitor("Simtime=%0t | a=%0d | b=%0d | c=%0d | d=%0d", $time, a, b,c,d);
  end
    endmodule
