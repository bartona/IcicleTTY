----------------------------------------------------------------------
-- Created by Actel SmartDesign Sat Sep 14 01:20:01 2013
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

    component i2c2
        -- ports
        port( 
            -- Inputs
            PCLK : in std_logic;
            PRESETN : in std_logic;
            PENABLE : in std_logic;
            PSEL : in std_logic;
            PWRITE : in std_logic;
            SCLI : in std_logic_vector(0 to 0);
            SDAI : in std_logic_vector(0 to 0);
            PADDR : in std_logic_vector(8 downto 0);
            PWDATA : in std_logic_vector(7 downto 0);

            -- Outputs
            INT : out std_logic_vector(0 to 0);
            SCLO : out std_logic_vector(0 to 0);
            SDAO : out std_logic_vector(0 to 0);
            PRDATA : out std_logic_vector(7 downto 0)

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

    -- Instantiate Unit Under Test:  i2c2
    i2c2_0 : i2c2
        -- port map
        port map( 
            -- Inputs
            PCLK => SYSCLK,
            PRESETN => NSYSRESET,
            PENABLE => '0',
            PSEL => '0',
            PWRITE => '0',
            SCLI => (others=> '0'),
            SDAI => (others=> '0'),
            PADDR => (others=> '0'),
            PWDATA => (others=> '0'),

            -- Outputs
            INT => open,
            SCLO => open,
            SDAO => open,
            PRDATA => open

            -- Inouts

        );

end behavioral;

