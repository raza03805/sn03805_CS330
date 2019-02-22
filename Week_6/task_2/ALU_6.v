module ALU_6_bit
(
input [5:0] a,
input [5:0] b,
input Ainvert,
input Binvert,
input [1:0] Operation,
output wire [5:0] Result,
input CarryIn,
output wire CarryOut
);

wire carryout_0,carryout_1,carryout_2,carryout_3,carryout_4;

ALU myAlu0(a[0],Ainvert,Binvert,b[0],Operation,CarryIn,carryout_0,Result[0]);
ALU myAlu1(a[1],Ainvert,Binvert,b[1],Operation,carryout_0,carryout_1,Result[1]);
ALU myAlu2(a[2],Ainvert,Binvert,b[2],Operation,carryout_1,carryout_2,Result[2]);
ALU myAlu3(a[3],Ainvert,Binvert,b[3],Operation,carryout_2,carryout_3,Result[3]);
ALU myAlu4(a[4],Ainvert,Binvert,b[4],Operation,carryout_3,carryout_4,Result[4]);
ALU myAlu5(a[5],Ainvert,Binvert,b[5],Operation,carryout_4,CarryOut,Result[5]);

endmodule