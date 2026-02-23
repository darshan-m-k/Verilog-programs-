module fact_tb;
reg [31:0] N;
wire [63:0] facto;
factorial dut(N,facto);
initial begin
N= 3;
#2 N=2;
#3 N=4;
end
initial begin
$monitor(N,facto);
end
endmodule