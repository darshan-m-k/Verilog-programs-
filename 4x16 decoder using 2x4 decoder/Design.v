module dec2x4_en (
  input [1:0] I,En,
  output [3:0] D);
  
  assign D[0] = En & ~I[1] & ~I[0];
  assign D[1] = En & ~I[1] &  I[0];
  assign D[2] = En &  I[1] & ~I[0];
  assign D[3] = En &  I[1] &  I[0];

endmodule
  
module dec4x16 (
  input [3:0] i,
  output [15:0]d);
  wire [3:0] w;  
  dec2x4_en d0 ( .I(i[3:2]),.En(1'b1),.D(w) );
  dec2x4_en d1 (.I(i[1:0]),.En(w[0]),.D(d[3:0]));
  dec2x4_en d2 (.I(i[1:0]),.En(w[1]),.D(d[7:4]) );
  dec2x4_en d3 (.I(i[1:0]),.En(w[2]),.D(d[11:8]) );
  dec2x4_en d4 (.I(i[1:0]),.En(w[3]),.D(d[15:12]));
endmodule
