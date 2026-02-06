DESIGN Code

//Gate level Modelling
module BCD_to_excess3(
  input A,B,
  output S2,S1,S0);
  wire w1;
  not  n1 (S0, B);
  xor  x1 (w1, A, B);
  not  n2 (S1, w1);   // XNOR
  or   o1 (S2, A, B);
endmodule

//Data flow Modelling
module BCD_to_excess3(
   input A,B,
  output S2,S1,S0);
  assign S0 = ~B;          
  assign S1 = A ~^ B;     
  assign S2 = A | B;  
endmodule