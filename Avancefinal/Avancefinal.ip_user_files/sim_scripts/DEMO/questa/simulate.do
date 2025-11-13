onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib DEMO_opt

do {wave.do}

view wave
view structure
view signals

do {DEMO.udo}

run -all

quit -force
