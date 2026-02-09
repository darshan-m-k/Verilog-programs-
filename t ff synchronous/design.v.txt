module t_ff_sync (
    input  wire clk,
    input  wire rst,   // synchronous reset
    input  wire t,
    output reg  q
);

always @(posedge clk) begin
    if (rst)
        q <= 1'b0;
    else if (t)
        q <= ~q;
    else
        q <= q;  // hold state
end

endmodule
