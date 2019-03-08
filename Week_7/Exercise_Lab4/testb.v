module tb
();

reg [63:0] WriteData;
reg RegWrite;
reg clk;
reg reset;
reg [31:0] instruction;
wire [63:0] ReadData1;
wire [63:0] ReadData2;

top t1(WriteData, RegWrite, clk, reset, instruction, ReadData1, ReadData2);

initial 
begin
clk = 1'b0;
reset = 1'b1;
RegWrite = 1'b1;
WriteData = 32'd30;
instruction = 32'd21;

#5 clk = ~clk;
#5 reset = ~reset;
end

endmodule

