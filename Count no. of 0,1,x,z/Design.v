module tb;
  reg [15:0] data;
  integer i;
  reg [3:0] count0, count1, countx, countz;

  initial begin
    data = 16'b0xz10xz10xz1xxxx;  
    
    count0 = 0;
    count1 = 0;
    countx = 0;
    countz = 0;

    for (i = 0; i <16; i = i + 1) begin
      case (data[i])
        1'b0: count0 = count0 + 1;
        1'b1: count1 = count1 + 1;
        1'bx: countx = countx + 1;
        1'bz: countz = countz + 1;
      endcase
    end
    $display("Count of 0s: %0d", count0);
    $display("Count of 1s: %0d", count1);
    $display("Count of Xs: %0d", countx);
    $display("Count of Zs: %0d", countz);
  end
endmodule
