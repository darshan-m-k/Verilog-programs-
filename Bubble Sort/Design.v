module sort_array;
    integer a[0:9];
    integer i, j, temp;
    initial begin
             for (i = 0; i < 10; i = i + 1) begin
               a[i] = 10 - i;
        end
        $display("Original array:");
        for (i = 0; i < 10; i = i + 1) begin
            $display("a[%0d] = %0d", i, a[i]);
        end

        
        for (i = 0; i < 9; i = i + 1) begin
            for (j = 0; j < 9 - i; j = j + 1) begin
                if (a[j] > a[j+1]) begin
                    temp = a[j];
                    a[j] = a[j+1];
                    a[j+1] = temp;
                end
            end
        end
        $display("\nSorted array (Ascending):");
        for (i = 0; i < 10; i = i + 1) begin
            $display("a[%0d] = %0d", i, a[i]);
        end

        $finish;
    end
endmodule
