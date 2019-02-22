vlog ALU.v ALU_6.v testb.v

vsim -novopt work.testb

view wave

add wave sim:/testb/a
add wave sim:/testb/Ainvert
add wave sim:/testb/Binvert
add wave sim:/testb/b
add wave sim:/testb/Operation
add wave sim:/testb/CarryIn
add wave sim:/testb/CarryOut
add wave sim:/testb/Result

run 300 ns




