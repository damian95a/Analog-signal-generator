onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+axi_slave_uart -L axi_lite_ipif_v3_0_4 -L lib_pkg_v1_0_2 -L lib_srl_fifo_v1_0_2 -L lib_cdc_v1_0_2 -L axi_uartlite_v2_0_26 -L xil_defaultlib -L secureip -O5 xil_defaultlib.axi_slave_uart

do {wave.do}

view wave
view structure

do {axi_slave_uart.udo}

run -all

endsim

quit -force
