module Add
(
input [63:0] a,
input [63:0] b,
output [63:0] out
);

//always@(*)
assign out = a+b;

endmodule