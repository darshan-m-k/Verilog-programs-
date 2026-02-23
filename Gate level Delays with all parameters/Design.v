module delays (
 input x, y, 
 output o1, o2);
 
// AND gate has 1 time unit gate delay
 and #(1,2,3) a1 (o1, x, y);
// BUFIF0 gate has 2 time unit gate delay
 bufif0 #(1,2,3) b1 (o2, x, y);
endmodule
