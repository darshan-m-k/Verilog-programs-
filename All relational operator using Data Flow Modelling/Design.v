module relational_operators (
 input [3:0] A, B,
 output eq, neq, gt, lt, gte, lte);
 
 assign eq = (A == B); // Equal
 assign neq = (A != B); // Not equal
 assign gt = (A > B); // Greater than
 assign lt = (A < B); // Less than
 assign gte = (A >= B); // Greater than or equal
 assign lte = (A <= B); // Less than or equal
endmodule
