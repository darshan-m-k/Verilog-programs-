DESIGN

//Gate level Modelling
module binary_to_gray (
    input  b2, b1, b0,
    output g2, g1, g0); 
    buf u1 (g2, b2);
    xor u2 (g1, b2, b1);
    xor u3 (g0, b1, b0);
endmodule

//Data flow Modelling
module binary_to_gray(
    input  b2, b1, b0,
    output g2, g1, g0);
   assign g2 = b2;
   assign g1 = (b2^b1);
   assign g0 = (b1^b0);
endmodule
