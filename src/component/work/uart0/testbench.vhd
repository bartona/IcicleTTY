----------------------------------------------------------------------
-- Created by Actel SmartDesign Tue Oct 01 21:37:54 2013
-- Testbench Template
-- This is a basic testbench that instantiates your design with basic 
-- clock and reset pins connected.  If your design has special
-- clock/reset or testbench driver requirements then you should 
-- copy this file and modify it. 
----------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture behavioral of testbench is

    constant SYSCLK_PERIOD : time := 100 ns;

    signal SYSCLK : std_logic := '0';
    signal NSYSRESET : std_logic := '0';

    component uart0
        -- ports
        port( 
            -- Inputs
            BAUD_VAL : in std_logic_vector(12 downto 0);
            BIT8 : in std_logic;
            CLK : in std_logic;
            CSN : in std_logic;
            DATA_IN : in std_logic_vector(7 downto 0);
            ODD_N_EVEN : in std_logic;
            OEN : in std_logic;
            PARITY_EN : in std_logic;
            RESET_N : in std_logic;
            RX : in std_logic;
            WEN : in std_logic;

            -- Outputs
            DATA_OUT : out std_logic_vector(7 downto 0);
            OVERFLOW : out std_logic;
            PARITY_ERR : out std_logic;
            RXRDY : out std_logic;
            TX : out std_logic;
            TXRDY : out std_logic;
            FRAMING_ERR : out std_logic

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

    -- Instantiate Unit Under Test:  uart0
    uart0_0 : uart0
        -- port map
        port map( 
            -- Inputs
            BAUD_VAL => (others=> '0'),
            BIT8 => '0',
            CLK => SYSCLK,
            CSN => '0',
            DATA_IN => (others=> '0'),
            ODD_N_EVEN => '0',
            OEN => '0',
            PARITY_EN => '0',
            RESET_N => NSYSRESET,
            RX => '0',
            WEN => '0',

            -- Outputs
            DATA_OUT => open,
            OVERFLOW =>  open,
            PARITY_ERR =>  open,
            RXRDY =>  open,
            TX =>  open,
            TXRDY =>  open,
            FRAMING_ERR =>  open

            -- Inouts

        );

end behavioral;

