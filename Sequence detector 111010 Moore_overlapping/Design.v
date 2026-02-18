module moore_111010_ov(in_seq, clk, rst, det_out);
 input in_seq, clk, rst;
 output reg det_out;
 reg [2:0] ps, ns;
 
 parameter idle   = 3'b000;
 parameter s1     = 3'b001;
 parameter s11    = 3'b010;
 parameter s111   = 3'b011;
 parameter s1110  = 3'b100;
 parameter s11101 = 3'b101;
 parameter s111010= 3'b110;   

 
always @(posedge clk)begin
 if(!rst)
   ps <= idle;
 else
   ps <= ns;
end

always @(ps, in_seq)begin
 case(ps)

 idle:    if(in_seq) ns = s1;
          else ns = idle;

 s1:      if(in_seq) ns = s11;
          else ns = idle;

 s11:     if(in_seq) ns = s111;
          else ns = idle;

 s111:    if(in_seq) ns = s111;
          else ns = s1110;

 s1110:   if(in_seq) ns = s11101;
          else ns = idle;

 s11101:  if(in_seq) ns = s11;    
          else ns = s111010;

 s111010: if(in_seq) ns = s1;
          else ns = idle;

 default: ns = idle;

 endcase
end

always @(ps)begin
 if(ps == s111010)
   det_out = 1;
 else
   det_out = 0;
end

endmodule

