
// Code your design here
module mealy_seq_101_ov(rst,clk,count);
  input rst,clk;
  output reg [2:0]count;
  //declaration of variables
  reg [2:0] ps,ns;
  //state encoding
  parameter  s0=3'b00;
  parameter  s2=3'b010;
  parameter  s3=3'b011;
  parameter  s7=3'b111;
  //implementation state register
  always@(posedge clk)
    begin
      if(!rst)
        ps<=0;
      else
        ps<=ns;
    end
  //always block for NSD and OD
  always@(clk)
    begin
      case(ps)
        s0:ns=s2;
        s2:ns=s3;
        s3:ns=s7;
        s7:ns=s0;
      endcase
    end
  always@(*)begin
        
  count<=ps;
  end
endmodule