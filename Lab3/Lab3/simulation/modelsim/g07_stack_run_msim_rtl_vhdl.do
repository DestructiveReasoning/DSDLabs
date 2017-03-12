transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/harwiltz/DSDLabs/Lab3/g07_generator.vhd}
vcom -93 -work work {/home/harwiltz/DSDLabs/Lab3/g07_pushpopdecide.vhd}
vcom -93 -work work {/home/harwiltz/DSDLabs/Lab3/g07_popenable.vhd}

