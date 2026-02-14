module full_subtractor (
    input A,B,Bin,
    output reg D,Bout);

  always @(A,B,Bin) begin
      D = A - B - Bin;
      Bout = (~A & B) | (~A & Bin) | (B & Bin);
    end
endmodule

