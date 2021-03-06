-- Version: v11.0 11.0.0.23

library ieee;
use ieee.std_logic_1164.all;
library igloo;
use igloo.all;

entity FIFO is

    port( DATA   : in    std_logic;
          Q      : out   std_logic;
          WE     : in    std_logic;
          RE     : in    std_logic;
          WCLOCK : in    std_logic;
          RCLOCK : in    std_logic;
          FULL   : out   std_logic;
          EMPTY  : out   std_logic;
          RESET  : in    std_logic;
          AEMPTY : out   std_logic;
          AFULL  : out   std_logic
        );

end FIFO;

architecture DEF_ARCH of FIFO is 

  component INV
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component FIFO4K18
    port( AEVAL11 : in    std_logic := 'U';
          AEVAL10 : in    std_logic := 'U';
          AEVAL9  : in    std_logic := 'U';
          AEVAL8  : in    std_logic := 'U';
          AEVAL7  : in    std_logic := 'U';
          AEVAL6  : in    std_logic := 'U';
          AEVAL5  : in    std_logic := 'U';
          AEVAL4  : in    std_logic := 'U';
          AEVAL3  : in    std_logic := 'U';
          AEVAL2  : in    std_logic := 'U';
          AEVAL1  : in    std_logic := 'U';
          AEVAL0  : in    std_logic := 'U';
          AFVAL11 : in    std_logic := 'U';
          AFVAL10 : in    std_logic := 'U';
          AFVAL9  : in    std_logic := 'U';
          AFVAL8  : in    std_logic := 'U';
          AFVAL7  : in    std_logic := 'U';
          AFVAL6  : in    std_logic := 'U';
          AFVAL5  : in    std_logic := 'U';
          AFVAL4  : in    std_logic := 'U';
          AFVAL3  : in    std_logic := 'U';
          AFVAL2  : in    std_logic := 'U';
          AFVAL1  : in    std_logic := 'U';
          AFVAL0  : in    std_logic := 'U';
          WD17    : in    std_logic := 'U';
          WD16    : in    std_logic := 'U';
          WD15    : in    std_logic := 'U';
          WD14    : in    std_logic := 'U';
          WD13    : in    std_logic := 'U';
          WD12    : in    std_logic := 'U';
          WD11    : in    std_logic := 'U';
          WD10    : in    std_logic := 'U';
          WD9     : in    std_logic := 'U';
          WD8     : in    std_logic := 'U';
          WD7     : in    std_logic := 'U';
          WD6     : in    std_logic := 'U';
          WD5     : in    std_logic := 'U';
          WD4     : in    std_logic := 'U';
          WD3     : in    std_logic := 'U';
          WD2     : in    std_logic := 'U';
          WD1     : in    std_logic := 'U';
          WD0     : in    std_logic := 'U';
          WW0     : in    std_logic := 'U';
          WW1     : in    std_logic := 'U';
          WW2     : in    std_logic := 'U';
          RW0     : in    std_logic := 'U';
          RW1     : in    std_logic := 'U';
          RW2     : in    std_logic := 'U';
          RPIPE   : in    std_logic := 'U';
          WEN     : in    std_logic := 'U';
          REN     : in    std_logic := 'U';
          WBLK    : in    std_logic := 'U';
          RBLK    : in    std_logic := 'U';
          WCLK    : in    std_logic := 'U';
          RCLK    : in    std_logic := 'U';
          RESET   : in    std_logic := 'U';
          ESTOP   : in    std_logic := 'U';
          FSTOP   : in    std_logic := 'U';
          RD17    : out   std_logic;
          RD16    : out   std_logic;
          RD15    : out   std_logic;
          RD14    : out   std_logic;
          RD13    : out   std_logic;
          RD12    : out   std_logic;
          RD11    : out   std_logic;
          RD10    : out   std_logic;
          RD9     : out   std_logic;
          RD8     : out   std_logic;
          RD7     : out   std_logic;
          RD6     : out   std_logic;
          RD5     : out   std_logic;
          RD4     : out   std_logic;
          RD3     : out   std_logic;
          RD2     : out   std_logic;
          RD1     : out   std_logic;
          RD0     : out   std_logic;
          FULL    : out   std_logic;
          AFULL   : out   std_logic;
          EMPTY   : out   std_logic;
          AEMPTY  : out   std_logic
        );
  end component;

  component GND
    port(Y : out std_logic); 
  end component;

  component VCC
    port(Y : out std_logic); 
  end component;

    signal WEAP, RESETP, \VCC\, \GND\ : std_logic;
    signal GND_power_net1 : std_logic;
    signal VCC_power_net1 : std_logic;

begin 

    \GND\ <= GND_power_net1;
    \VCC\ <= VCC_power_net1;

    REBUBBLEA : INV
      port map(A => RE, Y => WEAP);
    
    RESETBUBBLEA : INV
      port map(A => RESET, Y => RESETP);
    
    FIFOBLOCK0 : FIFO4K18
      port map(AEVAL11 => \GND\, AEVAL10 => \GND\, AEVAL9 => 
        \GND\, AEVAL8 => \GND\, AEVAL7 => \GND\, AEVAL6 => \GND\, 
        AEVAL5 => \GND\, AEVAL4 => \GND\, AEVAL3 => \GND\, AEVAL2
         => \GND\, AEVAL1 => \GND\, AEVAL0 => \VCC\, AFVAL11 => 
        \GND\, AFVAL10 => \GND\, AFVAL9 => \GND\, AFVAL8 => \GND\, 
        AFVAL7 => \GND\, AFVAL6 => \GND\, AFVAL5 => \GND\, AFVAL4
         => \GND\, AFVAL3 => \GND\, AFVAL2 => \GND\, AFVAL1 => 
        \VCC\, AFVAL0 => \GND\, WD17 => \GND\, WD16 => \GND\, 
        WD15 => \GND\, WD14 => \GND\, WD13 => \GND\, WD12 => 
        \GND\, WD11 => \GND\, WD10 => \GND\, WD9 => \GND\, WD8
         => \GND\, WD7 => \GND\, WD6 => \GND\, WD5 => \GND\, WD4
         => \GND\, WD3 => \GND\, WD2 => \GND\, WD1 => \GND\, WD0
         => DATA, WW0 => \GND\, WW1 => \GND\, WW2 => \GND\, RW0
         => \GND\, RW1 => \GND\, RW2 => \GND\, RPIPE => \GND\, 
        WEN => WE, REN => WEAP, WBLK => \GND\, RBLK => \GND\, 
        WCLK => WCLOCK, RCLK => RCLOCK, RESET => RESETP, ESTOP
         => \VCC\, FSTOP => \VCC\, RD17 => OPEN, RD16 => OPEN, 
        RD15 => OPEN, RD14 => OPEN, RD13 => OPEN, RD12 => OPEN, 
        RD11 => OPEN, RD10 => OPEN, RD9 => OPEN, RD8 => OPEN, RD7
         => OPEN, RD6 => OPEN, RD5 => OPEN, RD4 => OPEN, RD3 => 
        OPEN, RD2 => OPEN, RD1 => OPEN, RD0 => Q, FULL => FULL, 
        AFULL => AFULL, EMPTY => EMPTY, AEMPTY => AEMPTY);
    
    GND_power_inst1 : GND
      port map( Y => GND_power_net1);

    VCC_power_inst1 : VCC
      port map( Y => VCC_power_net1);


end DEF_ARCH; 

-- _Disclaimer: Please leave the following comments in the file, they are for internal purposes only._


-- _GEN_File_Contents_

-- Version:11.0.0.23
-- ACTGENU_CALL:1
-- BATCH:T
-- FAM:PA3LCLP
-- OUTFORMAT:VHDL
-- LPMTYPE:LPM_FIFO
-- LPM_HINT:NONE
-- INSERT_PAD:NO
-- INSERT_IOREG:NO
-- GEN_BHV_VHDL_VAL:F
-- GEN_BHV_VERILOG_VAL:F
-- MGNTIMER:F
-- MGNCMPL:T
-- DESDIR:C:/Users/Aaron/Desktop/fpga2/FPGA/smartgen\FIFO
-- GEN_BEHV_MODULE:F
-- SMARTGEN_DIE:IS4X2M1LPLV
-- SMARTGEN_PACKAGE:qn132
-- AGENIII_IS_SUBPROJECT_LIBERO:T
-- WWIDTH:1
-- RWIDTH:1
-- WDEPTH:3
-- RDEPTH:3
-- WE_POLARITY:0
-- RE_POLARITY:0
-- RCLK_EDGE:RISE
-- WCLK_EDGE:RISE
-- PMODE1:0
-- FLAGS:STATIC
-- AFVAL:2
-- AEVAL:1
-- ESTOP:NO
-- FSTOP:NO
-- AFVAL:2
-- AEVAL:1
-- AFFLAG_UNITS:WW
-- AEFLAG_UNITS:RW
-- DATA_IN_PN:DATA
-- DATA_OUT_PN:Q
-- WE_PN:WE
-- RE_PN:RE
-- WCLOCK_PN:WCLOCK
-- RCLOCK_PN:RCLOCK
-- ACLR_PN:RESET
-- FF_PN:FULL
-- EF_PN:EMPTY
-- AF_PN:AFULL
-- AE_PN:AEMPTY
-- AF_PORT_PN:AFVAL
-- AE_PORT_PN:AEVAL
-- RESET_POLARITY:1

-- _End_Comments_

