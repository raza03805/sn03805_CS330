module tb
();

reg [63:0] Mem_Addr;
reg [63:0] Write_Data;
reg clk;
reg MemWrite;
reg MemRead;

wire [63:0] Read_Data;

Data_Memory DM(Mem_Addr,Write_Data,clk,MemWrite,MemRead,Read_Data);

initial 
begin
#0 Mem_Addr = 64'b0;
#0 Write_Data = 64'b101011100001010101010000011110010100010;
#0 clk = 1'b1;
#0 MemWrite = 1'b1;
#0 MemRead = 1'b1;

#5 MemRead = 1'b0;
#5 Mem_Addr = 64'd10; //Mem_Addr changes but MemRead = 0.
#5 MemRead = 1'b1;
end


endmodule