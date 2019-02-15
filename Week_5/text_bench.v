module testb
(
);
reg [31:0] inst;
wire [6:0] opcode;
wire [4:0] rd;
wire [2:0] funct3;
wire [4:0] rs1;
wire [4:0] rs2;
wire [6:0] funct7;

I_P ip1
(
  .inst(inst),
  .opcode(opcode),
  .rd(rd),
  .funct3(funct3),
  .rs1(rs1),
  .rs2(rs2),
  .funct7(funct7)

);

initial
begin
#0 inst = 32'h00000000;
#20 inst = 32'hffffffff;
#40 inst = 32'b10101010101010101010101010101010;
#60 inst = 32'b00000000011111111110000000000111;
end

initial
$monitor("Instructio: ", inst, " opcode: ", opcode, " rd:", rd, " funct3: ", funct3, " rs1: ", rs1, " rs2: ", rs2, "funct7: ", funct7);
endmodule