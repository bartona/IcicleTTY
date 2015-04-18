--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: i2c.vhd
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

--Send a packet of I2C data by settings ena = 1;
--busy_byte, and busy_burst will go high
--busy_byte goes low, during the ack phase after a byte is send.  
--Load a new byte at this point, and keep ena high to keep sending data
--when the data is over, set ena low, and the packet will be concluded with a stop sequence.

--bclk controls output frequency.
--------------------------------------------------------------------------------

library IEEE;

use IEEE.std_logic_1164.all;
use ieee.STD_LOGIC_ARITH.all;

use ieee.std_logic_unsigned.all;


entity i2c is
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
end i2c;

architecture i2c_def of i2c is


--state logic
type state_t is (idle,start0, start1, start2,addr0,addr1,addr2,write0,write1,write2,ack0, ack1, ack2,send_byte0, send_byte1, send_byte2,send_byte_ack0,send_byte_ack1,send_byte_ack2, stop0, stop1, stop2);

signal state: state_t;



--bit clock
signal counter : std_logic_vector(6 downto 0);
signal bclk : std_logic;

signal addrbit: integer range 6 downto 0;
signal databit: integer range 7 downto 0;

begin

--Strobe bclk
process(counter)
begin
	if(counter = B"0000000") then
		bclk <= '1';
	else
		bclk <= '0';
	end if;
end process;

--on clock logic
process(clk,reset,state) 
begin
	---state propagation
	if rising_edge(clk) then
		if (reset = '0') then
 			state <= idle;
 		else
			if(state = idle) then 
					if(ena = '1') then
						state <= start0;
					else
						state <= idle;
					end if;

			elsif (bclk = '1') then 

				case state is
					when start0 =>
						state <= start1;
					when start1 =>
						state <= start2; 
					when start2 =>
						state <= addr0; 
		
					when addr0 =>
						state <= addr1; 
					when addr1 =>
						state <= addr2; 
					when addr2 =>
			
						if (addrbit = 0) then --if at the last bit
							state <= write0;
						else
							state <= addr0;
						end if;

					when write0 =>
						state <= write1;
					when write1 =>
						state <= write2; 
					when write2 =>
						state <= ack0; 
					when ack0 =>
						state <= ack1; 
					when ack1 =>
						state <= ack2; 
					when ack2 =>
						state <= send_byte0; 	
					when send_byte0 =>
						state <= send_byte1; 
					when send_byte1 =>
						state <= send_byte2; 
					when send_byte2 =>
					
						--if at the last bit, move on
						if (databit = 0) then
							state <= send_byte_ack0;
						else
							state <= send_byte0;
						end if;
			
					when send_byte_ack0 =>
						state <= send_byte_ack1; 
					when send_byte_ack1 =>
						state <= send_byte_ack2; 
					when send_byte_ack2 =>
						--new state
						if (ena= '1') then
							state <= send_byte0;
						else
							state <= stop0;
						end if; 
					when stop0 =>
						state <= stop1; 
					when stop1 =>
						state <= stop2; 
					when stop2 =>
						state <= idle; 	
				end case;

----
			end if;
		end if;
	end if;

	--counter
	if rising_edge(clk) then
		if(reset = '0') then
			counter <= B"0000001";
		else
			counter <= counter + 1;
		end if;
	end if;
 			
	--addrbit
	if rising_edge(clk) then
		if(reset = '0') then
			addrbit <= 6;
		elsif(state = addr2) then
			addrbit <= addrbit - 1;
		elsif (state = addr0 or state = addr1) then
			addrbit <= addrbit;
		else	
			addrbit <= 6;
		end if;		
	end if;
				
	--data bit
	if rising_edge(clk) then
		if(reset = '0') then	
			databit <= 7;
		elsif(state = send_byte2) then
			databit <= databit -1;
		elsif (state = send_byte0 or state = send_byte1) then
			databit <= databit;
		else
			databit <= 7;
		end if;
	end if;

end process;



--output logic
process(state)

begin
case state is
	when idle => 
		sda <= 'Z';
		scl <= 'Z';
		busy_byte <= '0';
		busy_burst <= '0';

	when start0 =>
		sda <= '1';
		scl <= '1';
		busy_byte <= '0';
		busy_burst <= '0';

	when start1 =>
		sda <= '0';
		scl <= '1';
		busy_byte <= '1';
		busy_burst <= '1';		
	
	when start2 =>
		sda <= '0';
		scl <= '0';
		busy_byte <= '1';
		busy_burst <= '1';
	
	when addr0 =>
		sda <= addr(addrbit);
		scl <= '0';
		busy_byte <= '1';
		busy_burst <= '1';

	when addr1 =>
		sda <= addr(addrbit);
		scl <= '1';
		busy_byte <= '1';
		busy_burst <= '1';

	when addr2 =>
		sda <= addr(addrbit);
		scl <= '0';
		busy_byte <= '1';
		busy_burst <= '1';

	when write0 =>
		sda <= read_write;
		scl <= '0';
		busy_byte <= '1';
		busy_burst <= '1';

	when write1 =>
		sda <= read_write;
		scl <= '1';
		busy_byte <= '1';
		busy_burst <= '1';

	when write2 =>
		sda <= read_write;
		scl <='0';
		busy_byte <= '1';
		busy_burst <= '1';

	when ack0 =>
		sda <= 'Z';
		scl <= '0';
		busy_byte <= '1';
		busy_burst <= '1';

	when ack1 =>
		sda <= 'Z';
		scl <= '1';
		busy_byte <= '1';
		busy_burst <= '1';

	when ack2 =>
		sda <= 'Z';
		scl <= '0';
		busy_byte <= '1';
		busy_burst <= '1';

	when send_byte0 =>
		sda <= data(databit);
		scl <= '0';
		busy_byte <= '1';
		busy_burst <= '1';

	when send_byte1 =>
		sda <= data(databit);
		scl <= '1';
		busy_byte <= '1';
		busy_burst <= '1';

	when send_byte2 =>
		sda <= data(databit);
		scl <= '0';
		busy_byte <= '1';
		busy_burst <= '1';
		
	when send_byte_ack0 =>
		sda <= 'Z';
		scl <= '0';
		busy_byte <= '0';
		busy_burst <= '1';

	when send_byte_ack1 =>
		sda <= 'Z';
		scl <= '1';
		busy_byte <= '0';
		busy_burst <= '1';

	when send_byte_ack2 =>
		sda <= 'Z';
		scl <= '0';
		busy_byte <= '0';
		busy_burst <= '1';

	when stop0 =>
		sda <= '0';
		scl <= '0';
		busy_byte <= '0';
		busy_burst <= '1';
		
	when stop1 =>
		sda <= '0';
		scl <= '1';
		busy_byte <= '0';
		busy_burst <= '1';

	when stop2 =>
		sda <= '1';
		scl <= '1';
		busy_byte <= '0';
		busy_burst <= '1';
			
	end case;

end process;
   
end i2c_def;
