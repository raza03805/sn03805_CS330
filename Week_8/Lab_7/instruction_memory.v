module Instruction_Memory
(
input [63:0] Inst_Address,
output reg [31:0] Instruction
);

reg [7:0] instruc_memory [15:0];
initial
begin
instruc_memory[0] = 8'b10000011;
instruc_memory[1] = 8'b00110100;
instruc_memory[2] = 8'b00000101;
instruc_memory[3] = 8'b00001111;
instruc_memory[4] = 8'b10110011;
instruc_memory[5] = 8'b10000100;
instruc_memory[6] = 8'b10011010;
instruc_memory[7] = 8'b00000000;
instruc_memory[8] = 8'b10010011;
instruc_memory[9] = 8'b10000100;
instruc_memory[10] = 8'b00010100;
instruc_memory[11] = 8'b00000000;
instruc_memory[12] = 8'b00100011;
instruc_memory[13] = 8'b00111000;
instruc_memory[14] = 8'b10010101;
instruc_memory[15] = 8'b00001110;
end

always@(Inst_Address)
Instruction = {instruc_memory[Inst_Address[3:0]+3],instruc_memory[Inst_Address[3:0]+2],instruc_memory[Inst_Address[3:0]+1],instruc_memory[Inst_Address[3:0]]};


endmodule