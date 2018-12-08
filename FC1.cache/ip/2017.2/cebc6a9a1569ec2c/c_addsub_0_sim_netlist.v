// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Fri Dec  7 10:21:14 2018
// Host        : DESKTOP-UORIP3J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [24:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [3:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) output [24:0]S;

  wire [24:0]A;
  wire [3:0]B;
  wire CE;
  wire CLK;
  wire [24:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "25" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "0000" *) 
  (* C_B_WIDTH = "4" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_OUT_WIDTH = "25" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_10 U0
       (.A(A),
        .ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_U0_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_A_TYPE = "0" *) 
(* C_A_WIDTH = "25" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000" *) 
(* C_B_WIDTH = "4" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "25" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_10
   (A,
    B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    C_OUT,
    S);
  input [24:0]A;
  input [3:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output C_OUT;
  output [24:0]S;

  wire \<const0> ;
  wire [24:0]A;
  wire ADD;
  wire [3:0]B;
  wire CE;
  wire CLK;
  wire [24:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "25" *) 
  (* C_BORROW_LOW = "1" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_CONSTANT = "0" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "0000" *) 
  (* C_B_WIDTH = "4" *) 
  (* C_CE_OVERRIDES_BYPASS = "1" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_C_OUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "1" *) 
  (* C_OUT_WIDTH = "25" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_addsub_v12_0_10_viv xst_addsub
       (.A(A),
        .ADD(ADD),
        .B(B),
        .BYPASS(1'b0),
        .CE(CE),
        .CLK(CLK),
        .C_IN(1'b0),
        .C_OUT(NLW_xst_addsub_C_OUT_UNCONNECTED),
        .S(S),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
l1NG3g81+vM8a/OECNXckQ6Ih+534PcHu9If3GBzfNiHrQt4ZqWyOCmUfR9HBrKJ6dazleZpBLLQ
VkjiEZOvOw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Z0LH98ijrG2zSKQ428sLNLNN8LOYW53zGTr9NWQ16ZrFJS/8H+Sypz2sLY7sCYpj+gN48UB+J20x
PvOEIxFZVPZNmhrcvIxztIiTduaVtyypOS3Jx8r3YE6fOwVJrfZ9eXRQUIdKvbN0bVZFUcjZ2HOu
2IHyG/UIDoelWrgO0GY=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
QNC1y7mnDIW3BeoEUG5xtIOyuA9VVC6sNeWDOT6S5qoB4e5s9LHwLIGpByH8Fz0PGaafc2Pp1LqC
lzXnevLntdeO+Pz1NMCI4Ojicg8oWhR3msMyGBNzheYZMtUoYnT2zC0eafrxC+G2D8yNbUPHtf++
Y0MP0FYlKg8jJhDSX3w=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bRemsiwW6AApgQWC90BqiBlMFD2jEWM37Ph/oR3/T151pMQpEWD3gu3SGbUebLL6tc97cE/PgSCy
KS0n/kkTjP8yz3D6tbz01kj9QAWvzzWfukcjy4U1p/TuuIIUFcvoH/P+MznfeFrHL11ZwDgOg40p
h2VhrJPIbdfbr6mfhPFTBuWKYDGmQfgZeWyn7BSTLS+wvNUS+AvTJnaPj6O9Szcq/v+sphPqX1F0
wfrQOmRJVSa2EfFZxZ1m3+2NmDfYPFsxF203jiTh4pJ8JuezHfzsaK6jbmB9h7QKD6yMUsYRx/O3
idyz3Inko4ZzfMIyZuEPWm6TSA5xk5DeltwcSw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QxSXl52RB2cLbPW8z4SvG8lZpaZT78HIOf6Q3fEiSBBQziVQn5oJPSJW8PdmH2pB/aVZpPeDnm2a
hpp7ddkUsyA+NHykeuxUJfwhWYhyemZLGnSdZXVpbaOhu0TLJiOtAVsDmRdPFs7q6CpwvvPImbuY
YK29r9Mw8w6ATmDgWgWs+wefEAeKjvUWKQmUr9SKi88H0j+hCCdtMoYZnO8+mjtjWlqm6U7NqCPr
K58IyvSojGlh7czWW8xHzOdgUBj872QexFBFCXAZ3caYI+I5tgzbPak7R4g1nHKG2e2HAjefrx2S
bXb3PhWqaTkKbnVCol5mWJuxPclCBxrEtqSjug==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cz5g65hbB8shmQPsohjzVr+SPRr5lrGQqqziYjnrsCWqDM27xVRVWn5/2voSXHOso9pm8+P7GN+L
Mz6Nn/qXS+pi/muryE2WEZ1r1ya1OKX8h7vIWuyvbtfcgSkvPQb+oNRpZXNONTBmmBFus8k0rin2
VJPxBV5qCpoPGWDVS1QCTJ852TyqzdEMM2h/x7mD8lHifZIkjoWi+O8HkWSf1j2JrYg2fikk0O71
heaF0CkbjGmy7ezg8wpLUywMgWUhCjFFanO1rqzaTEvWYxCjx+FFJRXRyfP3qUeBqMaTvZsGSDDl
/9EG0TehdoOmg4VPXawJiGfiqr2sBbg7f0zlow==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
JK3WuGTEsqA9gW0+EQ9w1fIk9x5jqywmR+vpqfAszCgIZvZQuS1Oj+9uodR/fUCW4tbIctUfmgdu
eViOxFG6my8pnY0WMqGhLYuTQSrXsl0RI092Xt0NiqLivwkOyamRIX78Q7agqW/sgXZkiMTCTaNK
9rko0RbsG9/mXg3Y1DJzukhB+YWTdzKxjShlCCkDPV6kJ7XuGZmBliJddmScs/h7jh6kBXtnyB07
NOGcjFPGKy4VPXFzLqcze402xriR/x3J5gnITwBBc4W+0SJEuzxbfzJTu8xmPxNvTOUs5XJnah5r
k98aKOhm7ySFTRfOqrnE1dkSEeiGUx9hk/TIng==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
sDSYm52xxGae44Y+2Bpn5j3E6J3AiW/rtbmERWXZ2cf1U0xVeYDYV7QEcj2ZGm1lAwmT5m0KUcd0
cGEqf8d783N55zumKzVr5knS2hU64yDtyewngfEtxw2tmN5J2l3gWn2QA+MlA49yelEfxRA9oU6K
o6YrLoUsk8Hq0v1Yf6St8yWs4cPuBKLga5Xp3MvLbHtvWB4pJ3WYEu4kpDwSauwg1bXI3MgWDLgd
GWjZjXh4/wqMq32jP6NZfj5cGLtMdke0lmiXT19QG2hLj9GmjhiqA6Ufqcl/1z6ZUwRujDcnZTn5
VQ4PzCFDhiFYe08Jer97EqmRfgbM3LEa0BY/eA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12608)
`pragma protect data_block
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
CiPect1akwnoHL8=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
