transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/media/d/Code/school/Sophomore/verilog2/20191017/N4 {/media/d/Code/school/Sophomore/verilog2/20191017/N4/N4.v}

