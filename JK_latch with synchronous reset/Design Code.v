DESIGN 

module jk_latch(j,k,clk,rst,q);
  input j,k,clk,rst;
  output reg q;
  reg temp;
  always@(j,k,clk,rst)
    begin
      if(!clk)
        if (rst)
           temp = 0;  
        else if (j == 0 && k == 0)
            temp = temp;  
        else if (j == 0 && k == 1)
            temp= 0;  
        else if (j == 1 && k == 0)
            temp = 1; 
        else if (j == 1 && k == 1)
            temp = ~temp; 
      q=temp;
    end
endmodule