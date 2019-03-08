module tb
();

reg [63:0] Inst_Address;
wire [31:0] Instruction;

Instruction_Memory inst_mem1(Inst_Address, Instruction);

initial 
begin
Inst_Address = 64'd0;
#2 Inst_Address = 64'd4;
#2 Inst_Address = 64'd8;
#2 Inst_Address = 64'd12;
end

endmodule