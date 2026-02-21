module
square_generator(A,B,D);
input A,B;
output [3:0]D;
wire w1;
 not n1(w1,B);
 buf b1(D[0],B);
 buf b2(D[1],0);
 and a1(D[3],A,B);
 and a2(D[2],A,w1);
endmodule
