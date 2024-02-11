onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib axi_slave_uart_opt

do {wave.do}

view wave
view structure
view signals

do {axi_slave_uart.udo}

run -all

quit -force
