module t_ff_async (
    input  wire clk,
    input  wire rst_n, // active-low asynchronous reset
    input  wire t,
    output reg  q
);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        q <= 1'b0;
    else if (t)
        q <= ~q;
    else
        q <= q;  // hold state
end

endmodule
