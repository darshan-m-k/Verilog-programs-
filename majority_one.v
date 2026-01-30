*************************************DESIGN CODE*****************************

// Dataflow Modelling

module majority_1(A,B,C,F);
  input A,B,C;
  output F;
  assign F = (A&B)|(A&C)|(B&C);
endmodule

//Gatelevel Modelling

module majority_1(A,B,C,F);
  input A,B,C;
  output F;
  wire w1,w2,w3;
  and a1(w1,B,C);
  and a2(w2,A,C);
  and a3(w3,A,B);
  or o1(F,w1,w2,w3);
endmodule

/////////////////////////////////////////////////////////////////

