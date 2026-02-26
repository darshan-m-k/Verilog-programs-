module testr;
  integer a[0:9];
  integer i=0;
  integer temp;
  initial begin
    while(i!=10)begin
      temp ={$random}%101;
      begin loop
        for(j=0;j<i;j=j+1) begin
          if(a[j]==temp)
            disable loop;
        end
        a[i]=temp;
        i=i+1;
      end
    end
    for(i=0;i<10;i=i+1)
      $display("a[%0d]=%0d",i,a[i]);
    $finish;
  end
endmodule

