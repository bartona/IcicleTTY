----------------------------------------------------------------------
-- Created by Actel SmartDesign Sun Oct 06 11:57:43 2013
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: display_tb.vhd
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


library ieee;
use ieee.std_logic_1164.all;

entity display_tb is
end display_tb;

architecture behavioral of display_tb is

    constant SYSCLK_PERIOD : time := 100 ns;

    signal SYSCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';
	signal draw: std_logic := '0';

    component display
        -- ports
        port( 
            -- Inputs
            clk : in std_logic;
            reset : in std_logic;
            data : in std_logic_vector(7 downto 0);
            draw : in std_logic;

            -- Outputs
            column_address : out std_logic_vector(7 downto 0);
            busy : out std_logic;
            sda : out std_logic;
            scl : out std_logic;
            oled_reset : out std_logic

            -- Inouts

        );
    end component;

begin

    process
        variable vhdl_initial : BOOLEAN := TRUE;

    begin
        if ( vhdl_initial ) then
            -- Assert Reset
            NSYSRESET <= '0';
            wait for ( SYSCLK_PERIOD * 10 );
            
            NSYSRESET <= '1';
			wait for ( SYSCLK_PERIOD * 10 );
			draw <= '1';
			wait for ( SYSCLK_PERIOD * 1 );
			draw <= '0';
            wait;
        end if;
    end process;

    -- 10MHz Clock Driver
    SYSCLK <= not SYSCLK after (SYSCLK_PERIOD / 2.0 );

    -- Instantiate Unit Under Test:  display
    display_0 : display
        -- port map
        port map( 
            -- Inputs
            clk => SYSCLK,
            reset => NSYSRESET,
            data => (others=> '0'),
            draw => draw,

            -- Outputs
            column_address => open,
            busy =>  open,
            sda =>  open,
            scl =>  open,
            oled_reset =>  open

            -- Inouts

        );

end behavioral;

