module mux2_1(i,s,y);
 input [1:0] i; input s; output y;
 assign y = s?i[1]:i[0];
endmodule
module dlatch_mux(d,q,clk);
 input d, clk; output q;
 wire q1;
 mux2_1 m1({d,q1},clk,q1);
 assign q = q1;
endmodule
module dff(d,q,clk);
 input d, clk; output q;
 wire q1,a1;
 mux2_1 m1({d,a1},clk,a1);
 mux2_1 m2({a1,q1},clk,q1);
 assign q= a1;
endmodule