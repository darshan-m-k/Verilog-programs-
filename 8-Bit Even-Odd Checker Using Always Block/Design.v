module even_odd_checker(
    input [7:0] n,  
    output reg even,odd);

    always @(n) begin
        if (n % 2 == 0) begin
            even = 1;  
            odd = 0;
        end
            else begin
                even = 0;
                odd = 1;
            end
            end
        endmodule
