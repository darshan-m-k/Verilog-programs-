module full_subtractor_tb;
    reg A,B,Bin;
    wire D,Bout;

    full_subtractor dut (A,B,Bin,D,Bout);
    
    initial begin
        $display("A B Bin | D Bout");
        $display("--------|--------");
        
        A = 0; B = 0; Bin = 0; #10;
        $display("%b %b  %b  | %b   %b", A, B, Bin, D, Bout);

        A = 0; B = 0; Bin = 1; #10;
        $display("%b %b  %b  | %b   %b", A, B, Bin, D, Bout);

        A = 0; B = 1; Bin = 0; #10;
        $display("%b %b  %b  | %b   %b", A, B, Bin, D, Bout);

        A = 0; B = 1; Bin = 1; #10;
        $display("%b %b  %b  | %b   %b", A, B, Bin, D, Bout);

        A = 1; B = 0; Bin = 0; #10;
        $display("%b %b  %b  | %b   %b", A, B, Bin, D, Bout);

        A = 1; B = 0; Bin = 1; #10;
        $display("%b %b  %b  | %b   %b", A, B, Bin, D, Bout);

        A = 1; B = 1; Bin = 0; #10;
        $display("%b %b  %b  | %b   %b", A, B, Bin, D, Bout);

        A = 1; B = 1; Bin = 1; #10;
        $display("%b %b  %b  | %b   %b", A, B, Bin, D, Bout);

        $finish;
    end
endmodule

