DESIGN

//Gate level Modelling
module demux_1x2 (
  input  S,A,
  output Y1,Y0);
  wire w;
  not n1 (w, S);
  and a1 (Y0, A, w);
  and a2 (Y1, A, S);
endmodule


//Data flow Modelling
module demux_1x2 (
  input  S,A,
  output Y1,Y0);
  assign Y0 = A & (~S);
  assign Y1 = A & S;
endmodule



