DESIGN

module jk_latch(J,K,clk,rst,q);
  input J,K,clk,rst;
  output q;
  reg temp;
  assign q=temp;
  always@(J,K,clk,rst)
    begin
      if(!rst)
        temp<=0;
      else
        if(clk)
          if(J==0 &K==0)
            temp<=temp;
      else if(J==0 & K==1)
        temp<=0;
      else if(J==1 & K==0)
        temp<=1;
      else if(J==1 & K==1)
        temp<=~temp;
      else temp<=temp;
    end
endmodule
      