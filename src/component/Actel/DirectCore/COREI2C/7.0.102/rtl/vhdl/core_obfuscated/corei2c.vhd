-- Copyright (c) 2009  Actel Corp.                             --
-- Revision:                    : CoreI2C v5.0  08Aug2009
-- SVN Revision Information:
-- SVN $Revision: 15636 $
library iEee;
use ieEE.nuMERic_std.all;
use Ieee.STd_lOGic_1164.all;
use ieeE.stD_LogIC_1164.all;
use ieEE.stD_logIC_unSIGneD. "+";
use ieEE.sTD_loGIc_uNSigNEd. "-";
use iEEe.NUmerIC_stD.all;
library CORei2C_liB;
entity coREi2c is
generic (FamILY: inTEger := 17;
oPEratING_mODE: IntEGEr := 0;
Baud_Rate_FixeD: INtegER := 0;
BAud_RAte_VAlue: intEGer := 0;
bCLk_eNAbleD: iNteGer := 1;
gLITchreg_NUM: INTEGER := 3;
SMB_EN: INTEGER := 0;
IPMI_EN: INTEGER := 1;
FREQUENCY: INTEGER := 30;
FIXED_SLAVE0_ADDR_EN: INTEGER := 0;
FIXED_SLAVE0_ADDR_VALUE: INTEGER := 0;
ADD_SLAVE1_ADDRESS_EN: INTEGER := 1;
FIXED_SLAVE1_ADDR_EN: INTEGER := 0;
FIXED_SLAVE1_ADDR_VALUE: INTEGER := 0;
I2c_num: integer := 1); port (pclk: in std_logic;
presetn: in std_logic;
bclk: in std_logic;
scli: in std_logic_vector(i2c_num-1 downto 0);
sdai: in std_logic_vector(i2c_num-1 downto 0);
psel: in std_logic;
penable: in std_logic;
pwrite: in std_logic;
paddr: in std_logic_vector(8 downto 0);
pwdata: in std_logic_vector(7 downto 0);
sclo: out StD_loGIc_vECtor(I2c_NUm-1 downto 0);
SdaO: out sTD_loGIc_vECtor(I2c_NUM-1 downto 0);
int: out Std_LOgiC_VecTOR(i2C_num-1 downto 0);
smbA_int: out STd_LOGic_VEctoR(i2C_nuM-1 downto 0);
smbS_int: out stD_logIC_veCTor(I2c_NUM-1 downto 0);
PrdaTA: out stD_logIC_veCTor(7 downto 0);
sMBaleRT_ni: in STd_lOGic_VEctoR(I2c_NUm-1 downto 0);
SMBalERT_nO: out Std_LOgiC_VecTOR(i2C_Num-1 downto 0);
SMbsuS_ni: in std_LogiC_vecTOr(I2c_NUm-1 downto 0);
smBSus_NO: out stD_logIC_veCTor(I2c_NUm-1 downto 0));
end CoreI2c;

architecture RTL of CoREI2c is

function CI2CO(CI2Cl: poSItivE)
return NAturAL is
variable CI2CI,CI2Col: iNTegeR;
begin
CI2CI := 1;
CI2CoL := 0;
while CI2Ci < CI2CL
loop
CI2CI := CI2CI*2;
CI2Col := CI2COl+1;
end loop;
return CI2CoL;
end CI2Co;

component cOREi2CREal
generic (faMIly: InteGEr := 17;
opeRAtinG_modE: inTEGer := 0;
baUD_raTE_fiXEd: inTEger := 0;
BauD_RatE_ValUE: InteGEr := 0;
bCLk_eNAbleD: intEGEr := 1;
GLItcHREg_NUM: inTEger := 3;
smB_En: inTEger := 0;
iPMi_eN: INtegER := 0;
FreQUEncy: INTegeR := 30;
fIXed_SLave0_addR_en: intEGer := 0;
FixeD_slaVE0_aDDR_vALue: InteGER := 0;
aDD_slAVe1_ADdreSS_en: intEGer := 0;
FIxed_SlavE1_adDR_en: inTEger := 0;
fiXED_sLAVe1_ADdr_ValuE: iNTEger := 0);
port (pcLK: in sTD_loGIc;
PreSETn: in stD_loGIC;
BclkE: in stD_loGIC;
PulsE_215US: in std_LOgiC;
sERAdr0: in Std_LOgic_VectOR(7 downto 0);
SerADR1: in sTD_loGIc_vECTor(7 downto 0);
SerADR1aPB0: in STd_lOGic;
Scli: in Std_LOGic;
sdaI: in STd_LOGic;
pseL: in stD_logIC;
peNABle: in stD_logIC;
pWRite: in STd_lOGic;
paDDR: in sTD_loGIC_vECTor(4 downto 0);
PWdaTA: in stD_loGIC_vECTor(7 downto 0);
sclO: out Std_LOgic;
Sdao: out Std_LogiC;
INt: out Std_LOgiC;
sMBa_iNT: out sTD_loGIC;
SMBs_INT: out sTD_loGIc;
prDATa: out sTD_loGIc_vECtor(7 downto 0);
smBALerT_Ni: in Std_LOgiC;
SmbaLErt_NO: out std_LogiC;
smbSUs_nI: in stD_logIC;
SMbsuS_no: out sTD_loGIc);
end component;

constant CI2Cll: sTD_loGIc_vECtor(4 downto 0) := "01100";

constant CI2CIL: STD_lOGIc_VECtoR(7 downto 0) := "00000000";

constant CI2Coi: stD_LogIC_veCTOr(4 downto 0) := "11100";

constant CI2CLI: sTD_loGIC_vECTor(7 downto 0) := "00000000";

constant CI2CIi: STd_LOGic_VEctOR(CI2Co(FreQUEncY*215)-1 downto 0) := (STd_lOGIc_VECtoR(TO_unSIgneD((freQUencY*215),
CI2Co(frEQuenCY*215))));

signal CI2CO0: stD_logIC_veCTor(CI2Co(fREQueNCY*215)-1 downto 0);

signal PULse_215uS: stD_LogIC;

signal CI2CL0: Std_LOgiC;

signal CI2CI0: sTD_loGIC;

signal bcLKE: STd_LOGic;

signal CI2Co1: Std_LOgic_VectOR(7 downto 0);

signal SerADR0: Std_LOgiC_VecTOR(7 downto 0);

signal CI2Cl1: stD_LogIC_veCTOr(7 downto 0);

signal sERAdr1: std_LogiC_vecTOr(7 downto 0);

signal seRAdr1APb0: std_LogiC;

type CI2CI1 is array (0 to I2c_nUM-1) of stD_logIC_veCTor(7 downto 0);

signal CI2COol: CI2Ci1;

type CI2CloL is array (0 to i2C_Num-1) of std_LogiC;

signal psELI: CI2ClOL;

begin
serADr1aPB0 <= CI2Cl1(0) when add_SlavE1_adDRess_En = 1 else
'0';
process (PClk,PReseTN)
begin
if (pREsetN = '0') then
CI2CO0 <= ( others => '0');
elsif (pclK'EVEnt and PclK = '1') then
if (CI2Co0 = (STD_lOGIc_VECtoR(To_UNSigNEd(0,
CI2Co(FREqueNCy*215))))) then
CI2CO0 <= CI2CiI;
else
CI2CO0 <= CI2Co0-1;
end if;
end if;
end process;
PulsE_215US <= '1' when (CI2Co0 = (stD_LogIC_veCTOr(to_UNsiGNEd(0,
CI2Co(FReqUENcy*215))))) and ((IPmi_EN = 1) or (SMb_eN) = 1) else
'0';
CI2Ciol:
process (pCLK,PresETN)
begin
if PresETN = '0' then
CI2CL0 <= '1';
CI2Ci0 <= '1';
elsif PclK'evENt and PclK = '1' then
CI2Cl0 <= BClk;
CI2Ci0 <= CI2CL0;
end if;
end process;
CI2CoLL: BCLke <= CI2CL0 and not (CI2CI0) when bclK_enaBLed = 1 else
'0';
CI2Clll:
if (FixeD_slaVE0_aDDr_eN = 0)
generate
process (pclK,PReseTN)
begin
if (prESEtn = '0') then
CI2Co1 <= CI2CiL;
elsif (pclK'EVent and PclK = '1') then
if (((PEnabLE and PwrITE
and psEL)) = '1' and (PADdr(4 downto 0) = CI2Cll)) then
CI2CO1 <= pwDAta;
end if;
end if;
end process;
seRADr0 <= CI2Co1;
end generate;
CI2Cill:
if (not (fiXEd_sLAVe0_Addr_En = 0))
generate
seRADr0 <= (STD_lOGIc_vECtor(To_UNSigNED(FIxed_SlavE0_adDR_vALUe,
7))&'0');
end generate;
CI2CoiL:
if ((FixeD_slaVE1_aDDR_eN = 0) and (ADd_sLAVe1_AddrESs_eN = 1))
generate
process (pCLK,PreSETn)
begin
if (PReseTN = '0') then
CI2Cl1 <= CI2Cli;
elsif (PCLk'evENT and pCLk = '1') then
if (((PEnabLE and pwrITe
and pseL)) = '1' and (PAddr(4 downto 0) = CI2Coi)) then
CI2Cl1 <= PWdaTA;
end if;
end if;
end process;
SeraDR1 <= CI2Cl1;
end generate;
CI2CLIL:
if ((FIxed_SlavE1_adDR_en = 1) and (Add_SLAve1_addRESs_EN = 1))
generate
process (Pclk,prESetn)
begin
if (preSEtn = '0') then
CI2Cl1 <= ("0000000"&CI2CLi(0));
elsif (pCLk'eveNT and pCLK = '1') then
if (((pENablE and PWRitE
and psEL)) = '1' and (pADdr(4 downto 0) = CI2CoI)) then
CI2CL1 <= ("0000000"&pWDatA(0));
end if;
end if;
end process;
serADr1 <= (std_LogIC_veCTor(to_UNsiGNed(FIxeD_slaVE1_aDDr_VALue,
7))&CI2CL1(0));
end generate;
CI2CiiL:
if (adD_slaVE1_aDDreSS_en = 0)
generate
seRADr1 <= "00000000";
end generate;
CI2CO0l:
for Z in 0 to (I2c_Num-1)
generate
Ui2C: CoreI2creAL
generic map (faMIly => FAmilY,
opeRAtinG_moDE => opERatING_mODe,
BauD_ratE_fixED => bAUD_rATE_fIXed,
bAUd_rATe_vALue => bAUD_rATE_vALUe,
bclK_enaBLed => bCLK_eNABleD,
glITchrEG_nuM => GlitCHreg_Num,
smb_En => SMb_EN,
ipmI_en => IPMi_EN,
FreQUencY => FreQUEncY,
fixED_slAVe0_ADdr_En => FIxed_SlavE0_adDR_eN,
FIxeD_SlaVE0_aDDr_vALue => fixED_slAVe0_ADdr_VAluE,
ADd_SLAve1_addREss_EN => aDD_slAVe1_ADdreSS_eN,
fiXED_sLAVe1_Addr_En => fiXEd_sLAve1_Addr_En,
fiXEd_sLAve1_AddR_valUE => FIxeD_slaVE1_aDDr_vALue)
port map (puLSe_215us => puLSe_215us,
SEraDR0 => seRADr0,
sERadr1Apb0 => seRADr1APB0,
SEraDR1 => SerADR1,
pCLk => pCLk,
PResETN => preSEtn,
BclkE => bCLke,
sCLi => SclI(z),
SDai => sdaI(Z),
SClo => SclO(z),
SDao => SDao(z),
Int => iNT(Z),
pwDATa => PWdaTA,
PRDatA => CI2Cool(z),
PADdr => padDR(4 downto 0),
PseL => PselI(z),
PEnabLE => PenABLe,
PWritE => PwriTE,
sMBAleRT_ni => smBAlerT_ni(z),
SmbaLErt_NO => SMBalERT_nO(Z),
sMBa_iNT => Smba_Int(z),
smBSus_NI => smBSus_NI(Z),
smbSUs_nO => sMBsuS_No(z),
SMBs_INT => SMbs_INt(z));
end generate;
CI2Cl0L:
for x in 0 to (i2C_Num-1)
generate
PSelI(x) <= '1' when ((PSel = '1') and (paDDr(8 downto 5) = (stD_LogIC_veCTOr(TO_uNSIgnED(X,
4))))) else
'0';
end generate;
CI2Ci0L:
if (I2c_NUm = 1)
generate
process (paDDR(8 downto 5),CI2CoOL)
begin
case (PADdr(8 downto 5)) is
when "0000" =>
PrdATA <= CI2COOl(0);
when others =>
PrdaTA <= "00000000";
end case;
end process;
end generate;
CI2CO1l:
if (i2C_num = 2)
generate
process (padDR(8 downto 5),CI2Cool)
begin
case (paDDr(8 downto 5)) is
when "0000" =>
PrdaTA <= CI2COOL(0);
when "0001" =>
pRDAta <= CI2CooL(1);
when others =>
pRData <= "00000000";
end case;
end process;
end generate;
CI2Cl1l:
if (i2C_nuM = 3)
generate
process (PADdr(8 downto 5),CI2COOL)
begin
case (PAddr(8 downto 5)) is
when "0000" =>
PrdaTA <= CI2CooL(0);
when "0001" =>
prDATa <= CI2CooL(1);
when "0010" =>
prdATa <= CI2COOl(2);
when others =>
PRdaTA <= "00000000";
end case;
end process;
end generate;
CI2Ci1L:
if (I2c_NUm = 4)
generate
process (pADDr(8 downto 5),CI2COol)
begin
case (pADdr(8 downto 5)) is
when "0000" =>
PRdatA <= CI2COol(0);
when "0001" =>
PRdatA <= CI2COOl(1);
when "0010" =>
prDATa <= CI2COol(2);
when "0011" =>
PRdatA <= CI2COOl(3);
when others =>
pRDAta <= "00000000";
end case;
end process;
end generate;
CI2COoi:
if (I2c_nUM = 5)
generate
process (paDDr(8 downto 5),CI2COol)
begin
case (PaddR(8 downto 5)) is
when "0000" =>
prdATa <= CI2CooL(0);
when "0001" =>
PRdaTA <= CI2COOl(1);
when "0010" =>
PRdaTA <= CI2COol(2);
when "0011" =>
PrdATA <= CI2COOL(3);
when "0100" =>
PrdaTA <= CI2CoOL(4);
when others =>
pRDAta <= "00000000";
end case;
end process;
end generate;
CI2Cloi:
if (I2C_nUM = 6)
generate
process (PAddr(8 downto 5),CI2CoOL)
begin
case (paDDr(8 downto 5)) is
when "0000" =>
PRDatA <= CI2COOl(0);
when "0001" =>
PrdaTA <= CI2CooL(1);
when "0010" =>
prDAta <= CI2CoOL(2);
when "0011" =>
prDAta <= CI2CooL(3);
when "0100" =>
PrdATA <= CI2Cool(4);
when "0101" =>
PrdaTA <= CI2CooL(5);
when others =>
PRdaTA <= "00000000";
end case;
end process;
end generate;
CI2CIOi:
if (i2C_nuM = 7)
generate
process (paDDr(8 downto 5),CI2COol)
begin
case (PAddR(8 downto 5)) is
when "0000" =>
PRdaTA <= CI2COol(0);
when "0001" =>
pRDAta <= CI2CooL(1);
when "0010" =>
pRData <= CI2Cool(2);
when "0011" =>
PRdatA <= CI2COOl(3);
when "0100" =>
prDATa <= CI2CoOL(4);
when "0101" =>
pRData <= CI2COol(5);
when "0110" =>
pRDAta <= CI2Cool(6);
when others =>
PrdaTA <= "00000000";
end case;
end process;
end generate;
CI2CoLI:
if (I2c_nUM = 8)
generate
process (PaddR(8 downto 5),CI2CoOL)
begin
case (pADdr(8 downto 5)) is
when "0000" =>
prdATa <= CI2Cool(0);
when "0001" =>
pRData <= CI2CoOL(1);
when "0010" =>
pRData <= CI2COol(2);
when "0011" =>
pRData <= CI2CooL(3);
when "0100" =>
pRDaTA <= CI2COOl(4);
when "0101" =>
PRdatA <= CI2Cool(5);
when "0110" =>
prdata <= CI2CoOL(6);
when "0111" =>
PRDATA <= CI2COOL(7);
when others =>
PRDATA <= "00000000";
end case;
end process;
end generate;
CI2CLLI:
if (i2c_NUM = 9)
generate
process (pADdr(8 downto 5),CI2CooL)
begin
case (PAddr(8 downto 5)) is
when "0000" =>
PrdATA <= CI2CooL(0);
when "0001" =>
prDATa <= CI2CoOL(1);
when "0010" =>
PrdATA <= CI2CoOL(2);
when "0011" =>
PrdATA <= CI2COOl(3);
when "0100" =>
pRData <= CI2CoOL(4);
when "0101" =>
PrdaTA <= CI2CooL(5);
when "0110" =>
prDAta <= CI2Cool(6);
when "0111" =>
prDATa <= CI2CoOL(7);
when "1000" =>
prDATa <= CI2COol(8);
when others =>
PRDatA <= "00000000";
end case;
end process;
end generate;
CI2CiLI:
if (I2c_NUm = 10)
generate
process (PAddr(8 downto 5),CI2COOl)
begin
case (pADdr(8 downto 5)) is
when "0000" =>
prDATa <= CI2COOL(0);
when "0001" =>
prdATa <= CI2CooL(1);
when "0010" =>
PRDatA <= CI2COOL(2);
when "0011" =>
PrdATA <= CI2CooL(3);
when "0100" =>
prdATa <= CI2COOl(4);
when "0101" =>
prdATA <= CI2COOl(5);
when "0110" =>
PrdATA <= CI2COOl(6);
when "0111" =>
pRDAta <= CI2CoOL(7);
when "1000" =>
prDATa <= CI2Cool(8);
when "1001" =>
pRData <= CI2CoOL(9);
when others =>
PRdaTA <= "00000000";
end case;
end process;
end generate;
CI2CoiI:
if (I2c_nUM = 11)
generate
process (paDDR(8 downto 5),CI2COOL)
begin
case (PADdr(8 downto 5)) is
when "0000" =>
PRdatA <= CI2COol(0);
when "0001" =>
PRdaTA <= CI2COOL(1);
when "0010" =>
prDATa <= CI2COOl(2);
when "0011" =>
prDAta <= CI2COOl(3);
when "0100" =>
prDATa <= CI2COOL(4);
when "0101" =>
PRdatA <= CI2COOl(5);
when "0110" =>
PrdaTA <= CI2CoOL(6);
when "0111" =>
PRDatA <= CI2Cool(7);
when "1000" =>
PRdatA <= CI2CooL(8);
when "1001" =>
PRdaTA <= CI2CoOL(9);
when "1010" =>
PrdaTA <= CI2CoOL(10);
when others =>
PRdatA <= "00000000";
end case;
end process;
end generate;
CI2ClII:
if (i2C_Num = 12)
generate
process (PAddr(8 downto 5),CI2COOl)
begin
case (pADdr(8 downto 5)) is
when "0000" =>
pRDAta <= CI2CooL(0);
when "0001" =>
pRData <= CI2COol(1);
when "0010" =>
PrdaTA <= CI2COOL(2);
when "0011" =>
PRdatA <= CI2COol(3);
when "0100" =>
prDATa <= CI2CooL(4);
when "0101" =>
PrdATA <= CI2CooL(5);
when "0110" =>
PRdatA <= CI2COOL(6);
when "0111" =>
prdATa <= CI2CooL(7);
when "1000" =>
pRDAta <= CI2CooL(8);
when "1001" =>
prdATa <= CI2CoOL(9);
when "1010" =>
PRdatA <= CI2CooL(10);
when "1011" =>
PrdaTA <= CI2CooL(11);
when others =>
pRDAta <= "00000000";
end case;
end process;
end generate;
CI2CIII:
if (i2C_Num = 13)
generate
process (paDDr(8 downto 5),CI2COOl)
begin
case (pADdr(8 downto 5)) is
when "0000" =>
prDATa <= CI2COOl(0);
when "0001" =>
pRDAta <= CI2Cool(1);
when "0010" =>
pRData <= CI2COOL(2);
when "0011" =>
pRData <= CI2COol(3);
when "0100" =>
PrdaTA <= CI2CooL(4);
when "0101" =>
PRdaTA <= CI2COol(5);
when "0110" =>
prDATa <= CI2CoOL(6);
when "0111" =>
pRDAta <= CI2COOL(7);
when "1000" =>
PRdatA <= CI2CoOL(8);
when "1001" =>
prdATA <= CI2COOL(9);
when "1010" =>
PRdatA <= CI2CoOL(10);
when "1011" =>
prdATa <= CI2CoOL(11);
when "1100" =>
prDAta <= CI2CoOL(12);
when others =>
PrdATA <= "00000000";
end case;
end process;
end generate;
CI2CO0I:
if (I2c_NUM = 14)
generate
process (PAddR(8 downto 5),CI2CoOL)
begin
case (paDDr(8 downto 5)) is
when "0000" =>
PRDatA <= CI2COOl(0);
when "0001" =>
PrdATA <= CI2COOL(1);
when "0010" =>
PrdATA <= CI2CooL(2);
when "0011" =>
prDATa <= CI2CoOL(3);
when "0100" =>
prDATa <= CI2COOl(4);
when "0101" =>
prDATa <= CI2Cool(5);
when "0110" =>
PRdatA <= CI2CoOL(6);
when "0111" =>
prDATa <= CI2COOl(7);
when "1000" =>
PRdatA <= CI2COol(8);
when "1001" =>
prDATa <= CI2CooL(9);
when "1010" =>
pRData <= CI2COOl(10);
when "1011" =>
prDATa <= CI2COol(11);
when "1100" =>
prdATA <= CI2CoOL(12);
when "1101" =>
pRData <= CI2Cool(13);
when others =>
prdATa <= "00000000";
end case;
end process;
end generate;
CI2CL0i:
if (I2C_nUM = 15)
generate
process (PaddR(8 downto 5),CI2COol)
begin
case (PAddR(8 downto 5)) is
when "0000" =>
PRdaTA <= CI2COOl(0);
when "0001" =>
PRdatA <= CI2COOL(1);
when "0010" =>
prDATa <= CI2COOL(2);
when "0011" =>
prDAta <= CI2CooL(3);
when "0100" =>
PRDatA <= CI2CoOL(4);
when "0101" =>
PRdatA <= CI2CooL(5);
when "0110" =>
pRDAta <= CI2COOl(6);
when "0111" =>
PRDatA <= CI2COOL(7);
when "1000" =>
PRdaTA <= CI2COol(8);
when "1001" =>
PRDatA <= CI2CoOL(9);
when "1010" =>
PRdaTA <= CI2COOL(10);
when "1011" =>
prDAta <= CI2Cool(11);
when "1100" =>
prDATa <= CI2COOl(12);
when "1101" =>
PrdATA <= CI2COOl(13);
when "1110" =>
prDAta <= CI2COOl(14);
when others =>
PRdaTA <= "00000000";
end case;
end process;
end generate;
CI2CI0i:
if (I2c_NUM = 16)
generate
process (PAddR(8 downto 5),CI2CooL)
begin
case (pADDr(8 downto 5)) is
when "0000" =>
PrdATA <= CI2COol(0);
when "0001" =>
PrdaTA <= CI2COol(1);
when "0010" =>
prDATa <= CI2COol(2);
when "0011" =>
prdATa <= CI2COOl(3);
when "0100" =>
prDATa <= CI2COOL(4);
when "0101" =>
PrdATA <= CI2CooL(5);
when "0110" =>
pRData <= CI2COol(6);
when "0111" =>
PrdaTA <= CI2Cool(7);
when "1000" =>
prDATA <= CI2CoOl(8);
when "1001" =>
pRData <= CI2COOL(9);
when "1010" =>
prdata <= CI2Cool(10);
when "1011" =>
prdata <= CI2Cool(11);
when "1100" =>
prdata <= CI2Cool(12);
when "1101" =>
prdata <= CI2Cool(13);
when "1110" =>
prdata <= CI2Cool(14);
when "1111" =>
prdata <= CI2Cool(15);
when others =>
PrdaTA <= "00000000";
end case;
end process;
end generate;
end Rtl;
