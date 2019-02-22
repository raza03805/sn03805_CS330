module testb
(

);

reg a;
reg Ainvert;
reg Binvert;
reg b;
reg [1:0] Operation;
reg CarryIn;
wire CarryOut;
wire Result;

ALU myAlu(a,Ainvert,Binvert,b,Operation,CarryIn,CarryOut,Result);

initial
begin
#0 a = 1'b0;
#0 Ainvert = 1'b0;
#0 Binvert = 1'b1;
#0 b = 1'b0;
#0 Operation = 2'b10;
#0 CarryIn = 1'b0;
end

endmodule 
  
