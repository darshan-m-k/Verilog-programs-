module dlatch_tb;
 reg d,clk,q1;
 wire q;

 dlatch_mux dut(d,q,clk);
 initial begin
 {clk,d,q1} = 3'b000; #5
 {clk,d,q1} = 3'b001; #5
 {clk,d,q1} = 3'b010; #5
 {clk,d,q1} = 3'b011; #5
 {clk,d,q1} = 3'b100; #5
 {clk,d,q1} = 3'b101; #5
 {clk,d,q1} = 3'b000; #5
 {clk,d,q1} = 3'b001; #5
 {clk,d,q1} = 3'b110; #5
 {clk,d,q1} = 3'b111; #5
 {clk,d,q1} = 3'b000; #5
 {clk,d,q1} = 3'b001; #5;
 end

 initial begin
 $monitor("sim time: %t, d =%b,clk=%b, q1 = %b, q = %b",$time,d,clk,q1, q);
 end
  endmodule

