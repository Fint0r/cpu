onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib reg_file_opt

do {wave.do}

view wave
view structure
view signals

do {reg_file.udo}

run -all

quit -force
