-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Fri Dec  7 10:19:35 2018
-- Host        : DESKTOP-UORIP3J running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/project/OPU/OPU_VHDL/FC1/FC1.srcs/sources_1/ip/ram2_672_2/ram2_672_2_stub.vhdl
-- Design      : ram2_672_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ram2_672_2 is
  Port ( 
    clka : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 0 to 0 );
    dina : in STD_LOGIC_VECTOR ( 671 downto 0 );
    clkb : in STD_LOGIC;
    enb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    doutb : out STD_LOGIC_VECTOR ( 671 downto 0 )
  );

end ram2_672_2;

architecture stub of ram2_672_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clka,ena,wea[0:0],addra[0:0],dina[671:0],clkb,enb,addrb[0:0],doutb[671:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "blk_mem_gen_v8_3_6,Vivado 2017.2";
begin
end;
