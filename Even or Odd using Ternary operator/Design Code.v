DESIGN

module evenodd(A,E,O);
  input[15:0]A;
  output E,O;
  assign O=(A[0]==1)?1:0;
  assign E=(A[0]==0)?1:0;
endmodule
