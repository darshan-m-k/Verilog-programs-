module FD_task#(parameter N = 5 )(
  input clk,rst, 
  output reg clk_out);
  reg int_clk;
  integer count ;
  
  assign clk_out = int_clk;
  task cg(); 
    begin
    if(rst) begin
      int_clk =0;
      count = 0;
    end
      else
      begin
        count <= count+1;
        if (count% N ==0)
          begin
          int_clk = ~int_clk;
            count = 0;
          end
          end
      end
      endtask
  always @(clk) begin // always @( posedge clk or negedge clk)
    cg();
  end
    endmodule

