module tb
();
reg [63:0] WriteData;
reg [4:0] RS1;
reg [4:0] RS2;
reg [4:0] RD;
reg RegWrite;
reg clk;
reg reset;

wire [63:0] ReadData1;
wire [63:0] ReadData2;

registerFile my_rf(WriteData,RS1,RS2,RD,RegWrite,clk,reset,ReadData1,ReadData2);

initial 
begin
clk = 1'b0;
reset = 1'b0;
RegWrite = 1'b0;
WriteData = 32'd30;
RS1 = 5'd2;
RS2 = 5'd3;
RD = 5'd6;
end

always 
begin
#2 clk = 1'b1;
#2 reset = 1'b1;
#2 RegWrite = 1'b1;
#2 WriteData = 32'd32;
#2 RS1 = 5'd5;
#2 RS2 = 5'd6;
#2 RD = 5'd7;

end

always 
begin
#30 clk = 1'b1;
RegWrite = 1'b1;
RD = 5'd0;
end


/*
always 
begin
#7 reset = ~reset;
end

always 
begin
#6 RegWrite = ~RegWrite;
end

initial 
begin
  reset = 1'b1;
  #7 RD = 5'b0;
  #15 RS1 = 5'd4;
  #10 RS2 = 5'd7;
  #13 WriteData = 32'd31;
  #20 RS2 = 5'd5;
end


initial 
$monitor("Time = ", $time, , "Register:=%d ",RD, "---=%d", my_rf.Registers[RD], " Register[0]:=%d ", my_rf.Registers[0]);


*/
endmodule