----------------------------------------------------------------------
-- Created by SmartDesign Tue Oct 01 21:37:54 2013
-- Version: v11.0 11.0.0.23
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library igloo;
use igloo.all;
library COREUART_LIB;
use COREUART_LIB.all;
use COREUART_LIB.uart0_uart0_0_components.all;
----------------------------------------------------------------------
-- uart0 entity declaration
----------------------------------------------------------------------
entity uart0 is
    -- Port list
    port(
        -- Inputs
        BAUD_VAL    : in  std_logic_vector(12 downto 0);
        BIT8        : in  std_logic;
        CLK         : in  std_logic;
        CSN         : in  std_logic;
        DATA_IN     : in  std_logic_vector(7 downto 0);
        ODD_N_EVEN  : in  std_logic;
        OEN         : in  std_logic;
        PARITY_EN   : in  std_logic;
        RESET_N     : in  std_logic;
        RX          : in  std_logic;
        WEN         : in  std_logic;
        -- Outputs
        DATA_OUT    : out std_logic_vector(7 downto 0);
        FRAMING_ERR : out std_logic;
        OVERFLOW    : out std_logic;
        PARITY_ERR  : out std_logic;
        RXRDY       : out std_logic;
        TX          : out std_logic;
        TXRDY       : out std_logic
        );
end uart0;
----------------------------------------------------------------------
-- uart0 architecture body
----------------------------------------------------------------------
architecture RTL of uart0 is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- uart0_uart0_0_COREUART   -   Actel:DirectCore:COREUART:5.2.2
component uart0_uart0_0_COREUART
    generic( 
        BAUD_VAL_FRCTN_EN : integer := 0 ;
        FAMILY            : integer := 20 ;
        RX_FIFO           : integer := 0 ;
        RX_LEGACY_MODE    : integer := 0 ;
        TX_FIFO           : integer := 0 
        );
    -- Port list
    port(
        -- Inputs
        BAUD_VAL          : in  std_logic_vector(12 downto 0);
        BAUD_VAL_FRACTION : in  std_logic_vector(2 downto 0);
        BIT8              : in  std_logic;
        CLK               : in  std_logic;
        CSN               : in  std_logic;
        DATA_IN           : in  std_logic_vector(7 downto 0);
        ODD_N_EVEN        : in  std_logic;
        OEN               : in  std_logic;
        PARITY_EN         : in  std_logic;
        RESET_N           : in  std_logic;
        RX                : in  std_logic;
        WEN               : in  std_logic;
        -- Outputs
        DATA_OUT          : out std_logic_vector(7 downto 0);
        FRAMING_ERR       : out std_logic;
        OVERFLOW          : out std_logic;
        PARITY_ERR        : out std_logic;
        RXRDY             : out std_logic;
        TX                : out std_logic;
        TXRDY             : out std_logic
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal DATA_OUT_net_0    : std_logic_vector(7 downto 0);
signal FRAMING_ERR_net_0 : std_logic;
signal OVERFLOW_net_0    : std_logic;
signal PARITY_ERR_net_0  : std_logic;
signal RXRDY_net_0       : std_logic;
signal TX_net_0          : std_logic;
signal TXRDY_net_0       : std_logic;
signal DATA_OUT_net_1    : std_logic_vector(7 downto 0);
signal OVERFLOW_net_1    : std_logic;
signal PARITY_ERR_net_1  : std_logic;
signal RXRDY_net_1       : std_logic;
signal TX_net_1          : std_logic;
signal TXRDY_net_1       : std_logic;
signal FRAMING_ERR_net_1 : std_logic;
----------------------------------------------------------------------
-- TiedOff Signals
----------------------------------------------------------------------
signal BAUD_VAL_FRACTION_const_net_0: std_logic_vector(2 downto 0);

begin
----------------------------------------------------------------------
-- Constant assignments
----------------------------------------------------------------------
 BAUD_VAL_FRACTION_const_net_0 <= B"000";
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 DATA_OUT_net_1       <= DATA_OUT_net_0;
 DATA_OUT(7 downto 0) <= DATA_OUT_net_1;
 OVERFLOW_net_1       <= OVERFLOW_net_0;
 OVERFLOW             <= OVERFLOW_net_1;
 PARITY_ERR_net_1     <= PARITY_ERR_net_0;
 PARITY_ERR           <= PARITY_ERR_net_1;
 RXRDY_net_1          <= RXRDY_net_0;
 RXRDY                <= RXRDY_net_1;
 TX_net_1             <= TX_net_0;
 TX                   <= TX_net_1;
 TXRDY_net_1          <= TXRDY_net_0;
 TXRDY                <= TXRDY_net_1;
 FRAMING_ERR_net_1    <= FRAMING_ERR_net_0;
 FRAMING_ERR          <= FRAMING_ERR_net_1;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- uart0_0   -   Actel:DirectCore:COREUART:5.2.2
uart0_0 : uart0_uart0_0_COREUART
    generic map( 
        BAUD_VAL_FRCTN_EN => ( 0 ),
        FAMILY            => ( 20 ),
        RX_FIFO           => ( 0 ),
        RX_LEGACY_MODE    => ( 0 ),
        TX_FIFO           => ( 0 )
        )
    port map( 
        -- Inputs
        BAUD_VAL          => BAUD_VAL,
        BIT8              => BIT8,
        CLK               => CLK,
        CSN               => CSN,
        DATA_IN           => DATA_IN,
        ODD_N_EVEN        => ODD_N_EVEN,
        OEN               => OEN,
        PARITY_EN         => PARITY_EN,
        RESET_N           => RESET_N,
        RX                => RX,
        WEN               => WEN,
        BAUD_VAL_FRACTION => BAUD_VAL_FRACTION_const_net_0, -- tied to X"0" from definition
        -- Outputs
        DATA_OUT          => DATA_OUT_net_0,
        OVERFLOW          => OVERFLOW_net_0,
        PARITY_ERR        => PARITY_ERR_net_0,
        RXRDY             => RXRDY_net_0,
        TX                => TX_net_0,
        TXRDY             => TXRDY_net_0,
        FRAMING_ERR       => FRAMING_ERR_net_0 
        );

end RTL;
