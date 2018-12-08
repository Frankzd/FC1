onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ram1_960_2_opt

do {wave.do}

view wave
view structure
view signals

do {ram1_960_2.udo}

run -all

quit -force
