----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/24/2026 02:46:13 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture test_bench of sevenseg_decoder_tb is

    component sevenseg_decoder is
    Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0)
       );
   end component sevenseg_decoder;

    signal i_Hex  : std_logic_vector(3 downto 0);
    signal o_seg_n : std_logic_vector(6 downto 0);

begin

	-- PORT MAPS ----------------------------------------
	sevenseg_decoder_uut : sevenseg_decoder port map (
	   i_Hex    => i_Hex(3 downto 0),
	   o_seg_n  => o_seg_n(6 downto 0)
	);

test_process: process
begin
	
	i_Hex <= "0000"; wait for 10 ns;
	   assert (o_seg_n = "1000000") report "failed to display zero" severity failure;
	i_Hex <= "0001"; wait for 10 ns;
	   assert (o_seg_n = "1111001") report "failed to display one" severity failure;
	i_Hex <= "0010"; wait for 10 ns;
	   assert (o_seg_n = "0100100") report "failed to display two" severity failure;
	i_Hex <= "0011"; wait for 10 ns;
	   assert (o_seg_n = "0110000") report "failed to display three" severity failure;
	i_Hex <= "0100"; wait for 10 ns;
	   assert (o_seg_n = "0011001") report "failed to display four" severity failure;
	i_Hex <= "0101"; wait for 10 ns;
	   assert (o_seg_n = "0010010") report "failed to display five" severity failure;
	i_Hex <= "0110"; wait for 10 ns;
	   assert (o_seg_n = "0000010") report "failed to display six" severity failure;
	i_Hex <= "0111"; wait for 10 ns;
	   assert (o_seg_n = "1111000") report "failed to display seven" severity failure;
	i_Hex <= "1000"; wait for 10 ns;
	   assert (o_seg_n = "0000000") report "failed to display eight" severity failure;
	i_Hex <= "1001"; wait for 10 ns;
	   assert (o_seg_n = "0011000") report "failed to display nine" severity failure;
	i_Hex <= "1010"; wait for 10 ns;
	   assert (o_seg_n = "0001000") report "failed to display a" severity failure;
	i_Hex <= "1011"; wait for 10 ns;
	   assert (o_seg_n = "0000011") report "failed to display b" severity failure;
	i_Hex <= "1100"; wait for 10 ns;
	   assert (o_seg_n = "0100111") report "failed to display c" severity failure;
	i_Hex <= "1101"; wait for 10 ns;
	   assert (o_seg_n = "0100001") report "failed to display d" severity failure;
	i_Hex <= "1110"; wait for 10 ns;
	   assert (o_seg_n = "0000110") report "failed to display e" severity failure;
	i_Hex <= "1111"; wait for 10 ns;
	   assert (o_seg_n = "0001110") report "failed to display f" severity failure;
    wait;
end process;

end test_bench;