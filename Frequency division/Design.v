module FD#(parameter N= 4) (input clk, rst, output clk_out);
  
reg int_clk; 
integer count;
  
assign clk_out= int_clk;
  
always@(posedge clk or negedge clk) // always@(clk)
begin
  
  if(rst)begin
int_clk= 0;
count = 0;
end

else
count= count+1;
if(count%N==0)begin 
  int_clk= ~int_clk;
  count= 0;
  
end
end
endmodule


