`timescale 1ns / 1ps

module tb_full_subtractor;

    // Inputs
    reg A;
    reg B;
    reg Bin;

    // Outputs
    wire D;
    wire Bout;

    // Instantiate the Unit Under Test (UUT)
    full_subtractor uut (
        .A(A),
        .B(B),
        .Bin(Bin),
        .D(D),
        .Bout(Bout)
    );

    // Test procedure
    initial begin
        $display("A B Bin | D Bout");
        $display("--------|--------");

        // Test all possible input combinations
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
