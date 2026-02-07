DESIGN

module multiply_8(n,Y);
input[3:0]n;
output[6:0]Y;
assign Y=n<<3;
endmodule