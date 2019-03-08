module tb
();

reg clk;
reg reset;
wire [31:0] Instruction;

Instruction_Fetch my_instruction_fetch(clk,reset,Instruction);

initial 
begin
clk = 1'b0;
reset = 1'b0;

#5 clk = ~clk;
#5 reset = ~reset;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 clk = ~clk;
#5 reset = ~reset;
#5 clk = ~clk;

end

always
#10 clk = ~clk;





endmodule