module tb;
 initial fork
   #5 $display($time, "Thread A");
  begin
   #4 $display($time, "Thread B");
   #1 $display($time, "Thread C");
   fork
    #2 $display($time, "Thread D");
    fork
     #5 $display($time, "Thread E");
     #2 $display($time, "Thread F");
    join
    #1 $display($time, "Thread G");
   join
    $display($time, "Thread H");
  end
   $display($time, "Thread I"); 
 join
  endmodule
