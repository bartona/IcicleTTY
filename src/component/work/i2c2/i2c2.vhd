----------------------------------------------------------------------
-- Created by SmartDesign Sat Sep 14 01:20:01 2013
-- Version: v11.0 11.0.0.23
----------------------------------------------------------------------

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

library igloo;
use igloo.all;
library COREI2C_LIB;
use COREI2C_LIB.all;
----------------------------------------------------------------------
-- i2c2 entity declaration
----------------------------------------------------------------------
entity i2c2 is
    -- Port list
    port(
        -- Inputs
        PADDR   : in  std_logic_vector(8 downto 0);
        PCLK    : in  std_logic;
        PENABLE : in  std_logic;
        PRESETN : in  std_logic;
        PSEL    : in  std_logic;
        PWDATA  : in  std_logic_vector(7 downto 0);
        PWRITE  : in  std_logic;
        SCLI    : in  std_logic_vector(0 to 0);
        SDAI    : in  std_logic_vector(0 to 0);
        -- Outputs
        INT     : out std_logic_vector(0 to 0);
        PRDATA  : out std_logic_vector(7 downto 0);
        SCLO    : out std_logic_vector(0 to 0);
        SDAO    : out std_logic_vector(0 to 0)
        );
end i2c2;
----------------------------------------------------------------------
-- i2c2 architecture body
----------------------------------------------------------------------
architecture RTL of i2c2 is
----------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- COREI2C   -   Actel:DirectCore:COREI2C:7.0.102
component COREI2C
    generic( 
        ADD_SLAVE1_ADDRESS_EN   : integer := 0 ;
        BAUD_RATE_FIXED         : integer := 1 ;
        BAUD_RATE_VALUE         : integer := 0 ;
        BCLK_ENABLED            : integer := 0 ;
        FIXED_SLAVE0_ADDR_EN    : integer := 1 ;
        FIXED_SLAVE0_ADDR_VALUE : integer := 16#60# ;
        FIXED_SLAVE1_ADDR_EN    : integer := 0 ;
        FIXED_SLAVE1_ADDR_VALUE : integer := 16#0# ;
        FREQUENCY               : integer := 30 ;
        GLITCHREG_NUM           : integer := 3 ;
        I2C_NUM                 : integer := 1 ;
        IPMI_EN                 : integer := 0 ;
        OPERATING_MODE          : integer := 2 ;
        SMB_EN                  : integer := 0 
        );
    -- Port list
    port(
        -- Inputs
        BCLK        : in  std_logic;
        PADDR       : in  std_logic_vector(8 downto 0);
        PCLK        : in  std_logic;
        PENABLE     : in  std_logic;
        PRESETN     : in  std_logic;
        PSEL        : in  std_logic;
        PWDATA      : in  std_logic_vector(7 downto 0);
        PWRITE      : in  std_logic;
        SCLI        : in  std_logic_vector(0 to 0);
        SDAI        : in  std_logic_vector(0 to 0);
        SMBALERT_NI : in  std_logic_vector(0 to 0);
        SMBSUS_NI   : in  std_logic_vector(0 to 0);
        -- Outputs
        INT         : out std_logic_vector(0 to 0);
        PRDATA      : out std_logic_vector(7 downto 0);
        SCLO        : out std_logic_vector(0 to 0);
        SDAO        : out std_logic_vector(0 to 0);
        SMBALERT_NO : out std_logic_vector(0 to 0);
        SMBA_INT    : out std_logic_vector(0 to 0);
        SMBSUS_NO   : out std_logic_vector(0 to 0);
        SMBS_INT    : out std_logic_vector(0 to 0)
        );
end component;
----------------------------------------------------------------------
-- Signal declarations
----------------------------------------------------------------------
signal APBslave_PRDATA       : std_logic_vector(7 downto 0);
signal INT_net_0             : std_logic_vector(0 to 0);
signal SCLO_net_0            : std_logic_vector(0 to 0);
signal SDAO_net_0            : std_logic_vector(0 to 0);
signal INT_net_1             : std_logic_vector(0 to 0);
signal SCLO_net_1            : std_logic_vector(0 to 0);
signal SDAO_net_1            : std_logic_vector(0 to 0);
signal APBslave_PRDATA_net_0 : std_logic_vector(7 downto 0);
----------------------------------------------------------------------
-- TiedOff Signals
----------------------------------------------------------------------
signal GND_net               : std_logic;

begin
----------------------------------------------------------------------
-- Constant assignments
----------------------------------------------------------------------
 GND_net    <= '0';
----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------
 INT_net_1(0)          <= INT_net_0(0);
 INT(0)                <= INT_net_1(0);
 SCLO_net_1(0)         <= SCLO_net_0(0);
 SCLO(0)               <= SCLO_net_1(0);
 SDAO_net_1(0)         <= SDAO_net_0(0);
 SDAO(0)               <= SDAO_net_1(0);
 APBslave_PRDATA_net_0 <= APBslave_PRDATA;
 PRDATA(7 downto 0)    <= APBslave_PRDATA_net_0;
----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- i2c2_0   -   Actel:DirectCore:COREI2C:7.0.102
i2c2_0 : COREI2C
    generic map( 
        ADD_SLAVE1_ADDRESS_EN   => ( 0 ),
        BAUD_RATE_FIXED         => ( 1 ),
        BAUD_RATE_VALUE         => ( 0 ),
        BCLK_ENABLED            => ( 0 ),
        FIXED_SLAVE0_ADDR_EN    => ( 1 ),
        FIXED_SLAVE0_ADDR_VALUE => ( 16#60# ),
        FIXED_SLAVE1_ADDR_EN    => ( 0 ),
        FIXED_SLAVE1_ADDR_VALUE => ( 16#0# ),
        FREQUENCY               => ( 30 ),
        GLITCHREG_NUM           => ( 3 ),
        I2C_NUM                 => ( 1 ),
        IPMI_EN                 => ( 0 ),
        OPERATING_MODE          => ( 2 ),
        SMB_EN                  => ( 0 )
        )
    port map( 
        -- Inputs
        BCLK           => GND_net, -- tied to '0' from definition
        PCLK           => PCLK,
        PENABLE        => PENABLE,
        PRESETN        => PRESETN,
        PSEL           => PSEL,
        PWRITE         => PWRITE,
        PADDR          => PADDR,
        PWDATA         => PWDATA,
        SCLI           => SCLI,
        SDAI           => SDAI,
        SMBALERT_NI(0) => GND_net, -- tied to '0' from definition
        SMBSUS_NI(0)   => GND_net, -- tied to '0' from definition
        -- Outputs
        INT            => INT_net_0,
        PRDATA         => APBslave_PRDATA,
        SCLO           => SCLO_net_0,
        SDAO           => SDAO_net_0,
        SMBALERT_NO    => OPEN,
        SMBA_INT       => OPEN,
        SMBSUS_NO      => OPEN,
        SMBS_INT       => OPEN 
        );

end RTL;
