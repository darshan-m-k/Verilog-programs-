module full_subtractor (
    input A,
    input B,
    input Bin,
    output reg D,
    output reg Bout
);

  always @(A,B,Bin) begin
       
        D = A - B - Bin;
        Bout = (~A & B) | (~A & Bin) | (B & Bin);
    end

endmodule
