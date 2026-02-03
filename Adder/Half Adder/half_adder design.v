module half_adder(
input a,b,
output s,c);
assign s= a^b; //sum
assign c= a&b; //carry 
endmodule 
