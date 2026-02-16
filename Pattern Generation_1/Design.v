module star_left #(parameter N=4);
  integer i,j;
  initial begin
    for(i=1;i<=N;i=i+1)begin
      for(j=1;j<=i;j=j+1)begin
        $write("\t%0d",j);
      end
      $display();
    end
  end
endmodule