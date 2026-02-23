module Inter_delay(
  input signed [31:0] a, 
  output integer b);
  always @ (a) #3 b = a;
endmodule

//(OR) same output

module Inter_delay(input signed [31:0] a, output integer b);
  always @ (a) #3 b <= a;
endmodule

