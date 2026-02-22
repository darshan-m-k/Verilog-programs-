module clock_digi (clk,rst,hours,mins,secs);
 input clk,rst;
 output reg [3:0] hours;
 output reg [5:0] mins,secs;
 
 always@(posedge clk) begin
  if(rst)begin
   hours<= 0; mins <= 0; secs <= 0;
   end
    
  else begin
   secs <= secs +1;
   if (secs ==59) begin
    secs <= 0;
    mins <= mins+1;
    if ( mins ==59)begin
     mins <=0;
     hours <=hours+1;
     if(hours ==11)
      hours <=0;
    end
    end
   end
  end
  endmodule
