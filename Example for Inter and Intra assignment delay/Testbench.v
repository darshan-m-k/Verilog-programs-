module tb;
   integer a,b,c,d;
   initial begin
      #2 a<= #1 3; 
      #1 b= #4 5; 
      #5 c= #2 b+a;
      #2 d<= #3 10;
      d= #5 a+b;
   end
initial begin
   $monitor("Sim time= %0t | A= %0d | b=%0d | c=%0d | d= %0d", $time,a,b,c,d);
end
   endmodule

