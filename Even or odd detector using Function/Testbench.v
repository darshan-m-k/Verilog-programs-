`timescale 1ns / 1ps

module even_checker_tb;
    reg [7:0] num;
    wire y;
    
    eo_detector dut(num,y);

    initial begin
    #10;   num = 0;   
    #10;   num = 1;   
    #10;    num = 2;   
    #10;    num = 3;   
    #10;    num = 10;  
    #10;    num = 255; 
    #10;    num = 128; 
        $finish;
    end
  
    initial begin
        $monitor("time=%ot | num=%b,y=%b", $time, num, y);
  end
        endmodule
