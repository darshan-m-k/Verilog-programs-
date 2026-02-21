module relational_operators_tb;
 reg [3:0] A, B;
 wire eq, neq, gt, lt, gte, lte;
 relational_operators dut(A,B,eq, neq, gt, lt, gte, lte);
 
 initial begin
  A = 4'd5; B = 4'd5; #5;
  A = 4'd3; B = 4'd7; #5;
  A = 4'd9; B = 4'd2; #5;
  A = 4'd4; B = 4'd6; #5;
  A = 4'd8; B = 4'd8; #5;
  A = 4'd1; B = 4'd0; #5;
 end
 
 initial begin
  $monitor("Time=%0t A=%d, B=%d |Equal %b || Not equal %b || Greater than %b || Less than %b || Greater than or equal %b || Less than or equal %b",
           $time, A, B, eq, neq, gt, lt, gte,lte);
 end
 
 initial begin
  $dumpfile("relational_operators.vcd");
  $dumpvars(0, A, B, eq, neq, gt, lt, gte,lte);
 end
  endmodule

