module tb_prime_checker;

    reg [7:0] num;
    wire a;  
    
    prime_checker uut (
        .num(num),
        .a(a)  
    );

    initial begin
        
        num = 8'd253; 
        #10;
      $display("2 is prime= %b", a); 

        num = 8'd4; 
        #10;
      $display("4 is prime= %b", a); 

        num = 8'd7; 
        #10;
      $display("7 is prime= %b", a); 

        num = 8'd10; 
        #10;
      $display("10 is prime= %b", a); 
      
        $finish;
    end

endmodule
