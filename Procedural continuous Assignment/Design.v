module dff (input din, rst, clk, output reg q);
always @ (posedge clk)
q<=din;
  always @ (rst) begin
    if (rst)  assign q=1'b0;
else deassign q;  //Next assignment at posedge clk
  end
endmodule