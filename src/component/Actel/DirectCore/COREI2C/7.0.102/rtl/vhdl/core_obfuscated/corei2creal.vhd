-- Copyright (c) 2009  Actel Corp.                             --
-- Revision: CoreI2C v6.0  18Aug2009
-- SVN Revision Information:
-- SVN $Revision: 15636 $
library ieEe;
use ieEE.nUMEriC_stD.all;
use Ieee.stD_logIC_1164.all;
use IeeE.sTD_loGIc_1164.all;
use ieEE.Std_LOgic_UnsIGNed. "+";
use IeeE.std_LogiC_unsIGned. "-";
use ieEE.NUmeRIC_sTD.all;
library corEI2c_LIb;
entity coREi2cREal is
generic (FAmiLY: INtegER := 17;
OpeRATinG_ModE: iNTegER := 0;
Baud_Rate_FixeD: iNTEgeR := 0;
baUD_raTE_vaLUE: INTegER := 0;
bCLk_eNAbleD: INtegER := 1;
gliTChreG_num: iNTEgeR := 3;
Smb_EN: iNTEgeR := 0;
ipMI_en: InteGEr := 1;
frEQuenCY: INTegeR := 30;
FixeD_slaVE0_aDDr_eN: IntEGEr := 0;
FixED_slAVe0_ADdr_ValUE: INtegER := 0;
aDD_slAVE1_ADDreSS_en: iNTegeR := 1;
FixeD_slaVE1_aDDR_eN: iNTegER := 0;
fixED_slAVe1_ADdr_VAlue: iNTEgeR := 0); port (pcLK: in std_LogiC;
pREsetN: in sTD_loGIC;
BclKE: in stD_LogIC;
PulsE_215US: in stD_loGIC;
SERadR0: in std_LogiC_vecTOr(7 downto 0);
SERadr1: in Std_LOgic_VectOR(7 downto 0);
sERAdr1APb0: in STd_lOGIc;
sCLI: in std_LogiC;
SdaI: in stD_LogIC;
Psel: in stD_logIC;
pENAblE: in stD_logIC;
pwrITe: in sTD_loGIC;
pADDr: in STD_loGIc_vECtor(4 downto 0);
PwdaTA: in STD_lOGIc_VECtoR(7 downto 0);
SClo: out stD_loGIC;
sdaO: out sTD_loGIC;
inT: out stD_logIC;
Smba_Int: out Std_LOgiC;
smBS_inT: out sTD_loGIC;
prDAta: out STd_LOGic_VEctoR(7 downto 0);
smbALert_Ni: in Std_LOGic;
SMbaLERt_NO: out std_LogIC;
smbSUs_nI: in Std_LOgic;
sMBsus_No: out STd_lOGic);
end COreI2CreAL;

architecture Rtl of COreI2CreAL is

function CI2CO1I(val: sTD_loGIc_vECtor)
return std_LogiC is
variable CI2Cl1i: sTD_loGIC := '0';
begin
for CI2Ci1I in VAl'range
loop
CI2Cl1i := CI2Cl1i or val(CI2Ci1i);
end loop;
return (CI2Cl1i);
end CI2Co1i;

function CI2Coo0(val: std_logic_vector)
return std_logic is
variable CI2Cl1i: std_logic := '1';
begin
for CI2Ci1i in val'range
loop
CI2Cl1i := CI2Cl1i and val(CI2Ci1i);
end loop;
return (CI2Cl1i);
end CI2Coo0;

constant CI2Clo0: std_logic_vector(1 downto 0) := std_logic_vector(to_unsigned(operating_mode,
2));

constant CI2Cio0: std_logic := CI2Clo0(1);

constant CI2Col0: std_logic := CI2Clo0(0);

constant CI2Cll0: integer := 4;

constant CI2Cil0: integer := GLitCHreg_Num+2;

constant CI2COI0: Std_LogiC_vecTOR(4 downto 0) := "00000";

constant CI2CLi0: std_LogiC_vecTOr(7 downto 0) := "00000000";

constant CI2Cii0: STd_lOGic_VEctoR(4 downto 0) := "00100";

constant CI2Co00: STd_LOGic_VEctOR(7 downto 0) := "11111000";

constant CI2CL00: sTD_loGIc_vECtor(4 downto 0) := "01000";

constant CI2Ci00: STD_lOGIc_VECtoR(7 downto 0) := "00000000";

constant CI2CO10: std_LogiC_vecTOr(4 downto 0) := "10000";

constant CI2Cl10: STd_LOGic_VEctOR(7 downto 0) := "01X1X000";

constant CI2CLL: std_LogiC_vecTOr(4 downto 0) := "01100";

constant CI2CIl: sTD_loGIC_vECTor(7 downto 0) := "00000000";

constant CI2COi: sTD_loGIc_vECtor(4 downto 0) := "11100";

constant CI2CLI: Std_LOgiC_VecTOR(7 downto 0) := "00000000";

type CI2Ci10 is (CI2Coo1,CI2CLo1,CI2CIO1,CI2Col1,CI2ClL1,CI2CIL1,CI2CoI1,CI2CLI1,CI2CII1,CI2CO01,CI2Cl01,CI2CI01,CI2Co11,CI2Cl11,CI2Ci11,CI2CoooL,CI2ClOOl,CI2CiOOL,CI2CoLOL,CI2ClloL,CI2CiLOL,CI2COIOl,CI2CliOL,CI2CiiOL,CI2CO0ol,CI2CL0ol,CI2Ci0oL,CI2Co1OL,CI2CL1Ol,CI2CI1ol);

--attribute syn_enum_encoding : string;
--attribute syn_enum_encoding of FSMSTA_TYPE : type is "gray";
type CI2COolL is (CI2CLOll,CI2CIOLl,CI2COLll,CI2ClLLl,CI2CIllL,CI2CoiLL,CI2CLilL);

--attribute syn_enum_encoding : string;
--attribute syn_enum_encoding of FSMDET_TYPE : type is "gray";
type CI2CIILl is (CI2CO0ll,CI2CL0ll,CI2Ci0lL,CI2Co1LL,CI2CL1Ll,CI2Ci1Ll,CI2CooIL,CI2CloiL);

--attribute syn_enum_encoding : string;
--attribute syn_enum_encoding of FSMSYNC_TYPE : type is "gray";
type CI2CiOIl is (CI2COlil,CI2ClliL,CI2CILil,CI2CoIIl,CI2CLIIl,CI2CiiIL,CI2CO0il);

--attribute syn_enum_encoding : string;
--attribute syn_enum_encoding of FSMMOD_TYPE : type is "gray";
constant CI2Cl0iL: inTEger := 164;

signal CI2CI0il: STD_lOGIc_VECtoR(7 downto 0);

signal CI2CO1iL: stD_loGIC;

constant CI2Cl1Il: iNTEgeR := 118;

signal CI2Ci1IL: Std_LOgiC_VecTOR(6 downto 0);

signal CI2COO0l: Std_LOgic;

constant CI2CLo0L: INteGER := 15;

signal CI2Cio0L: stD_LogIC_veCTOr(3 downto 0);

signal CI2Col0L: std_LogiC;

signal CI2CLL0l: CI2CiOIL;

signal CI2Cil0L: CI2CioiL;

signal CI2COI0l: CI2CiILL;

signal CI2ClI0l: CI2CiILL;

signal CI2Cii0L: CI2COOll;

signal CI2Co00l: CI2COOll;

signal CI2Cl00L: CI2Ci10;

attribute sYN_stATe_mAChinE: BOOleAN;

attribute Syn_StatE_macHIne of CI2Cl00L: signal is FALse;

signal CI2CI00L: CI2CI10;

signal CI2Co10l: stD_logIC_veCTor(2 downto 0);

signal CI2CL10l: std_LogiC;

signal CI2Ci10l: STd_lOGic;

signal CI2COO1l: STd_lOGic;

signal CI2ClO1L: sTD_loGIc;

signal CI2CIO1l: Std_LOgiC;

signal CI2COL1l: STd_lOGic;

signal CI2Cll1L: std_LogiC_vecTOr(7 downto 0);

signal CI2CIL1l: STD_loGIc_vECtor(7 downto 0);

signal CI2COi1l: std_LogiC_vecTOr(4 downto 0);

signal CI2Cli1L: stD_LogIC;

signal CI2CII1l: stD_LogIC;

signal CI2CO01l: STD_loGIc;

signal CI2Cl01L: STd_LOGic;

signal CI2Ci01l: std_LogiC;

signal CI2Co11L: stD_LogIC;

signal CI2Cl11L: Std_LOgic;

signal CI2CI11l: std_LogiC;

signal CI2COooI: STd_lOGic;

signal CI2CLOoi: Std_LOGic;

signal CI2CioOI: sTD_loGIC;

signal CI2COloI: Std_LogiC;

signal CI2CLloi: Std_LOgiC;

signal CI2CiloI: stD_LogIC;

signal CI2COioI: Std_LOgic;

signal CI2CLIoi: STd_LOGic;

signal CI2CIIoi: STD_lOGIc;

signal CI2CO0Oi: sTD_lOGIc;

signal CI2CL0oi: STd_LOGic;

signal CI2CI0oi: sTD_loGIC;

signal CI2Co1OI: stD_logIC;

signal Ack: stD_logIC;

signal CI2Cl1OI: Std_LOGic;

signal CI2Ci1oI: STd_lOGic_VEctoR(GliTCHreG_Num-1 downto 0);

signal CI2CooLI: STd_LOGic;

signal CI2CLOLi: STd_LOGic_VEctOR(gLITchREG_nUM-1 downto 0);

signal CI2CiOLi: Std_LOgiC;

signal CI2CoLLI: Std_LOgic;

signal CI2CLlli: stD_LogIC;

signal CI2CilLI: Std_LOgic;

signal CI2COIli: Std_LogiC;

signal CI2CLIli: STd_LOGic_VEctOR(3 downto 0);

signal CI2CIIli: Std_LOgic;

signal CI2Co0Li: stD_logIC_veCTor(3 downto 0);

signal CI2Cl0LI: STd_lOGic;

signal CI2Ci0LI: stD_logIC;

signal CI2Co1lI: std_LogiC;

signal CI2CL1Li: sTD_loGIc;

signal CI2CI1li: sTD_loGIc;

signal CI2COoii: Std_LOGic;

signal CI2CLOii: sTD_loGIC_vECTor(3 downto 0);

signal CI2CiOIi: sTD_loGIC;

signal CI2COLii: sTD_loGIC_vECTor(CI2Cll0-1 downto 0);

signal CI2ClLIi: stD_logIC;

signal CI2CilII: STD_lOGIc;

signal CI2CoiiI: STd_LOGic;

signal CI2CliII: Std_LOgiC;

signal CI2CIIii: stD_logIC;

signal CI2Co0Ii: Std_LOgic;

begin
CI2Cl0II: SdaO <= CI2CILIi;
CI2CI0Ii: scLO <= '0' when CI2CooOI = '1' else
CI2CoiiI;
CI2CO1ii: Int <= CI2CLiii;
CI2CL1Ii:
process (PClk,preSETn)
begin
if PreSETn = '0' then
CI2CilII <= '1';
elsif pcLK'evENt and pclK = '1' then
if ((CI2CL10l = '0') or (CI2CLL0l = CI2CoiIL)
or (CI2CLL0l = CI2COLil and CI2COLli = '0')) then
CI2CiLII <= '1';
elsif ((CI2CLL0l = CI2CLlil or CI2ClL0l = CI2CLIIl
or CI2CLL0l = CI2CO0il) or (CI2ColLI = '1' and CI2CLLli = '1')) then
CI2CilII <= '0';
elsif CI2CL00l = CI2Coi1 then
CI2CILIi <= '1';
elsif ((((CI2Cl00L = CI2CLI1 or CI2CL00l = CI2CO01) and (CI2Cio0 = '0')) or CI2Cl00l = CI2Ci01
or CI2Cl00L = CI2Co11
or CI2CL00l = CI2COOol
or CI2Cl00l = CI2Cl11
or CI2Cl00L = CI2Ci11
or CI2CL00l = CI2CioOL) and (CI2CLoiI = "0111" or CI2CLoii = "1000")) then
if CI2CloiI = "0111" and CI2CiLLI = '1' then
CI2CiliI <= not CI2CL1oi;
end if;
elsif (CI2Cl00l = CI2Coo1 or CI2CL00l = CI2Clo1
or CI2CL00l = CI2CiO1
or CI2Cl00L = CI2COL1
or CI2CL00l = CI2Cll1
or CI2CL00l = CI2CIl1
or ((CI2Cl00L = CI2CILOl or CI2CL00l = CI2COiol
or CI2CL00L = CI2CliOL) and (CI2Cio0 = '0'))) then
if (CI2CloII < "1000" or CI2CLOii = "1001") then
CI2CilII <= CI2CIO1l;
else
CI2CIliI <= '1';
end if;
else
CI2CiLIi <= '1';
end if;
end if;
end process;
CI2CI1Ii: CI2Co10L <= STd_lOGic_VECtoR(TO_uNSIgnED(bAUD_rATE_vALUe,
3)) when BAUd_RATe_fIXed = 1 else
(CI2Cll1L(7)&CI2CLL1l(1 downto 0));
CI2COO0i: CI2Cl10L <= CI2Cll1L(6) and CI2COIOI;
CI2CLO0I:
if (CI2COL0 = '0')
generate
CI2CI10L <= CI2CLL1l(5) and (not (CI2COO1l));
end generate;
CI2CIO0i:
if (CI2COL0 = '1')
generate
CI2Ci10l <= '0';
end generate;
CI2Col0I:
if (CI2Col0 = '0')
generate
CI2COO1L <= CI2Cll1l(4);
end generate;
CI2CLL0I:
if (CI2COL0 = '1')
generate
CI2COO1L <= '0';
end generate;
CI2CIL0I: CI2CLIII <= CI2CLL1L(3);
CI2COi0i: CI2CLo1l <= CI2Cll1L(2);
CI2Cli0I:
process (pCLk,PreSETn)
begin
if prESEtn = '0' then
CI2Cll1L <= CI2CLI0;
elsif pclK'eveNT and pCLK = '1' then
if ((penABLe = '1' and pwRITe = '1'
and PSEl = '1') and pADDr = CI2Coi0) then
CI2ClL1L <= pwdATa;
else
if (CI2Cl10L = '1') and (((CI2CLL0l = CI2CLLil or CI2CLl0L = CI2Co0iL) and (CI2CiI0l = CI2ClLLl)) or ((CI2ClOIi = "1000" and CI2COilI = '1') and (CI2CioII = '1' or CI2COllI = '1'))
or ((CI2ClOII = "0000" or CI2CloII = "1001") and (CI2CIi0l = CI2CLllL or CI2CIi0L = CI2CoilL)
and (CI2CoLLi = '1'))
or ((CI2CLoii = "0001" or CI2CloiI = "0010"
or CI2CloII = "0011"
or CI2ClOII = "0100"
or CI2CloII = "0101"
or CI2ClOII = "0110"
or CI2CLOIi = "0111"
or CI2ClOIi = "1000") and (CI2Cii0L = CI2ClLLL or CI2Cii0L = CI2CoiLL)
and (CI2CioII = '1' or CI2COLli = '1'))
or ((CI2CLOOi = '1') and (CI2ClioI = '1'))
or ((CI2Co1Il = '1') and (CI2CLIoi = '1'))
or ((CI2Coo0L = '1') and (CI2CliOI = '1')
and (CI2CL00l /= CI2CO1ol))
or ((CI2Col0L = '1') and (CI2CiiOI = '1'))
or ((CI2CiLOi = '1') and (CI2CLIoi = '1'))
or ((CI2CLL0l = CI2CliiL and CI2Cl1LI = '1'
and CI2CIoli = '1'))) then
CI2CLl1l(3) <= '1';
end if;
if (CI2CLl0l = CI2CLIil and CI2Ci1LI = '1') or (CI2Cii0L = CI2COIll)
or (CI2CioII = '0' and CI2COO1l = '1')
or (CI2CL10l = '0') then
CI2CLL1l(4) <= '0';
end if;
end if;
end if;
end process;
CI2CIi0i:
process (PClk,PreSETn)
begin
if PreSETn = '0' then
CI2Cil1L <= CI2Ci00;
ACk <= '1';
CI2CL1oi <= '1';
CI2CIo1L <= '1';
CI2Col1L <= '1';
elsif PCLk'eVEnt and pCLk = '1' then
if CI2Cl10l = '0' then
if ((PenABLe = '1' and pwrITe = '1'
and psEL = '1') and paDDR = CI2Cl00) then
CI2CiL1l <= pWData;
end if;
else
if CI2Cii0L = CI2CllLL then
if ((PEnabLE = '1' and PWriTE = '1'
and psEL = '1') and paDDR = CI2CL00) then
CI2CiL1l <= PwdaTA;
end if;
CI2CiO1l <= '0';
CI2COl1L <= '0';
elsif (CI2Cl00L = CI2Coo1 or CI2Cl00l = CI2CLO1
or CI2CL00l = CI2CIO1
or CI2CL00L = CI2COL1
or CI2CL00l = CI2Cll1
or CI2CL00L = CI2CIL1
or ((CI2CL00l = CI2CILol or CI2Cl00L = CI2COiol
or CI2CL00l = CI2CLioL) and (CI2CIo0 = '0'))) then
if CI2CLIIi = '1' then
aCK <= '1';
if ((peNAble = '1' and pwRIte = '1'
and PseL = '1') and pADDr = CI2CL00) then
CI2Cil1L <= PWdatA;
CI2CoL1L <= PWdaTA(7);
else
if CI2CioLI = '0' then
CI2CIO1l <= CI2COL1l;
else
CI2CIO1l <= '1';
end if;
end if;
else
if ((PEnabLE = '1' and pwrITe = '1'
and Psel = '1') and PAddR = CI2CL00) then
CI2Cil1L <= PwdaTA;
CI2CIo1L <= pwDAta(7);
else
if CI2COIli = '1' then
CI2CiL1l <= CI2CIL1l(6 downto 0)&ACk;
aCK <= CI2CoOLi;
end if;
if CI2CILli = '1' then
CI2Cio1L <= CI2Cil1L(7);
CI2COL1l <= '1';
end if;
end if;
end if;
elsif (((CI2CL00l = CI2CLI1 or CI2Cl00L = CI2Co01) and (CI2Cio0 = '0')) or CI2Cl00L = CI2CI01
or CI2Cl00L = CI2Co11
or CI2Cl00l = CI2CoOOL
or CI2CL00l = CI2Cl11
or CI2Cl00L = CI2Ci11
or CI2CL00L = CI2CIooL) then
if CI2CLIIi = '1' then
if ((PenABLe = '1' and pWRIte = '1'
and PSel = '1') and pADdr = CI2COi0) then
CI2CL1Oi <= pWDAta(2);
end if;
if ((PenABLe = '1' and PwriTE = '1'
and pseL = '1') and padDR = CI2CL00) then
CI2CIL1l <= PwdaTA;
end if;
else
if ((PenABle = '1' and pwRIte = '1'
and pSEL = '1') and paDDR = CI2Cl00) then
CI2CIL1l <= pwDAta;
elsif CI2COILi = '1' then
CI2Cil1L <= CI2CIl1L(6 downto 0)&ack;
ACK <= CI2COOLi;
end if;
end if;
CI2CiO1l <= '1';
else
if ((peNABle = '1' and pwrITe = '1'
and pSEL = '1') and padDR = CI2Cl00) then
CI2Cil1L <= pWDAta;
elsif CI2CoilI = '1' then
CI2CiL1L <= CI2CiL1l(6 downto 0)&aCK;
ack <= CI2COoli;
end if;
CI2CIO1l <= '1';
end if;
end if;
end if;
end process;
CI2Co00I:
process (pclK,PResETN)
begin
if PReseTN = '0' then
CI2Coi1L(4 downto 0) <= CI2Co00(4 downto 0);
elsif PCLk'EVEnt and PCLk = '1' then
if CI2CliII = '1' then
case CI2Cl00l is
when CI2CoO1 =>
CI2COI1l <= "00001";
when CI2CLo1 =>
CI2Coi1L <= "00010";
when CI2CiO1 =>
CI2CoI1l <= "00011";
when CI2COl1 =>
CI2COI1l <= "00100";
when CI2ClL1 =>
CI2Coi1L <= "00101";
when CI2Cil1 =>
CI2COI1l <= "00110";
when CI2COi1 =>
CI2COI1l <= "00111";
when CI2CLI1 =>
CI2Coi1L <= "01000";
when CI2CIi1 =>
CI2Coi1L <= "01001";
when CI2CO01 =>
CI2COi1l <= "01010";
when CI2Cl01 =>
CI2Coi1l <= "01011";
when CI2CI01 =>
CI2COI1L <= "01100";
when CI2CO11 =>
CI2COI1L <= "01101";
when CI2CL11 =>
CI2COI1L <= "01110";
when CI2CI11 =>
CI2COI1L <= "01111";
when CI2COOOL =>
CI2COI1L <= "10000";
when CI2CLOOL =>
CI2COI1L <= "10001";
when CI2CiOOl =>
CI2COi1l <= "10010";
when CI2COloL =>
CI2COI1l <= "10011";
when CI2CLLol =>
CI2Coi1L <= "10100";
when CI2CILol =>
CI2CoI1l <= "10101";
when CI2COioL =>
CI2COI1l <= "10110";
when CI2CLiol =>
CI2COi1L <= "10111";
when CI2CIiol =>
CI2COi1l <= "11000";
when CI2Co0Ol =>
CI2CoI1l <= "11001";
when CI2CI0Ol =>
CI2CoI1l <= "00000";
when CI2CO1ol =>
CI2Coi1L <= "11010";
when CI2CL1ol =>
CI2CoI1l <= "11011";
when CI2CI1Ol =>
CI2Coi1L <= "11100";
when others =>
CI2COI1l <= "11111";
end case;
else
CI2COI1l <= "11111";
end if;
end if;
end process;
CI2Cl00I:
if (Smb_EN = 1)
generate
process (PclK,PreSETn)
begin
if (PreSETn = '0') then
CI2Cli1L <= CI2CL10(7);
CI2CiI1l <= CI2CL10(6);
CI2CL01L <= CI2Cl10(4);
CI2Co11L <= CI2CL10(2);
CI2Cl11l <= CI2CL10(1);
CI2Ci11L <= CI2CL10(0);
elsif (pcLK'eVEnt and pcLK = '1') then
if (((PEnaBLE and pwrITe
and PseL)) = '1' and (PAddr = CI2Co10)) then
CI2CLi1l <= PwdaTA(7);
CI2CIi1L <= pWDAta(6);
CI2CL01l <= PwdATA(4);
CI2CO11l <= PwdATA(2);
CI2CL11l <= pWDAta(1);
CI2CI11l <= pWDAta(0);
elsif ((CI2Cli1L = '1') and (CI2CO1Il = '1')) then
CI2Cli1L <= '0';
end if;
end if;
end process;
process (PclK,PreSETn)
begin
if (PresETn = '0') then
CI2Co0OI <= '1';
CI2CI0Oi <= '1';
CI2Cl0OI <= '1';
CI2CO1oi <= '1';
elsif (pcLK'evENt and pCLK = '1') then
CI2Co0OI <= SMbsUS_ni;
CI2Ci0OI <= SmbALErt_NI;
CI2CL0oi <= CI2CO0oi;
CI2CO1oi <= CI2CI0oi;
end if;
end process;
CI2CIIoi <= '0';
CI2CoOOi <= CI2Cli1L;
smBSUs_NO <= CI2CiI1L;
CI2Co01L <= CI2CL0oi;
SmbaLErt_NO <= CI2Cl01L;
CI2Ci01l <= CI2CO1Oi;
CI2CLioi <= CI2CO11l;
SmbS_Int <= not (CI2CL0oi) when CI2Cl11L = '1' else
'0';
Smba_Int <= not (CI2CO1oi) when CI2CI11l = '1' else
'0';
end generate;
CI2CI00i:
if (Ipmi_En = 1)
generate
process (pCLk,prESetn)
begin
if (PReseTN = '0') then
CI2CO11L <= CI2CL10(2);
elsif (pCLK'EVEnt and PclK = '1') then
if (((penABle and pwRIte
and PSel)) = '1' and (PADdr = CI2CO10)) then
CI2CO11l <= pwdATA(2);
end if;
end if;
end process;
CI2CiiOI <= CI2Co11L;
CI2COOOi <= '0';
smbSUs_nO <= '1';
CI2Co01L <= '1';
SmbaLERt_NO <= '1';
CI2CI01L <= '1';
CI2CLioI <= '0';
SMbs_INt <= '0';
Smba_Int <= '0';
end generate;
CI2Co10i:
if ((SMb_eN = 0) and (ipMI_en = 0))
generate
CI2CiiOI <= '0';
CI2COooi <= '0';
SmbsUS_no <= '1';
CI2CO01l <= '1';
SmbaLErt_NO <= '1';
CI2Ci01L <= '1';
CI2CliOI <= '0';
sMBS_iNT <= '0';
SMba_INt <= '0';
end generate;
CI2Cl10i:
process (PclK,prESetn)
begin
if (pRESetN = '0') then
CI2CIooi <= '0';
CI2COLOi <= '0';
CI2CLloi <= '0';
elsif pcLK'EvenT and PClk = '1' then
CI2CIooi <= CI2CooOI;
CI2COLoi <= CI2CiOOi;
CI2ClLOI <= CI2COloI;
end if;
end process;
CI2CloOI <= '1' when ((CI2COLoi = '1') and (CI2CLLOi = '0')) else
'0';
CI2CI10i:
process (pCLk,PREsetN)
begin
if (pRESetN = '0') then
CI2ClOLi <= ( others => '1');
elsif (pcLK'evENT and pcLK = '1') then
if (CI2CL10l = '1') then
CI2CLoli <= (CI2CLolI(GliTCHreG_num-2 downto 0)&scLI);
else
CI2CLoli <= ( others => '1');
end if;
end if;
end process;
process (PclK,prESEtn)
begin
if (prESetn = '0') then
CI2CIOLi <= '1';
CI2CILli <= '0';
CI2CoiLI <= '0';
elsif (pcLK'evENT and PCLk = '1') then
if (CI2CO1i(CI2CLOLi) = '0') then
CI2CioLI <= '0';
if (CI2CioLI = '1') then
CI2CilLI <= '1';
else
CI2CILli <= '0';
end if;
elsif (CI2COo0(CI2ClOLI) = '1') then
CI2CioLI <= '1';
if ((not (CI2CIOLi)) = '1') then
CI2CoILi <= '1';
else
CI2CoILI <= '0';
end if;
else
CI2COIli <= '0';
CI2CILLi <= '0';
end if;
end if;
end process;
CI2Coo1I:
process (Pclk,PReseTN)
begin
if (PReseTN = '0') then
CI2Ci1OI <= ( others => '1');
elsif (Pclk'EveNT and pclK = '1') then
if (CI2CL10l = '1') then
CI2CI1oI <= (CI2Ci1OI(GLItcHREg_NUM-2 downto 0)&SDai);
else
CI2Ci1oI <= ( others => '0');
end if;
end if;
end process;
process (pcLK,preSEtn)
begin
if (PResETN = '0') then
CI2CooLI <= '1';
elsif (pcLK'evENT and PclK = '1') then
if (CI2CO1i(CI2CI1oi) = '0') then
CI2CoOLI <= '0';
elsif (CI2Coo0(CI2Ci1OI) = '1') then
CI2COOli <= '1';
end if;
end if;
end process;
CI2CLO1i:
process (Pclk,PReseTN)
begin
if PreSETn = '0' then
CI2CoLLi <= '0';
CI2ClLLI <= '0';
elsif PClk'evENT and PClk = '1' then
if (CI2CiOII = '0' and CI2Coo1L = '1') then
CI2CoLLI <= '0';
CI2CLlli <= '0';
elsif (CI2CoiOI = '0') then
CI2CoLLi <= '0';
CI2ClLLi <= '0';
else
if CI2Cii0L = CI2ClLLL then
CI2CllLI <= '1';
elsif CI2CLoii = "1000" and CI2CILLi = '1' then
CI2CLLLi <= '0';
end if;
if (CI2Cii0L = CI2CLLll or CI2Cii0L = CI2COIll) or ((CI2CL00l = CI2CLooL or CI2CL00l = CI2ColoL
or CI2CL00L = CI2Co0OL
or CI2CL00l = CI2CIIol
or CI2CL00l = CI2COi1
or CI2Cl00L = CI2ClLOl
or CI2CL00l = CI2Ci0OL) and (CI2ClIIi = '1')) then
CI2ColLI <= '0';
elsif ((CI2CLLli = '1' and CI2CloiI = "0111"
and CI2CilLI = '1'
and CI2CLo1l = '1') and (not ((CI2Cil1L(6 downto 0) = "0000000" and Ack = '1')))
and (((CI2CIL1l(6 downto 0) = seRAdr0(7 downto 1)) or (CI2CIl1l(6 downto 0) = "0000000" and ((seRAdr0(0))) = '1')) or ((((ADD_sLAVe1_ADdrESs_eN = 1) and (serADr1aPB0 = '1')) and (CI2CiL1L(6 downto 0) = seRADR1(7 downto 1))
and (fixed_slave1_addR_EN = 1)) or ((ADD_SLAVE1_ADDRESS_EN = 1) and (CI2CIL1L(6 downto 0) = SERADR1(7 downto 1))
and (FIXED_SLAVE1_ADDR_EN = 0))
or ((((ADD_SLAVE1_ADDRESS_EN = 1) and (SERADR1APB0 = '1')) and (CI2CIL1L(6 downto 0) = "0000000")
and (FIXED_SLAVE1_ADDR_EN = 0)))))
and ((not (CI2CioiI)) = '1' or CI2Cl00L = CI2Coi1)) then
CI2ColLI <= '1';
end if;
end if;
end if;
end process;
CI2CIo1i:
process (Pclk,PresETn)
begin
if (PReseTN = '0') then
CI2COLii <= ("000"&'0');
elsif (pCLk'EVEnt and PclK = '1') then
if (CI2COI0l = CI2CO1Ll) then
if (not ((CI2COlii = Std_LogiC_vecTOR(TO_uNSIgnED(CI2Cil0,
4))))) then
CI2COliI <= CI2ColII+"0001";
end if;
else
CI2COLii <= ("000"&'0');
end if;
end if;
end process;
CI2Col1I:
process (PCLk,pRESetN)
begin
if PReseTN = '0' then
CI2CLOii <= "1111";
elsif PclK'EVEnt and pcLK = '1' then
if CI2Cii0L = CI2CLlll then
CI2CLOIi <= "1111";
elsif ((CI2CII0l = CI2CoILl) or (CI2CLIii = '1' and CI2CiOLI = '0')) then
CI2CLoiI <= "1001";
elsif CI2CloiI = "1001" then
if (CI2CL00L = CI2CLLol or CI2CL00l = CI2CLool
or CI2Cl00L = CI2CO0oL
or CI2CL00L = CI2COLol
or CI2CL00l = CI2CiiOL) then
CI2ClOIi <= "0000";
else
if (CI2ClIIi = '0') and (CI2Coo1L = '0')
and (CI2CI10l = '0' or CI2Cl00l = CI2COO1
or CI2Cl00L = CI2Clo1) then
CI2CloII <= "0000";
else
CI2CLOii <= "1001";
end if;
end if;
elsif CI2CILLi = '1' then
if CI2ClOIi = "1000" then
if (CI2ClIII = '0') and (CI2COo1L = '0')
and (CI2CI10l = '0' or CI2CL00l = CI2COO1
or CI2CL00l = CI2CLO1) then
CI2CLOii <= "0000";
else
CI2CloII <= "1001";
end if;
else
CI2CLoiI <= CI2CLoii+'1';
end if;
end if;
end if;
end process;
CI2CLl1i: CI2COOIi <= '1' when ((CI2COI0l = CI2CL0ll or CI2Coi0L = CI2CL1ll
or CI2COI0l = CI2CI1Ll) or (CI2CioiI = '0' and CI2COO1l = '1')
or (CI2CiI0L = CI2COilL)
or (CI2CII0l = CI2CllLL)
or (CI2CLL0l = CI2CLiil and CI2CIOli = '0'
and CI2CoiII = '1')
or (CI2CLLii = '1' and CI2CiolI = '0'
and not (CI2CLl0l = CI2CiiiL))) else
'0';
CI2CiL1I:
process (pclK,PReseTN)
begin
if pRESetN = '0' then
CI2ClILI <= "0000";
CI2CIILi <= '0';
elsif PclK'EVEnt and Pclk = '1' then
if CI2CoOIi = '1' then
CI2ClILi <= "0000";
CI2CiILi <= '0';
else
case CI2CO10l is
when "000" =>
if CI2CliLI < "1111" then
CI2CLIli <= CI2CLili+'1';
CI2CIIli <= '0';
else
CI2CLILi <= "0000";
CI2CIili <= '1';
end if;
when "001" =>
if CI2CliLI < "1101" then
CI2CLIli <= CI2ClILi+'1';
CI2CiiLI <= '0';
else
CI2CLIli <= "0000";
CI2CIilI <= '1';
end if;
when "010" =>
if CI2ClILI < "1011" then
CI2CLILi <= CI2ClILi+'1';
CI2CIili <= '0';
else
CI2CLili <= "0000";
CI2CIili <= '1';
end if;
when "011" =>
if CI2CLili < "1001" then
CI2CliLI <= CI2CliLI+'1';
CI2CIIli <= '0';
else
CI2CliLI <= "0000";
CI2CIILi <= '1';
end if;
when "100" =>
if CI2CLIli < "1110" then
CI2CLILi <= CI2ClILI+'1';
CI2CIilI <= '0';
else
CI2CLILi <= "0000";
CI2CIili <= '1';
end if;
when "101" =>
if CI2CLIli < "1110" then
CI2CliLI <= CI2CLili+'1';
CI2CIilI <= '0';
else
CI2CLilI <= "0000";
CI2CiiLI <= '1';
end if;
when "110" =>
if CI2CLili < "1110" then
CI2ClILI <= CI2CliLI+'1';
CI2CiiLI <= '0';
else
CI2CliLI <= "0000";
CI2CiilI <= '1';
end if;
when others =>
if bcLKe = '1' then
if CI2ClILi < "0001" then
CI2CLili <= CI2CLIli+'1';
CI2CIilI <= '0';
else
CI2CLIli <= "0000";
CI2CIilI <= '1';
end if;
else
CI2CiILI <= '0';
end if;
end case;
end if;
end if;
end process;
CI2COI1i:
process (PclK,PReseTN)
begin
if pREsetN = '0' then
CI2Co0LI <= "0000";
CI2Cl0LI <= '0';
elsif pCLK'EVent and pCLK = '1' then
if CI2COOIi = '1' then
CI2CO0li <= "0000";
CI2CL0li <= '0';
else
if CI2CiiLI = '1' then
CI2CO0li <= CI2Co0LI+'1';
case CI2CO10l is
when "101" =>
if CI2Co0lI(0) = '1' then
CI2CL0li <= '1';
else
CI2Cl0LI <= '0';
end if;
when "000"
| "001"
| "010"
| "011" =>
if CI2CO0li(1 downto 0) = "11" then
CI2CL0li <= '1';
else
CI2Cl0LI <= '0';
end if;
when "100" =>
if CI2Co0Li = "1111" then
CI2Cl0LI <= '1';
else
CI2CL0li <= '0';
end if;
when others =>
CI2Cl0lI <= '1';
end case;
else
CI2CL0Li <= '0';
end if;
end if;
end if;
end process;
CI2ClI1i:
process (PCLk,pREsetN)
begin
if PreSEtn = '0' then
CI2Ci0LI <= '1';
CI2Co1LI <= '1';
elsif pCLK'EVEnt and PClk = '1' then
if CI2CooII = '1' then
CI2CI0li <= '1';
CI2CO1li <= '1';
else
if CI2CL0li = '1' then
CI2Ci0Li <= not CI2Ci0LI;
end if;
CI2CO1lI <= CI2Ci0LI;
end if;
end if;
end process;
CI2Cii1I: CI2Cl1lI <= (not CI2CO1li) and CI2Ci0lI;
CI2Co01I: CI2CI1li <= CI2CO1li and (not CI2Ci0LI);
CI2CL01i:
process (CI2CoI0l,CI2CiolI,CI2Cl1LI,CI2COLii,CI2CLIii,CI2CoOLi,CI2Coo1L,CI2CLoii,CI2Cll0L)
begin
CI2Cli0L <= CI2CloIL;
case CI2COI0l is
when CI2CO0ll =>
if CI2CiOLi = '0' then
CI2CLi0l <= CI2Cl0lL;
else
if CI2CL1li = '1' and not (CI2ClL0l = CI2COIIl or CI2Cll0L = CI2CliIL) then
CI2Cli0L <= CI2CI0ll;
else
CI2Cli0L <= CI2CO0Ll;
end if;
end if;
when CI2CL0ll =>
CI2CLI0l <= CI2CI0ll;
when CI2CI0ll =>
if CI2CL1Li = '1' then
if CI2CliII = '1' then
CI2Cli0L <= CI2Ci1Ll;
else
if CI2CoO1l = '1' and CI2CLOIi = "1001" then
CI2ClI0L <= CI2COoiL;
else
CI2Cli0L <= CI2Co1LL;
end if;
end if;
else
CI2CLI0l <= CI2Ci0LL;
end if;
when CI2CO1ll =>
if (CI2CoLII = stD_logIC_veCTor(to_UnsiGNed(CI2CIL0,
4))) then
if CI2CiOLI = '1' then
CI2CLi0L <= CI2CO0ll;
else
CI2Cli0L <= CI2CL1ll;
end if;
else
CI2CLI0l <= CI2Co1lL;
end if;
when CI2CL1lL =>
if CI2CiOLi = '1' then
CI2CLi0l <= CI2Co0Ll;
else
CI2ClI0l <= CI2CL1lL;
end if;
when CI2CI1Ll =>
if CI2ClIIi = '0' then
if CI2Coo1L = '1' then
CI2CLI0l <= CI2CooIL;
else
CI2CLi0l <= CI2Co1LL;
end if;
else
CI2ClI0l <= CI2CI1ll;
end if;
when CI2CooIL =>
if CI2COOLi = '0' then
CI2CLi0l <= CI2CLOil;
else
CI2ClI0L <= CI2COOil;
end if;
when others =>
CI2CLi0L <= CI2CLOil;
end case;
end process;
CI2CI01i:
process (pCLk,prESEtn)
begin
if PReseTN = '0' then
CI2COi0l <= CI2CO0lL;
CI2COIii <= '1';
elsif pCLk'EVEnt and PClk = '1' then
if CI2Cll0L = CI2COlil then
CI2COI0l <= CI2Co0LL;
else
CI2CoI0L <= CI2CLI0l;
end if;
if (CI2Cl10L = '1') and ((CI2CoI0L = CI2Cl0ll or CI2COI0l = CI2Ci0ll
or CI2Coi0l = CI2Ci1ll
or CI2Coi0l = CI2Cooil) or ((((CI2Cl00l = CI2Cilol or CI2Cl00l = CI2Coiol
or CI2Cl00l = CI2Ciiol
or CI2Cl00l = CI2Co0ol
or CI2Cl00l = CI2Cliol) and (CI2Cio0 = '0')) or CI2Cl00l = CI2Ci01
or CI2Cl00l = CI2Co11
or CI2Cl00l = CI2Coool
or CI2Cl00l = CI2Clool
or CI2Cl00l = CI2Cl11
or CI2Cl00l = CI2Ci11
or CI2Cl00l = CI2Ciool
or CI2Cl00l = CI2Colol
or CI2Cl00l = CI2CllOL) and (CI2CioLI = '0')
and (CI2CliII = '1'))) then
CI2COIii <= '0';
else
CI2COiii <= '1';
end if;
end if;
end process;
CI2Co11I:
process (CI2CL00l,CI2COIli,aCK,CI2CooLI,CI2CILii,CI2CLOIi,CI2ClO1l,CI2COLLi,CI2CLLli,CI2CiL1l,SEraDR0,serADr1)
begin
CI2CI00l <= CI2Cl0oL;
case CI2Cl00L is
when CI2CO1ol =>
CI2Ci00L <= CI2CO1ol;
when CI2Coo1 =>
if CI2CLoii = "1000" then
if aCK = '0' then
if CI2CoOLi = '1' then
CI2Ci00L <= CI2Col1;
else
CI2CI00L <= CI2Cio1;
end if;
elsif (CI2CiO0 = '0') then
if CI2CoolI = '1' then
CI2Ci00l <= CI2CII1;
else
CI2Ci00L <= CI2CLi1;
end if;
end if;
else
if (CI2CIliI = '1' and CI2CoolI = '0'
and CI2CoiLI = '1') then
CI2Ci00L <= CI2Coi1;
else
CI2CI00l <= CI2COO1;
end if;
end if;
when CI2Clo1 =>
if CI2CLOIi = "1000" then
if Ack = '0' then
if CI2CoolI = '1' then
CI2Ci00l <= CI2COl1;
else
CI2CI00l <= CI2CiO1;
end if;
elsif (CI2CIO0 = '0') then
if CI2CoolI = '1' then
CI2CI00l <= CI2CIi1;
else
CI2Ci00l <= CI2Cli1;
end if;
end if;
else
if (CI2CiLII = '1' and CI2CoOLi = '0'
and CI2COili = '1') then
CI2CI00l <= CI2COi1;
else
CI2CI00l <= CI2Clo1;
end if;
end if;
when CI2CIo1 =>
if CI2CloII = "1000" then
if CI2COoli = '1' then
CI2Ci00L <= CI2CiL1;
else
CI2CI00l <= CI2CLl1;
end if;
else
if (CI2CiLIi = '1' and CI2CooLI = '0'
and CI2CoILi = '1') then
CI2CI00l <= CI2CoI1;
else
CI2Ci00L <= CI2Cio1;
end if;
end if;
when CI2COl1 =>
if CI2CloII = "1000" then
if CI2COoli = '1' then
CI2CI00l <= CI2Cil1;
else
CI2CI00l <= CI2ClL1;
end if;
else
if CI2CILIi = '1' and CI2COoli = '0'
and CI2COili = '1' then
CI2CI00l <= CI2COI1;
else
CI2Ci00L <= CI2Col1;
end if;
end if;
when CI2CLl1 =>
if CI2CLOIi = "1000" then
if CI2CoOLi = '1' then
CI2CI00l <= CI2Cil1;
else
CI2CI00l <= CI2Cll1;
end if;
else
if (CI2CIlii = '1' and CI2CoolI = '0'
and CI2COili = '1') then
CI2CI00l <= CI2CoI1;
else
CI2Ci00L <= CI2CLL1;
end if;
end if;
when CI2CIL1 =>
if CI2CLOii = "1000" then
if CI2CoolI = '1' then
CI2CI00l <= CI2CIL1;
else
CI2Ci00L <= CI2CLl1;
end if;
else
if (CI2CILIi = '1' and CI2CoOLI = '0'
and CI2CoilI = '1') then
CI2Ci00L <= CI2Coi1;
else
CI2CI00L <= CI2CIL1;
end if;
end if;
when CI2COI1 =>
if CI2ColLI = '1' and CI2CllLI = '1'
and CI2CLOIi = "1000" then
if ((ACk = '1') and (CI2Cio0 = '0')) then
CI2CI00l <= CI2COIol;
else
if (CI2CIL1l(6 downto 0) = "0000000" and ((SEradR0(0))) = '1') then
CI2CI00l <= CI2CI11;
elsif ((CI2CIL1l(6 downto 0) = "0000000") and (serADr1(0) = '1')
and (adD_slaVE1_aDDresS_en = 1)) then
CI2Ci00l <= CI2Ci11;
else
CI2CI00l <= CI2CO11;
end if;
end if;
else
CI2CI00l <= CI2Coi1;
end if;
when CI2CLi1 =>
if ((CI2CloiI = "1000") and (CI2CIo0 = '0')) then
if (CI2CILii = '1' and CI2CoOLi = '0'
and CI2CoILI = '1') then
CI2CI00l <= CI2Coi1;
else
if CI2CILIi = '0' then
CI2Ci00l <= CI2Co01;
else
CI2CI00L <= CI2CL01;
end if;
end if;
else
CI2CI00l <= CI2Cli1;
end if;
when CI2Cii1 =>
CI2Ci00l <= CI2Cii1;
when CI2Co01 =>
if ((CI2Cloii = "1000") and (CI2Cio0 = '0')) then
if (CI2Cilii = '1' and CI2Cooli = '0'
and CI2Coili = '1') then
CI2Ci00l <= CI2Coi1;
else
if CI2Cilii = '0' then
CI2Ci00l <= CI2Co01;
else
CI2Ci00l <= CI2Cl01;
end if;
end if;
else
CI2Ci00l <= CI2Co01;
end if;
when CI2Cl01 =>
CI2Ci00l <= CI2Cl01;
when CI2Cl1ol =>
CI2Ci00l <= CI2Cl1ol;
when CI2Ci01 =>
if CI2Cloii = "1000" then
if CI2Cilii = '0' then
CI2Ci00l <= CI2COooL;
else
CI2Ci00L <= CI2CLOol;
end if;
else
CI2Ci00l <= CI2Ci01;
end if;
when CI2CO11 =>
if CI2CLoii = "1000" then
if CI2CilII = '0' then
CI2Ci00L <= CI2CoOOl;
else
CI2CI00l <= CI2ClooL;
end if;
else
CI2CI00l <= CI2Co11;
end if;
when CI2CooOL =>
if CI2CLOii = "1000" then
if CI2CilII = '0' then
CI2Ci00L <= CI2CooOL;
else
CI2CI00l <= CI2CLooL;
end if;
else
CI2Ci00L <= CI2COOOl;
end if;
when CI2ClOOl =>
CI2Ci00L <= CI2CLOOl;
when CI2Cl11 =>
if CI2CloII = "1000" then
if CI2CILii = '0' then
CI2CI00l <= CI2CIOOl;
else
CI2CI00l <= CI2COlol;
end if;
else
CI2Ci00L <= CI2CL11;
end if;
when CI2CI11 =>
if CI2ClOII = "1000" then
if CI2CILIi = '0' then
CI2Ci00L <= CI2CIool;
else
CI2CI00l <= CI2COlol;
end if;
else
CI2CI00l <= CI2CI11;
end if;
when CI2CIOol =>
if CI2CLoii = "1000" then
if CI2CiLIi = '0' then
CI2CI00l <= CI2CIool;
else
CI2CI00l <= CI2COlol;
end if;
else
CI2CI00l <= CI2CIOol;
end if;
when CI2ColoL =>
CI2Ci00L <= CI2COlol;
when CI2CLLol =>
CI2CI00l <= CI2CllOL;
when CI2CiloL =>
if ((CI2CLOii = "1000") and (CI2CiO0 = '0')) then
if CI2CoOLi = '1' then
CI2CI00l <= CI2CIiol;
else
if CI2CLo1l = '0' then
CI2CI00l <= CI2CO0ol;
else
CI2CI00l <= CI2CLiol;
end if;
end if;
else
if (((CI2CILIi and not (CI2COoli)
and CI2COILi)) = '1' and (CI2CIO0 = '0')) then
CI2CI00L <= CI2COi1;
else
CI2CI00l <= CI2CilOL;
end if;
end if;
when CI2COiol =>
if ((CI2CLOIi = "1000") and (CI2CiO0 = '0')) then
if CI2CooLI = '1' then
CI2Ci00L <= CI2CiIOL;
else
if CI2Clo1L = '0' then
CI2Ci00L <= CI2Co0OL;
else
CI2Ci00L <= CI2ClioL;
end if;
end if;
else
if (((CI2CilII and not (CI2CoolI)
and CI2CoILi)) = '1' and (CI2Cio0 = '0')) then
CI2CI00L <= CI2CoI1;
else
CI2CI00L <= CI2Coiol;
end if;
end if;
when CI2Cliol =>
if ((CI2Cloii = "1000") and (CI2Cio0 = '0')) then
if CI2Cooli = '1' then
CI2Ci00l <= CI2Ciiol;
else
if CI2Clo1l = '0' then
CI2Ci00l <= CI2Co0ol;
else
CI2Ci00l <= CI2Cliol;
end if;
end if;
else
if (((CI2Cilii and not (CI2Cooli)
and CI2Coili)) = '1' and (CI2Cio0 = '0')) then
CI2Ci00l <= CI2Coi1;
else
CI2Ci00l <= CI2Cliol;
end if;
end if;
when CI2Ciiol =>
CI2Ci00l <= CI2Ciiol;
when CI2Co0ol =>
CI2Ci00l <= CI2Co0ol;
when CI2Ci0ol =>
CI2Ci00l <= CI2Ci0ol;
when CI2Ci1ol =>
CI2Ci00l <= CI2Ci1ol;
when others =>
CI2Ci00l <= CI2Cl0ol;
end case;
end process;
CI2Cl11i:
process (pclk,presetn)
begin
if pREseTN = '0' then
CI2CL00l <= CI2Cl0OL;
CI2CILOi <= '0';
CI2COIOi <= '1';
elsif Pclk'eVEnt and PClk = '1' then
if ((CI2CLOoi = '1') and (CI2CliOI = '1')) then
CI2CilOI <= '0';
CI2CoIOi <= '1';
CI2CL00l <= CI2CO1ol;
elsif ((CI2Co1IL = '1') and (CI2CliOI = '1')) then
CI2CIloI <= '0';
CI2CoioI <= '0';
CI2CL00l <= CI2Cl0oL;
elsif ((CI2COo0l = '1') and (CI2CLioi = '1')
and (CI2Cl00L /= CI2Co1oL)
and (CI2CioiI /= '1')) then
CI2CIloI <= '0';
CI2COioI <= '1';
CI2Cl00L <= CI2Cl1OL;
elsif ((CI2COl0L = '1') and (CI2CiIOI = '1')) then
CI2CilOI <= '0';
CI2CoIOI <= '1';
CI2Cl00l <= CI2CL1ol;
elsif ((CI2CL00l = CI2Cl1OL) and (CI2CLiiI /= '1')
and (CI2CLioi = '1')) then
CI2CIloi <= '1';
CI2COioi <= '0';
CI2CL00l <= CI2CL0ol;
elsif CI2CII0l = CI2ClllL and CI2Cll0L = CI2CllIL then
CI2CIloi <= '0';
CI2COIoi <= '1';
CI2CL00L <= CI2COo1;
elsif CI2CIi0l = CI2CllLL and CI2Cll0L = CI2CO0Il then
CI2CILoi <= '0';
CI2COioi <= '1';
CI2Cl00L <= CI2CLo1;
elsif CI2Cll0L = CI2CLiil and CI2Ci1LI = '1' then
CI2CL00l <= CI2CI1Ol;
elsif CI2Cii0L = CI2ClLLl or CI2CIi0l = CI2CoILL then
if (CI2CLoii = "0000" or CI2CLOii = "1001") and (CI2CLiii = '0') then
if CI2COLLi = '1' then
CI2CILoi <= '0';
CI2COIoi <= '1';
CI2CL00l <= CI2CLLol;
else
CI2CilOI <= '0';
CI2COioi <= '1';
CI2Cl00L <= CI2Cl0OL;
end if;
elsif ((CI2ClOIi = "0001" or CI2CLOIi = "0010"
or CI2CLoiI = "0011"
or CI2CLOIi = "0100"
or CI2CloII = "0101"
or CI2CloII = "0110"
or CI2CLOii = "0111"
or CI2CLOIi = "1000") and (CI2CoLLi = '1' or CI2CIOIi = '1')) then
CI2CilOI <= '0';
CI2CoIOi <= '1';
CI2CL00l <= CI2CI0ol;
end if;
elsif (CI2CloII = "1000" and CI2CoiLI = '1'
and CI2ColLI = '1'
and CI2ClLLi = '1'
and not (CI2Cl00L = CI2Coi1)) then
if ack = '0' then
if CI2CIl1l(6 downto 0) = "0000000" then
CI2CIloi <= '0';
CI2CoiOI <= '1';
CI2CL00l <= CI2CL11;
else
CI2CILoi <= '0';
CI2CoIOi <= '1';
CI2CL00l <= CI2Ci01;
end if;
elsif (CI2CiO0 = '0') then
CI2CIloi <= '0';
CI2COIoi <= '1';
CI2CL00L <= CI2CILol;
end if;
else
if CI2COILi = '1' then
CI2CilOI <= '0';
CI2COIoi <= '1';
CI2CL00l <= CI2Ci00L;
end if;
end if;
end if;
end process;
CI2CI11i:
process (CI2Cii0L,CI2CooLI)
begin
CI2Co00l <= CI2CLill;
case CI2CII0l is
when CI2CLolL =>
if CI2COolI = '0' then
CI2Co00L <= CI2COLll;
else
CI2Co00L <= CI2CIoll;
end if;
when CI2CiOLL =>
if CI2CooLI = '0' then
CI2Co00L <= CI2CLLll;
else
CI2CO00l <= CI2CIOll;
end if;
when CI2CollL =>
if CI2CooLI = '0' then
CI2CO00L <= CI2CollL;
else
CI2CO00l <= CI2COILl;
end if;
when CI2ClllL =>
CI2CO00l <= CI2CILll;
when CI2CillL =>
if CI2CooLI = '0' then
CI2Co00L <= CI2CiLLl;
else
CI2CO00l <= CI2COill;
end if;
when CI2COILl =>
CI2Co00L <= CI2CLIll;
when others =>
if CI2CoOLi = '0' then
CI2CO00l <= CI2CLlll;
else
CI2CO00l <= CI2CLILl;
end if;
end case;
end process;
CI2COOo0:
process (PClk,PResETN)
begin
if prESetn = '0' then
CI2CiI0L <= CI2CloLL;
elsif Pclk'eveNT and PclK = '1' then
if CI2CIOLi = '0' then
CI2CIi0L <= CI2ClOLL;
else
CI2CIi0l <= CI2CO00l;
end if;
end if;
end process;
CI2CLOo0:
process (PClk,PReseTN)
begin
if PreSETn = '0' then
CI2CLlii <= '1';
elsif pclK'EVent and pCLk = '1' then
if CI2CIi0l = CI2ClLLL then
CI2ClliI <= '0';
elsif ((CI2CIi0l = CI2CoILL) or (CI2CLL0l = CI2ClIIL and CI2CL1Li = '1'
and CI2CIOLi = '1')
or (CI2CIOii = '0' and CI2Coo1L = '1')
or (CI2CL10l = '0')) then
CI2CLLii <= '1';
end if;
end if;
end process;
CI2CIOO0:
process (pclK,pRESetn)
begin
if pRESetN = '0' then
CI2CIIii <= '0';
elsif Pclk'EVent and pCLk = '1' then
if CI2ClL0l = CI2CIIil then
if CI2COILi = '1' then
CI2CiiII <= '1';
end if;
else
CI2CiIII <= '0';
end if;
end if;
end process;
CI2CoLO0:
process (Pclk,PresETn)
begin
if PreSETn = '0' then
CI2CO0Ii <= '0';
elsif pcLK'EVenT and pCLk = '1' then
if (CI2ClliI = '1' and CI2CioLI = '1'
and not (CI2CLL0l = CI2CiiIL)) then
if CI2Cl1LI = '1' then
CI2Co0iI <= '1';
end if;
else
CI2CO0II <= '0';
end if;
end if;
end process;
CI2ClLo0:
process (CI2CLL0l,CI2COOLI,CI2CIOLI,CI2CI1LI,CI2CL1LI,CI2COO1L,CI2CI10L,CI2CILLI,CI2CLOII,CI2CO0II,CI2CLIII,CI2Cl00l,CI2Coili,CI2Ciiii)
begin
CI2Cioii <= '1';
CI2Cil0l <= CI2Co0il;
case CI2Cll0l is
when CI2Colil =>
CI2Cioii <= '0';
if (CI2Co0II = '1' and CI2CI10l = '1'
and CI2CLiii = '0'
and CI2CL1lI = '1') then
if CI2COOli = '0' then
CI2CIL0l <= CI2CiiIL;
else
CI2CIL0l <= CI2ClLIl;
end if;
else
CI2CIL0l <= CI2COLil;
end if;
when CI2CLLIl =>
CI2CioiI <= '1';
if CI2CiLLI = '1' then
CI2CIl0l <= CI2CILIl;
else
CI2CIL0l <= CI2CLlil;
end if;
when CI2CiLIL =>
CI2CiOII <= '1';
if CI2ClOII = "1001" and CI2CLIii = '0' then
if CI2Coo1L = '1' then
CI2CiL0l <= CI2CLiil;
elsif (CI2Ci10L = '1' and not (CI2CL00l = CI2COo1 or CI2Cl00l = CI2Clo1)
and CI2CI1lI = '1') then
CI2CIl0L <= CI2COIil;
else
CI2CIL0l <= CI2CILil;
end if;
else
CI2Cil0L <= CI2CIlil;
end if;
when CI2CoIIl =>
CI2CIoii <= '1';
if (CI2CL1Li = '1' or CI2Ci1lI = '1') and CI2CIOLi = '1' then
CI2CIl0L <= CI2Co0IL;
else
CI2Cil0L <= CI2COiiL;
end if;
when CI2CliIL =>
CI2CioiI <= '1';
if CI2CIolI = '1' and CI2CL1li = '1' then
CI2CIl0l <= CI2COLIl;
else
CI2Cil0L <= CI2CliIL;
end if;
when CI2CIIIl =>
CI2CioII <= '0';
if CI2CIIIi = '1' and CI2COili = '1' then
CI2CIl0l <= CI2COLil;
else
CI2CIL0l <= CI2CiiiL;
end if;
when others =>
CI2CiOII <= '1';
if CI2CILli = '1' then
CI2CIl0l <= CI2CiliL;
else
CI2CIL0l <= CI2Co0IL;
end if;
end case;
end process;
CI2CILo0:
process (pcLK,pRESetN)
begin
if PresETn = '0' then
CI2CLl0L <= CI2COLIl;
elsif pCLK'evENT and pcLK = '1' then
if ((CI2Cii0L = CI2CoilL) or (CI2CL00l = CI2COI1 and CI2CloiI = "1000"
and CI2CoILI = '1')
or (CI2Cl10L = '0')) then
CI2CLL0l <= CI2ColiL;
else
CI2Cll0L <= CI2CiL0L;
end if;
end if;
end process;
CI2Coio0: PRdaTA <= CI2ClL1L when padDR = CI2Coi0 else
CI2CIL1l when PADdr = CI2CL00 else
(CI2COI1l&"000") when PaddR = CI2CII0 else
SERadR0 when padDR = CI2Cll else
SeraDR1 when padDR = CI2Coi else
(CI2CLI1l&CI2CIi1l&CI2CO01l&CI2CL01l&CI2Ci01L&CI2Co11L&CI2Cl11l&CI2CI11l) when (PADdr = CI2Co10) and (SMB_eN = 1) else
("00000"&CI2CO11l&"00") when (PadDR = CI2Co10) and (Ipmi_En = 1) else
"00000000";
CI2ClIO0:
process (PclK,PresETn)
begin
if (PREseTN = '0') then
CI2CI0il <= ( others => '0');
elsif pCLk'EveNT and pcLK = '1' then
if (CI2ClIOI = '1') then
if (CI2CLooI = '1') then
CI2CI0iL <= ( others => '0');
elsif (CI2CooOI = '0') then
CI2CI0Il <= ( others => '0');
elsif ((CI2CI0il /= Std_LOgic_VecTOR(TO_unSIGneD(CI2CL0il,
8))) and (puLSe_215us = '1')) then
CI2CI0il <= CI2CI0il+1;
end if;
end if;
end if;
end process;
CI2CO1Il <= '1' when (((CI2Ci0IL >= Std_LOgic_VectOR(to_UnsiGNed(CI2CL0il,
8))) and (CI2COOoi = '1')) or (CI2CliOI = '0')) else
'0';
CI2CiiO0:
process (pCLk,preSEtn)
begin
if (preSEtn = '0') then
CI2CI1il <= ( others => '0');
elsif pcLK'eVENt and PCLk = '1' then
if (CI2CLioi = '1') then
if (CI2CIoli = '1') then
CI2CI1il <= ( others => '0');
elsif ((CI2Ci1IL /= STd_LOGic_VEctOR(to_UnsIGNed(CI2CL1iL,
7))) and (PulsE_215US = '1')) then
CI2Ci1iL <= CI2Ci1Il+1;
end if;
end if;
end if;
end process;
CI2Coo0L <= '1' when (((CI2CI1il = sTD_loGIc_vECtor(tO_UnsIGNed(CI2CL1il,
7))-1) and (PUlse_215uS = '1')) or (CI2CLIoi = '0')) else
'0';
process (pCLK,preSEtn)
begin
if (prESetn = '0') then
CI2CIO0l <= "0000";
elsif (Pclk'EVenT and PClk = '1') then
if (CI2CiIOi = '1') then
if (CI2CioLI = '1') then
CI2CiO0l <= "0000";
elsif ((CI2CIO0l /= std_LogiC_vecTOr(to_UNsigNED(CI2CLo0L,
4))) and (PULse_215uS = '1')) then
CI2CIO0l <= CI2Cio0L+"0001";
end if;
end if;
end if;
end process;
CI2Col0L <= '1' when ((CI2CIo0l = (sTD_loGIc_vECtor(TO_unSIgneD(CI2CLO0l,
4))-"0001")) and (PulsE_215US = '1')) or (CI2CiIOi = '0') else
'0';
end RTl;
