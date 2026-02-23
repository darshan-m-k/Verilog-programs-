module dec2_4( I, D, En);
input [1:0] I;
input En;
output [3:0] D;
assign D[3] = (~I[1])&(~I[0])&(En);
assign D[2] = (~I[1])&(I[0])&En;
assign D[1] = (I[1])&(~I[0])&En;
assign D[0] = (I[1])&(I[0])&En;
endmodule
module dec3_8(I,D);
input [2:0] I;
output [0:7] D;
wire [3:0] w;
dec2_4 d1( {1'b0, I [2]}, w, 1'b1);
dec2_4 d2( I[1:0], D[0:3], w[3]);
dec2_4 d3( I[1:0], D[4:7], w[2]);
endmodule
module dec4_16(I,D);
input [3:0] I;
output [0:15] D;
wire [3:0] w;
dec2_4 d1( I [3:2], w, 1'b1);
dec2_4 d2( I[1:0], D[0:3], w[3]);
dec2_4 d3( I[1:0], D[4:7], w[2]);
dec2_4 d4( I[1:0], D[8:11], w[1]);
dec2_4 d5( I[1:0], D[12:15], w[0]);
endmodule
