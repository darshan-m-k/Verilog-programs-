DESIGN

//Gate level Modelling
module xor_nand(A,B,Y);
  input A,B;
  output Y;
  wire w1,w2,w3;
  nand n1(w1,A,B);
  nand n2(w2,w1,A);
  nand n3(w3,w1,B);
  nand n4(Y,w2,w3);
endmodule 

//Dataflow Modelling
module xor_nand(A,B,Y);
  input A,B;
  output Y;
  wire w1,w2,w3;
  assign w1=~(A&B);
  assign w2=~(A&w1);
  assign w3=~(w1&B);
  assign Y=~(w2&w3);
endmodule


  


                
  