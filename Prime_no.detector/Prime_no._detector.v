DESIGN

//Gate level modelling
module prime_det(A,B,C,F);
  input A,B,C;
  output F;
  wire w1,w2,w3;
  not n1(w3,A);
  and A1(w1,w3,B);
  and A2(w2,A,C);
  or O1(F,w1,w2);
  endmodule /*
         
//Dataflow modelling
module prime_det(A,B,C,F);
  input A,B,C;
  output F;
  wire w1,w2,w3;
  assign F =  ((~A)&B)|(A&C);
  endmodule 