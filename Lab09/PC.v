module PC
(
input clk,
input reset,
input [63:0] PC_In,
output reg [63:0] PC_Out
);

initial
PC_Out = 64'b0;

/*
always@(posedge clk or reset)
begin
if (reset == 1'b1)
  PC_Out = 64'b0;
else
  PC_Out = PC_In;
end
*/

always@(posedge clk)
PC_Out = PC_In;

always@(reset)
begin
if(reset == 1'b1) 
  PC_Out = 64'b0;
end


endmodule