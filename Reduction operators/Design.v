module reduction_operators (
 input [3:0] A,
 output and_red, or_red, xor_red,nand_red, nor_red, xnor_red);
 
 assign and_red = &A;
 assign or_red = |A;
 assign xor_red = ^A;
 assign nand_red = ~&A;
 assign nor_red = ~|A;
 assign xnor_red = ~^A;
endmodule

