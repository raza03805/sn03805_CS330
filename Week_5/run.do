vlog Instruction_parser.v text_bench.v

vsim -novopt work.testb

view wave

add wave sim:/testb/inst
add wave sim:/testb/opcode
add wave sim:/testb/rd
add wave sim:/testb/funct3
add wave sim:/testb/rs1
add wave sim:/testb/rs2
add wave sim:/testb/funct7

run 300 ns




