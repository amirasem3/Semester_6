onerror {exit -code 1}
vlib work
vlog -work work Register_File.vo
vlog -work work reg_32.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.register_32_bit_vlg_vec_tst -voptargs="+acc"
vcd file -direction Register_File.msim.vcd
vcd add -internal register_32_bit_vlg_vec_tst/*
vcd add -internal register_32_bit_vlg_vec_tst/i1/*
run -all
quit -f
