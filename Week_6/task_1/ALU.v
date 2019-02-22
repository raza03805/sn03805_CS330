module ALU
(
input a,
input Ainvert,
input Binvert,
input b,
input [1:0] Operation,
input CarryIn,
output reg CarryOut,
output reg Result
);

wire an, bn;
assign an = Ainvert ? ~a : a;

assign bn = Binvert ? ~b : b;



always @*
if (Operation == 2'b00)
begin
  Result = an & bn; //And operation
  CarryOut = 1'b0;
end
else if (Operation == 2'b01)
begin
  Result = an | bn; //OR operation
  CarryOut = 1'b0;
end
else if (Operation == 2'b10)
begin
  CarryOut = (an & CarryIn) | (bn & CarryIn) | (an & bn);
  Result = (an & ~bn & ~CarryIn) | (~an & bn & ~CarryIn) | (~an & ~bn & CarryIn) | (an & bn & CarryIn); //Sum
end

endmodule
   
  