-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "d:/Projects/Xilinx/CPU/CPU.srcs/sources_1/bd/reg_file/ip/reg_file_blk_mem_gen_0_0/reg_file_blk_mem_gen_0_0_sim_netlist.vhdl" \
  "../../../bd/reg_file/sim/reg_file.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

