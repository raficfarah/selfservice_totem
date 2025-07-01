transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {Z:/labsd/Projeto RTL/Source/RegFile_Prices/MUX_16x1_13bits.vhd}
vcom -93 -work work {Z:/labsd/Projeto RTL/Source/RegFile_Prices/RegFile.vhd}
vcom -93 -work work {Z:/labsd/Projeto RTL/Source/RegW/RegW.vhd}

vcom -93 -work work {Z:/labsd/Projeto RTL/Source/RegFile_Prices/tb_RegFile.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  tb_RegFile

add wave *
view structure
view signals
run 30 ns
