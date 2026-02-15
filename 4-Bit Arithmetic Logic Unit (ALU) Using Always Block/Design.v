module ALU (A,B,Sel,ALU_Out);
  input [3:0] A;     
  input [3:0] B;
  input [2:0]Sel;
  output reg [3:0] ALU_Out;
  
  always @(A,B) begin
    if(Sel==3'b000)
    ALU_Out = A + B; 
    
    else if(Sel==3'b001)
    ALU_Out = A - B;
    
    else if(Sel==3'b010)
    ALU_Out = A & B; 
    
    else if(Sel==3'b011)
    ALU_Out = A | B;
    
    else if(Sel==3'b100)
     ALU_Out = A ^ B;
    
    else if(Sel==3'b101)
     ALU_Out = ~(A^B);
    
    else if(Sel==3'b110)
      ALU_Out = ~A;
    
    else if(Sel==3'b111)
      ALU_Out = A;               
    end
    endmodule
