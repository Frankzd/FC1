@echo off
set xv_path=D:\\software\\vivado_17\\Vivado\\2017.2\\bin
call %xv_path%/xsim tb_opu_ip_seri_config_behav -key {Behavioral:sim_1:Functional:tb_opu_ip_seri_config} -tclbatch tb_opu_ip_seri_config.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
