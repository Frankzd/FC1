// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Fri Dec  7 10:21:48 2018
// Host        : DESKTOP-UORIP3J running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_addsub_1_sim_netlist.v
// Design      : c_addsub_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_addsub_1,c_addsub_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_addsub_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
(* C_A_WIDTH = "23" *) (* C_BORROW_LOW = "1" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_CONSTANT = "0" *) (* C_B_TYPE = "0" *) (* C_B_VALUE = "0000" *) 
(* C_B_WIDTH = "4" *) (* C_CE_OVERRIDES_BYPASS = "1" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "1" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_C_OUT = "0" *) (* C_HAS_SCLR = "0" *) (* C_HAS_SINIT = "0" *) 
(* C_HAS_SSET = "0" *) (* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "1" *) 
(* C_OUT_WIDTH = "23" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
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
KJ9UQBcdxSLYwrapmuQnvWZ2hklRfqE8VukHpBbYuo/ZEIwPdLyeA28SesrCOYmQZv0u/uDO9iTb
tKZCykanSfx2lYQKArRUB9rJHy5okBp/Ll/8VEYQjvuKgp7eceP2DprsnueOB9/HoZ61YBDU1LqK
cGCrxbXcZZbsBF524S2BlLHT03Fwbv644DJwrtHvD2PZmauF+18HNFEOTmhuhPL7LEThqwuHsNYu
jbaY5THar9hSEhgwBFfqkPQT8DKGchnTvFkKZM73KFZk3W7g8aJUBC64Rr6SmHQtR9uNhwdOvie4
vOkinEqQKg0BB/TWVv/L/iMAuA55mdr8s8Q1jQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
gdct+aXgEatHCMfzJaJFD5DepFzsBsY0M87W4UPH/1c+vYYW7fDB9lNfvdqtVH0/SqeccSQJaY/+
XogA6QDIpnCBQyJS3jvBu0Ux2laHDeHevpzpfCTCWbC25UpihhG2Ci7h4NUBxRCAllR+srk6x/Km
m9sALPKohVP7hP+/TX9ESUoj9Q1cfp/BA7ox2Mb8yopD2V5EPrYLf9mysuVKPB47RoO/fRbfpdFE
W5yBCIzmkq6FxvVMRCfXHmvuopx+MDxxQAHJ0N1urctRgvISp7747GUKyK7eCENy9Gm+LC8Zeufa
gI03ZqRzMdD01V295fYM47toh7SEqft7nqFXNw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12704)
`pragma protect data_block
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
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
