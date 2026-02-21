module tb;
  int count = 0;

  initial begin
    forever begin
      #5;
      count++;
      $display("always-like loop run = %0d", count);
      if(count == 3) break;
    end
  end
endmodule
