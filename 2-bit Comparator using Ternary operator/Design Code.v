DESIGN

module bit_compa(A,B,G,L,E);
  input[1:0]A;
  input[1:0]B;
  output G,L,E;
  assign G=(A>B)?1:0;
  assign L=(A<B)?1:0;
  assign E=(A==B)?1:0;
endmodule