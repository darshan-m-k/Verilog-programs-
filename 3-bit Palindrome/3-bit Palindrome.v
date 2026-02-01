DESIGN

//Gate level modelling

module palindrome(A,B,C,F);
  input A,B,C;
  output F;
  xnor x1(F,A,C);
endmodule

//Dataflow level modelling

module palindrome(A,B,C,F);
  input A,B,C;
  output F;
  assign F=~(A^C);
  //assign F=(A[2]==A[0])?1:0;///using ternary operator
endmodule


