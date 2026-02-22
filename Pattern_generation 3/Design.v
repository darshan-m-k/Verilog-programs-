module pattern1 #(parameter N = 5);
 integer i, j, spaces;
 initial begin
 for (i = 1; i <= N; i = i + 1) begin
 for (spaces = N; spaces > i; spaces = spaces - 1)
 $write(" ");
 for (j = i; j >= 1; j = j - 1)
 $write("%0d ", j);
 $display(" ");
 end
 #1 $finish;
 end
endmodule