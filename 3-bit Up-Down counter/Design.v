module updown_counter(
  input clk,rst,ctrl,
  output reg [2:0] count);

  always @(posedge clk) begin
    if (rst)
      count <= 3'b000;
    
    else if (ctrl)
      count <= count + 1;
    
    else  
      count <= count - 1;
  end
endmodule
