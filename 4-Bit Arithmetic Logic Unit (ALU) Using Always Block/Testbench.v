module ALU_tb;
    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] Sel;
    wire [3:0] ALU_Out;
    
    ALU uut (.A(A),.B(B),.Sel(Sel),.ALU_Out(ALU_Out));

    initial begin

        A = 4'b0011; B = 4'b0001; Sel = 3'b000;  
   #10  A = 4'b0100; B = 4'b0010; Sel = 3'b001;  
   #10  A = 4'b1100; B = 4'b1010; Sel = 3'b010; 
   #10  A = 4'b1100; B = 4'b1010; Sel = 3'b011;  
   #10  A = 4'b1100; B = 4'b1010; Sel = 3'b100; 
   #10  A = 4'b1100; B = 4'b1010; Sel = 3'b101;  
   #10  A = 4'b0011; B = 4'b0000; Sel = 3'b110;  
   #10  A = 4'b1000; B = 4'b0000; Sel = 3'b111;  
   #10  A = 4'b0101; B = 4'b0101; Sel = 3'b001; 
$finish;
    end
  initial begin 
    $monitor("simtime=%0t,A=%b,B=%b,Sel=%b,ALU_Out=%b",$time,A,B,Sel,ALU_Out);
  end
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0,A,B,Sel,ALU_Out);
end
endmodule