module testb
(
);
reg [31:0] inst;
wire [63:0] imm_data;

immediate_data_extractor ide
(
  .inst(inst),
  .imm_data(imm_data)
  
);

initial
begin
#0 inst = 32'h00000000;
#20 inst = 32'hffffffff;
#40 inst = 32'b10101010101010101010101010101010;
#60 inst = 32'b00000000011111111110000000000111;
end

initial
$monitor("Instruction: ", inst, " output: ", imm_data);
endmodule
