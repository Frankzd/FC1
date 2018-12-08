@echo off
set xv_path=D:\\software\\vivado_17\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto c36f49f53ab54619baf601794cb0ff14 -m64 --debug typical --relax --mt 2 -L blk_mem_gen_v8_3_6 -L xil_defaultlib -L xbip_utils_v3_0_7 -L c_reg_fd_v12_0_3 -L xbip_dsp48_wrapper_v3_0_4 -L xbip_pipe_v3_0_3 -L xbip_dsp48_addsub_v3_0_3 -L xbip_addsub_v3_0_3 -L c_addsub_v12_0_10 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot tb_opu_ip_seri_config_behav xil_defaultlib.tb_opu_ip_seri_config xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
