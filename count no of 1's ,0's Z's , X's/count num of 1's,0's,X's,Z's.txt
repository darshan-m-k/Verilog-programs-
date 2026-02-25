module test;
	bit [7:0]data_in;
	bit[3:0]count_1=0,count_0=0,count_z=0,count_x=0;
	initial begin
		data_in = 8'b0000_1111;
		for(int i=0: i<8; i=i+1) begin
		if(data_in[i] === 0)
			count_0 = count_0 + 1;
		else if(data_in[i] === 1)
			count_1 = count_1 + 1;
		else if(data_in[i] === z)
			count_z = count_z + 1;
		else if(data_in[i]===x)
			count_x = count_z + 1;
		end
		$monitoe("count_0=%0d,count_1=%0d,count_z=%0d,count_x=%0d",count_0,count_1,count_z,count_z);
	end
endmodule

