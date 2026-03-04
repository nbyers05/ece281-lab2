----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2026 09:37:33 PM
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

entity sevenseg_decoder_tb is
--  Port ( );
end sevenseg_decoder_tb;


architecture Behavioral of sevenseg_decoder_tb is

component sevenseg_decoder is
    Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
           o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
end component sevenseg_decoder;

    signal o_seg_n_tb     : std_logic_vector(6 downto 0) := "1111111"; 
	signal i_Hex_tb       : std_logic_vector(3 downto 0) := x"0";


begin

sevenseg_decoder_uut : sevenseg_decoder port map (
	   i_Hex    => i_Hex_tb(3 downto 0),
	   o_seg_n  => o_seg_n_tb(6 downto 0)
	);

test_process : process 
	begin
	
	i_Hex_tb <= x"0"; wait for 10 ns;
assert (o_seg_n_tb = "1000000") report "0 failed" severity failure;

i_Hex_tb <= x"1"; wait for 10 ns;
assert (o_seg_n_tb = "1111001") report "1 failed" severity failure;

i_Hex_tb <= x"2"; wait for 10 ns;
assert (o_seg_n_tb = "0100100") report "2 failed" severity failure;

i_Hex_tb <= x"3"; wait for 10 ns;
assert (o_seg_n_tb = "0110000") report "3 failed" severity failure;

i_Hex_tb <= x"4"; wait for 10 ns;
assert (o_seg_n_tb = "0011001") report "4 failed" severity failure;

i_Hex_tb <= x"5"; wait for 10 ns;
assert (o_seg_n_tb = "0010010") report "5 failed" severity failure;

i_Hex_tb <= x"6"; wait for 10 ns;
assert (o_seg_n_tb = "0000010") report "6 failed" severity failure;

i_Hex_tb <= x"7"; wait for 10 ns;
assert (o_seg_n_tb = "1111000") report "7 failed" severity failure;

i_Hex_tb <= x"8"; wait for 10 ns;
assert (o_seg_n_tb = "0000000") report "8 failed" severity failure;

i_Hex_tb <= x"9"; wait for 10 ns;
assert (o_seg_n_tb = "0011000") report "9 failed" severity failure;

i_Hex_tb <= x"A"; wait for 10 ns;
assert (o_seg_n_tb = "0001000") report "a failed" severity failure;

i_Hex_tb <= x"B"; wait for 10 ns;
assert (o_seg_n_tb = "0000011") report "b failed" severity failure;

i_Hex_tb <= x"C"; wait for 10 ns;
assert (o_seg_n_tb = "0101101") report "c failed" severity failure;

i_Hex_tb <= x"D"; wait for 10 ns;
assert (o_seg_n_tb = "0100001") report "d failed" severity failure;

i_Hex_tb <= x"E"; wait for 10 ns;
assert (o_seg_n_tb = "0000110") report "e failed" severity failure;

i_Hex_tb <= x"F"; wait for 10 ns;
assert (o_seg_n_tb = "0001110") report "f failed" severity failure;
	
    wait;
end process;
end Behavioral;
