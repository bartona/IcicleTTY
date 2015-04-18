----------------------------------------------------------------------
-- Created by Actel SmartDesign Sat Sep 14 01:20:01 2013
-- Parameters for COREI2C
----------------------------------------------------------------------


package coreparameters is
    constant ADD_SLAVE1_ADDRESS_EN : integer := 0;
    constant BAUD_RATE_FIXED : integer := 1;
    constant BAUD_RATE_VALUE : integer := 0;
    constant BCLK_ENABLED : integer := 0;
    constant FIXED_SLAVE0_ADDR_EN : integer := 1;
    constant FIXED_SLAVE0_ADDR_VALUE : integer := 0x60;
    constant FIXED_SLAVE1_ADDR_EN : integer := 0;
    constant FIXED_SLAVE1_ADDR_VALUE : integer := 0x0;
    constant FREQUENCY : integer := 30;
    constant GLITCHREG_NUM : integer := 3;
    constant HDL_license : string( 1 to 1 ) := "O";
    constant I2C_NUM : integer := 1;
    constant IPMI_EN : integer := 0;
    constant OPERATING_MODE : integer := 2;
    constant SMB_EN : integer := 0;
    constant testbench : string( 1 to 4 ) := "User";
end coreparameters;
