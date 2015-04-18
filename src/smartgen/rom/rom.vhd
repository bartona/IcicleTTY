-- Version: v11.0 11.0.0.23

library ieee;
use ieee.std_logic_1164.all;
library igloo;
use igloo.all;

entity rom is

    port( CLK  : in    std_logic;
          ADDR : in    std_logic_vector(6 downto 0);
          DOUT : out   std_logic_vector(7 downto 0)
        );

end rom;

architecture DEF_ARCH of rom is 

  component UFROMH
    generic (MEMORYFILE:string := ""; ACT_PROGFILE:string := ""
        );

    port( CLK   : in    std_logic := 'U';
          DO0   : out   std_logic;
          DO1   : out   std_logic;
          DO2   : out   std_logic;
          DO3   : out   std_logic;
          DO4   : out   std_logic;
          DO5   : out   std_logic;
          DO6   : out   std_logic;
          DO7   : out   std_logic;
          ADDR0 : in    std_logic := 'U';
          ADDR1 : in    std_logic := 'U';
          ADDR2 : in    std_logic := 'U';
          ADDR3 : in    std_logic := 'U';
          ADDR4 : in    std_logic := 'U';
          ADDR5 : in    std_logic := 'U';
          ADDR6 : in    std_logic := 'U'
        );
  end component;

  component GND
    port(Y : out std_logic); 
  end component;

    signal U_7_PIN2 : std_logic;
    signal GND_power_net1 : std_logic;

begin 

    U_7_PIN2 <= GND_power_net1;

    UFROM0 : UFROMH
      generic map(MEMORYFILE => "rom.mem",
         ACT_PROGFILE => "rom.ufc")

      port map(CLK => CLK, DO0 => DOUT(0), DO1 => DOUT(1), DO2
         => DOUT(2), DO3 => DOUT(3), DO4 => DOUT(4), DO5 => 
        DOUT(5), DO6 => DOUT(6), DO7 => DOUT(7), ADDR0 => ADDR(0), 
        ADDR1 => ADDR(1), ADDR2 => ADDR(2), ADDR3 => ADDR(3), 
        ADDR4 => ADDR(4), ADDR5 => ADDR(5), ADDR6 => ADDR(6));
    
    GND_power_inst1 : GND
      port map( Y => GND_power_net1);


end DEF_ARCH; 

-- _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


-- _GEN_File_Contents_

-- Version:11.0.0.23
-- ACTGENU_CALL:1
-- BATCH:T
-- FAM:PA3LCLP
-- OUTFORMAT:VHDL
-- LPMTYPE:LPM_FROM
-- LPM_HINT:NONE
-- INSERT_PAD:NO
-- INSERT_IOREG:NO
-- GEN_BHV_VHDL_VAL:F
-- GEN_BHV_VERILOG_VAL:F
-- MGNTIMER:F
-- MGNCMPL:T
-- DESDIR:C:/Users/Aaron/Desktop/fpga2/FPGA/smartgen\rom
-- GEN_BEHV_MODULE:F
-- SMARTGEN_DIE:IS4X2M1LPLV
-- SMARTGEN_PACKAGE:qn132
-- AGENIII_IS_SUBPROJECT_LIBERO:T
-- MEMFILE:rom.mem
-- UFCFILE:rom.ufc

-- _End_Comments_

