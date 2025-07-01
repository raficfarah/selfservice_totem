transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {Z:/labsd/Projeto RTL/Source/Somador/Somador.vhd}

vcom -93 -work work {Z:/labsd/Projeto RTL/Source/Somador/tb_Somador.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_Somador

add wave *
view structure
view signals
run 30 ns
