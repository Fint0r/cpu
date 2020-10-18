vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"d:/Projects/Xilinx/CPU/CPU.srcs/sources_1/bd/reg_file/ip/reg_file_blk_mem_gen_0_0/reg_file_blk_mem_gen_0_0_sim_netlist.vhdl" \
"../../../bd/reg_file/sim/reg_file.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

