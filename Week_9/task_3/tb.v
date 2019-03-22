module tb();

reg [6:0] Opcode;
reg [3:0] funct;
wire [3:0] Operation;

top_control tc(Opcode, funct, Operation);

initial
begin
Opcode = 7'b0110011;
funct = 4'b0000;
#5 funct = 4'b1000;
#5 funct = 4'b0111;
#5 funct = 4'b0110;
#5 Opcode = 7'b0000011;
#5 Opcode = 7'b0100011;
#5 Opcode = 7'b1100011;
end

endmodule