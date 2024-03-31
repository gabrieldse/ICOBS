onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib SPRAM_32x16384_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {SPRAM_32x16384.udo}

run 1000ns

quit -force
