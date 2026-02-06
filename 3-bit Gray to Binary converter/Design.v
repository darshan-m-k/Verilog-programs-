DESIGN

// Gate level Modelling
module gray_to_binary(
    input  g2, g1, g0,
    output b2, b1, b0);
    buf  u1 (b2, g2);
    xor  u2 (b1, b2, g1);
    xor  u3 (b0, b1, g0);
endmodule


//Data flow Modelling
module gray_to_binary(
    input  g2, g1, g0,
    output b2, b1, b0);
    assign b2 = g2;
    assign b1 = (b2^g1);
    assign b0 = (b1^g0);
endmodule

