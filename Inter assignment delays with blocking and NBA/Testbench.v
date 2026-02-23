module delay_tb;
reg signed [31:0] a;
wire integer b;
delay d1(a, b);
initial begin a = 10;
 $monitor("Simtime=%t,
a=%d, b=%d", $time, a, b);
 #4 a = 15; en