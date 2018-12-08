-makelib ies/xil_defaultlib -sv \
  "D:/software/vivado_17/Vivado/2017.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies/xpm \
  "D:/software/vivado_17/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/blk_mem_gen_v8_3_6 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../FC1.srcs/sources_1/ip/ram3_80_2/sim/ram3_80_2.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

