module multi8(a,y1,y2);
  input [3:0]a;
  
  output [6:0]y1,y2;
  assign y1 = a<<3;
  assign y2 = 4'b1000*a;
  endmodule
