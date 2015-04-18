-- Actel Corporation Proprietary and Confidential
--  Copyright 2008 Actel Corporation.  All rights reserved.
-- ANY USE OR REDISTRIBUTION IN PART OR IN WHOLE MUST BE HANDLED IN
-- ACCORDANCE WITH THE ACTEL LICENSE AGREEMENT AND MUST BE APPROVED
-- IN ADVANCE IN WRITING.
--  Revision Information:
-- Jun09    Revision 4.1
-- Aug10    Revision 4.2
-- SVN Revision Information:
-- SVN $Revision: 8508 $
-- SVN $Date: 2009-06-15 16:49:49 -0700 (Mon, 15 Jun 2009) $
library Ieee;
use iEEE.STD_LOGic_1164.all;
library igloo;
entity uart0_uart0_0_fifO_256X8 is
port (CUARTIoi: out std_logIC_VECTOR(7 downto 0);
CUARTOLI: in std_logIC;
CUARTLLI: in STD_LOGIC;
CUARTili: in STD_LOGIc_vector(7 downto 0);
Wrb: in Std_logic;
Rdb: in STD_LOgic;
RESET: in sTD_LOGIC;
full: out std_logic;
Empty: out STD_Logic);
end entity uart0_uart0_0_FIFO_256x8;

architecture CUARTI1 of uart0_uart0_0_fifo_256X8 is

component uart0_uart0_0_FIFO_256x8_pa3
port (CUARTIIOI: in std_logiC_VECTOR(7 downto 0);
CUARTo0oi: out STD_LOGIC_vector(7 downto 0);
CUARTo1oi: in std_logIC;
re: in STD_logic;
CUARTLLI: in STD_Logic;
CUARToli: in std_logic;
FULL: out STD_LOgic;
EMPTY: out STD_LOGIC;
reseT: in std_lOGIC;
aempty: out std_loGIC;
afull: out std_logic;
CUARTLO0L: in STD_logic_vector(7 downto 0));
end component;

constant CUARTlo0l: std_LOGIC_VECTOr(7 downto 0) := "11111111";

signal aEMPTY: std_LOGIC;

signal AFULL: STD_LOGIC;

signal CUARTIOOI: STD_Logic_vector(7 downto 0);

signal CUARTOL0L: STD_LOGIC_Vector(7 downto 0);

signal CUARTLL0L: STD_LOGIC;

signal CUARTil0l: std_loGIC;

signal CUARTOI0L: sTD_LOGIC;

signal CUARTLi0l: STD_Logic;

begin
CUARTIOI <= CUARTOL0l;
full <= CUARTll0l;
EMPTY <= CUARTIL0L;
process (CUARToli)
begin
if (CUARToLI'EVENT and CUARTOLI = '1') then
CUARTOL0l <= CUARTiooi;
end if;
end process;
CUARTO0LI: uart0_uart0_0_fifo_256X8_PA3
port map (CUARTiioi => CUARTili,
CUARTo0oi => CUARTiooi,
CUARTo1oi => wrb,
re => RDB,
CUARTLli => CUARTlli,
CUARTolI => CUARToli,
aemPTY => aempty,
afULL => CUARTli0l,
full => CUARTll0l,
emPTY => CUARTIL0L,
Reset => RESET,
CUARTlo0l => CUARTlo0l);
end architecture CUARTI1;

library ieee;
use IEEE.std_logic_1164.all;
library igloo;
entity uart0_uart0_0_fifo_256x8_pa3 is
port (CUARTiioi: in STD_LOGIC_VEctor(7 downto 0);
CUARTO0OI: out std_logic_vector(7 downto 0);
CUARTo1oi: in std_lOGIC;
Re: in STD_Logic;
CUARTLLI: in STD_LOGIC;
CUARTOLI: in STD_LOGIC;
full: out std_logIC;
empty: out std_logic;
RESET: in STD_Logic;
AEMPTY: out STD_Logic;
AFULL: out stD_LOGIC;
CUARTLO0L: in Std_logic_vector(7 downto 0));
end entity uart0_uart0_0_fifo_256X8_PA3;

architecture CUARTI1 of uart0_uart0_0_fifO_256X8_PA3 is

component INV
port (a: in STD_Logic := 'U';
Y: out std_loGIC);
end component;

component FIFO4K18
port (AEVAL11,aevAL10,Aeval9,aeval8,aevaL7,AEVAL6,aeval5,aevaL4,AEVAL3,aeval2,aeval1,aeval0,AFVAL11,afval10,afval9,AFVAL8,AFVAL7,AFVal6,afval5,AFVAL4,AFVAL3,Afval2,afval1,afvaL0,wD17,wd16,WD15,WD14,WD13,wd12,wd11,wd10,WD9,WD8,wd7,WD6,WD5,wD4,wd3,WD2,wd1,WD0,WW0,WW1,ww2,RW0,rw1,RW2,rpipe,wen,REN,wblk,RBLK,wclk,RCLK,reset,ESTOP,fstop: in std_LOGIC := 'U';
RD17,RD16,rD15,rd14,RD13,rd12,RD11,RD10,rd9,RD8,rd7,rd6,RD5,rd4,RD3,rd2,RD1,rd0,full,AFULL,empty,AEMPty: out std_logic);
end component;

component vcc
port (y: out STD_LOGIc);
end component;

component gnd
port (Y: out STD_LOGIC);
end component;

signal CUARTl0LI: stD_LOGIC;

signal CUARTloli: std_logic;

signal CUARTIOLI: STD_LOGIC;

signal CUARTolli: std_logic_VECTOR(7 downto 0);

signal CUARTll0l: Std_logic;

signal CUARTIL0l: STD_LOgic;

signal CUARTI0LI: STD_LOGIC;

signal CUARTO1LI: STD_LOGIC;

begin
CUARTO0oi <= CUARTOLLI;
full <= CUARTLL0L;
empty <= CUARTIL0L;
aempty <= CUARTi0li;
afulL <= CUARTo1li;
CUARTllli: VCC
port map (y => CUARTLOLi);
CUARTilli: gnd
port map (y => CUARTioli);
CUARTL1LI: INV
port map (a => RE,
y => CUARTL0li);
CUARTI1LI: FIFO4K18
port map (aeval11 => CUARTiOLI,
aEVAL10 => CUARTioli,
Aeval9 => CUARTioli,
aevAL8 => CUARTIOLI,
aeval7 => CUARTIOLI,
aevaL6 => CUARTIOLI,
AEVAL5 => CUARTioli,
Aeval4 => CUARTioli,
Aeval3 => CUARTloli,
AEVAL2 => CUARTioli,
aeval1 => CUARTioli,
aevaL0 => CUARTioli,
AFVAL11 => CUARTioli,
AFVAL10 => CUARTLO0L(7),
afval9 => CUARTlo0l(6),
Afval8 => CUARTLO0L(5),
afvAL7 => CUARTlo0l(4),
afval6 => CUARTLO0L(3),
AFval5 => CUARTlo0l(2),
AFVAL4 => CUARTlo0l(1),
afval3 => CUARTLO0L(0),
afVAL2 => CUARTIOLI,
afval1 => CUARTiolI,
Afval0 => CUARTioli,
wd17 => CUARTIOLI,
wd16 => CUARTioli,
WD15 => CUARTIOLI,
wd14 => CUARTioli,
wd13 => CUARTIOLI,
wd12 => CUARTioli,
wd11 => CUARTioli,
WD10 => CUARTioli,
wd9 => CUARTioli,
wd8 => CUARTioli,
WD7 => CUARTiioi(7),
WD6 => CUARTIIOI(6),
wd5 => CUARTiioi(5),
WD4 => CUARTIIOI(4),
wd3 => CUARTIIOi(3),
wd2 => CUARTIIOi(2),
WD1 => CUARTiioi(1),
WD0 => CUARTiioI(0),
ww0 => CUARTLOLI,
ww1 => CUARTlolI,
ww2 => CUARTioli,
rw0 => CUARTloli,
rw1 => CUARTloli,
rw2 => CUARTioli,
Rpipe => CUARTioli,
Wen => CUARTO1OI,
REN => CUARTL0LI,
WBLK => CUARTIOLI,
rblK => CUARTIOLI,
WCLK => CUARTlli,
Rclk => CUARToli,
RESet => REset,
ESTOP => CUARTLOLI,
FSTOP => CUARTLoli,
RD17 => open ,
RD16 => open ,
rd15 => open ,
rd14 => open ,
RD13 => open ,
RD12 => open ,
RD11 => open ,
rd10 => open ,
rd9 => open ,
RD8 => open ,
RD7 => CUARTolLI(7),
RD6 => CUARTolli(6),
rd5 => CUARTolli(5),
rd4 => CUARTOLLI(4),
rd3 => CUARTOLLI(3),
rd2 => CUARTOLLI(2),
rd1 => CUARTOLLI(1),
rd0 => CUARTollI(0),
full => open ,
afull => CUARTLL0L,
Empty => CUARTil0l,
AEMPTY => CUARTi0li);
end architecture CUARTI1;
