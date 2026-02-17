module melay_seq_101_ov(in_seq,clk,rst,det_out);
 input in_seq,clk,rst;
 output reg det_out;
 reg [1:0] ps,ns;
 
 parameter idle=2'b00;
 parameter s1=2'b01;
 parameter s10=2'b10;
 
 always@(posedge clk)begin
  if(!rst)
   ps<=idle;
  else
  ps<=ns;
 end
  
 always@(in_seq,ps)begin
  case(ps)
   idle:if(in_seq)begin
    ns=s1;
    det_out=0;
   end
    
   else begin
    ns=idle;
    det_out=0;
   end

   s1:if(in_seq)begin
    ns=s1;
    det_out=0;
   end
    else begin
     ns=s10;
     det_out=0;
    end

   s10:if(in_seq)begin
    ns=s1;
    det_out=1;
   end
    else begin
     ns=idle;
     det_out=0;
    end
     default:begin
      ns=idle;
      det_out=0;
     end
      endcase
   end
  endmodule



