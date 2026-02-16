
module eo_detector(num,y);
  input [7:0]num;
  output y;
  function out(input [7:0]n);
    begin
      out = (n%2==0)?1:0;
    end
  endfunction
  assign y=out(num);
endmodule