onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+reg_file -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.reg_file xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {reg_file.udo}

run -all

endsim

quit -force
