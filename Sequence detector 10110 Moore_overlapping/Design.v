// Code your design here
module moore_seq_10110_ov(in_seq,clk,rst,det_out);
	input in_seq,clk,rst;
	output reg det_out;
// Declaration for State Variable

	reg[2:0] ps,ns;

// State Encoding

	parameter idle = 3'b000;
	parameter s1= 3'b001;
	parameter s10= 3'b010;
	parameter s101= 3'b011;
  	parameter s1011= 3'b100;
	parameter s10110= 3'b101;
// Implement State Register

	always@(posedge clk)
	begin
	if(!rst)
	ps<= idle;
	else 
	ps<= ns;
	end

// Always block for NSD and OD
	always@(in_seq,ps)
	begin

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
		ns= s1;
		det_out= 0;
		end
	     else begin
		ns=s10 ;
		det_out= 0;
		end


	s10: if(in_seq) begin
		ns=s101;
		det_out= 0;
		end
	     else begin
		ns= idle;
		det_out= 0;
		end
	s101: if(in_seq) begin
		ns= s1011;
		det_out= 0;
		end
	     else begin
		ns= s10;
		det_out= 0;
		end
      s1011: if(in_seq) begin
		ns= s1;
		det_out= 0;
		end
	     else begin
		ns= s10110;
		det_out= 1;
		end
   	s10110: if(in_seq) begin
		ns= s101;
		det_out= 0;
		end
	     else begin
		ns= idle;
		det_out= 0;
		end
	default: begin
		ns= idle;
		det_out= 0;
		end
	endcase
	end
endmodule


