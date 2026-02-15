module even_odd_checker_tb;
  reg [7:0] n;
  wire even,odd;     
    
  even_odd_checker dut (n,even,odd);
  
  initial begin
    
    n = 8'd2; 
    #10;
    $display("2 is even= %b, 2 is odd= %b", even,odd);
    
    n = 8'd3;
    #10;
    $display("3 is even= %b, 3 is odd= %b",even, odd);
    
    n = 8'd8;
    #10;
    $display("8 is even= %b, 8 is odd= %b", even,odd);
    
    n = 8'd15;
    #10;
    $display("15 is even= %b, 15 is odd= %b", even,odd);
    
    $finish;
  end
    endmodule

