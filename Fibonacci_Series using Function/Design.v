module fibonacci;
  integer n;
  integer y;
  function f(input n);
    integer a[0:10];
    integer i;
    begin
      a[0]=1;
      a[1]=1;
      for(i=2;i<10;i=i+1)begin
        a[i]=a[i-1]+a[i-2];
      end
      $display("fibonacci series of ");
      for(i=0;i<10;i=i+1)begin
        $write("\t %0d " ,a[i]);
      end
    end
  endfunction
  assign y=f(n);
  endmodule