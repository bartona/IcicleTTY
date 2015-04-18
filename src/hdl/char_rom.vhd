--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: char_rom.vhd
-- File history:
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--      <Revision number>: <Date>: <Comments>
--
-- Description: 
--
-- <Description here>
--
-- Targeted device: <Family::IGLOO> <Die::AGL125V2> <Package::132 QFN>
-- Author: <Name>
--
--------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity char_rom is
port (
    data : out std_logic_vector(7 downto 0);
    column: in integer range 0 to 7;
	char: in std_logic_vector(7 downto 0)
);
end char_rom;


architecture def_arch of char_rom is
   -- signal, component etc. declarations


type rom_t is array (0 to 8*69-1) of std_logic_vector (7 downto 0);
constant char_rom: rom_t :=(
-- space
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
-- !
"00000000",
"00001110",
"11011111",
"11011111",
"00001110",
"00000000",
"00000000",
"00000000",
-- "
"00000000",
"00000111",
"00001111",
"00000000",
"00001111",
"00000111",
"00000000",
"00000000",
-- #
"00100100",
"11111111",
"11111111",
"00100100",
"11111111",
"11111111",
"00100100",
"00000000",
-- $
"01001100",
"01011110",
"11011011",
"11011011",
"01111010",
"00110010",
"00000000",
"00000000",
-- %
"11000011",
"01100011",
"00110000",
"00011000",
"00001100",
"11000110",
"11000011",
"00000000",
-- &
"01110000",
"11110110",
"10011111",
"10111001",
"11101111",
"00110110",
"00010000",
"00000000",
--'
"00001000",
"00001111",
"00000111",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
--(
"00111100",
"01111110",
"11000011",
"10000001",
"00000000",
"00000000",
"00000000",
"00000000",
--)
"10000001",
"11000011",
"01111110",
"00111100",
"00000000",
"00000000",
"00000000",
"00000000",
--*
"00010000",
"01010100",
"01111100",
"00111000",
"01111100",
"01010100",
"00010000",
"00000000",
--+
"00001000",
"00001000",
"01111110",
"01111110",
"00001000",
"00001000",
"00000000",
"00000000",
--,
"00000000",
"00000000",
"10000000",
"11110000",
"01110000",
"00000000",
"00000000",
"00000000",
-- -
"00000000",
"00011000",
"00011000",
"00011000",
"00011000",
"00011000",
"00000000",
"00000000",
-- .
"00000000",
"11000000",
"11000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
-- /
"11000000",
"01100000",
"00110000",
"00011000",
"00001100",
"00000110",
"00000011",
"00000000",
--0
"01111110",  -- 
"11111111",  -- 
"11110011",  -- 
"10011011",  -- 
"10001111",  --
"11111111",  -- 
"01111110",  -- 
"00000000",  --

--1
"10000100",
"10000110", 
"11111111",
"11111111",
"10000000",
"10000000",
"00000000",
"00000000",
--2
"11100010",
"11110011",
"10010001",
"10011001",
"10001101",
"11001111",
"11000110",
"00000000",
--3
"01000010",
"11000011",
"10001001",
"10001001",
"10001001",
"11111111",
"01110110",
"00000000",
--4
"00011000",
"00011100",
"00010110",
"10010011",
"11111111",
"11111111",
"10010000",
"00000000",
--5
"01001111",
"11001111",
"10001001",
"10001001",
"10001001",
"11111001",
"01110001",
"00000000",
--6
"01111100",
"11111110",
"10010011",
"10010001",
"10010001",
"11110000",
"01100000",
"00000000",
--7
"00000011",
"00000011",
"11100001",
"11110001",
"00011001",
"00001111",
"00000111",
"00000000",
--8
"01110110",
"11111111",
"10001001",
"10001001",
"10001001",
"11111111",
"01110110",
"00000000",
--9
"00001110",
"10011111",
"10010001",
"10010001",
"11010001",
"01111111",
"00111110",
"00000000",
--:
"00000000",
"00000000",
"01100110",
"01100110",
"00000000",
"00000000",
"00000000",
"00000000",
--;
"00000000",
"10000000",
"11100110",
"01100110",
"00000000",
"00000000",
"00000000",
"00000000",
--<
"00000000",
"00000000",
"00011000",
"00111100",
"01100110",
"11000011",
"00000000",
"00000000",
--=
"00000000",
"00100100",
"00100100",
"00100100",
"00100100",
"00100100",
"00000000",
"00000000",
-->
"00000000",
"00000000",
"11000011",
"01100110",
"00111100",
"00011000",
"00000000",
"00000000",
--?
"00000110",
"00000111",
"00000001",
"11010001",
"11011001",
"00001111",
"00000110",
"00000000",
--@
"01111110",
"11111111",
"10000001",
"10110001",
"10110001",
"10111111",
"00011110",
"00000000",
--A
"11111000",
"11111100",
"00010110",
"00010011",
"00010110",
"11111100",
"11111000",
"00000000",
--B
"10000001",
"11111111",
"10001001",
"10001001",
"10001001",
"11111111",
"01110110",
"00000000",
--C
"00111100",
"01111110",
"11000011",
"10000001",
"10000001",
"11000011",
"01100110",
"00000000",
--D
"10000001",
"11111111",
"11111111",
"10000001",
"11000011",
"01111110",
"00111100",
"00000000",
--E
"10000001",
"11111111",
"11111111",
"10011001",
"10111101",
"10000001",
"11000011",
"00000000",
--F
"10000001",
"11111111",
"11111111",
"10010001",
"00010001",
"00000011",
"00000111",  
"00000000",

--G
"00111100",
"01111110",
"11000011",
"10010001",
"10010001",
"01010011",
"11110110",
"00000000",
--H
"11111111",
"11111111",
"00001000",
"00001000",
"00001000",
"11111111",
"11111111",
"00000000",
--I
"10000001",
"10000001",
"11111111",
"11111111",
"10000001",
"10000001",
"00000000",
"00000000",
--J
"01110000",
"11110000",
"10000000",
"10000001",
"11111111",
"01111111",
"00000001",
"00000000",
--K
"10000001",
"11111111",
"11111111",
"00011000",
"00111100",
"11100111",
"11100111",
"00000000",
--L
"10000001",
"11111111",
"11111111",
"10000001",
"10000000",
"11000000",
"11100000",
"00000000",
--M
"11111111",
"11111111",
"00000110",
"00001100",
"00000110",
"11111111",
"11111111",
"00000000",

--N
"11111111",
"11111111",
"00001110",
"00011100",
"00111000",
"11111111",
"11111111",
"00000000",
--O
"01111110",
"11111111",
"10000001",
"10000001",
"10000001",
"11111111",
"01111110",
"00000000",
--P
"10000001",
"11111111",
"11111111",
"10010001",
"00010001",
"00011111",
"00001110",
"00000000",
--Q
"00011110",
"00111111",
"00100001",
"00111001",
"11110001",
"11111111",
"10011110",
"00000000",
--R
"10000001",
"11111111",
"11111111",
"00001001",
"00011001",
"11111111",
"11110110",
"00000000",
--S
"01000110",
"11001111",
"10011001",
"10010001",
"10110001",
"11110111",
"01100110",
"00000000",
--T
"00000111",
"00000011",
"10000001",
"11111111",
"10000001",
"00000011",
"00000111",
"00000000",
--U
"01111111",
"11111111",
"10000000",
"10000000",
"10000000",
"11111111",
"01111111",
"00000000",
--V
"00011111",
"00111111",
"01100000",
"10000000",
"01100000",
"00111111",
"00011111",
"00000000",
--W
"00111111",
"11111111",
"11100000",
"00111000",
"11100000",
"11111111",
"00111111",
"00000000",
--X
"11000011",
"11100111",
"00111100",
"00011000",
"00111100",
"11100111",
"11000011",
"00000000",
--Y
"00000111",
"00001111",
"10011000",
"11110000",
"10011000",
"00001111",
"00000111",
"00000000",
--Z
"11100111",
"11110011",
"10011001",
"10001101",
"10000111",
"11000011",
"11100001",
"00000000",
-- [
"11111111",
"11111111",
"10000001",
"10000001",
"00000000",
"00000000",
"00000000",
"00000000",
-- >
"00000111",
"00001110",
"00011100",
"00111000",
"01110000",
"11100000",
"00000000",
"00000000",
-- ]
"10000001",
"10000001",
"11111111",
"11111111",
"00000000",
"00000000",
"00000000",
"00000000",
-- ^
"00001000",
"00001100",
"00000110",
"00000011",
"00000110",
"00001100",
"00001000",
"00000000",
-- |
"10000000",
"10000000",
"10000000",
"10000000",
"10000000",
"10000000",
"10000000",
"00000000",
-- `
"00000000",
"00000011",
"00000111",
"00000100",
"00000000",
"00000000",
"00000000",
"00000000",
----abcdefghijklmnopqrstuvwxyz
-- {
"00011000",
"00011000",
"01111110",
"11100111",
"10000001",
"10000001",
"00000000",
"00000000",
-- |
"00000000",
"00000000",
"11110111",
"11110111",
"00000000",
"00000000",
"00000000",
"00000000",
-- }
"10000001",
"10000001",
"11100111",
"01111110",
"00011000",
"00011000",
"00000000",
"00000000",
-- ~
"00000010",
"00000011",
"00000001",
"00000011",
"00000010",
"00000011",
"00000001",
"00000000"

);

function ascii2num (char : std_logic_vector(7 downto 0)) return integer is
begin
		-- Space... TO Z
	if(conv_integer(char) >= 16#20# and char <= 16#60#) then
			return conv_integer(char) - 16#20#;
		--a to z, map to A to Z
	elsif (conv_integer(char) >= 16#61# and char <= 16#7A#) then
			return conv_integer(char) - 16#61# + 33;
	elsif (conv_integer(char) >= 16#7B# and char <= 16#7E#) then
			return conv_integer(char) - 16#7B# + 65;
 	else
			return 0; -- space;
	end if;

end function ascii2num;

begin

--output
process(char,column)
begin
	data <= char_rom(ascii2num(char)*8+column);
end process;
   -- architecture body
end def_arch;