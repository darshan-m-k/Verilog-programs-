module test;
initial fork
   #5 $display($time, Thread A);
begin
#4 $display($time, Thread B);
#1 $display($time, Thread C);
fork
#2 $display($time, Thread D);
#5 $display($time, Thread E);
join
$display($time, Thread F);
end
join
   endmodule