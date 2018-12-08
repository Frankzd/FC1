// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Fri Dec  7 10:21:48 2018
// Host        : DESKTOP-UORIP3J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/project/OPU/OPU_VHDL/FC1/FC1.srcs/sources_1/ip/c_addsub_1/c_addsub_1_sim_netlist.v
// Design      : c_addsub_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_1,c_addsub_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module c_addsub_1
   (A,
    B,
    CLK,
    CE,
    S);
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) input [22:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [3:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 s_intf DATA" *) output [22:0]S;

  wire [22:0]A;
  wire [3:0]B;
  wire CE;
  wire CLK;
  wire [22:0]S;
  wire NLW_U0_C_OUT_UNCONNECTED;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "23" *) 
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
  (* C_OUT_WIDTH = "23" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_1_c_addsub_v12_0_10 U0
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
(* C_A_WIDTH = "23" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000" *) 
(* C_B_WIDTH = "4" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "23" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_addsub_v12_0_10" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module c_addsub_1_c_addsub_v12_0_10
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
  input [22:0]A;
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
  output [22:0]S;

  wire \<const0> ;
  wire [22:0]A;
  wire ADD;
  wire [3:0]B;
  wire CE;
  wire CLK;
  wire [22:0]S;
  wire NLW_xst_addsub_C_OUT_UNCONNECTED;

  assign C_OUT = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "23" *) 
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
  (* C_OUT_WIDTH = "23" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  c_addsub_1_c_addsub_v12_0_10_viv xst_addsub
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
TdqJLrI4l+J/4ja975Afvonuqs3T6x1g9JpA4Kb/F8XUtahoOO4abJG8vZpb6827O0bOvHxKUsGG
6qbcTz1oDkWBrr/B1JwNpGIltiUtxGtZ5xuPinvkSNjeCyG5+2ub0C3rMQiEUQBMJSrhssMNnYLA
K8lXIKkYpSf03VBaavVMw1uDOEZk2XmaHDSOwD7s0Bm+z0Wu2HFdiOPhlHuOML7yaGiFQFqGjMr0
C+S8RyVEeuNCd8prj9mFZe+cvhcdaSrIYtjn9UZ4oX9okq999n4jxhoA+vqjE3uMa7b/1lWq1nvt
ecpGd2030HEDFbuzMDEZSJ2wM7h4ro287Cs+CA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
XHS0ZdyFJmV3IcSeUvU18mhmDeZ4udCKAdMeWn6jesOeOrsPQHhkVvdf/1QN34gqrBCkkAglVY9c
kKFwIQXV14xvL9GZhXzUA4YK+6sKdwFQE1xn1oEVfG43PC7fJu0006w7jnVfXQrSfGQJtn+WZKcl
XDtCBInfsuqwQqeT6hFvBfBnrX3pahXvwkK8zSq6fRgAqBMJfBgDy3MH4dqGxs6W7yNUF9jDvZE/
lp0ZIOvtzc5V674124GM1xvCa6N19Z3V5kqPfQ9+Ww3WeYps3nigwecNBIgkKcUy+Ms8IYFF9yGt
4PMdiajRghBH+lUTZw9rQqeyCPFMk67wc5+UsA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12656)
`pragma protect data_block
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
BJc=
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
