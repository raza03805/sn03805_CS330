module top_control
(
input [6:0] Opcode,
input [3:0] funct,
output [3:0] Operation

);

wire Branch;
wire MemRead;
wire MemtoReg;
wire [1:0] ALUOp;
wire MemWrite;
wire ALUSrc;
wire RegWrite;


Control_Unit CU(Opcode, Branch, MemRead, MemtoReg, ALUOp, MemWrite, ALUSrc, RegWrite);

ALU_Control ALUC(ALUOp, funct, Operation);

endmodule

















