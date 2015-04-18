-- Version: v11.0 11.0.0.23
-- File used only for Simulation

library ieee;
use ieee.std_logic_1164.all;
library igloo;
use igloo.all;

entity top is

    port( clk        : in    std_logic;
          D1         : out   std_logic;
          D2         : out   std_logic;
          D3         : out   std_logic;
          sw1        : in    std_logic;
          SW5        : in    std_logic;
          sda        : out   std_logic;
          scl        : out   std_logic;
          oled_reset : out   std_logic
        );

end top;

architecture DEF_ARCH of top is 

  component XA1C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR3
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR2A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component IOTRI_OB_EB
    port( D    : in    std_logic := 'U';
          E    : in    std_logic := 'U';
          DOUT : out   std_logic;
          EOUT : out   std_logic
        );
  end component;

  component NOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component INV
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component MX2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          S : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OA1B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR2B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component DFN1C0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          CLR : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component OR2A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR3C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XA1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR3
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AO1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component DFN1E1C0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          CLR : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component AND2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AX1C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XA1A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AX1D
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AO16
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OA1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component DFN1P0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          PRE : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component NOR3A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component DFN1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component AX1A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component IOPAD_TRI
    port( D   : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          PAD : out   std_logic
        );
  end component;

  component DFN1E0C0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          CLR : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component AND3B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CLKIO
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR3B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR3B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AO1C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR2B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component MX2C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          S : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AOI1D
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XO1A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OA1A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AO1A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR3A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AX1B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XA1B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component DFN1E1P0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          PRE : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component OA1C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component ULSICC_INT
    port( USTDBY : in    std_logic := 'U';
          LPENA  : in    std_logic := 'U'
        );
  end component;

  component AO1B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component DFN1E1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component AOI1B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AXO6
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component CLKINT
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AXOI1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OAI1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component IOPAD_IN
    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component GND
    port(Y : out std_logic); 
  end component;

  component VCC
    port(Y : out std_logic); 
  end component;

    signal \address[0]_net_1\, \address[1]_net_1\, 
        \address[2]_net_1\, \address[3]_net_1\, 
        \address[4]_net_1\, \address[5]_net_1\, 
        \address[6]_net_1\, \address[7]_net_1\, busy, 
        \counter[0]_net_1\, \counter[1]_net_1\, 
        \counter[2]_net_1\, \counter[3]_net_1\, 
        \counter[4]_net_1\, \counter[5]_net_1\, 
        \counter[6]_net_1\, \counter[7]_net_1\, 
        \counter[8]_net_1\, \counter[9]_net_1\, 
        \counter[10]_net_1\, \counter[11]_net_1\, 
        \counter[12]_net_1\, \counter[13]_net_1\, 
        \counter[14]_net_1\, \counter[15]_net_1\, 
        \counter[16]_net_1\, \counter[17]_net_1\, 
        \counter[18]_net_1\, \counter[19]_net_1\, 
        \counter[20]_net_1\, \counter[21]_net_1\, 
        \counter[22]_net_1\, \counter[24]_net_1\, counter_n1, 
        counter_n2, counter_n3, counter_n4, counter_n5, 
        counter_n6, counter_n7, counter_n8, counter_n9, 
        counter_n10, counter_n11, counter_n12, counter_n13, 
        counter_n14, counter_n15, counter_n16, counter_n17, 
        counter_n18, counter_n19, counter_n20, counter_n21, 
        counter_n22, counter_n23, counter_n24, counter_n25, 
        \state[0]_net_1\, \state[1]_net_1\, state_76_d, N_8, N_10, 
        \display0.i2c0.scl_e\, \display0.i2c0.scl_1\, 
        \display0.i2c0.sda_1\, \display0.i2c0.sda_e\, clk_c, 
        \counter_c[23]\, oled_reset_c_c, N_26, addresse, N_24, 
        N_22, N_20, N_18, N_16, N_14, N_149, N_28, N_29, N_31, 
        N_45, N_154, N_47, N_48, \state_ns_i_a2_i_a4_2[1]\, 
        \state_ns_i_a2_i_a4_3[1]\, \state_ns_i_a2_i_a4_4[1]\, 
        \state_ns_i_a2_i_a4_5[1]\, draw_i_0, \counter_i[0]\, 
        \counter[25]_net_1\, \display0/N_43_0_0\, 
        \display0/state[2]_net_1\, \display0/state[3]_net_1\, 
        \display0/bytecount_0[1]_net_1\, \display0/bytecount_n1\, 
        \display0/bytecount_0[4]_net_1\, \display0/bytecount_n4\, 
        \display0/bytecount_0[5]_net_1\, \display0/N_33\, 
        \display0/bytecount_0[6]_net_1\, \display0/N_35\, 
        \display0/N_673_i_0_0\, \display0/state[4]_net_1\, 
        \display0/N_43\, \display0/un1_ena_2_0\, 
        \display0/burstno\, \display0/state[1]_net_1\, 
        \display0/un1_N_3_mux\, \display0/N_575_0\, 
        \display0/un1_burst_reg_1002\, \display0/burst_reg_1002\, 
        \display0/N_43_0\, \display0/counter_c2_net_1\, 
        \display0/counter_c4_net_1\, \display0/counter_c6_net_1\, 
        \display0/counter_c8_net_1\, \display0/counter_c10_net_1\, 
        \display0/counter_c12_net_1\, 
        \display0/counter_c14_net_1\, 
        \display0/counter_c16_net_1\, 
        \display0/counter_c18_net_1\, 
        \display0/counter_c20_net_1\, 
        \display0/counter_c22_net_1\, 
        \display0/counter_c23_net_1\, 
        \display0/DWACT_ADD_CI_0_g_array_4[0]\, 
        \display0/DWACT_ADD_CI_0_g_array_3[0]\, 
        \display0/DWACT_ADD_CI_0_pog_array_3[0]\, 
        \display0/DWACT_ADD_CI_0_g_array_9[0]\, 
        \display0/DWACT_ADD_CI_0_g_array_10[0]\, 
        \display0/DWACT_ADD_CI_0_pog_array_2_1[0]\, 
        \display0/DWACT_ADD_CI_0_g_array_10_1[0]\, 
        \display0/DWACT_ADD_CI_0_pog_array_2_3[0]\, 
        \display0/DWACT_ADD_CI_0_g_array_11_2[0]\, 
        \display0/DWACT_ADD_CI_0_pog_array_1_5[0]\, 
        \display0/DWACT_ADD_CI_0_g_array_2[0]\, 
        \display0/DWACT_ADD_CI_0_g_array_11[0]\, 
        \display0/DWACT_ADD_CI_0_pog_array_1_1[0]\, 
        \display0/DWACT_ADD_CI_0_g_array_11_1[0]\, 
        \display0/DWACT_ADD_CI_0_pog_array_1_3[0]\, 
        \display0/DWACT_ADD_CI_0_g_array_10_2[0]\, 
        \display0/DWACT_ADD_CI_0_g_array_1[0]\, 
        \display0/burstNo[6]_net_1\, \display0/burstNo[20]_net_1\, 
        \display0/DWACT_ADD_CI_0_g_array_12_3[0]\, 
        \display0/burstNo[8]_net_1\, \display0/burstNo[10]_net_1\, 
        \display0/DWACT_ADD_CI_0_g_array_11_3[0]\, 
        \display0/DWACT_ADD_CI_0_pog_array_1_7[0]\, 
        \display0/DWACT_ADD_CI_0_g_array_11_4[0]\, 
        \display0/DWACT_ADD_CI_0_pog_array_1_9[0]\, 
        \display0/DWACT_ADD_CI_0_g_array_11_5[0]\, 
        \display0/DWACT_ADD_CI_0_pog_array_1_11[0]\, 
        \display0/DWACT_ADD_CI_0_g_array_11_6[0]\, 
        \display0/DWACT_ADD_CI_0_g_array_12[0]\, 
        \display0/burstNo[2]_net_1\, 
        \display0/DWACT_ADD_CI_0_g_array_12_7[0]\, 
        \display0/burstNo[16]_net_1\, \display0/burstNo[4]_net_1\, 
        \display0/DWACT_ADD_CI_0_g_array_12_13[0]\, 
        \display0/burstNo[28]_net_1\, 
        \display0/DWACT_ADD_CI_0_g_array_12_14[0]\, 
        \display0/burstNo[30]_net_1\, 
        \display0/burstNo[12]_net_1\, 
        \display0/burstNo[14]_net_1\, 
        \display0/burstNo[18]_net_1\, 
        \display0/burstNo[22]_net_1\, 
        \display0/DWACT_ADD_CI_0_g_array_12_11[0]\, 
        \display0/burstNo[24]_net_1\, 
        \display0/DWACT_ADD_CI_0_g_array_12_12[0]\, 
        \display0/burstNo[26]_net_1\, 
        \display0/DWACT_ADD_CI_0_TMP[0]\, 
        \display0/burstNo[1]_net_1\, 
        \display0/un1_bytecount_152_net_1\, 
        \display0/un1_bytecount_152_0_net_1\, 
        \display0/burst_reg_1006_m_4\, \display0/burst_reg_1006\, 
        \display0/data_i2c_1_2_iv_4[3]_net_1\, 
        \display0/data_i2c_1_2_iv_2[3]\, 
        \display0/data_i2c_1_2_iv_1[3]\, 
        \display0/burst_reg_20_m_2[2]\, 
        \display0/burst_reg_20_m[2]\, 
        \display0/data_i2c_1_0_6[2]_net_1\, 
        \display0/data_i2c_1_0_7[1]\, \display0/un1_bytecount_95\, 
        \display0/N_157\, \display0/un1_bytecount_88\, 
        \display0/data_i2c_1[3]\, \display0/un1_bytecount_147\, 
        \display0/data_i2c_1_2_iv_1[1]\, \display0/N_624\, 
        \display0/data_i2c_1_2_iv_0[1]\, 
        \display0/burst_reg_1006_m_3\, 
        \display0/burst_reg_2_1_m[3]\, 
        \display0/data_i2c_1_2_iv_3[2]\, 
        \display0/data_i2c_1_2_iv_1[2]\, 
        \display0/burst_reg_3_m_3[0]\, 
        \display0/burst_reg_3_m[2]\, 
        \display0/data_i2c_2_2_iv_3[2]\, 
        \display0/data_i2c_2_2_iv_1[2]\, 
        \display0/burst_reg_2_1_m_0[3]\, 
        \display0/burst_reg_3_m_12[0]\, \display0/N_648\, 
        \display0/data_i2c_2_2_iv_0[2]\, 
        \display0/burst_reg_1006_m_15_1\, 
        \display0/burst_reg_3_m_0[2]\, 
        \display0/data_i2c_2_2_iv_1[1]\, \display0/N_645\, 
        \display0/data_i2c_2_2_iv_0[1]\, \display0/un1_state_6_0\, 
        \display0/state[0]_net_1\, \display0/un1_bytecount_44\, 
        \display0/un1_bytecount_45\, \display0/N_575\, 
        \display0/data_i2c_1_2_iv_0[3]\, 
        \display0/burst_reg_3_m_4[0]\, 
        \display0/data_i2c_2_2_iv_4[3]\, 
        \display0/data_i2c_2_2_iv_2[3]\, 
        \display0/data_i2c_2_2_iv_0[3]\, 
        \display0/data_i2c_2_4[3]\, \display0/un1_bytecount_116\, 
        \display0/N_651\, \display0/data_i2c_2_2_iv_1[0]\, 
        \display0/N_642\, \display0/data_i2c_2_2_iv_0[0]\, 
        \display0/un1_bytecount_150\, 
        \display0/burst_reg_2_1_m_0[0]\, 
        \display0/data_i2c_1_2_iv_1[0]\, \display0/N_621\, 
        \display0/data_i2c_1_2_iv_0[0]\, 
        \display0/un1_bytecount_145\, 
        \display0/burst_reg_2_1_m[0]\, 
        \display0/data_i2c_1_2_iv_0[4]\, 
        \display0/data_i2c_1_2_tz[4]\, \display0/data_i2c_1_3[4]\, 
        \display0/data_i2c_2_2_iv_0[4]\, 
        \display0/data_i2c_2_2_tz[4]\, \display0/data_i2c_2_3[4]\, 
        \display0/data_i2c_2_2_iv_0[5]\, 
        \display0/data_i2c_2_1_tz[5]\, 
        \display0/data_i2c_1_2_iv_0[5]\, 
        \display0/un1_bytecount_43\, 
        \display0/data_i2c_1_1_tz[5]\, 
        \display0/data_i2c_2_2_iv_2_tz_4[4]\, 
        \display0/un1_bytecount_93\, \display0/un1_bytecount_153\, 
        \display0/data_i2c_2_2_iv_2_tz_3[4]\, 
        \display0/un1_bytecount_166\, 
        \display0/data_i2c_2_2_iv_2_tz_0[4]\, 
        \display0/data_i2c_2_2_iv_2_tz_2[4]\, 
        \display0/un1_bytecount_94\, \display0/un1_bytecount_100\, 
        \display0/data_i2c_2_2_iv_0_tz_7[6]\, 
        \display0/data_i2c_2_2_iv_0_tz_3[6]\, \display0/N_660_3\, 
        \display0/data_i2c_2_2_iv_0_tz_6[6]\, 
        \display0/data_i2c_2_2_iv_0_tz_2[6]\, 
        \display0/un1_bytecount_178\, 
        \display0/data_i2c_2_2_iv_0_tz_1[6]\, 
        \display0/un1_bytecount_170\, 
        \display0/burst_reg_1006_m_25_2\, 
        \display0/un1_bytecount_167_1\, 
        \display0/un1_bytecount_144\, 
        \display0/un1_bytecount_165\, 
        \display0/data_i2c_1_2_iv_1_tz_5[5]\, 
        \display0/data_i2c_1_2_iv_1_tz_1[5]\, 
        \display0/un1_bytecount_158\, 
        \display0/data_i2c_1_2_iv_1_tz_4[5]\, 
        \display0/un1_bytecount_156\, 
        \display0/un1_bytecount_164\, 
        \display0/un1_bytecount_155\, 
        \display0/un1_bytecount_174\, 
        \display0/un1_bytecount_159\, 
        \display0/data_i2c_1_2_iv_0_tz_7[6]\, 
        \display0/data_i2c_1_2_iv_0_tz_5[6]\, 
        \display0/data_i2c_1_2_iv_0_tz_4[6]\, 
        \display0/un1_bytecount_151\, 
        \display0/un1_bytecount_173\, 
        \display0/data_i2c_1_2_iv_0_tz_1[6]\, \display0/N_645_6\, 
        \display0/un1_bytecount_42\, \display0/un1_bytecount_176\, 
        \display0/burst_reg_1006_m_11_2\, 
        \display0/un1_bytecount_99\, 
        \display0/data_i2c_1_2_iv_2_tz_4[4]\, 
        \display0/data_i2c_1_2_iv_2_tz_1[4]\, 
        \display0/un1_bytecount_142\, 
        \display0/data_i2c_1_2_iv_2_tz_3[4]\, 
        \display0/un1_bytecount_175\, \display0/un1_bytecount_92\, 
        \display0/data_i2c_1_0_11[1]\, \display0/N_624_4\, 
        \display0/data_i2c_1_0_5[1]\, 
        \display0/data_i2c_1_0_10[1]\, 
        \display0/un1_bytecount_54\, \display0/un1_bytecount_53\, 
        \display0/N_624_9\, \display0/data_i2c_1_0_9[1]\, 
        \display0/data_i2c_1_0_4[1]\, \display0/N_621_5\, 
        \display0/data_i2c_1_0_2[1]\, 
        \display0/data_i2c_1_0_0[1]\, 
        \display0/un1_bytecount_177\, 
        \display0/un1_bytecount_115\, 
        \display0/data_i2c_2_0_12[1]\, 
        \display0/data_i2c_2_0_7[1]\, \display0/N_643_3\, 
        \display0/data_i2c_2_0_9[1]\, \display0/N_645_4\, 
        \display0/un1_bytecount_52\, \display0/data_i2c_2_0_8[1]\, 
        \display0/data_i2c_2_0_5[1]\, 
        \display0/data_i2c_2_0_1[1]\, \display0/un1_bytecount_51\, 
        \display0/N_642_5\, \display0/un1_bytecount_147_1\, 
        \display0/un1_bytecount_136\, 
        \display0/un2_busy_byte_NE_i_a2_26\, 
        \display0/un2_busy_byte_NE_i_a2_24\, 
        \display0/un2_busy_byte_4\, \display0/un2_busy_byte_1\, 
        \display0/un2_busy_byte_NE_i_a2_21\, 
        \display0/un2_busy_byte_NE_i_a2_20\, 
        \display0/un2_busy_byte_NE_i_a2_22\, 
        \display0/un2_busy_byte_NE_i_a2_13\, 
        \display0/un2_busy_byte_NE_i_a2_12\, 
        \display0/un2_busy_byte_NE_i_a2_18\, 
        \display0/un2_busy_byte_NE_i_a2_8\, 
        \display0/un2_busy_byte_NE_i_a2_7\, 
        \display0/un2_busy_byte_NE_i_a2_17\, 
        \display0/un2_busy_byte_NE_i_a2_4\, 
        \display0/un2_busy_byte_NE_i_a2_3\, 
        \display0/un2_busy_byte_NE_i_a2_15\, 
        \display0/bytecount[19]_net_1\, 
        \display0/bytecount[17]_net_1\, 
        \display0/bytecount[3]_net_1\, 
        \display0/un2_busy_byte_NE_i_a2_10\, 
        \display0/bytecount[7]_net_1\, 
        \display0/bytecount[9]_net_1\, 
        \display0/un2_busy_byte_NE_i_a2_6\, 
        \display0/bytecount[31]_net_1\, 
        \display0/bytecount[10]_net_1\, 
        \display0/un2_busy_byte_NE_i_a2_2\, 
        \display0/bytecount[27]_net_1\, 
        \display0/bytecount[24]_net_1\, 
        \display0/bytecount[25]_net_1\, 
        \display0/bytecount[23]_net_1\, 
        \display0/bytecount[18]_net_1\, 
        \display0/bytecount[21]_net_1\, 
        \display0/bytecount[20]_net_1\, 
        \display0/bytecount[14]_net_1\, 
        \display0/bytecount[8]_net_1\, 
        \display0/bytecount[15]_net_1\, 
        \display0/bytecount[30]_net_1\, 
        \display0/bytecount[22]_net_1\, 
        \display0/bytecount[16]_net_1\, 
        \display0/bytecount[11]_net_1\, 
        \display0/bytecount[12]_net_1\, 
        \display0/bytecount[29]_net_1\, 
        \display0/bytecount[13]_net_1\, 
        \display0/bytecount[26]_net_1\, 
        \display0/bytecount[28]_net_1\, 
        \display0/data_i2c_1_3[7]\, \display0/N_661_2\, 
        \display0/data_i2c_1_2[7]\, \display0/N_634_1\, 
        \display0/data_i2c_1_0[7]\, \display0/un1_bytecount_48\, 
        \display0/un1_bytecount_46\, \display0/data_i2c_2_1_3[0]\, 
        \display0/N_643_4\, \display0/data_i2c_2_1_2[0]\, 
        \display0/data_i2c_2_1_0[0]\, \display0/N_655_2\, 
        \display0/un1_bytecount_59\, \display0/un1_bytecount_58\, 
        \display0/data_i2c_2_0_4[7]\, \display0/N_661_1\, 
        \display0/N_663_3\, \display0/data_i2c_2_0_3[7]\, 
        \display0/data_i2c_2_0_1[7]\, 
        \display0/un1_bytecount_47_0\, 
        \display0/un1_bytecount_57_5\, 
        \display0/data_i2c_1_2_iv_0_tz_6[3]\, 
        \display0/data_i2c_1_2_iv_0_tz_5[3]\, 
        \display0/data_i2c_1_2_iv_0_tz_2[3]\, 
        \display0/data_i2c_1_2_iv_0_tz_3[3]\, 
        \display0/data_i2c_2_0_4[2]\, 
        \display0/data_i2c_2_0_3[2]\, 
        \display0/data_i2c_2_0_1[2]\, 
        \display0/data_i2c_1_1_4[0]\, 
        \display0/data_i2c_1_1_0[0]\, \display0/N_634_2\, 
        \display0/data_i2c_1_1_3[0]\, 
        \display0/data_i2c_1_1_1[0]\, \display0/un1_bytecount_49\, 
        \display0/un1_bytecount_57\, \display0/data_i2c_1_0_3[2]\, 
        \display0/un1_bytecount_50\, \display0/data_i2c_1_0_1[2]\, 
        \display0/data_i2c_2_0_13[0]\, 
        \display0/data_i2c_2_0_6[0]\, 
        \display0/data_i2c_2_0_11[0]\, 
        \display0/data_i2c_2_0_12[0]\, 
        \display0/data_i2c_2_0_5[0]\, 
        \display0/data_i2c_2_0_8[0]\, \display0/un1_bytecount_61\, 
        \display0/un1_bytecount_168\, \display0/un1_bytecount_62\, 
        \display0/un1_bytecount_80\, \display0/data_i2c_2_0_1[0]\, 
        \display0/un1_bytecount_103\, 
        \display0/un1_bytecount_104\, 
        \display0/un1_bytecount_105\, 
        \display0/data_i2c_2_0_5[3]\, 
        \display0/data_i2c_2_0_1[3]\, 
        \display0/data_i2c_2_0_2[3]\, 
        \display0/un1_bytecount_169\, \display0/un1_bytecount_55\, 
        \display0/data_i2c_1_1_0[6]\, 
        \display0/data_i2c_2_1_2[4]\, 
        \display0/data_i2c_2_1_1[4]\, \display0/un1_bytecount_60\, 
        \display0/data_i2c_1_1_2[3]\, 
        \display0/data_i2c_1_1_1[3]\, 
        \display0/un1_bytecount_46_0\, 
        \display0/data_i2c_2_2_iv_4_tz_2[3]\, 
        \display0/data_i2c_2_2_iv_4_tz_0[3]\, 
        \display0/un1_bytecount_56\, 
        \display0/data_i2c_1_0_16[0]\, 
        \display0/data_i2c_1_0_11[0]\, 
        \display0/data_i2c_1_0_13[0]\, 
        \display0/data_i2c_1_0_10[0]\, 
        \display0/data_i2c_1_0_12[0]\, 
        \display0/data_i2c_1_0_5[0]\, 
        \display0/data_i2c_1_0_4[0]\, 
        \display0/data_i2c_1_0_3[0]\, 
        \display0/data_i2c_1_0_7[0]\, 
        \display0/data_i2c_1_0_0[0]\, \display0/un1_bytecount_71\, 
        \display0/un1_bytecount_102\, 
        \display0/un1_bytecount_14_3\, 
        \display0/un1_bytecount_67_5\, 
        \display0/un1_bytecount_79\, \display0/data_i2c_2_1_1[6]\, 
        \display0/data_i2c_1_1_1[4]\, 
        \display0/data_i2c_2_1_1[5]\, 
        \display0/burst_reg_2_1_i_a2_0[1]\, 
        \display0/data_i2c_1_1_1[5]\, 
        \display0/data_i2c_1_1_0[1]\, 
        \display0/data_i2c_1_1_0[2]\, \display0/N_95\, 
        \display0/data_i2c_2_2_iv_1_tz_8[5]\, 
        \display0/data_i2c_2_2_iv_1_tz_2[5]\, 
        \display0/data_i2c_2_2_iv_1_tz_4[5]\, 
        \display0/data_i2c_2_2_iv_1_tz_0[5]\, 
        \display0/un1_bytecount_101\, 
        \display0/un1_bytecount_43_4\, 
        \display0/un1_bytecount_161_3\, 
        \display0/data_i2c_2_1_0[1]\, 
        \display0/un1_bytecount_151_2\, 
        \display0/un1_bytecount_82\, \display0/un1_bytecount_86\, 
        \display0/un1_bytecount_89\, 
        \display0/un1_bytecount_151_1\, 
        \display0/un1_bytecount_74_0\, 
        \display0/un1_bytecount_76_5\, 
        \display0/un1_bytecount_107\, 
        \display0/data_i2c_2_1_0[2]\, 
        \display0/un1_bytecount_147_1_0\, 
        \display0/un1_bytecount_106\, 
        \display0/un1_burst_reg_1002_0\, 
        \display0/burst_reg_1004\, \display0/burst_reg_1005\, 
        \display0/un1_bytecount_150_1_0\, 
        \display0/un1_bytecount_113\, 
        \display0/un2_busy_byte_NE_25_i_a2_0_0\, 
        \display0/bytecount[6]_net_1\, \display0/N_88_2\, 
        \display0/un1_bytecount_145_1\, 
        \display0/un1_bytecount_145_2\, 
        \display0/un1_bytecount_112\, \display0/un1_bytecount_91\, 
        \display0/un1_bytecount_114\, \display0/un1_bytecount_84\, 
        \display0/un1_bytecount_44_0_a2_0\, 
        \display0/bytecount[0]_net_1\, 
        \display0/bytecount_m6_0_a2_7\, 
        \display0/bytecount_m6_0_a2_4\, 
        \display0/bytecount_m6_0_a2_3\, 
        \display0/bytecount_m6_0_a2_5\, 
        \display0/bytecount_m6_0_a2_2\, \display0/N_67\, 
        \display0/N_177\, \display0/N_94\, \display0/N_180\, 
        \display0/un1_bytecount_99_2\, 
        \display0/un1_bytecount_153_2\, 
        \display0/un1_bytecount_75_0\, 
        \display0/un1_bytecount_87\, 
        \display0/un1_bytecount_153_1\, 
        \display0/un1_bytecount_70_0\, 
        \display0/un1_bytecount_90\, 
        \display0/un1_bytecount_153_0\, 
        \display0/un1_bytecount_108_0\, 
        \display0/un1_bytecount_108_5\, 
        \display0/un1_bytecount_83\, 
        \display0/un1_bytecount_93_3\, 
        \display0/burst_reg_1006_m_15_0\, \display0/N_93\, 
        \display0/N_127\, \display0/un1_bytecount_15_2\, 
        \display0/bytecount[5]_net_1\, 
        \display0/un1_bytecount_156_0\, 
        \display0/bytecount[4]_net_1\, 
        \display0/bytecount[1]_net_1\, 
        \display0/burst_reg_1006_0\, \display0/burstno_26\, 
        \display0/burst_reg_1006_29_0_a2_0_2\, 
        \display0/burstNo[0]_net_1\, 
        \display0/un1_bytecount_80_0\, 
        \display0/un1_bytecount_57_3\, 
        \display0/un1_bytecount_69_1\, 
        \display0/un1_bytecount_146_0\, 
        \display0/un1_bytecount_18_0\, 
        \display0/un1_bytecount_20\, 
        \display0/un1_bytecount_88_3\, \display0/N_65\, 
        \display0/un1_bytecount_134_0\, 
        \display0/un1_bytecount_72_4\, 
        \display0/un1_bytecount_27\, 
        \display0/un1_bytecount_92_3\, 
        \display0/un1_bytecount_91_0\, 
        \display0/un1_bytecount_91_3\, 
        \display0/un1_bytecount_176_1\, 
        \display0/un1_bytecount_83_3\, 
        \display0/bytecount[2]_net_1\, 
        \display0/un1_bytecount_113_0\, 
        \display0/un1_bytecount_89_0\, 
        \display0/un1_bytecount_89_3\, 
        \display0/state_ns_i_a2_0_a2_1_0[1]\, \display0/N_34\, 
        \display0/N_57_17\, \display0/burst_reg_1005_3\, 
        \display0/burst_reg_1005_1\, \display0/burstno_18\, 
        \display0/burst_reg_1005_2\, \display0/burst_reg_1002_2\, 
        \display0/burst_reg_1002_1\, 
        \display0/un1_bytecount_76_2\, 
        \display0/un1_bytecount_94_2\, 
        \display0/un1_bytecount_40_2\, 
        \display0/un1_bytecount_130_0\, 
        \display0/un1_bytecount_23\, 
        \display0/un1_bytecount_68_0\, 
        \display0/un1_bytecount_94_1\, 
        \display0/un1_bytecount_64_0\, 
        \display0/un1_bytecount_90_0\, 
        \display0/un1_bytecount_177_0_a2_0_0\, 
        \display0/un1_bytecount_41_2\, 
        \display0/un1_bytecount_87_0\, \display0/N_4_i\, 
        \display0/un1_bytecount_96_2\, 
        \display0/un1_bytecount_105_0\, \display0/N_48\, 
        \display0/un1_bytecount_116_1\, 
        \display0/un1_bytecount_116_2\, \display0/N_71\, 
        \display0/un1_bytecount_88_0\, 
        \display0/un1_bytecount_112_0\, 
        \display0/un1_bytecount_9_2\, 
        \display0/un1_bytecount_86_0\, 
        \display0/burst_reg_1003_2\, \display0/burst_reg_1003_1\, 
        \display0/burst_reg_1004_2\, \display0/burst_reg_1004_1\, 
        \display0/un1_bytecount_79_0\, 
        \display0/un1_bytecount_166_1\, \display0/N_62\, 
        \display0/un1_bytecount_165_0_a2_1_0\, \display0/N_174_1\, 
        \display0/bytecount_m6_0_a2_5_7\, 
        \display0/bytecount_m6_0_a2_5_3\, 
        \display0/bytecount_m6_0_a2_5_6\, 
        \display0/bytecount_m6_0_a2_5_1\, 
        \display0/bytecount_m6_0_a2_5_0\, 
        \display0/un1_bytecount_27_0\, 
        \display0/un1_bytecount_99_3\, 
        \display0/burst_reg_1006_m_25_2_0\, 
        \display0/burst_reg_1006_29_0_a2_0_0\, 
        \display0/burstNo[3]_net_1\, 
        \display0/un1_bytecount_10_0\, 
        \display0/burst_reg_1002_30_13\, 
        \display0/burst_reg_1002_30_5\, 
        \display0/burst_reg_1002_30_4\, 
        \display0/burst_reg_1002_30_11\, 
        \display0/burst_reg_1002_30_12\, 
        \display0/burst_reg_1002_30_1\, 
        \display0/burst_reg_1002_30_0\, 
        \display0/burst_reg_1002_30_9\, 
        \display0/burst_reg_1002_30_7\, 
        \display0/burstNo[29]_net_1\, 
        \display0/burst_reg_1002_30_3\, 
        \display0/burstNo[21]_net_1\, 
        \display0/burstNo[27]_net_1\, 
        \display0/burstNo[25]_net_1\, 
        \display0/burstNo[23]_net_1\, 
        \display0/burstNo[19]_net_1\, 
        \display0/burstNo[31]_net_1\, 
        \display0/burstNo[17]_net_1\, 
        \display0/burstno_26_0_a2_4\, 
        \display0/burstno_26_0_a2_1\, 
        \display0/burstNo[11]_net_1\, 
        \display0/burstno_26_0_a2_3\, 
        \display0/burstNo[13]_net_1\, 
        \display0/burstno_26_0_a2_2\, 
        \display0/burstNo[15]_net_1\, \display0/burstNo[9]_net_1\, 
        \display0/burstNo[5]_net_1\, 
        \display0/burst_reg_1002_18_0_a2_0\, 
        \display0/burstNo[7]_net_1\, \display0/N_54\, 
        \display0/data_i2c_2_4_tz[3]\, \display0/N_660_2\, 
        \display0/N_639_2\, \display0/un1_state_9\, 
        \display0/un1_data_i2c_5\, \display0/un1_state_10\, 
        \display0/un1_data_i2c_6\, \display0/un1_state_8\, 
        \display0/un1_data_i2c_4\, \display0/un1_state_11\, 
        \display0/un1_data_i2c_7\, \display0/un1_state_7\, 
        \display0/un1_data_i2c_3\, \display0/un1_state_5\, 
        \display0/un1_data_i2c_1\, \display0/data_i2c_2[2]\, 
        \display0/burst_reg_20_m_4[2]\, 
        \display0/burst_reg_20_m_2[1]\, \display0/data_i2c_1[1]\, 
        \display0/burst_reg_3_m_2[0]\, 
        \display0/burst_reg_20_m[1]\, \display0/data_i2c_2[1]\, 
        \display0/burst_reg_3_m_11[0]\, 
        \display0/burst_reg_20_m_1[1]\, \display0/data_i2c_1[2]\, 
        \display0/burst_reg_20_m_0[1]\, \display0/un1_state_6\, 
        \display0/un1_data_i2c_2\, \display0/un1_state_4\, 
        \display0/un1_data_i2c\, \display0/data_i2c_2[3]\, 
        \display0/burst_reg_20_m_6[2]\, \display0/data_i2c_1[0]\, 
        \display0/burst_reg_3_m_1[0]\, 
        \display0/burst_reg_3_m_7[0]\, \display0/data_i2c_2[0]\, 
        \display0/burst_reg_3_m_10[0]\, 
        \display0/burst_reg_3_m_9[0]\, \display0/data_i2c_2[4]\, 
        \display0/burst_reg_3_m_14[0]\, \display0/data_i2c_1[4]\, 
        \display0/burst_reg_3_m_5[0]\, \display0/data_i2c_2[6]\, 
        \display0/burst_reg_3_m_17[0]\, 
        \display0/data_i2c_2_2_iv_0[6]\, \display0/data_i2c_2[7]\, 
        \display0/burst_reg_3_m_19[0]\, 
        \display0/burst_reg_2_m_2\, \display0/data_i2c_1[6]\, 
        \display0/burst_reg_3_m_8[0]\, 
        \display0/data_i2c_1_2_iv_0[6]\, \display0/data_i2c_1[5]\, 
        \display0/N_637\, \display0/data_i2c_2[5]\, 
        \display0/N_658\, \display0/N_86\, \display0/N_919\, 
        \display0/N_60\, \display0/N_640\, 
        \display0/un1_bytecount_69\, 
        \display0/un1_bytecount_150_1\, 
        \display0/un1_bytecount_56_2\, 
        \display0/un1_bytecount_96\, \display0/un1_bytecount_64\, 
        \display0/un1_bytecount_78\, \display0/un1_bytecount_28\, 
        \display0/N_112\, \display0/un1_bytecount_62_5\, 
        \display0/un1_bytecount_66_2\, 
        \display0/un1_bytecount_87_2\, 
        \display0/un1_bytecount_92_4\, 
        \display0/un1_bytecount_139\, \display0/un1_bytecount_24\, 
        \display0/un1_bytecount_26\, \display0/un1_bytecount_25\, 
        \display0/un1_bytecount_39\, \display0/un1_bytecount_38\, 
        \display0/un1_bytecount_99_5\, 
        \display0/un1_bytecount_99_1\, 
        \display0/un1_bytecount_11\, \display0/un1_bytecount_10\, 
        \display0/un1_bytecount_12\, 
        \display0/un1_bytecount_115_5\, 
        \display0/un1_bytecount_73\, 
        \display0/un1_bytecount_78_5\, \display0/N_81\, 
        \display0/un1_bytecount_83_5\, 
        \display0/un1_bytecount_95_1\, 
        \display0/un1_bytecount_96_5\, 
        \display0/un1_bytecount_8_3\, \display0/un1_bytecount_15\, 
        \display0/N_153\, \display0/burst_reg_1003\, 
        \display0/un1_bytecount_26_3\, 
        \display0/un1_bytecount_104_5\, 
        \display0/un1_bytecount_35\, 
        \display0/un1_bytecount_62_3\, 
        \display0/un1_bytecount_34\, \display0/N_173\, 
        \display0/un1_burst_reg_1002_1\, 
        \display0/un1_burst_reg_1002_3\, \display0/N_16\, 
        \display0/N_931\, \display0/N_926\, \display0/N_932\, 
        \display0/N_20\, \display0/N_934\, \display0/N_23\, 
        \display0/N_45\, \display0/N_945\, \display0/N_25\, 
        \display0/N_27\, \display0/N_49\, \display0/N_946\, 
        \display0/N_29\, \display0/N_927\, \display0/N_53\, 
        \display0/N_79\, \display0/N_928\, \display0/N_673_i_0\, 
        \display0/N_98\, \display0/N_139\, \display0/N_39\, 
        \display0/N_99\, \display0/N_619\, \display0/N_929\, 
        \display0/N_55\, \display0/N_37\, \display0/N_96\, 
        \display0/un1_bytecount_127\, 
        \display0/un1_bytecount_146_1\, 
        \display0/un1_bytecount_19_0\, 
        \display0/un1_bytecount_17_0\, \display0/bytecount_n3\, 
        \display0/bytecount_44_0\, \display0/state_RNO[4]_net_1\, 
        \display0/N_921\, \display0/N_879_tz\, 
        \display0/burstno_29\, \display0/state_ns_i_a2_0_o2_0[1]\, 
        \display0/state_ns_1[5]\, \display0/data_i2c_1_3_tz[4]\, 
        \display0/un1_bytecount_85_1\, 
        \display0/un1_bytecount_81_1\, 
        \display0/un1_bytecount_85_5\, \display0/bytecount_n20\, 
        \display0/N_111\, \display0/N_109\, \display0/N_935\, 
        \display0/N_113\, \display0/N_915\, 
        \display0/un1_bytecount_168_1\, 
        \display0/un1_bytecount_178_2\, \display0/busy_2\, 
        \display0/state[5]_net_1\, \display0/N_12\, 
        \display0/N_15\, \display0/busy_byte\, \display0/N_925\, 
        \display0/N_50\, \display0/bytecount_n17\, 
        \display0/bytecount_n30\, \display0/N_933\, 
        \display0/N_614\, \display0/N_61\, \display0/N_31\, 
        \display0/un1_bytecount_16\, \display0/un1_bytecount_9\, 
        \display0/data_i2c[6]_net_1\, 
        \display0/data_i2c[0]_net_1\, \display0/N_583\, 
        \display0/un1_state_12[7]\, \display0/un1_state_12[1]\, 
        \display0/data_i2c[5]_net_1\, 
        \display0/data_i2c[2]_net_1\, \display0/un1_state_12[5]\, 
        \display0/un1_state_12[2]\, \display0/un1_bytecount_76_4\, 
        \display0/data_i2c[1]_net_1\, \display0/un1_state_12[6]\, 
        \display0/data_i2c[7]_net_1\, \display0/data_i2c_1[7]\, 
        \display0/data_i2c[4]_net_1\, 
        \display0/data_i2c[3]_net_1\, \display0/burst_reg_2_m\, 
        \display0/un1_state_12[4]\, \display0/un1_state_12[3]\, 
        \display0/un1_state_12[0]\, \display0/un1_bytecount_33\, 
        \display0/un1_bytecount_32\, \display0/un1_bytecount_67\, 
        \display0/bytecount_n31\, \display0/N_64_i\, 
        \display0/N_46\, \display0/N_100\, \display0/N_10\, 
        \display0/N_8\, \display0/N_6\, \display0/N_18\, 
        \display0/state_RNO[2]_net_1\, \display0/N_66_i\, 
        \display0/N_14\, \display0/N_118\, \display0/N_110\, 
        \display0/bytecount_n22\, \display0/bytecount_n21\, 
        \display0/bytecount_n19\, \display0/bytecount_n18\, 
        \display0/state_ns[5]\, \display0/un1_ena_2\, 
        \display0/burstNo_4[1]\, \display0/burstNo_4[3]\, 
        \display0/burstNo_4[4]\, \display0/burstNo_4[5]\, 
        \display0/I_100\, \display0/burstNo_4[6]\, 
        \display0/burstNo_4[7]\, \display0/I_99\, 
        \display0/burstNo_4[9]\, \display0/burstNo_4[2]\, 
        \display0/I_120\, \display0/burstNo_4[0]\, 
        \display0/DWACT_ADD_CI_0_partial_sum[0]\, 
        \display0/burstNo_4[31]\, \display0/burstNo_4[30]\, 
        \display0/burstNo_4[29]\, \display0/burstNo_4[28]\, 
        \display0/burstNo_4[27]\, \display0/burstNo_4[26]\, 
        \display0/burstNo_4[25]\, \display0/burstNo_4[24]\, 
        \display0/burstNo_4[23]\, \display0/I_127\, 
        \display0/burstNo_4[22]\, \display0/burstNo_4[21]\, 
        \display0/I_124\, \display0/burstNo_4[20]\, 
        \display0/burstNo_4[19]\, \display0/I_128\, 
        \display0/burstNo_4[18]\, \display0/burstNo_4[17]\, 
        \display0/burstNo_4[16]\, \display0/burstNo_4[15]\, 
        \display0/I_118\, \display0/burstNo_4[14]\, 
        \display0/burstNo_4[13]\, \display0/I_106\, 
        \display0/burstNo_4[12]\, \display0/burstNo_4[11]\, 
        \display0/I_107\, \display0/burstNo_4[10]\, 
        \display0/burstNo_4[8]\, \display0/ena_net_1\, 
        \display0/DWACT_ADD_CI_0_pog_array_2_4[0]\, 
        \display0/DWACT_ADD_CI_0_pog_array_1_6[0]\, 
        \display0/DWACT_ADD_CI_0_pog_array_1_12[0]\, 
        \display0/DWACT_ADD_CI_0_pog_array_1_2[0]\, 
        \display0/i2c0/un1_i2c0_0\, \display0/i2c0/N_262\, 
        \display0/i2c0/un3_counter_0_a2_4_a2_1\, 
        \display0/i2c0/un3_counter_0_a2_4_a2_2\, 
        \display0/i2c0/databite_0\, 
        \display0/i2c0/state[6]_net_1\, 
        \display0/i2c0/state[20]_net_1\, 
        \display0/i2c0/addrbite_0\, 
        \display0/i2c0/state[15]_net_1\, 
        \display0/i2c0/un1_state_8_0\, \display0/i2c0/N_274\, 
        \display0/i2c0/N_188_1\, \display0/i2c0/un1_state_7_0\, 
        \display0/i2c0/N_187_1\, 
        \display0/i2c0/databit_N_13_mux_i_0_10\, 
        \display0/i2c0/databit_N_13_mux_i_0_7\, 
        \display0/i2c0/databit_N_13_mux_i_0_6\, 
        \display0/i2c0/databit_N_13_mux_i_0_8\, 
        \display0/i2c0/databit[18]_net_1\, 
        \display0/i2c0/databit[17]_net_1\, 
        \display0/i2c0/databit_N_13_mux_i_0_5\, 
        \display0/i2c0/databit[16]_net_1\, 
        \display0/i2c0/databit[21]_net_1\, 
        \display0/i2c0/databit_N_13_mux_i_0_3\, 
        \display0/i2c0/databit[24]_net_1\, 
        \display0/i2c0/databit[25]_net_1\, 
        \display0/i2c0/databit_N_13_mux_i_0_1\, 
        \display0/i2c0/databit[20]_net_1\, 
        \display0/i2c0/databit[19]_net_1\, 
        \display0/i2c0/databit[14]_net_1\, 
        \display0/i2c0/databit[15]_net_1\, 
        \display0/i2c0/databit[23]_net_1\, 
        \display0/i2c0/databit[22]_net_1\, 
        \display0/i2c0/databit_N_13_mux_i_a0_10\, 
        \display0/i2c0/databit_N_13_mux_i_a0_7\, 
        \display0/i2c0/databit_N_13_mux_i_a0_6\, 
        \display0/i2c0/databit_N_13_mux_i_a0_8\, 
        \display0/i2c0/databit_N_13_mux_i_a0_5\, 
        \display0/i2c0/databit[8]_net_1\, 
        \display0/i2c0/databit[10]_net_1\, 
        \display0/i2c0/databit_N_13_mux_i_a0_3\, 
        \display0/i2c0/databit[9]_net_1\, 
        \display0/i2c0/databit[4]_net_1\, 
        \display0/i2c0/databit_N_13_mux_i_a0_1\, 
        \display0/i2c0/databit[11]_net_1\, 
        \display0/i2c0/databit[13]_net_1\, 
        \display0/i2c0/databit[7]_net_1\, 
        \display0/i2c0/databit[2]_net_1\, 
        \display0/i2c0/databit[5]_net_1\, 
        \display0/i2c0/databit[6]_net_1\, 
        \display0/i2c0/databit[12]_net_1\, 
        \display0/i2c0/databit[3]_net_1\, 
        \display0/i2c0/N_1032_i\, \display0/i2c0/N_1020\, 
        \display0/i2c0/N_104\, \display0/i2c0/N_197\, 
        \display0/i2c0/N_1057\, \display0/i2c0/databit[31]_net_1\, 
        \display0/i2c0/N_18\, \display0/i2c0/un1_state_7\, 
        \display0/i2c0/N_1016\, \display0/i2c0/N_728\, 
        \display0/i2c0/databit_n8_0_0_0\, \display0/i2c0/N_727\, 
        \display0/i2c0/N_71\, \display0/i2c0/N_32\, 
        \display0/i2c0/N_19\, \display0/i2c0/N_19_tz\, 
        \display0/i2c0/N_803\, \display0/i2c0/N_804\, 
        \display0/i2c0/N_804_tz\, \display0/i2c0/N_805\, 
        \display0/i2c0/N_806\, \display0/i2c0/N_806_tz\, 
        \display0/i2c0/N_807\, \display0/i2c0/N_808\, 
        \display0/i2c0/N_808_tz\, \display0/i2c0/N_809\, 
        \display0/i2c0/N_809_tz\, \display0/i2c0/N_810\, 
        \display0/i2c0/N_1039\, \display0/i2c0/N_811\, 
        \display0/i2c0/N_1041\, 
        \display0/i2c0/databit_n22_i_0_a2_0\, 
        \display0/i2c0/N_812\, \display0/i2c0/N_1044\, 
        \display0/i2c0/N_813\, 
        \display0/i2c0/databit_n25_i_0_a2_0\, 
        \display0/i2c0/N_814\, \display0/i2c0/N_815\, 
        \display0/i2c0/N_815_tz\, \display0/i2c0/N_816\, 
        \display0/i2c0/N_20\, \display0/i2c0/N_20_tz\, 
        \display0/i2c0/N_1018\, \display0/i2c0/N_1019\, 
        \display0/i2c0/N_1019_tz\, \display0/i2c0/N_1014\, 
        \display0/i2c0/N_1015\, \display0/i2c0/N_720\, 
        \display0/i2c0/databit[0]_net_1\, \display0/i2c0/N_723\, 
        \display0/i2c0/N_724\, \display0/i2c0/N_177_i\, 
        \display0/i2c0/N_725\, \display0/i2c0/N_726\, 
        \display0/i2c0/N_182_i\, \display0/i2c0/databit[1]_net_1\, 
        \display0/i2c0/N_1033\, \display0/i2c0/N_1035\, 
        \display0/i2c0/N_1037\, \display0/i2c0/N_1047\, 
        \display0/i2c0/databit[26]_net_1\, 
        \display0/i2c0/databit[27]_net_1\, \display0/i2c0/N_1053\, 
        \display0/i2c0/databit[28]_net_1\, 
        \display0/i2c0/databit[29]_net_1\, 
        \display0/i2c0/databit[30]_net_1\, 
        \display0/i2c0/state_i[20]\, 
        \display0/i2c0/state_ns_i_a2_0_a2_0_1[3]_net_1\, 
        \display0/i2c0/N_106_4\, \display0/i2c0/state[18]_net_1\, 
        \display0/i2c0/addrbit[31]_net_1\, 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_19_net_1\, 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_12_net_1\, 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_1\, 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_0\, 
        \display0/i2c0/addrbit[15]_net_1\, 
        \display0/i2c0/addrbit[19]_net_1\, 
        \display0/i2c0/state_ns_i_a2_0_a2_0_4_0[3]\, 
        \display0/i2c0/state_ns_i_a2_0_a2_0_4_1[3]\, 
        \display0/i2c0/N_1025\, 
        \display0/i2c0/addrbit_n20_i_a3_0\, 
        \display0/i2c0/addrbit[20]_net_1\, 
        \display0/i2c0/un1_state_8\, 
        \display0/i2c0/state_ns_0_i_0_a2_0_1[12]\, 
        \display0/i2c0/N_1054\, \display0/i2c0/state[9]_net_1\, 
        \display0/i2c0/addrbit_m1_e_1_8\, 
        \display0/i2c0/addrbit_RNI2J3L[14]_net_1\, 
        \display0/i2c0/addrbit_m1_e_1_5\, 
        \display0/i2c0/addrbit_m1_e_1_6\, 
        \display0/i2c0/addrbit_m1_e_1_1\, 
        \display0/i2c0/addrbit_m1_e_1_0\, 
        \display0/i2c0/addrbit_m1_e_1_3\, 
        \display0/i2c0/addrbit[21]_net_1\, 
        \display0/i2c0/addrbit_n24_i_o3_i_o2_0\, 
        \display0/i2c0/addrbit[18]_net_1\, 
        \display0/i2c0/addrbit[27]_net_1\, 
        \display0/i2c0/addrbit[26]_net_1\, 
        \display0/i2c0/addrbit[24]_net_1\, 
        \display0/i2c0/addrbit[25]_net_1\, 
        \display0/i2c0/addrbit_N_13_mux_i_2_6\, 
        \display0/i2c0/addrbit_N_13_mux_i_2_4\, 
        \display0/i2c0/addrbit_N_13_mux_i_2_3\, 
        \display0/i2c0/addrbit_N_13_mux_i_2_1\, 
        \display0/i2c0/addrbit[12]_net_1\, 
        \display0/i2c0/addrbit[13]_net_1\, 
        \display0/i2c0/addrbit_m6_e_1_7\, 
        \display0/i2c0/addrbit_m6_e_1_2\, 
        \display0/i2c0/addrbit_m6_e_1_1\, 
        \display0/i2c0/addrbit_m6_e_1_6\, 
        \display0/i2c0/addrbit_m6_e_1_4\, 
        \display0/i2c0/addrbit[17]_net_1\, 
        \display0/i2c0/addrbit[16]_net_1\, 
        \display0/i2c0/addrbit[14]_net_1\, 
        \display0/i2c0/un2_sda_0_0_3\, 
        \display0/i2c0/un2_sda_0_0_0\, \display0/i2c0/N_189\, 
        \display0/i2c0/un2_sda_0_0_1\, 
        \display0/i2c0/un2_sda_0_0_a2_2_0\, 
        \display0/i2c0/un2_sda_0_0_a2_3_1\, 
        \display0/i2c0/N_1043\, \display0/i2c0/N_112_i\, 
        \display0/i2c0/N_167\, \display0/i2c0/N_191\, 
        \display0/i2c0/addrbit_m6_e_0_6\, 
        \display0/i2c0/addrbit_m6_e_0_4\, 
        \display0/i2c0/addrbit[7]_net_1\, 
        \display0/i2c0/addrbit[6]_net_1\, 
        \display0/i2c0/addrbit_m6_e_0_5\, 
        \display0/i2c0/addrbit_m6_e_0_2\, 
        \display0/i2c0/addrbit[5]_net_1\, 
        \display0/i2c0/addrbit[4]_net_1\, 
        \display0/i2c0/addrbit[10]_net_1\, 
        \display0/i2c0/addrbit[11]_net_1\, 
        \display0/i2c0/addrbit[8]_net_1\, 
        \display0/i2c0/addrbit[3]_net_1\, 
        \display0/i2c0/addrbit[9]_net_1\, 
        \display0/i2c0/un2_sda_0_0_a2_4_0\, 
        \display0/i2c0/counter_i_0[3]\, 
        \display0/i2c0/counter_i_0[5]\, 
        \display0/i2c0/counter[6]_net_1\, 
        \display0/i2c0/counter_i_0[4]\, 
        \display0/i2c0/counter_i_0[2]\, 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_23\, 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_15\, 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_14\, 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_22\, 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_18\, 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_21\, 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_7\, 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_6\, 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_17\, 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_11\, 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_9\, 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_5\, 
        \display0/i2c0/addrbit[22]_net_1\, 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_3\, 
        \display0/i2c0/addrbit[0]_net_1\, 
        \display0/i2c0/addrbit[23]_net_1\, \display0/i2c0/N_1056\, 
        \display0/i2c0/scl_1_1_0_i_a2_0_a2_0_a2_4\, 
        \display0/i2c0/scl_1_1_0_i_a2_0_a2_0_a2_2\, 
        \display0/i2c0/state[1]_net_1\, 
        \display0/i2c0/state[7]_net_1\, 
        \display0/i2c0/scl_1_1_0_i_a2_0_a2_0_a2_3\, 
        \display0/i2c0/state[19]_net_1\, 
        \display0/i2c0/state[13]_net_1\, 
        \display0/i2c0/state[4]_net_1\, 
        \display0/i2c0/state[16]_net_1\, 
        \display0/i2c0/state[10]_net_1\, 
        \display0/i2c0/busy_byte_1_0_a2_0_a2_0_a2_0_a2_1\, 
        \display0/i2c0/state[2]_net_1\, 
        \display0/i2c0/un2_sda_0_0_a2_1_0\, 
        \display0/i2c0/un1_state_6_0_a2_0_a3_0_a2_1\, 
        \display0/i2c0/un1_state_6_0_a2_0_a3_0_a2_0\, 
        \display0/i2c0/state[11]_net_1\, 
        \display0/i2c0/addrbit[28]_net_1\, 
        \display0/i2c0/addrbit[29]_net_1\, 
        \display0/i2c0/addrbit[30]_net_1\, \display0/i2c0/N_97\, 
        \display0/i2c0/addrbit_N_13_mux_0\, 
        \display0/i2c0/addrbit_N_13_mux_1\, 
        \display0/i2c0/addrbit_N_3_mux\, \display0/i2c0/N_907\, 
        \display0/i2c0/N_896\, \display0/i2c0/sda_1_RNO_net_1\, 
        \display0/i2c0/N_1021\, \display0/i2c0/state_ns[6]\, 
        \display0/i2c0/un1_i2c0\, \display0/i2c0/N_168\, 
        \display0/i2c0/scl_1_RNO_net_1\, 
        \display0/i2c0/busy_byte_1\, \display0/i2c0/N_653_1\, 
        \display0/i2c0/N_152\, \display0/i2c0/state[8]_net_1\, 
        \display0/i2c0/sda_e_RNO_net_1\, \display0/i2c0/N_244\, 
        \display0/i2c0/state[17]_net_1\, \display0/i2c0/N_81\, 
        \display0/i2c0/N_1049\, \display0/i2c0/state_ns[15]\, 
        \display0/i2c0/N_758\, \display0/i2c0/N_899\, 
        \display0/i2c0/N_801\, \display0/i2c0/N_62\, 
        \display0/i2c0/N_85\, \display0/i2c0/N_1055\, 
        \display0/i2c0/N_83\, \display0/i2c0/N_1051\, 
        \display0/i2c0/N_79\, \display0/i2c0/N_1048\, 
        \display0/i2c0/N_77\, \display0/i2c0/counter_i_0[0]\, 
        \display0/i2c0/counter_i_0[1]\, \display0/i2c0/N_760\, 
        \display0/i2c0/N_901\, \display0/i2c0/N_759\, 
        \display0/i2c0/N_900\, \display0/i2c0/N_889\, 
        \display0/i2c0/addrbit[2]_net_1\, \display0/i2c0/N_895\, 
        \display0/i2c0/N_888\, \display0/i2c0/addrbit[1]_net_1\, 
        \display0/i2c0/N_769\, \display0/i2c0/N_910\, 
        \display0/i2c0/N_768\, \display0/i2c0/N_909\, 
        \display0/i2c0/N_767\, \display0/i2c0/N_908\, 
        \display0/i2c0/N_27\, \display0/i2c0/N_29\, 
        \display0/i2c0/N_95\, \display0/i2c0/N_31\, 
        \display0/i2c0/addrbit_n23_i_a3_0\, \display0/i2c0/N_33\, 
        \display0/i2c0/N_35\, \display0/i2c0/N_891\, 
        \display0/i2c0/N_893\, \display0/i2c0/N_99\, 
        \display0/i2c0/N_892\, \display0/i2c0/N_98\, 
        \display0/i2c0/N_1027\, \display0/i2c0/N_1029\, 
        \display0/i2c0/N_1031\, \display0/i2c0/N_78\, 
        \display0/i2c0/N_762\, \display0/i2c0/N_903\, 
        \display0/i2c0/N_763\, \display0/i2c0/N_904\, 
        \display0/i2c0/N_764\, \display0/i2c0/N_765\, 
        \display0/i2c0/N_906\, \display0/i2c0/N_21\, 
        \display0/i2c0/N_911\, \display0/i2c0/N_23\, 
        \display0/i2c0/N_912\, \display0/i2c0/N_25\, 
        \display0/i2c0/N_913\, \display0/i2c0/N_37\, 
        \display0/i2c0/N_60\, \display0/i2c0/N_39\, 
        \display0/i2c0/N_61\, \display0/i2c0/N_914\, 
        \display0/i2c0/N_105\, \display0/i2c0/N_717\, 
        \display0/i2c0/N_100\, \display0/i2c0/N_755\, 
        \display0/i2c0/N_756\, \display0/i2c0/N_897\, 
        \display0/i2c0/N_890\, \display0/i2c0/N_902\, 
        \display0/i2c0/N_894\, \display0/i2c0/N_898\, 
        \display0/i2c0/N_159\, \display0/i2c0/N_87\, 
        \display0/i2c0/N_174\, \display0/i2c0/state_ns[0]\, 
        \display0/i2c0/state[0]_net_1\, \display0/i2c0/N_15\, 
        \display0/i2c0/N_1023\, \display0/i2c0/N_151\, 
        \display0/i2c0/N_164\, \display0/i2c0/addrbite\, 
        \display0/i2c0/N_757\, \display0/i2c0/state[5]_net_1\, 
        \display0/i2c0/state[3]_net_1\, \display0/i2c0/N_1017\, 
        \display0/i2c0/databite\, \display0/i2c0/N_243\, 
        \display0/i2c0/busy_burst_net_1\, 
        \display0/i2c0/state[14]_net_1\, 
        \display0/i2c0/state[12]_net_1\, \VCC\, \GND\, 
        \D1_pad/U0/NET1\, \D1_pad/U0/NET2\, \clk_pad/U0/NET1\, 
        \oled_reset_pad/U0/NET1\, \oled_reset_pad/U0/NET2\, 
        \scl_pad/U0/NET1\, \scl_pad/U0/NET2\, \sda_pad/U0/NET1\, 
        \sda_pad/U0/NET2\, \D2_pad/U0/NET1\, \D2_pad/U0/NET2\, 
        \D3_pad/U0/NET1\, \D3_pad/U0/NET2\, AFLSDF_VCC, 
        AFLSDF_GND : std_logic;
    signal GND_power_net1 : std_logic;
    signal VCC_power_net1 : std_logic;

begin 

    AFLSDF_GND <= GND_power_net1;
    \GND\ <= GND_power_net1;
    \VCC\ <= VCC_power_net1;
    AFLSDF_VCC <= VCC_power_net1;

    \display0/i2c0/databit_RNO[17]\ : XA1C
      port map(A => \display0/i2c0/N_1035\, B => 
        \display0/i2c0/databit[17]_net_1\, C => 
        \display0/i2c0/un1_state_7\, Y => \display0/i2c0/N_807\);
    
    \display0/data_i2c_RNO_30[0]\ : OR3
      port map(A => \display0/data_i2c_1_0_5[0]\, B => 
        \display0/data_i2c_1_0_4[0]\, C => 
        \display0/un1_bytecount_173\, Y => 
        \display0/data_i2c_1_0_11[0]\);
    
    \display0/bytecount_RNII11C1[4]\ : NOR2A
      port map(A => \display0/un1_bytecount_116_2\, B => 
        \display0/N_71\, Y => \display0/un1_bytecount_116_1\);
    
    \D2_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => \VCC\, E => \VCC\, DOUT => \D2_pad/U0/NET1\, 
        EOUT => \D2_pad/U0/NET2\);
    
    \display0/i2c0/state_tr8_0_a2_0_a2_1_13_RNO\ : NOR2
      port map(A => \display0/i2c0/addrbit[23]_net_1\, B => 
        \display0/i2c0/addrbit[10]_net_1\, Y => 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_1\);
    
    \display0/i2c0/busy_burst_RNO\ : INV
      port map(A => \display0/i2c0/state[20]_net_1\, Y => 
        \display0/i2c0/state_i[20]\);
    
    \display0/data_i2c_RNO_4[5]\ : MX2
      port map(A => \display0/un1_bytecount_44\, B => 
        \display0/data_i2c_2_1_tz[5]\, S => 
        \display0/burst_reg_1006\, Y => 
        \display0/data_i2c_2_2_iv_0[5]\);
    
    \display0/bytecount_RNI933F4[6]\ : OA1B
      port map(A => \display0/un1_bytecount_35\, B => 
        \display0/un1_bytecount_34\, C => 
        \display0/bytecount[6]_net_1\, Y => 
        \display0/un1_bytecount_164\);
    
    \display0/un1_burstNo_2_I_168\ : NOR2B
      port map(A => \display0/DWACT_ADD_CI_0_g_array_9[0]\, B => 
        \display0/burstNo[24]_net_1\, Y => 
        \display0/DWACT_ADD_CI_0_g_array_12_11[0]\);
    
    \display0/bytecount_RNIMP011_2[6]\ : NOR2
      port map(A => \display0/bytecount[6]_net_1\, B => 
        \display0/N_94\, Y => \display0/un1_bytecount_90_0\);
    
    \display0/burstNo_RNI4V45_1[1]\ : NOR2B
      port map(A => \display0/burstno_18\, B => 
        \display0/burst_reg_1002_1\, Y => 
        \display0/burst_reg_1002_2\);
    
    \display0/i2c0/databit_RNO[23]\ : XA1C
      port map(A => \display0/i2c0/N_1041\, B => 
        \display0/i2c0/databit[23]_net_1\, C => 
        \display0/i2c0/un1_state_7_0\, Y => 
        \display0/i2c0/N_1018\);
    
    \display0/bytecount_RNI09KFC[1]\ : OR2
      port map(A => \display0/un1_bytecount_169\, B => 
        \display0/un1_bytecount_142\, Y => 
        \display0/data_i2c_2_2_iv_2_tz_2[4]\);
    
    \display0/bytecount_0_RNIC2MN_0[1]\ : NOR2A
      port map(A => \display0/un1_bytecount_166_1\, B => 
        \display0/N_62\, Y => \display0/un1_bytecount_18_0\);
    
    \display0/burstNo[26]\ : DFN1C0
      port map(D => \display0/burstNo_4[26]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[26]_net_1\);
    
    \display0/i2c0/addrbit_RNIKSRG6[28]\ : OR2A
      port map(A => \display0/i2c0/addrbit_N_3_mux\, B => 
        \display0/i2c0/addrbit[28]_net_1\, Y => 
        \display0/i2c0/N_60\);
    
    \display0/burstNo[10]\ : DFN1C0
      port map(D => \display0/burstNo_4[10]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[10]_net_1\);
    
    \display0/data_i2c_RNO[7]\ : MX2
      port map(A => \display0/un1_state_4\, B => 
        \display0/data_i2c_2[7]\, S => \display0/N_43\, Y => 
        \display0/un1_state_12[0]\);
    
    \display0/un1_bytecount_152_1_RNO\ : NOR3C
      port map(A => \display0/un1_bytecount_99_2\, B => 
        \display0/un1_bytecount_95_1\, C => 
        \display0/un1_bytecount_96_5\, Y => 
        \display0/un1_bytecount_95\);
    
    \display0/bytecount_RNIOR011[6]\ : NOR2A
      port map(A => \display0/un1_bytecount_89_3\, B => 
        \display0/bytecount[6]_net_1\, Y => 
        \display0/un1_bytecount_89_0\);
    
    \display0/burstNo_RNO[18]\ : XA1
      port map(A => \display0/burstNo[18]_net_1\, B => 
        \display0/DWACT_ADD_CI_0_g_array_11_3[0]\, C => 
        \display0/un1_ena_2\, Y => \display0/burstNo_4[18]\);
    
    \display0/data_i2c_RNO_5[1]\ : NOR2A
      port map(A => \display0/un1_bytecount_62\, B => 
        \display0/N_583\, Y => \display0/burst_reg_20_m_1[1]\);
    
    \display0/un1_burstNo_2_I_142\ : NOR2B
      port map(A => \display0/DWACT_ADD_CI_0_g_array_9[0]\, B => 
        \display0/DWACT_ADD_CI_0_pog_array_1_11[0]\, Y => 
        \display0/DWACT_ADD_CI_0_g_array_11_5[0]\);
    
    \display0/data_i2c_RNO_16[2]\ : OR3
      port map(A => \display0/N_645_4\, B => 
        \display0/un1_bytecount_51\, C => 
        \display0/un1_bytecount_150\, Y => 
        \display0/data_i2c_2_0_4[2]\);
    
    \display0/bytecount_RNINE0M[5]\ : NOR2B
      port map(A => \display0/bytecount[0]_net_1\, B => 
        \display0/bytecount[5]_net_1\, Y => \display0/N_88_2\);
    
    \display0/i2c0/busy_byte_RNO_0\ : NOR3
      port map(A => \display0/i2c0/state[1]_net_1\, B => 
        \display0/i2c0/state[2]_net_1\, C => 
        \display0/i2c0/state[4]_net_1\, Y => 
        \display0/i2c0/busy_byte_1_0_a2_0_a2_0_a2_0_a2_1\);
    
    \display0/i2c0/scl_1\ : DFN1C0
      port map(D => \display0/i2c0/scl_1_RNO_net_1\, CLK => clk_c, 
        CLR => oled_reset_c_c, Q => \display0.i2c0.scl_1\);
    
    \display0/bytecount_RNI4N1D2_4[5]\ : NOR3C
      port map(A => \display0/un1_bytecount_99_2\, B => 
        \display0/un1_bytecount_116_2\, C => 
        \display0/un1_bytecount_108_5\, Y => 
        \display0/un1_bytecount_107\);
    
    \display0/i2c0/state_RNI7KMI2_0[6]\ : AO1
      port map(A => \display0/i2c0/state[6]_net_1\, B => 
        \display0/i2c0/un1_i2c0_0\, C => 
        \display0/i2c0/state[20]_net_1\, Y => 
        \display0/i2c0/databite_0\);
    
    \display0/i2c0/addrbit[3]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_755\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite\, Q => 
        \display0/i2c0/addrbit[3]_net_1\);
    
    \display0/bytecount_RNO[13]\ : NOR2A
      port map(A => \display0/N_673_i_0\, B => \display0/N_66_i\, 
        Y => \display0/N_14\);
    
    draw_RNO : OR2A
      port map(A => \state[1]_net_1\, B => \state[0]_net_1\, Y
         => state_76_d);
    
    \display0/i2c0/addrbit[23]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_31\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite_0\, Q => 
        \display0/i2c0/addrbit[23]_net_1\);
    
    \display0/un1_burstNo_2_I_189\ : AND2
      port map(A => \display0/burstNo[6]_net_1\, B => 
        \display0/burstNo[7]_net_1\, Y => 
        \display0/DWACT_ADD_CI_0_pog_array_1_2[0]\);
    
    \display0/data_i2c_RNO_17[2]\ : NOR2A
      port map(A => \display0/un1_bytecount_45\, B => 
        \display0/un1_burst_reg_1002_3\, Y => 
        \display0/burst_reg_3_m_0[2]\);
    
    \display0/counter_n4\ : AX1C
      port map(A => \display0/counter_c2_net_1\, B => 
        \counter[3]_net_1\, C => \counter[4]_net_1\, Y => 
        counter_n4);
    
    \display0/burstNo_RNO[2]\ : MX2
      port map(A => \display0/state_ns_1[5]\, B => 
        \display0/I_120\, S => \display0/un1_ena_2_0\, Y => 
        \display0/burstNo_4[2]\);
    
    \display0/i2c0/addrbit_RNIHPHA[15]\ : NOR2
      port map(A => \display0/i2c0/addrbit[15]_net_1\, B => 
        \display0/i2c0/addrbit[16]_net_1\, Y => 
        \display0/i2c0/addrbit_m6_e_1_2\);
    
    \display0/burstNo[2]\ : DFN1C0
      port map(D => \display0/burstNo_4[2]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[2]_net_1\);
    
    \display0/bytecount_RNO[29]\ : XA1A
      port map(A => \display0/bytecount[29]_net_1\, B => 
        \display0/N_55\, C => \display0/N_673_i_0\, Y => 
        \display0/N_929\);
    
    \display0/bytecount_RNIAH122[2]\ : NOR3C
      port map(A => \display0/un1_bytecount_9_2\, B => 
        \display0/un1_bytecount_95_1\, C => 
        \display0/un1_bytecount_57_3\, Y => 
        \display0/un1_bytecount_24\);
    
    \display0/data_i2c_RNO_7[4]\ : OR2
      port map(A => \display0/un1_bytecount_51\, B => 
        \display0/N_655_2\, Y => \display0/data_i2c_2_1_2[4]\);
    
    \display0/bytecount_RNI48P19[7]\ : NOR3C
      port map(A => \display0/un2_busy_byte_NE_i_a2_21\, B => 
        \display0/un2_busy_byte_NE_i_a2_20\, C => 
        \display0/un2_busy_byte_NE_i_a2_22\, Y => 
        \display0/un2_busy_byte_NE_i_a2_24\);
    
    \display0/i2c0/databit[5]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_725\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite\, Q => 
        \display0/i2c0/databit[5]_net_1\);
    
    \display0/data_i2c_RNO_9[7]\ : NOR2A
      port map(A => \display0/un1_bytecount_43\, B => 
        \display0/burst_reg_1006\, Y => \display0/burst_reg_2_m\);
    
    \display0/bytecount_RNI01A11[17]\ : NOR3
      port map(A => \display0/bytecount[19]_net_1\, B => 
        \display0/bytecount[17]_net_1\, C => 
        \display0/bytecount[3]_net_1\, Y => 
        \display0/un2_busy_byte_NE_i_a2_18\);
    
    \display0/burstNo_RNO[8]\ : XA1
      port map(A => \display0/burstNo[8]_net_1\, B => 
        \display0/DWACT_ADD_CI_0_g_array_3[0]\, C => 
        \display0/un1_ena_2_0\, Y => \display0/burstNo_4[8]\);
    
    \display0/un1_burstNo_2_I_99\ : AX1C
      port map(A => \display0/DWACT_ADD_CI_0_g_array_11[0]\, B
         => \display0/burstNo[6]_net_1\, C => 
        \display0/burstNo[7]_net_1\, Y => \display0/I_99\);
    
    \display0/counter_n25\ : AX1C
      port map(A => \display0/counter_c23_net_1\, B => 
        \counter[24]_net_1\, C => oled_reset_c_c, Y => 
        counter_n25);
    
    \display0/i2c0/counter_RNITUH52[1]\ : NOR3C
      port map(A => \display0/i2c0/N_262\, B => 
        \display0/i2c0/un3_counter_0_a2_4_a2_1\, C => 
        \display0/i2c0/un3_counter_0_a2_4_a2_2\, Y => 
        \display0/i2c0/un1_i2c0_0\);
    
    \display0/un1_burstNo_2_I_191\ : AND2
      port map(A => \display0/burstNo[12]_net_1\, B => 
        \display0/burstNo[13]_net_1\, Y => 
        \display0/DWACT_ADD_CI_0_pog_array_1_5[0]\);
    
    \display0/data_i2c_RNO_4[7]\ : NOR2A
      port map(A => \display0/un1_bytecount_44\, B => 
        \display0/burst_reg_1006\, Y => 
        \display0/burst_reg_2_m_2\);
    
    \display0/i2c0/addrbit_RNIJTJA[25]\ : NOR2
      port map(A => \display0/i2c0/addrbit[26]_net_1\, B => 
        \display0/i2c0/addrbit[25]_net_1\, Y => 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_5\);
    
    \display0/counter_n14\ : AX1C
      port map(A => \display0/counter_c12_net_1\, B => 
        \counter[13]_net_1\, C => \counter[14]_net_1\, Y => 
        counter_n14);
    
    \display0/i2c0/addrbit_RNIK65L[20]\ : OR3
      port map(A => \display0/i2c0/addrbit[20]_net_1\, B => 
        \display0/i2c0/addrbit[21]_net_1\, C => 
        \display0/i2c0/addrbit_N_13_mux_i_2_1\, Y => 
        \display0/i2c0/addrbit_N_13_mux_i_2_3\);
    
    \display0/counter_c4\ : NOR3C
      port map(A => \display0/counter_c2_net_1\, B => 
        \counter[3]_net_1\, C => \counter[4]_net_1\, Y => 
        \display0/counter_c4_net_1\);
    
    \display0/data_i2c_RNO[1]\ : MX2
      port map(A => \display0/un1_state_10\, B => 
        \display0/data_i2c_2[1]\, S => \display0/N_43\, Y => 
        \display0/un1_state_12[6]\);
    
    \display0/bytecount_0_RNIPBR11[1]\ : NOR3
      port map(A => \display0/bytecount_0[1]_net_1\, B => 
        \display0/bytecount[3]_net_1\, C => \display0/N_67\, Y
         => \display0/un1_bytecount_47_0\);
    
    \display0/bytecount_RNIJ9S22[5]\ : NOR3C
      port map(A => \display0/un1_bytecount_177_0_a2_0_0\, B => 
        \display0/un1_bytecount_41_2\, C => 
        \display0/un1_bytecount_92_3\, Y => \display0/N_153\);
    
    \display0/i2c0/databit_RNO_0[4]\ : AX1D
      port map(A => \display0/i2c0/N_1021\, B => 
        \display0/i2c0/databit[3]_net_1\, C => 
        \display0/i2c0/databit[4]_net_1\, Y => 
        \display0/i2c0/N_177_i\);
    
    \display0/i2c0/databit_RNO[24]\ : XA1C
      port map(A => \display0/i2c0/N_1044\, B => 
        \display0/i2c0/databit[24]_net_1\, C => 
        \display0/i2c0/un1_state_7_0\, Y => \display0/i2c0/N_812\);
    
    \display0/data_i2c_RNO_25[6]\ : AO16
      port map(A => \display0/bytecount_0[1]_net_1\, B => 
        \display0/bytecount_0[4]_net_1\, C => 
        \display0/bytecount[0]_net_1\, Y => 
        \display0/un1_bytecount_127\);
    
    \display0/i2c0/databit_RNO_0[22]\ : OA1
      port map(A => \display0/i2c0/N_1039\, B => 
        \display0/i2c0/databit[21]_net_1\, C => 
        \display0/i2c0/databit[22]_net_1\, Y => 
        \display0/i2c0/databit_n22_i_0_a2_0\);
    
    \display0/i2c0/databit[10]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_19\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite_0\, Q => 
        \display0/i2c0/databit[10]_net_1\);
    
    \display0/i2c0/addrbit_RNO[6]\ : XA1C
      port map(A => \display0/i2c0/addrbit[6]_net_1\, B => 
        \display0/i2c0/N_899\, C => \display0/i2c0/un1_state_8_0\, 
        Y => \display0/i2c0/N_758\);
    
    \display0/i2c0/addrbit_RNO[30]\ : XA1C
      port map(A => \display0/i2c0/addrbit[30]_net_1\, B => 
        \display0/i2c0/N_61\, C => \display0/i2c0/un1_state_8\, Y
         => \display0/i2c0/N_39\);
    
    \display0/i2c0/databit_RNIBR3N4[14]\ : OR2A
      port map(A => \display0/i2c0/N_1032_i\, B => 
        \display0/i2c0/databit[14]_net_1\, Y => 
        \display0/i2c0/N_1033\);
    
    \display0/i2c0/counter[4]\ : DFN1P0
      port map(D => \display0/i2c0/N_83\, CLK => clk_c, PRE => 
        oled_reset_c_c, Q => \display0/i2c0/counter_i_0[4]\);
    
    \display0/burstNo_RNI3VMK[29]\ : NOR3A
      port map(A => \display0/burst_reg_1002_30_7\, B => 
        \display0/burstNo[29]_net_1\, C => 
        \display0/burstNo[28]_net_1\, Y => 
        \display0/burst_reg_1002_30_11\);
    
    \display0/data_i2c_RNO_0[5]\ : NOR2B
      port map(A => \display0/un1_state_6_0\, B => 
        \display0/un1_data_i2c_2\, Y => \display0/un1_state_6\);
    
    \counter[23]\ : DFN1
      port map(D => counter_n23, CLK => clk_c, Q => 
        \counter_c[23]\);
    
    \display0/i2c0/scl_1_RNO_2\ : NOR2
      port map(A => \display0/i2c0/state[16]_net_1\, B => 
        \display0/i2c0/state[10]_net_1\, Y => 
        \display0/i2c0/scl_1_1_0_i_a2_0_a2_0_a2_2\);
    
    \display0/bytecount_0_RNI6DRM[6]\ : NOR2A
      port map(A => \display0/un1_bytecount_91_3\, B => 
        \display0/bytecount_0[6]_net_1\, Y => 
        \display0/un1_bytecount_91_0\);
    
    \display0/bytecount_0_RNITG762[6]\ : NOR2B
      port map(A => \display0/un1_bytecount_178_2\, B => 
        \display0/N_174_1\, Y => \display0/un1_bytecount_178\);
    
    \display0/state_RNIV4VP_1[2]\ : OR2
      port map(A => \display0/state[2]_net_1\, B => 
        \display0/state[3]_net_1\, Y => \display0/N_43_0_0\);
    
    \display0/i2c0/state_ns_i_a2_0_a2_0_4[3]\ : AND2
      port map(A => \display0/i2c0/state_ns_i_a2_0_a2_0_4_0[3]\, 
        B => \display0/i2c0/state_ns_i_a2_0_a2_0_4_1[3]\, Y => 
        \display0/i2c0/N_106_4\);
    
    \display0/i2c0/addrbit_RNILO4A2[20]\ : NOR3C
      port map(A => \display0/i2c0/addrbit_RNI2J3L[14]_net_1\, B
         => \display0/i2c0/addrbit_m1_e_1_5\, C => 
        \display0/i2c0/addrbit_m1_e_1_6\, Y => 
        \display0/i2c0/addrbit_m1_e_1_8\);
    
    \display0/data_i2c_RNO_1[0]\ : OR3
      port map(A => \display0/burst_reg_3_m_10[0]\, B => 
        \display0/data_i2c_2_2_iv_1[0]\, C => 
        \display0/burst_reg_3_m_9[0]\, Y => 
        \display0/data_i2c_2[0]\);
    
    \display0/data_i2c_RNO_0[2]\ : NOR2B
      port map(A => \display0/un1_state_6_0\, B => 
        \display0/un1_data_i2c_5\, Y => \display0/un1_state_9\);
    
    \display0/bytecount_RNO_0[13]\ : AX1A
      port map(A => \display0/N_50\, B => 
        \display0/bytecount[12]_net_1\, C => 
        \display0/bytecount[13]_net_1\, Y => \display0/N_66_i\);
    
    \display0/i2c0/addrbit_RNIR6V02[5]\ : OR2
      port map(A => \display0/i2c0/N_898\, B => 
        \display0/i2c0/addrbit[5]_net_1\, Y => 
        \display0/i2c0/N_899\);
    
    \display0/i2c0/counter_RNO[6]\ : XA1C
      port map(A => \display0/i2c0/N_174\, B => 
        \display0/i2c0/counter[6]_net_1\, C => 
        \display0/i2c0/state[20]_net_1\, Y => 
        \display0/i2c0/N_87\);
    
    \counter[20]\ : DFN1
      port map(D => counter_n20, CLK => clk_c, Q => 
        \counter[20]_net_1\);
    
    \display0/i2c0/busy_burst_RNI0HRF\ : NOR2B
      port map(A => \display0/i2c0/busy_burst_net_1\, B => 
        \display0/state[1]_net_1\, Y => \display0/N_54\);
    
    \display0/i2c0/scl_e\ : DFN1C0
      port map(D => \VCC\, CLK => clk_c, CLR => oled_reset_c_c, Q
         => \display0.i2c0.scl_e\);
    
    \display0/bytecount_RNIFFN49[29]\ : OR2A
      port map(A => \display0/bytecount[29]_net_1\, B => 
        \display0/N_55\, Y => \display0/N_933\);
    
    \scl_pad/U0/U0\ : IOPAD_TRI
      port map(D => \scl_pad/U0/NET1\, E => \scl_pad/U0/NET2\, 
        PAD => scl);
    
    \display0/i2c0/addrbit_RNIJRT06[25]\ : OR2
      port map(A => \display0/i2c0/N_98\, B => 
        \display0/i2c0/addrbit[25]_net_1\, Y => 
        \display0/i2c0/N_99\);
    
    \display0/data_i2c_RNO_11[6]\ : OR3
      port map(A => \display0/data_i2c_2_2_iv_0_tz_2[6]\, B => 
        \display0/un1_bytecount_43\, C => 
        \display0/un1_bytecount_153\, Y => 
        \display0/data_i2c_2_2_iv_0_tz_6[6]\);
    
    \display0/i2c0/addrbit_RNITQ766[26]\ : OR2
      port map(A => \display0/i2c0/N_99\, B => 
        \display0/i2c0/addrbit[26]_net_1\, Y => 
        \display0/i2c0/N_100\);
    
    \counter[14]\ : DFN1
      port map(D => counter_n14, CLK => clk_c, Q => 
        \counter[14]_net_1\);
    
    \display0/i2c0/state_RNIN25D2_0[15]\ : AO1
      port map(A => \display0/i2c0/state[15]_net_1\, B => 
        \display0/i2c0/un1_i2c0_0\, C => 
        \display0/i2c0/state[20]_net_1\, Y => 
        \display0/i2c0/addrbite_0\);
    
    \display0/data_i2c_RNO_23[1]\ : OR3
      port map(A => \display0/N_624_4\, B => 
        \display0/data_i2c_1_0_5[1]\, C => 
        \display0/un1_bytecount_147\, Y => 
        \display0/data_i2c_1_0_11[1]\);
    
    \display0/data_i2c_RNO_21[1]\ : OR3
      port map(A => \display0/un1_bytecount_54\, B => 
        \display0/un1_bytecount_53\, C => \display0/N_624_9\, Y
         => \display0/data_i2c_1_0_10[1]\);
    
    \display0/counter_n6\ : AX1C
      port map(A => \display0/counter_c4_net_1\, B => 
        \counter[5]_net_1\, C => \counter[6]_net_1\, Y => 
        counter_n6);
    
    \counter[25]\ : DFN1
      port map(D => counter_n25, CLK => clk_c, Q => 
        \counter[25]_net_1\);
    
    \display0/i2c0/databit_RNO[8]\ : NOR2
      port map(A => \display0/i2c0/databit_n8_0_0_0\, B => 
        \display0/i2c0/un1_state_7\, Y => \display0/i2c0/N_728\);
    
    \state_RNO_0[1]\ : NOR3A
      port map(A => \state_ns_i_a2_i_a4_3[1]\, B => 
        \address[0]_net_1\, C => \address[1]_net_1\, Y => 
        \state_ns_i_a2_i_a4_5[1]\);
    
    \display0/data_i2c_RNO_12[4]\ : OR2
      port map(A => \display0/un1_bytecount_93\, B => 
        \display0/un1_bytecount_153\, Y => 
        \display0/data_i2c_2_2_iv_2_tz_4[4]\);
    
    \display0/bytecount[7]\ : DFN1E0C0
      port map(D => \display0/N_37\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/N_43_0\, Q => 
        \display0/bytecount[7]_net_1\);
    
    \D3_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => oled_reset_c_c, E => \VCC\, DOUT => 
        \D3_pad/U0/NET1\, EOUT => \D3_pad/U0/NET2\);
    
    \display0/i2c0/addrbit_RNIIG1B1[6]\ : NOR3A
      port map(A => \display0/i2c0/addrbit_m6_e_0_4\, B => 
        \display0/i2c0/addrbit[7]_net_1\, C => 
        \display0/i2c0/addrbit[6]_net_1\, Y => 
        \display0/i2c0/addrbit_m6_e_0_6\);
    
    \display0/bytecount_RNINE0M_1[2]\ : NOR2A
      port map(A => \display0/bytecount[3]_net_1\, B => 
        \display0/bytecount[2]_net_1\, Y => \display0/N_174_1\);
    
    \display0/i2c0/databit_RNO[4]\ : NOR2
      port map(A => \display0/i2c0/N_177_i\, B => 
        \display0/i2c0/un1_state_7_0\, Y => \display0/i2c0/N_724\);
    
    \display0/bytecount_RNIOAOLS[6]\ : NOR2A
      port map(A => \display0/un1_bytecount_60\, B => 
        \display0/N_575\, Y => \display0/burst_reg_3_m_9[0]\);
    
    \display0/data_i2c_RNO_17[0]\ : OR3
      port map(A => \display0/data_i2c_1_1_0[0]\, B => 
        \display0/un1_bytecount_44\, C => \display0/N_634_2\, Y
         => \display0/data_i2c_1_1_4[0]\);
    
    \display0/bytecount_RNIB61N1[6]\ : NOR2A
      port map(A => \display0/un1_bytecount_76_4\, B => 
        \display0/bytecount[6]_net_1\, Y => 
        \display0/un1_bytecount_28\);
    
    \display0/data_i2c_RNO_28[0]\ : OR3
      port map(A => \display0/un1_bytecount_103\, B => 
        \display0/un1_bytecount_104\, C => 
        \display0/un1_bytecount_105\, Y => 
        \display0/data_i2c_2_0_1[0]\);
    
    \display0/i2c0/databit_RNICV5P5[31]\ : NOR2
      port map(A => \display0/i2c0/databit[31]_net_1\, B => 
        \display0/i2c0/N_1057\, Y => \display0/i2c0/N_187_1\);
    
    \display0/bytecount_RNI4N1D2_0[6]\ : AND3B
      port map(A => \display0/bytecount[6]_net_1\, B => 
        \display0/N_95\, C => \display0/un1_bytecount_93_3\, Y
         => \display0/un1_bytecount_93\);
    
    \clk_pad/U0/U1\ : CLKIO
      port map(A => \clk_pad/U0/NET1\, Y => clk_c);
    
    \display0/un1_burstNo_2_I_146\ : NOR2B
      port map(A => \display0/DWACT_ADD_CI_0_g_array_1[0]\, B => 
        \display0/burstNo[2]_net_1\, Y => 
        \display0/DWACT_ADD_CI_0_g_array_12[0]\);
    
    \display0/i2c0/addrbit[20]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_25\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite_0\, Q => 
        \display0/i2c0/addrbit[20]_net_1\);
    
    \display0/burstNo_RNIIV951_0[0]\ : NOR3B
      port map(A => \display0/burstno_26\, B => 
        \display0/burst_reg_1006_29_0_a2_0_2\, C => 
        \display0/burstNo[0]_net_1\, Y => 
        \display0/burst_reg_1006_0\);
    
    \display0/i2c0/state[13]\ : DFN1E1C0
      port map(D => \display0/i2c0/state[14]_net_1\, CLK => clk_c, 
        CLR => oled_reset_c_c, E => \display0/i2c0/un1_i2c0_0\, Q
         => \display0/i2c0/state[13]_net_1\);
    
    \display0/data_i2c_RNO_12[0]\ : OR2
      port map(A => \display0/un1_bytecount_59\, B => 
        \display0/un1_bytecount_58\, Y => 
        \display0/data_i2c_2_1_0[0]\);
    
    \display0/un1_bytecount_152_0\ : AO1
      port map(A => \display0/un1_bytecount_64_0\, B => 
        \display0/un1_bytecount_8_3\, C => 
        \display0/un1_bytecount_88\, Y => 
        \display0/un1_bytecount_152_0_net_1\);
    
    \display0/bytecount_RNIOAOLS_1[4]\ : NOR2A
      port map(A => \display0/un1_bytecount_61\, B => 
        \display0/N_575\, Y => \display0/burst_reg_20_m[2]\);
    
    \display0/counter_n9\ : XOR2
      port map(A => \counter[9]_net_1\, B => 
        \display0/counter_c8_net_1\, Y => counter_n9);
    
    \display0/burstNo_RNO[16]\ : XA1
      port map(A => \display0/burstNo[16]_net_1\, B => 
        \display0/DWACT_ADD_CI_0_g_array_4[0]\, C => 
        \display0/un1_ena_2\, Y => \display0/burstNo_4[16]\);
    
    \counter[12]\ : DFN1
      port map(D => counter_n12, CLK => clk_c, Q => 
        \counter[12]_net_1\);
    
    \display0/un1_burstNo_2_I_71\ : XOR2
      port map(A => \display0/burstNo[0]_net_1\, B => 
        \display0/un1_N_3_mux\, Y => 
        \display0/DWACT_ADD_CI_0_partial_sum[0]\);
    
    \display0/counter_c6\ : NOR3C
      port map(A => \display0/counter_c4_net_1\, B => 
        \counter[5]_net_1\, C => \counter[6]_net_1\, Y => 
        \display0/counter_c6_net_1\);
    
    \display0/bytecount_0_RNIHEHE1_1[1]\ : NOR3A
      port map(A => \display0/un1_bytecount_67_5\, B => 
        \display0/N_67\, C => \display0/N_127\, Y => 
        \display0/un1_bytecount_67\);
    
    \sda_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => \display0.i2c0.sda_1\, E => 
        \display0.i2c0.sda_e\, DOUT => \sda_pad/U0/NET1\, EOUT
         => \sda_pad/U0/NET2\);
    
    \display0/un1_burstNo_2_I_106\ : AX1C
      port map(A => \display0/DWACT_ADD_CI_0_g_array_10[0]\, B
         => \display0/burstNo[12]_net_1\, C => 
        \display0/burstNo[13]_net_1\, Y => \display0/I_106\);
    
    \display0/bytecount_RNIJ508H[1]\ : NOR3A
      port map(A => \display0/un2_busy_byte_NE_i_a2_24\, B => 
        \display0/un2_busy_byte_4\, C => 
        \display0/un2_busy_byte_1\, Y => 
        \display0/un2_busy_byte_NE_i_a2_26\);
    
    \display0/data_i2c_RNO_9[0]\ : AO1
      port map(A => \display0/un1_bytecount_150\, B => 
        \display0/burst_reg_1006\, C => 
        \display0/burst_reg_2_1_m_0[0]\, Y => 
        \display0/data_i2c_2_2_iv_0[0]\);
    
    \display0/bytecount_0_RNI8FFU5[4]\ : OR3
      port map(A => \display0/un1_bytecount_96\, B => 
        \display0/un1_bytecount_64\, C => 
        \display0/un1_bytecount_78\, Y => 
        \display0/un1_bytecount_142\);
    
    \display0/bytecount_RNI8HBE8[27]\ : OR3B
      port map(A => \display0/bytecount[26]_net_1\, B => 
        \display0/bytecount[27]_net_1\, C => \display0/N_49\, Y
         => \display0/N_53\);
    
    \display0/i2c0/addrbit_RNIPEF01[2]\ : OR2
      port map(A => \display0/i2c0/N_895\, B => 
        \display0/i2c0/addrbit[2]_net_1\, Y => 
        \display0/i2c0/N_896\);
    
    \display0/bytecount_RNO[27]\ : NOR3B
      port map(A => \display0/N_673_i_0_0\, B => \display0/N_53\, 
        C => \display0/N_79\, Y => \display0/N_927\);
    
    \display0/i2c0/databit_RNIPUT7[16]\ : OR3
      port map(A => \display0/i2c0/databit[16]_net_1\, B => 
        \display0/i2c0/databit[21]_net_1\, C => 
        \display0/i2c0/databit_N_13_mux_i_0_3\, Y => 
        \display0/i2c0/databit_N_13_mux_i_0_7\);
    
    \display0/bytecount_RNI6D334[1]\ : XOR2
      port map(A => \display0/burstno\, B => 
        \display0/bytecount[1]_net_1\, Y => 
        \display0/un2_busy_byte_1\);
    
    \display0/burstNo_RNI8CJGM[0]\ : OR3
      port map(A => \display0/un1_burst_reg_1002_1\, B => 
        \display0/un1_burst_reg_1002_0\, C => 
        \display0/un1_burst_reg_1002_3\, Y => 
        \display0/un1_burst_reg_1002\);
    
    \display0/state_RNIA2TR5_0[1]\ : AO1C
      port map(A => \display0/burstno\, B => 
        \display0/state[1]_net_1\, C => \display0/un1_N_3_mux\, Y
         => \display0/un1_ena_2\);
    
    \display0/i2c0/addrbit_RNIS0F02[12]\ : NOR3C
      port map(A => \display0/i2c0/state_tr8_0_a2_0_a2_1_7\, B
         => \display0/i2c0/state_tr8_0_a2_0_a2_1_6\, C => 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_17\, Y => 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_21\);
    
    \display0/i2c0/busy_burst\ : DFN1C0
      port map(D => \display0/i2c0/state_i[20]\, CLK => clk_c, 
        CLR => oled_reset_c_c, Q => 
        \display0/i2c0/busy_burst_net_1\);
    
    \display0/bytecount_RNIKL0AE[0]\ : OR2
      port map(A => \display0/un1_bytecount_145\, B => 
        \display0/un1_bytecount_50\, Y => 
        \display0/data_i2c_1_0_7[1]\);
    
    \display0/counter_n16\ : AX1C
      port map(A => \display0/counter_c14_net_1\, B => 
        \counter[15]_net_1\, C => \counter[16]_net_1\, Y => 
        counter_n16);
    
    \display0/data_i2c_RNO_1[7]\ : OR3
      port map(A => \display0/burst_reg_3_m_19[0]\, B => 
        \display0/burst_reg_2_m_2\, C => 
        \display0/burst_reg_3_m_9[0]\, Y => 
        \display0/data_i2c_2[7]\);
    
    \display0/i2c0/addrbit_RNO[14]\ : XA1C
      port map(A => \display0/i2c0/N_907\, B => 
        \display0/i2c0/addrbit[14]_net_1\, C => 
        \display0/i2c0/un1_state_8_0\, Y => \display0/i2c0/N_891\);
    
    \display0/bytecount[16]\ : DFN1E0C0
      port map(D => \display0/N_20\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/N_43_0_0\, Q => 
        \display0/bytecount[16]_net_1\);
    
    \display0/i2c0/state[8]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_15\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/un1_i2c0\, Q => 
        \display0/i2c0/state[8]_net_1\);
    
    \display0/data_i2c_RNO_6[4]\ : OR3
      port map(A => \display0/un1_bytecount_58\, B => 
        \display0/un1_bytecount_60\, C => 
        \display0/un1_bytecount_48\, Y => 
        \display0/data_i2c_2_1_1[4]\);
    
    \display0/i2c0/counter_RNIM4QT[6]\ : NOR3B
      port map(A => \display0/i2c0/counter_i_0[3]\, B => 
        \display0/i2c0/counter_i_0[5]\, C => 
        \display0/i2c0/counter[6]_net_1\, Y => 
        \display0/i2c0/un3_counter_0_a2_4_a2_2\);
    
    \display0/data_i2c_1_2_iv[3]\ : OR3
      port map(A => \display0/burst_reg_20_m_2[2]\, B => 
        \display0/burst_reg_20_m[2]\, C => 
        \display0/data_i2c_1_2_iv_4[3]_net_1\, Y => 
        \display0/data_i2c_1[3]\);
    
    \display0/bytecount_0[5]\ : DFN1E0C0
      port map(D => \display0/N_33\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/N_43_0_0\, Q => 
        \display0/bytecount_0[5]_net_1\);
    
    \display0/i2c0/busy_byte\ : DFN1C0
      port map(D => \display0/i2c0/busy_byte_1\, CLK => clk_c, 
        CLR => oled_reset_c_c, Q => \display0/busy_byte\);
    
    \display0/busy_RNI1IKO\ : OR2A
      port map(A => \state[1]_net_1\, B => busy, Y => N_48);
    
    \display0/burstNo_RNO[21]\ : NOR2B
      port map(A => \display0/I_124\, B => \display0/un1_ena_2\, 
        Y => \display0/burstNo_4[21]\);
    
    \display0/i2c0/addrbit_RNO[17]\ : XA1C
      port map(A => \display0/i2c0/addrbit[17]_net_1\, B => 
        \display0/i2c0/N_910\, C => \display0/i2c0/un1_state_8\, 
        Y => \display0/i2c0/N_769\);
    
    \display0/data_i2c_RNO_10[5]\ : OR3
      port map(A => \display0/N_645_6\, B => 
        \display0/data_i2c_2_2_iv_1_tz_2[5]\, C => 
        \display0/un1_bytecount_153\, Y => 
        \display0/data_i2c_2_2_iv_1_tz_8[5]\);
    
    \display0/bytecount_RNIJA0M[1]\ : OR2B
      port map(A => \display0/bytecount[0]_net_1\, B => 
        \display0/bytecount[1]_net_1\, Y => \display0/N_93\);
    
    \display0/i2c0/sda_1_RNO_13\ : MX2C
      port map(A => \display0/data_i2c[6]_net_1\, B => 
        \display0/data_i2c[7]_net_1\, S => 
        \display0/i2c0/databit[0]_net_1\, Y => 
        \display0/i2c0/N_151\);
    
    \display0/bytecount_RNI4N1D2_1[4]\ : NOR3C
      port map(A => \display0/un1_bytecount_94_2\, B => 
        \display0/N_4_i\, C => \display0/un1_bytecount_62_5\, Y
         => \display0/un1_bytecount_59\);
    
    \display0/i2c0/addrbit_RNO[19]\ : XA1C
      port map(A => \display0/i2c0/addrbit[19]_net_1\, B => 
        \display0/i2c0/N_912\, C => \display0/i2c0/un1_state_8\, 
        Y => \display0/i2c0/N_23\);
    
    \display0/i2c0/databit[8]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_728\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite\, Q => 
        \display0/i2c0/databit[8]_net_1\);
    
    \display0/i2c0/databit[20]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_809\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite_0\, Q => 
        \display0/i2c0/databit[20]_net_1\);
    
    \display0/state[0]\ : DFN1C0
      port map(D => \display0/state_ns[5]\, CLK => clk_c, CLR => 
        oled_reset_c_c, Q => \display0/state[0]_net_1\);
    
    \display0/data_i2c_1_2_iv_4[3]\ : OR2
      port map(A => \display0/data_i2c_1_2_iv_2[3]\, B => 
        \display0/data_i2c_1_2_iv_1[3]\, Y => 
        \display0/data_i2c_1_2_iv_4[3]_net_1\);
    
    \display0/i2c0/addrbit_RNO_0[31]\ : OR2
      port map(A => \display0/i2c0/N_61\, B => 
        \display0/i2c0/addrbit[30]_net_1\, Y => 
        \display0/i2c0/N_62\);
    
    \display0/i2c0/addrbit_RNI10AC3[9]\ : OR2
      port map(A => \display0/i2c0/N_902\, B => 
        \display0/i2c0/addrbit[9]_net_1\, Y => 
        \display0/i2c0/N_903\);
    
    \sda_pad/U0/U0\ : IOPAD_TRI
      port map(D => \sda_pad/U0/NET1\, E => \sda_pad/U0/NET2\, 
        PAD => sda);
    
    \display0/bytecount_RNIK97P51[2]\ : NOR3C
      port map(A => \display0/un2_busy_byte_NE_i_a2_26\, B => 
        \display0/N_919\, C => \display0/N_60\, Y => 
        \display0/N_86\);
    
    \display0/bytecount_0_RNI07RM_0[1]\ : NOR2B
      port map(A => \display0/bytecount_0[1]_net_1\, B => 
        \display0/N_180\, Y => 
        \display0/un1_bytecount_177_0_a2_0_0\);
    
    \display0/bytecount_RNIAH122[4]\ : NOR3B
      port map(A => \display0/un1_bytecount_92_3\, B => 
        \display0/un1_bytecount_41_2\, C => \display0/N_94\, Y
         => \display0/un1_bytecount_25\);
    
    \display0/i2c0/addrbit_RNICHKM2[7]\ : OR2
      port map(A => \display0/i2c0/N_900\, B => 
        \display0/i2c0/addrbit[7]_net_1\, Y => 
        \display0/i2c0/N_901\);
    
    \display0/burstNo_RNIREG4[1]\ : NOR3B
      port map(A => \display0/burst_reg_1006_29_0_a2_0_0\, B => 
        \display0/burstno_18\, C => \display0/burstNo[1]_net_1\, 
        Y => \display0/burst_reg_1006_29_0_a2_0_2\);
    
    \display0/bytecount_RNO[7]\ : XA1A
      port map(A => \display0/bytecount[7]_net_1\, B => 
        \display0/N_98\, C => \display0/N_673_i_0\, Y => 
        \display0/N_37\);
    
    \display0/bytecount_RNI4N1D2_1[6]\ : NOR3B
      port map(A => \display0/un1_bytecount_92_4\, B => 
        \display0/un1_bytecount_92_3\, C => 
        \display0/bytecount[6]_net_1\, Y => 
        \display0/un1_bytecount_92\);
    
    \display0/bytecount_0_RNISKOG4[6]\ : AOI1D
      port map(A => \display0/un1_bytecount_130_0\, B => 
        \display0/un1_bytecount_14_3\, C => 
        \display0/un1_bytecount_91_0\, Y => 
        \display0/un1_bytecount_174\);
    
    \display0/burstNo[25]\ : DFN1C0
      port map(D => \display0/burstNo_4[25]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[25]_net_1\);
    
    \display0/data_i2c_RNO_14[4]\ : OR2
      port map(A => \display0/N_634_1\, B => 
        \display0/data_i2c_2_1_1[5]\, Y => 
        \display0/data_i2c_1_1_1[4]\);
    
    \display0/data_i2c_RNO_11[4]\ : AO1
      port map(A => \display0/burst_reg_1006\, B => 
        \display0/data_i2c_1_2_tz[4]\, C => 
        \display0/data_i2c_1_3[4]\, Y => 
        \display0/data_i2c_1_2_iv_0[4]\);
    
    \display0/i2c0/addrbit_RNO[1]\ : XO1A
      port map(A => \display0/i2c0/addrbit[0]_net_1\, B => 
        \display0/i2c0/addrbit[1]_net_1\, C => 
        \display0/i2c0/un1_state_8_0\, Y => \display0/i2c0/N_888\);
    
    \display0/data_i2c_RNO_20[4]\ : OR3
      port map(A => \display0/un1_bytecount_92\, B => 
        \display0/un1_bytecount_99\, C => 
        \display0/un1_bytecount_175\, Y => 
        \display0/data_i2c_1_2_iv_2_tz_1[4]\);
    
    \display0/un1_burstNo_2_I_170\ : NOR2B
      port map(A => \display0/DWACT_ADD_CI_0_g_array_11_5[0]\, B
         => \display0/burstNo[26]_net_1\, Y => 
        \display0/DWACT_ADD_CI_0_g_array_12_12[0]\);
    
    \display0/i2c0/addrbit_RNIQTL64[14]\ : OR2
      port map(A => \display0/i2c0/N_907\, B => 
        \display0/i2c0/addrbit[14]_net_1\, Y => 
        \display0/i2c0/N_908\);
    
    \display0/bytecount_RNIFT244[1]\ : NOR3B
      port map(A => \display0/N_112\, B => 
        \display0/bytecount[1]_net_1\, C => 
        \display0/bytecount[6]_net_1\, Y => 
        \display0/un1_bytecount_165\);
    
    \display0/bytecount_0[6]\ : DFN1E0C0
      port map(D => \display0/N_35\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/N_43_0_0\, Q => 
        \display0/bytecount_0[6]_net_1\);
    
    \display0/bytecount_RNI4N1D2_7[6]\ : NOR3B
      port map(A => \display0/un1_bytecount_62_5\, B => 
        \display0/un1_bytecount_88_3\, C => \display0/N_65\, Y
         => \display0/un1_bytecount_60\);
    
    \display0/un1_burstNo_2_I_202\ : AND2
      port map(A => \display0/burstNo[26]_net_1\, B => 
        \display0/burstNo[27]_net_1\, Y => 
        \display0/DWACT_ADD_CI_0_pog_array_1_12[0]\);
    
    \display0/data_i2c_RNO_38[0]\ : OR2
      port map(A => \display0/un1_bytecount_61\, B => 
        \display0/un1_bytecount_177\, Y => 
        \display0/data_i2c_1_0_7[0]\);
    
    \display0/i2c0/sda_1_RNO_10\ : NOR2A
      port map(A => \display0/i2c0/databit[0]_net_1\, B => 
        \display0/i2c0/databit[1]_net_1\, Y => 
        \display0/i2c0/un2_sda_0_0_a2_1_0\);
    
    \display0/burstNo[21]\ : DFN1C0
      port map(D => \display0/burstNo_4[21]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[21]_net_1\);
    
    \display0/bytecount_RNI3LNE2[8]\ : OR2A
      port map(A => \display0/bytecount[8]_net_1\, B => 
        \display0/N_99\, Y => \display0/N_100\);
    
    \display0/i2c0/addrbit[4]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_756\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite\, Q => 
        \display0/i2c0/addrbit[4]_net_1\);
    
    \display0/i2c0/addrbit[18]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_21\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite_0\, Q => 
        \display0/i2c0/addrbit[18]_net_1\);
    
    \display0/i2c0/databit[13]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_20\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite_0\, Q => 
        \display0/i2c0/databit[13]_net_1\);
    
    \display0/data_i2c_RNO_4[4]\ : AO1
      port map(A => \display0/burst_reg_1006\, B => 
        \display0/data_i2c_2_2_tz[4]\, C => 
        \display0/data_i2c_2_3[4]\, Y => 
        \display0/data_i2c_2_2_iv_0[4]\);
    
    \display0/bytecount[13]\ : DFN1E0C0
      port map(D => \display0/N_14\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/N_43_0_0\, Q => 
        \display0/bytecount[13]_net_1\);
    
    \display0/i2c0/databit_RNO[18]\ : NOR2A
      port map(A => \display0/i2c0/N_808_tz\, B => 
        \display0/i2c0/un1_state_7_0\, Y => \display0/i2c0/N_808\);
    
    \display0/bytecount[19]\ : DFN1E0C0
      port map(D => \display0/bytecount_n19\, CLK => clk_c, CLR
         => oled_reset_c_c, E => \display0/N_43_0_0\, Q => 
        \display0/bytecount[19]_net_1\);
    
    \display0/i2c0/databit_RNO[1]\ : XO1A
      port map(A => \display0/i2c0/databit[0]_net_1\, B => 
        \display0/i2c0/databit[1]_net_1\, C => 
        \display0/i2c0/un1_state_7\, Y => \display0/i2c0/N_18\);
    
    \display0/data_i2c_RNO_20[2]\ : OA1A
      port map(A => \display0/N_95\, B => 
        \display0/un1_bytecount_47_0\, C => 
        \display0/un1_bytecount_57_5\, Y => 
        \display0/data_i2c_1_1_0[2]\);
    
    \display0/bytecount_RNILC0M[0]\ : OR2B
      port map(A => \display0/bytecount[0]_net_1\, B => 
        \display0/bytecount[3]_net_1\, Y => \display0/N_62\);
    
    \display0/burstNo_RNIOE6G7[11]\ : OR2
      port map(A => \display0/burst_reg_1004\, B => 
        \display0/burst_reg_1005\, Y => 
        \display0/un1_burst_reg_1002_0\);
    
    \display0/burstNo_RNIA7I2_2[1]\ : NOR3B
      port map(A => \display0/burst_reg_1005_2\, B => 
        \display0/burstNo[1]_net_1\, C => 
        \display0/burstNo[0]_net_1\, Y => 
        \display0/burst_reg_1004_1\);
    
    \display0/i2c0/counter_RNIBPPT[2]\ : OR2
      port map(A => \display0/i2c0/counter_i_0[2]\, B => 
        \display0/i2c0/N_1048\, Y => \display0/i2c0/N_1049\);
    
    \display0/data_i2c_RNO_1[5]\ : AO1A
      port map(A => \display0/N_575_0\, B => \display0/N_658\, C
         => \display0/data_i2c_2_2_iv_0[5]\, Y => 
        \display0/data_i2c_2[5]\);
    
    \display0/bytecount[6]\ : DFN1E0C0
      port map(D => \display0/N_35\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/N_43_0\, Q => 
        \display0/bytecount[6]_net_1\);
    
    \display0/un1_burstNo_2_I_187\ : NOR3C
      port map(A => \display0/burstNo[2]_net_1\, B => 
        \display0/burstNo[3]_net_1\, C => 
        \display0/DWACT_ADD_CI_0_g_array_1[0]\, Y => 
        \display0/DWACT_ADD_CI_0_g_array_2[0]\);
    
    \display0/i2c0/state_tr8_0_a2_0_a2_1_19_RNI6VMF5\ : NOR3C
      port map(A => \display0/i2c0/state_tr8_0_a2_0_a2_1_22\, B
         => \display0/i2c0/state_tr8_0_a2_0_a2_1_21\, C => 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_23\, Y => 
        \display0/i2c0/N_188_1\);
    
    \display0/bytecount_0_RNIHFTI2[1]\ : AO1
      port map(A => \display0/un1_bytecount_72_4\, B => 
        \display0/un1_bytecount_76_5\, C => 
        \display0/un1_bytecount_67\, Y => 
        \display0/un1_bytecount_158\);
    
    \display0/i2c0/sda_1_RNO_12\ : MX2C
      port map(A => \display0/data_i2c[2]_net_1\, B => 
        \display0/data_i2c[3]_net_1\, S => 
        \display0/i2c0/databit[0]_net_1\, Y => 
        \display0/i2c0/N_164\);
    
    \display0/i2c0/addrbit_RNILVJA[27]\ : NOR2
      port map(A => \display0/i2c0/addrbit[27]_net_1\, B => 
        \display0/i2c0/addrbit[26]_net_1\, Y => 
        \display0/i2c0/addrbit_m1_e_1_1\);
    
    \display0/i2c0/addrbit_RNI0H3G[7]\ : NOR2
      port map(A => \display0/i2c0/addrbit[7]_net_1\, B => 
        \display0/i2c0/addrbit[14]_net_1\, Y => 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_7\);
    
    \display0/state_RNO[2]\ : NOR2B
      port map(A => \display0/busy_byte\, B => \display0/N_43\, Y
         => \display0/state_RNO[2]_net_1\);
    
    \display0/data_i2c_RNO_5[2]\ : OR3
      port map(A => \display0/data_i2c_1_2_iv_3[2]\, B => 
        \display0/burst_reg_20_m[2]\, C => 
        \display0/burst_reg_20_m_0[1]\, Y => 
        \display0/data_i2c_1[2]\);
    
    \display0/i2c0/sda_1_RNO_0\ : NOR2B
      port map(A => \display0/data_i2c[0]_net_1\, B => 
        \display0/i2c0/N_1043\, Y => 
        \display0/i2c0/un2_sda_0_0_a2_4_0\);
    
    \display0/counter_c14\ : NOR3C
      port map(A => \display0/counter_c12_net_1\, B => 
        \counter[13]_net_1\, C => \counter[14]_net_1\, Y => 
        \display0/counter_c14_net_1\);
    
    \display0/bytecount_0_RNIMDQJ2[4]\ : XA1A
      port map(A => \display0/bytecount_0[4]_net_1\, B => 
        \display0/N_95\, C => \display0/N_673_i_0\, Y => 
        \display0/bytecount_n4\);
    
    \display0/burstNo[12]\ : DFN1C0
      port map(D => \display0/burstNo_4[12]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[12]_net_1\);
    
    \display0/i2c0/addrbit_RNO[22]\ : XA1C
      port map(A => \display0/i2c0/N_95\, B => 
        \display0/i2c0/addrbit[22]_net_1\, C => 
        \display0/i2c0/un1_state_8\, Y => \display0/i2c0/N_29\);
    
    \display0/data_i2c_RNO_0[7]\ : NOR2B
      port map(A => \display0/un1_state_6_0\, B => 
        \display0/un1_data_i2c\, Y => \display0/un1_state_4\);
    
    \display0/data_i2c_RNO_29[0]\ : OR3
      port map(A => \display0/un1_bytecount_61\, B => 
        \display0/un1_bytecount_168\, C => 
        \display0/un1_bytecount_147_1\, Y => 
        \display0/data_i2c_2_0_8[0]\);
    
    \display0/data_i2c_RNO_3[0]\ : OA1B
      port map(A => \display0/data_i2c_2_1_2[0]\, B => 
        \display0/data_i2c_2_1_3[0]\, C => \display0/N_575_0\, Y
         => \display0/burst_reg_3_m_10[0]\);
    
    \display0/data_i2c_RNO_5[7]\ : AO1A
      port map(A => \display0/N_575_0\, B => \display0/N_619\, C
         => \display0/burst_reg_2_m\, Y => 
        \display0/data_i2c_1[7]\);
    
    \display0/data_i2c_RNO_17[1]\ : OR2
      port map(A => \display0/burst_reg_1006_m_3\, B => 
        \display0/burst_reg_2_1_m[3]\, Y => 
        \display0/data_i2c_1_2_iv_0[1]\);
    
    \display0/bytecount_0_RNIMKRC1[4]\ : NOR3A
      port map(A => \display0/un1_bytecount_9_2\, B => 
        \display0/N_48\, C => \display0/bytecount_0[4]_net_1\, Y
         => \display0/un1_bytecount_9\);
    
    \display0/burstNo_RNIOIIB[11]\ : NOR3A
      port map(A => \display0/burstno_26_0_a2_1\, B => 
        \display0/burstNo[10]_net_1\, C => 
        \display0/burstNo[11]_net_1\, Y => 
        \display0/burstno_26_0_a2_4\);
    
    \display0/i2c0/counter_RNITUH52_0[1]\ : NOR3C
      port map(A => \display0/i2c0/N_262\, B => 
        \display0/i2c0/un3_counter_0_a2_4_a2_1\, C => 
        \display0/i2c0/un3_counter_0_a2_4_a2_2\, Y => 
        \display0/i2c0/un1_i2c0\);
    
    \display0/data_i2c_RNO_17[4]\ : OR2
      port map(A => \display0/un1_bytecount_94\, B => 
        \display0/un1_bytecount_100\, Y => 
        \display0/data_i2c_2_2_iv_2_tz_0[4]\);
    
    \display0/data_i2c_RNO_2[0]\ : MX2
      port map(A => \display0/data_i2c[0]_net_1\, B => 
        \display0/data_i2c_1[0]\, S => \display0/state[4]_net_1\, 
        Y => \display0/un1_data_i2c_7\);
    
    \display0/bytecount_RNI4N1D2_5[6]\ : NOR3B
      port map(A => \display0/bytecount[6]_net_1\, B => 
        \display0/un1_bytecount_57_3\, C => \display0/N_95\, Y
         => \display0/un1_bytecount_106\);
    
    \display0/i2c0/sda_1_RNO_2\ : AO1
      port map(A => \display0/i2c0/N_112_i\, B => 
        \display0/i2c0/N_167\, C => \display0/i2c0/N_191\, Y => 
        \display0/i2c0/un2_sda_0_0_0\);
    
    \display0/i2c0/databit_RNI67BC1[10]\ : NOR3A
      port map(A => \display0/i2c0/databit_N_13_mux_i_a0_5\, B
         => \display0/i2c0/databit[8]_net_1\, C => 
        \display0/i2c0/databit[10]_net_1\, Y => 
        \display0/i2c0/databit_N_13_mux_i_a0_8\);
    
    \display0/i2c0/addrbit_RNIQGEV1[18]\ : OR3A
      port map(A => \display0/i2c0/addrbit_RNI2J3L[14]_net_1\, B
         => \display0/i2c0/addrbit_N_13_mux_i_2_4\, C => 
        \display0/i2c0/addrbit_N_13_mux_i_2_3\, Y => 
        \display0/i2c0/addrbit_N_13_mux_i_2_6\);
    
    \display0/un1_burstNo_2_I_140\ : NOR2B
      port map(A => \display0/DWACT_ADD_CI_0_g_array_10_1[0]\, B
         => \display0/DWACT_ADD_CI_0_pog_array_1_9[0]\, Y => 
        \display0/DWACT_ADD_CI_0_g_array_11_4[0]\);
    
    \display0/i2c0/addrbit[11]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_763\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite_0\, Q => 
        \display0/i2c0/addrbit[11]_net_1\);
    
    \display0/bytecount_RNITK0M[5]\ : NOR2
      port map(A => \display0/bytecount[5]_net_1\, B => 
        \display0/bytecount[6]_net_1\, Y => 
        \display0/un1_bytecount_26_3\);
    
    \display0/bytecount_RNI8E3Q4_2[0]\ : OR2
      port map(A => \display0/un1_bytecount_48\, B => 
        \display0/un1_bytecount_50\, Y => \display0/N_643_4\);
    
    \display0/state_RNIV4VP_0[2]\ : OR2
      port map(A => \display0/state[2]_net_1\, B => 
        \display0/state[3]_net_1\, Y => \display0/N_43_0\);
    
    \display0/bytecount_RNIUBEJ4[16]\ : OR2A
      port map(A => \display0/bytecount[16]_net_1\, B => 
        \display0/N_934\, Y => \display0/N_935\);
    
    \display0/data_i2c_RNO_16[1]\ : OR3
      port map(A => \display0/data_i2c_1_0_10[1]\, B => 
        \display0/data_i2c_1_0_9[1]\, C => 
        \display0/data_i2c_1_0_11[1]\, Y => \display0/N_624\);
    
    \display0/counter_n1\ : XOR2
      port map(A => \counter[1]_net_1\, B => \counter[0]_net_1\, 
        Y => counter_n1);
    
    \display0/i2c0/databit_RNIRJ035[20]\ : OR3
      port map(A => \display0/i2c0/N_1037\, B => 
        \display0/i2c0/databit[19]_net_1\, C => 
        \display0/i2c0/databit[20]_net_1\, Y => 
        \display0/i2c0/N_1039\);
    
    \display0/un1_burstNo_2_I_100\ : AX1C
      port map(A => \display0/DWACT_ADD_CI_0_g_array_2[0]\, B => 
        \display0/burstNo[4]_net_1\, C => 
        \display0/burstNo[5]_net_1\, Y => \display0/I_100\);
    
    \display0/i2c0/addrbit_RNICKDA1[21]\ : NOR3C
      port map(A => \display0/i2c0/state_ns_i_a2_0_a2_0_4_0[3]\, 
        B => \display0/i2c0/state_ns_i_a2_0_a2_0_4_1[3]\, C => 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_18\, Y => 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_22\);
    
    \display0/data_i2c_RNO_18[1]\ : OR3
      port map(A => \display0/N_642_5\, B => 
        \display0/un1_bytecount_147_1\, C => 
        \display0/un1_bytecount_53\, Y => 
        \display0/data_i2c_2_0_5[1]\);
    
    \display0/bytecount_RNIQH0M[2]\ : NOR2B
      port map(A => \display0/bytecount[2]_net_1\, B => 
        \display0/bytecount[6]_net_1\, Y => 
        \display0/un1_bytecount_95_1\);
    
    \display0/bytecount_0_RNIMDEI4[6]\ : OA1
      port map(A => \display0/un1_bytecount_28\, B => 
        \display0/un1_bytecount_134_0\, C => 
        \display0/un1_bytecount_156_0\, Y => 
        \display0/un1_bytecount_156\);
    
    \display0/bytecount[17]\ : DFN1E0C0
      port map(D => \display0/bytecount_n17\, CLK => clk_c, CLR
         => oled_reset_c_c, E => \display0/N_43_0_0\, Q => 
        \display0/bytecount[17]_net_1\);
    
    \display0/data_i2c_1_2_iv_4_RNO_1[3]\ : OA1
      port map(A => \display0/data_i2c_1_2_iv_0_tz_5[3]\, B => 
        \display0/data_i2c_1_2_iv_0_tz_6[3]\, C => 
        \display0/burst_reg_1006\, Y => 
        \display0/data_i2c_1_2_iv_0[3]\);
    
    \display0/counter_n21\ : XOR2
      port map(A => \counter[21]_net_1\, B => 
        \display0/counter_c20_net_1\, Y => counter_n21);
    
    \display0/counter_c23\ : NOR2B
      port map(A => \counter_c[23]\, B => 
        \display0/counter_c22_net_1\, Y => 
        \display0/counter_c23_net_1\);
    
    \display0/i2c0/sda_1_RNO_3\ : NOR3B
      port map(A => \display0/i2c0/databit[1]_net_1\, B => 
        \display0/i2c0/N_1043\, C => \display0/i2c0/N_168\, Y => 
        \display0/i2c0/N_189\);
    
    \display0/i2c0/counter_RNO[2]\ : XO1A
      port map(A => \display0/i2c0/N_1048\, B => 
        \display0/i2c0/counter_i_0[2]\, C => 
        \display0/i2c0/state[20]_net_1\, Y => 
        \display0/i2c0/N_79\);
    
    \display0/i2c0/databit_RNO[26]\ : XA1C
      port map(A => \display0/i2c0/N_104\, B => 
        \display0/i2c0/databit[26]_net_1\, C => 
        \display0/i2c0/un1_state_7_0\, Y => \display0/i2c0/N_814\);
    
    \display0/burstNo_RNIQ7PI2[19]\ : NOR2B
      port map(A => \display0/burst_reg_1002_30_13\, B => 
        \display0/burst_reg_1002_30_12\, Y => \display0/N_57_17\);
    
    \display0/un1_burstNo_2_I_174\ : NOR2B
      port map(A => \display0/DWACT_ADD_CI_0_g_array_3[0]\, B => 
        \display0/DWACT_ADD_CI_0_pog_array_1_3[0]\, Y => 
        \display0/DWACT_ADD_CI_0_g_array_11_1[0]\);
    
    \display0/data_i2c_RNO_0[3]\ : NOR2B
      port map(A => \display0/un1_state_6_0\, B => 
        \display0/un1_data_i2c_4\, Y => \display0/un1_state_8\);
    
    \display0/i2c0/databit_RNO_0[18]\ : AX1B
      port map(A => \display0/i2c0/N_1035\, B => 
        \display0/i2c0/databit[17]_net_1\, C => 
        \display0/i2c0/databit[18]_net_1\, Y => 
        \display0/i2c0/N_808_tz\);
    
    \display0/bytecount_RNIPG0M[4]\ : OR2B
      port map(A => \display0/bytecount[3]_net_1\, B => 
        \display0/bytecount[4]_net_1\, Y => \display0/N_127\);
    
    \display0/i2c0/databit_RNI3G3L5[29]\ : OR3
      port map(A => \display0/i2c0/N_1047\, B => 
        \display0/i2c0/databit[28]_net_1\, C => 
        \display0/i2c0/databit[29]_net_1\, Y => 
        \display0/i2c0/N_1053\);
    
    \display0/burstNo_RNO[6]\ : XA1
      port map(A => \display0/burstNo[6]_net_1\, B => 
        \display0/DWACT_ADD_CI_0_g_array_11[0]\, C => 
        \display0/un1_ena_2_0\, Y => \display0/burstNo_4[6]\);
    
    \display0/un1_burstNo_2_I_178\ : NOR2B
      port map(A => \display0/DWACT_ADD_CI_0_g_array_3[0]\, B => 
        \display0/DWACT_ADD_CI_0_pog_array_2_1[0]\, Y => 
        \display0/DWACT_ADD_CI_0_g_array_10[0]\);
    
    \display0/i2c0/databit_RNICK2H5[27]\ : OR3
      port map(A => \display0/i2c0/N_104\, B => 
        \display0/i2c0/databit[26]_net_1\, C => 
        \display0/i2c0/databit[27]_net_1\, Y => 
        \display0/i2c0/N_1047\);
    
    \display0/i2c0/databit[16]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_806\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite_0\, Q => 
        \display0/i2c0/databit[16]_net_1\);
    
    \display0/i2c0/addrbit_RNO[16]\ : XA1C
      port map(A => \display0/i2c0/addrbit[16]_net_1\, B => 
        \display0/i2c0/N_909\, C => \display0/i2c0/un1_state_8_0\, 
        Y => \display0/i2c0/N_768\);
    
    \display0/i2c0/addrbit[22]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_29\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite_0\, Q => 
        \display0/i2c0/addrbit[22]_net_1\);
    
    \display0/bytecount_RNI8E3Q4_0[6]\ : OR2
      port map(A => \display0/un1_bytecount_53\, B => 
        \display0/un1_bytecount_55\, Y => \display0/N_661_2\);
    
    \display0/data_i2c_1_2_iv_4_RNO_6[3]\ : OR3
      port map(A => \display0/un1_bytecount_48\, B => 
        \display0/un1_bytecount_55\, C => 
        \display0/un1_bytecount_50\, Y => 
        \display0/data_i2c_1_1_2[3]\);
    
    \display0/i2c0/addrbit_RNIATJR5[24]\ : OR2
      port map(A => \display0/i2c0/N_97\, B => 
        \display0/i2c0/addrbit[24]_net_1\, Y => 
        \display0/i2c0/N_98\);
    
    \display0/data_i2c_RNO_8[0]\ : OR3
      port map(A => \display0/N_624_9\, B => 
        \display0/data_i2c_2_0_12[0]\, C => 
        \display0/data_i2c_2_0_13[0]\, Y => \display0/N_642\);
    
    \display0/data_i2c_RNO[5]\ : MX2
      port map(A => \display0/un1_state_6\, B => 
        \display0/data_i2c_2[5]\, S => \display0/N_43\, Y => 
        \display0/un1_state_12[2]\);
    
    \display0/data_i2c_1_2_iv_4_RNO_3[3]\ : OR3
      port map(A => \display0/data_i2c_1_2_iv_0_tz_2[3]\, B => 
        \display0/un1_bytecount_53\, C => 
        \display0/data_i2c_1_2_iv_0_tz_3[3]\, Y => 
        \display0/data_i2c_1_2_iv_0_tz_5[3]\);
    
    \display0/un1_burstNo_2_I_205\ : AND2
      port map(A => \display0/burstNo[16]_net_1\, B => 
        \display0/burstNo[17]_net_1\, Y => 
        \display0/DWACT_ADD_CI_0_pog_array_1_7[0]\);
    
    \display0/i2c0/addrbit_RNO[21]\ : XA1B
      port map(A => \display0/i2c0/addrbit_N_13_mux_1\, B => 
        \display0/i2c0/addrbit[21]_net_1\, C => 
        \display0/i2c0/un1_state_8\, Y => \display0/i2c0/N_27\);
    
    \display0/counter_n22\ : AX1C
      port map(A => \display0/counter_c20_net_1\, B => 
        \counter[21]_net_1\, C => \counter[22]_net_1\, Y => 
        counter_n22);
    
    \display0/burstNo_RNO[0]\ : MX2
      port map(A => \display0/state_ns_1[5]\, B => 
        \display0/DWACT_ADD_CI_0_partial_sum[0]\, S => 
        \display0/un1_ena_2_0\, Y => \display0/burstNo_4[0]\);
    
    \display0/i2c0/databit_RNO_0[8]\ : AX1D
      port map(A => \display0/i2c0/databit[7]_net_1\, B => 
        \display0/i2c0/N_1025\, C => 
        \display0/i2c0/databit[8]_net_1\, Y => 
        \display0/i2c0/databit_n8_0_0_0\);
    
    \display0/un1_burstNo_2_I_1\ : AND2
      port map(A => \display0/burstNo[0]_net_1\, B => 
        \display0/un1_N_3_mux\, Y => 
        \display0/DWACT_ADD_CI_0_TMP[0]\);
    
    \display0/burstNo_RNIOE6G7[0]\ : OR2
      port map(A => \display0/burstno\, B => 
        \display0/burst_reg_1006\, Y => 
        \display0/un1_burst_reg_1002_3\);
    
    \display0/burstNo[30]\ : DFN1C0
      port map(D => \display0/burstNo_4[30]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[30]_net_1\);
    
    \oled_reset_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => oled_reset_c_c, E => \VCC\, DOUT => 
        \oled_reset_pad/U0/NET1\, EOUT => 
        \oled_reset_pad/U0/NET2\);
    
    \display0/bytecount_RNI8E3Q4[2]\ : OR2
      port map(A => \display0/un1_bytecount_49\, B => 
        \display0/un1_bytecount_50\, Y => \display0/N_663_3\);
    
    \display0/burstNo_RNIE0501[11]\ : NOR3C
      port map(A => \display0/burstno_26_0_a2_3\, B => 
        \display0/burstno_26_0_a2_2\, C => 
        \display0/burstno_26_0_a2_4\, Y => \display0/burstno_26\);
    
    \display0/data_i2c_RNO_5[6]\ : OR3
      port map(A => \display0/burst_reg_3_m_8[0]\, B => 
        \display0/data_i2c_1_2_iv_0[6]\, C => 
        \display0/burst_reg_3_m_7[0]\, Y => 
        \display0/data_i2c_1[6]\);
    
    \display0/burstNo_RNILAB91[19]\ : NOR3C
      port map(A => \display0/burst_reg_1002_30_1\, B => 
        \display0/burst_reg_1002_30_0\, C => 
        \display0/burst_reg_1002_30_9\, Y => 
        \display0/burst_reg_1002_30_12\);
    
    \display0/i2c0/sda_1_RNO_6\ : NOR3B
      port map(A => \display0/i2c0/un2_sda_0_0_a2_1_0\, B => 
        \display0/i2c0/N_1043\, C => \display0/i2c0/N_152\, Y => 
        \display0/i2c0/N_191\);
    
    \display0/i2c0/sda_1_RNO_4\ : MX2
      port map(A => \display0/i2c0/un2_sda_0_0_a2_2_0\, B => 
        \display0/i2c0/un2_sda_0_0_a2_3_1\, S => 
        \display0/i2c0/N_1043\, Y => 
        \display0/i2c0/un2_sda_0_0_1\);
    
    \display0/bytecount_RNIP3KC1[14]\ : NOR3C
      port map(A => \display0/bytecount[15]_net_1\, B => 
        \display0/bytecount[14]_net_1\, C => 
        \display0/bytecount_m6_0_a2_2\, Y => 
        \display0/bytecount_m6_0_a2_5\);
    
    \display0/bytecount[8]\ : DFN1E0C0
      port map(D => \display0/N_39\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/N_43_0\, Q => 
        \display0/bytecount[8]_net_1\);
    
    \display0/bytecount_RNO[19]\ : XA1A
      port map(A => \display0/bytecount[19]_net_1\, B => 
        \display0/N_110\, C => \display0/N_673_i_0_0\, Y => 
        \display0/bytecount_n19\);
    
    \display0/burstNo[23]\ : DFN1C0
      port map(D => \display0/burstNo_4[23]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[23]_net_1\);
    
    \display0/burstNo[24]\ : DFN1C0
      port map(D => \display0/burstNo_4[24]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[24]_net_1\);
    
    \counter[13]\ : DFN1
      port map(D => counter_n13, CLK => clk_c, Q => 
        \counter[13]_net_1\);
    
    \display0/data_i2c_RNO_2[4]\ : MX2
      port map(A => \display0/data_i2c[4]_net_1\, B => 
        \display0/data_i2c_1[4]\, S => \display0/state[4]_net_1\, 
        Y => \display0/un1_data_i2c_3\);
    
    \display0/bytecount_RNI8E3Q4[1]\ : OR2
      port map(A => \display0/un1_bytecount_52\, B => 
        \display0/un1_bytecount_51\, Y => \display0/N_624_9\);
    
    \display0/i2c0/addrbit[13]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_765\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite_0\, Q => 
        \display0/i2c0/addrbit[13]_net_1\);
    
    \display0/bytecount_RNICR0C1_1[1]\ : NOR2B
      port map(A => \display0/un1_bytecount_94_2\, B => 
        \display0/un1_bytecount_92_3\, Y => 
        \display0/un1_bytecount_70_0\);
    
    \display0/un1_burstNo_2_I_144\ : NOR3C
      port map(A => \display0/burstNo[28]_net_1\, B => 
        \display0/burstNo[29]_net_1\, C => 
        \display0/DWACT_ADD_CI_0_g_array_10_2[0]\, Y => 
        \display0/DWACT_ADD_CI_0_g_array_11_6[0]\);
    
    \display0/bytecount_RNI4N1D2_11[6]\ : NOR2A
      port map(A => \display0/un1_bytecount_57_5\, B => 
        \display0/N_95\, Y => \display0/un1_bytecount_57\);
    
    \display0/i2c0/databit[31]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_197\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite\, Q => 
        \display0/i2c0/databit[31]_net_1\);
    
    \display0/bytecount[26]\ : DFN1E0C0
      port map(D => \display0/N_29\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/N_43\, Q => 
        \display0/bytecount[26]_net_1\);
    
    \display0/state_RNIV4VP[2]\ : OR2
      port map(A => \display0/state[2]_net_1\, B => 
        \display0/state[3]_net_1\, Y => \display0/N_43\);
    
    \display0/i2c0/databit_RNIVJJ62[4]\ : OR3
      port map(A => \display0/i2c0/N_1021\, B => 
        \display0/i2c0/databit[3]_net_1\, C => 
        \display0/i2c0/databit[4]_net_1\, Y => 
        \display0/i2c0/N_1023\);
    
    \display0/i2c0/databit[23]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_1018\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite_0\, Q => 
        \display0/i2c0/databit[23]_net_1\);
    
    \display0/data_i2c_RNO[2]\ : MX2
      port map(A => \display0/un1_state_9\, B => 
        \display0/data_i2c_2[2]\, S => \display0/N_43\, Y => 
        \display0/un1_state_12[5]\);
    
    \display0/i2c0/databit_RNO[11]\ : XA1C
      port map(A => \display0/i2c0/N_1029\, B => 
        \display0/i2c0/databit[11]_net_1\, C => 
        \display0/i2c0/un1_state_7_0\, Y => \display0/i2c0/N_803\);
    
    \display0/burstNo_RNO[11]\ : NOR2B
      port map(A => \display0/I_107\, B => \display0/un1_ena_2_0\, 
        Y => \display0/burstNo_4[11]\);
    
    \display0/i2c0/databit_RNO[5]\ : XA1C
      port map(A => \display0/i2c0/N_1023\, B => 
        \display0/i2c0/databit[5]_net_1\, C => 
        \display0/i2c0/un1_state_7\, Y => \display0/i2c0/N_725\);
    
    \display0/i2c0/addrbit_RNIHRJA[24]\ : NOR2
      port map(A => \display0/i2c0/addrbit[24]_net_1\, B => 
        \display0/i2c0/addrbit[25]_net_1\, Y => 
        \display0/i2c0/addrbit_m1_e_1_0\);
    
    \display0/data_i2c_RNO_39[0]\ : NOR3A
      port map(A => \display0/un1_bytecount_79_0\, B => 
        \display0/N_81\, C => \display0/N_48\, Y => 
        \display0/un1_bytecount_79\);
    
    \display0/data_i2c_1_2_iv_4_RNO[3]\ : OA1B
      port map(A => \display0/un1_bytecount_44\, B => 
        \display0/un1_bytecount_45\, C => \display0/N_575\, Y => 
        \display0/data_i2c_1_2_iv_2[3]\);
    
    \address_RNIDTR31[2]\ : OR2A
      port map(A => \address[2]_net_1\, B => N_28, Y => N_29);
    
    \counter[10]\ : DFN1
      port map(D => counter_n10, CLK => clk_c, Q => 
        \counter[10]_net_1\);
    
    \display0/burstNo[6]\ : DFN1C0
      port map(D => \display0/burstNo_4[6]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[6]_net_1\);
    
    \display0/un1_burstNo_2_I_120\ : XOR2
      port map(A => \display0/burstNo[2]_net_1\, B => 
        \display0/DWACT_ADD_CI_0_g_array_1[0]\, Y => 
        \display0/I_120\);
    
    \display0/burstNo_RNO[20]\ : XA1
      port map(A => \display0/burstNo[20]_net_1\, B => 
        \display0/DWACT_ADD_CI_0_g_array_10_1[0]\, C => 
        \display0/un1_ena_2\, Y => \display0/burstNo_4[20]\);
    
    \display0/i2c0/sda_1_RNO_5\ : XOR2
      port map(A => \display0/i2c0/addrbit[2]_net_1\, B => 
        \display0/i2c0/addrbit[1]_net_1\, Y => 
        \display0/i2c0/N_112_i\);
    
    \display0/i2c0/state_RNIGDBB[17]\ : OR3
      port map(A => \display0/i2c0/state[16]_net_1\, B => 
        \display0/i2c0/state[17]_net_1\, C => 
        \display0/i2c0/state[15]_net_1\, Y => 
        \display0/i2c0/N_167\);
    
    \address_RNO[4]\ : XA1A
      port map(A => \address[4]_net_1\, B => N_31, C => N_48, Y
         => N_20);
    
    \display0/bytecount_RNO_0[22]\ : OR2A
      port map(A => \display0/bytecount[21]_net_1\, B => 
        \display0/N_113\, Y => \display0/N_118\);
    
    \display0/bytecount_0_RNIHEHE1_0[4]\ : NOR2A
      port map(A => \display0/un1_bytecount_80_0\, B => 
        \display0/N_95\, Y => \display0/un1_bytecount_80\);
    
    \counter[15]\ : DFN1
      port map(D => counter_n15, CLK => clk_c, Q => 
        \counter[15]_net_1\);
    
    \display0/burstNo_RNO[3]\ : XA1
      port map(A => \display0/burstNo[3]_net_1\, B => 
        \display0/DWACT_ADD_CI_0_g_array_12[0]\, C => 
        \display0/un1_ena_2_0\, Y => \display0/burstNo_4[3]\);
    
    \display0/data_i2c_RNO_20[6]\ : OR3
      port map(A => \display0/un1_bytecount_176\, B => 
        \display0/burst_reg_1006_m_11_2\, C => 
        \display0/un1_bytecount_99\, Y => 
        \display0/data_i2c_1_2_iv_0_tz_1[6]\);
    
    \display0/data_i2c_RNO_16[0]\ : OR3
      port map(A => \display0/un1_bytecount_54\, B => 
        \display0/un1_bytecount_53\, C => 
        \display0/data_i2c_1_1_1[0]\, Y => 
        \display0/data_i2c_1_1_3[0]\);
    
    \display0/i2c0/addrbit_RNO[28]\ : XA1B
      port map(A => \display0/i2c0/addrbit_N_3_mux\, B => 
        \display0/i2c0/addrbit[28]_net_1\, C => 
        \display0/i2c0/un1_state_8\, Y => \display0/i2c0/N_35\);
    
    \display0/bytecount_0_RNIN1MC[5]\ : NOR3A
      port map(A => \display0/bytecount_0[5]_net_1\, B => 
        \display0/bytecount[3]_net_1\, C => 
        \display0/bytecount_0[6]_net_1\, Y => 
        \display0/un1_bytecount_87_0\);
    
    \display0/i2c0/state_RNI40DL[3]\ : OR2B
      port map(A => \display0/i2c0/state[3]_net_1\, B => 
        \display0/ena_net_1\, Y => \display0/i2c0/N_1054\);
    
    \display0/i2c0/state[1]\ : DFN1E1C0
      port map(D => \display0/i2c0/state[2]_net_1\, CLK => clk_c, 
        CLR => oled_reset_c_c, E => \display0/i2c0/un1_i2c0\, Q
         => \display0/i2c0/state[1]_net_1\);
    
    \display0/data_i2c_RNO_13[0]\ : OR3
      port map(A => \display0/data_i2c_2_0_5[0]\, B => 
        \display0/N_642_5\, C => \display0/un1_bytecount_53\, Y
         => \display0/data_i2c_2_0_12[0]\);
    
    \display0/i2c0/databit_RNIS6GO1[4]\ : NOR3A
      port map(A => \display0/i2c0/databit_N_13_mux_i_a0_3\, B
         => \display0/i2c0/databit[9]_net_1\, C => 
        \display0/i2c0/databit[4]_net_1\, Y => 
        \display0/i2c0/databit_N_13_mux_i_a0_7\);
    
    \display0/i2c0/addrbit[1]\ : DFN1E1P0
      port map(D => \display0/i2c0/N_888\, CLK => clk_c, PRE => 
        oled_reset_c_c, E => \display0/i2c0/addrbite\, Q => 
        \display0/i2c0/addrbit[1]_net_1\);
    
    \display0/data_i2c_RNO_14[0]\ : OR3
      port map(A => \display0/data_i2c_2_0_6[0]\, B => 
        \display0/un1_bytecount_178\, C => 
        \display0/data_i2c_2_0_11[0]\, Y => 
        \display0/data_i2c_2_0_13[0]\);
    
    \display0/i2c0/state[6]\ : DFN1E1C0
      port map(D => \display0/i2c0/state[7]_net_1\, CLK => clk_c, 
        CLR => oled_reset_c_c, E => \display0/i2c0/un1_i2c0\, Q
         => \display0/i2c0/state[6]_net_1\);
    
    \display0/data_i2c_RNO_20[1]\ : OR3
      port map(A => \display0/N_645_4\, B => 
        \display0/un1_bytecount_52\, C => 
        \display0/un1_bytecount_150\, Y => 
        \display0/data_i2c_2_0_9[1]\);
    
    \display0/i2c0/state[17]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_717\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/un1_i2c0_0\, Q => 
        \display0/i2c0/state[17]_net_1\);
    
    \display0/bytecount_RNIMC2E3[4]\ : AO1
      port map(A => \display0/un1_bytecount_165_0_a2_1_0\, B => 
        \display0/un1_bytecount_92_3\, C => \display0/N_173\, Y
         => \display0/N_112\);
    
    \display0/bytecount_RNI8E3Q4[4]\ : OR2
      port map(A => \display0/un1_bytecount_59\, B => 
        \display0/un1_bytecount_57\, Y => \display0/N_634_1\);
    
    \display0/i2c0/addrbit[27]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_894\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite\, Q => 
        \display0/i2c0/addrbit[27]_net_1\);
    
    \display0/un1_burstNo_2_I_193\ : AND2
      port map(A => \display0/burstNo[4]_net_1\, B => 
        \display0/burstNo[5]_net_1\, Y => 
        \display0/DWACT_ADD_CI_0_pog_array_1_1[0]\);
    
    \display0/data_i2c_RNO_17[6]\ : OR3
      port map(A => \display0/un1_bytecount_173\, B => 
        \display0/data_i2c_1_2_iv_0_tz_1[6]\, C => 
        \display0/N_645_6\, Y => 
        \display0/data_i2c_1_2_iv_0_tz_5[6]\);
    
    \counter[17]\ : DFN1
      port map(D => counter_n17, CLK => clk_c, Q => 
        \counter[17]_net_1\);
    
    \display0/i2c0/state[20]\ : DFN1E1P0
      port map(D => \display0/i2c0/state_ns[0]\, CLK => clk_c, 
        PRE => oled_reset_c_c, E => \display0/i2c0/un1_i2c0_0\, Q
         => \display0/i2c0/state[20]_net_1\);
    
    \display0/bytecount_RNI4N1D2_0[4]\ : NOR3C
      port map(A => \display0/un1_bytecount_94_2\, B => 
        \display0/un1_bytecount_66_2\, C => 
        \display0/un1_bytecount_62_5\, Y => 
        \display0/un1_bytecount_58\);
    
    \display0/bytecount_0_RNIJ9S22[1]\ : NOR3C
      port map(A => \display0/un1_bytecount_83_3\, B => 
        \display0/un1_bytecount_44_0_a2_0\, C => 
        \display0/un1_bytecount_57_5\, Y => 
        \display0/un1_bytecount_44\);
    
    \display0/bytecount_RNILC0M_1[0]\ : NOR2
      port map(A => \display0/bytecount[0]_net_1\, B => 
        \display0/bytecount[3]_net_1\, Y => 
        \display0/un1_bytecount_9_2\);
    
    \display0/burstNo_RNO[9]\ : XA1
      port map(A => \display0/burstNo[9]_net_1\, B => 
        \display0/DWACT_ADD_CI_0_g_array_12_3[0]\, C => 
        \display0/un1_ena_2_0\, Y => \display0/burstNo_4[9]\);
    
    \display0/data_i2c_RNO_5[3]\ : OA1
      port map(A => \display0/un1_bytecount_116\, B => 
        \display0/N_651\, C => \display0/burst_reg_1006\, Y => 
        \display0/data_i2c_2_2_iv_0[3]\);
    
    \display0/data_i2c_RNO_12[3]\ : AO1
      port map(A => \display0/un1_bytecount_47_0\, B => 
        \display0/un1_bytecount_57_5\, C => 
        \display0/un1_bytecount_51\, Y => 
        \display0/data_i2c_2_2_iv_4_tz_2[3]\);
    
    \display0/burstNo_RNIUBBA[31]\ : NOR2
      port map(A => \display0/burstNo[31]_net_1\, B => 
        \display0/burstNo[17]_net_1\, Y => 
        \display0/burst_reg_1002_30_0\);
    
    \display0/bytecount[23]\ : DFN1E0C0
      port map(D => \display0/N_23\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/N_43\, Q => 
        \display0/bytecount[23]_net_1\);
    
    \display0/i2c0/state[5]\ : DFN1E1C0
      port map(D => \display0/i2c0/state_ns[15]\, CLK => clk_c, 
        CLR => oled_reset_c_c, E => \display0/i2c0/un1_i2c0\, Q
         => \display0/i2c0/state[5]_net_1\);
    
    \display0/bytecount[29]\ : DFN1E0C0
      port map(D => \display0/N_929\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/N_43\, Q => 
        \display0/bytecount[29]_net_1\);
    
    \display0/burstNo_RNIOE6G7_1[0]\ : NOR2
      port map(A => \display0/burst_reg_1004\, B => 
        \display0/burst_reg_1006\, Y => \display0/N_614\);
    
    \display0/bytecount[14]\ : DFN1E0C0
      port map(D => \display0/N_16\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/N_43_0_0\, Q => 
        \display0/bytecount[14]_net_1\);
    
    \display0/un1_burstNo_2_I_151\ : NOR2B
      port map(A => \display0/DWACT_ADD_CI_0_g_array_10_2[0]\, B
         => \display0/burstNo[28]_net_1\, Y => 
        \display0/DWACT_ADD_CI_0_g_array_12_13[0]\);
    
    \display0/i2c0/databit[26]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_814\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite\, Q => 
        \display0/i2c0/databit[26]_net_1\);
    
    \display0/data_i2c_RNO_15[2]\ : OR3
      port map(A => \display0/N_621_5\, B => 
        \display0/un1_bytecount_147_1\, C => 
        \display0/data_i2c_2_0_1[2]\, Y => 
        \display0/data_i2c_2_0_3[2]\);
    
    \display0/bytecount_RNIRI0M_0[4]\ : NOR2
      port map(A => \display0/bytecount[4]_net_1\, B => 
        \display0/bytecount[5]_net_1\, Y => 
        \display0/un1_bytecount_57_3\);
    
    \display0/bytecount_0_RNIJTLC[1]\ : NOR3
      port map(A => \display0/bytecount_0[1]_net_1\, B => 
        \display0/bytecount[3]_net_1\, C => 
        \display0/bytecount_0[6]_net_1\, Y => 
        \display0/un1_bytecount_85_5\);
    
    \display0/data_i2c_RNO_19[4]\ : OR2
      port map(A => \display0/un1_bytecount_45\, B => 
        \display0/un1_bytecount_43\, Y => 
        \display0/data_i2c_1_3_tz[4]\);
    
    \display0/bytecount_RNO[30]\ : XA1A
      port map(A => \display0/bytecount[30]_net_1\, B => 
        \display0/N_933\, C => \display0/N_673_i_0\, Y => 
        \display0/bytecount_n30\);
    
    \display0/data_i2c_RNO_4[0]\ : AO1
      port map(A => \display0/N_642\, B => 
        \display0/burst_reg_1006\, C => 
        \display0/data_i2c_2_2_iv_0[0]\, Y => 
        \display0/data_i2c_2_2_iv_1[0]\);
    
    \display0/bytecount_RNINDBM[20]\ : NOR2
      port map(A => \display0/bytecount[21]_net_1\, B => 
        \display0/bytecount[20]_net_1\, Y => 
        \display0/un2_busy_byte_NE_i_a2_10\);
    
    \display0/burstNo_RNIR8BA[23]\ : NOR2
      port map(A => \display0/burstNo[22]_net_1\, B => 
        \display0/burstNo[23]_net_1\, Y => 
        \display0/burst_reg_1002_30_3\);
    
    \display0/i2c0/addrbit_RNIBN7H4[16]\ : OR2
      port map(A => \display0/i2c0/N_909\, B => 
        \display0/i2c0/addrbit[16]_net_1\, Y => 
        \display0/i2c0/N_910\);
    
    \display0/i2c0/databit_RNO[0]\ : OR2A
      port map(A => \display0/i2c0/databit[0]_net_1\, B => 
        \display0/i2c0/un1_state_7\, Y => \display0/i2c0/N_720\);
    
    \display0/bytecount_RNIPG0M_0[5]\ : NOR2A
      port map(A => \display0/bytecount[5]_net_1\, B => 
        \display0/bytecount[2]_net_1\, Y => 
        \display0/un1_bytecount_89_3\);
    
    \display0/state[3]\ : DFN1C0
      port map(D => \display0/N_15\, CLK => clk_c, CLR => 
        oled_reset_c_c, Q => \display0/state[3]_net_1\);
    
    \display0/data_i2c_RNO_5[0]\ : OR3
      port map(A => \display0/burst_reg_3_m_1[0]\, B => 
        \display0/data_i2c_1_2_iv_1[0]\, C => 
        \display0/burst_reg_3_m_7[0]\, Y => 
        \display0/data_i2c_1[0]\);
    
    \display0/i2c0/state[0]\ : DFN1E1C0
      port map(D => \display0/i2c0/state[1]_net_1\, CLK => clk_c, 
        CLR => oled_reset_c_c, E => \display0/i2c0/un1_i2c0\, Q
         => \display0/i2c0/state[0]_net_1\);
    
    \display0/bytecount_RNO_0[27]\ : OA1C
      port map(A => \display0/bytecount[26]_net_1\, B => 
        \display0/N_49\, C => \display0/bytecount[27]_net_1\, Y
         => \display0/N_79\);
    
    \display0/bytecount[4]\ : DFN1E0C0
      port map(D => \display0/bytecount_n4\, CLK => clk_c, CLR
         => oled_reset_c_c, E => \display0/N_43_0\, Q => 
        \display0/bytecount[4]_net_1\);
    
    \display0/bytecount_RNO[17]\ : XA1A
      port map(A => \display0/bytecount[17]_net_1\, B => 
        \display0/N_935\, C => \display0/N_673_i_0_0\, Y => 
        \display0/bytecount_n17\);
    
    \display0/un1_burstNo_2_I_124\ : AX1C
      port map(A => \display0/DWACT_ADD_CI_0_g_array_10_1[0]\, B
         => \display0/burstNo[20]_net_1\, C => 
        \display0/burstNo[21]_net_1\, Y => \display0/I_124\);
    
    \display0/data_i2c_RNO_6[5]\ : OR3
      port map(A => \display0/data_i2c_2_2_iv_2_tz_2[4]\, B => 
        \display0/data_i2c_2_2_iv_1_tz_4[5]\, C => 
        \display0/data_i2c_2_2_iv_1_tz_8[5]\, Y => 
        \display0/data_i2c_2_1_tz[5]\);
    
    \display0/i2c0/addrbit_RNI71MQ[12]\ : NOR3A
      port map(A => \display0/i2c0/state_tr8_0_a2_0_a2_1_9\, B
         => \display0/i2c0/addrbit[12]_net_1\, C => 
        \display0/i2c0/addrbit[13]_net_1\, Y => 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_17\);
    
    \display0/data_i2c_RNO_10[3]\ : OR3
      port map(A => \display0/un1_bytecount_54\, B => 
        \display0/data_i2c_2_0_1[3]\, C => 
        \display0/un1_bytecount_151\, Y => 
        \display0/data_i2c_2_0_5[3]\);
    
    \display0/data_i2c_1_0_6_RNO_1[2]\ : OR3
      port map(A => \display0/un1_bytecount_92\, B => 
        \display0/un1_bytecount_100\, C => 
        \display0/un1_bytecount_99\, Y => 
        \display0/data_i2c_1_0_1[2]\);
    
    \display0/i2c0/addrbit[10]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_762\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite_0\, Q => 
        \display0/i2c0/addrbit[10]_net_1\);
    
    \display0/bytecount_RNO[8]\ : XA1A
      port map(A => \display0/bytecount[8]_net_1\, B => 
        \display0/N_99\, C => \display0/N_673_i_0\, Y => 
        \display0/N_39\);
    
    \display0/un1_burstNo_2_I_128\ : AX1C
      port map(A => \display0/DWACT_ADD_CI_0_g_array_11_3[0]\, B
         => \display0/burstNo[18]_net_1\, C => 
        \display0/burstNo[19]_net_1\, Y => \display0/I_128\);
    
    \display0/bytecount_RNIQH0M_0[2]\ : NOR2A
      port map(A => \display0/bytecount[6]_net_1\, B => 
        \display0/bytecount[2]_net_1\, Y => 
        \display0/un1_bytecount_15_2\);
    
    \display0/bytecount_RNICR0C1_0[5]\ : NOR2A
      port map(A => \display0/un1_bytecount_76_2\, B => 
        \display0/N_93\, Y => \display0/un1_bytecount_76_4\);
    
    \D2_pad/U0/U0\ : IOPAD_TRI
      port map(D => \D2_pad/U0/NET1\, E => \D2_pad/U0/NET2\, PAD
         => D2);
    
    \display0/i2c0/busy_burst_RNI0HRF_0\ : NOR2A
      port map(A => \display0/state[1]_net_1\, B => 
        \display0/i2c0/busy_burst_net_1\, Y => 
        \display0/state_ns_1[5]\);
    
    \display0/i2c0/addrbit_RNIMJRF[13]\ : NOR3
      port map(A => \display0/i2c0/addrbit[20]_net_1\, B => 
        \display0/i2c0/addrbit[13]_net_1\, C => 
        \display0/i2c0/addrbit[19]_net_1\, Y => 
        \display0/i2c0/addrbit_m6_e_1_4\);
    
    \display0/bytecount_0_RNIM0MC[4]\ : NOR3
      port map(A => \display0/bytecount_0[4]_net_1\, B => 
        \display0/bytecount[3]_net_1\, C => 
        \display0/bytecount_0[6]_net_1\, Y => 
        \display0/un1_bytecount_76_5\);
    
    \display0/bytecount_0_RNI6JO54[4]\ : AO1
      port map(A => \display0/un1_bytecount_76_4\, B => 
        \display0/un1_bytecount_76_5\, C => 
        \display0/un1_bytecount_114\, Y => 
        \display0/un1_bytecount_136\);
    
    \display0/data_i2c_RNO_4[3]\ : OR3
      port map(A => \display0/data_i2c_2_2_iv_0[3]\, B => 
        \display0/burst_reg_2_1_m_0[3]\, C => 
        \display0/data_i2c_2_4[3]\, Y => 
        \display0/data_i2c_2_2_iv_2[3]\);
    
    \display0/data_i2c_RNO_14[1]\ : OR3
      port map(A => \display0/data_i2c_2_0_7[1]\, B => 
        \display0/N_643_3\, C => \display0/data_i2c_2_0_9[1]\, Y
         => \display0/data_i2c_2_0_12[1]\);
    
    \display0/data_i2c_RNO_6[3]\ : NOR2A
      port map(A => \display0/data_i2c_2_4_tz[3]\, B => 
        \display0/N_575\, Y => \display0/data_i2c_2_4[3]\);
    
    \display0/i2c0/databit_RNIMLBA1[2]\ : OR2
      port map(A => \display0/i2c0/N_1020\, B => 
        \display0/i2c0/databit[2]_net_1\, Y => 
        \display0/i2c0/N_1021\);
    
    \address[4]\ : DFN1E1C0
      port map(D => N_20, CLK => clk_c, CLR => oled_reset_c_c, E
         => addresse, Q => \address[4]_net_1\);
    
    \display0/i2c0/sda_e_RNO\ : NOR3C
      port map(A => \display0/i2c0/un1_state_6_0_a2_0_a3_0_a2_1\, 
        B => \display0/i2c0/un1_state_6_0_a2_0_a3_0_a2_0\, C => 
        \display0/i2c0/N_653_1\, Y => 
        \display0/i2c0/sda_e_RNO_net_1\);
    
    \display0/bytecount_RNIRI0M[6]\ : NOR2B
      port map(A => \display0/bytecount[3]_net_1\, B => 
        \display0/bytecount[6]_net_1\, Y => 
        \display0/un1_bytecount_99_1\);
    
    \display0/i2c0/databit_RNID21V4[18]\ : OR3
      port map(A => \display0/i2c0/N_1035\, B => 
        \display0/i2c0/databit[17]_net_1\, C => 
        \display0/i2c0/databit[18]_net_1\, Y => 
        \display0/i2c0/N_1037\);
    
    \display0/data_i2c_RNO_8[3]\ : OR3
      port map(A => \display0/data_i2c_1_0[7]\, B => 
        \display0/data_i2c_2_2_iv_4_tz_0[3]\, C => 
        \display0/data_i2c_2_2_iv_4_tz_2[3]\, Y => 
        \display0/data_i2c_2_4_tz[3]\);
    
    \display0/bytecount_RNI8E3Q4_1[0]\ : OR2
      port map(A => \display0/un1_bytecount_56\, B => 
        \display0/un1_bytecount_57\, Y => \display0/N_655_2\);
    
    \display0/bytecount_RNI27TT8[6]\ : MX2
      port map(A => \display0/un2_busy_byte_NE_25_i_a2_0_0\, B
         => \display0/un1_bytecount_68_0\, S => \display0/N_614\, 
        Y => \display0/N_60\);
    
    \display0/bytecount_0_RNI7LG2[4]\ : XA1B
      port map(A => \display0/bytecount_0[6]_net_1\, B => 
        \display0/bytecount_0[5]_net_1\, C => 
        \display0/bytecount_0[4]_net_1\, Y => 
        \display0/un1_bytecount_161_3\);
    
    \display0/state_RNIGJHE[5]\ : OR2A
      port map(A => \display0/state[5]_net_1\, B => draw_i_0, Y
         => \display0/N_34\);
    
    \display0/bytecount[27]\ : DFN1E0C0
      port map(D => \display0/N_927\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/N_43\, Q => 
        \display0/bytecount[27]_net_1\);
    
    \display0/data_i2c_RNO_3[3]\ : AO1A
      port map(A => \display0/N_575\, B => 
        \display0/un1_bytecount_45\, C => 
        \display0/data_i2c_2_2_iv_2[3]\, Y => 
        \display0/data_i2c_2_2_iv_4[3]\);
    
    \display0/bytecount_RNIQT011_0[6]\ : NOR2A
      port map(A => \display0/un1_bytecount_57_3\, B => 
        \display0/bytecount[6]_net_1\, Y => 
        \display0/un1_bytecount_57_5\);
    
    \counter[0]\ : DFN1
      port map(D => \counter_i[0]\, CLK => clk_c, Q => 
        \counter[0]_net_1\);
    
    \display0/data_i2c_RNO_2[7]\ : MX2
      port map(A => \display0/data_i2c[7]_net_1\, B => 
        \display0/data_i2c_1[7]\, S => \display0/state[4]_net_1\, 
        Y => \display0/un1_data_i2c\);
    
    \display0/bytecount_RNIKN011[4]\ : NOR2A
      port map(A => \display0/N_174_1\, B => 
        \display0/bytecount[4]_net_1\, Y => 
        \display0/un1_bytecount_165_0_a2_1_0\);
    
    \display0/bytecount_0_RNI4HIQ2[1]\ : OA1
      port map(A => \display0/un1_bytecount_39\, B => 
        \display0/un1_bytecount_38\, C => 
        \display0/un1_bytecount_176_1\, Y => 
        \display0/un1_bytecount_176\);
    
    \display0/bytecount_0_RNIMKL1[1]\ : NOR2A
      port map(A => \display0/bytecount_0[1]_net_1\, B => 
        \display0/bytecount_0[5]_net_1\, Y => 
        \display0/un1_bytecount_10_0\);
    
    \display0/i2c0/counter[0]\ : DFN1P0
      port map(D => \display0/i2c0/N_159\, CLK => clk_c, PRE => 
        oled_reset_c_c, Q => \display0/i2c0/counter_i_0[0]\);
    
    \display0/bytecount_RNO_0[11]\ : AX1A
      port map(A => \display0/N_94\, B => 
        \display0/bytecount_m6_0_a2_5_7\, C => 
        \display0/bytecount[11]_net_1\, Y => \display0/N_64_i\);
    
    \display0/bytecount_RNINE0M_0[5]\ : NOR2A
      port map(A => \display0/bytecount[5]_net_1\, B => 
        \display0/bytecount[0]_net_1\, Y => 
        \display0/un1_bytecount_92_3\);
    
    \counter[3]\ : DFN1
      port map(D => counter_n3, CLK => clk_c, Q => 
        \counter[3]_net_1\);
    
    \display0/i2c0/scl_1_RNO_0\ : NOR3A
      port map(A => \display0/i2c0/scl_1_1_0_i_a2_0_a2_0_a2_2\, B
         => \display0/i2c0/state[1]_net_1\, C => 
        \display0/i2c0/state[7]_net_1\, Y => 
        \display0/i2c0/scl_1_1_0_i_a2_0_a2_0_a2_4\);
    
    \display0/data_i2c_RNO_0[4]\ : NOR2B
      port map(A => \display0/un1_state_6_0\, B => 
        \display0/un1_data_i2c_3\, Y => \display0/un1_state_7\);
    
    \display0/i2c0/databit_RNO_0[12]\ : AX1B
      port map(A => \display0/i2c0/N_1029\, B => 
        \display0/i2c0/databit[11]_net_1\, C => 
        \display0/i2c0/databit[12]_net_1\, Y => 
        \display0/i2c0/N_804_tz\);
    
    \display0/bytecount_RNI8E3Q4_0[5]\ : OR2
      port map(A => \display0/un1_bytecount_115\, B => 
        \display0/un1_bytecount_92\, Y => 
        \display0/data_i2c_1_0_0[1]\);
    
    \display0/bytecount_0_RNIJ9S22[6]\ : NOR3A
      port map(A => \display0/un1_bytecount_91_0\, B => 
        \display0/N_67\, C => \display0/N_127\, Y => 
        \display0/un1_bytecount_91\);
    
    \display0/data_i2c_RNO_40[0]\ : NOR3
      port map(A => \display0/bytecount_0[4]_net_1\, B => 
        \display0/bytecount[0]_net_1\, C => 
        \display0/bytecount_0[6]_net_1\, Y => 
        \display0/un1_bytecount_79_0\);
    
    \display0/data_i2c_RNO_15[0]\ : OA1
      port map(A => \display0/burstno\, B => 
        \display0/burst_reg_1005\, C => 
        \display0/un1_bytecount_44\, Y => 
        \display0/burst_reg_2_1_m_0[0]\);
    
    \address_RNO[6]\ : NOR3B
      port map(A => N_48, B => N_47, C => N_154, Y => N_24);
    
    \display0/burstNo[19]\ : DFN1C0
      port map(D => \display0/burstNo_4[19]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[19]_net_1\);
    
    \display0/data_i2c_RNO_6[6]\ : OR3
      port map(A => \display0/un1_bytecount_51\, B => 
        \display0/un1_bytecount_49\, C => \display0/N_661_1\, Y
         => \display0/data_i2c_2_1_1[6]\);
    
    \display0/bytecount_RNITIAM[22]\ : NOR2
      port map(A => \display0/bytecount[22]_net_1\, B => 
        \display0/bytecount[16]_net_1\, Y => 
        \display0/un2_busy_byte_NE_i_a2_6\);
    
    \display0/counter_n15\ : XOR2
      port map(A => \counter[15]_net_1\, B => 
        \display0/counter_c14_net_1\, Y => counter_n15);
    
    \display0/bytecount_RNIOP4H6_0[1]\ : NOR2A
      port map(A => \display0/un1_bytecount_139\, B => 
        \display0/bytecount[1]_net_1\, Y => 
        \display0/un1_bytecount_155\);
    
    \display0/bytecount_RNI4N1D2_4[6]\ : NOR3B
      port map(A => \display0/un1_bytecount_93_3\, B => 
        \display0/un1_bytecount_88_0\, C => \display0/N_71\, Y
         => \display0/un1_bytecount_88\);
    
    \display0/bytecount_RNIOHMR2[11]\ : OR3B
      port map(A => \display0/bytecount_m6_0_a2_5_7\, B => 
        \display0/bytecount[11]_net_1\, C => \display0/N_94\, Y
         => \display0/N_50\);
    
    \display0/data_i2c_RNO_12[1]\ : NOR2A
      port map(A => \display0/un1_bytecount_61\, B => 
        \display0/N_583\, Y => \display0/burst_reg_20_m[1]\);
    
    \display0/data_i2c_RNO_13[6]\ : OR3
      port map(A => \display0/data_i2c_1_2_iv_0_tz_5[6]\, B => 
        \display0/data_i2c_1_2_iv_0_tz_4[6]\, C => 
        \display0/un1_bytecount_151\, Y => 
        \display0/data_i2c_1_2_iv_0_tz_7[6]\);
    
    \display0/bytecount_RNI721N1[4]\ : OR2A
      port map(A => \display0/bytecount[4]_net_1\, B => 
        \display0/N_95\, Y => \display0/N_96\);
    
    \display0/data_i2c_RNO_11[2]\ : AO1
      port map(A => \display0/burst_reg_1006_m_15_1\, B => 
        \display0/burst_reg_1006\, C => 
        \display0/burst_reg_3_m_0[2]\, Y => 
        \display0/data_i2c_2_2_iv_0[2]\);
    
    \display0/bytecount_RNIC6HB8[1]\ : OR2
      port map(A => \display0/un1_bytecount_100\, B => 
        \display0/un1_bytecount_142\, Y => \display0/N_660_3\);
    
    \display0/i2c0/scl_1_RNO\ : OR3B
      port map(A => \display0/i2c0/scl_1_1_0_i_a2_0_a2_0_a2_4\, B
         => \display0/i2c0/scl_1_1_0_i_a2_0_a2_0_a2_3\, C => 
        \display0/i2c0/N_1056\, Y => 
        \display0/i2c0/scl_1_RNO_net_1\);
    
    \display0/data_i2c_RNO_19[6]\ : NOR3C
      port map(A => \display0/un1_bytecount_62_3\, B => 
        \display0/burst_reg_1006_m_25_2_0\, C => 
        \display0/un1_bytecount_15_2\, Y => 
        \display0/burst_reg_1006_m_25_2\);
    
    \display0/bytecount[15]\ : DFN1E0C0
      port map(D => \display0/N_926\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/N_43_0_0\, Q => 
        \display0/bytecount[15]_net_1\);
    
    \display0/burstNo_RNO[5]\ : NOR2B
      port map(A => \display0/I_100\, B => \display0/un1_ena_2_0\, 
        Y => \display0/burstNo_4[5]\);
    
    \display0/bytecount[12]\ : DFN1E0C0
      port map(D => \display0/N_925\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/N_43_0\, Q => 
        \display0/bytecount[12]_net_1\);
    
    \address_RNO[5]\ : XA1A
      port map(A => \address[5]_net_1\, B => N_45, C => N_48, Y
         => N_22);
    
    \display0/bytecount_RNINE0M[1]\ : OR2B
      port map(A => \display0/bytecount[4]_net_1\, B => 
        \display0/bytecount[1]_net_1\, Y => \display0/N_65\);
    
    \display0/bytecount_RNIPKLU6[2]\ : OA1B
      port map(A => \display0/un1_bytecount_146_1\, B => 
        \display0/un1_bytecount_146_0\, C => 
        \display0/bytecount[2]_net_1\, Y => 
        \display0/un1_bytecount_173\);
    
    \display0/bytecount_RNI9G334[4]\ : XOR2
      port map(A => \display0/burst_reg_1002\, B => 
        \display0/bytecount[4]_net_1\, Y => 
        \display0/un2_busy_byte_4\);
    
    \display0/bytecount_0_RNIKNQU2[5]\ : XA1A
      port map(A => \display0/bytecount_0[5]_net_1\, B => 
        \display0/N_96\, C => \display0/N_673_i_0\, Y => 
        \display0/N_33\);
    
    \display0/i2c0/databit[6]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_726\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite\, Q => 
        \display0/i2c0/databit[6]_net_1\);
    
    \display0/i2c0/state[9]\ : DFN1E1C0
      port map(D => \display0/i2c0/state[10]_net_1\, CLK => clk_c, 
        CLR => oled_reset_c_c, E => \display0/i2c0/un1_i2c0\, Q
         => \display0/i2c0/state[9]_net_1\);
    
    \display0/i2c0/state_tr8_0_a2_0_a2_1_RNO_0\ : NOR2
      port map(A => \display0/i2c0/addrbit[11]_net_1\, B => 
        \display0/i2c0/addrbit[31]_net_1\, Y => 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_0\);
    
    \display0/i2c0/addrbit[0]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_914\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite\, Q => 
        \display0/i2c0/addrbit[0]_net_1\);
    
    \display0/burstNo[4]\ : DFN1C0
      port map(D => \display0/burstNo_4[4]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[4]_net_1\);
    
    \display0/i2c0/addrbit_RNI8FRM3[4]\ : NOR3B
      port map(A => \display0/i2c0/addrbit_m6_e_0_6\, B => 
        \display0/i2c0/addrbit_m6_e_0_5\, C => 
        \display0/i2c0/N_896\, Y => 
        \display0/i2c0/addrbit_N_13_mux_0\);
    
    \display0/data_i2c_RNO_8[4]\ : OR3
      port map(A => \display0/data_i2c_2_2_iv_2_tz_4[4]\, B => 
        \display0/data_i2c_2_2_iv_2_tz_3[4]\, C => 
        \display0/N_660_2\, Y => \display0/data_i2c_2_2_tz[4]\);
    
    \display0/i2c0/counter_RNO[4]\ : XO1A
      port map(A => \display0/i2c0/N_1051\, B => 
        \display0/i2c0/counter_i_0[4]\, C => 
        \display0/i2c0/state[20]_net_1\, Y => 
        \display0/i2c0/N_83\);
    
    \display0/data_i2c_RNO_3[2]\ : OR3
      port map(A => \display0/data_i2c_2_2_iv_1[2]\, B => 
        \display0/burst_reg_2_1_m_0[3]\, C => 
        \display0/burst_reg_3_m_12[0]\, Y => 
        \display0/data_i2c_2_2_iv_3[2]\);
    
    \display0/bytecount_RNINB9M[11]\ : NOR2
      port map(A => \display0/bytecount[11]_net_1\, B => 
        \display0/bytecount[12]_net_1\, Y => 
        \display0/un2_busy_byte_NE_i_a2_4\);
    
    \display0/bytecount_RNI4N1D2[6]\ : NOR3C
      port map(A => \display0/un1_bytecount_99_2\, B => 
        \display0/un1_bytecount_93_3\, C => 
        \display0/un1_bytecount_90_0\, Y => 
        \display0/un1_bytecount_90\);
    
    \display0/burstNo_RNO[7]\ : NOR2B
      port map(A => \display0/I_99\, B => \display0/un1_ena_2_0\, 
        Y => \display0/burstNo_4[7]\);
    
    \display0/i2c0/addrbit_RNIL8MB5[21]\ : OR2A
      port map(A => \display0/i2c0/addrbit_N_13_mux_1\, B => 
        \display0/i2c0/addrbit[21]_net_1\, Y => 
        \display0/i2c0/N_95\);
    
    \display0/bytecount_0_RNIC2MN[4]\ : NOR3A
      port map(A => \display0/bytecount_0[5]_net_1\, B => 
        \display0/bytecount_0[4]_net_1\, C => \display0/N_93\, Y
         => \display0/un1_bytecount_32\);
    
    \display0/bytecount_RNIL5IF3[17]\ : NOR3C
      port map(A => \display0/un2_busy_byte_NE_i_a2_13\, B => 
        \display0/un2_busy_byte_NE_i_a2_12\, C => 
        \display0/un2_busy_byte_NE_i_a2_18\, Y => 
        \display0/un2_busy_byte_NE_i_a2_22\);
    
    \display0/bytecount_RNIB0OF3[4]\ : OA1
      port map(A => \display0/un1_bytecount_85_1\, B => 
        \display0/un1_bytecount_81_1\, C => 
        \display0/un1_bytecount_93_3\, Y => 
        \display0/un1_bytecount_150_1\);
    
    \display0/bytecount_RNI4N1D2_2[4]\ : NOR3C
      port map(A => \display0/un1_bytecount_99_2\, B => 
        \display0/un1_bytecount_87_2\, C => 
        \display0/un1_bytecount_62_5\, Y => 
        \display0/un1_bytecount_62\);
    
    \display0/i2c0/databit[7]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_727\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite\, Q => 
        \display0/i2c0/databit[7]_net_1\);
    
    \display0/bytecount_RNIVS9JB[2]\ : AX1B
      port map(A => \display0/burst_reg_1005\, B => 
        \display0/un1_burst_reg_1002_1\, C => 
        \display0/bytecount[2]_net_1\, Y => \display0/N_919\);
    
    \display0/bytecount_RNI8E3Q4[5]\ : AO1
      port map(A => \display0/un1_bytecount_108_0\, B => 
        \display0/un1_bytecount_108_5\, C => 
        \display0/un1_bytecount_83\, Y => 
        \display0/un1_bytecount_153_0\);
    
    \display0/burstNo_RNI3HBA[27]\ : NOR2
      port map(A => \display0/burstNo[26]_net_1\, B => 
        \display0/burstNo[27]_net_1\, Y => 
        \display0/burst_reg_1002_30_5\);
    
    \display0/state[1]\ : DFN1C0
      port map(D => \display0/N_18\, CLK => clk_c, CLR => 
        oled_reset_c_c, Q => \display0/state[1]_net_1\);
    
    \display0/data_i2c_RNO_3[6]\ : OA1B
      port map(A => \display0/N_661_2\, B => 
        \display0/data_i2c_2_1_1[6]\, C => \display0/N_575_0\, Y
         => \display0/burst_reg_3_m_17[0]\);
    
    INT_ULSICC_INSTANCE_0 : ULSICC_INT
      port map(USTDBY => \GND\, LPENA => \GND\);
    
    \display0/i2c0/databit_RNI5K4L4[1]\ : NOR2A
      port map(A => \display0/i2c0/databit_N_13_mux_i_a0_10\, B
         => \display0/i2c0/N_1020\, Y => \display0/i2c0/N_1032_i\);
    
    \display0/counter_c20\ : NOR3C
      port map(A => \display0/counter_c18_net_1\, B => 
        \counter[19]_net_1\, C => \counter[20]_net_1\, Y => 
        \display0/counter_c20_net_1\);
    
    \display0/bytecount_RNICR0C1[5]\ : NOR2B
      port map(A => \display0/un1_bytecount_76_2\, B => 
        \display0/un1_bytecount_99_2\, Y => 
        \display0/un1_bytecount_74_0\);
    
    \display0/burstNo_RNIA7I2_0[1]\ : NOR3B
      port map(A => \display0/burstNo[0]_net_1\, B => 
        \display0/burst_reg_1005_2\, C => 
        \display0/burstNo[1]_net_1\, Y => 
        \display0/burst_reg_1003_1\);
    
    \display0/burstNo[17]\ : DFN1C0
      port map(D => \display0/burstNo_4[17]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[17]_net_1\);
    
    \display0/data_i2c_RNO_6[0]\ : OR3
      port map(A => \display0/un1_bytecount_45\, B => 
        \display0/data_i2c_2_1_0[0]\, C => \display0/N_655_2\, Y
         => \display0/data_i2c_2_1_2[0]\);
    
    \display0/state_RNO_0[4]\ : AO1B
      port map(A => \display0/state_ns_i_a2_0_a2_1_0[1]\, B => 
        \display0/burstno_29\, C => 
        \display0/state_ns_i_a2_0_o2_0[1]\, Y => 
        \display0/N_879_tz\);
    
    \display0/burstNo_RNO[10]\ : XA1
      port map(A => \display0/burstNo[10]_net_1\, B => 
        \display0/DWACT_ADD_CI_0_g_array_11_1[0]\, C => 
        \display0/un1_ena_2_0\, Y => \display0/burstNo_4[10]\);
    
    \display0/i2c0/state_tr8_0_a2_0_a2_1_19\ : NOR3C
      port map(A => \display0/i2c0/state_tr8_0_a2_0_a2_1_1\, B
         => \display0/i2c0/state_tr8_0_a2_0_a2_1_0\, C => 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_12_net_1\, Y => 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_19_net_1\);
    
    \display0/i2c0/databit_RNO[27]\ : NOR2A
      port map(A => \display0/i2c0/N_815_tz\, B => 
        \display0/i2c0/un1_state_7\, Y => \display0/i2c0/N_815\);
    
    \display0/bytecount_RNO[20]\ : XA1A
      port map(A => \display0/bytecount[20]_net_1\, B => 
        \display0/N_111\, C => \display0/N_673_i_0_0\, Y => 
        \display0/bytecount_n20\);
    
    \display0/i2c0/addrbit_RNO[25]\ : XA1C
      port map(A => \display0/i2c0/N_98\, B => 
        \display0/i2c0/addrbit[25]_net_1\, C => 
        \display0/i2c0/un1_state_8\, Y => \display0/i2c0/N_892\);
    
    \display0/data_i2c_RNO_4[6]\ : OA1
      port map(A => \display0/N_660_2\, B => 
        \display0/data_i2c_2_2_iv_0_tz_7[6]\, C => 
        \display0/burst_reg_1006\, Y => 
        \display0/data_i2c_2_2_iv_0[6]\);
    
    \display0/data_i2c_RNO_14[6]\ : AO1
      port map(A => \display0/un1_bytecount_167_1\, B => 
        \display0/un1_bytecount_144\, C => 
        \display0/un1_bytecount_165\, Y => 
        \display0/data_i2c_2_2_iv_0_tz_1[6]\);
    
    \display0/data_i2c_RNO_13[2]\ : OR3
      port map(A => \display0/burst_reg_3_m[2]\, B => 
        \display0/burst_reg_1006_m_3\, C => 
        \display0/burst_reg_1006_m_4\, Y => 
        \display0/data_i2c_1_2_iv_1[2]\);
    
    \display0/bytecount_RNO[28]\ : XA1A
      port map(A => \display0/bytecount[28]_net_1\, B => 
        \display0/N_53\, C => \display0/N_673_i_0_0\, Y => 
        \display0/N_928\);
    
    \display0/i2c0/state[4]\ : DFN1E1C0
      port map(D => \display0/i2c0/state[5]_net_1\, CLK => clk_c, 
        CLR => oled_reset_c_c, E => \display0/i2c0/un1_i2c0\, Q
         => \display0/i2c0/state[4]_net_1\);
    
    \display0/i2c0/counter_RNI2QLH1[4]\ : OR2
      port map(A => \display0/i2c0/counter_i_0[4]\, B => 
        \display0/i2c0/N_1051\, Y => \display0/i2c0/N_1055\);
    
    \display0/i2c0/addrbit_RNI0LPR4[18]\ : OR2
      port map(A => \display0/i2c0/N_911\, B => 
        \display0/i2c0/addrbit[18]_net_1\, Y => 
        \display0/i2c0/N_912\);
    
    \display0/bytecount_RNIN0UF4[6]\ : OR2
      port map(A => \display0/un1_bytecount_46\, B => 
        \display0/un1_bytecount_44\, Y => 
        \display0/data_i2c_1_1_1[5]\);
    
    \counter[7]\ : DFN1
      port map(D => counter_n7, CLK => clk_c, Q => 
        \counter[7]_net_1\);
    
    \display0/i2c0/addrbit[26]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_893\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite\, Q => 
        \display0/i2c0/addrbit[26]_net_1\);
    
    \display0/bytecount_0_RNITG762_0[6]\ : NOR2B
      port map(A => \display0/un1_bytecount_178_2\, B => 
        \display0/N_180\, Y => \display0/un1_bytecount_175\);
    
    \display0/state_RNO_2[4]\ : OR2A
      port map(A => \display0/N_34\, B => 
        \display0/state_ns_1[5]\, Y => 
        \display0/state_ns_i_a2_0_o2_0[1]\);
    
    \display0/i2c0/sda_e\ : DFN1C0
      port map(D => \display0/i2c0/sda_e_RNO_net_1\, CLK => clk_c, 
        CLR => oled_reset_c_c, Q => \display0.i2c0.sda_e\);
    
    \display0/bytecount_RNI2SMO1[5]\ : NOR3B
      port map(A => \display0/un1_bytecount_89_3\, B => 
        \display0/un1_bytecount_76_5\, C => \display0/N_93\, Y
         => \display0/un1_bytecount_73\);
    
    \display0/data_i2c_RNO_8[6]\ : NOR2A
      port map(A => \display0/N_640\, B => \display0/N_575\, Y
         => \display0/burst_reg_3_m_8[0]\);
    
    \D3_pad/U0/U0\ : IOPAD_TRI
      port map(D => \D3_pad/U0/NET1\, E => \D3_pad/U0/NET2\, PAD
         => D3);
    
    \display0/bytecount_RNIJA0M_0[1]\ : NOR2A
      port map(A => \display0/bytecount[0]_net_1\, B => 
        \display0/bytecount[1]_net_1\, Y => \display0/N_177\);
    
    \display0/i2c0/databit_RNID28S[6]\ : NOR2
      port map(A => \display0/i2c0/databit[5]_net_1\, B => 
        \display0/i2c0/databit[6]_net_1\, Y => 
        \display0/i2c0/databit_N_13_mux_i_a0_3\);
    
    \display0/i2c0/addrbit_RNIDNJA[23]\ : OR2
      port map(A => \display0/i2c0/addrbit[23]_net_1\, B => 
        \display0/i2c0/addrbit[22]_net_1\, Y => 
        \display0/i2c0/addrbit_n24_i_o3_i_o2_0\);
    
    \display0/burstNo_RNIN591[3]\ : NOR2A
      port map(A => \display0/burstNo[2]_net_1\, B => 
        \display0/burstNo[3]_net_1\, Y => 
        \display0/burst_reg_1006_29_0_a2_0_0\);
    
    \display0/bytecount[5]\ : DFN1E0C0
      port map(D => \display0/N_33\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/N_43_0\, Q => 
        \display0/bytecount[5]_net_1\);
    
    \display0/data_i2c_1_2_iv_4_RNO_5[3]\ : OA1
      port map(A => \display0/un1_bytecount_46_0\, B => 
        \display0/un1_bytecount_47_0\, C => 
        \display0/un1_bytecount_57_5\, Y => 
        \display0/data_i2c_1_1_1[3]\);
    
    \display0/bytecount_RNIOAOLS[4]\ : NOR2A
      port map(A => \display0/un1_bytecount_62\, B => 
        \display0/N_575\, Y => \display0/burst_reg_20_m_4[2]\);
    
    \display0/bytecount_RNIOF0M_1[4]\ : NOR2
      port map(A => \display0/bytecount[2]_net_1\, B => 
        \display0/bytecount[4]_net_1\, Y => 
        \display0/un1_bytecount_99_3\);
    
    \display0/bytecount_RNI4N1D2_0[1]\ : NOR3B
      port map(A => \display0/un1_bytecount_92_3\, B => 
        \display0/un1_bytecount_83_5\, C => \display0/N_65\, Y
         => \display0/un1_bytecount_83\);
    
    \display0/i2c0/databit_RNO_0[6]\ : AX1D
      port map(A => \display0/i2c0/databit[5]_net_1\, B => 
        \display0/i2c0/N_1023\, C => 
        \display0/i2c0/databit[6]_net_1\, Y => 
        \display0/i2c0/N_182_i\);
    
    \display0/bytecount_RNIDS0C1_0[4]\ : NOR2A
      port map(A => \display0/un1_bytecount_66_2\, B => 
        \display0/N_94\, Y => \display0/un1_bytecount_14_3\);
    
    \display0/bytecount_RNI4N1D2_6[6]\ : NOR3C
      port map(A => \display0/un1_bytecount_91_3\, B => 
        \display0/N_4_i\, C => \display0/un1_bytecount_83_5\, Y
         => \display0/un1_bytecount_82\);
    
    \display0/bytecount_RNIHEQFD[2]\ : OR2
      port map(A => \display0/un1_bytecount_173\, B => 
        \display0/un1_bytecount_155\, Y => \display0/N_624_4\);
    
    \display0/bytecount[24]\ : DFN1E0C0
      port map(D => \display0/N_25\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/N_43\, Q => 
        \display0/bytecount[24]_net_1\);
    
    \display0/i2c0/databit_RNO_0[25]\ : OA1
      port map(A => \display0/i2c0/N_1044\, B => 
        \display0/i2c0/databit[24]_net_1\, C => 
        \display0/i2c0/databit[25]_net_1\, Y => 
        \display0/i2c0/databit_n25_i_0_a2_0\);
    
    \display0/data_i2c_RNO_14[2]\ : OA1B
      port map(A => \display0/un1_bytecount_51\, B => 
        \display0/data_i2c_1_1_0[2]\, C => \display0/N_575_0\, Y
         => \display0/burst_reg_3_m_3[0]\);
    
    \display0/i2c0/databit[9]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_32\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite\, Q => 
        \display0/i2c0/databit[9]_net_1\);
    
    \display0/bytecount_0_RNI2GG2[1]\ : NOR3
      port map(A => \display0/bytecount_0[1]_net_1\, B => 
        \display0/bytecount_0[4]_net_1\, C => 
        \display0/bytecount_0[5]_net_1\, Y => 
        \display0/un1_bytecount_104_5\);
    
    \display0/bytecount_0_RNIN0UF4[1]\ : AO1
      port map(A => \display0/un1_bytecount_47_0\, B => 
        \display0/un1_bytecount_57_5\, C => 
        \display0/un1_bytecount_50\, Y => 
        \display0/data_i2c_2_1_1[5]\);
    
    \display0/burstNo_RNO[31]\ : XA1
      port map(A => \display0/burstNo[31]_net_1\, B => 
        \display0/DWACT_ADD_CI_0_g_array_12_14[0]\, C => 
        \display0/un1_ena_2\, Y => \display0/burstNo_4[31]\);
    
    \display0/i2c0/databit[2]\ : DFN1E1P0
      port map(D => \display0/i2c0/N_1016\, CLK => clk_c, PRE => 
        oled_reset_c_c, E => \display0/i2c0/databite\, Q => 
        \display0/i2c0/databit[2]_net_1\);
    
    \display0/bytecount_0_RNI2SMO1_0[5]\ : OA1C
      port map(A => \display0/bytecount_0[5]_net_1\, B => 
        \display0/N_96\, C => \display0/bytecount_0[6]_net_1\, Y
         => \display0/N_139\);
    
    \display0/bytecount_0_RNIKULC[5]\ : NOR3
      port map(A => \display0/bytecount_0[5]_net_1\, B => 
        \display0/bytecount[0]_net_1\, C => 
        \display0/bytecount_0[6]_net_1\, Y => 
        \display0/un1_bytecount_68_0\);
    
    \display0/data_i2c_RNO_12[6]\ : OR3
      port map(A => \display0/N_643_3\, B => 
        \display0/data_i2c_1_1_0[6]\, C => \display0/N_643_4\, Y
         => \display0/N_640\);
    
    \display0/bytecount_RNIRHBM[30]\ : NOR2
      port map(A => \display0/bytecount[15]_net_1\, B => 
        \display0/bytecount[30]_net_1\, Y => 
        \display0/un2_busy_byte_NE_i_a2_7\);
    
    \display0/data_i2c_RNO_15[5]\ : OR3
      port map(A => \display0/un1_bytecount_156\, B => 
        \display0/un1_bytecount_164\, C => 
        \display0/un1_bytecount_155\, Y => 
        \display0/data_i2c_1_2_iv_1_tz_4[5]\);
    
    \display0/i2c0/state_RNI4F4D[0]\ : OR2
      port map(A => \display0/i2c0/state[0]_net_1\, B => 
        \display0/i2c0/state[20]_net_1\, Y => 
        \display0/i2c0/N_1056\);
    
    \display0/data_i2c_RNO_2[1]\ : MX2
      port map(A => \display0/data_i2c[1]_net_1\, B => 
        \display0/data_i2c_1[1]\, S => \display0/state[4]_net_1\, 
        Y => \display0/un1_data_i2c_6\);
    
    \display0/i2c0/addrbit[12]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_764\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite_0\, Q => 
        \display0/i2c0/addrbit[12]_net_1\);
    
    \display0/bytecount_RNI4N1D2_0[0]\ : NOR3B
      port map(A => \display0/un1_bytecount_56_2\, B => 
        \display0/un1_bytecount_57_5\, C => \display0/N_48\, Y
         => \display0/un1_bytecount_56\);
    
    \display0/i2c0/databit_RNI41175[22]\ : OR3
      port map(A => \display0/i2c0/N_1039\, B => 
        \display0/i2c0/databit[21]_net_1\, C => 
        \display0/i2c0/databit[22]_net_1\, Y => 
        \display0/i2c0/N_1041\);
    
    \display0/bytecount_RNI4N1D2_7[5]\ : NOR3B
      port map(A => \display0/un1_bytecount_99_5\, B => 
        \display0/un1_bytecount_99_1\, C => \display0/N_93\, Y
         => \display0/un1_bytecount_102\);
    
    \display0/i2c0/state_RNO[17]\ : OA1C
      port map(A => 
        \display0/i2c0/state_ns_i_a2_0_a2_0_1[3]_net_1\, B => 
        \display0/i2c0/N_100\, C => \display0/i2c0/N_105\, Y => 
        \display0/i2c0/N_717\);
    
    \display0/data_i2c_RNO_11[5]\ : OR3
      port map(A => \display0/data_i2c_1_2_iv_1_tz_5[5]\, B => 
        \display0/data_i2c_1_2_iv_1_tz_4[5]\, C => 
        \display0/N_660_2\, Y => \display0/data_i2c_1_1_tz[5]\);
    
    \display0/bytecount_0_RNIHEHE1[1]\ : NOR3B
      port map(A => \display0/un1_bytecount_104_5\, B => 
        \display0/un1_bytecount_99_1\, C => \display0/N_67\, Y
         => \display0/un1_bytecount_104\);
    
    \display0/counter_n19\ : XOR2
      port map(A => \counter[19]_net_1\, B => 
        \display0/counter_c18_net_1\, Y => counter_n19);
    
    \display0/bytecount_0_RNI9BSD2[4]\ : AO1A
      port map(A => \display0/N_127\, B => 
        \display0/un1_bytecount_88_3\, C => 
        \display0/un1_bytecount_23\, Y => 
        \display0/un1_bytecount_130_0\);
    
    \display0/bytecount_RNO[26]\ : XA1A
      port map(A => \display0/bytecount[26]_net_1\, B => 
        \display0/N_49\, C => \display0/N_673_i_0_0\, Y => 
        \display0/N_29\);
    
    \display0/bytecount_RNI4N1D2[2]\ : NOR3B
      port map(A => \display0/N_174_1\, B => 
        \display0/un1_bytecount_57_5\, C => \display0/N_93\, Y
         => \display0/un1_bytecount_53\);
    
    \display0/bytecount_RNI8E3Q4[0]\ : OR2
      port map(A => \display0/un1_bytecount_56\, B => 
        \display0/un1_bytecount_55\, Y => \display0/N_634_2\);
    
    \display0/burstNo_RNI0RP0U[0]\ : NOR2A
      port map(A => \display0/N_575\, B => 
        \display0/burst_reg_1006\, Y => \display0/N_583\);
    
    \display0/bytecount_RNIMP011_0[6]\ : NOR2A
      port map(A => \display0/un1_bytecount_83_3\, B => 
        \display0/bytecount[6]_net_1\, Y => 
        \display0/un1_bytecount_83_5\);
    
    \display0/bytecount_0_RNID2OF3[1]\ : NOR2B
      port map(A => \display0/un1_bytecount_166_1\, B => 
        \display0/N_112\, Y => \display0/un1_bytecount_166\);
    
    \display0/bytecount_0_RNI79M21[1]\ : NOR2A
      port map(A => \display0/un1_bytecount_85_5\, B => 
        \display0/N_67\, Y => \display0/un1_bytecount_85_1\);
    
    \display0/i2c0/addrbit_RNO[23]\ : OA1C
      port map(A => \display0/i2c0/N_97\, B => 
        \display0/i2c0/addrbit_n23_i_a3_0\, C => 
        \display0/i2c0/un1_state_8\, Y => \display0/i2c0/N_31\);
    
    \display0/bytecount_0_RNIACM21[5]\ : NOR2A
      port map(A => \display0/un1_bytecount_87_0\, B => 
        \display0/N_93\, Y => \display0/un1_bytecount_12\);
    
    \display0/un1_burstNo_2_I_147\ : NOR2B
      port map(A => \display0/DWACT_ADD_CI_0_g_array_4[0]\, B => 
        \display0/burstNo[16]_net_1\, Y => 
        \display0/DWACT_ADD_CI_0_g_array_12_7[0]\);
    
    \display0/bytecount_RNIK0MC1[31]\ : NOR3A
      port map(A => \display0/un2_busy_byte_NE_i_a2_6\, B => 
        \display0/bytecount[31]_net_1\, C => 
        \display0/bytecount[10]_net_1\, Y => 
        \display0/un2_busy_byte_NE_i_a2_15\);
    
    \display0/burstNo_RNIKJM8Q_0[0]\ : NOR2A
      port map(A => \display0/un1_burst_reg_1002\, B => 
        \display0/burst_reg_1002\, Y => \display0/N_575\);
    
    \display0/burstNo_RNIIDMK[21]\ : NOR3A
      port map(A => \display0/burst_reg_1002_30_3\, B => 
        \display0/burstNo[21]_net_1\, C => 
        \display0/burstNo[20]_net_1\, Y => 
        \display0/burst_reg_1002_30_9\);
    
    \display0/state_RNO[0]\ : NOR2B
      port map(A => \display0/state_ns_1[5]\, B => 
        \display0/burstno\, Y => \display0/state_ns[5]\);
    
    \display0/burstNo_RNIA7I2[1]\ : NOR3C
      port map(A => \display0/burstNo[0]_net_1\, B => 
        \display0/burstNo[1]_net_1\, C => 
        \display0/burst_reg_1005_2\, Y => 
        \display0/burst_reg_1005_1\);
    
    \display0/bytecount_0_RNIA0MN[1]\ : NOR3C
      port map(A => \display0/bytecount_0[5]_net_1\, B => 
        \display0/bytecount_0[1]_net_1\, C => 
        \display0/un1_bytecount_88_3\, Y => 
        \display0/un1_bytecount_72_4\);
    
    \display0/state_RNO[5]\ : AO1
      port map(A => draw_i_0, B => \display0/state[5]_net_1\, C
         => \display0/state[0]_net_1\, Y => \display0/N_12\);
    
    \display0/burstNo_RNO[22]\ : XA1
      port map(A => \display0/burstNo[22]_net_1\, B => 
        \display0/DWACT_ADD_CI_0_g_array_11_4[0]\, C => 
        \display0/un1_ena_2\, Y => \display0/burstNo_4[22]\);
    
    \display0/un1_burstNo_2_I_107\ : AX1C
      port map(A => \display0/DWACT_ADD_CI_0_g_array_11_1[0]\, B
         => \display0/burstNo[10]_net_1\, C => 
        \display0/burstNo[11]_net_1\, Y => \display0/I_107\);
    
    \display0/bytecount_RNIC3AP2[11]\ : NOR3C
      port map(A => \display0/un2_busy_byte_NE_i_a2_4\, B => 
        \display0/un2_busy_byte_NE_i_a2_3\, C => 
        \display0/un2_busy_byte_NE_i_a2_15\, Y => 
        \display0/un2_busy_byte_NE_i_a2_20\);
    
    \display0/data_i2c_RNO_16[6]\ : OR2
      port map(A => \display0/un1_bytecount_57\, B => 
        \display0/un1_bytecount_52\, Y => 
        \display0/data_i2c_1_1_0[6]\);
    
    \display0/bytecount_RNIABOQ3[3]\ : OA1B
      port map(A => \display0/un1_bytecount_16\, B => 
        \display0/un1_bytecount_15\, C => 
        \display0/bytecount[3]_net_1\, Y => 
        \display0/un1_bytecount_170\);
    
    \display0/bytecount_RNI4N1D2_2[6]\ : NOR3A
      port map(A => \display0/un1_bytecount_89_0\, B => 
        \display0/N_93\, C => \display0/N_127\, Y => 
        \display0/un1_bytecount_89\);
    
    \display0/data_i2c_RNO_21[6]\ : NOR3C
      port map(A => \display0/un1_bytecount_99_2\, B => 
        \display0/un1_bytecount_83_3\, C => 
        \display0/un1_bytecount_57_5\, Y => 
        \display0/un1_bytecount_42\);
    
    \display0/bytecount_0_RNI2MPI1[1]\ : XA1
      port map(A => \display0/bytecount_0[1]_net_1\, B => 
        \display0/bytecount[0]_net_1\, C => \display0/N_673_i_0\, 
        Y => \display0/bytecount_n1\);
    
    \display0/data_i2c_1_2_iv_4_RNO_2[3]\ : OA1B
      port map(A => \display0/data_i2c_1_1_1[3]\, B => 
        \display0/data_i2c_1_1_2[3]\, C => \display0/N_575_0\, Y
         => \display0/burst_reg_3_m_4[0]\);
    
    \display0/data_i2c_1_0_6_RNO_0[2]\ : OR3
      port map(A => \display0/data_i2c_1_0_1[2]\, B => 
        \display0/un1_bytecount_158\, C => 
        \display0/un1_bytecount_52\, Y => 
        \display0/data_i2c_1_0_3[2]\);
    
    \display0/bytecount_RNIMP011[6]\ : NOR2B
      port map(A => \display0/bytecount[6]_net_1\, B => 
        \display0/N_88_2\, Y => 
        \display0/un2_busy_byte_NE_25_i_a2_0_0\);
    
    \display0/bytecount_RNIET0C1[1]\ : NOR2
      port map(A => \display0/N_127\, B => \display0/N_48\, Y => 
        \display0/un1_bytecount_92_4\);
    
    \display0/bytecount_RNIF7JU4[17]\ : OR2A
      port map(A => \display0/bytecount[17]_net_1\, B => 
        \display0/N_935\, Y => \display0/N_109\);
    
    \display0/bytecount[1]\ : DFN1E0C0
      port map(D => \display0/bytecount_n1\, CLK => clk_c, CLR
         => oled_reset_c_c, E => \display0/N_43_0\, Q => 
        \display0/bytecount[1]_net_1\);
    
    \display0/un1_burstNo_2_I_200\ : NOR3C
      port map(A => \display0/burstNo[18]_net_1\, B => 
        \display0/burstNo[19]_net_1\, C => 
        \display0/DWACT_ADD_CI_0_pog_array_1_7[0]\, Y => 
        \display0/DWACT_ADD_CI_0_pog_array_2_3[0]\);
    
    \display0/i2c0/addrbit[29]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_37\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite\, Q => 
        \display0/i2c0/addrbit[29]_net_1\);
    
    \display0/i2c0/addrbit_RNO[4]\ : XA1C
      port map(A => \display0/i2c0/addrbit[4]_net_1\, B => 
        \display0/i2c0/N_897\, C => \display0/i2c0/un1_state_8_0\, 
        Y => \display0/i2c0/N_756\);
    
    \display0/burstNo[9]\ : DFN1C0
      port map(D => \display0/burstNo_4[9]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[9]_net_1\);
    
    \display0/data_i2c_RNO_27[0]\ : OA1
      port map(A => \display0/burstno\, B => 
        \display0/burst_reg_1005\, C => 
        \display0/un1_bytecount_43\, Y => 
        \display0/burst_reg_2_1_m[0]\);
    
    \display0/bytecount_0_RNIHEHE1[4]\ : NOR2A
      port map(A => \display0/un1_bytecount_69_1\, B => 
        \display0/N_95\, Y => \display0/un1_bytecount_69\);
    
    \display0/bytecount_RNIB61N1[5]\ : NOR3B
      port map(A => \display0/N_4_i\, B => \display0/N_180\, C
         => \display0/bytecount[5]_net_1\, Y => \display0/N_173\);
    
    \display0/i2c0/databit_RNO[19]\ : XA1C
      port map(A => \display0/i2c0/N_1037\, B => 
        \display0/i2c0/databit[19]_net_1\, C => 
        \display0/i2c0/un1_state_7_0\, Y => 
        \display0/i2c0/N_1014\);
    
    \display0/burstNo_RNIIV951[1]\ : NOR3C
      port map(A => \display0/burst_reg_1005_1\, B => 
        \display0/burstno_18\, C => \display0/burstno_26\, Y => 
        \display0/burst_reg_1005_3\);
    
    \display0/i2c0/addrbit_RNO[20]\ : AO1
      port map(A => \display0/i2c0/addrbit_n20_i_a3_0\, B => 
        \display0/i2c0/N_913\, C => \display0/i2c0/N_78\, Y => 
        \display0/i2c0/N_25\);
    
    \display0/bytecount_0_RNI37FRC[4]\ : OR3
      port map(A => \display0/un1_bytecount_151_2\, B => 
        \display0/un1_bytecount_151_1\, C => 
        \display0/un1_bytecount_69\, Y => 
        \display0/un1_bytecount_151\);
    
    \display0/bytecount[25]\ : DFN1E0C0
      port map(D => \display0/N_27\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/N_43\, Q => 
        \display0/bytecount[25]_net_1\);
    
    \display0/bytecount_RNIJM011_0[5]\ : NOR2A
      port map(A => \display0/un1_bytecount_9_2\, B => 
        \display0/bytecount[5]_net_1\, Y => 
        \display0/un1_bytecount_112_0\);
    
    \display0/bytecount_RNI5Q9M[18]\ : NOR2B
      port map(A => \display0/bytecount[19]_net_1\, B => 
        \display0/bytecount[18]_net_1\, Y => 
        \display0/bytecount_m6_0_a2_3\);
    
    \display0/burstNo[8]\ : DFN1C0
      port map(D => \display0/burstNo_4[8]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[8]_net_1\);
    
    \display0/i2c0/addrbit_RNO_2[20]\ : NOR2A
      port map(A => \display0/i2c0/addrbit_N_13_mux_1\, B => 
        \display0/i2c0/un1_state_8\, Y => \display0/i2c0/N_78\);
    
    \display0/bytecount[22]\ : DFN1E0C0
      port map(D => \display0/bytecount_n22\, CLK => clk_c, CLR
         => oled_reset_c_c, E => \display0/N_43\, Q => 
        \display0/bytecount[22]_net_1\);
    
    \display0/data_i2c_RNO_22[0]\ : OR3
      port map(A => \display0/un1_bytecount_152_net_1\, B => 
        \display0/un1_bytecount_158\, C => 
        \display0/data_i2c_2_0_8[0]\, Y => 
        \display0/data_i2c_2_0_11[0]\);
    
    \display0/un1_burstNo_2_I_133\ : NOR2B
      port map(A => \display0/DWACT_ADD_CI_0_g_array_3[0]\, B => 
        \display0/burstNo[8]_net_1\, Y => 
        \display0/DWACT_ADD_CI_0_g_array_12_3[0]\);
    
    \display0/i2c0/databit_RNIPS1D5[16]\ : OR2A
      port map(A => \display0/i2c0/N_1032_i\, B => 
        \display0/i2c0/databit_N_13_mux_i_0_10\, Y => 
        \display0/i2c0/N_104\);
    
    \display0/i2c0/databit[14]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_1015\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite_0\, Q => 
        \display0/i2c0/databit[14]_net_1\);
    
    \display0/i2c0/databit_RNI17U7[18]\ : OR3
      port map(A => \display0/i2c0/databit[18]_net_1\, B => 
        \display0/i2c0/databit[17]_net_1\, C => 
        \display0/i2c0/databit_N_13_mux_i_0_5\, Y => 
        \display0/i2c0/databit_N_13_mux_i_0_8\);
    
    \display0/i2c0/addrbit_RNI8VGF1[12]\ : NOR3C
      port map(A => \display0/i2c0/addrbit_m6_e_1_2\, B => 
        \display0/i2c0/addrbit_m6_e_1_1\, C => 
        \display0/i2c0/addrbit_m6_e_1_6\, Y => 
        \display0/i2c0/addrbit_m6_e_1_7\);
    
    \display0/bytecount_RNO[9]\ : XA1A
      port map(A => \display0/bytecount[9]_net_1\, B => 
        \display0/N_100\, C => \display0/N_673_i_0\, Y => 
        \display0/N_6\);
    
    \display0/i2c0/addrbit_RNO_0[23]\ : OA1
      port map(A => \display0/i2c0/addrbit[22]_net_1\, B => 
        \display0/i2c0/N_95\, C => 
        \display0/i2c0/addrbit[23]_net_1\, Y => 
        \display0/i2c0/addrbit_n23_i_a3_0\);
    
    \display0/burstNo[28]\ : DFN1C0
      port map(D => \display0/burstNo_4[28]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[28]_net_1\);
    
    \display0/i2c0/databit_RNO_1[13]\ : OR3
      port map(A => \display0/i2c0/N_1029\, B => 
        \display0/i2c0/databit[11]_net_1\, C => 
        \display0/i2c0/databit[12]_net_1\, Y => 
        \display0/i2c0/N_1031\);
    
    \display0/i2c0/counter_RNIHQRJ_0[1]\ : NOR2B
      port map(A => \display0/i2c0/counter_i_0[1]\, B => 
        \display0/i2c0/counter_i_0[0]\, Y => 
        \display0/i2c0/N_262\);
    
    \display0/i2c0/addrbit_RNID84S3[12]\ : OR2A
      port map(A => \display0/i2c0/addrbit_N_13_mux_0\, B => 
        \display0/i2c0/addrbit[12]_net_1\, Y => 
        \display0/i2c0/N_906\);
    
    \display0/i2c0/databit_RNO[15]\ : XA1C
      port map(A => \display0/i2c0/N_1033\, B => 
        \display0/i2c0/databit[15]_net_1\, C => 
        \display0/i2c0/un1_state_7_0\, Y => \display0/i2c0/N_805\);
    
    \address_RNO[1]\ : XA1
      port map(A => \address[0]_net_1\, B => \address[1]_net_1\, 
        C => N_48, Y => N_14);
    
    \display0/i2c0/addrbit_RNIBJHA[12]\ : OR2
      port map(A => \display0/i2c0/addrbit[12]_net_1\, B => 
        \display0/i2c0/addrbit[13]_net_1\, Y => 
        \display0/i2c0/addrbit_N_13_mux_i_2_1\);
    
    \display0/bytecount_RNI4N1D2_1[0]\ : NOR3B
      port map(A => \display0/un1_bytecount_9_2\, B => 
        \display0/un1_bytecount_57_5\, C => \display0/N_48\, Y
         => \display0/un1_bytecount_48\);
    
    \display0/data_i2c_RNO_3[4]\ : OA1B
      port map(A => \display0/data_i2c_2_1_1[4]\, B => 
        \display0/data_i2c_2_1_2[4]\, C => \display0/N_575_0\, Y
         => \display0/burst_reg_3_m_14[0]\);
    
    \display0/bytecount_RNIKN011[6]\ : NOR2A
      port map(A => \display0/un1_bytecount_9_2\, B => 
        \display0/bytecount[6]_net_1\, Y => 
        \display0/un1_bytecount_86_0\);
    
    \scl_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => \display0.i2c0.scl_1\, E => 
        \display0.i2c0.scl_e\, DOUT => \scl_pad/U0/NET1\, EOUT
         => \scl_pad/U0/NET2\);
    
    \display0/bytecount_RNI1P0M[7]\ : NOR2B
      port map(A => \display0/bytecount[8]_net_1\, B => 
        \display0/bytecount[7]_net_1\, Y => 
        \display0/bytecount_m6_0_a2_5_1\);
    
    \display0/i2c0/databit_RNI3O7S[1]\ : OR2
      port map(A => \display0/i2c0/databit[1]_net_1\, B => 
        \display0/i2c0/databit[0]_net_1\, Y => 
        \display0/i2c0/N_1020\);
    
    \display0/i2c0/state_RNO_0[8]\ : NOR3A
      port map(A => \display0/i2c0/N_1054\, B => 
        \display0/i2c0/databit[31]_net_1\, C => 
        \display0/i2c0/state[9]_net_1\, Y => 
        \display0/i2c0/state_ns_0_i_0_a2_0_1[12]\);
    
    \display0/bytecount_RNI78E43[14]\ : NOR3C
      port map(A => \display0/bytecount_m6_0_a2_4\, B => 
        \display0/bytecount_m6_0_a2_3\, C => 
        \display0/bytecount_m6_0_a2_5\, Y => 
        \display0/bytecount_m6_0_a2_7\);
    
    \display0/bytecount_0_RNIRPL1[5]\ : NOR2A
      port map(A => \display0/bytecount_0[5]_net_1\, B => 
        \display0/bytecount_0[6]_net_1\, Y => 
        \display0/un1_bytecount_168_1\);
    
    \display0/bytecount_RNIMD0M[1]\ : OR2B
      port map(A => \display0/bytecount[3]_net_1\, B => 
        \display0/bytecount[1]_net_1\, Y => \display0/N_71\);
    
    \display0/i2c0/state_RNIN25D2[15]\ : AO1
      port map(A => \display0/i2c0/state[15]_net_1\, B => 
        \display0/i2c0/un1_i2c0\, C => 
        \display0/i2c0/state[20]_net_1\, Y => 
        \display0/i2c0/addrbite\);
    
    \display0/i2c0/state_RNO[14]\ : NOR3C
      port map(A => \display0/i2c0/N_274\, B => 
        \display0/i2c0/state[15]_net_1\, C => 
        \display0/i2c0/N_188_1\, Y => \display0/i2c0/state_ns[6]\);
    
    \display0/i2c0/addrbit[17]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_769\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite_0\, Q => 
        \display0/i2c0/addrbit[17]_net_1\);
    
    \display0/bytecount_RNIAP0C1[2]\ : NOR2B
      port map(A => \display0/N_180\, B => 
        \display0/un1_bytecount_99_2\, Y => 
        \display0/un1_bytecount_46_0\);
    
    \display0/data_i2c_RNO_13[4]\ : OR3
      port map(A => \display0/un1_bytecount_166\, B => 
        \display0/data_i2c_2_2_iv_2_tz_0[4]\, C => 
        \display0/data_i2c_2_2_iv_2_tz_2[4]\, Y => 
        \display0/data_i2c_2_2_iv_2_tz_3[4]\);
    
    \display0/data_i2c_RNO_11[0]\ : AO1
      port map(A => \display0/N_621\, B => 
        \display0/burst_reg_1006\, C => 
        \display0/data_i2c_1_2_iv_0[0]\, Y => 
        \display0/data_i2c_1_2_iv_1[0]\);
    
    \display0/bytecount_RNO[22]\ : XA1A
      port map(A => \display0/bytecount[22]_net_1\, B => 
        \display0/N_118\, C => \display0/N_673_i_0_0\, Y => 
        \display0/bytecount_n22\);
    
    \display0/i2c0/databit_RNI7N4N5[30]\ : OR2
      port map(A => \display0/i2c0/databit[30]_net_1\, B => 
        \display0/i2c0/N_1053\, Y => \display0/i2c0/N_1057\);
    
    \display0/i2c0/addrbit_RNI2J3L[14]\ : NOR3A
      port map(A => \display0/i2c0/addrbit_m6_e_1_2\, B => 
        \display0/i2c0/addrbit[17]_net_1\, C => 
        \display0/i2c0/addrbit[14]_net_1\, Y => 
        \display0/i2c0/addrbit_RNI2J3L[14]_net_1\);
    
    \display0/counter_n11\ : XOR2
      port map(A => \counter[11]_net_1\, B => 
        \display0/counter_c10_net_1\, Y => counter_n11);
    
    \display0/i2c0/addrbit_RNICKHA[12]\ : NOR2
      port map(A => \display0/i2c0/addrbit[14]_net_1\, B => 
        \display0/i2c0/addrbit[12]_net_1\, Y => 
        \display0/i2c0/addrbit_m6_e_1_1\);
    
    \display0/i2c0/addrbit[6]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_758\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite\, Q => 
        \display0/i2c0/addrbit[6]_net_1\);
    
    \display0/i2c0/state[18]\ : DFN1E1C0
      port map(D => \display0/i2c0/state[19]_net_1\, CLK => clk_c, 
        CLR => oled_reset_c_c, E => \display0/i2c0/un1_i2c0_0\, Q
         => \display0/i2c0/state[18]_net_1\);
    
    \display0/bytecount_RNIMP011[5]\ : NOR2A
      port map(A => \display0/un1_bytecount_99_3\, B => 
        \display0/bytecount[5]_net_1\, Y => 
        \display0/un1_bytecount_99_5\);
    
    \display0/counter_c22\ : NOR3C
      port map(A => \display0/counter_c20_net_1\, B => 
        \counter[21]_net_1\, C => \counter[22]_net_1\, Y => 
        \display0/counter_c22_net_1\);
    
    \display0/data_i2c_RNO_13[5]\ : AO1
      port map(A => \display0/un1_bytecount_167_1\, B => 
        \display0/un1_bytecount_144\, C => 
        \display0/un1_bytecount_168\, Y => 
        \display0/data_i2c_2_2_iv_1_tz_2[5]\);
    
    \display0/burstNo_RNIA7I2_1[1]\ : AND3B
      port map(A => \display0/burstNo[1]_net_1\, B => 
        \display0/burstNo[0]_net_1\, C => 
        \display0/burst_reg_1005_2\, Y => 
        \display0/burst_reg_1002_1\);
    
    \display0/bytecount_RNIKB0M[2]\ : OR2B
      port map(A => \display0/bytecount[0]_net_1\, B => 
        \display0/bytecount[2]_net_1\, Y => \display0/N_67\);
    
    \display0/bytecount[2]\ : DFN1E0C0
      port map(D => \display0/N_31\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/N_43_0\, Q => 
        \display0/bytecount[2]_net_1\);
    
    \display0/counter_n8\ : AX1C
      port map(A => \display0/counter_c6_net_1\, B => 
        \counter[7]_net_1\, C => \counter[8]_net_1\, Y => 
        counter_n8);
    
    \display0/data_i2c[2]\ : DFN1E1
      port map(D => \display0/un1_state_12[5]\, CLK => clk_c, E
         => oled_reset_c_c, Q => \display0/data_i2c[2]_net_1\);
    
    \state[1]\ : DFN1C0
      port map(D => N_8, CLK => clk_c, CLR => oled_reset_c_c, Q
         => \state[1]_net_1\);
    
    \display0/i2c0/state_RNO_1[8]\ : NOR3A
      port map(A => \display0/i2c0/N_1054\, B => 
        \display0/i2c0/state[6]_net_1\, C => 
        \display0/i2c0/state[9]_net_1\, Y => 
        \display0/i2c0/N_244\);
    
    \display0/bytecount_RNO_0[23]\ : OA1C
      port map(A => \display0/bytecount_m6_0_a2_7\, B => 
        \display0/N_931\, C => \display0/bytecount[23]_net_1\, Y
         => \display0/N_945\);
    
    \display0/burstNo[16]\ : DFN1C0
      port map(D => \display0/burstNo_4[16]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[16]_net_1\);
    
    \display0/i2c0/databit_RNO_0[20]\ : AX1B
      port map(A => \display0/i2c0/N_1037\, B => 
        \display0/i2c0/databit[19]_net_1\, C => 
        \display0/i2c0/databit[20]_net_1\, Y => 
        \display0/i2c0/N_809_tz\);
    
    \display0/un1_burstNo_2_I_127\ : AX1C
      port map(A => \display0/DWACT_ADD_CI_0_g_array_11_4[0]\, B
         => \display0/burstNo[22]_net_1\, C => 
        \display0/burstNo[23]_net_1\, Y => \display0/I_127\);
    
    \display0/bytecount_0[4]\ : DFN1E0C0
      port map(D => \display0/bytecount_n4\, CLK => clk_c, CLR
         => oled_reset_c_c, E => \display0/N_43_0_0\, Q => 
        \display0/bytecount_0[4]_net_1\);
    
    \display0/bytecount_RNI4N1D2_2[0]\ : NOR3B
      port map(A => \display0/un1_bytecount_94_2\, B => 
        \display0/un1_bytecount_57_5\, C => \display0/N_62\, Y
         => \display0/un1_bytecount_51\);
    
    \display0/counter_n7\ : XOR2
      port map(A => \counter[7]_net_1\, B => 
        \display0/counter_c6_net_1\, Y => counter_n7);
    
    \display0/i2c0/state[11]\ : DFN1E1C0
      port map(D => \display0/i2c0/state[12]_net_1\, CLK => clk_c, 
        CLR => oled_reset_c_c, E => \display0/i2c0/un1_i2c0_0\, Q
         => \display0/i2c0/state[11]_net_1\);
    
    \display0/bytecount_RNIRTA8E[1]\ : OR2
      port map(A => \display0/un1_bytecount_147\, B => 
        \display0/un1_bytecount_100\, Y => \display0/N_639_2\);
    
    \display0/i2c0/sda_1_RNO_8\ : NOR2A
      port map(A => \display0/i2c0/N_1056\, B => 
        \display0/i2c0/N_167\, Y => 
        \display0/i2c0/un2_sda_0_0_a2_2_0\);
    
    \display0/data_i2c_RNO[0]\ : MX2
      port map(A => \display0/un1_state_11\, B => 
        \display0/data_i2c_2[0]\, S => \display0/N_43\, Y => 
        \display0/un1_state_12[7]\);
    
    \display0/bytecount_RNIO06J8[6]\ : OR2
      port map(A => \display0/un1_bytecount_164\, B => 
        \display0/un1_bytecount_165\, Y => \display0/N_645_6\);
    
    \display0/counter_n12\ : AX1C
      port map(A => \display0/counter_c10_net_1\, B => 
        \counter[11]_net_1\, C => \counter[12]_net_1\, Y => 
        counter_n12);
    
    \display0/i2c0/addrbit_RNI16CL[11]\ : NOR3
      port map(A => \display0/i2c0/addrbit[10]_net_1\, B => 
        \display0/i2c0/addrbit[11]_net_1\, C => 
        \display0/i2c0/addrbit[8]_net_1\, Y => 
        \display0/i2c0/addrbit_m6_e_0_4\);
    
    \display0/data_i2c_RNO_7[6]\ : OR3
      port map(A => \display0/data_i2c_2_2_iv_0_tz_3[6]\, B => 
        \display0/N_660_3\, C => 
        \display0/data_i2c_2_2_iv_0_tz_6[6]\, Y => 
        \display0/data_i2c_2_2_iv_0_tz_7[6]\);
    
    \display0/data_i2c_RNO_0[1]\ : NOR2B
      port map(A => \display0/un1_state_6_0\, B => 
        \display0/un1_data_i2c_6\, Y => \display0/un1_state_10\);
    
    \display0/i2c0/addrbit_RNO[9]\ : XA1C
      port map(A => \display0/i2c0/addrbit[9]_net_1\, B => 
        \display0/i2c0/N_902\, C => \display0/i2c0/un1_state_8_0\, 
        Y => \display0/i2c0/N_890\);
    
    \display0/bytecount_RNIOAOLS[2]\ : NOR2A
      port map(A => \display0/un1_bytecount_54\, B => 
        \display0/N_575\, Y => \display0/burst_reg_20_m_2[2]\);
    
    \display0/burstNo[20]\ : DFN1C0
      port map(D => \display0/burstNo_4[20]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[20]_net_1\);
    
    \display0/bytecount_0_RNI7LG2_0[4]\ : NOR3A
      port map(A => \display0/bytecount_0[5]_net_1\, B => 
        \display0/bytecount_0[4]_net_1\, C => 
        \display0/bytecount_0[6]_net_1\, Y => 
        \display0/un1_bytecount_80_0\);
    
    \display0/data_i2c_RNO_21[4]\ : OR2
      port map(A => \display0/un1_bytecount_155\, B => 
        \display0/un1_bytecount_93\, Y => 
        \display0/data_i2c_1_2_iv_2_tz_3[4]\);
    
    \display0/counter_c8\ : NOR3C
      port map(A => \display0/counter_c6_net_1\, B => 
        \counter[7]_net_1\, C => \counter[8]_net_1\, Y => 
        \display0/counter_c8_net_1\);
    
    \display0/data_i2c_RNO_18[4]\ : OR3
      port map(A => \display0/data_i2c_1_2_iv_2_tz_1[4]\, B => 
        \display0/un1_bytecount_142\, C => 
        \display0/data_i2c_1_2_iv_2_tz_3[4]\, Y => 
        \display0/data_i2c_1_2_iv_2_tz_4[4]\);
    
    draw : DFN1P0
      port map(D => state_76_d, CLK => clk_c, PRE => 
        oled_reset_c_c, Q => draw_i_0);
    
    \display0/un1_burstNo_2_I_201\ : NOR3C
      port map(A => \display0/DWACT_ADD_CI_0_pog_array_1_5[0]\, B
         => \display0/DWACT_ADD_CI_0_pog_array_1_6[0]\, C => 
        \display0/DWACT_ADD_CI_0_pog_array_2_1[0]\, Y => 
        \display0/DWACT_ADD_CI_0_pog_array_3[0]\);
    
    \display0/un1_burstNo_2_I_153\ : NOR2B
      port map(A => \display0/DWACT_ADD_CI_0_g_array_11_6[0]\, B
         => \display0/burstNo[30]_net_1\, Y => 
        \display0/DWACT_ADD_CI_0_g_array_12_14[0]\);
    
    \display0/data_i2c_RNO_37[0]\ : OR3
      port map(A => \display0/un1_bytecount_103\, B => 
        \display0/un1_bytecount_104\, C => 
        \display0/un1_bytecount_102\, Y => 
        \display0/data_i2c_1_0_3[0]\);
    
    \display0/state_RNIR0VP[0]\ : NOR2
      port map(A => \display0/state[0]_net_1\, B => 
        \display0/state[1]_net_1\, Y => \display0/un1_state_6_0\);
    
    \display0/burstNo_RNI5TD91[25]\ : NOR3C
      port map(A => \display0/burst_reg_1002_30_5\, B => 
        \display0/burst_reg_1002_30_4\, C => 
        \display0/burst_reg_1002_30_11\, Y => 
        \display0/burst_reg_1002_30_13\);
    
    \display0/i2c0/databit_RNITS3V3[8]\ : OR3
      port map(A => \display0/i2c0/databit[7]_net_1\, B => 
        \display0/i2c0/N_1025\, C => 
        \display0/i2c0/databit[8]_net_1\, Y => 
        \display0/i2c0/N_1027\);
    
    \display0/bytecount_RNIUJ466[2]\ : OR3
      port map(A => \display0/un1_bytecount_24\, B => 
        \display0/un1_bytecount_26\, C => 
        \display0/un1_bytecount_25\, Y => 
        \display0/un1_bytecount_139\);
    
    \display0/i2c0/addrbit_RNI3L4L[21]\ : NOR3A
      port map(A => \display0/i2c0/state_tr8_0_a2_0_a2_1_11\, B
         => \display0/i2c0/addrbit[18]_net_1\, C => 
        \display0/i2c0/addrbit[21]_net_1\, Y => 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_18\);
    
    \display0/data_i2c_RNO_2[3]\ : MX2
      port map(A => \display0/data_i2c[3]_net_1\, B => 
        \display0/data_i2c_1[3]\, S => \display0/state[4]_net_1\, 
        Y => \display0/un1_data_i2c_4\);
    
    \counter[2]\ : DFN1
      port map(D => counter_n2, CLK => clk_c, Q => 
        \counter[2]_net_1\);
    
    \display0/i2c0/counter_RNO[0]\ : OR2A
      port map(A => \display0/i2c0/counter_i_0[0]\, B => 
        \display0/i2c0/state[20]_net_1\, Y => 
        \display0/i2c0/N_159\);
    
    \display0/i2c0/databit[4]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_724\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite\, Q => 
        \display0/i2c0/databit[4]_net_1\);
    
    \display0/bytecount_RNI5NVN7[25]\ : OR3B
      port map(A => \display0/bytecount[24]_net_1\, B => 
        \display0/bytecount[25]_net_1\, C => \display0/N_45\, Y
         => \display0/N_49\);
    
    \address[5]\ : DFN1E1C0
      port map(D => N_22, CLK => clk_c, CLR => oled_reset_c_c, E
         => addresse, Q => \address[5]_net_1\);
    
    \display0/data_i2c_RNO_32[0]\ : OR2
      port map(A => \display0/un1_bytecount_99\, B => 
        \display0/un1_bytecount_174\, Y => 
        \display0/data_i2c_1_0_5[0]\);
    
    \display0/data_i2c_1_2_iv_4_RNO_7[3]\ : OR2
      port map(A => \display0/un1_bytecount_155\, B => 
        \display0/N_621_5\, Y => 
        \display0/data_i2c_1_2_iv_0_tz_2[3]\);
    
    \display0/i2c0/databit_RNO_0[16]\ : AX1B
      port map(A => \display0/i2c0/N_1033\, B => 
        \display0/i2c0/databit[15]_net_1\, C => 
        \display0/i2c0/databit[16]_net_1\, Y => 
        \display0/i2c0/N_806_tz\);
    
    \display0/i2c0/databit_RNO[28]\ : XA1C
      port map(A => \display0/i2c0/N_1047\, B => 
        \display0/i2c0/databit[28]_net_1\, C => 
        \display0/i2c0/un1_state_7\, Y => \display0/i2c0/N_816\);
    
    \display0/bytecount_RNI4N1D2_3[6]\ : NOR3B
      port map(A => \display0/un1_bytecount_93_3\, B => 
        \display0/un1_bytecount_86_0\, C => \display0/N_48\, Y
         => \display0/un1_bytecount_86\);
    
    \display0/data_i2c_RNO_6[2]\ : AO1
      port map(A => \display0/N_648\, B => 
        \display0/burst_reg_1006\, C => 
        \display0/data_i2c_2_2_iv_0[2]\, Y => 
        \display0/data_i2c_2_2_iv_1[2]\);
    
    \address_RNO[7]\ : XA1A
      port map(A => \address[7]_net_1\, B => N_47, C => N_48, Y
         => N_26);
    
    \counter[6]\ : DFN1
      port map(D => counter_n6, CLK => clk_c, Q => 
        \counter[6]_net_1\);
    
    \display0/i2c0/addrbit_RNO[2]\ : XO1A
      port map(A => \display0/i2c0/addrbit[2]_net_1\, B => 
        \display0/i2c0/N_895\, C => \display0/i2c0/un1_state_8_0\, 
        Y => \display0/i2c0/N_889\);
    
    \display0/i2c0/addrbit[24]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_33\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite_0\, Q => 
        \display0/i2c0/addrbit[24]_net_1\);
    
    \display0/bytecount_RNI606N1[0]\ : NOR3C
      port map(A => \display0/bytecount_m6_0_a2_5_1\, B => 
        \display0/bytecount_m6_0_a2_5_0\, C => 
        \display0/bytecount[0]_net_1\, Y => 
        \display0/bytecount_m6_0_a2_5_3\);
    
    \display0/bytecount_RNICR0C1[1]\ : NOR2A
      port map(A => \display0/N_177\, B => \display0/N_127\, Y
         => \display0/un1_bytecount_8_3\);
    
    \display0/bytecount_RNISJ0M_0[4]\ : NOR2
      port map(A => \display0/bytecount[4]_net_1\, B => 
        \display0/bytecount[6]_net_1\, Y => 
        \display0/un1_bytecount_41_2\);
    
    \display0/un1_burstNo_2_I_206\ : AND2
      port map(A => \display0/burstNo[14]_net_1\, B => 
        \display0/burstNo[15]_net_1\, Y => 
        \display0/DWACT_ADD_CI_0_pog_array_1_6[0]\);
    
    \display0/i2c0/addrbit_RNIC5LL[3]\ : NOR2
      port map(A => \display0/i2c0/addrbit[3]_net_1\, B => 
        \display0/i2c0/addrbit[5]_net_1\, Y => 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_3\);
    
    \display0/data_i2c_RNO_15[1]\ : AO1
      port map(A => \display0/un1_bytecount_47_0\, B => 
        \display0/un1_bytecount_57_5\, C => 
        \display0/un1_bytecount_59\, Y => 
        \display0/data_i2c_1_1_0[1]\);
    
    \display0/data_i2c_RNO[3]\ : MX2
      port map(A => \display0/un1_state_8\, B => 
        \display0/data_i2c_2[3]\, S => \display0/N_43\, Y => 
        \display0/un1_state_12[4]\);
    
    \display0/bytecount_RNIQH0M[5]\ : OR2B
      port map(A => \display0/bytecount[3]_net_1\, B => 
        \display0/bytecount[5]_net_1\, Y => \display0/N_81\);
    
    \display0/burstNo_RNO[30]\ : XA1
      port map(A => \display0/burstNo[30]_net_1\, B => 
        \display0/DWACT_ADD_CI_0_g_array_11_6[0]\, C => 
        \display0/un1_ena_2\, Y => \display0/burstNo_4[30]\);
    
    \display0/bytecount_RNIOR011[5]\ : NOR2A
      port map(A => \display0/un1_bytecount_15_2\, B => 
        \display0/bytecount[5]_net_1\, Y => 
        \display0/burst_reg_1006_m_15_0\);
    
    \display0/i2c0/databit[24]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_812\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite_0\, Q => 
        \display0/i2c0/databit[24]_net_1\);
    
    \display0/bytecount_RNI4IRD01[6]\ : AOI1B
      port map(A => \display0/burst_reg_2_1_i_a2_0[1]\, B => 
        \display0/un1_burst_reg_1002\, C => 
        \display0/un1_bytecount_43\, Y => 
        \display0/burst_reg_2_1_m[3]\);
    
    \display0/bytecount_0_RNI2SMO1_1[5]\ : NOR3B
      port map(A => \display0/un1_bytecount_87_2\, B => 
        \display0/un1_bytecount_113_0\, C => \display0/N_93\, Y
         => \display0/un1_bytecount_113\);
    
    \display0/data_i2c_RNO_9[3]\ : OR3
      port map(A => \display0/un1_bytecount_169\, B => 
        \display0/un1_bytecount_94\, C => 
        \display0/un1_bytecount_93\, Y => 
        \display0/data_i2c_2_0_2[3]\);
    
    \display0/bytecount_0_RNI4ODH3[1]\ : OR2
      port map(A => \display0/un1_bytecount_105\, B => 
        \display0/un1_bytecount_84\, Y => 
        \display0/un1_bytecount_145_1\);
    
    \display0/data_i2c_RNO_18[6]\ : OR3
      port map(A => \display0/un1_bytecount_156\, B => 
        \display0/un1_bytecount_42\, C => 
        \display0/un1_bytecount_155\, Y => 
        \display0/data_i2c_1_2_iv_0_tz_4[6]\);
    
    \address_RNO_0[6]\ : OA1C
      port map(A => \address[5]_net_1\, B => N_45, C => 
        \address[6]_net_1\, Y => N_154);
    
    \display0/state_RNI0PU61_0[4]\ : OR2
      port map(A => \display0/state[4]_net_1\, B => 
        \display0/N_43\, Y => \display0/N_673_i_0_0\);
    
    \display0/bytecount_RNIPS011[6]\ : NOR2A
      port map(A => \display0/un1_bytecount_62_3\, B => 
        \display0/bytecount[6]_net_1\, Y => 
        \display0/un1_bytecount_62_5\);
    
    \display0/data_i2c_RNO_27[1]\ : OR2
      port map(A => \display0/un1_bytecount_166\, B => 
        \display0/un1_bytecount_165\, Y => 
        \display0/data_i2c_1_0_2[1]\);
    
    \display0/un1_burstNo_2_I_212\ : NOR3C
      port map(A => \display0/burstNo[22]_net_1\, B => 
        \display0/burstNo[23]_net_1\, C => 
        \display0/DWACT_ADD_CI_0_pog_array_1_9[0]\, Y => 
        \display0/DWACT_ADD_CI_0_pog_array_2_4[0]\);
    
    \display0/i2c0/addrbit_RNINVHA[18]\ : NOR2
      port map(A => \display0/i2c0/addrbit[18]_net_1\, B => 
        \display0/i2c0/addrbit[19]_net_1\, Y => 
        \display0/i2c0/addrbit_m1_e_1_3\);
    
    \display0/i2c0/databit_RNO[9]\ : XA1C
      port map(A => \display0/i2c0/N_1027\, B => 
        \display0/i2c0/databit[9]_net_1\, C => 
        \display0/i2c0/un1_state_7\, Y => \display0/i2c0/N_32\);
    
    \display0/data_i2c_RNO_10[0]\ : OA1B
      port map(A => \display0/data_i2c_1_1_3[0]\, B => 
        \display0/data_i2c_1_1_4[0]\, C => \display0/N_575_0\, Y
         => \display0/burst_reg_3_m_1[0]\);
    
    \display0/i2c0/addrbit_RNO[5]\ : XA1C
      port map(A => \display0/i2c0/addrbit[5]_net_1\, B => 
        \display0/i2c0/N_898\, C => \display0/i2c0/un1_state_8_0\, 
        Y => \display0/i2c0/N_757\);
    
    \display0/bytecount_0_RNI2SMO1[4]\ : NOR3B
      port map(A => \display0/un1_bytecount_96_2\, B => 
        \display0/un1_bytecount_96_5\, C => \display0/N_67\, Y
         => \display0/un1_bytecount_96\);
    
    \display0/data_i2c_RNO_26[1]\ : OR3
      port map(A => \display0/un1_bytecount_175\, B => 
        \display0/un1_bytecount_164\, C => 
        \display0/data_i2c_1_0_2[1]\, Y => 
        \display0/data_i2c_1_0_5[1]\);
    
    \display0/i2c0/addrbit_RNI2QUB4[15]\ : OR2
      port map(A => \display0/i2c0/N_908\, B => 
        \display0/i2c0/addrbit[15]_net_1\, Y => 
        \display0/i2c0/N_909\);
    
    \display0/i2c0/state_RNI7KMI2[6]\ : AO1
      port map(A => \display0/i2c0/state[6]_net_1\, B => 
        \display0/i2c0/un1_i2c0\, C => 
        \display0/i2c0/state[20]_net_1\, Y => 
        \display0/i2c0/databite\);
    
    \display0/state_RNI0AQM1[4]\ : NOR3
      port map(A => \display0/N_54\, B => 
        \display0/state[4]_net_1\, C => \display0/N_43\, Y => 
        \display0/un1_N_3_mux\);
    
    \display0/bytecount_RNO_0[31]\ : OR2A
      port map(A => \display0/bytecount[30]_net_1\, B => 
        \display0/N_933\, Y => \display0/N_61\);
    
    \display0/bytecount_0_RNIMDHQ1[5]\ : NOR3C
      port map(A => \display0/bytecount_m6_0_a2_5_3\, B => 
        \display0/bytecount_0[5]_net_1\, C => 
        \display0/bytecount_m6_0_a2_5_6\, Y => 
        \display0/bytecount_m6_0_a2_5_7\);
    
    \display0/i2c0/databit[12]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_804\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite_0\, Q => 
        \display0/i2c0/databit[12]_net_1\);
    
    \display0/burstNo_RNO[12]\ : XA1
      port map(A => \display0/burstNo[12]_net_1\, B => 
        \display0/DWACT_ADD_CI_0_g_array_10[0]\, C => 
        \display0/un1_ena_2_0\, Y => \display0/burstNo_4[12]\);
    
    \display0/i2c0/databit[15]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_805\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite_0\, Q => 
        \display0/i2c0/databit[15]_net_1\);
    
    \display0/i2c0/databit[11]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_803\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite_0\, Q => 
        \display0/i2c0/databit[11]_net_1\);
    
    \address_RNIUJQF1[3]\ : OR2A
      port map(A => \address[3]_net_1\, B => N_29, Y => N_31);
    
    \display0/i2c0/addrbit_RNIJRHA[16]\ : NOR2
      port map(A => \display0/i2c0/addrbit[17]_net_1\, B => 
        \display0/i2c0/addrbit[16]_net_1\, Y => 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_11\);
    
    \display0/data_i2c_RNO_7[7]\ : OR3
      port map(A => \display0/N_661_1\, B => 
        \display0/un1_bytecount_51\, C => \display0/N_663_3\, Y
         => \display0/data_i2c_2_0_4[7]\);
    
    \display0/bytecount_RNO[24]\ : XA1A
      port map(A => \display0/bytecount[24]_net_1\, B => 
        \display0/N_45\, C => \display0/N_673_i_0_0\, Y => 
        \display0/N_25\);
    
    \display0/i2c0/state[12]\ : DFN1E1C0
      port map(D => \display0/i2c0/state[13]_net_1\, CLK => clk_c, 
        CLR => oled_reset_c_c, E => \display0/i2c0/un1_i2c0_0\, Q
         => \display0/i2c0/state[12]_net_1\);
    
    \display0/i2c0/addrbit_RNI4N5L[18]\ : OR3
      port map(A => \display0/i2c0/addrbit[18]_net_1\, B => 
        \display0/i2c0/addrbit[19]_net_1\, C => 
        \display0/i2c0/addrbit_n24_i_o3_i_o2_0\, Y => 
        \display0/i2c0/addrbit_N_13_mux_i_2_4\);
    
    \display0/bytecount[30]\ : DFN1E0C0
      port map(D => \display0/bytecount_n30\, CLK => clk_c, CLR
         => oled_reset_c_c, E => \display0/N_43\, Q => 
        \display0/bytecount[30]_net_1\);
    
    \display0/bytecount_RNO[10]\ : XA1A
      port map(A => \display0/bytecount[10]_net_1\, B => 
        \display0/N_46\, C => \display0/N_673_i_0_0\, Y => 
        \display0/N_8\);
    
    \display0/i2c0/counter[2]\ : DFN1P0
      port map(D => \display0/i2c0/N_79\, CLK => clk_c, PRE => 
        oled_reset_c_c, Q => \display0/i2c0/counter_i_0[2]\);
    
    \display0/bytecount_RNI14O95[18]\ : OR2A
      port map(A => \display0/bytecount[18]_net_1\, B => 
        \display0/N_109\, Y => \display0/N_110\);
    
    \display0/bytecount_0_RNIHEHE1_0[1]\ : NOR3B
      port map(A => \display0/un1_bytecount_104_5\, B => 
        \display0/un1_bytecount_94_1\, C => \display0/N_94\, Y
         => \display0/un1_bytecount_103\);
    
    \display0/data_i2c_RNO_9[6]\ : OA1
      port map(A => \display0/N_639_2\, B => 
        \display0/data_i2c_1_2_iv_0_tz_7[6]\, C => 
        \display0/burst_reg_1006\, Y => 
        \display0/data_i2c_1_2_iv_0[6]\);
    
    \display0/un1_burstNo_2_I_204\ : NOR3C
      port map(A => \display0/burstNo[10]_net_1\, B => 
        \display0/burstNo[11]_net_1\, C => 
        \display0/DWACT_ADD_CI_0_pog_array_1_3[0]\, Y => 
        \display0/DWACT_ADD_CI_0_pog_array_2_1[0]\);
    
    \display0/data_i2c_RNO_4[2]\ : NOR2A
      port map(A => \display0/un1_bytecount_55\, B => 
        \display0/N_583\, Y => \display0/burst_reg_20_m_2[1]\);
    
    \display0/bytecount_RNO[18]\ : XA1A
      port map(A => \display0/bytecount[18]_net_1\, B => 
        \display0/N_109\, C => \display0/N_673_i_0_0\, Y => 
        \display0/bytecount_n18\);
    
    \display0/bytecount_RNIC25M[10]\ : NOR2B
      port map(A => \display0/bytecount[10]_net_1\, B => 
        \display0/bytecount[9]_net_1\, Y => 
        \display0/bytecount_m6_0_a2_5_0\);
    
    \display0/bytecount_RNI4N1D2_1[2]\ : NOR3B
      port map(A => \display0/un1_bytecount_83_3\, B => 
        \display0/un1_bytecount_57_5\, C => \display0/N_93\, Y
         => \display0/un1_bytecount_45\);
    
    \display0/i2c0/databit[1]\ : DFN1E1P0
      port map(D => \display0/i2c0/N_18\, CLK => clk_c, PRE => 
        oled_reset_c_c, E => \display0/i2c0/databite\, Q => 
        \display0/i2c0/databit[1]_net_1\);
    
    \display0/i2c0/databit_RNIK8TN[16]\ : OR3
      port map(A => \display0/i2c0/databit_N_13_mux_i_0_7\, B => 
        \display0/i2c0/databit_N_13_mux_i_0_6\, C => 
        \display0/i2c0/databit_N_13_mux_i_0_8\, Y => 
        \display0/i2c0/databit_N_13_mux_i_0_10\);
    
    \display0/burstNo_RNO[4]\ : XA1
      port map(A => \display0/burstNo[4]_net_1\, B => 
        \display0/DWACT_ADD_CI_0_g_array_2[0]\, C => 
        \display0/un1_ena_2_0\, Y => \display0/burstNo_4[4]\);
    
    \display0/burstNo[1]\ : DFN1C0
      port map(D => \display0/burstNo_4[1]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[1]_net_1\);
    
    \display0/bytecount_RNIPG0M[5]\ : NOR2B
      port map(A => \display0/bytecount[2]_net_1\, B => 
        \display0/bytecount[5]_net_1\, Y => 
        \display0/un1_bytecount_76_2\);
    
    \display0/i2c0/state_RNO[20]\ : AO1A
      port map(A => \display0/ena_net_1\, B => 
        \display0/i2c0/state[20]_net_1\, C => 
        \display0/i2c0/state[0]_net_1\, Y => 
        \display0/i2c0/state_ns[0]\);
    
    \address[0]\ : DFN1E1C0
      port map(D => N_149, CLK => clk_c, CLR => oled_reset_c_c, E
         => addresse, Q => \address[0]_net_1\);
    
    \display0/bytecount_0_RNI6JO54_1[4]\ : AO1
      port map(A => \display0/un1_bytecount_70_0\, B => 
        \display0/un1_bytecount_76_5\, C => 
        \display0/un1_bytecount_90\, Y => 
        \display0/un1_bytecount_153_1\);
    
    \display0/i2c0/databit_RNIQC2R4[16]\ : OR3
      port map(A => \display0/i2c0/N_1033\, B => 
        \display0/i2c0/databit[15]_net_1\, C => 
        \display0/i2c0/databit[16]_net_1\, Y => 
        \display0/i2c0/N_1035\);
    
    \display0/data_i2c[4]\ : DFN1E1
      port map(D => \display0/un1_state_12[3]\, CLK => clk_c, E
         => oled_reset_c_c, Q => \display0/data_i2c[4]_net_1\);
    
    \display0/burstNo[7]\ : DFN1C0
      port map(D => \display0/burstNo_4[7]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[7]_net_1\);
    
    \display0/un1_burstNo_2_I_198\ : AND2
      port map(A => \display0/burstNo[24]_net_1\, B => 
        \display0/burstNo[25]_net_1\, Y => 
        \display0/DWACT_ADD_CI_0_pog_array_1_11[0]\);
    
    \display0/i2c0/databit_RNO[10]\ : NOR2A
      port map(A => \display0/i2c0/N_19_tz\, B => 
        \display0/i2c0/un1_state_7_0\, Y => \display0/i2c0/N_19\);
    
    \display0/bytecount_RNIKB0M_0[2]\ : NOR2
      port map(A => \display0/bytecount[0]_net_1\, B => 
        \display0/bytecount[2]_net_1\, Y => 
        \display0/un1_bytecount_88_3\);
    
    \display0/bytecount_RNI2SMO1[6]\ : NOR3B
      port map(A => \display0/un1_bytecount_99_1\, B => 
        \display0/un1_bytecount_105_0\, C => \display0/N_48\, Y
         => \display0/un1_bytecount_105\);
    
    \display0/bytecount_0_RNI627G1[6]\ : OA1B
      port map(A => \display0/un1_bytecount_33\, B => 
        \display0/un1_bytecount_32\, C => 
        \display0/bytecount_0[6]_net_1\, Y => 
        \display0/un1_bytecount_178_2\);
    
    \display0/i2c0/busy_byte_RNI5AHI\ : OR2A
      port map(A => \display0/state[2]_net_1\, B => 
        \display0/busy_byte\, Y => \display0/N_921\);
    
    \display0/bytecount_RNIF55M[8]\ : NOR2
      port map(A => \display0/bytecount[14]_net_1\, B => 
        \display0/bytecount[8]_net_1\, Y => 
        \display0/un2_busy_byte_NE_i_a2_8\);
    
    \display0/i2c0/databit_RNIDFU3[14]\ : OR2
      port map(A => \display0/i2c0/databit[14]_net_1\, B => 
        \display0/i2c0/databit[15]_net_1\, Y => 
        \display0/i2c0/databit_N_13_mux_i_0_3\);
    
    \display0/bytecount_RNIK1TK5[19]\ : OR2A
      port map(A => \display0/bytecount[19]_net_1\, B => 
        \display0/N_110\, Y => \display0/N_111\);
    
    \display0/data_i2c_RNO_11[7]\ : OR2
      port map(A => \display0/N_634_1\, B => 
        \display0/data_i2c_1_0[7]\, Y => 
        \display0/data_i2c_1_2[7]\);
    
    \display0/bytecount_0_RNI6KMD1[1]\ : NOR3C
      port map(A => \display0/un1_bytecount_92_3\, B => 
        \display0/un1_bytecount_87_2\, C => 
        \display0/un1_bytecount_166_1\, Y => 
        \display0/un1_bytecount_16\);
    
    \display0/data_i2c_RNO_1[3]\ : OR3
      port map(A => \display0/burst_reg_20_m_6[2]\, B => 
        \display0/burst_reg_20_m_4[2]\, C => 
        \display0/data_i2c_2_2_iv_4[3]\, Y => 
        \display0/data_i2c_2[3]\);
    
    \display0/i2c0/databit_RNO_0[13]\ : AO1
      port map(A => \display0/i2c0/databit[13]_net_1\, B => 
        \display0/i2c0/N_1031\, C => \display0/i2c0/N_1032_i\, Y
         => \display0/i2c0/N_20_tz\);
    
    \display0/data_i2c_RNO_10[7]\ : AO1
      port map(A => \display0/un1_bytecount_47_0\, B => 
        \display0/un1_bytecount_57_5\, C => 
        \display0/un1_bytecount_45\, Y => 
        \display0/data_i2c_2_0_1[7]\);
    
    \display0/bytecount_RNILO011[5]\ : NOR2A
      port map(A => \display0/un1_bytecount_83_3\, B => 
        \display0/bytecount[5]_net_1\, Y => 
        \display0/un1_bytecount_108_5\);
    
    \display0/burstNo_RNIVD91[7]\ : NOR2
      port map(A => \display0/burstNo[7]_net_1\, B => 
        \display0/burstNo[6]_net_1\, Y => 
        \display0/burst_reg_1002_18_0_a2_0\);
    
    \display0/i2c0/addrbit[16]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_768\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite_0\, Q => 
        \display0/i2c0/addrbit[16]_net_1\);
    
    \display0/bytecount_RNINE0M_0[2]\ : NOR2A
      port map(A => \display0/bytecount[2]_net_1\, B => 
        \display0/bytecount[3]_net_1\, Y => \display0/N_180\);
    
    \display0/i2c0/state_RNO[2]\ : NOR2A
      port map(A => \display0/i2c0/state[3]_net_1\, B => 
        \display0/ena_net_1\, Y => \display0/i2c0/N_1017\);
    
    \display0/i2c0/state_RNINVVS5[20]\ : OR2
      port map(A => \display0/i2c0/N_187_1\, B => 
        \display0/i2c0/state[20]_net_1\, Y => 
        \display0/i2c0/un1_state_7_0\);
    
    \display0/i2c0/databit_RNO[12]\ : NOR2A
      port map(A => \display0/i2c0/N_804_tz\, B => 
        \display0/i2c0/un1_state_7\, Y => \display0/i2c0/N_804\);
    
    \display0/i2c0/databit_RNO[31]\ : NOR3B
      port map(A => \display0/i2c0/N_1057\, B => 
        \display0/i2c0/databit[31]_net_1\, C => 
        \display0/i2c0/un1_state_7_0\, Y => \display0/i2c0/N_197\);
    
    \display0/i2c0/addrbit_RNO[3]\ : XA1C
      port map(A => \display0/i2c0/addrbit[3]_net_1\, B => 
        \display0/i2c0/N_896\, C => \display0/i2c0/un1_state_8_0\, 
        Y => \display0/i2c0/N_755\);
    
    \display0/bytecount_RNO[25]\ : NOR3B
      port map(A => \display0/N_673_i_0_0\, B => \display0/N_49\, 
        C => \display0/N_946\, Y => \display0/N_27\);
    
    \display0/data_i2c_RNO_15[4]\ : OR3
      port map(A => \display0/data_i2c_1_2_iv_2_tz_4[4]\, B => 
        \display0/un1_bytecount_151\, C => \display0/N_639_2\, Y
         => \display0/data_i2c_1_2_tz[4]\);
    
    \display0/bytecount_0_RNI7LG2_1[4]\ : NOR3A
      port map(A => \display0/bytecount_0[4]_net_1\, B => 
        \display0/bytecount_0[5]_net_1\, C => 
        \display0/bytecount_0[6]_net_1\, Y => 
        \display0/un1_bytecount_69_1\);
    
    \display0/burstNo_RNIC73O3[1]\ : NOR3C
      port map(A => \display0/burst_reg_1003_2\, B => 
        \display0/burstno_26\, C => \display0/N_57_17\, Y => 
        \display0/burst_reg_1003\);
    
    \counter[18]\ : DFN1
      port map(D => counter_n18, CLK => clk_c, Q => 
        \counter[18]_net_1\);
    
    \display0/bytecount[9]\ : DFN1E0C0
      port map(D => \display0/N_6\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/N_43_0\, Q => 
        \display0/bytecount[9]_net_1\);
    
    \display0/counter_c16\ : NOR3C
      port map(A => \display0/counter_c14_net_1\, B => 
        \counter[15]_net_1\, C => \counter[16]_net_1\, Y => 
        \display0/counter_c16_net_1\);
    
    \display0/burstNo_RNI5H9A[19]\ : NOR2
      port map(A => \display0/burstNo[18]_net_1\, B => 
        \display0/burstNo[19]_net_1\, Y => 
        \display0/burst_reg_1002_30_1\);
    
    \display0/data_i2c_RNO_2[6]\ : MX2
      port map(A => \display0/data_i2c[6]_net_1\, B => 
        \display0/data_i2c_1[6]\, S => \display0/state[4]_net_1\, 
        Y => \display0/un1_data_i2c_1\);
    
    \display0/bytecount_RNILC0M_0[1]\ : NOR2
      port map(A => \display0/bytecount[2]_net_1\, B => 
        \display0/bytecount[1]_net_1\, Y => 
        \display0/un1_bytecount_94_2\);
    
    \display0/state[4]\ : DFN1C0
      port map(D => \display0/state_RNO[4]_net_1\, CLK => clk_c, 
        CLR => oled_reset_c_c, Q => \display0/state[4]_net_1\);
    
    \counter[21]\ : DFN1
      port map(D => counter_n21, CLK => clk_c, Q => 
        \counter[21]_net_1\);
    
    \display0/bytecount_RNIGU456[5]\ : NOR2B
      port map(A => \display0/un1_bytecount_116\, B => 
        \display0/burst_reg_1006\, Y => 
        \display0/burst_reg_1006_m_3\);
    
    \counter[4]\ : DFN1
      port map(D => counter_n4, CLK => clk_c, Q => 
        \counter[4]_net_1\);
    
    \display0/i2c0/state_RNINVVS5_0[20]\ : OR2
      port map(A => \display0/i2c0/N_187_1\, B => 
        \display0/i2c0/state[20]_net_1\, Y => 
        \display0/i2c0/un1_state_7\);
    
    \display0/i2c0/counter_RNO_0[6]\ : OR2
      port map(A => \display0/i2c0/counter_i_0[5]\, B => 
        \display0/i2c0/N_1055\, Y => \display0/i2c0/N_174\);
    
    \display0/bytecount_0_RNIIMC52[6]\ : AO1A
      port map(A => \display0/bytecount_0[6]_net_1\, B => 
        \display0/un1_bytecount_72_4\, C => 
        \display0/un1_bytecount_27\, Y => 
        \display0/un1_bytecount_134_0\);
    
    \display0/i2c0/databit_RNO[21]\ : XA1C
      port map(A => \display0/i2c0/N_1039\, B => 
        \display0/i2c0/databit[21]_net_1\, C => 
        \display0/i2c0/un1_state_7_0\, Y => \display0/i2c0/N_810\);
    
    \display0/burstNo_RNIC73O3[0]\ : NOR2B
      port map(A => \display0/burst_reg_1006_0\, B => 
        \display0/N_57_17\, Y => \display0/burst_reg_1006\);
    
    \display0/data_i2c_1_2_iv_4_RNO_0[3]\ : OR3
      port map(A => \display0/burst_reg_2_1_m[3]\, B => 
        \display0/data_i2c_1_2_iv_0[3]\, C => 
        \display0/burst_reg_3_m_4[0]\, Y => 
        \display0/data_i2c_1_2_iv_1[3]\);
    
    \display0/data_i2c_RNO_8[7]\ : OR3
      port map(A => \display0/data_i2c_1_2[7]\, B => 
        \display0/N_663_3\, C => \display0/data_i2c_1_3[7]\, Y
         => \display0/N_619\);
    
    \display0/burstNo_RNO[23]\ : NOR2B
      port map(A => \display0/I_127\, B => \display0/un1_ena_2\, 
        Y => \display0/burstNo_4[23]\);
    
    \display0/bytecount_0[1]\ : DFN1E0C0
      port map(D => \display0/bytecount_n1\, CLK => clk_c, CLR
         => oled_reset_c_c, E => \display0/N_43_0_0\, Q => 
        \display0/bytecount_0[1]_net_1\);
    
    \display0/burstNo_RNO[24]\ : XA1
      port map(A => \display0/burstNo[24]_net_1\, B => 
        \display0/DWACT_ADD_CI_0_g_array_9[0]\, C => 
        \display0/un1_ena_2\, Y => \display0/burstNo_4[24]\);
    
    \display0/i2c0/state_tr8_0_a2_0_a2_1_12\ : NOR2
      port map(A => \display0/i2c0/addrbit[15]_net_1\, B => 
        \display0/i2c0/addrbit[19]_net_1\, Y => 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_12_net_1\);
    
    \display0/i2c0/databit[19]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_1014\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite_0\, Q => 
        \display0/i2c0/databit[19]_net_1\);
    
    \display0/i2c0/counter_RNO[5]\ : XO1A
      port map(A => \display0/i2c0/N_1055\, B => 
        \display0/i2c0/counter_i_0[5]\, C => 
        \display0/i2c0/state[20]_net_1\, Y => 
        \display0/i2c0/N_85\);
    
    \display0/i2c0/counter_RNI6PN71[3]\ : OR2
      port map(A => \display0/i2c0/counter_i_0[3]\, B => 
        \display0/i2c0/N_1049\, Y => \display0/i2c0/N_1051\);
    
    \display0/i2c0/addrbit_RNO[24]\ : XA1C
      port map(A => \display0/i2c0/N_97\, B => 
        \display0/i2c0/addrbit[24]_net_1\, C => 
        \display0/i2c0/un1_state_8\, Y => \display0/i2c0/N_33\);
    
    \display0/bytecount_RNIJ21C1[0]\ : NOR2B
      port map(A => \display0/un1_bytecount_94_1\, B => 
        \display0/un1_bytecount_57_3\, Y => 
        \display0/un1_bytecount_38\);
    
    \display0/data_i2c_RNO_7[5]\ : OR3
      port map(A => \display0/un1_bytecount_49\, B => 
        \display0/un1_bytecount_61\, C => 
        \display0/data_i2c_1_1_1[5]\, Y => \display0/N_637\);
    
    \display0/data_i2c_RNO_5[5]\ : AO1A
      port map(A => \display0/N_575_0\, B => \display0/N_637\, C
         => \display0/data_i2c_1_2_iv_0[5]\, Y => 
        \display0/data_i2c_1[5]\);
    
    \display0/burstNo_RNIT89A[15]\ : NOR2
      port map(A => \display0/burstNo[15]_net_1\, B => 
        \display0/burstNo[14]_net_1\, Y => 
        \display0/burstno_26_0_a2_2\);
    
    \display0/bytecount_RNIOAOLS_0[4]\ : NOR2A
      port map(A => \display0/un1_bytecount_59\, B => 
        \display0/N_575\, Y => \display0/burst_reg_3_m_7[0]\);
    
    \display0/bytecount_RNO[16]\ : XA1A
      port map(A => \display0/bytecount[16]_net_1\, B => 
        \display0/N_934\, C => \display0/N_673_i_0_0\, Y => 
        \display0/N_20\);
    
    \display0/bytecount[10]\ : DFN1E0C0
      port map(D => \display0/N_8\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/N_43_0\, Q => 
        \display0/bytecount[10]_net_1\);
    
    \display0/burstNo_RNIC73O3_0[11]\ : NOR3C
      port map(A => \display0/burstno_26\, B => 
        \display0/burst_reg_1002_2\, C => \display0/N_57_17\, Y
         => \display0/burst_reg_1002\);
    
    \display0/i2c0/databit_RNO[13]\ : NOR2A
      port map(A => \display0/i2c0/N_20_tz\, B => 
        \display0/i2c0/un1_state_7\, Y => \display0/i2c0/N_20\);
    
    \display0/i2c0/addrbit_RNO[27]\ : XA1C
      port map(A => \display0/i2c0/addrbit[27]_net_1\, B => 
        \display0/i2c0/N_100\, C => \display0/i2c0/un1_state_8\, 
        Y => \display0/i2c0/N_894\);
    
    \display0/data_i2c_RNO_26[0]\ : OR3
      port map(A => \display0/un1_bytecount_50\, B => 
        \display0/data_i2c_1_0_11[0]\, C => 
        \display0/data_i2c_1_0_13[0]\, Y => 
        \display0/data_i2c_1_0_16[0]\);
    
    \display0/bytecount_0_RNIRNVS6[6]\ : OR3
      port map(A => \display0/un1_bytecount_112\, B => 
        \display0/un1_bytecount_91\, C => 
        \display0/un1_bytecount_114\, Y => 
        \display0/un1_bytecount_145_2\);
    
    \display0/bytecount_0_RNI4IG2[1]\ : NOR3
      port map(A => \display0/bytecount_0[5]_net_1\, B => 
        \display0/bytecount_0[1]_net_1\, C => 
        \display0/bytecount_0[6]_net_1\, Y => 
        \display0/un1_bytecount_67_5\);
    
    \display0/i2c0/databit_RNIO33G[12]\ : NOR2
      port map(A => \display0/i2c0/databit[12]_net_1\, B => 
        \display0/i2c0/databit[3]_net_1\, Y => 
        \display0/i2c0/databit_N_13_mux_i_a0_1\);
    
    \display0/burstNo_RNIOE6G7_0[0]\ : NOR2
      port map(A => \display0/burst_reg_1002\, B => 
        \display0/burstno\, Y => 
        \display0/burst_reg_2_1_i_a2_0[1]\);
    
    \display0/bytecount_RNI8E3Q4[6]\ : OR2
      port map(A => \display0/un1_bytecount_48\, B => 
        \display0/un1_bytecount_46\, Y => 
        \display0/data_i2c_1_0[7]\);
    
    \display0/i2c0/sda_1\ : DFN1C0
      port map(D => \display0/i2c0/sda_1_RNO_net_1\, CLK => clk_c, 
        CLR => oled_reset_c_c, Q => \display0.i2c0.sda_1\);
    
    \display0/burstNo[15]\ : DFN1C0
      port map(D => \display0/burstNo_4[15]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[15]_net_1\);
    
    \display0/un1_burstNo_2_I_136\ : NOR2B
      port map(A => \display0/DWACT_ADD_CI_0_g_array_10[0]\, B
         => \display0/DWACT_ADD_CI_0_pog_array_1_5[0]\, Y => 
        \display0/DWACT_ADD_CI_0_g_array_11_2[0]\);
    
    \display0/data_i2c_RNO_3[1]\ : OA1B
      port map(A => \display0/un1_bytecount_46\, B => 
        \display0/data_i2c_2_1_0[1]\, C => \display0/N_575\, Y
         => \display0/burst_reg_3_m_11[0]\);
    
    \display0/data_i2c_RNO_23[0]\ : AO1
      port map(A => \display0/un1_bytecount_47_0\, B => 
        \display0/un1_bytecount_57_5\, C => 
        \display0/un1_bytecount_49\, Y => 
        \display0/data_i2c_1_1_1[0]\);
    
    \state[0]\ : DFN1C0
      port map(D => N_10, CLK => clk_c, CLR => oled_reset_c_c, Q
         => \state[0]_net_1\);
    
    \display0/i2c0/addrbit_RNO[29]\ : XA1C
      port map(A => \display0/i2c0/addrbit[29]_net_1\, B => 
        \display0/i2c0/N_60\, C => \display0/i2c0/un1_state_8\, Y
         => \display0/i2c0/N_37\);
    
    \display0/data_i2c_RNO_19[1]\ : OR3
      port map(A => \display0/data_i2c_2_0_1[1]\, B => 
        \display0/un1_bytecount_178\, C => 
        \display0/un1_bytecount_51\, Y => 
        \display0/data_i2c_2_0_7[1]\);
    
    \display0/bytecount_RNIPG0M[1]\ : NOR2A
      port map(A => \display0/bytecount[6]_net_1\, B => 
        \display0/bytecount[1]_net_1\, Y => 
        \display0/un1_bytecount_96_2\);
    
    \address[7]\ : DFN1E1C0
      port map(D => N_26, CLK => clk_c, CLR => oled_reset_c_c, E
         => addresse, Q => \address[7]_net_1\);
    
    \display0/bytecount_RNIOF0M[0]\ : NOR2A
      port map(A => \display0/bytecount[6]_net_1\, B => 
        \display0/bytecount[0]_net_1\, Y => 
        \display0/un1_bytecount_94_1\);
    
    \display0/burstNo_RNIC73O3_0[1]\ : NOR2B
      port map(A => \display0/burst_reg_1005_3\, B => 
        \display0/N_57_17\, Y => \display0/burst_reg_1005\);
    
    \display0/data_i2c_RNO_24[0]\ : OR2
      port map(A => \display0/un1_bytecount_58\, B => 
        \display0/un1_bytecount_57\, Y => 
        \display0/data_i2c_1_1_0[0]\);
    
    \display0/i2c0/counter_RNIHQRJ[1]\ : OR2
      port map(A => \display0/i2c0/counter_i_0[1]\, B => 
        \display0/i2c0/counter_i_0[0]\, Y => 
        \display0/i2c0/N_1048\);
    
    \counter[1]\ : DFN1
      port map(D => counter_n1, CLK => clk_c, Q => 
        \counter[1]_net_1\);
    
    \state_RNO[0]\ : AXO6
      port map(A => busy, B => \state[0]_net_1\, C => 
        \state[1]_net_1\, Y => N_10);
    
    \display0/i2c0/databit[22]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_811\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite_0\, Q => 
        \display0/i2c0/databit[22]_net_1\);
    
    \display0/burstNo[11]\ : DFN1C0
      port map(D => \display0/burstNo_4[11]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[11]_net_1\);
    
    \display0/i2c0/databit[25]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_813\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite_0\, Q => 
        \display0/i2c0/databit[25]_net_1\);
    
    \display0/i2c0/databit[21]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_810\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite_0\, Q => 
        \display0/i2c0/databit[21]_net_1\);
    
    \counter_RNO[0]\ : INV
      port map(A => \counter[0]_net_1\, Y => \counter_i[0]\);
    
    \display0/counter_n20\ : AX1C
      port map(A => \display0/counter_c18_net_1\, B => 
        \counter[19]_net_1\, C => \counter[20]_net_1\, Y => 
        counter_n20);
    
    \display0/un1_burstNo_2_I_171\ : NOR2B
      port map(A => \display0/DWACT_ADD_CI_0_TMP[0]\, B => 
        \display0/burstNo[1]_net_1\, Y => 
        \display0/DWACT_ADD_CI_0_g_array_1[0]\);
    
    \display0/un1_burstNo_2_I_118\ : AX1C
      port map(A => \display0/DWACT_ADD_CI_0_g_array_11_2[0]\, B
         => \display0/burstNo[14]_net_1\, C => 
        \display0/burstNo[15]_net_1\, Y => \display0/I_118\);
    
    \display0/data_i2c_RNO_6[1]\ : OR3
      port map(A => \display0/burst_reg_3_m_2[0]\, B => 
        \display0/data_i2c_1_2_iv_1[1]\, C => 
        \display0/burst_reg_20_m[1]\, Y => 
        \display0/data_i2c_1[1]\);
    
    \display0/bytecount_RNI28N32[7]\ : OR2A
      port map(A => \display0/bytecount[7]_net_1\, B => 
        \display0/N_98\, Y => \display0/N_99\);
    
    \display0/i2c0/addrbit[25]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_892\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite_0\, Q => 
        \display0/i2c0/addrbit[25]_net_1\);
    
    \display0/bytecount_RNIN69RB[4]\ : OR3
      port map(A => \display0/un1_bytecount_150_1\, B => 
        \display0/un1_bytecount_88\, C => 
        \display0/un1_bytecount_147_1_0\, Y => 
        \display0/un1_bytecount_147\);
    
    \display0/bytecount_RNI4N1D2_2[5]\ : NOR3B
      port map(A => \display0/un1_bytecount_116_2\, B => 
        \display0/un1_bytecount_115_5\, C => \display0/N_62\, Y
         => \display0/un1_bytecount_115\);
    
    \display0/i2c0/addrbit_RNIG9LL[3]\ : NOR2
      port map(A => \display0/i2c0/addrbit[3]_net_1\, B => 
        \display0/i2c0/addrbit[9]_net_1\, Y => 
        \display0/i2c0/addrbit_m6_e_0_2\);
    
    \display0/i2c0/databit_RNO[2]\ : XO1A
      port map(A => \display0/i2c0/databit[2]_net_1\, B => 
        \display0/i2c0/N_1020\, C => \display0/i2c0/un1_state_7\, 
        Y => \display0/i2c0/N_1016\);
    
    \display0/bytecount_RNI8FFU5[6]\ : OR2
      port map(A => \display0/un1_bytecount_106\, B => 
        \display0/un1_bytecount_147_1\, Y => 
        \display0/un1_bytecount_147_1_0\);
    
    \display0/i2c0/addrbit_RNO[12]\ : XA1B
      port map(A => \display0/i2c0/addrbit[12]_net_1\, B => 
        \display0/i2c0/addrbit_N_13_mux_0\, C => 
        \display0/i2c0/un1_state_8_0\, Y => \display0/i2c0/N_764\);
    
    \display0/counter_c10\ : NOR3C
      port map(A => \display0/counter_c8_net_1\, B => 
        \counter[9]_net_1\, C => \counter[10]_net_1\, Y => 
        \display0/counter_c10_net_1\);
    
    \display0/bytecount_RNI4N1D2_1[5]\ : NOR3B
      port map(A => \display0/un1_bytecount_112_0\, B => 
        \display0/un1_bytecount_116_2\, C => \display0/N_48\, Y
         => \display0/un1_bytecount_112\);
    
    \display0/bytecount_RNIVN4T3[14]\ : OR2A
      port map(A => \display0/bytecount[14]_net_1\, B => 
        \display0/N_931\, Y => \display0/N_932\);
    
    \display0/data_i2c_RNO_15[6]\ : OR3
      port map(A => \display0/un1_bytecount_170\, B => 
        \display0/burst_reg_1006_m_25_2\, C => 
        \display0/un1_bytecount_152_net_1\, Y => 
        \display0/data_i2c_2_2_iv_0_tz_2[6]\);
    
    \display0/bytecount_RNIP7CC1[7]\ : NOR3A
      port map(A => \display0/un2_busy_byte_NE_i_a2_10\, B => 
        \display0/bytecount[7]_net_1\, C => 
        \display0/bytecount[9]_net_1\, Y => 
        \display0/un2_busy_byte_NE_i_a2_17\);
    
    \display0/i2c0/databit_RNO[14]\ : XA1B
      port map(A => \display0/i2c0/N_1032_i\, B => 
        \display0/i2c0/databit[14]_net_1\, C => 
        \display0/i2c0/un1_state_7\, Y => \display0/i2c0/N_1015\);
    
    \display0/i2c0/databit_RNI2SSO3[10]\ : NOR3C
      port map(A => \display0/i2c0/databit_N_13_mux_i_a0_7\, B
         => \display0/i2c0/databit_N_13_mux_i_a0_6\, C => 
        \display0/i2c0/databit_N_13_mux_i_a0_8\, Y => 
        \display0/i2c0/databit_N_13_mux_i_a0_10\);
    
    \display0/i2c0/databit[0]\ : DFN1E1P0
      port map(D => \display0/i2c0/N_720\, CLK => clk_c, PRE => 
        oled_reset_c_c, E => \display0/i2c0/databite\, Q => 
        \display0/i2c0/databit[0]_net_1\);
    
    \display0/i2c0/addrbit[19]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_23\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite_0\, Q => 
        \display0/i2c0/addrbit[19]_net_1\);
    
    \display0/data_i2c_1_2_iv_4_RNO_8[3]\ : OR3
      port map(A => \display0/un1_bytecount_142\, B => 
        \display0/data_i2c_1_0_0[1]\, C => 
        \display0/un1_bytecount_93\, Y => 
        \display0/data_i2c_1_2_iv_0_tz_3[3]\);
    
    \display0/un1_bytecount_152_RNI3I886\ : OR2
      port map(A => \display0/un1_bytecount_152_net_1\, B => 
        \display0/un1_bytecount_142\, Y => \display0/N_645_4\);
    
    \display0/i2c0/addrbit_RNI1V5M6[29]\ : OR2
      port map(A => \display0/i2c0/N_60\, B => 
        \display0/i2c0/addrbit[29]_net_1\, Y => 
        \display0/i2c0/N_61\);
    
    \display0/i2c0/addrbit[31]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_801\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite\, Q => 
        \display0/i2c0/addrbit[31]_net_1\);
    
    \display0/state_RNI0PU61[4]\ : OR2
      port map(A => \display0/state[4]_net_1\, B => 
        \display0/N_43\, Y => \display0/N_673_i_0\);
    
    \display0/i2c0/databit_RNIB08S[7]\ : NOR2
      port map(A => \display0/i2c0/databit[7]_net_1\, B => 
        \display0/i2c0/databit[2]_net_1\, Y => 
        \display0/i2c0/databit_N_13_mux_i_a0_5\);
    
    \display0/i2c0/addrbit_RNISD4G[6]\ : NOR2
      port map(A => \display0/i2c0/addrbit[6]_net_1\, B => 
        \display0/i2c0/addrbit[20]_net_1\, Y => 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_9\);
    
    \display0/bytecount_RNIAP0C1[1]\ : NOR2B
      port map(A => \display0/N_177\, B => 
        \display0/un1_bytecount_83_3\, Y => 
        \display0/un1_bytecount_43_4\);
    
    \display0/data_i2c_RNO[6]\ : MX2
      port map(A => \display0/un1_state_5\, B => 
        \display0/data_i2c_2[6]\, S => \display0/N_43\, Y => 
        \display0/un1_state_12[1]\);
    
    \display0/bytecount_RNI7UG8F[5]\ : OR2
      port map(A => \display0/un1_bytecount_101\, B => 
        \display0/un1_bytecount_151\, Y => \display0/N_660_2\);
    
    \display0/bytecount_RNIOF0M[1]\ : NOR2A
      port map(A => \display0/bytecount[5]_net_1\, B => 
        \display0/bytecount[1]_net_1\, Y => 
        \display0/un1_bytecount_91_3\);
    
    \display0/i2c0/addrbit_RNIBHDQ[17]\ : NOR3A
      port map(A => \display0/i2c0/addrbit_m6_e_1_4\, B => 
        \display0/i2c0/addrbit[18]_net_1\, C => 
        \display0/i2c0/addrbit[17]_net_1\, Y => 
        \display0/i2c0/addrbit_m6_e_1_6\);
    
    \display0/burstNo[22]\ : DFN1C0
      port map(D => \display0/burstNo_4[22]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[22]_net_1\);
    
    \display0/bytecount_0_RNI2SMO1[1]\ : NOR3C
      port map(A => \display0/un1_bytecount_92_3\, B => 
        \display0/un1_bytecount_87_2\, C => 
        \display0/un1_bytecount_85_5\, Y => 
        \display0/un1_bytecount_84\);
    
    \display0/bytecount_RNINE0M_1[5]\ : NOR2A
      port map(A => \display0/bytecount[0]_net_1\, B => 
        \display0/bytecount[5]_net_1\, Y => 
        \display0/un1_bytecount_27_0\);
    
    \display0/bytecount[31]\ : DFN1E0C0
      port map(D => \display0/bytecount_n31\, CLK => clk_c, CLR
         => oled_reset_c_c, E => \display0/N_43\, Q => 
        \display0/bytecount[31]_net_1\);
    
    \display0/burstNo_RNIQNI2[5]\ : AND3B
      port map(A => \display0/burstNo[5]_net_1\, B => 
        \display0/burstNo[4]_net_1\, C => 
        \display0/burst_reg_1002_18_0_a2_0\, Y => 
        \display0/burstno_18\);
    
    \display0/data_i2c_RNO_24[1]\ : OR3
      port map(A => \display0/un1_bytecount_136\, B => 
        \display0/un1_bytecount_116\, C => 
        \display0/un1_bytecount_166\, Y => 
        \display0/data_i2c_2_0_1[1]\);
    
    \display0/bytecount_RNO[12]\ : XA1A
      port map(A => \display0/bytecount[12]_net_1\, B => 
        \display0/N_50\, C => \display0/N_673_i_0_0\, Y => 
        \display0/N_925\);
    
    \display0/bytecount_RNIFU0C1[1]\ : NOR2B
      port map(A => \display0/N_4_i\, B => 
        \display0/un1_bytecount_96_2\, Y => 
        \display0/un1_bytecount_108_0\);
    
    \display0/i2c0/state_RNI020S[8]\ : OR3
      port map(A => \display0/i2c0/state[7]_net_1\, B => 
        \display0/i2c0/state[8]_net_1\, C => 
        \display0/i2c0/state[6]_net_1\, Y => 
        \display0/i2c0/N_1043\);
    
    \display0/i2c0/databit_RNIBF04[22]\ : OR2
      port map(A => \display0/i2c0/databit[23]_net_1\, B => 
        \display0/i2c0/databit[22]_net_1\, Y => 
        \display0/i2c0/databit_N_13_mux_i_0_1\);
    
    \display0/un1_burstNo_2_I_203\ : AND2
      port map(A => \display0/burstNo[20]_net_1\, B => 
        \display0/burstNo[21]_net_1\, Y => 
        \display0/DWACT_ADD_CI_0_pog_array_1_9[0]\);
    
    \display0/burstNo_RNI4V45_0[1]\ : NOR2B
      port map(A => \display0/burstno_18\, B => 
        \display0/burst_reg_1004_1\, Y => 
        \display0/burst_reg_1004_2\);
    
    \oled_reset_pad/U0/U0\ : IOPAD_TRI
      port map(D => \oled_reset_pad/U0/NET1\, E => 
        \oled_reset_pad/U0/NET2\, PAD => oled_reset);
    
    \display0/bytecount_RNI8E3Q4_1[6]\ : OR2
      port map(A => \display0/un1_bytecount_54\, B => 
        \display0/un1_bytecount_55\, Y => \display0/N_643_3\);
    
    \display0/data_i2c[0]\ : DFN1E1
      port map(D => \display0/un1_state_12[7]\, CLK => clk_c, E
         => oled_reset_c_c, Q => \display0/data_i2c[0]_net_1\);
    
    \display0/bytecount_0_RNI2SMO1_0[4]\ : NOR3C
      port map(A => \display0/un1_bytecount_94_2\, B => 
        \display0/un1_bytecount_94_1\, C => 
        \display0/un1_bytecount_96_5\, Y => 
        \display0/un1_bytecount_94\);
    
    \display0/bytecount_0_RNILVLC[4]\ : NOR3
      port map(A => \display0/bytecount_0[4]_net_1\, B => 
        \display0/bytecount[3]_net_1\, C => 
        \display0/bytecount_0[5]_net_1\, Y => 
        \display0/un1_bytecount_96_5\);
    
    \display0/data_i2c_RNO_36[0]\ : NOR3C
      port map(A => \display0/un1_bytecount_94_2\, B => 
        \display0/N_88_2\, C => \display0/un1_bytecount_76_5\, Y
         => \display0/un1_bytecount_71\);
    
    \display0/data_i2c_RNO_13[3]\ : OR2
      port map(A => \display0/un1_bytecount_142\, B => 
        \display0/N_642_5\, Y => \display0/data_i2c_2_0_1[3]\);
    
    \display0/data_i2c_RNO_0[6]\ : NOR2B
      port map(A => \display0/un1_state_6_0\, B => 
        \display0/un1_data_i2c_1\, Y => \display0/un1_state_5\);
    
    \display0/data_i2c_RNO_8[5]\ : MX2
      port map(A => \display0/un1_bytecount_43\, B => 
        \display0/data_i2c_1_1_tz[5]\, S => 
        \display0/burst_reg_1006\, Y => 
        \display0/data_i2c_1_2_iv_0[5]\);
    
    \display0/data_i2c[1]\ : DFN1E1
      port map(D => \display0/un1_state_12[6]\, CLK => clk_c, E
         => oled_reset_c_c, Q => \display0/data_i2c[1]_net_1\);
    
    \display0/bytecount_RNI4N1D2_2[2]\ : NOR3B
      port map(A => \display0/un1_bytecount_99_2\, B => 
        \display0/un1_bytecount_57_5\, C => \display0/N_94\, Y
         => \display0/un1_bytecount_54\);
    
    \display0/bytecount_RNI1NAM[13]\ : NOR2
      port map(A => \display0/bytecount[29]_net_1\, B => 
        \display0/bytecount[13]_net_1\, Y => 
        \display0/un2_busy_byte_NE_i_a2_3\);
    
    \counter[9]\ : DFN1
      port map(D => counter_n9, CLK => clk_c, Q => 
        \counter[9]_net_1\);
    
    \display0/counter_n23\ : XOR2
      port map(A => \counter_c[23]\, B => 
        \display0/counter_c22_net_1\, Y => counter_n23);
    
    \display0/data_i2c_RNO_16[4]\ : OA1
      port map(A => \display0/burst_reg_1005\, B => 
        \display0/burst_reg_1003\, C => 
        \display0/data_i2c_1_3_tz[4]\, Y => 
        \display0/data_i2c_1_3[4]\);
    
    \display0/bytecount_RNILC0M_0[0]\ : NOR2A
      port map(A => \display0/bytecount[3]_net_1\, B => 
        \display0/bytecount[0]_net_1\, Y => 
        \display0/un1_bytecount_56_2\);
    
    \display0/bytecount_0_RNIISLC[4]\ : NOR3
      port map(A => \display0/bytecount_0[4]_net_1\, B => 
        \display0/bytecount[0]_net_1\, C => 
        \display0/bytecount_0[5]_net_1\, Y => 
        \display0/un1_bytecount_105_0\);
    
    \display0/data_i2c_RNO_33[0]\ : OR3
      port map(A => \display0/data_i2c_1_0_0[0]\, B => 
        \display0/un1_bytecount_71\, C => 
        \display0/un1_bytecount_176\, Y => 
        \display0/data_i2c_1_0_4[0]\);
    
    \display0/bytecount_RNIJM011[6]\ : NOR2A
      port map(A => \display0/un1_bytecount_88_3\, B => 
        \display0/bytecount[6]_net_1\, Y => 
        \display0/un1_bytecount_88_0\);
    
    \display0/i2c0/addrbit_RNO[11]\ : XA1C
      port map(A => \display0/i2c0/addrbit[11]_net_1\, B => 
        \display0/i2c0/N_904\, C => \display0/i2c0/un1_state_8_0\, 
        Y => \display0/i2c0/N_763\);
    
    \display0/data_i2c_RNO_13[1]\ : OR3
      port map(A => \display0/un1_bytecount_93\, B => 
        \display0/N_645_6\, C => \display0/data_i2c_2_0_5[1]\, Y
         => \display0/data_i2c_2_0_8[1]\);
    
    \display0/data_i2c_RNO_11[1]\ : AO1
      port map(A => \display0/N_624\, B => 
        \display0/burst_reg_1006\, C => 
        \display0/data_i2c_1_2_iv_0[1]\, Y => 
        \display0/data_i2c_1_2_iv_1[1]\);
    
    \address[3]\ : DFN1E1C0
      port map(D => N_18, CLK => clk_c, CLR => oled_reset_c_c, E
         => addresse, Q => \address[3]_net_1\);
    
    \display0/bytecount_RNIHVVH3[13]\ : OR3B
      port map(A => \display0/bytecount[12]_net_1\, B => 
        \display0/bytecount[13]_net_1\, C => \display0/N_50\, Y
         => \display0/N_931\);
    
    \display0/i2c0/databit[29]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_1019\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite\, Q => 
        \display0/i2c0/databit[29]_net_1\);
    
    \display0/data_i2c_RNO_25[0]\ : OR3
      port map(A => \display0/un1_bytecount_158\, B => 
        \display0/un1_bytecount_165\, C => \display0/N_621_5\, Y
         => \display0/data_i2c_1_0_12[0]\);
    
    \display0/data_i2c_RNO_34[0]\ : OR3
      port map(A => \display0/data_i2c_1_0_3[0]\, B => 
        \display0/un1_bytecount_60\, C => 
        \display0/data_i2c_1_0_7[0]\, Y => 
        \display0/data_i2c_1_0_10[0]\);
    
    \display0/bytecount_RNIG5OF3[4]\ : AO1
      port map(A => \display0/un1_bytecount_18_0\, B => 
        \display0/un1_bytecount_93_3\, C => 
        \display0/un1_bytecount_20\, Y => 
        \display0/un1_bytecount_146_0\);
    
    \counter_RNIVINC[25]\ : CLKINT
      port map(A => \counter[25]_net_1\, Y => oled_reset_c_c);
    
    \display0/i2c0/state_RNO[8]\ : OA1C
      port map(A => \display0/i2c0/state_ns_0_i_0_a2_0_1[12]\, B
         => \display0/i2c0/N_1057\, C => \display0/i2c0/N_244\, Y
         => \display0/i2c0/N_15\);
    
    \display0/bytecount_RNO[31]\ : XA1A
      port map(A => \display0/bytecount[31]_net_1\, B => 
        \display0/N_61\, C => \display0/N_673_i_0\, Y => 
        \display0/bytecount_n31\);
    
    \display0/bytecount_RNI8F122[2]\ : NOR3B
      port map(A => \display0/un1_bytecount_57_3\, B => 
        \display0/un1_bytecount_15_2\, C => \display0/N_93\, Y
         => \display0/un1_bytecount_15\);
    
    \display0/i2c0/databit_RNO_0[27]\ : AX1B
      port map(A => \display0/i2c0/N_104\, B => 
        \display0/i2c0/databit[26]_net_1\, C => 
        \display0/i2c0/databit[27]_net_1\, Y => 
        \display0/i2c0/N_815_tz\);
    
    \display0/bytecount_RNIMD0M[4]\ : NOR2B
      port map(A => \display0/bytecount[0]_net_1\, B => 
        \display0/bytecount[4]_net_1\, Y => \display0/N_4_i\);
    
    \display0/data_i2c_RNO_22[1]\ : OR3
      port map(A => \display0/data_i2c_1_0_4[1]\, B => 
        \display0/N_621_5\, C => \display0/data_i2c_1_0_7[1]\, Y
         => \display0/data_i2c_1_0_9[1]\);
    
    \display0/bytecount_RNO_0[10]\ : OR2A
      port map(A => \display0/bytecount[9]_net_1\, B => 
        \display0/N_100\, Y => \display0/N_46\);
    
    \display0/i2c0/databit_RNIP47F4[10]\ : OR3
      port map(A => \display0/i2c0/databit[9]_net_1\, B => 
        \display0/i2c0/N_1027\, C => 
        \display0/i2c0/databit[10]_net_1\, Y => 
        \display0/i2c0/N_1029\);
    
    \display0/data_i2c_RNO_18[0]\ : OR3
      port map(A => \display0/data_i2c_1_0_12[0]\, B => 
        \display0/un1_bytecount_51\, C => 
        \display0/data_i2c_1_0_16[0]\, Y => \display0/N_621\);
    
    \display0/bytecount_0_RNIN1MC_0[5]\ : NOR3A
      port map(A => \display0/bytecount_0[6]_net_1\, B => 
        \display0/bytecount[3]_net_1\, C => 
        \display0/bytecount_0[5]_net_1\, Y => 
        \display0/un1_bytecount_113_0\);
    
    \address[6]\ : DFN1E1C0
      port map(D => N_24, CLK => clk_c, CLR => oled_reset_c_c, E
         => addresse, Q => \address[6]_net_1\);
    
    \display0/i2c0/databit[30]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_71\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite\, Q => 
        \display0/i2c0/databit[30]_net_1\);
    
    \display0/data_i2c_RNO_23[6]\ : NOR3C
      port map(A => \display0/un1_bytecount_83_3\, B => 
        \display0/un1_bytecount_40_2\, C => 
        \display0/un1_bytecount_127\, Y => 
        \display0/burst_reg_1006_m_11_2\);
    
    \display0/i2c0/addrbit_RNI70LL[1]\ : NOR2
      port map(A => \display0/i2c0/addrbit[2]_net_1\, B => 
        \display0/i2c0/addrbit[1]_net_1\, Y => 
        \display0/i2c0/N_274\);
    
    \display0/data_i2c_RNO_21[2]\ : OR2
      port map(A => \display0/un1_bytecount_93\, B => 
        \display0/un1_bytecount_53\, Y => 
        \display0/data_i2c_2_0_1[2]\);
    
    \display0/bytecount_RNISHAM[17]\ : NOR2B
      port map(A => \display0/bytecount[17]_net_1\, B => 
        \display0/bytecount[20]_net_1\, Y => 
        \display0/bytecount_m6_0_a2_2\);
    
    \display0/i2c0/addrbit_RNIGEC65[12]\ : NOR2B
      port map(A => \display0/i2c0/addrbit_m6_e_1_7\, B => 
        \display0/i2c0/addrbit_N_13_mux_0\, Y => 
        \display0/i2c0/addrbit_N_13_mux_1\);
    
    \display0/i2c0/addrbit_RNO[26]\ : XA1C
      port map(A => \display0/i2c0/N_99\, B => 
        \display0/i2c0/addrbit[26]_net_1\, C => 
        \display0/i2c0/un1_state_8\, Y => \display0/i2c0/N_893\);
    
    \display0/bytecount_RNIEH984[15]\ : OR2A
      port map(A => \display0/bytecount[15]_net_1\, B => 
        \display0/N_932\, Y => \display0/N_934\);
    
    \display0/data_i2c_RNO_7[3]\ : OR3
      port map(A => \display0/data_i2c_2_0_2[3]\, B => 
        \display0/un1_bytecount_153\, C => 
        \display0/data_i2c_2_0_5[3]\, Y => \display0/N_651\);
    
    \display0/i2c0/addrbit_RNI20AM5[18]\ : OR2A
      port map(A => \display0/i2c0/addrbit_N_13_mux_0\, B => 
        \display0/i2c0/addrbit_N_13_mux_i_2_6\, Y => 
        \display0/i2c0/N_97\);
    
    \display0/data_i2c_RNO_9[2]\ : NOR2A
      port map(A => \display0/un1_bytecount_54\, B => 
        \display0/N_583\, Y => \display0/burst_reg_20_m_0[1]\);
    
    \display0/burstNo[13]\ : DFN1C0
      port map(D => \display0/burstNo_4[13]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[13]_net_1\);
    
    \display0/bytecount_0_RNIE8T33[6]\ : OA1B
      port map(A => \display0/un1_bytecount_19_0\, B => 
        \display0/un1_bytecount_17_0\, C => \display0/N_93\, Y
         => \display0/un1_bytecount_146_1\);
    
    \display0/bytecount_0_RNI4HCO4[5]\ : NOR3B
      port map(A => \display0/N_673_i_0\, B => \display0/N_98\, C
         => \display0/N_139\, Y => \display0/N_35\);
    
    \display0/burstNo[14]\ : DFN1C0
      port map(D => \display0/burstNo_4[14]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[14]_net_1\);
    
    \display0/bytecount[0]\ : DFN1E0C0
      port map(D => \display0/N_915\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/N_43_0\, Q => 
        \display0/bytecount[0]_net_1\);
    
    \display0/burstNo_RNO[27]\ : XA1
      port map(A => \display0/burstNo[27]_net_1\, B => 
        \display0/DWACT_ADD_CI_0_g_array_12_12[0]\, C => 
        \display0/un1_ena_2\, Y => \display0/burstNo_4[27]\);
    
    \display0/bytecount_RNI941N1[6]\ : NOR2B
      port map(A => \display0/un1_bytecount_99_2\, B => 
        \display0/un1_bytecount_83_5\, Y => 
        \display0/un1_bytecount_81_1\);
    
    \address_RNINTMJ2[6]\ : OR3B
      port map(A => \address[5]_net_1\, B => \address[6]_net_1\, 
        C => N_45, Y => N_47);
    
    \display0/bytecount_RNILC0M[1]\ : OR2B
      port map(A => \display0/bytecount[2]_net_1\, B => 
        \display0/bytecount[1]_net_1\, Y => \display0/N_48\);
    
    \display0/burstNo_RNIN591_0[3]\ : NOR2
      port map(A => \display0/burstNo[2]_net_1\, B => 
        \display0/burstNo[3]_net_1\, Y => 
        \display0/burst_reg_1005_2\);
    
    \display0/i2c0/addrbit_RNIMA7L[20]\ : NOR3
      port map(A => \display0/i2c0/addrbit[21]_net_1\, B => 
        \display0/i2c0/addrbit[20]_net_1\, C => 
        \display0/i2c0/addrbit_n24_i_o3_i_o2_0\, Y => 
        \display0/i2c0/addrbit_m1_e_1_5\);
    
    \display0/i2c0/addrbit[8]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_760\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite\, Q => 
        \display0/i2c0/addrbit[8]_net_1\);
    
    \display0/burstNo_RNIC73O3[11]\ : NOR3C
      port map(A => \display0/burst_reg_1004_2\, B => 
        \display0/burstno_26\, C => \display0/N_57_17\, Y => 
        \display0/burst_reg_1004\);
    
    \display0/i2c0/addrbit_RNITFAB1[4]\ : NOR3A
      port map(A => \display0/i2c0/addrbit_m6_e_0_2\, B => 
        \display0/i2c0/addrbit[5]_net_1\, C => 
        \display0/i2c0/addrbit[4]_net_1\, Y => 
        \display0/i2c0/addrbit_m6_e_0_5\);
    
    \display0/i2c0/state[2]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_1017\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/un1_i2c0\, Q => 
        \display0/i2c0/state[2]_net_1\);
    
    \display0/data_i2c_RNO_12[5]\ : AO1
      port map(A => \display0/un1_bytecount_43_4\, B => 
        \display0/un1_bytecount_161_3\, C => 
        \display0/un1_bytecount_102\, Y => 
        \display0/data_i2c_2_2_iv_1_tz_0[5]\);
    
    \display0/un1_burstNo_2_I_195\ : AND2
      port map(A => \display0/burstNo[8]_net_1\, B => 
        \display0/burstNo[9]_net_1\, Y => 
        \display0/DWACT_ADD_CI_0_pog_array_1_3[0]\);
    
    \display0/counter_n24\ : XOR2
      port map(A => \counter[24]_net_1\, B => 
        \display0/counter_c23_net_1\, Y => counter_n24);
    
    \display0/bytecount[11]\ : DFN1E0C0
      port map(D => \display0/N_10\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/N_43_0\, Q => 
        \display0/bytecount[11]_net_1\);
    
    \display0/i2c0/databit_RNO[7]\ : XA1C
      port map(A => \display0/i2c0/databit[7]_net_1\, B => 
        \display0/i2c0/N_1025\, C => 
        \display0/i2c0/un1_state_7_0\, Y => \display0/i2c0/N_727\);
    
    \display0/bytecount_RNIVN206[20]\ : OR2A
      port map(A => \display0/bytecount[20]_net_1\, B => 
        \display0/N_111\, Y => \display0/N_113\);
    
    \display0/bytecount_RNI4N1D2_10[6]\ : NOR3B
      port map(A => \display0/un1_bytecount_57_5\, B => 
        \display0/N_177\, C => \display0/N_94\, Y => 
        \display0/un1_bytecount_55\);
    
    \display0/counter_n3\ : XOR2
      port map(A => \counter[3]_net_1\, B => 
        \display0/counter_c2_net_1\, Y => counter_n3);
    
    \display0/data_i2c_1_0_6[2]\ : OR3
      port map(A => \display0/N_624_4\, B => 
        \display0/data_i2c_1_0_3[2]\, C => 
        \display0/data_i2c_1_0_7[1]\, Y => 
        \display0/data_i2c_1_0_6[2]_net_1\);
    
    \display0/burstNo_RNO[13]\ : NOR2B
      port map(A => \display0/I_106\, B => \display0/un1_ena_2_0\, 
        Y => \display0/burstNo_4[13]\);
    
    \display0/un1_burstNo_2_I_182\ : NOR3C
      port map(A => \display0/DWACT_ADD_CI_0_pog_array_1_11[0]\, 
        B => \display0/DWACT_ADD_CI_0_pog_array_1_12[0]\, C => 
        \display0/DWACT_ADD_CI_0_g_array_9[0]\, Y => 
        \display0/DWACT_ADD_CI_0_g_array_10_2[0]\);
    
    \display0/bytecount_RNIOP4H6[1]\ : NOR2B
      port map(A => \display0/un1_bytecount_139\, B => 
        \display0/bytecount[1]_net_1\, Y => 
        \display0/un1_bytecount_169\);
    
    \display0/bytecount_RNIC5577[6]\ : OR3
      port map(A => \display0/un1_bytecount_82\, B => 
        \display0/un1_bytecount_86\, C => 
        \display0/un1_bytecount_89\, Y => 
        \display0/un1_bytecount_151_2\);
    
    \display0/i2c0/addrbit_RNO[18]\ : XA1C
      port map(A => \display0/i2c0/addrbit[18]_net_1\, B => 
        \display0/i2c0/N_911\, C => \display0/i2c0/un1_state_8\, 
        Y => \display0/i2c0/N_21\);
    
    \display0/burstNo_RNO[14]\ : XA1
      port map(A => \display0/burstNo[14]_net_1\, B => 
        \display0/DWACT_ADD_CI_0_g_array_11_2[0]\, C => 
        \display0/un1_ena_2_0\, Y => \display0/burstNo_4[14]\);
    
    \display0/data_i2c_RNO_5[4]\ : OR3
      port map(A => \display0/burst_reg_3_m_5[0]\, B => 
        \display0/data_i2c_1_2_iv_0[4]\, C => 
        \display0/burst_reg_20_m_2[2]\, Y => 
        \display0/data_i2c_1[4]\);
    
    \display0/bytecount_0_RNIAAQI6[5]\ : OR3
      port map(A => \display0/un1_bytecount_113\, B => 
        \display0/un1_bytecount_115\, C => 
        \display0/un1_bytecount_92\, Y => 
        \display0/un1_bytecount_150_1_0\);
    
    \display0/bytecount_RNIAP0C1_0[2]\ : OR2
      port map(A => \display0/N_94\, B => \display0/N_93\, Y => 
        \display0/N_95\);
    
    \address[1]\ : DFN1E1C0
      port map(D => N_14, CLK => clk_c, CLR => oled_reset_c_c, E
         => addresse, Q => \address[1]_net_1\);
    
    \display0/data_i2c_RNO_24[6]\ : NOR2A
      port map(A => \display0/bytecount[6]_net_1\, B => 
        \display0/bytecount[5]_net_1\, Y => 
        \display0/un1_bytecount_40_2\);
    
    \display0/i2c0/addrbit[14]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_891\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite_0\, Q => 
        \display0/i2c0/addrbit[14]_net_1\);
    
    \display0/state[5]\ : DFN1P0
      port map(D => \display0/N_12\, CLK => clk_c, PRE => 
        oled_reset_c_c, Q => \display0/state[5]_net_1\);
    
    \display0/bytecount[20]\ : DFN1E0C0
      port map(D => \display0/bytecount_n20\, CLK => clk_c, CLR
         => oled_reset_c_c, E => \display0/N_43_0_0\, Q => 
        \display0/bytecount[20]_net_1\);
    
    \display0/i2c0/sda_1_RNO_7\ : MX2
      port map(A => \display0/i2c0/N_164\, B => 
        \display0/i2c0/N_151\, S => 
        \display0/i2c0/databit[2]_net_1\, Y => 
        \display0/i2c0/N_168\);
    
    \display0/i2c0/addrbit_RNIJ2D14[13]\ : OR2
      port map(A => \display0/i2c0/N_906\, B => 
        \display0/i2c0/addrbit[13]_net_1\, Y => 
        \display0/i2c0/N_907\);
    
    \display0/data_i2c_RNO_9[4]\ : OA1
      port map(A => \display0/burst_reg_1005\, B => 
        \display0/burst_reg_1003\, C => 
        \display0/data_i2c_1_1_1[5]\, Y => 
        \display0/data_i2c_2_3[4]\);
    
    \display0/data_i2c[5]\ : DFN1E1
      port map(D => \display0/un1_state_12[2]\, CLK => clk_c, E
         => oled_reset_c_c, Q => \display0/data_i2c[5]_net_1\);
    
    \counter[5]\ : DFN1
      port map(D => counter_n5, CLK => clk_c, Q => 
        \counter[5]_net_1\);
    
    \display0/state_RNO[3]\ : AO1A
      port map(A => \display0/busy_byte\, B => 
        \display0/state[3]_net_1\, C => \display0/state[4]_net_1\, 
        Y => \display0/N_15\);
    
    \display0/i2c0/counter_RNO[1]\ : XO1A
      port map(A => \display0/i2c0/counter_i_0[0]\, B => 
        \display0/i2c0/counter_i_0[1]\, C => 
        \display0/i2c0/state[20]_net_1\, Y => 
        \display0/i2c0/N_77\);
    
    \display0/data_i2c[6]\ : DFN1E1
      port map(D => \display0/un1_state_12[1]\, CLK => clk_c, E
         => oled_reset_c_c, Q => \display0/data_i2c[6]_net_1\);
    
    \display0/data_i2c_RNO_0[0]\ : NOR2B
      port map(A => \display0/un1_state_6_0\, B => 
        \display0/un1_data_i2c_7\, Y => \display0/un1_state_11\);
    
    \display0/i2c0/state[19]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_243\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/un1_i2c0_0\, Q => 
        \display0/i2c0/state[19]_net_1\);
    
    \display0/data_i2c_RNO_1[2]\ : OR3
      port map(A => \display0/data_i2c_2_2_iv_3[2]\, B => 
        \display0/burst_reg_20_m_4[2]\, C => 
        \display0/burst_reg_20_m_2[1]\, Y => 
        \display0/data_i2c_2[2]\);
    
    \display0/burstNo_RNO[25]\ : XA1
      port map(A => \display0/burstNo[25]_net_1\, B => 
        \display0/DWACT_ADD_CI_0_g_array_12_11[0]\, C => 
        \display0/un1_ena_2\, Y => \display0/burstNo_4[25]\);
    
    \display0/bytecount_RNICR0C1_0[1]\ : NOR2A
      port map(A => \display0/un1_bytecount_91_3\, B => 
        \display0/N_67\, Y => \display0/un1_bytecount_75_0\);
    
    \display0/un1_bytecount_152\ : OR3
      port map(A => \display0/un1_bytecount_95\, B => 
        \display0/N_157\, C => 
        \display0/un1_bytecount_152_0_net_1\, Y => 
        \display0/un1_bytecount_152_net_1\);
    
    \display0/i2c0/addrbit_RNILELL[8]\ : NOR2
      port map(A => \display0/i2c0/addrbit[9]_net_1\, B => 
        \display0/i2c0/addrbit[8]_net_1\, Y => 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_6\);
    
    \display0/data_i2c_RNO_12[7]\ : OR3
      port map(A => \display0/un1_bytecount_44\, B => 
        \display0/un1_bytecount_45\, C => \display0/N_661_2\, Y
         => \display0/data_i2c_1_3[7]\);
    
    \display0/data_i2c_RNO_10[4]\ : OA1B
      port map(A => \display0/N_634_2\, B => 
        \display0/data_i2c_1_1_1[4]\, C => \display0/N_575_0\, Y
         => \display0/burst_reg_3_m_5[0]\);
    
    \display0/data_i2c_RNO_35[0]\ : AO1
      port map(A => \display0/un1_bytecount_14_3\, B => 
        \display0/un1_bytecount_67_5\, C => 
        \display0/un1_bytecount_79\, Y => 
        \display0/data_i2c_1_0_0[0]\);
    
    \display0/bytecount_RNO[14]\ : XA1A
      port map(A => \display0/bytecount[14]_net_1\, B => 
        \display0/N_931\, C => \display0/N_673_i_0_0\, Y => 
        \display0/N_16\);
    
    \display0/bytecount[18]\ : DFN1E0C0
      port map(D => \display0/bytecount_n18\, CLK => clk_c, CLR
         => oled_reset_c_c, E => \display0/N_43_0_0\, Q => 
        \display0/bytecount[18]_net_1\);
    
    \display0/bytecount_RNIJA0M_1[1]\ : NOR2
      port map(A => \display0/bytecount[0]_net_1\, B => 
        \display0/bytecount[1]_net_1\, Y => 
        \display0/un1_bytecount_99_2\);
    
    \display0/i2c0/counter_RNIMVRJ[2]\ : NOR2B
      port map(A => \display0/i2c0/counter_i_0[4]\, B => 
        \display0/i2c0/counter_i_0[2]\, Y => 
        \display0/i2c0/un3_counter_0_a2_4_a2_1\);
    
    \display0/bytecount_0_RNINLL1[1]\ : NOR2
      port map(A => \display0/bytecount_0[1]_net_1\, B => 
        \display0/bytecount_0[6]_net_1\, Y => 
        \display0/un1_bytecount_166_1\);
    
    \display0/i2c0/addrbit_RNIJRPB2[6]\ : OR2
      port map(A => \display0/i2c0/N_899\, B => 
        \display0/i2c0/addrbit[6]_net_1\, Y => 
        \display0/i2c0/N_900\);
    
    \display0/i2c0/addrbit_RNI8RHB6[13]\ : NOR2A
      port map(A => \display0/i2c0/addrbit_m1_e_1_8\, B => 
        \display0/i2c0/N_907\, Y => 
        \display0/i2c0/addrbit_N_3_mux\);
    
    \address_RNIGBPR1[4]\ : OR2A
      port map(A => \address[4]_net_1\, B => N_31, Y => N_45);
    
    \display0/i2c0/sda_e_RNO_1\ : NOR2
      port map(A => \display0/i2c0/state[11]_net_1\, B => 
        \display0/i2c0/state[10]_net_1\, Y => 
        \display0/i2c0/un1_state_6_0_a2_0_a3_0_a2_0\);
    
    \display0/i2c0/databit_RNIEHV3[20]\ : OR2
      port map(A => \display0/i2c0/databit[20]_net_1\, B => 
        \display0/i2c0/databit[19]_net_1\, Y => 
        \display0/i2c0/databit_N_13_mux_i_0_5\);
    
    \display0/bytecount_0_RNIPUGO[6]\ : NOR3C
      port map(A => \display0/un1_bytecount_10_0\, B => 
        \display0/bytecount_0[6]_net_1\, C => 
        \display0/un1_bytecount_9_2\, Y => 
        \display0/un1_bytecount_10\);
    
    \display0/i2c0/addrbit_RNO[7]\ : XA1C
      port map(A => \display0/i2c0/addrbit[7]_net_1\, B => 
        \display0/i2c0/N_900\, C => \display0/i2c0/un1_state_8_0\, 
        Y => \display0/i2c0/N_759\);
    
    \display0/i2c0/state_ns_i_a2_0_a2_0_1[3]\ : AND3B
      port map(A => \display0/i2c0/state[18]_net_1\, B => 
        \display0/i2c0/addrbit[31]_net_1\, C => 
        \display0/i2c0/N_106_4\, Y => 
        \display0/i2c0/state_ns_i_a2_0_a2_0_1[3]_net_1\);
    
    \display0/bytecount_0_RNIT9IQ2[4]\ : OA1
      port map(A => \display0/un1_bytecount_8_3\, B => 
        \display0/un1_bytecount_9\, C => 
        \display0/un1_bytecount_168_1\, Y => 
        \display0/un1_bytecount_168\);
    
    \display0/bytecount_RNO[0]\ : NOR2A
      port map(A => \display0/N_673_i_0\, B => 
        \display0/bytecount[0]_net_1\, Y => \display0/N_915\);
    
    \display0/bytecount_RNI4N1D2_0[2]\ : NOR3B
      port map(A => \display0/N_180\, B => 
        \display0/un1_bytecount_57_5\, C => \display0/N_93\, Y
         => \display0/un1_bytecount_49\);
    
    \display0/bytecount_RNO_0[3]\ : NOR2A
      port map(A => \display0/bytecount[2]_net_1\, B => 
        \display0/N_93\, Y => \display0/bytecount_44_0\);
    
    \display0/bytecount_RNIGHG11[23]\ : NOR3
      port map(A => \display0/bytecount[25]_net_1\, B => 
        \display0/bytecount[23]_net_1\, C => 
        \display0/bytecount[18]_net_1\, Y => 
        \display0/un2_busy_byte_NE_i_a2_12\);
    
    \display0/un1_burstNo_2_I_138\ : NOR2B
      port map(A => \display0/DWACT_ADD_CI_0_g_array_4[0]\, B => 
        \display0/DWACT_ADD_CI_0_pog_array_1_7[0]\, Y => 
        \display0/DWACT_ADD_CI_0_g_array_11_3[0]\);
    
    \display0/i2c0/sda_1_RNO_9\ : NOR3B
      port map(A => \display0/i2c0/databit[2]_net_1\, B => 
        \display0/data_i2c[4]_net_1\, C => \display0/i2c0/N_1020\, 
        Y => \display0/i2c0/un2_sda_0_0_a2_3_1\);
    
    \display0/i2c0/databit_RNO_0[10]\ : AX1B
      port map(A => \display0/i2c0/databit[9]_net_1\, B => 
        \display0/i2c0/N_1027\, C => 
        \display0/i2c0/databit[10]_net_1\, Y => 
        \display0/i2c0/N_19_tz\);
    
    \display0/data_i2c_RNO_10[2]\ : OR3
      port map(A => \display0/data_i2c_2_0_3[2]\, B => 
        \display0/un1_bytecount_151\, C => 
        \display0/data_i2c_2_0_4[2]\, Y => \display0/N_648\);
    
    \counter[11]\ : DFN1
      port map(D => counter_n11, CLK => clk_c, Q => 
        \counter[11]_net_1\);
    
    \display0/i2c0/state[16]\ : DFN1E1C0
      port map(D => \display0/i2c0/state[17]_net_1\, CLK => clk_c, 
        CLR => oled_reset_c_c, E => \display0/i2c0/un1_i2c0_0\, Q
         => \display0/i2c0/state[16]_net_1\);
    
    \address_RNIT7TN[1]\ : OR2B
      port map(A => \address[1]_net_1\, B => \address[0]_net_1\, 
        Y => N_28);
    
    \display0/bytecount_RNO[21]\ : XA1A
      port map(A => \display0/bytecount[21]_net_1\, B => 
        \display0/N_113\, C => \display0/N_673_i_0_0\, Y => 
        \display0/bytecount_n21\);
    
    \address_RNO[0]\ : NOR2A
      port map(A => N_48, B => \address[0]_net_1\, Y => N_149);
    
    \display0/counter_c12\ : NOR3C
      port map(A => \display0/counter_c10_net_1\, B => 
        \counter[11]_net_1\, C => \counter[12]_net_1\, Y => 
        \display0/counter_c12_net_1\);
    
    \display0/i2c0/addrbit_RNO[0]\ : NOR2
      port map(A => \display0/i2c0/addrbit[0]_net_1\, B => 
        \display0/i2c0/un1_state_8\, Y => \display0/i2c0/N_914\);
    
    \display0/bytecount_0_RNIGUUSB[4]\ : OR3
      port map(A => \display0/un1_bytecount_145_1\, B => 
        \display0/un1_bytecount_145_2\, C => 
        \display0/un1_bytecount_80\, Y => 
        \display0/un1_bytecount_145\);
    
    \display0/i2c0/addrbit[9]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_890\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite\, Q => 
        \display0/i2c0/addrbit[9]_net_1\);
    
    \display0/data_i2c_RNO_22[6]\ : XA1A
      port map(A => \display0/bytecount_0[4]_net_1\, B => 
        \display0/bytecount[0]_net_1\, C => 
        \display0/bytecount_0[1]_net_1\, Y => 
        \display0/burst_reg_1006_m_25_2_0\);
    
    \display0/bytecount_RNIMD0M_0[4]\ : NOR2A
      port map(A => \display0/bytecount[4]_net_1\, B => 
        \display0/bytecount[0]_net_1\, Y => 
        \display0/un1_bytecount_66_2\);
    
    \display0/bytecount_0_RNI2SMO1[5]\ : OR3B
      port map(A => \display0/bytecount_0[5]_net_1\, B => 
        \display0/bytecount_0[6]_net_1\, C => \display0/N_96\, Y
         => \display0/N_98\);
    
    \display0/bytecount_RNIAH122[5]\ : NOR3B
      port map(A => \display0/un1_bytecount_26_3\, B => 
        \display0/un1_bytecount_167_1\, C => \display0/N_62\, Y
         => \display0/un1_bytecount_26\);
    
    \display0/i2c0/addrbit[30]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_39\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite\, Q => 
        \display0/i2c0/addrbit[30]_net_1\);
    
    \display0/data_i2c[7]\ : DFN1E1
      port map(D => \display0/un1_state_12[0]\, CLK => clk_c, E
         => oled_reset_c_c, Q => \display0/data_i2c[7]_net_1\);
    
    \display0/data_i2c[3]\ : DFN1E1
      port map(D => \display0/un1_state_12[4]\, CLK => clk_c, E
         => oled_reset_c_c, Q => \display0/data_i2c[3]_net_1\);
    
    \display0/burstNo_RNO[29]\ : XA1
      port map(A => \display0/burstNo[29]_net_1\, B => 
        \display0/DWACT_ADD_CI_0_g_array_12_13[0]\, C => 
        \display0/un1_ena_2\, Y => \display0/burstNo_4[29]\);
    
    \display0/i2c0/addrbit_RNO_0[11]\ : OR2
      port map(A => \display0/i2c0/N_903\, B => 
        \display0/i2c0/addrbit[10]_net_1\, Y => 
        \display0/i2c0/N_904\);
    
    \display0/i2c0/addrbit_RNO[31]\ : NOR3B
      port map(A => \display0/i2c0/addrbit[31]_net_1\, B => 
        \display0/i2c0/N_62\, C => \display0/i2c0/un1_state_8_0\, 
        Y => \display0/i2c0/N_801\);
    
    \display0/bytecount_RNO[15]\ : XA1A
      port map(A => \display0/bytecount[15]_net_1\, B => 
        \display0/N_932\, C => \display0/N_673_i_0_0\, Y => 
        \display0/N_926\);
    
    \display0/bytecount_RNIM51C1[4]\ : NOR2A
      port map(A => \display0/un1_bytecount_41_2\, B => 
        \display0/N_81\, Y => \display0/un1_bytecount_19_0\);
    
    \display0/data_i2c_RNO_19[0]\ : AO1
      port map(A => \display0/un1_bytecount_145\, B => 
        \display0/burst_reg_1006\, C => 
        \display0/burst_reg_2_1_m[0]\, Y => 
        \display0/data_i2c_1_2_iv_0[0]\);
    
    \display0/data_i2c_1_2_iv_4_RNO_4[3]\ : OR2
      port map(A => \display0/un1_bytecount_151\, B => 
        \display0/un1_bytecount_147\, Y => 
        \display0/data_i2c_1_2_iv_0_tz_6[3]\);
    
    \display0/bytecount_RNIQH0M_0[5]\ : NOR2
      port map(A => \display0/bytecount[3]_net_1\, B => 
        \display0/bytecount[5]_net_1\, Y => 
        \display0/un1_bytecount_62_3\);
    
    \display0/i2c0/sda_1_RNO\ : AO1A
      port map(A => \display0/i2c0/N_1021\, B => 
        \display0/i2c0/un2_sda_0_0_a2_4_0\, C => 
        \display0/i2c0/un2_sda_0_0_3\, Y => 
        \display0/i2c0/sda_1_RNO_net_1\);
    
    \address_RNO[3]\ : XA1A
      port map(A => \address[3]_net_1\, B => N_29, C => N_48, Y
         => N_18);
    
    \counter[19]\ : DFN1
      port map(D => counter_n19, CLK => clk_c, Q => 
        \counter[19]_net_1\);
    
    \display0/i2c0/databit[18]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_808\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite_0\, Q => 
        \display0/i2c0/databit[18]_net_1\);
    
    \display0/state_RNIA2TR5[1]\ : AO1C
      port map(A => \display0/burstno\, B => 
        \display0/state[1]_net_1\, C => \display0/un1_N_3_mux\, Y
         => \display0/un1_ena_2_0\);
    
    \display0/i2c0/counter[5]\ : DFN1P0
      port map(D => \display0/i2c0/N_85\, CLK => clk_c, PRE => 
        oled_reset_c_c, Q => \display0/i2c0/counter_i_0[5]\);
    
    \display0/bytecount_RNI4N1D2_0[5]\ : NOR3B
      port map(A => \display0/un1_bytecount_116_1\, B => 
        \display0/un1_bytecount_88_3\, C => 
        \display0/bytecount[5]_net_1\, Y => 
        \display0/un1_bytecount_116\);
    
    \display0/un1_bytecount_152_1_RNO_0\ : NOR3B
      port map(A => \display0/un1_bytecount_92_3\, B => 
        \display0/un1_bytecount_78_5\, C => \display0/N_94\, Y
         => \display0/N_157\);
    
    \display0/data_i2c_RNO_8[1]\ : OR3
      port map(A => \display0/data_i2c_2_0_8[1]\, B => 
        \display0/un1_bytecount_151\, C => 
        \display0/data_i2c_2_0_12[1]\, Y => \display0/N_645\);
    
    \display0/i2c0/databit[17]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_807\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite_0\, Q => 
        \display0/i2c0/databit[17]_net_1\);
    
    \display0/counter_n17\ : XOR2
      port map(A => \counter[17]_net_1\, B => 
        \display0/counter_c16_net_1\, Y => counter_n17);
    
    \display0/i2c0/counter[6]\ : DFN1C0
      port map(D => \display0/i2c0/N_87\, CLK => clk_c, CLR => 
        oled_reset_c_c, Q => \display0/i2c0/counter[6]_net_1\);
    
    \display0/data_i2c_RNO_11[3]\ : OR2
      port map(A => \display0/un1_bytecount_56\, B => 
        \display0/un1_bytecount_49\, Y => 
        \display0/data_i2c_2_2_iv_4_tz_0[3]\);
    
    \display0/state_RNO_1[4]\ : NOR2B
      port map(A => \display0/N_34\, B => \display0/N_57_17\, Y
         => \display0/state_ns_i_a2_0_a2_1_0[1]\);
    
    \display0/un1_burstNo_2_I_186\ : NOR2B
      port map(A => \display0/DWACT_ADD_CI_0_g_array_3[0]\, B => 
        \display0/DWACT_ADD_CI_0_pog_array_3[0]\, Y => 
        \display0/DWACT_ADD_CI_0_g_array_4[0]\);
    
    \display0/data_i2c_RNO_1[1]\ : OR3
      port map(A => \display0/burst_reg_3_m_11[0]\, B => 
        \display0/data_i2c_2_2_iv_1[1]\, C => 
        \display0/burst_reg_20_m_1[1]\, Y => 
        \display0/data_i2c_2[1]\);
    
    \display0/bytecount_RNO[23]\ : NOR3B
      port map(A => \display0/N_673_i_0_0\, B => \display0/N_45\, 
        C => \display0/N_945\, Y => \display0/N_23\);
    
    \display0/burstNo_RNIOE6G7[1]\ : OR2
      port map(A => \display0/burst_reg_1003\, B => 
        \display0/burst_reg_1002\, Y => 
        \display0/un1_burst_reg_1002_1\);
    
    \display0/i2c0/databit_RNO[16]\ : NOR2A
      port map(A => \display0/i2c0/N_806_tz\, B => 
        \display0/i2c0/un1_state_7\, Y => \display0/i2c0/N_806\);
    
    \display0/i2c0/addrbit_RNI1M7L[22]\ : NOR3A
      port map(A => \display0/i2c0/state_tr8_0_a2_0_a2_1_5\, B
         => \display0/i2c0/addrbit[24]_net_1\, C => 
        \display0/i2c0/addrbit[22]_net_1\, Y => 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_15\);
    
    \display0/bytecount_RNI3VSO2[7]\ : NOR3C
      port map(A => \display0/un2_busy_byte_NE_i_a2_8\, B => 
        \display0/un2_busy_byte_NE_i_a2_7\, C => 
        \display0/un2_busy_byte_NE_i_a2_17\, Y => 
        \display0/un2_busy_byte_NE_i_a2_21\);
    
    \display0/bytecount_0_RNI2TQB[1]\ : NOR2A
      port map(A => \display0/bytecount_0[1]_net_1\, B => 
        \display0/bytecount[0]_net_1\, Y => 
        \display0/un1_bytecount_44_0_a2_0\);
    
    \display0/bytecount_RNI5C122[1]\ : NOR3B
      port map(A => \display0/un1_bytecount_91_3\, B => 
        \display0/un1_bytecount_99_3\, C => \display0/N_62\, Y
         => \display0/un1_bytecount_34\);
    
    \display0/bytecount_RNI4N1D2_1[1]\ : NOR3B
      port map(A => \display0/un1_bytecount_96_2\, B => 
        \display0/un1_bytecount_99_5\, C => \display0/N_62\, Y
         => \display0/un1_bytecount_100\);
    
    \display0/counter_n18\ : AX1C
      port map(A => \display0/counter_c16_net_1\, B => 
        \counter[17]_net_1\, C => \counter[18]_net_1\, Y => 
        counter_n18);
    
    \display0/bytecount_RNI61K17[23]\ : OR3B
      port map(A => \display0/bytecount_m6_0_a2_7\, B => 
        \display0/bytecount[23]_net_1\, C => \display0/N_931\, Y
         => \display0/N_45\);
    
    \display0/bytecount_RNI4N1D2[4]\ : NOR3B
      port map(A => \display0/un1_bytecount_167_1\, B => 
        \display0/un1_bytecount_62_5\, C => \display0/N_93\, Y
         => \display0/un1_bytecount_61\);
    
    \display0/i2c0/addrbit_RNIN1KA[27]\ : NOR2
      port map(A => \display0/i2c0/addrbit[28]_net_1\, B => 
        \display0/i2c0/addrbit[27]_net_1\, Y => 
        \display0/i2c0/state_ns_i_a2_0_a2_0_4_1[3]\);
    
    \display0/un1_burstNo_2_I_154\ : NOR3C
      port map(A => \display0/DWACT_ADD_CI_0_pog_array_2_3[0]\, B
         => \display0/DWACT_ADD_CI_0_pog_array_2_4[0]\, C => 
        \display0/DWACT_ADD_CI_0_g_array_4[0]\, Y => 
        \display0/DWACT_ADD_CI_0_g_array_9[0]\);
    
    \display0/i2c0/addrbit_RNO_0[20]\ : NOR2A
      port map(A => \display0/i2c0/addrbit[20]_net_1\, B => 
        \display0/i2c0/un1_state_8\, Y => 
        \display0/i2c0/addrbit_n20_i_a3_0\);
    
    \display0/ena\ : DFN1C0
      port map(D => \display0/N_673_i_0\, CLK => clk_c, CLR => 
        oled_reset_c_c, Q => \display0/ena_net_1\);
    
    \display0/i2c0/databit_RNO[29]\ : NOR2A
      port map(A => \display0/i2c0/N_1019_tz\, B => 
        \display0/i2c0/un1_state_7\, Y => \display0/i2c0/N_1019\);
    
    \display0/bytecount_0_RNIU4383[6]\ : OR3
      port map(A => \display0/un1_bytecount_11\, B => 
        \display0/un1_bytecount_10\, C => 
        \display0/un1_bytecount_12\, Y => 
        \display0/un1_bytecount_144\);
    
    \display0/burstNo[29]\ : DFN1C0
      port map(D => \display0/burstNo_4[29]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[29]_net_1\);
    
    \address[2]\ : DFN1E1C0
      port map(D => N_16, CLK => clk_c, CLR => oled_reset_c_c, E
         => addresse, Q => \address[2]_net_1\);
    
    \display0/burstNo_RNIP49A[13]\ : NOR2
      port map(A => \display0/burstNo[13]_net_1\, B => 
        \display0/burstNo[12]_net_1\, Y => 
        \display0/burstno_26_0_a2_3\);
    
    \display0/bytecount_0_RNIJ4M301[1]\ : AOI1B
      port map(A => \display0/burst_reg_2_1_i_a2_0[1]\, B => 
        \display0/un1_burst_reg_1002\, C => 
        \display0/un1_bytecount_44\, Y => 
        \display0/burst_reg_2_1_m_0[3]\);
    
    \display0/bytecount_RNI8E3Q4_2[5]\ : OR2
      port map(A => \display0/un1_bytecount_101\, B => 
        \display0/un1_bytecount_100\, Y => \display0/N_621_5\);
    
    \display0/busy\ : DFN1C0
      port map(D => \display0/busy_2\, CLK => clk_c, CLR => 
        oled_reset_c_c, Q => busy);
    
    \display0/busy_RNO\ : NOR2
      port map(A => \display0/state[5]_net_1\, B => 
        \display0/state[0]_net_1\, Y => \display0/busy_2\);
    
    \display0/burstNo_RNI4V45[1]\ : NOR2B
      port map(A => \display0/burstno_18\, B => 
        \display0/burst_reg_1003_1\, Y => 
        \display0/burst_reg_1003_2\);
    
    \display0/bytecount_0_RNIC2MN[1]\ : NOR3A
      port map(A => \display0/un1_bytecount_66_2\, B => 
        \display0/bytecount_0[5]_net_1\, C => 
        \display0/bytecount_0[1]_net_1\, Y => 
        \display0/un1_bytecount_33\);
    
    \display0/bytecount_0_RNIRPRC1[6]\ : NOR3A
      port map(A => \display0/un1_bytecount_99_2\, B => 
        \display0/N_81\, C => \display0/bytecount_0[6]_net_1\, Y
         => \display0/un1_bytecount_11\);
    
    \display0/data_i2c_RNO_7[0]\ : OR2
      port map(A => \display0/N_643_3\, B => \display0/N_643_4\, 
        Y => \display0/data_i2c_2_1_3[0]\);
    
    \display0/i2c0/addrbit_RNITQPV[18]\ : NOR3C
      port map(A => \display0/i2c0/addrbit_m1_e_1_1\, B => 
        \display0/i2c0/addrbit_m1_e_1_0\, C => 
        \display0/i2c0/addrbit_m1_e_1_3\, Y => 
        \display0/i2c0/addrbit_m1_e_1_6\);
    
    \display0/data_i2c_RNO_7[1]\ : OR2
      port map(A => \display0/un1_bytecount_60\, B => 
        \display0/un1_bytecount_48\, Y => 
        \display0/data_i2c_2_1_0[1]\);
    
    \display0/burstNo_RNO[17]\ : XA1
      port map(A => \display0/burstNo[17]_net_1\, B => 
        \display0/DWACT_ADD_CI_0_g_array_12_7[0]\, C => 
        \display0/un1_ena_2\, Y => \display0/burstNo_4[17]\);
    
    \display0/i2c0/state_RNO[19]\ : NOR2B
      port map(A => \display0/ena_net_1\, B => 
        \display0/i2c0/state[20]_net_1\, Y => 
        \display0/i2c0/N_243\);
    
    \display0/i2c0/databit_RNO_0[29]\ : AX1B
      port map(A => \display0/i2c0/N_1047\, B => 
        \display0/i2c0/databit[28]_net_1\, C => 
        \display0/i2c0/databit[29]_net_1\, Y => 
        \display0/i2c0/N_1019_tz\);
    
    \display0/i2c0/databit_RNO[25]\ : OA1C
      port map(A => \display0/i2c0/N_104\, B => 
        \display0/i2c0/databit_n25_i_0_a2_0\, C => 
        \display0/i2c0/un1_state_7_0\, Y => \display0/i2c0/N_813\);
    
    \display0/i2c0/databit_RNIQ218[25]\ : OR3
      port map(A => \display0/i2c0/databit[24]_net_1\, B => 
        \display0/i2c0/databit[25]_net_1\, C => 
        \display0/i2c0/databit_N_13_mux_i_0_1\, Y => 
        \display0/i2c0/databit_N_13_mux_i_0_6\);
    
    \display0/bytecount_RNI4N1D2_6[5]\ : NOR3B
      port map(A => \display0/un1_bytecount_94_1\, B => 
        \display0/un1_bytecount_99_5\, C => \display0/N_71\, Y
         => \display0/un1_bytecount_101\);
    
    \display0/busy_RNIAHP51\ : AXOI1
      port map(A => busy, B => \state[1]_net_1\, C => 
        \state[0]_net_1\, Y => addresse);
    
    \display0/i2c0/databit_RNIA9195[23]\ : OR2
      port map(A => \display0/i2c0/databit[23]_net_1\, B => 
        \display0/i2c0/N_1041\, Y => \display0/i2c0/N_1044\);
    
    \display0/i2c0/counter[1]\ : DFN1P0
      port map(D => \display0/i2c0/N_77\, CLK => clk_c, PRE => 
        oled_reset_c_c, Q => \display0/i2c0/counter_i_0[1]\);
    
    \display0/burstNo[3]\ : DFN1C0
      port map(D => \display0/burstNo_4[3]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[3]_net_1\);
    
    \counter[16]\ : DFN1
      port map(D => counter_n16, CLK => clk_c, Q => 
        \counter[16]_net_1\);
    
    \display0/burstNo[31]\ : DFN1C0
      port map(D => \display0/burstNo_4[31]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[31]_net_1\);
    
    \display0/bytecount_RNIOAOLS_0[6]\ : NOR2A
      port map(A => \display0/un1_bytecount_55\, B => 
        \display0/N_575\, Y => \display0/burst_reg_20_m_6[2]\);
    
    \state_RNO_1[1]\ : NOR3A
      port map(A => \state_ns_i_a2_i_a4_2[1]\, B => 
        \address[4]_net_1\, C => \address[5]_net_1\, Y => 
        \state_ns_i_a2_i_a4_4[1]\);
    
    \display0/i2c0/state[10]\ : DFN1E1C0
      port map(D => \display0/i2c0/state[11]_net_1\, CLK => clk_c, 
        CLR => oled_reset_c_c, E => \display0/i2c0/un1_i2c0_0\, Q
         => \display0/i2c0/state[10]_net_1\);
    
    \display0/i2c0/addrbit_RNO[15]\ : XA1C
      port map(A => \display0/i2c0/addrbit[15]_net_1\, B => 
        \display0/i2c0/N_908\, C => \display0/i2c0/un1_state_8_0\, 
        Y => \display0/i2c0/N_767\);
    
    \display0/bytecount_0_RNIIP9HC[4]\ : OR3
      port map(A => \display0/un1_bytecount_153_1\, B => 
        \display0/un1_bytecount_153_0\, C => 
        \display0/un1_bytecount_153_2\, Y => 
        \display0/un1_bytecount_153\);
    
    \display0/i2c0/addrbit[2]\ : DFN1E1P0
      port map(D => \display0/i2c0/N_889\, CLK => clk_c, PRE => 
        oled_reset_c_c, E => \display0/i2c0/addrbite\, Q => 
        \display0/i2c0/addrbit[2]_net_1\);
    
    \display0/bytecount_RNI4N1D2[5]\ : NOR3A
      port map(A => \display0/burst_reg_1006_m_15_0\, B => 
        \display0/N_93\, C => \display0/N_127\, Y => 
        \display0/burst_reg_1006_m_15_1\);
    
    \display0/burstNo_RNI3I91[9]\ : NOR2
      port map(A => \display0/burstNo[9]_net_1\, B => 
        \display0/burstNo[8]_net_1\, Y => 
        \display0/burstno_26_0_a2_1\);
    
    \display0/i2c0/state_RNO[5]\ : AND3B
      port map(A => \display0/i2c0/databit[31]_net_1\, B => 
        \display0/i2c0/N_1057\, C => 
        \display0/i2c0/state[6]_net_1\, Y => 
        \display0/i2c0/state_ns[15]\);
    
    \display0/data_i2c_RNO_21[0]\ : OR3
      port map(A => \display0/un1_bytecount_136\, B => 
        \display0/un1_bytecount_62\, C => 
        \display0/un1_bytecount_80\, Y => 
        \display0/data_i2c_2_0_6[0]\);
    
    \display0/bytecount_RNO[3]\ : XA1
      port map(A => \display0/bytecount[3]_net_1\, B => 
        \display0/bytecount_44_0\, C => \display0/N_673_i_0\, Y
         => \display0/bytecount_n3\);
    
    \display0/bytecount[21]\ : DFN1E0C0
      port map(D => \display0/bytecount_n21\, CLK => clk_c, CLR
         => oled_reset_c_c, E => \display0/N_43_0_0\, Q => 
        \display0/bytecount[21]_net_1\);
    
    \display0/data_i2c_RNO_7[2]\ : OA1B
      port map(A => \display0/un1_bytecount_48\, B => 
        \display0/data_i2c_2_1_0[2]\, C => \display0/N_575_0\, Y
         => \display0/burst_reg_3_m_12[0]\);
    
    \display0/state_RNO[4]\ : OAI1
      port map(A => \display0/N_86\, B => \display0/N_921\, C => 
        \display0/N_879_tz\, Y => \display0/state_RNO[4]_net_1\);
    
    \display0/i2c0/addrbit[15]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_767\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite_0\, Q => 
        \display0/i2c0/addrbit[15]_net_1\);
    
    \display0/i2c0/addrbit_RNO[8]\ : XA1C
      port map(A => \display0/i2c0/addrbit[8]_net_1\, B => 
        \display0/i2c0/N_901\, C => \display0/i2c0/un1_state_8_0\, 
        Y => \display0/i2c0/N_760\);
    
    \display0/bytecount_RNI4N1D2_8[6]\ : NOR2B
      port map(A => \display0/un1_bytecount_43_4\, B => 
        \display0/un1_bytecount_57_5\, Y => 
        \display0/un1_bytecount_43\);
    
    \display0/bytecount_RNO[2]\ : XA1A
      port map(A => \display0/bytecount[2]_net_1\, B => 
        \display0/N_93\, C => \display0/N_673_i_0\, Y => 
        \display0/N_31\);
    
    \display0/burstNo_RNO[1]\ : XA1
      port map(A => \display0/burstNo[1]_net_1\, B => 
        \display0/DWACT_ADD_CI_0_TMP[0]\, C => 
        \display0/un1_ena_2_0\, Y => \display0/burstNo_4[1]\);
    
    \display0/burstNo[27]\ : DFN1C0
      port map(D => \display0/burstNo_4[27]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[27]_net_1\);
    
    \display0/bytecount_RNIPG0M_0[4]\ : NOR2A
      port map(A => \display0/bytecount[4]_net_1\, B => 
        \display0/bytecount[3]_net_1\, Y => 
        \display0/un1_bytecount_156_0\);
    
    \display0/bytecount_RNI5C122[5]\ : NOR3B
      port map(A => \display0/un1_bytecount_66_2\, B => 
        \display0/un1_bytecount_62_3\, C => \display0/N_48\, Y
         => \display0/un1_bytecount_35\);
    
    \display0/data_i2c_RNO_10[6]\ : OR2
      port map(A => \display0/un1_bytecount_178\, B => 
        \display0/data_i2c_2_2_iv_0_tz_1[6]\, Y => 
        \display0/data_i2c_2_2_iv_0_tz_3[6]\);
    
    \display0/counter_n5\ : XOR2
      port map(A => \counter[5]_net_1\, B => 
        \display0/counter_c4_net_1\, Y => counter_n5);
    
    \display0/i2c0/addrbit_RNI68F13[8]\ : OR2
      port map(A => \display0/i2c0/N_901\, B => 
        \display0/i2c0/addrbit[8]_net_1\, Y => 
        \display0/i2c0/N_902\);
    
    \display0/bytecount_RNI9AG11[22]\ : NOR3C
      port map(A => \display0/bytecount[22]_net_1\, B => 
        \display0/bytecount[16]_net_1\, C => 
        \display0/bytecount[21]_net_1\, Y => 
        \display0/bytecount_m6_0_a2_4\);
    
    \display0/bytecount_RNI4RBM[28]\ : NOR2
      port map(A => \display0/bytecount[26]_net_1\, B => 
        \display0/bytecount[28]_net_1\, Y => 
        \display0/un2_busy_byte_NE_i_a2_2\);
    
    \display0/burstNo_RNO[15]\ : NOR2B
      port map(A => \display0/I_118\, B => \display0/un1_ena_2_0\, 
        Y => \display0/burstNo_4[15]\);
    
    \display0/bytecount_RNI4N1D2_9[6]\ : NOR2B
      port map(A => \display0/un1_bytecount_46_0\, B => 
        \display0/un1_bytecount_57_5\, Y => 
        \display0/un1_bytecount_46\);
    
    \display0/bytecount_RNIP1KFC[4]\ : OR3
      port map(A => \display0/un1_bytecount_106\, B => 
        \display0/un1_bytecount_150_1\, C => 
        \display0/un1_bytecount_150_1_0\, Y => 
        \display0/un1_bytecount_150\);
    
    \display0/data_i2c_RNO_3[7]\ : OA1B
      port map(A => \display0/data_i2c_2_0_3[7]\, B => 
        \display0/data_i2c_2_0_4[7]\, C => \display0/N_575_0\, Y
         => \display0/burst_reg_3_m_19[0]\);
    
    \display0/counter_n2\ : AX1C
      port map(A => \counter[0]_net_1\, B => \counter[1]_net_1\, 
        C => \counter[2]_net_1\, Y => counter_n2);
    
    \display0/bytecount[3]\ : DFN1E0C0
      port map(D => \display0/bytecount_n3\, CLK => clk_c, CLR
         => oled_reset_c_c, E => \display0/N_43_0\, Q => 
        \display0/bytecount[3]_net_1\);
    
    \display0/data_i2c_RNO_10[1]\ : OA1B
      port map(A => \display0/un1_bytecount_45\, B => 
        \display0/data_i2c_1_1_0[1]\, C => \display0/N_575_0\, Y
         => \display0/burst_reg_3_m_2[0]\);
    
    \display0/burstNo_RNO[28]\ : XA1
      port map(A => \display0/burstNo[28]_net_1\, B => 
        \display0/DWACT_ADD_CI_0_g_array_10_2[0]\, C => 
        \display0/un1_ena_2\, Y => \display0/burstNo_4[28]\);
    
    \display0/i2c0/databit[28]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_816\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite\, Q => 
        \display0/i2c0/databit[28]_net_1\);
    
    \display0/i2c0/state[15]\ : DFN1E1C0
      port map(D => \display0/i2c0/state[16]_net_1\, CLK => clk_c, 
        CLR => oled_reset_c_c, E => \display0/i2c0/un1_i2c0_0\, Q
         => \display0/i2c0/state[15]_net_1\);
    
    \display0/bytecount_RNI8E3Q4_0[0]\ : OR2
      port map(A => \display0/un1_bytecount_56\, B => 
        \display0/un1_bytecount_58\, Y => \display0/N_661_1\);
    
    \display0/bytecount_RNIOF0M[4]\ : NOR2B
      port map(A => \display0/bytecount[2]_net_1\, B => 
        \display0/bytecount[4]_net_1\, Y => 
        \display0/un1_bytecount_87_2\);
    
    \display0/bytecount[28]\ : DFN1E0C0
      port map(D => \display0/N_928\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/N_43\, Q => 
        \display0/bytecount[28]_net_1\);
    
    \display0/data_i2c_RNO[4]\ : MX2
      port map(A => \display0/un1_state_7\, B => 
        \display0/data_i2c_2[4]\, S => \display0/N_43\, Y => 
        \display0/un1_state_12[3]\);
    
    \display0/bytecount_RNISJ0M[4]\ : NOR2B
      port map(A => \display0/bytecount[4]_net_1\, B => 
        \display0/bytecount[6]_net_1\, Y => 
        \display0/un1_bytecount_116_2\);
    
    \display0/i2c0/databit[27]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_815\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite\, Q => 
        \display0/i2c0/databit[27]_net_1\);
    
    \display0/bytecount_RNI4N1D2_3[5]\ : NOR3B
      port map(A => \display0/un1_bytecount_94_1\, B => 
        \display0/un1_bytecount_115_5\, C => \display0/N_127\, Y
         => \display0/un1_bytecount_114\);
    
    \display0/bytecount_RNI4N1D2_5[5]\ : NOR3C
      port map(A => \display0/un1_bytecount_99_5\, B => 
        \display0/un1_bytecount_99_1\, C => 
        \display0/un1_bytecount_99_2\, Y => 
        \display0/un1_bytecount_99\);
    
    \display0/i2c0/scl_1_RNO_1\ : NOR3
      port map(A => \display0/i2c0/state[19]_net_1\, B => 
        \display0/i2c0/state[13]_net_1\, C => 
        \display0/i2c0/state[4]_net_1\, Y => 
        \display0/i2c0/scl_1_1_0_i_a2_0_a2_0_a2_3\);
    
    \display0/i2c0/state[3]\ : DFN1E1C0
      port map(D => \display0/i2c0/state[4]_net_1\, CLK => clk_c, 
        CLR => oled_reset_c_c, E => \display0/i2c0/un1_i2c0\, Q
         => \display0/i2c0/state[3]_net_1\);
    
    \counter[24]\ : DFN1
      port map(D => counter_n24, CLK => clk_c, Q => 
        \counter[24]_net_1\);
    
    \display0/bytecount_0_RNIQORC1[6]\ : NOR3C
      port map(A => \display0/un1_bytecount_27_0\, B => 
        \display0/bytecount_0[6]_net_1\, C => 
        \display0/un1_bytecount_94_2\, Y => 
        \display0/un1_bytecount_27\);
    
    \display0/burstNo_RNIIV951[0]\ : NOR3C
      port map(A => \display0/burstno_26\, B => 
        \display0/burst_reg_1006_29_0_a2_0_2\, C => 
        \display0/burstNo[0]_net_1\, Y => \display0/burstno_29\);
    
    \D1_pad/U0/U1\ : IOTRI_OB_EB
      port map(D => \counter_c[23]\, E => \VCC\, DOUT => 
        \D1_pad/U0/NET1\, EOUT => \D1_pad/U0/NET2\);
    
    \display0/counter_c2\ : NOR3C
      port map(A => \counter[0]_net_1\, B => \counter[1]_net_1\, 
        C => \counter[2]_net_1\, Y => \display0/counter_c2_net_1\);
    
    \display0/bytecount_RNI4N1D2_2[1]\ : NOR3B
      port map(A => \display0/un1_bytecount_88_3\, B => 
        \display0/un1_bytecount_57_5\, C => \display0/N_71\, Y
         => \display0/un1_bytecount_52\);
    
    \display0/bytecount_RNI4N1D2[0]\ : NOR3C
      port map(A => \display0/un1_bytecount_94_2\, B => 
        \display0/un1_bytecount_56_2\, C => 
        \display0/un1_bytecount_57_5\, Y => 
        \display0/un1_bytecount_50\);
    
    \display0/i2c0/state_RNIQ5LI[5]\ : NOR2
      port map(A => \display0/i2c0/state[5]_net_1\, B => 
        \display0/i2c0/state[3]_net_1\, Y => 
        \display0/i2c0/N_653_1\);
    
    \display0/i2c0/databit_RNO[3]\ : XA1C
      port map(A => \display0/i2c0/databit[3]_net_1\, B => 
        \display0/i2c0/N_1021\, C => 
        \display0/i2c0/un1_state_7_0\, Y => \display0/i2c0/N_723\);
    
    \display0/i2c0/counter_RNO[3]\ : XO1A
      port map(A => \display0/i2c0/N_1049\, B => 
        \display0/i2c0/counter_i_0[3]\, C => 
        \display0/i2c0/state[20]_net_1\, Y => 
        \display0/i2c0/N_81\);
    
    \display0/bytecount_0_RNI3HG2[1]\ : NOR3C
      port map(A => \display0/bytecount_0[4]_net_1\, B => 
        \display0/bytecount_0[1]_net_1\, C => 
        \display0/bytecount_0[6]_net_1\, Y => 
        \display0/bytecount_m6_0_a2_5_6\);
    
    \display0/data_i2c_RNO_1[6]\ : OR3
      port map(A => \display0/burst_reg_3_m_17[0]\, B => 
        \display0/data_i2c_2_2_iv_0[6]\, C => 
        \display0/burst_reg_3_m_9[0]\, Y => 
        \display0/data_i2c_2[6]\);
    
    \display0/bytecount_RNI9G122[5]\ : NOR3B
      port map(A => \display0/un1_bytecount_26_3\, B => 
        \display0/un1_bytecount_99_2\, C => \display0/N_127\, Y
         => \display0/un1_bytecount_20\);
    
    \address_RNO[2]\ : XA1A
      port map(A => \address[2]_net_1\, B => N_28, C => N_48, Y
         => N_16);
    
    \display0/i2c0/addrbit_RNIE0AB1[3]\ : OR2
      port map(A => \display0/i2c0/N_896\, B => 
        \display0/i2c0/addrbit[3]_net_1\, Y => 
        \display0/i2c0/N_897\);
    
    \display0/bytecount_RNIMP011[1]\ : NOR2A
      port map(A => \display0/un1_bytecount_41_2\, B => 
        \display0/bytecount[1]_net_1\, Y => 
        \display0/un1_bytecount_78_5\);
    
    \display0/i2c0/state_RNIOV596[20]\ : AO1
      port map(A => \display0/i2c0/N_274\, B => 
        \display0/i2c0/N_188_1\, C => 
        \display0/i2c0/state[20]_net_1\, Y => 
        \display0/i2c0/un1_state_8\);
    
    \display0/data_i2c_RNO_9[5]\ : OR3
      port map(A => \display0/data_i2c_2_2_iv_1_tz_0[5]\, B => 
        \display0/un1_bytecount_101\, C => 
        \display0/un1_bytecount_147_1\, Y => 
        \display0/data_i2c_2_2_iv_1_tz_4[5]\);
    
    \display0/data_i2c_RNO_25[1]\ : OR3
      port map(A => \display0/data_i2c_1_0_0[1]\, B => 
        \display0/un1_bytecount_177\, C => 
        \display0/un1_bytecount_158\, Y => 
        \display0/data_i2c_1_0_4[1]\);
    
    \counter[22]\ : DFN1
      port map(D => counter_n22, CLK => clk_c, Q => 
        \counter[22]_net_1\);
    
    \display0/bytecount_0_RNI2SMO1_2[5]\ : NOR3B
      port map(A => \display0/un1_bytecount_64_0\, B => 
        \display0/un1_bytecount_66_2\, C => \display0/N_71\, Y
         => \display0/un1_bytecount_64\);
    
    \D1_pad/U0/U0\ : IOPAD_TRI
      port map(D => \D1_pad/U0/NET1\, E => \D1_pad/U0/NET2\, PAD
         => D1);
    
    \clk_pad/U0/U0\ : IOPAD_IN
      port map(PAD => clk, Y => \clk_pad/U0/NET1\);
    
    \display0/data_i2c_RNO_8[2]\ : OR3
      port map(A => \display0/data_i2c_1_2_iv_1[2]\, B => 
        \display0/burst_reg_2_1_m[3]\, C => 
        \display0/burst_reg_3_m_3[0]\, Y => 
        \display0/data_i2c_1_2_iv_3[2]\);
    
    \display0/bytecount_RNI5JNC1[27]\ : NOR3A
      port map(A => \display0/un2_busy_byte_NE_i_a2_2\, B => 
        \display0/bytecount[27]_net_1\, C => 
        \display0/bytecount[24]_net_1\, Y => 
        \display0/un2_busy_byte_NE_i_a2_13\);
    
    \display0/bytecount_0_RNI4ODH3[5]\ : AO1
      port map(A => \display0/un1_bytecount_68_0\, B => 
        \display0/un1_bytecount_92_4\, C => 
        \display0/un1_bytecount_73\, Y => 
        \display0/un1_bytecount_147_1\);
    
    \display0/bytecount_0_RNI07RM[1]\ : NOR2B
      port map(A => \display0/bytecount_0[1]_net_1\, B => 
        \display0/un1_bytecount_83_3\, Y => 
        \display0/un1_bytecount_176_1\);
    
    \display0/burstNo[5]\ : DFN1C0
      port map(D => \display0/burstNo_4[5]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[5]_net_1\);
    
    \display0/i2c0/state[7]\ : DFN1E1C0
      port map(D => \display0/i2c0/state[8]_net_1\, CLK => clk_c, 
        CLR => oled_reset_c_c, E => \display0/i2c0/un1_i2c0\, Q
         => \display0/i2c0/state[7]_net_1\);
    
    \display0/i2c0/sda_e_RNO_0\ : NOR2
      port map(A => \display0/i2c0/state[9]_net_1\, B => 
        \display0/i2c0/state[4]_net_1\, Y => 
        \display0/i2c0/un1_state_6_0_a2_0_a3_0_a2_1\);
    
    \display0/burstNo_RNO[19]\ : NOR2B
      port map(A => \display0/I_128\, B => \display0/un1_ena_2\, 
        Y => \display0/burstNo_4[19]\);
    
    \display0/un1_burstNo_2_I_143\ : NOR3C
      port map(A => \display0/DWACT_ADD_CI_0_pog_array_1_1[0]\, B
         => \display0/DWACT_ADD_CI_0_pog_array_1_2[0]\, C => 
        \display0/DWACT_ADD_CI_0_g_array_2[0]\, Y => 
        \display0/DWACT_ADD_CI_0_g_array_3[0]\);
    
    \display0/i2c0/addrbit_RNO[13]\ : XA1C
      port map(A => \display0/i2c0/addrbit[13]_net_1\, B => 
        \display0/i2c0/N_906\, C => \display0/i2c0/un1_state_8_0\, 
        Y => \display0/i2c0/N_765\);
    
    \counter[8]\ : DFN1
      port map(D => counter_n8, CLK => clk_c, Q => 
        \counter[8]_net_1\);
    
    \display0/data_i2c_RNO_31[0]\ : OR2
      port map(A => \display0/data_i2c_1_0_10[0]\, B => 
        \display0/un1_bytecount_52\, Y => 
        \display0/data_i2c_1_0_13[0]\);
    
    \display0/bytecount_RNINE0M_2[2]\ : NOR2
      port map(A => \display0/bytecount[2]_net_1\, B => 
        \display0/bytecount[3]_net_1\, Y => 
        \display0/un1_bytecount_83_3\);
    
    \display0/counter_c18\ : NOR3C
      port map(A => \display0/counter_c16_net_1\, B => 
        \counter[17]_net_1\, C => \counter[18]_net_1\, Y => 
        \display0/counter_c18_net_1\);
    
    \display0/i2c0/state[14]\ : DFN1E1C0
      port map(D => \display0/i2c0/state_ns[6]\, CLK => clk_c, 
        CLR => oled_reset_c_c, E => \display0/i2c0/un1_i2c0_0\, Q
         => \display0/i2c0/state[14]_net_1\);
    
    \display0/bytecount_0_RNI6JO54_0[4]\ : AO1
      port map(A => \display0/un1_bytecount_74_0\, B => 
        \display0/un1_bytecount_76_5\, C => 
        \display0/un1_bytecount_107\, Y => 
        \display0/un1_bytecount_151_1\);
    
    \display0/i2c0/databit_RNICMR23[6]\ : OR3
      port map(A => \display0/i2c0/databit[5]_net_1\, B => 
        \display0/i2c0/N_1023\, C => 
        \display0/i2c0/databit[6]_net_1\, Y => 
        \display0/i2c0/N_1025\);
    
    \display0/data_i2c_RNO_19[2]\ : AOI1D
      port map(A => \display0/un1_bytecount_147\, B => 
        \display0/data_i2c_1_0_6[2]_net_1\, C => 
        \display0/burst_reg_1006\, Y => 
        \display0/burst_reg_1006_m_4\);
    
    \display0/data_i2c_RNO_6[7]\ : OR3
      port map(A => \display0/un1_bytecount_46\, B => 
        \display0/un1_bytecount_54\, C => 
        \display0/data_i2c_2_0_1[7]\, Y => 
        \display0/data_i2c_2_0_3[7]\);
    
    \display0/bytecount_RNI4N1D2[1]\ : NOR3A
      port map(A => \display0/un1_bytecount_78_5\, B => 
        \display0/N_67\, C => \display0/N_81\, Y => 
        \display0/un1_bytecount_78\);
    
    \display0/data_i2c_RNO_20[0]\ : OR3
      port map(A => \display0/data_i2c_2_0_1[0]\, B => 
        \display0/un1_bytecount_100\, C => 
        \display0/un1_bytecount_170\, Y => 
        \display0/data_i2c_2_0_5[0]\);
    
    \display0/bytecount_RNIRFHP8[28]\ : OR2A
      port map(A => \display0/bytecount[28]_net_1\, B => 
        \display0/N_53\, Y => \display0/N_55\);
    
    \display0/i2c0/state_RNIOV596_0[20]\ : AO1
      port map(A => \display0/i2c0/N_274\, B => 
        \display0/i2c0/N_188_1\, C => 
        \display0/i2c0/state[20]_net_1\, Y => 
        \display0/i2c0/un1_state_8_0\);
    
    \display0/i2c0/addrbit_RNILLGM4[17]\ : OR2
      port map(A => \display0/i2c0/N_910\, B => 
        \display0/i2c0/addrbit[17]_net_1\, Y => 
        \display0/i2c0/N_911\);
    
    \display0/data_i2c_RNO_14[5]\ : OR3
      port map(A => \display0/data_i2c_1_2_iv_1_tz_1[5]\, B => 
        \display0/un1_bytecount_158\, C => \display0/N_660_3\, Y
         => \display0/data_i2c_1_2_iv_1_tz_5[5]\);
    
    \display0/i2c0/addrbit[28]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_35\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite\, Q => 
        \display0/i2c0/addrbit[28]_net_1\);
    
    \display0/i2c0/state_tr8_0_a2_0_a2_1_19_RNIU9Q42\ : NOR3C
      port map(A => \display0/i2c0/state_tr8_0_a2_0_a2_1_15\, B
         => \display0/i2c0/state_tr8_0_a2_0_a2_1_14\, C => 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_19_net_1\, Y => 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_23\);
    
    \display0/bytecount_RNI8E3Q4_1[5]\ : OR2
      port map(A => \display0/un1_bytecount_102\, B => 
        \display0/un1_bytecount_101\, Y => \display0/N_642_5\);
    
    \display0/state[2]\ : DFN1C0
      port map(D => \display0/state_RNO[2]_net_1\, CLK => clk_c, 
        CLR => oled_reset_c_c, Q => \display0/state[2]_net_1\);
    
    \display0/data_i2c_RNO_2[2]\ : MX2
      port map(A => \display0/data_i2c[2]_net_1\, B => 
        \display0/data_i2c_1[2]\, S => \display0/state[4]_net_1\, 
        Y => \display0/un1_data_i2c_5\);
    
    \display0/i2c0/databit_RNO[6]\ : NOR2
      port map(A => \display0/i2c0/N_182_i\, B => 
        \display0/i2c0/un1_state_7\, Y => \display0/i2c0/N_726\);
    
    \display0/counter_n10\ : AX1C
      port map(A => \display0/counter_c8_net_1\, B => 
        \counter[9]_net_1\, C => \counter[10]_net_1\, Y => 
        counter_n10);
    
    \display0/data_i2c_RNO_4[1]\ : AO1
      port map(A => \display0/N_645\, B => 
        \display0/burst_reg_1006\, C => 
        \display0/data_i2c_2_2_iv_0[1]\, Y => 
        \display0/data_i2c_2_2_iv_1[1]\);
    
    \display0/bytecount_RNIL5JR3[5]\ : OR2
      port map(A => \display0/N_153\, B => 
        \display0/un1_bytecount_113\, Y => 
        \display0/un1_bytecount_177\);
    
    \display0/i2c0/addrbit_RNO[10]\ : XA1C
      port map(A => \display0/i2c0/addrbit[10]_net_1\, B => 
        \display0/i2c0/N_903\, C => \display0/i2c0/un1_state_8_0\, 
        Y => \display0/i2c0/N_762\);
    
    \display0/i2c0/databit_RNO[30]\ : XA1C
      port map(A => \display0/i2c0/N_1053\, B => 
        \display0/i2c0/databit[30]_net_1\, C => 
        \display0/i2c0/un1_state_7_0\, Y => \display0/i2c0/N_71\);
    
    \display0/i2c0/addrbit_RNIK6AB1[0]\ : NOR3A
      port map(A => \display0/i2c0/state_tr8_0_a2_0_a2_1_3\, B
         => \display0/i2c0/addrbit[4]_net_1\, C => 
        \display0/i2c0/addrbit[0]_net_1\, Y => 
        \display0/i2c0/state_tr8_0_a2_0_a2_1_14\);
    
    \display0/bytecount_RNINE0M[2]\ : OR2B
      port map(A => \display0/bytecount[3]_net_1\, B => 
        \display0/bytecount[2]_net_1\, Y => \display0/N_94\);
    
    \state_RNO[1]\ : AO1
      port map(A => \state_ns_i_a2_i_a4_5[1]\, B => 
        \state_ns_i_a2_i_a4_4[1]\, C => \state[1]_net_1\, Y => 
        N_8);
    
    \display0/data_i2c_RNO_18[2]\ : NOR2A
      port map(A => \display0/un1_bytecount_44\, B => 
        \display0/un1_burst_reg_1002_3\, Y => 
        \display0/burst_reg_3_m[2]\);
    
    \display0/bytecount_RNIJM011[5]\ : NOR2A
      port map(A => \display0/un1_bytecount_94_2\, B => 
        \display0/bytecount[5]_net_1\, Y => 
        \display0/un1_bytecount_115_5\);
    
    \display0/data_i2c_RNO_3[5]\ : OR3
      port map(A => \display0/un1_bytecount_45\, B => 
        \display0/un1_bytecount_62\, C => 
        \display0/data_i2c_2_1_1[5]\, Y => \display0/N_658\);
    
    \display0/data_i2c_RNO_17[5]\ : NOR3C
      port map(A => \display0/un1_bytecount_99_2\, B => 
        \display0/un1_bytecount_83_3\, C => 
        \display0/un1_bytecount_161_3\, Y => 
        \display0/un1_bytecount_159\);
    
    \display0/i2c0/busy_byte_RNO\ : NOR3B
      port map(A => 
        \display0/i2c0/busy_byte_1_0_a2_0_a2_0_a2_0_a2_1\, B => 
        \display0/i2c0/N_653_1\, C => \display0/i2c0/N_1056\, Y
         => \display0/i2c0/busy_byte_1\);
    
    \display0/burstNo_RNIKJM8Q[0]\ : NOR2A
      port map(A => \display0/un1_burst_reg_1002\, B => 
        \display0/burst_reg_1002\, Y => \display0/N_575_0\);
    
    \display0/burstNo[0]\ : DFN1C0
      port map(D => \display0/burstNo_4[0]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[0]_net_1\);
    
    \display0/i2c0/addrbit[5]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_757\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite\, Q => 
        \display0/i2c0/addrbit[5]_net_1\);
    
    \display0/data_i2c_RNO_12[2]\ : OR2
      port map(A => \display0/un1_bytecount_58\, B => 
        \display0/un1_bytecount_52\, Y => 
        \display0/data_i2c_2_1_0[2]\);
    
    \display0/data_i2c_RNO_16[5]\ : OR3
      port map(A => \display0/un1_bytecount_174\, B => 
        \display0/un1_bytecount_159\, C => 
        \display0/un1_bytecount_166\, Y => 
        \display0/data_i2c_1_2_iv_1_tz_1[5]\);
    
    \state_RNO_3[1]\ : NOR2B
      port map(A => \address[7]_net_1\, B => \address[6]_net_1\, 
        Y => \state_ns_i_a2_i_a4_2[1]\);
    
    \display0/i2c0/databit_RNO[20]\ : NOR2A
      port map(A => \display0/i2c0/N_809_tz\, B => 
        \display0/i2c0/un1_state_7\, Y => \display0/i2c0/N_809\);
    
    \display0/bytecount_0_RNI4ODH3[4]\ : AO1
      port map(A => \display0/un1_bytecount_75_0\, B => 
        \display0/un1_bytecount_76_5\, C => 
        \display0/un1_bytecount_87\, Y => 
        \display0/un1_bytecount_153_2\);
    
    \display0/un1_burstNo_2_I_184\ : NOR2B
      port map(A => \display0/DWACT_ADD_CI_0_g_array_4[0]\, B => 
        \display0/DWACT_ADD_CI_0_pog_array_2_3[0]\, Y => 
        \display0/DWACT_ADD_CI_0_g_array_10_1[0]\);
    
    \display0/burstNo[18]\ : DFN1C0
      port map(D => \display0/burstNo_4[18]\, CLK => clk_c, CLR
         => oled_reset_c_c, Q => \display0/burstNo[18]_net_1\);
    
    \display0/i2c0/addrbit[7]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_759\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite\, Q => 
        \display0/i2c0/addrbit[7]_net_1\);
    
    \display0/i2c0/addrbit[21]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_27\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/addrbite_0\, Q => 
        \display0/i2c0/addrbit[21]_net_1\);
    
    \display0/burstNo_RNO[26]\ : XA1
      port map(A => \display0/burstNo[26]_net_1\, B => 
        \display0/DWACT_ADD_CI_0_g_array_11_5[0]\, C => 
        \display0/un1_ena_2\, Y => \display0/burstNo_4[26]\);
    
    \display0/state_RNO[1]\ : AO1A
      port map(A => \display0/N_921\, B => \display0/N_86\, C => 
        \display0/N_54\, Y => \display0/N_18\);
    
    \display0/i2c0/databit_RNO[22]\ : OA1C
      port map(A => \display0/i2c0/N_1041\, B => 
        \display0/i2c0/databit_n22_i_0_a2_0\, C => 
        \display0/i2c0/un1_state_7_0\, Y => \display0/i2c0/N_811\);
    
    \display0/data_i2c_RNO_9[1]\ : AO1
      port map(A => \display0/burst_reg_1006_m_15_1\, B => 
        \display0/burst_reg_1006\, C => 
        \display0/burst_reg_2_1_m_0[3]\, Y => 
        \display0/data_i2c_2_2_iv_0[1]\);
    
    \display0/i2c0/state_RNO_0[17]\ : NOR2
      port map(A => \display0/i2c0/state[18]_net_1\, B => 
        \display0/i2c0/state[15]_net_1\, Y => 
        \display0/i2c0/N_105\);
    
    \display0/i2c0/databit_RNI0E1K[13]\ : NOR3A
      port map(A => \display0/i2c0/databit_N_13_mux_i_a0_1\, B
         => \display0/i2c0/databit[11]_net_1\, C => 
        \display0/i2c0/databit[13]_net_1\, Y => 
        \display0/i2c0/databit_N_13_mux_i_a0_6\);
    
    \display0/i2c0/addrbit_RNO_1[20]\ : OR2
      port map(A => \display0/i2c0/N_912\, B => 
        \display0/i2c0/addrbit[19]_net_1\, Y => 
        \display0/i2c0/N_913\);
    
    \display0/burstNo_RNIVCBA[25]\ : NOR2
      port map(A => \display0/burstNo[24]_net_1\, B => 
        \display0/burstNo[25]_net_1\, Y => 
        \display0/burst_reg_1002_30_4\);
    
    \display0/un1_burstNo_2_I_172\ : NOR2B
      port map(A => \display0/DWACT_ADD_CI_0_g_array_2[0]\, B => 
        \display0/DWACT_ADD_CI_0_pog_array_1_1[0]\, Y => 
        \display0/DWACT_ADD_CI_0_g_array_11[0]\);
    
    \display0/i2c0/addrbit_RNI4J4M1[4]\ : OR2
      port map(A => \display0/i2c0/N_897\, B => 
        \display0/i2c0/addrbit[4]_net_1\, Y => 
        \display0/i2c0/N_898\);
    
    \display0/bytecount_0_RNIM0MC[5]\ : NOR3
      port map(A => \display0/bytecount_0[5]_net_1\, B => 
        \display0/bytecount[2]_net_1\, C => 
        \display0/bytecount_0[6]_net_1\, Y => 
        \display0/un1_bytecount_64_0\);
    
    \display0/bytecount_RNIOF0M_0[4]\ : NOR2A
      port map(A => \display0/bytecount[4]_net_1\, B => 
        \display0/bytecount[2]_net_1\, Y => 
        \display0/un1_bytecount_167_1\);
    
    \display0/i2c0/databit[3]\ : DFN1E1C0
      port map(D => \display0/i2c0/N_723\, CLK => clk_c, CLR => 
        oled_reset_c_c, E => \display0/i2c0/databite\, Q => 
        \display0/i2c0/databit[3]_net_1\);
    
    \display0/i2c0/counter[3]\ : DFN1P0
      port map(D => \display0/i2c0/N_81\, CLK => clk_c, PRE => 
        oled_reset_c_c, Q => \display0/i2c0/counter_i_0[3]\);
    
    \display0/bytecount_0_RNIH7MN[5]\ : NOR2B
      port map(A => \display0/un1_bytecount_168_1\, B => 
        \display0/N_4_i\, Y => \display0/un1_bytecount_39\);
    
    \display0/burstNo_RNIC73O3_0[0]\ : NOR2B
      port map(A => \display0/burstno_29\, B => 
        \display0/N_57_17\, Y => \display0/burstno\);
    
    \display0/bytecount_RNIRI0M[4]\ : NOR2B
      port map(A => \display0/bytecount[4]_net_1\, B => 
        \display0/bytecount[5]_net_1\, Y => 
        \display0/un1_bytecount_93_3\);
    
    \display0/data_i2c_RNO_1[4]\ : OR3
      port map(A => \display0/burst_reg_3_m_14[0]\, B => 
        \display0/data_i2c_2_2_iv_0[4]\, C => 
        \display0/burst_reg_20_m_6[2]\, Y => 
        \display0/data_i2c_2[4]\);
    
    \display0/bytecount_RNO_0[25]\ : OA1C
      port map(A => \display0/bytecount[24]_net_1\, B => 
        \display0/N_45\, C => \display0/bytecount[25]_net_1\, Y
         => \display0/N_946\);
    
    \display0/bytecount_0_RNI5OR11[6]\ : NOR3B
      port map(A => \display0/bytecount_0[6]_net_1\, B => 
        \display0/un1_bytecount_57_3\, C => 
        \display0/bytecount[3]_net_1\, Y => 
        \display0/un1_bytecount_17_0\);
    
    \display0/data_i2c_RNO_2[5]\ : MX2
      port map(A => \display0/data_i2c[5]_net_1\, B => 
        \display0/data_i2c_1[5]\, S => \display0/state[4]_net_1\, 
        Y => \display0/un1_data_i2c_2\);
    
    \display0/bytecount_RNO[11]\ : NOR2A
      port map(A => \display0/N_673_i_0\, B => \display0/N_64_i\, 
        Y => \display0/N_10\);
    
    \display0/i2c0/addrbit_RNI5UKL[0]\ : OR2
      port map(A => \display0/i2c0/addrbit[1]_net_1\, B => 
        \display0/i2c0/addrbit[0]_net_1\, Y => 
        \display0/i2c0/N_895\);
    
    \display0/i2c0/sda_1_RNO_1\ : OR3
      port map(A => \display0/i2c0/un2_sda_0_0_0\, B => 
        \display0/i2c0/N_189\, C => \display0/i2c0/un2_sda_0_0_1\, 
        Y => \display0/i2c0/un2_sda_0_0_3\);
    
    \display0/i2c0/addrbit_RNIITKA[29]\ : NOR2
      port map(A => \display0/i2c0/addrbit[29]_net_1\, B => 
        \display0/i2c0/addrbit[30]_net_1\, Y => 
        \display0/i2c0/state_ns_i_a2_0_a2_0_4_0[3]\);
    
    \display0/burstNo_RNIS9BA[30]\ : NOR2
      port map(A => \display0/burstNo[30]_net_1\, B => 
        \display0/burstNo[16]_net_1\, Y => 
        \display0/burst_reg_1002_30_7\);
    
    \display0/counter_n13\ : XOR2
      port map(A => \counter[13]_net_1\, B => 
        \display0/counter_c12_net_1\, Y => counter_n13);
    
    \display0/bytecount_0_RNI2SMO1_4[5]\ : NOR3B
      port map(A => \display0/un1_bytecount_87_2\, B => 
        \display0/un1_bytecount_87_0\, C => \display0/N_93\, Y
         => \display0/un1_bytecount_87\);
    
    \display0/i2c0/sda_1_RNO_11\ : MX2C
      port map(A => \display0/data_i2c[1]_net_1\, B => 
        \display0/data_i2c[5]_net_1\, S => 
        \display0/i2c0/databit[2]_net_1\, Y => 
        \display0/i2c0/N_152\);
    
    \display0/bytecount_0_RNISER11[4]\ : NOR3
      port map(A => \display0/bytecount_0[4]_net_1\, B => 
        \display0/bytecount[3]_net_1\, C => \display0/N_67\, Y
         => \display0/un1_bytecount_23\);
    
    \state_RNO_2[1]\ : NOR3A
      port map(A => \state[0]_net_1\, B => \address[2]_net_1\, C
         => \address[3]_net_1\, Y => \state_ns_i_a2_i_a4_3[1]\);
    
    GND_power_inst1 : GND
      port map( Y => GND_power_net1);

    VCC_power_inst1 : VCC
      port map( Y => VCC_power_net1);


end DEF_ARCH; 
