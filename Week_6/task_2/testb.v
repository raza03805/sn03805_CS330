module testb
(

);

reg [5:0] a;
reg Ainvert;
reg Binvert;
reg [5:0] b;
reg [1:0] Operation;
reg CarryIn;
wire CarryOut;
wire [5:0] Result;

ALU_6_bit myAlu6(a,b,Ainvert,Binvert,Operation,Result,CarryIn,CarryOut);

initial
begin
#0 a = 6'b011010;
#0 Ainvert = 1'b0;
#0 Binvert = 1'b1;
#0 b = 6'b101000;
#0 Operation = 2'b01;
#0 CarryIn = 1'b0;
end

endmodule 
  
