onerror {quit -f}
vlib work
vlog -work work g07_stack.vo
vlog -work work g07_stack.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.g07_stack_vlg_vec_tst
vcd file -direction g07_stack.msim.vcd
vcd add -internal g07_stack_vlg_vec_tst/*
vcd add -internal g07_stack_vlg_vec_tst/i1/*
add wave /*
run -all
