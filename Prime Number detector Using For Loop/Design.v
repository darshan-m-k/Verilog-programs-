module prime_checker(
    input [7:0] num,  
    output reg a  
);

    integer i;

    always @(num) begin
        
        a = 1;

        
        if (num < 2) begin
            a = 0;  
        end else begin
            
            for (i = 2; i < num; i = i + 1) begin
                if (num % i == 0) begin
                    a = 0;  
                       end
            end
        end
    end

endmodule
