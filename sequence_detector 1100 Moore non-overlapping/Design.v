module moore_seq_1100_nov(in_seq,clk,rst,det_out);
	input in_seq,clk,rst;
	output reg det_out;
	reg[1:0] ps,ns;
	
	parameter idle = 3'b000;
	parameter s1= 3'b001;
	parameter s11= 3'b010;
	parameter s110= 3'b011;
    parameter s1100= 3'b100;

	always@(posedge clk)begin
		if(!rst)
			ps<= idle;
		else 
			ps<= ns;
	end

	always@(in_seq,ps)begin
		case(ps)
			idle: if(in_seq) begin
				ns= s1;
				det_out= 0;
			end
				else begin
					ns= idle;
					det_out= 0;
				end
					
			s1: if(in_seq) begin
				ns= s11;
				det_out= 0;
			end
				else begin
					ns= idle;
					det_out= 0;
				end
					
			s11: if(in_seq) begin
				ns=s11;
				det_out= 0;
			end
				else begin
					ns= s110;
					det_out= 0;
				end
	
			s110: if(in_seq) begin
				ns= s1;
				det_out= 1;
			end
				else begin
					ns= s1100;
					det_out= 1;
				end
      
			s1100: if(in_seq) begin
				ns= s1;
				det_out= 0;
			end
				else begin
					ns= idle;
					det_out= 1;
				end
					
			default: begin
				ns= idle;
				det_out= 0;
			end
				endcase
			end
		endmodule
