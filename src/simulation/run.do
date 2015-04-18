quietly set ACTELLIBNAME igloo
quietly set PROJECT_DIR "C:/Users/Aaron/Desktop/fpga2/FPGA"

if {[file exists postsynth/_info]} {
   echo "INFO: Simulation library postsynth already exists"
} else {
   vlib postsynth
}
vmap postsynth postsynth
vmap igloo "C:/Microsemi/Libero_v11.0/Designer/lib/modelsim/precompiled/vhdl/igloo"
if {[file exists COREUART_LIB/_info]} {
   echo "INFO: Simulation library COREUART_LIB already exists"
} else {
   vlib COREUART_LIB
}
vmap COREUART_LIB "COREUART_LIB"

vcom -93 -explicit  -work COREUART_LIB "${PROJECT_DIR}/component/work/uart/uart_0/rtl/vhdl/core_obfuscated/components.vhd"
vcom -93 -explicit  -work postsynth "${PROJECT_DIR}/synthesis/display.vhd"
vcom -93 -explicit  -work postsynth "${PROJECT_DIR}/stimulus/display_tb.vhd"

vsim -L igloo -L postsynth -L COREUART_LIB  -t 1ps postsynth.display_tb
add wave /display_tb/*
run 1000ns
