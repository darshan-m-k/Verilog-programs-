module logical_operators_4bit (
 input [3:0] A, B,
 output and_op, or_op, not_op);
 
 assign and_op = A && B; // True if both A and B are non-zero
 assign or_op = A || B; // True if either A or B is non-zero
 assign not_op = !A; // True if A is zero
endmodule
