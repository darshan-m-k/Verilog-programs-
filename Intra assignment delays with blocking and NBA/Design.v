module delay(input signed [31:0] a, output integer b);
always @ (a)
 b <= #3 a;
endmodule
module delay(input signed [31:0] a, output integer b);
always @ (a)
 b = #3 a;
endmodule