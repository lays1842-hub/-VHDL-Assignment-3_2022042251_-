if {![file exists work]} {vlib work}
vcom -2008 rs_latch.vhd d_latch.vhd d_flip_flop.vhd jk_flip_flop.vhd d_flip_flop_async.vhd tb_assignment3.vhd
vsim -voptargs=+acc work.tb_assignment3
add wave -r sim:/tb_assignment3/*
run 400 ns
