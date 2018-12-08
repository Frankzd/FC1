-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Fri Dec  7 10:21:48 2018
-- Host        : DESKTOP-UORIP3J running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/project/OPU/OPU_VHDL/FC1/FC1.srcs/sources_1/ip/c_addsub_1/c_addsub_1_stub.vhdl
-- Design      : c_addsub_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity c_addsub_1 is
  Port ( 
    A : in STD_LOGIC_VECTOR ( 22 downto 0 );
    B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 22 downto 0 )
  );

end c_addsub_1;

architecture stub of c_addsub_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A[22:0],B[3:0],CLK,CE,S[22:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_addsub_v12_0_10,Vivado 2017.2";
begin
end;
