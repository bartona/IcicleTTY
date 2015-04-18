--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: top.vhd
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
use IEEE.std_logic_textio.all;

library igloo;
use igloo.all;
library COREUART_LIB;
use COREUART_LIB.all;
use COREUART_LIB.uart_uart_0_components.all;


entity top is
port (
    clk : in std_logic;  --a5
    D1 : out std_logic;  --a17
	D2: out std_logic;   --b16
	D3: out std_logic;  --a18
	

	agl_uart_rxd: in std_logic; ---c31
	agl_uart_txd: out std_logic; ---b34

	sw1: in  std_logic;                      -- active low board reset (activated by SW1) - C1
   	SW5       : in  std_logic;                      -- active low, not debounced - a13
    --SW4       : in  std_logic;                      -- active low, not debounced  -c9
    sda     : out std_logic;                      -- OLED I2C bidirectional data  -b18
    scl      : out std_logic;                      -- OLED I2C serial data clock      -c15
    oled_reset     : out std_logic                  -- OLED reset output  -a38
   

--reset: in std_logic

	--busyO: out std_logic;
	--enaO: out std_logic;
	--bclkO: out std_logic;

  	--sda2     : out std_logic;                      -- OLED I2C bidirectional data  -b18
    --scl2      : out std_logic
);
end top;





architecture top1 of top is

signal led: std_logic :='0';
signal counter : std_logic_vector(25 downto 0) := B"00000000000000000000000000";
--signal oled_init: std_logic;


signal reset: std_logic :='0';

type statet is (onreset, drawintro, waitforinput, getdata,echodata,drawscreen);
signal state : statet;
signal state_ns: statet;


--Components------
component display is
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
end component;

component char_rom is
port (
    data : out std_logic_vector(7 downto 0);
    column: in integer range 0 to 7;
	char: in std_logic_vector(7 downto 0)
);
end component;

    component uart
        -- ports
        port( 
            -- Inputs
            BIT8 : in std_logic;
            CLK : in std_logic;
            CSN : in std_logic;
            ODD_N_EVEN : in std_logic;
            OEN : in std_logic;
            PARITY_EN : in std_logic;
            RESET_N : in std_logic;
            RX : in std_logic;
            WEN : in std_logic;
            BAUD_VAL : in std_logic_vector(12 downto 0);
            DATA_IN : in std_logic_vector(7 downto 0);

            -- Outputs
            OVERFLOW : out std_logic;
            PARITY_ERR : out std_logic;
            RXRDY : out std_logic;
            TX : out std_logic;
            TXRDY : out std_logic;
            FRAMING_ERR : out std_logic;
            DATA_OUT : out std_logic_vector(7 downto 0)

            -- Inouts

        );
    end component;


---Signals

signal data : std_logic_vector (7 downto 0);
signal address: std_logic_vector (7 downto 0);
signal led_edge: std_logic_vector(1 downto 0);

	--draw control
signal draw: std_logic;
signal busy: std_logic;
signal clear: std_logic;
signal redraw: std_logic;

signal pos: integer;
signal sw1edge: std_logic_vector(2 downto 1);

signal char: std_logic_vector(7 downto 0);
signal column: integer;
signal char_data: std_logic_vector(7 downto 0);



signal rxrdy: std_logic;
signal csn: std_logic;
signal oen: std_logic;
signal wen: std_logic;
signal rxdata: std_logic_vector(7 downto 0);

type text_t is array (1 to 24) of std_logic_vector(7 downto 0);
signal text: text_t;
signal curpos: integer range 1 to 24;

signal msgc: integer range 1 to 8;
type msgt is array (1 to 8) of string (1 to 24);
constant  msg: msgt := (	"SHIRLI RULEZ    MEEP    ",
							"SPAZ RULEZ MEOWPURR     ",
									"EAT MY SHORTS   MAN     ",
									"ABCDEFGHIJKLMNOPQRSTUVWX",
									"YZ   THATS ALL FOLKS    ",
									"MEEP MOOP MAP MEEP MOOP ",
									"BLAH BLAH BLAH BLAH BLAH",
									"MEOWMEOWMEOWMEOWMEOWMEOW");
										
--                                "123456789012 345678901234"
begin 

--Port maps---
display0: display
port map(clk,reset,data,address,draw,busy,sda,scl,oled_reset);

char_rom0: char_rom
port map(char_data,column,char);

    uart_0 : uart
        -- port map
        port map( 
            -- Inputs
            BIT8 => '1',
            CLK => clk,
            CSN => '0',
            ODD_N_EVEN => '0',
            OEN => oen,
            PARITY_EN => '0',
            RESET_N => reset,
            RX => agl_uart_rxd,
            WEN => wen,
            BAUD_VAL =>  conv_std_logic_vector(129,13),  ---9600 baud at 10 mhz
            DATA_IN => rxdata,

            -- Outputs
            OVERFLOW =>  open,
            PARITY_ERR =>  open,
            RXRDY =>  rxrdy,
            TX =>  agl_uart_txd,
            TXRDY =>  open,
            FRAMING_ERR =>  open,
            DATA_OUT => rxdata

            -- Inouts

        );


D1 <= led;
d3 <= reset;

--blinking led, reset
process(clk) begin
	if (clk'event and clk='1')  then
		led_edge <= (led_edge(1), led);
		counter <= counter + '1';
		if(counter(25) = '1') then
			reset <= '1';
			
		end if;
	end if;
end process;
led <=  counter(23);


process(clk,reset,state,state_ns)
begin
	if(reset = '0') then		
		state <= onreset;
	elsif (clk'event and clk='1') then
		state <= state_ns;
		sw1edge <= sw1edge(1) & sw1;
		--blinker

		if(counter(22 downto 0) = B"00000000000000000000000") then
			redraw <= '1';
		else
			redraw <= '0';
		end if;

		if(state = onreset) then
			curpos <= 1;
			redraw <= '0';
		end if;

		if(state_ns = drawintro) then
				text <= (X"3E", others => X"20");--"WAITING FOR KEY INPUT   ";
				curpos <= 2;
		end if;
		

		--if data
		if (state_ns = getdata) then

				--Carriage Return
				if (rxdata = X"0D") then
					-- goto next line
					if(curpos >=1 and curpos <= 12) then  --if on first line, just move to second
						curpos <= 13;
					else --if on second line, copy bottom line to top, and move to second line
						text <= (text(13),text(14),text(15),text(16),
							text(17),text(18),text(19),text(20),
							text(21),text(22),text(23),text(24), others => X"20");

						curpos <= 13;
					end if;
				--Backspace
				elsif (rxdata = X"08" or rxdata = X"7F") then
					text(curpos-1) <= X"20";
					--decrement until 1
					if(curpos = 1) then
						curpos <= 1;
					else
						curpos <= curpos - 1;
					end if;
				---Ctrl'C erase everything
				elsif (rxdata = X"03")  then   
					text <= (others => X"20");
					curpos <= 1;
				-----All other characters
				else 
						
					
					if(curpos = 1) then
						text <= (rxdata, others => X"20");
						curpos <= curpos+1;
					else
						text(curpos) <= rxdata;
						
						if(curpos = 24) then
							curpos <= 1;
						else		
							curpos <= curpos + 1;
						end if;

					end if;
				end if;

				
				

			end if; --end if data


	end if;
end process;




process(clk, reset)
begin
	case state is 

	when onreset =>
		oen <= '1'; 
		wen <= '1';
		draw <= '0';		
		sw1edge <= B"00";

		state_ns <= drawintro;
		
	when drawintro =>
		oen <= '1';
		wen <= '1';
		draw <='1';
						
		state_ns <= waitforinput;
	
		

	when waitforinput =>
		oen <= '1'; 
		wen <= '1';
		draw <= '0';				
						
		if(rxrdy = '1') then
			state_ns <= getdata;
		elsif(redraw = '1') then
			state_ns <= drawscreen;
		else
			state_ns <= waitforinput;
		end if;

	when getdata =>
		--echo data
		oen <= '0';  --read enable
		wen <= '1'; 
		draw <= '0';

		state_ns <= echodata;

	when echodata =>
		--echo data
		oen <= '0'; 
		wen <= '0'; 
		draw <= '0';

		state_ns <= drawscreen;
			

	when drawscreen =>
		oen <= '1'; --clear data
		wen <= '1';
		draw <='1';
						
		state_ns <= waitforinput;
				
	end case;
end process ;








process(address,reset)
begin


	if(conv_integer(address) <= 192) then
		if(conv_integer(address) = (curpos-1)*8+1 and led = '1') then -- draw cursor
			data <= B"11111111";			
		else
			char <= text( (conv_integer(address)-1)/8 + 1 );
			column <= (conv_integer(address)-1) mod 8;
			data <= char_data;
		end if;
	else
		data <= B"00000000";
	end if;


end process;





end top1;


