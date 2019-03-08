module Instruction_Fetch
(
input clk,
input reset,
output [31:0] Instruction
);

wire [63:0] PC_Out; //a 
wire [63:0] b;
wire [63:0] Out;

//assign PC_Out = 64'b0;
assign b = 64'd4;

Add my_Add(PC_Out,b,Out);

PC my_PC(clk,reset,Out,PC_Out);

Instruction_Memory my_Instruction_Memory(PC_Out,Instruction);

endmodule
