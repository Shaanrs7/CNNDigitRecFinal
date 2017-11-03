-- ==============================================================
-- File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.2
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ==============================================================

library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity dut_perform_conv_w_conv1_0_rom is 
    generic(
             dwidth     : integer := 30; 
             awidth     : integer := 13; 
             mem_size    : integer := 4608
    ); 
    port (
          addr0      : in std_logic_vector(awidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(dwidth-1 downto 0);
          addr1      : in std_logic_vector(awidth-1 downto 0); 
          ce1       : in std_logic; 
          q1         : out std_logic_vector(dwidth-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of dut_perform_conv_w_conv1_0_rom is 

signal addr0_tmp : std_logic_vector(awidth-1 downto 0); 
signal addr1_tmp : std_logic_vector(awidth-1 downto 0); 
type mem_array is array (0 to mem_size-1) of std_logic_vector (dwidth-1 downto 0); 
signal mem : mem_array := (
    0 => "110111101101110100011101001111", 1 => "110111111000111000001100001111", 
    2 => "000101011101110001110000011111", 3 => "001101110110000011101010001111", 
    4 => "000000111111100111010001100100", 5 => "111101001101101011101110001111", 
    6 => "110110001010000010100111101111", 7 => "000011110100110011000000011011", 
    8 => "110100101001111001011100011111", 9 => "110100110111000000010000100000", 
    10 => "101110011000101111001111111111", 11 => "000111111110011110101100100000", 
    12 => "111011010100101101010010010000", 13 => "000000011000011100000100001000", 
    14 => "110011100010111000010001000000", 15 => "110011111101010101101111000000", 
    16 => "111011011101110000101111111000", 17 => "000110110011111100100101010000", 
    18 => "110101000010100011000011010000", 19 => "000010111010000000110001011100", 
    20 => "110011010100110100001110001111", 21 => "000001000111000111011001010000", 
    22 => "101110011011101010001111111111", 23 => "111011101010000010100010101111", 
    24 => "000101100010001000011001001000", 25 => "000100110010011101000100000111", 
    26 => "110110010111100000000111011111", 27 => "000011000100011111111010101100", 
    28 => "110110111001010101100101111111", 29 => "111100101001001111001110110000", 
    30 => "110010001001011100110100010000", 31 => "110111010100101100010101010000", 
    32 => "110100011111111100110101110000", 33 => "111111110010011111011000111000", 
    34 => "111110000001010001110000110010", 35 => "000011011011100000110101101000", 
    36 => "000001011011111110101011000011", 37 => "001110100011111101111101100000", 
    38 => "111100010101110111001000101100", 39 => "000101010100111110110100000000", 
    40 => "111010001111101011111100101111", 41 => "001010000011101011100001011111", 
    42 => "111110011111100111010111000000", 43 => "000111111010110110000110011000", 
    44 => "001000001111100000111111110000", 45 => "000011111101100111100110000000", 
    46 => "000010110110111010100001010100", 47 => "111000000010101111001001100111", 
    48 => "000111111010011010011010111000", 49 => "111000001001111110111000101000", 
    50 => "000010000001110101100101100000", 51 => "000110111101000011111100010111", 
    52 => "001001011101110011011100101111", 53 => "111000110000010000010100100000", 
    54 => "000011111100110101110101111000", 55 => "111011001000000100001010001111", 
    56 => "110101010010101000011011000000", 57 => "110110111011000000101100110000", 
    58 => "001111100001011011111001001111", 59 => "111101011110110101010001110000", 
    60 => "111110111001010100011110010110", 61 => "111010001001100111001100010111", 
    62 => "111001101110001101000000101000", 63 => "111000110101100100010011111000", 
    64 => "000111011011011000000111001111", 65 => "000000100111011011010110101100", 
    66 => "110110010110101110110001100000", 67 => "001000001000011111111101101111", 
    68 => "000111011110010001011011101000", 69 => "000001000010010100000010100011", 
    70 => "000100110110000100110000010111", 71 => "111101011111011011111110110011", 
    72 to 4607=> "000000000000000000000000000000" );


attribute EQUIVALENT_REGISTER_REMOVAL : string;
begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

memory_access_guard_1: process (addr1) 
begin
      addr1_tmp <= addr1;
--synthesis translate_off
      if (CONV_INTEGER(addr1) > mem_size-1) then
           addr1_tmp <= (others => '0');
      else 
           addr1_tmp <= addr1;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
        if (ce1 = '1') then 
            q1 <= mem(CONV_INTEGER(addr1_tmp)); 
        end if;
    end if;
end process;

end rtl;


Library IEEE;
use IEEE.std_logic_1164.all;

entity dut_perform_conv_w_conv1_0 is
    generic (
        DataWidth : INTEGER := 30;
        AddressRange : INTEGER := 4608;
        AddressWidth : INTEGER := 13);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0);
        address1 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce1 : IN STD_LOGIC;
        q1 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of dut_perform_conv_w_conv1_0 is
    component dut_perform_conv_w_conv1_0_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR;
            addr1 : IN STD_LOGIC_VECTOR;
            ce1 : IN STD_LOGIC;
            q1 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    dut_perform_conv_w_conv1_0_rom_U :  component dut_perform_conv_w_conv1_0_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0,
        addr1 => address1,
        ce1 => ce1,
        q1 => q1);

end architecture;


