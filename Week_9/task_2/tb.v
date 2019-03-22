module tb
();

reg [1:0] ALUOp;
reg [3:0] Funct;
wire [3:0] Operation;


ALU_Control ALUC(ALUOp, Funct, Operation);


initial 
begin
ALUOp = 2'b00;
Funct = 4'b0000;
#5 ALUOp = 2'b01;
#5 ALUOp = 2'b10;
#5 Funct = 4'b1000;
#5 Funct = 4'b0111;
#5 Funct = 4'b0110;
end

endmodule

