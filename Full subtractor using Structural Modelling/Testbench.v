module tb_full_subtractor;
    reg A;
    reg B;
    reg Bin;

    
    wire D;
    wire Bout;

   
  full_subtractor dut (A,B,Bin,D,Bout);

    
    initial begin
        $display("A B Bin | D Bout");
        $display("--------|--------");
            A = 1'b0; B = 1'b0; Bin = 1'b0;
    #10;    A = 1'b0; B = 1'b0; Bin = 1'b1; 
    #10;    A = 1'b0; B = 1'b1; Bin = 1'b0;
    #10;    A = 1'b0; B = 1'b1; Bin = 1'b1; 
    #10;    A = 1'b1; B = 1'b0; Bin = 1'b0; 
    #10;    A = 1'b1; B = 1'b0; Bin = 1'b1;
    #10;	A = 1'b1; B = 1'b1; Bin = 1'b0; 
    #10;    A = 1'b1; B = 1'b1; Bin = 1'b1;
  end
  initial begin
    $monitor("simtime=%0t,A=%b,B=%b,Bin=%b,s=%b,c=%b", $time, A,B, Bin,D,Bout);
  end
endmodule
  