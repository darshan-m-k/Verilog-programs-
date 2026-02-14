module fibonacci_series;
    integer a[0:9]; 
    integer i;
    
    initial begin
        a[0] = 0;
        a[1] = 1;
        
        for (i = 2; i < 10; i = i + 1) begin
          a[i] = a[i - 1] + a[i - 2];
        end
      
        $display("Fibonacci Series up to 10th position:");
        
        for (i = 0; i < 10; i = i + 1) begin
          $display("a[%0d] = %0d", i, a[i]);
        end

        $finish;
    end
        endmodule
