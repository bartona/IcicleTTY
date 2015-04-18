----------------------------------------------------------------------
-- Created by Actel SmartDesign Thu Sep 19 21:43:32 2013
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Company: <Name>
--
-- File: test.vhd
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

entity test is
end test;

architecture behavioral of test is

    constant SYSCLK_PERIOD : time := 100 ns;

    signal SYSCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';

    component top
        -- ports
        port( 
            -- Inputs
            clk : in std_logic;
            sw1 : in std_logic;
            SW5 : in std_logic;

            -- Outputs
            D1 : out std_logic;
            D2 : out std_logic;
            D3 : out std_logic;
            sda : out std_logic;
            scl : out std_logic;
            oled_reset : out std_logic;
			
			reset: in std_logic

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
            wait;
        end if;
    end process;

    -- 10MHz Clock Driver
    SYSCLK <= not SYSCLK after (SYSCLK_PERIOD / 2.0 );

    -- Instantiate Unit Under Test:  top
    top_0 : top
        -- port map
        port map( 
            -- Inputs
            clk => SYSCLK,
            sw1 => NSYSRESET,
            SW5 => NSYSRESET,
			reset => NSYSRESET,

            -- Outputs
            D1 =>  open,
            D2 =>  open,
            D3 =>  open,
            sda =>  open,
            scl =>  open,
            oled_reset =>  open
			
	

            -- Inouts

        );

end behavioral;

