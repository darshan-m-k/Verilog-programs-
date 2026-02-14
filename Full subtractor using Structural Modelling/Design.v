module full_subtractor (
    input A,B,Bin,
    output reg D,Bout,
    wire w1,w2,w3);

  HS h1(A,B,w1,w2);
  HS h2(w1,Bin,D,w3);
  assign Bout=w2|w3;
endmodule

