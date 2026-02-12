module mod10_counter(clk,rst,count);
  input clk,rst;
  output reg[3:0]count;
  reg[3:0] temp;
  
  always@(posedge clk)begin
    
      if(!rst)
        temp=0;
    
      else if(temp<9)
        temp=temp+1;
    
      count=temp;
    end
endmodule
