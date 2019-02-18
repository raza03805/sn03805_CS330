vlog immediate_data_extractor.v test_bench.v

vsim -novopt work.testb

view wave

add wave sim:/testb/inst
add wave sim:/testb/imm_data

run 300 ns




