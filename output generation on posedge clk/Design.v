module output_gen_posedge clk(
    input clk,d,
    output reg q);

always @(posedge clk) begin
    q <= d;
end
    endmodule
