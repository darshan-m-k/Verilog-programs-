module t_ff_async (
    input  wire clk,rst_n,t, // active-low asynchronous reset
    output reg  q);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        q <= 1'b0;
    else if (t)
        q <= ~q;
    else
        q <= q;  // hold state
end
endmodule

