module tb;
  int num = 1;
  
  initial begin
    for (int i = 1; i <= 4; i++) begin
      for (int j = 1; j <= i; j++) begin
        $write("\t%0d", num);
        num++;
      end
        $write("\n");
    end
    end
    endmodule

