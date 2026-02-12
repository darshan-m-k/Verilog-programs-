module down_counter_3bit_async (
    input  wire clk,rst,          // asynchronous reset (active high)
    output reg  [2:0] count);

    always @(posedge clk or posedge rst) begin
        if (rst)
            count <= 3'b111;   // start from 7
        
        else
            count <= count - 1'b1;
    end
endmodule
