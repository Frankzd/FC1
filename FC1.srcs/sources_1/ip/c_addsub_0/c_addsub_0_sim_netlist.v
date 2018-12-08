// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Fri Dec  7 10:21:14 2018
// Host        : DESKTOP-UORIP3J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/project/OPU/OPU_VHDL/FC1/FC1.srcs/sources_1/ip/c_addsub_0/c_addsub_0_sim_netlist.v
// Design      : c_addsub_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_0,c_addsub_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module c_addsub_0
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
  c_addsub_0_c_addsub_v12_0_10 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_10" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module c_addsub_0_c_addsub_v12_0_10
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
  c_addsub_0_c_addsub_v12_0_10_viv xst_addsub
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
AqDSzN4vDFMzIprilpqnl6kgStXJf+BRmuK9Avygh2POSLzer6pts2+S23ucdvRtOYFP1JQnwUPQ
RWF6SckZHR4JIsc52GXCuKRTeWrxZzwEEjXLOS9MwIKHPNIWSj8KA98JIDl2X43VxkJFoEszsOSW
UFEfz18vedvOZARBNl1YtlIj/ZCWn4+LN5jtGP82cAO//X2jmLlg4QVO+RbufWP+tOVoie1iQzlW
lvADxesGB9zwp4BJloEeNINglHNCjXYNLJk+5O5gdfsYGXaPGmZD/j5TGGmeC8Mx+rq4wMSJH4sR
S9EjkBq81WokzLrCOE0vbueILljdG5zJs6AeCA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
c+ZV6NaF48ciUxDC3sBQ9x3u7gdg2Dh6lFP4OXUQBR3PXvjFncp0bqK85ifwqAyShdZObGA4OMC+
4423SckCAGH+EezWeI2VUE2omis82G70H/tJaPygQP7kzezW9EKBUybni016Md2AyWKMxgWsN1Ob
E6vFK2bZFikiAp29BXpvaeSgvGPWDECnhFYWALhJueDF9q/BjEzr2y6duIQ7fltriw62tbwNkUB2
va2Zw1BiIQ4mqMdZN++reMzEEr1uNOPw6HTWJECV830NdYKq5hn9Teeu70Y9PCbCJ2tpCQf+ruan
vuClR0PcvCqKK+VMuZsyxqhkK4F7+h2jiCggnA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12560)
`pragma protect data_block
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
icDWnsQkujF3AWo0Y/t8b7M9eaA=
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
