module sipo_4bit(sin,clk,rst,pout);
  input sin,clk,rst;
  output reg [3:0]pout;
  reg [3:0]temp;
  
  assign pout=temp;
  always@(posedge clk or negedge rst)begin
    if(!rst)
      temp<=4'b0;
    else
      temp <= {sin,temp[3:1]};
    end
    endmodule
