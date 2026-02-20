module shift_register (
  input wire clk,
  input wire rst,
  input wire data_in,
  output reg data_out
);
  reg [3:0] mem;

  always @(posedge clk or negedge rst) begin
    if (!rst)
      mem <= 4'b0000;
    else begin
      mem <= {data_in, mem[3:1]};  
      data_out <= mem[0];         
    end
  end
endmodule
