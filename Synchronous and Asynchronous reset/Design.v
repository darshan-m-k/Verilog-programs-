module sync_async_reset(
    input wire clk,
    input wire rst_n, 
    output reg [7:0] counter
);

    reg reset_sync;

   
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            reset_sync <= 1'b1; 
        else
            reset_sync <= 1'b0; 
    end

    always @(posedge clk) begin
        if (reset_sync)
            counter <= 8'd0;
        else
            counter <= counter + 1'b1;
    end

endmodule