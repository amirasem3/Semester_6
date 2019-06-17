onerror {exit -code 1}
vlib work
vlog -work work Register_File.vo
vlog -work work Register_File_WF.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.Register_File_vlg_vec_tst -voptargs="+acc"
vcd file -direction Register_File.msim.vcd
vcd add -internal Register_File_vlg_vec_tst/*
vcd add -internal Register_File_vlg_vec_tst/i1/*
run -all
quit -f
