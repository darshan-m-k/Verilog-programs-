module test_fd_task;
wire clk_out;
reg clk, rst;
FD Dut(clk, rst, clk_out);
initial begin
clk = 0;
rst= 1;
#13 rst = 0;
#200 $finish;
end
always #5 clk =~clk;
endmodule