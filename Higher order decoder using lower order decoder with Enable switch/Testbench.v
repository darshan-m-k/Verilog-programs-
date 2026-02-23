module dec4_16_tb;
  wire [0:15]D;
  reg [3:0] I;
  reg [31:0] i;
  
  dec4_16 Dut(I,D);
  initial begin
    for( i = 0 ; i<16; i=i+1)
      begin
      I = i;
   #5 I = i;
      end
      end
    
  initial begin
$monitor("I = %b, D= %b", I, D);
  end
    endmodule
  
module dec3_8_tb;
  wire [0:7]D;
  reg [2:0] I;
  dec3_8 dut(I,D);
  initial begin
    I = 3'b000;
#5 I = 3'b001;
#5 I = 3'b010;
#5 I = 3'b011;
#5 I = 3'b100;
#5 I = 3'b101;
#5 I = 3'b110;
#5 I = 3'b111;
end
    initial begin
$monitor("I = %b, D= %b", I, D);
end
      endmodule
