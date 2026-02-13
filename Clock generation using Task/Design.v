//---------------- DESIGN ----------------
module clk_gen (
    input  rst,
    output reg clk
);

    // Task to generate clock
    task cg;
    begin
        if (rst)
            clk = 1'b0;
        else
            clk = ~clk;
    end
    endtask

    // Clock generation
    always begin
        cg();
        #2;        // Half period = 2 time units
    end

endmodule
