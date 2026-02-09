module shift_operators_tb;
    reg [3:0] A;
    reg [1:0] shift_amt;
    wire [3:0] shl, shr;
    wire signed [3:0] ashr;
    shift_operators uut 
(.A(A), .shift_amt(shift_amt), .shl(shl), .shr
(shr), .ashr(ashr));
    initial begin
        A = 4'b1010; shift_amt = 2'd0; #5;
        shift_amt = 2'd1; #5;
        shift_amt = 2'd2; #5;
        shift_amt = 2'd3; #5;
        A = 4'b1100; shift_amt = 2'd1; #5;
        A = 4'b0111; shift_amt = 2'd1; #5;
        A = 4'bx100; shift_amt = 2'd2; #5;
      A = 4'b110x; shift_amt = 2'd2; #5;
      A = 4'b1x00; shift_amt = 2'd2; #5;
      A = 4'b110z; shift_amt = 2'd2; #5;
      A = 4'bz100; shift_amt = 2'd2; #5;
      A = 4'b1z00; shift_amt = 2'd2; #5;
    end
    initial begin
        $monitor("Time=%0t A=%b shift=%d 
| A<<shift=%b A>>shift=%b 
A>>>shift=%b",
                  $time, A, shift_amt, shl, shr, 
ashr);
    end
    initial begin
        $dumpfile("shift_operators.vcd");
        $dumpvars(0, A, shift_amt, shl, shr, 
ashr);
  end
endmodule
