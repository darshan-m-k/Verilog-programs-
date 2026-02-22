module concatenation_operators (
 input [3:0] A,B,
 output [7:0] concat_result,replicate_result);
 
 assign concat_result = {A, B}; //Concatenation: A followed by B
 assign replicate_result ={2{A}}; // Replication: A repeated 2 times
endmodule
