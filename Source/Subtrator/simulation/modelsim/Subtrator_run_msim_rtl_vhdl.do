transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {Z:/labsd/Projeto RTL/Source/Subtrator/Subtrator.vhd}

vcom -93 -work work {Z:/labsd/Projeto RTL/Source/Subtrator/tb_Subtrator.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_Subtrator

add wave *
view structure
view signals
run 30 ns
