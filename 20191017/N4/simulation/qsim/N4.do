onerror {exit -code 1}
vlib work
vlog -work work N4.vo
vlog -work work Waveform2.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.N4_vlg_vec_tst -voptargs="+acc"
vcd file -direction N4.msim.vcd
vcd add -internal N4_vlg_vec_tst/*
vcd add -internal N4_vlg_vec_tst/i1/*
run -all
quit -f
