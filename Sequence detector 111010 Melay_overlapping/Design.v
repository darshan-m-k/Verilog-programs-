module melay_seq_10110_ov(in_seq, clk, rst, det_out);

 input in_seq, clk, rst;
 output reg det_out;

 reg [2:0] ps, ns;

 parameter idle  = 3'b000;
 parameter s1    = 3'b001;
 parameter s10   = 3'b010;
 parameter s101  = 3'b011;
 parameter s1011 = 3'b100;

 // State register
 always @(posedge clk) begin
   if (!rst)
     ps <= idle;
   else
     ps <= ns;
 end

 // Next state & output logic
 always @(in_seq or ps) begin
   det_out = 0;      // default

   case(ps)

     idle: begin
       if (in_seq) ns = s1;
       else ns = idle;
     end

     s1: begin
       if (in_seq) ns = s1;
       else ns = s10;
     end

     s10: begin
       if (in_seq) ns = s101;
       else ns = idle;
     end

     s101: begin
       if (in_seq) ns = s1011;
       else ns = s10;
     end

     s1011: begin
       if (in_seq) begin
         ns = s1;      // overlap allowed
       end
       else begin
         ns = s10;
         det_out = 1; // 10110 detected
       end
     end

     default: ns = idle;

   endcase
 end

endmodule
