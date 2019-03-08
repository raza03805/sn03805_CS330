module top
(
input [63:0] WriteData,
input RegWrite,
input clk,
input reset,
input [31:0] instruction,
output [63:0] ReadData1,
output [63:0] ReadData2
);

wire [6:0] opcode;
wire [4:0] rd;
wire [2:0] funct3;
wire [4:0] rs1;
wire [4:0] rs2;
wire [6:0] funct7;

I_P instruction_parser(instruction,opcode,rd,funct3,rs1,rs2,funct7);

registerFile my_rf(WriteData,rs1,rs2,rd,RegWrite,clk,reset,ReadData1,ReadData2);

endmodule




