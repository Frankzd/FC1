// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Fri Dec  7 10:19:09 2018
// Host        : DESKTOP-UORIP3J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/project/OPU/OPU_VHDL/FC1/FC1.srcs/sources_1/ip/ram1_960_2/ram1_960_2_stub.v
// Design      : ram1_960_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_3_6,Vivado 2017.2" *)
module ram1_960_2(clka, ena, wea, addra, dina, clkb, enb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,ena,wea[0:0],addra[0:0],dina[959:0],clkb,enb,addrb[0:0],doutb[959:0]" */;
  input clka;
  input ena;
  input [0:0]wea;
  input [0:0]addra;
  input [959:0]dina;
  input clkb;
  input enb;
  input [0:0]addrb;
  output [959:0]doutb;
endmodule
