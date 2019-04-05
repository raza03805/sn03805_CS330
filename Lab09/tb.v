module tb
();

reg clk;
reg reset;

RISC_V_Processor myRISC_V_Processor(clk, reset);

initial
begin
clk = 1'b0;
reset = 1'b1;
#10 reset = ~reset;
#10 reset = ~reset;
end

always
begin
#1 clk = ~clk;
end

endmodule