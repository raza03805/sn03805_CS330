module RISC_V_Processor
(
input clk,
input reset
);

wire [63:0] PC_In;
wire [63:0] PC_Out;
wire [63:0] b;
wire [63:0] out;
wire [63:0] out2;
wire [31:0] instruction; //Instruction_Memory output

//Below ouputs of Instruction Parser.
wire [6:0] opcode;
wire [4:0] rd;
wire [2:0] funct3;
wire [4:0] rs1;
wire [4:0] rs2;
wire [6:0] funct7;
//end

//Below ouputs of Control Unit
wire Branch;
wire MemRead;
wire MemtoReg;
wire ALUOp;
wire MemWrite;
wire ALUSrc;
wire RegWrite;
//end

wire [63:0] WriteData; // Registers input

wire [63:0] ReadData1; // registers output
wire [63:0] ReadData2; // registers output

wire [63:0] imm_data; // immediate_data_extractor output

wire [3:0] Operation; // ALU_control output

wire [63:0] data_out; // First Mux output goes to ALU

wire [63:0] Result; //ALU 64 bit output
wire zero; // ALU 64 bit carry in

wire [63:0] Read_Data; //Data Memory output


//initial
//begin
assign PC_Out = 64'b0;
assign b = 64'd4;
//end

PC myPC (clk, reset, PC_In, PC_Out);
Add myAdd1 (PC_Out, b, out);
Instruction_Memory myInstructionMemory(PC_Out, instruction);
I_P myInsructionParser(instruction, opcode, rd, funct3, rs1, rs2, funct7);
Control_Unit myControlUnit(opcode, Branch, MemRead, MemtoReg, ALUOp, MemWrite, ALUSrc, RegWrite);
registerFile myRegisters (WriteData, rs1, rs2, rd, RegWrite, clk, reset, ReadData1, ReadData2);
immediate_data_extractor myImmediateDataExtractor(instruction, imm_data);
ALU_Control myALUControl(ALUOp, {instruction[30],instruction[14:12]}, Operation);
Mux myMux1(ReadData2, imm_data, ALUSrc, data_out);
ALU_64_bit myALU_64_bit(ReadData1, data_out, Operation, Result, zero);
Data_Memory myDataMemory (Result, ReadData2, clk, MemWrite, MemRead, Read_Data);
Mux myMux2(Result, Read_Data, MemtoReg, WriteData);
Add myAdd2 (PC_Out, imm_data << 1, out2);
Mux myMux3(out, out2, Branch & zero, PC_In);

endmodule


 












