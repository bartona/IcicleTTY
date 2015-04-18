--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: display.vhd
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

--Display controller for oled 

--
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity display is
port (
	--clk/reset
	clk: in std_logic;
	reset: in std_logic;
	
	--data bus
    data : in std_logic_vector (7 downto 0);
    column_address: out std_logic_vector (7 downto 0);

	--draw control
	draw: in std_logic;
	busy: out std_logic;	

	--to OLED display
	sda: out std_logic;
	scl: out std_logic;
	oled_reset: out std_logic
	
    
);
end display;
architecture def_arch of display is

--Signals

type statet is (waitfordraw, loadpacket, loadbyte, holdbyte0, holdbyte1, finishburst);
signal state : statet;
signal state_ns: statet;


--for i2c
signal ena: std_logic;
signal busy_byte: std_logic;
signal busy_burst: std_logic;
signal data_i2c: std_logic_vector (7 downto 0);






--i2c
constant read_write: std_logic := '0';
constant address_i2c: std_logic_vector (7 downto 1) := B"0111100";

--control bytes
constant control_byte_0: std_logic_vector (7 downto 0) := x"00"; --'00000000' contrl bytes to follow
constant control_byte_1: std_logic_vector (7 downto 0) := x"40"; --'04000000' data bytes to follow
constant page_addr_byte1 : std_logic_vector (7 downto 0) := x"b1"; 
constant page_addr_byte0 : std_logic_vector (7 downto 0) := x"b0";  
constant low_col_byte : std_logic_vector (7 downto 0) := x"04"; -- columns 4-99 are mapped to OLED
constant high_col_byte : std_logic_vector (7 downto 0) := x"10"; 
constant display_on_byte : std_logic_vector (7 downto 0) := x"AF"; 
                        
-------------------------------------------------------------------------------------------
type packet20 is array(1 to 20) of std_logic_vector (7 downto 0);
type packet4 is array(1 to 4) of std_logic_vector (7 downto 0);
type packet2 is array(1 to 2) of std_logic_vector (7 downto 0);

--initialization packet
constant burst1: packet20	 := (control_byte_0,
									 display_on_byte, -- turn display on
                                     x"AD", --
                                     x"8A", 
                                     x"A8", --
                                     x"1F", 
                                     x"C8", --
                                     x"A0", --
                                     x"D8", --
                                     x"04", -- starting column = 4th
                                     x"40", --
                                     x"81", --
                                     x"5D",
                                     x"D9", --
                                     x"11",
                                     x"D5", --
                                     x"01",     
                                     x"D3", -- vertical scroll (next byte)
                                     x"00", -- vertical scroll off
                                     x"2E"  -- horizontal scroll off
                                     );

constant burst2 : packet4 := (control_byte_0,page_addr_byte0,low_col_byte,high_col_byte);
constant burst4 : packet4 := (control_byte_0,page_addr_byte1,low_col_byte,high_col_byte);
constant burst6: packet2 := (control_byte_0,display_on_byte);

signal burstNo: integer range 1 to 6;
signal bytecount: integer range 1 to 200; 

signal address: std_logic_vector (7 downto 0);

-----------i2c module
component i2c is
port (
    sda : out std_logic;
    scl : out std_logic;
	clk: in std_logic;
	reset: in std_logic;

    read_write: in std_logic;
	addr: in std_logic_vector (6 downto 0);
	
	data: in std_logic_vector (7 downto 0);

	ena : in std_logic;
	
	busy_byte: out std_logic;
	busy_burst: out std_logic
	
);
end component;

 
begin
-- architecture body

--i2c
i2c0: i2c 
port map(sda,scl,clk,reset,read_write,address_i2c,data_i2c,ena,busy_byte,busy_burst);

oled_reset <= reset;
column_address <= address;			

--state process
process(clk,reset,state,state_ns) 
begin
	if (reset = '0') then
 		state <= waitfordraw;
		burstNo <= 0;
		address <= B"00000001";
		bytecount <= 0;

 	elsif rising_edge (clk) then

 		state <= state_ns; --increment stae

		if(state_ns = waitfordraw) then
			burstNo <= 0;
			address <= B"00000001";
			bytecount <= 0;
		end if;

		if(state_ns = loadpacket) then --if load packet, increment packet number
			burstNo <= burstNo + 1;
			bytecount <= 1;
		end if;

		

		if(state_ns = loadbyte) then  --if load byte, increment byte number
			bytecount <= bytecount + 1;

			if(bytecount /= 1 and (burstNo = 3 or burstNo = 5)) then
				address <= address + 1;
			end if;
		end if;

 	end if;
end process;



process(state)

begin

		case state is
			--wait for draw command	
			when waitfordraw =>
				ena <= '0';
				busy <= '0';
					
				--if draw, load packet1
				if(draw = '1') then
					state_ns <= loadpacket;
				else 
					state_ns <= waitfordraw;
				end if;

			--load packet
			when loadpacket =>
				ena <= '0';
				busy <= '1';
			
				state_ns <= holdbyte0;

			when loadbyte =>
				ena <= '1';
				busy <= '1';
					
				state_ns <= holdbyte0;

		--hold byte while  busybyte is de-asserted
			when holdbyte0 =>
				busy <= '1';
				ena <= '1';

				--next byte
				if(busy_byte = '0') then
					state_ns <= holdbyte0; --hold state
				else
					state_ns <= holdbyte1; --when busy_byte goes high, keep holding
				end if;	

		--hold byte while busy is asserted
			when holdbyte1 =>
				busy <= '1';
				ena <= '1';
				
				--Once byte is de-aserted again, load new byte.
				if(busy_byte = '0') then
					if ((burstNo = 1 and bytecount = burst1'length) or 
						(burstNo = 2 and bytecount = burst2'length) or
						(burstNo = 3 and bytecount = 97) or
						(burstNo = 4 and bytecount = burst4'length) or
						(burstNo = 5 and bytecount = 97) or
						(burstNo = 6 and bytecount = burst6'length)) then
						
						state_ns <= finishburst; --if no more bytes
					else
						state_ns <= loadbyte; --if more bytes, load next
					end if;
				else
					state_ns <= holdbyte1; --hold state
				end if;
			
			
			when finishburst =>
				busy <= '1';
				ena <= '0';
				
				--if busy_burst is asserted, hold
				if (busy_burst = '1') then
					state_ns <= finishburst; --hold state
				else
					--done with burst
					if(burstNo = 6) then --6th burst was finished
						state_ns <= waitfordraw; --done
					else	
						--load next burst	
						state_ns <= loadpacket;
					end if;
				end if;
			
					
		end case;
end process ;

process(state,burstNo)
begin
	if(state = loadpacket or state = loadbyte or 
		state = holdbyte0 or state = holdbyte1 or 
		state = finishburst) then
		case burstNo is
			when 1 => data_i2c <= burst1(bytecount);
			when 2 => data_i2c <= burst2(bytecount);
			when 3 => if (bytecount = 1) then 
						data_i2c <= control_byte_1;
					  else
						data_i2c <= data;
					  end if;
			when 4 => data_i2c <= burst4(bytecount);
			when 5 => if (bytecount = 1) then 
						data_i2c <= control_byte_1;
					  else
						data_i2c <= data;
					  end if;
			when 6 => data_i2c <= burst6(bytecount);
			when others => data_i2c <= B"00000000";
		end case;
	else
		data_i2c <= B"00000000";
	end if;
end process;



end def_arch;



