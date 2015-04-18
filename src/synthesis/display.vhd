-- Version: v11.0 11.0.0.23

library ieee;
use ieee.std_logic_1164.all;
library igloo;
use igloo.all;

entity i2c is

    port( data_i2c_0_iv                     : in    std_logic_vector(6 to 6);
          data_i2c_4                        : in    std_logic;
          data_i2c_0                        : in    std_logic;
          data_i2c_2_d0                     : in    std_logic;
          data_i2c_1                        : in    std_logic;
          data_i2c_3                        : in    std_logic;
          bytecount_3                       : in    std_logic;
          bytecount_1                       : in    std_logic;
          bytecount_0_d0                    : in    std_logic;
          state_RNI1MUJ2                    : out   std_logic_vector(4 to 4);
          state_RNIE31T1                    : out   std_logic_vector(11 to 11);
          bytecount_0                       : in    std_logic_vector(0 to 0);
          data_i2c_2                        : in    std_logic_vector(7 to 7);
          data_i2c_1_m_4                    : in    std_logic_vector(5 to 5);
          data_i2c_1_m_3                    : in    std_logic_vector(5 to 5);
          data_c_2                          : in    std_logic;
          data_c_0                          : in    std_logic;
          state_RNI2UUTV3                   : out   std_logic_vector(0 to 0);
          state_0                           : in    std_logic_vector(3 to 3);
          state_i                           : out   std_logic_vector(21 to 21);
          state_21                          : out   std_logic;
          state_20                          : out   std_logic;
          clk_c                             : in    std_logic;
          N_254                             : in    std_logic;
          N_249_1                           : out   std_logic;
          N_253                             : in    std_logic;
          N_238                             : out   std_logic;
          data_i2c_0_sqmuxa                 : in    std_logic;
          busy_burst                        : out   std_logic;
          N_59                              : in    std_logic;
          N_237_1                           : out   std_logic;
          busy_byte_4                       : out   std_logic;
          N_219_i                           : in    std_logic;
          N_65                              : in    std_logic;
          N_13                              : in    std_logic;
          bytecount_e1_i_o2_0tt_m3_0_a2_1   : out   std_logic;
          busy_byte_0_a2_0_a2_0_a2_0_a2_0_0 : out   std_logic;
          N_392                             : in    std_logic;
          reset_c_c                         : in    std_logic
        );

end i2c;

architecture DEF_ARCH of i2c is 

  component DFN1E0C0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          CLR : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component AND3
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

  component DFN1E1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component XOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
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

  component NOR3B
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

  component MX2A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          S : in    std_logic := 'U';
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

  component OR2A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
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

  component OR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component MX2B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          S : in    std_logic := 'U';
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

  component GND
    port( Y : out   std_logic
        );
  end component;

  component NOR3A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR3C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
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

  component AND2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component DFN1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component DFN1P0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          PRE : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component XO1A
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

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component NOR2B
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

  component AO1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
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

  component OA1A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OA1C
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

  component OA1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

    signal \state_ns_i_0_i_a2_0_0[1]\, \state_ns_0_0_a2_0_0[7]\, 
        \state[15]_net_1\, N_274, \state_ns_i_0_0_a2_0[4]\, 
        \state[18]_net_1\, N_491_i_0_o2_1_0, \counter[5]_net_1\, 
        \counter[6]_net_1\, \counter[0]_net_1\, 
        \addrbit[0]_net_1\, \addrbit[2]_net_1\, 
        \addrbit[1]_net_1\, N_60, \databit[0]_net_1\, 
        \databit[1]_net_1\, un1_databit_0_sqmuxa_i_1, N_62, 
        \databit[2]_net_1\, N_610, \state_RNO[8]_net_1\, N_204, 
        N_273, N_205, N_613, \state_ns_i_0_0_a2_0[13]\, N_85, 
        N_491_i_0_o2_2, N_491_i_0_o2_1, 
        \un1_addrbit_0_sqmuxa_0_a2_1_a2_0_0\, \state[21]_net_1\, 
        N_228, \state[8]_net_1\, \state[6]_net_1\, N_568, N_615, 
        \state_ns[16]\, \state[5]_net_1\, \state_ns[19]\, 
        \state_ns_0_0_a2_0_0[19]\, \state[2]_net_1\, N_611, N_614, 
        \state[16]_net_1\, \state[17]_net_1\, \state[7]_net_1\, 
        \state_ns[7]\, \state[14]_net_1\, \state_RNO[17]_net_1\, 
        \un1_addrbit_1_0_0[1]_net_1\, \un1_addrbit[1]\, N_6, 
        \DWACT_ADD_CI_0_partial_sum[0]\, N_46, N_202, 
        \state_ns[0]\, \state[0]_net_1\, N_200, databite, 
        \DWACT_ADD_CI_0_partial_sum[1]\, \DWACT_ADD_CI_0_TMP[0]\, 
        \un1_addrbit_0_sqmuxa_0_a2_1_a2_0_0_RNI1LFA2\, un1_m3_e_3, 
        un1_m3_e_0, un1_m3_e_2, \counter[1]_net_1\, 
        \counter[3]_net_1\, \counter[2]_net_1\, 
        \counter[4]_net_1\, \un1_addrbit_1_0_0[2]_net_1\, 
        \un1_addrbit[0]\, \DWACT_ADD_CI_0_g_array_1[0]\, 
        \DWACT_ADD_CI_0_pog_array_0[0]\, 
        \DWACT_ADD_CI_0_g_array_0_1[0]\, 
        \DWACT_ADD_CI_0_partial_sum[2]\, N_6_0, N_4, 
        \DWACT_FINC_E[0]\, \state[9]_net_1\, \state[3]_net_1\, 
        \state[1]_net_1\, N_609, bytecount_e1_i_o2_0tt_m3_0_a2_0, 
        \state[20]_net_1\, busy_byte_0_a2_0_a2_0_a2_0_a2_4_1, 
        \state[4]_net_1\, N_216_1, un2_sda_1, N_101, N_215, 
        \data_i2c[5]\, \data_i2c_1[5]\, \data_i2c[7]\, 
        \data_m[7]_net_1\, \data_i2c_1_m[7]_net_1\, 
        \data_i2c_1_1[7]\, N_504_2, \state[11]_net_1\, 
        \state[10]_net_1\, N_550_3, N_550_4, N_550_5, N_550_1, 
        \state[13]_net_1\, \state[19]_net_1\, \busy_byte_4\, 
        N_249, \N_249_1\, N_97, N_100, N_98, N_99, N_95, N_96, 
        N_110, \counter_4[6]\, I_17, \counter_4[5]\, I_14, 
        \counter_4[4]\, I_12, \counter_4[3]\, I_9, \counter_4[2]\, 
        I_7, \counter_4[1]\, I_5, \state[12]_net_1\, N_2, 
        \DWACT_FINC_E[1]\, N_3, N_5, \GND\, \VCC\ : std_logic;

begin 

    state_21 <= \state[21]_net_1\;
    state_20 <= \state[20]_net_1\;
    N_249_1 <= \N_249_1\;
    busy_byte_4 <= \busy_byte_4\;

    \state[0]\ : DFN1E0C0
      port map(D => \state[1]_net_1\, CLK => clk_c, CLR => 
        reset_c_c, E => N_85, Q => \state[0]_net_1\);
    
    un4_counter_1_I_16 : AND3
      port map(A => \DWACT_FINC_E[0]\, B => \DWACT_FINC_E[1]\, C
         => \counter[5]_net_1\, Y => N_2);
    
    \state_RNO_0[20]\ : NOR2A
      port map(A => \state[20]_net_1\, B => \state[21]_net_1\, Y
         => \state_ns_i_0_i_a2_0_0[1]\);
    
    \databit[1]\ : DFN1E1
      port map(D => N_60, CLK => clk_c, E => databite, Q => 
        \databit[1]_net_1\);
    
    un1_addrbit_I_13 : XOR2
      port map(A => \DWACT_ADD_CI_0_partial_sum[1]\, B => 
        \DWACT_ADD_CI_0_TMP[0]\, Y => \un1_addrbit[1]\);
    
    \state_RNIRQUJ[3]\ : NOR3
      port map(A => \state[4]_net_1\, B => \state[5]_net_1\, C
         => \state[3]_net_1\, Y => 
        busy_byte_0_a2_0_a2_0_a2_0_a2_4_1);
    
    \state_RNO_0[2]\ : NOR3B
      port map(A => N_392, B => \state[3]_net_1\, C => state_0(3), 
        Y => \state_ns_0_0_a2_0_0[19]\);
    
    \data_i2c_1_0_a4_1_1[7]\ : NOR2A
      port map(A => bytecount_0(0), B => bytecount_3, Y => 
        \N_249_1\);
    
    \counter_RNINB1M[6]\ : OR3
      port map(A => \counter[5]_net_1\, B => \counter[6]_net_1\, 
        C => \counter[0]_net_1\, Y => N_491_i_0_o2_1_0);
    
    \databit[0]\ : DFN1E1
      port map(D => N_568, CLK => clk_c, E => databite, Q => 
        \databit[0]_net_1\);
    
    \state[10]\ : DFN1E0C0
      port map(D => \state[11]_net_1\, CLK => clk_c, CLR => 
        reset_c_c, E => N_85, Q => \state[10]_net_1\);
    
    \data_i2c_1_i_a4_1[3]\ : NOR2A
      port map(A => N_59, B => bytecount_0_d0, Y => N_237_1);
    
    \state_RNO[17]\ : MX2A
      port map(A => \state_ns_i_0_0_a2_0[4]\, B => 
        \state[17]_net_1\, S => N_85, Y => \state_RNO[17]_net_1\);
    
    \databit_RNIG8E012[1]\ : MX2
      port map(A => N_95, B => N_96, S => \databit[1]_net_1\, Y
         => N_97);
    
    \databit_RNO[0]\ : OR2A
      port map(A => \databit[0]_net_1\, B => 
        un1_databit_0_sqmuxa_i_1, Y => N_568);
    
    \state[6]\ : DFN1E0C0
      port map(D => \state[7]_net_1\, CLK => clk_c, CLR => 
        reset_c_c, E => N_85, Q => \state[6]_net_1\);
    
    \data_i2c_0_iv[7]\ : OR3
      port map(A => data_i2c_2(7), B => \data_m[7]_net_1\, C => 
        \data_i2c_1_m[7]_net_1\, Y => \data_i2c[7]\);
    
    \data_i2c_0_iv[5]\ : AO1A
      port map(A => N_13, B => data_c_0, C => \data_i2c_1[5]\, Y
         => \data_i2c[5]\);
    
    \counter_RNIC4ME[1]\ : OR2
      port map(A => \counter[1]_net_1\, B => \counter[3]_net_1\, 
        Y => N_491_i_0_o2_2);
    
    \counter[6]\ : DFN1E1
      port map(D => \counter_4[6]\, CLK => clk_c, E => reset_c_c, 
        Q => \counter[6]_net_1\);
    
    un4_counter_1_I_5 : XOR2
      port map(A => \counter[0]_net_1\, B => \counter[1]_net_1\, 
        Y => I_5);
    
    \state_RNO_3[8]\ : NOR2
      port map(A => \state[9]_net_1\, B => \state[6]_net_1\, Y
         => \state_ns_i_0_0_a2_0[13]\);
    
    \counter[3]\ : DFN1E1
      port map(D => \counter_4[3]\, CLK => clk_c, E => reset_c_c, 
        Q => \counter[3]_net_1\);
    
    \counter[2]\ : DFN1E1
      port map(D => \counter_4[2]\, CLK => clk_c, E => reset_c_c, 
        Q => \counter[2]_net_1\);
    
    \state_RNIFGVM[20]\ : NOR2
      port map(A => \state[20]_net_1\, B => \state[21]_net_1\, Y
         => busy_burst);
    
    \databit_RNIJQDH11[2]\ : MX2B
      port map(A => data_i2c_2_d0, B => data_i2c_0_iv(6), S => 
        \databit[2]_net_1\, Y => N_96);
    
    \un1_addrbit_1_0_0[2]\ : AO1A
      port map(A => N_614, B => N_228, C => \un1_addrbit[0]\, Y
         => \un1_addrbit_1_0_0[2]_net_1\);
    
    \state[4]\ : DFN1E0C0
      port map(D => \state[5]_net_1\, CLK => clk_c, CLR => 
        reset_c_c, E => N_85, Q => \state[4]_net_1\);
    
    un1_addrbit_I_9 : XOR2
      port map(A => \addrbit[0]_net_1\, B => 
        \un1_addrbit_0_sqmuxa_0_a2_1_a2_0_0_RNI1LFA2\, Y => 
        \DWACT_ADD_CI_0_partial_sum[0]\);
    
    \databit_RNI3L2ET[2]\ : MX2
      port map(A => data_i2c_3, B => \data_i2c[7]\, S => 
        \databit[2]_net_1\, Y => N_99);
    
    \state[7]\ : DFN1E0C0
      port map(D => \state[8]_net_1\, CLK => clk_c, CLR => 
        reset_c_c, E => N_85, Q => \state[7]_net_1\);
    
    \counter_RNO[1]\ : NOR2A
      port map(A => I_5, B => \state[21]_net_1\, Y => 
        \counter_4[1]\);
    
    \state[14]\ : DFN1C0
      port map(D => \state_ns[7]\, CLK => clk_c, CLR => reset_c_c, 
        Q => \state[14]_net_1\);
    
    \counter[4]\ : DFN1E1
      port map(D => \counter_4[4]\, CLK => clk_c, E => reset_c_c, 
        Q => \counter[4]_net_1\);
    
    \state[5]\ : DFN1C0
      port map(D => \state_ns[16]\, CLK => clk_c, CLR => 
        reset_c_c, Q => \state[5]_net_1\);
    
    GND_i : GND
      port map(Y => \GND\);
    
    un4_counter_1_I_9 : XOR2
      port map(A => N_5, B => \counter[3]_net_1\, Y => I_9);
    
    un4_counter_1_I_8 : AND3
      port map(A => \counter[0]_net_1\, B => \counter[1]_net_1\, 
        C => \counter[2]_net_1\, Y => N_5);
    
    \counter_RNIJBME[6]\ : NOR2
      port map(A => \counter[6]_net_1\, B => \counter[5]_net_1\, 
        Y => un1_m3_e_0);
    
    un4_counter_1_I_13 : AND3
      port map(A => \DWACT_FINC_E[0]\, B => \counter[3]_net_1\, C
         => \counter[4]_net_1\, Y => N_3);
    
    un1_addrbit_I_7 : XOR2
      port map(A => \addrbit[1]_net_1\, B => 
        \un1_addrbit_0_sqmuxa_0_a2_1_a2_0_0_RNI1LFA2\, Y => 
        \DWACT_ADD_CI_0_pog_array_0[0]\);
    
    \state_RNI50891[6]\ : NOR3A
      port map(A => \state[6]_net_1\, B => \databit[2]_net_1\, C
         => N_610, Y => N_273);
    
    \state_RNI1MUJ2[4]\ : OR3C
      port map(A => N_550_3, B => N_550_4, C => N_550_5, Y => 
        state_RNI1MUJ2(4));
    
    \data_i2c_1_0_1[7]\ : MX2C
      port map(A => bytecount_0(0), B => N_65, S => N_219_i, Y
         => \data_i2c_1_1[7]\);
    
    un1_addrbit_I_1 : AND2
      port map(A => \addrbit[0]_net_1\, B => 
        \un1_addrbit_0_sqmuxa_0_a2_1_a2_0_0_RNI1LFA2\, Y => 
        \DWACT_ADD_CI_0_TMP[0]\);
    
    \addrbit[2]\ : DFN1
      port map(D => \un1_addrbit_1_0_0[2]_net_1\, CLK => clk_c, Q
         => \addrbit[2]_net_1\);
    
    un1_addrbit_0_sqmuxa_0_a2_1_a2_0 : NOR2A
      port map(A => \un1_addrbit_0_sqmuxa_0_a2_1_a2_0_0\, B => 
        N_85, Y => N_228);
    
    \state[21]\ : DFN1P0
      port map(D => \state_ns[0]\, CLK => clk_c, PRE => reset_c_c, 
        Q => \state[21]_net_1\);
    
    \databit_RNO[2]\ : XO1A
      port map(A => \databit[2]_net_1\, B => N_610, C => 
        un1_databit_0_sqmuxa_i_1, Y => N_62);
    
    \state_RNO[21]\ : AO1A
      port map(A => N_85, B => \state[0]_net_1\, C => N_200, Y
         => \state_ns[0]\);
    
    \state_RNISH4I_0[0]\ : NOR2
      port map(A => \state[0]_net_1\, B => \state[20]_net_1\, Y
         => bytecount_e1_i_o2_0tt_m3_0_a2_0);
    
    \state_RNO_2[8]\ : AO1C
      port map(A => state_0(3), B => N_392, C => \state[3]_net_1\, 
        Y => N_613);
    
    un1_addrbit_I_11 : XOR2
      port map(A => \addrbit[2]_net_1\, B => 
        \un1_addrbit_0_sqmuxa_0_a2_1_a2_0_0_RNI1LFA2\, Y => 
        \DWACT_ADD_CI_0_partial_sum[2]\);
    
    \state[12]\ : DFN1E0C0
      port map(D => \state[13]_net_1\, CLK => clk_c, CLR => 
        reset_c_c, E => N_85, Q => \state[12]_net_1\);
    
    VCC_i : VCC
      port map(Y => \VCC\);
    
    \counter[1]\ : DFN1E1
      port map(D => \counter_4[1]\, CLK => clk_c, E => reset_c_c, 
        Q => \counter[1]_net_1\);
    
    un4_counter_1_I_12 : XOR2
      port map(A => N_4, B => \counter[4]_net_1\, Y => I_12);
    
    un1_addrbit_I_5 : AND2
      port map(A => \addrbit[1]_net_1\, B => 
        \un1_addrbit_0_sqmuxa_0_a2_1_a2_0_0_RNI1LFA2\, Y => 
        \DWACT_ADD_CI_0_g_array_0_1[0]\);
    
    \counter_RNO[5]\ : NOR2A
      port map(A => I_14, B => \state[21]_net_1\, Y => 
        \counter_4[5]\);
    
    \state_RNI1N361[9]\ : NOR2A
      port map(A => \busy_byte_4\, B => \state[9]_net_1\, Y => 
        N_504_2);
    
    \counter_RNO[3]\ : NOR2A
      port map(A => I_9, B => \state[21]_net_1\, Y => 
        \counter_4[3]\);
    
    \databit[2]\ : DFN1E1
      port map(D => N_62, CLK => clk_c, E => databite, Q => 
        \databit[2]_net_1\);
    
    un1_addrbit_I_14 : XOR2
      port map(A => \DWACT_ADD_CI_0_partial_sum[2]\, B => 
        \DWACT_ADD_CI_0_g_array_1[0]\, Y => \un1_addrbit[0]\);
    
    \state[9]\ : DFN1E0C0
      port map(D => \state[10]_net_1\, CLK => clk_c, CLR => 
        reset_c_c, E => N_85, Q => \state[9]_net_1\);
    
    \state_RNO[2]\ : MX2
      port map(A => \state_ns_0_0_a2_0_0[19]\, B => 
        \state[2]_net_1\, S => N_85, Y => \state_ns[19]\);
    
    \data_i2c_1_i_a4_0[3]\ : NOR2B
      port map(A => N_253, B => bytecount_1, Y => N_238);
    
    \counter[5]\ : DFN1E1
      port map(D => \counter_4[5]\, CLK => clk_c, E => reset_c_c, 
        Q => \counter[5]_net_1\);
    
    \addrbit[1]\ : DFN1
      port map(D => \un1_addrbit_1_0_0[1]_net_1\, CLK => clk_c, Q
         => \addrbit[1]_net_1\);
    
    un1_addrbit_0_sqmuxa_0_a2_1_a2_0_RNIQT8L : NOR2A
      port map(A => N_228, B => N_615, Y => 
        un1_databit_0_sqmuxa_i_1);
    
    un1_addrbit_0_sqmuxa_0_a2_1_a2_0_0 : NOR2A
      port map(A => reset_c_c, B => \state[21]_net_1\, Y => 
        \un1_addrbit_0_sqmuxa_0_a2_1_a2_0_0\);
    
    \databit_RNIDAMFS[2]\ : MX2
      port map(A => data_i2c_1, B => \data_i2c[5]\, S => 
        \databit[2]_net_1\, Y => N_98);
    
    \state[16]\ : DFN1E0C0
      port map(D => \state[17]_net_1\, CLK => clk_c, CLR => 
        reset_c_c, E => N_85, Q => \state[16]_net_1\);
    
    \state_RNIOOFB[21]\ : INV
      port map(A => \state[21]_net_1\, Y => state_i(21));
    
    \state_RNIAVGK1[13]\ : NOR3A
      port map(A => N_550_1, B => \state[10]_net_1\, C => 
        \state[13]_net_1\, Y => N_550_5);
    
    un4_counter_1_I_14 : XOR2
      port map(A => N_3, B => \counter[5]_net_1\, Y => I_14);
    
    \state[13]\ : DFN1E0C0
      port map(D => \state[14]_net_1\, CLK => clk_c, CLR => 
        reset_c_c, E => N_85, Q => \state[13]_net_1\);
    
    \data_m[7]\ : NOR2A
      port map(A => data_c_2, B => N_13, Y => \data_m[7]_net_1\);
    
    \counter_RNO[6]\ : NOR2A
      port map(A => I_17, B => \state[21]_net_1\, Y => 
        \counter_4[6]\);
    
    \state[8]\ : DFN1C0
      port map(D => \state_RNO[8]_net_1\, CLK => clk_c, CLR => 
        reset_c_c, Q => \state[8]_net_1\);
    
    \state_RNI99EV[1]\ : NOR3A
      port map(A => bytecount_e1_i_o2_0tt_m3_0_a2_0, B => 
        \state[1]_net_1\, C => \state[2]_net_1\, Y => 
        bytecount_e1_i_o2_0tt_m3_0_a2_1);
    
    \state[20]\ : DFN1C0
      port map(D => N_46, CLK => clk_c, CLR => reset_c_c, Q => 
        \state[20]_net_1\);
    
    \state_RNO_1[8]\ : NOR2A
      port map(A => N_85, B => \state[8]_net_1\, Y => N_205);
    
    \state[19]\ : DFN1E0C0
      port map(D => \state[20]_net_1\, CLK => clk_c, CLR => 
        reset_c_c, E => N_85, Q => \state[19]_net_1\);
    
    \databit_RNIR69LR3[0]\ : MX2
      port map(A => N_97, B => N_100, S => \databit[0]_net_1\, Y
         => N_101);
    
    un4_counter_1_I_11 : NOR2B
      port map(A => \counter[3]_net_1\, B => \DWACT_FINC_E[0]\, Y
         => N_4);
    
    \state_RNIJJEV[21]\ : NOR2A
      port map(A => busy_byte_0_a2_0_a2_0_a2_0_a2_4_1, B => 
        \state[21]_net_1\, Y => \busy_byte_4\);
    
    un4_counter_1_I_6 : NOR2B
      port map(A => \counter[1]_net_1\, B => \counter[0]_net_1\, 
        Y => N_6_0);
    
    \state_RNI2UUTV3[0]\ : AO1
      port map(A => N_609, B => N_216_1, C => un2_sda_1, Y => 
        state_RNI2UUTV3(0));
    
    \databit_RNIEV99Q1[1]\ : MX2
      port map(A => N_98, B => N_99, S => \databit[1]_net_1\, Y
         => N_100);
    
    un1_addrbit_0_sqmuxa_0_a2_1_o2_RNIIBKG : OR2
      port map(A => N_611, B => \state[6]_net_1\, Y => N_615);
    
    \state[3]\ : DFN1E0C0
      port map(D => \state[4]_net_1\, CLK => clk_c, CLR => 
        reset_c_c, E => N_85, Q => \state[3]_net_1\);
    
    \addrbit_RNITOMO[0]\ : NOR3
      port map(A => \addrbit[0]_net_1\, B => \addrbit[2]_net_1\, 
        C => \addrbit[1]_net_1\, Y => N_274);
    
    \un1_addrbit_1_0_0[1]\ : AO1A
      port map(A => N_614, B => N_228, C => \un1_addrbit[1]\, Y
         => \un1_addrbit_1_0_0[1]_net_1\);
    
    \databit_RNIVDF3V[2]\ : MX2
      port map(A => data_i2c_0, B => data_i2c_4, S => 
        \databit[2]_net_1\, Y => N_95);
    
    \state_RNI7VJ51[16]\ : NOR3
      port map(A => \state[16]_net_1\, B => \state[17]_net_1\, C
         => N_491_i_0_o2_1, Y => un1_m3_e_2);
    
    \counter_RNO[4]\ : NOR2A
      port map(A => I_12, B => \state[21]_net_1\, Y => 
        \counter_4[4]\);
    
    \addrbit[0]\ : DFN1
      port map(D => N_6, CLK => clk_c, Q => \addrbit[0]_net_1\);
    
    un1_addrbit_0_sqmuxa_0_a2_1_a2_0_0_RNI1LFA2 : NOR3C
      port map(A => \un1_addrbit_0_sqmuxa_0_a2_1_a2_0_0\, B => 
        un1_m3_e_2, C => un1_m3_e_3, Y => 
        \un1_addrbit_0_sqmuxa_0_a2_1_a2_0_0_RNI1LFA2\);
    
    \databit_RNO[1]\ : XO1A
      port map(A => \databit[0]_net_1\, B => \databit[1]_net_1\, 
        C => un1_databit_0_sqmuxa_i_1, Y => N_60);
    
    \state_RNO_1[20]\ : OA1A
      port map(A => N_392, B => state_0(3), C => 
        \state[21]_net_1\, Y => N_202);
    
    \state_RNO[5]\ : MX2
      port map(A => N_273, B => \state[5]_net_1\, S => N_85, Y
         => \state_ns[16]\);
    
    un1_addrbit_0_sqmuxa_0_a2_1_a2 : NOR2A
      port map(A => N_228, B => N_611, Y => databite);
    
    un4_counter_1_I_17 : XOR2
      port map(A => N_2, B => \counter[6]_net_1\, Y => I_17);
    
    \state_RNO[14]\ : MX2
      port map(A => \state_ns_0_0_a2_0_0[7]\, B => 
        \state[14]_net_1\, S => N_85, Y => \state_ns[7]\);
    
    un1_addrbit_I_10 : XOR2
      port map(A => \addrbit[1]_net_1\, B => 
        \un1_addrbit_0_sqmuxa_0_a2_1_a2_0_0_RNI1LFA2\, Y => 
        \DWACT_ADD_CI_0_partial_sum[1]\);
    
    \un1_addrbit_1_i_0[0]\ : OA1A
      port map(A => N_228, B => N_614, C => 
        \DWACT_ADD_CI_0_partial_sum[0]\, Y => N_6);
    
    \databit_RNIRU1N[0]\ : OR2
      port map(A => \databit[1]_net_1\, B => \databit[0]_net_1\, 
        Y => N_610);
    
    \state_RNO_0[21]\ : NOR3B
      port map(A => N_392, B => \state[21]_net_1\, C => 
        state_0(3), Y => N_200);
    
    \state[2]\ : DFN1C0
      port map(D => \state_ns[19]\, CLK => clk_c, CLR => 
        reset_c_c, Q => \state[2]_net_1\);
    
    \state_RNO_0[17]\ : OA1C
      port map(A => \state[15]_net_1\, B => N_274, C => 
        \state[18]_net_1\, Y => \state_ns_i_0_0_a2_0[4]\);
    
    \state_RNIRGJT[19]\ : NOR2
      port map(A => \state[19]_net_1\, B => N_609, Y => N_550_1);
    
    \counter_RNIE6ME[2]\ : OR2
      port map(A => \counter[2]_net_1\, B => \counter[4]_net_1\, 
        Y => N_491_i_0_o2_1);
    
    \state[1]\ : DFN1E0C0
      port map(D => \state[2]_net_1\, CLK => clk_c, CLR => 
        reset_c_c, E => N_85, Q => \state[1]_net_1\);
    
    \state_RNIKJC21[15]\ : OR3
      port map(A => \state[16]_net_1\, B => \state[17]_net_1\, C
         => \state[15]_net_1\, Y => N_614);
    
    \counter_RNO[0]\ : OR2A
      port map(A => \counter[0]_net_1\, B => \state[21]_net_1\, Y
         => N_110);
    
    \state_RNO[8]\ : NOR3
      port map(A => N_204, B => N_273, C => N_205, Y => 
        \state_RNO[8]_net_1\);
    
    un1_addrbit_I_15 : AO1
      port map(A => \DWACT_ADD_CI_0_pog_array_0[0]\, B => 
        \DWACT_ADD_CI_0_TMP[0]\, C => 
        \DWACT_ADD_CI_0_g_array_0_1[0]\, Y => 
        \DWACT_ADD_CI_0_g_array_1[0]\);
    
    un1_addrbit_0_sqmuxa_0_a2_1_o2_RNI6V0J1 : NOR2
      port map(A => N_614, B => N_615, Y => N_216_1);
    
    \state_RNI99EV_0[1]\ : NOR3
      port map(A => \state[1]_net_1\, B => \state[2]_net_1\, C
         => N_609, Y => busy_byte_0_a2_0_a2_0_a2_0_a2_0_0);
    
    \state_RNIFP9D[4]\ : NOR2
      port map(A => \state[1]_net_1\, B => \state[4]_net_1\, Y
         => N_550_3);
    
    \addrbit_RNI0DPOT3[2]\ : AO1
      port map(A => N_101, B => N_615, C => N_215, Y => un2_sda_1);
    
    \state[11]\ : DFN1E0C0
      port map(D => \state[12]_net_1\, CLK => clk_c, CLR => 
        reset_c_c, E => N_85, Q => \state[11]_net_1\);
    
    \data_i2c_1_0_a4_1[7]\ : NOR2B
      port map(A => \N_249_1\, B => N_254, Y => N_249);
    
    \state[18]\ : DFN1E0C0
      port map(D => \state[19]_net_1\, CLK => clk_c, CLR => 
        reset_c_c, E => N_85, Q => \state[18]_net_1\);
    
    \state_RNO_0[14]\ : NOR2B
      port map(A => \state[15]_net_1\, B => N_274, Y => 
        \state_ns_0_0_a2_0_0[7]\);
    
    \state_RNIE31T1[11]\ : NOR3A
      port map(A => N_504_2, B => \state[11]_net_1\, C => 
        \state[10]_net_1\, Y => state_RNIE31T1(11));
    
    \state_RNISH4I[0]\ : OR2
      port map(A => \state[0]_net_1\, B => \state[20]_net_1\, Y
         => N_609);
    
    \counter_RNO[2]\ : NOR2A
      port map(A => I_7, B => \state[21]_net_1\, Y => 
        \counter_4[2]\);
    
    un4_counter_1_I_15 : AND2
      port map(A => \counter[3]_net_1\, B => \counter[4]_net_1\, 
        Y => \DWACT_FINC_E[1]\);
    
    un4_counter_1_I_7 : XOR2
      port map(A => N_6_0, B => \counter[2]_net_1\, Y => I_7);
    
    \addrbit_RNIJQRI1[2]\ : XA1
      port map(A => \addrbit[1]_net_1\, B => \addrbit[2]_net_1\, 
        C => N_614, Y => N_215);
    
    \state_RNO[20]\ : AO1
      port map(A => \state_ns_i_0_i_a2_0_0[1]\, B => N_85, C => 
        N_202, Y => N_46);
    
    \state[15]\ : DFN1E0C0
      port map(D => \state[16]_net_1\, CLK => clk_c, CLR => 
        reset_c_c, E => N_85, Q => \state[15]_net_1\);
    
    \counter_RNIHMDJ1[6]\ : OR3
      port map(A => N_491_i_0_o2_2, B => N_491_i_0_o2_1, C => 
        N_491_i_0_o2_1_0, Y => N_85);
    
    \counter_RNI3GN41[0]\ : NOR3A
      port map(A => un1_m3_e_0, B => \counter[0]_net_1\, C => 
        N_491_i_0_o2_2, Y => un1_m3_e_3);
    
    \data_i2c_0_iv_1[5]\ : AO1
      port map(A => data_i2c_1_m_3(5), B => data_i2c_1_m_4(5), C
         => data_i2c_2(7), Y => \data_i2c_1[5]\);
    
    un4_counter_1_I_10 : AND3
      port map(A => \counter[0]_net_1\, B => \counter[1]_net_1\, 
        C => \counter[2]_net_1\, Y => \DWACT_FINC_E[0]\);
    
    \counter[0]\ : DFN1E1
      port map(D => N_110, CLK => clk_c, E => reset_c_c, Q => 
        \counter[0]_net_1\);
    
    \state_RNO_0[8]\ : NOR3B
      port map(A => N_613, B => \state_ns_i_0_0_a2_0[13]\, C => 
        N_85, Y => N_204);
    
    un1_addrbit_0_sqmuxa_0_a2_1_o2 : OR2
      port map(A => \state[8]_net_1\, B => \state[7]_net_1\, Y
         => N_611);
    
    \state[17]\ : DFN1C0
      port map(D => \state_RNO[17]_net_1\, CLK => clk_c, CLR => 
        reset_c_c, Q => \state[17]_net_1\);
    
    \data_i2c_1_m[7]\ : OA1
      port map(A => \data_i2c_1_1[7]\, B => N_249, C => 
        data_i2c_0_sqmuxa, Y => \data_i2c_1_m[7]_net_1\);
    
    \state_RNI8T3I[7]\ : NOR2
      port map(A => \state[7]_net_1\, B => \state[16]_net_1\, Y
         => N_550_4);
    

end DEF_ARCH; 

library ieee;
use ieee.std_logic_1164.all;
library igloo;
use igloo.all;

entity display is

    port( clk            : in    std_logic;
          reset          : in    std_logic;
          data           : in    std_logic_vector(7 downto 0);
          column_address : out   std_logic_vector(7 downto 0);
          draw           : in    std_logic;
          busy           : out   std_logic;
          sda            : out   std_logic;
          scl            : out   std_logic;
          oled_reset     : out   std_logic
        );

end display;

architecture DEF_ARCH of display is 

  component AO1A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OUTBUF
    port( D   : in    std_logic := 'U';
          PAD : out   std_logic
        );
  end component;

  component DFN1C0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          CLR : in    std_logic := 'U';
          Q   : out   std_logic
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

  component NOR2A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR2B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
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

  component AOI1B
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

  component NOR3B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AX1E
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

  component NOR3C
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

  component XOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
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

  component NOR2B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
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

  component INBUF
    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component XA1B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AOI1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component OR3C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR3A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component i2c
    port( data_i2c_0_iv                     : in    std_logic_vector(6 to 6) := (others => 'U');
          data_i2c_4                        : in    std_logic := 'U';
          data_i2c_0                        : in    std_logic := 'U';
          data_i2c_2_d0                     : in    std_logic := 'U';
          data_i2c_1                        : in    std_logic := 'U';
          data_i2c_3                        : in    std_logic := 'U';
          bytecount_3                       : in    std_logic := 'U';
          bytecount_1                       : in    std_logic := 'U';
          bytecount_0_d0                    : in    std_logic := 'U';
          state_RNI1MUJ2                    : out   std_logic_vector(4 to 4);
          state_RNIE31T1                    : out   std_logic_vector(11 to 11);
          bytecount_0                       : in    std_logic_vector(0 to 0) := (others => 'U');
          data_i2c_2                        : in    std_logic_vector(7 to 7) := (others => 'U');
          data_i2c_1_m_4                    : in    std_logic_vector(5 to 5) := (others => 'U');
          data_i2c_1_m_3                    : in    std_logic_vector(5 to 5) := (others => 'U');
          data_c_2                          : in    std_logic := 'U';
          data_c_0                          : in    std_logic := 'U';
          state_RNI2UUTV3                   : out   std_logic_vector(0 to 0);
          state_0                           : in    std_logic_vector(3 to 3) := (others => 'U');
          state_i                           : out   std_logic_vector(21 to 21);
          state_21                          : out   std_logic;
          state_20                          : out   std_logic;
          clk_c                             : in    std_logic := 'U';
          N_254                             : in    std_logic := 'U';
          N_249_1                           : out   std_logic;
          N_253                             : in    std_logic := 'U';
          N_238                             : out   std_logic;
          data_i2c_0_sqmuxa                 : in    std_logic := 'U';
          busy_burst                        : out   std_logic;
          N_59                              : in    std_logic := 'U';
          N_237_1                           : out   std_logic;
          busy_byte_4                       : out   std_logic;
          N_219_i                           : in    std_logic := 'U';
          N_65                              : in    std_logic := 'U';
          N_13                              : in    std_logic := 'U';
          bytecount_e1_i_o2_0tt_m3_0_a2_1   : out   std_logic;
          busy_byte_0_a2_0_a2_0_a2_0_a2_0_0 : out   std_logic;
          N_392                             : in    std_logic := 'U';
          reset_c_c                         : in    std_logic := 'U'
        );
  end component;

  component DFN1P0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          PRE : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component AX1A
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

  component OA1C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component ZOR3I
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component VCC
    port( Y : out   std_logic
        );
  end component;

  component INV
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XNOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
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

  component TRIBUFF
    port( D   : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          PAD : out   std_logic
        );
  end component;

  component OR2A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AO1B
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

  component XA1C
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
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

  component MIN3
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

  component CLKBUF
    port( PAD : in    std_logic := 'U';
          Y   : out   std_logic
        );
  end component;

  component CLKINT
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AO1D
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
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

  component AXOI7
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XAI1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

    signal \GND\, \VCC\, \burstNo[0]_net_1\, \burstNo[1]_net_1\, 
        \burstNo[2]_net_1\, \bytecount[0]_net_1\, 
        \bytecount[1]_net_1\, \bytecount[2]_net_1\, 
        \bytecount[3]_net_1\, \bytecount[4]_net_1\, 
        \bytecount[5]_net_1\, \bytecount[6]_net_1\, 
        \bytecount[7]_net_1\, \state[5]_net_1\, \state[2]_net_1\, 
        \state[1]_net_1\, \state[0]_net_1\, \state[4]_net_1\, 
        \state[3]_net_1\, bytecount_e0, bytecount_e7, 
        \state_ns[1]\, \state_ns[3]\, \state_RNO[1]_net_1\, N_32, 
        N_25, N_4, N_6, N_8, N_10, N_12, N_14, \i2c0.state[21]\, 
        \i2c0.state[20]\, \state_RNI2UUTV3[0]\, 
        \state_RNIE31T1[11]\, \state_RNI1MUJ2[4]\, clk_c, 
        \data_c[0]\, \data_c[1]\, \data_c[2]\, \data_c[3]\, 
        \data_c[4]\, \data_c[5]\, \data_c[6]\, \data_c[7]\, 
        \address_c[0]\, \address_c[1]\, \address_c[2]\, 
        \address_c[3]\, \address_c[4]\, \address_c[5]\, 
        \address_c[6]\, \address_c[7]\, draw_c, reset_c_c, N_49, 
        N_389, N_114, N_60, N_52, N_322_2, N_81, N_222, N_31, 
        N_62, N_392, N_41, N_380, N_388, N_34, N_36_i, N_234_1, 
        N_45_2, N_45_1, N_68, data_i2c_4_sqmuxa, N_109_1, 
        data_i2c_0_sqmuxa, N_65, N_9, N_42, N_29, N_221, N_220, 
        N_251, N_254, N_59, \data_i2c[0]\, \data_i2c[4]\, 
        \data_i2c[2]\, \data_i2c_0_iv[6]\, \data_i2c[1]\, 
        \data_i2c[3]\, \data_i2c_2[7]\, busy_byte_4, N_11, N_70, 
        N_93, N_84, N_96, N_106, N_112, N_48, N_53, N_83, N_13, 
        N_74, N_63, N_418, N_24, N_404, addresse, N_403, N_16, 
        N_400, N_399, N_398, N_409, \data_i2c_1_m[0]\, 
        \data_m[0]\, un1_bytecount_3, \data_i2c_1_m[1]\, 
        \data_m[1]\, N_157_1, \data_i2c_1_m[2]\, \data_m[2]\, 
        \data_i2c_1_m[3]\, \data_m[3]\, \data_i2c_1_m[4]\, 
        \data_i2c_1_i_m[6]\, N_231, N_228, N_236, N_256, N_225_i, 
        N_219_i, N_246, N_253, N_240, N_241, N_234, 
        data_i2c_5_sqmuxa, un1_bytecount_4_m, N_245, N_238, 
        N_249_1, N_218, un1_bytecount_4, N_233, N_402, N_401, 
        N_407, N_118, N_117, bytecountlde_i_a3_0, 
        bytecount_e7_0_1_tz, bytecount_e5_i_208tt_N_4, 
        bytecount_e5_i_208tt_N_7, \bytecount_RNO_1[5]_net_1\, 
        bytecount_e1_i_o2_0_N_3_mux, 
        bytecount_e1_i_o2_0_0_N_8_mux, \state_RNI1OKO[0]_net_1\, 
        data_i2c_3_sqmuxa_i_o2_1_0, 
        \bytecount_0_RNIKECE4[0]_net_1\, busy_burst, 
        state_ns_0_0_o3_5_N_5_mux, \state_RNIQPI52[0]_net_1\, 
        N_235_1, \data_i2c_0_iv_1[6]\, \data_i2c_0_iv_2[6]\, 
        data_i2c_0_sqmuxa_1, N_237_1, \data_i2c_1_i_m_2[6]\, 
        \data_i2c_1_m_2[5]\, \data_i2c_1_m_3[5]\, 
        \data_i2c_1_m_4[5]\, \data_i2c_1_m_1[4]\, 
        \data_i2c_1_m_2[4]\, \data_i2c_1_m_2[3]\, 
        \data_i2c_1_1[0]\, \data_i2c_1_2[0]\, \data_i2c_1[4]\, 
        \data_i2c_2[0]\, N_13_1, data_i2c_4_sqmuxa_1, 
        un1_bytecount_2_m_1, \data_i2c_1_1[2]\, \data_i2c_1_2[2]\, 
        \data_i2c_2[2]\, N_230_1, address_n3_i_o4_0, 
        bytecount_e1_i_o2_0tt_m3_0_a2_1, state_ns_0_0_o3_5_m1_e_0, 
        bytecountlde_i_a3_1_0, 
        \i2c0.busy_byte_0_a2_0_a2_0_a2_0_a2_0_0\, 
        addresslde_0_o2_m1_e_0, bytecount_e1_i_o2_0_m3_0_a3_0_0, 
        state_tr4_i_a2_0_2, state_tr4_i_a2_0_3, 
        state_tr4_i_a2_0_5, bytecount_e0_0_o2_1, 
        bytecountlde_i_o2_0_0, state_tr4_i_a2_2_0, 
        bytecount_e0_0_a3_3_1, address_n2_i_0, address_n3_i_0, 
        burstNo_n1_i_0, address_n4_i_0, address_n1_i_0, 
        addresslde_0_a3_0, bytecount_e7_0_a3_0, 
        \state_ns_i_a2_i_a3_0[5]\, bytecount_e7_0_a3_0_0, 
        bytecount_e7_0_a3_0_2, state_tr4_i_a2_0, state_tr4_i_a2_2, 
        un1_bytecount_2_m_2, bytecount_e1_i_o2_0_m1_e_1, 
        state_tr4_i_0, bytecount_e0_0_0, bytecount_e7_0_0, 
        \i2c0.state_i[21]\, \state_i[5]\, \reset_pad\, N_22, N_28, 
        N_92, N_394, bytecount_e5_i_208_N_11, bytecount_e6_i_N_21, 
        bytecountlde_i_a2_0_0, N_110, N_111, bytecountlde_i_a2_0, 
        bytecountlde_i_a2_4_0, state_tr4_i_a2_1_0, 
        bytecount_e6_i_N_20, bytecount_e6_i_m13_i_0, 
        bytecount_e6_i_m13_i_o3_1, bytecount_e5_i_208_b0_0_o2_0, 
        bytecountlde_i_a2_0_a0_2, bytecount_e6_i_m13_i_o3_0, 
        \bytecount_0[0]_net_1\ : std_logic;

    for all : i2c
	Use entity work.i2c(DEF_ARCH);
begin 


    \data_pad_RNI9K0UB[4]\ : AO1A
      port map(A => N_13, B => \data_c[4]\, C => 
        \data_i2c_1_m[4]\, Y => \data_i2c_1[4]\);
    
    \column_address_pad[3]\ : OUTBUF
      port map(D => \address_c[3]\, PAD => column_address(3));
    
    \state[0]\ : DFN1C0
      port map(D => N_32, CLK => clk_c, CLR => reset_c_c, Q => 
        \state[0]_net_1\);
    
    \burstNo[2]\ : DFN1E1C0
      port map(D => N_11, CLK => clk_c, CLR => reset_c_c, E => 
        N_29, Q => \burstNo[2]_net_1\);
    
    \bytecount_RNIFDMQ_0[4]\ : NOR2A
      port map(A => \bytecount[1]_net_1\, B => 
        \bytecount[4]_net_1\, Y => N_254);
    
    \bytecount_RNO_5[7]\ : NOR2A
      port map(A => \bytecount_0[0]_net_1\, B => 
        \bytecount[7]_net_1\, Y => bytecount_e7_0_a3_0_0);
    
    \address_RNO[1]\ : NOR2
      port map(A => address_n1_i_0, B => 
        state_ns_0_0_o3_5_N_5_mux, Y => N_398);
    
    \address_RNI1CTN[3]\ : OR2B
      port map(A => \address_c[3]\, B => \address_c[2]\, Y => 
        address_n3_i_o4_0);
    
    \bytecount_RNIDBMQ[1]\ : OR2B
      port map(A => \bytecount[1]_net_1\, B => 
        \bytecount[2]_net_1\, Y => N_59);
    
    \bytecount_RNI943G2[0]\ : OA1B
      port map(A => N_65, B => N_228, C => N_253, Y => 
        \data_i2c_1_m_3[5]\);
    
    \bytecount_RNI62LM2[2]\ : NOR2A
      port map(A => data_i2c_0_sqmuxa, B => N_256, Y => 
        \data_i2c_1_m_1[4]\);
    
    \state_RNO_0[2]\ : AOI1B
      port map(A => \i2c0.busy_byte_0_a2_0_a2_0_a2_0_a2_0_0\, B
         => busy_byte_4, C => \state[2]_net_1\, Y => N_41);
    
    \bytecount_RNIPT6M5[6]\ : OA1
      port map(A => bytecountlde_i_a2_0_a0_2, B => N_389, C => 
        bytecountlde_i_a2_0_0, Y => bytecountlde_i_o2_0_0);
    
    \bytecount_RNIA5043[0]\ : NOR3B
      port map(A => data_i2c_0_sqmuxa, B => N_221, C => N_228, Y
         => \data_i2c_1_m[1]\);
    
    \burstNo_RNO_0[2]\ : AX1E
      port map(A => \burstNo[0]_net_1\, B => \burstNo[1]_net_1\, 
        C => \burstNo[2]_net_1\, Y => N_36_i);
    
    \state_RNIHMFUC[1]\ : OA1A
      port map(A => N_49, B => N_29, C => 
        bytecount_e1_i_o2_0_m1_e_1, Y => 
        bytecount_e1_i_o2_0_N_3_mux);
    
    \burstNo_RNIMLH02[0]\ : NOR3C
      port map(A => N_45_1, B => \burstNo[0]_net_1\, C => N_45_2, 
        Y => N_110);
    
    \bytecount[6]\ : DFN1C0
      port map(D => N_14, CLK => clk_c, CLR => reset_c_c, Q => 
        \bytecount[6]_net_1\);
    
    \data_pad_RNIG30KA[1]\ : OR3
      port map(A => un1_bytecount_4_m, B => \data_m[1]\, C => 
        \data_i2c_1_m[1]\, Y => \data_i2c[1]\);
    
    \bytecount_RNIDBMQ[0]\ : XOR2
      port map(A => \bytecount[3]_net_1\, B => 
        \bytecount[0]_net_1\, Y => N_225_i);
    
    \bytecount_RNI40O22[4]\ : AO1
      port map(A => \bytecount[4]_net_1\, B => 
        \bytecount[1]_net_1\, C => N_251, Y => N_220);
    
    \burstNo_RNISTFO[0]\ : NOR2B
      port map(A => \burstNo[0]_net_1\, B => \bytecount[2]_net_1\, 
        Y => state_tr4_i_a2_1_0);
    
    \bytecount_RNO_0[3]\ : OR3A
      port map(A => \bytecount_0_RNIKECE4[0]_net_1\, B => N_59, C
         => N_92, Y => N_394);
    
    \bytecount_RNIKH181[3]\ : NOR2A
      port map(A => \bytecount[3]_net_1\, B => N_218, Y => 
        N_235_1);
    
    \data_pad[1]\ : INBUF
      port map(PAD => data(1), Y => \data_c[1]\);
    
    \burstNo_RNISVVG1[2]\ : XA1B
      port map(A => \burstNo[1]_net_1\, B => \burstNo[2]_net_1\, 
        C => N_65, Y => bytecountlde_i_a2_0);
    
    \bytecount_RNID7ET2[3]\ : AOI1
      port map(A => \bytecount[3]_net_1\, B => N_237_1, C => 
        N_238, Y => \data_i2c_1_m_2[3]\);
    
    \address[2]\ : DFN1E1C0
      port map(D => N_399, CLK => clk_c, CLR => reset_c_c, E => 
        addresse, Q => \address_c[2]\);
    
    \bytecount_0_RNI00S54[0]\ : NOR3B
      port map(A => N_49, B => \bytecount_0[0]_net_1\, C => N_29, 
        Y => N_96);
    
    \state_RNO_5[3]\ : NOR3C
      port map(A => state_tr4_i_a2_0_3, B => state_tr4_i_a2_0_2, 
        C => N_45_2, Y => state_tr4_i_a2_0_5);
    
    \data_pad_RNIA5M65[0]\ : NOR2A
      port map(A => \data_c[0]\, B => N_13, Y => \data_m[0]\);
    
    \bytecount_RNITLUV4[2]\ : AO1
      port map(A => un1_bytecount_2_m_2, B => un1_bytecount_2_m_1, 
        C => un1_bytecount_4_m, Y => \data_i2c_2[2]\);
    
    \bytecount_RNISD648[1]\ : OA1
      port map(A => \data_i2c_1_1[2]\, B => \data_i2c_1_2[2]\, C
         => data_i2c_0_sqmuxa, Y => \data_i2c_1_m[2]\);
    
    \bytecount_0[0]\ : DFN1C0
      port map(D => bytecount_e0, CLK => clk_c, CLR => reset_c_c, 
        Q => \bytecount_0[0]_net_1\);
    
    \bytecount_RNO_2[6]\ : OR3A
      port map(A => \bytecount[4]_net_1\, B => N_63, C => 
        bytecount_e6_i_m13_i_o3_0, Y => bytecount_e6_i_m13_i_o3_1);
    
    \address[5]\ : DFN1E1C0
      port map(D => N_402, CLK => clk_c, CLR => reset_c_c, E => 
        addresse, Q => \address_c[5]\);
    
    draw_pad_RNIAVNM2 : OR2
      port map(A => N_117, B => \state_RNIQPI52[0]_net_1\, Y => 
        state_ns_0_0_o3_5_N_5_mux);
    
    \bytecount_RNILI181[3]\ : OR3C
      port map(A => \bytecount[2]_net_1\, B => 
        \bytecount[1]_net_1\, C => \bytecount[3]_net_1\, Y => 
        N_63);
    
    \bytecount_RNITLUV4_0[2]\ : AO1
      port map(A => un1_bytecount_3, B => N_157_1, C => 
        un1_bytecount_4_m, Y => \data_i2c_2[7]\);
    
    \bytecount_RNO_3[5]\ : NOR2
      port map(A => \state[5]_net_1\, B => \state[0]_net_1\, Y
         => bytecount_e5_i_208tt_N_4);
    
    \bytecount_RNILI181_0[3]\ : NOR3A
      port map(A => \bytecount[2]_net_1\, B => 
        \bytecount[1]_net_1\, C => \bytecount[3]_net_1\, Y => 
        N_240);
    
    \state[4]\ : DFN1C0
      port map(D => \state_ns[1]\, CLK => clk_c, CLR => reset_c_c, 
        Q => \state[4]_net_1\);
    
    \column_address_pad[4]\ : OUTBUF
      port map(D => \address_c[4]\, PAD => column_address(4));
    
    \bytecount_RNO_2[7]\ : NOR3A
      port map(A => bytecount_e7_0_a3_0_0, B => N_29, C => N_49, 
        Y => bytecount_e7_0_a3_0_2);
    
    \bytecount_RNI51O22[3]\ : AO1
      port map(A => \bytecount[3]_net_1\, B => 
        \bytecount[2]_net_1\, C => N_233, Y => \data_i2c_1_2[0]\);
    
    \bytecount_0_RNI2JPKM[0]\ : OR3
      port map(A => N_93, B => bytecount_e0_0_0, C => N_96, Y => 
        bytecount_e0);
    
    \bytecount_RNIRAAN6[3]\ : NOR3B
      port map(A => \data_i2c_1_m_1[4]\, B => \data_i2c_1_m_2[4]\, 
        C => N_240, Y => \data_i2c_1_m[4]\);
    
    \state_RNI1OKO[0]\ : NOR2B
      port map(A => \state[0]_net_1\, B => \i2c0.state[21]\, Y
         => \state_RNI1OKO[0]_net_1\);
    
    i2c0 : i2c
      port map(data_i2c_0_iv(6) => \data_i2c_0_iv[6]\, data_i2c_4
         => \data_i2c[4]\, data_i2c_0 => \data_i2c[0]\, 
        data_i2c_2_d0 => \data_i2c[2]\, data_i2c_1 => 
        \data_i2c[1]\, data_i2c_3 => \data_i2c[3]\, bytecount_3
         => \bytecount[3]_net_1\, bytecount_1 => 
        \bytecount[1]_net_1\, bytecount_0_d0 => 
        \bytecount[0]_net_1\, state_RNI1MUJ2(4) => 
        \state_RNI1MUJ2[4]\, state_RNIE31T1(11) => 
        \state_RNIE31T1[11]\, bytecount_0(0) => 
        \bytecount_0[0]_net_1\, data_i2c_2(7) => \data_i2c_2[7]\, 
        data_i2c_1_m_4(5) => \data_i2c_1_m_4[5]\, 
        data_i2c_1_m_3(5) => \data_i2c_1_m_3[5]\, data_c_2 => 
        \data_c[7]\, data_c_0 => \data_c[5]\, state_RNI2UUTV3(0)
         => \state_RNI2UUTV3[0]\, state_0(3) => \state[3]_net_1\, 
        state_i(21) => \i2c0.state_i[21]\, state_21 => 
        \i2c0.state[21]\, state_20 => \i2c0.state[20]\, clk_c => 
        clk_c, N_254 => N_254, N_249_1 => N_249_1, N_253 => N_253, 
        N_238 => N_238, data_i2c_0_sqmuxa => data_i2c_0_sqmuxa, 
        busy_burst => busy_burst, N_59 => N_59, N_237_1 => 
        N_237_1, busy_byte_4 => busy_byte_4, N_219_i => N_219_i, 
        N_65 => N_65, N_13 => N_13, 
        bytecount_e1_i_o2_0tt_m3_0_a2_1 => 
        bytecount_e1_i_o2_0tt_m3_0_a2_1, 
        busy_byte_0_a2_0_a2_0_a2_0_a2_0_0 => 
        \i2c0.busy_byte_0_a2_0_a2_0_a2_0_a2_0_0\, N_392 => N_392, 
        reset_c_c => reset_c_c);
    
    \bytecount_0_RNIQ2QP1[0]\ : NOR3B
      port map(A => \bytecount_0[0]_net_1\, B => N_48, C => 
        \state[5]_net_1\, Y => bytecount_e1_i_o2_0_0_N_8_mux);
    
    \bytecount_RNIIF181[2]\ : NOR2A
      port map(A => un1_bytecount_4, B => \bytecount[2]_net_1\, Y
         => un1_bytecount_3);
    
    draw_pad_RNIAVNM2_0 : AO1A
      port map(A => N_48, B => N_60, C => N_118, Y => 
        \state_ns[1]\);
    
    \burstNo[0]\ : DFN1E1C0
      port map(D => N_42, CLK => clk_c, CLR => reset_c_c, E => 
        N_29, Q => \burstNo[0]_net_1\);
    
    \state[5]\ : DFN1P0
      port map(D => state_ns_0_0_o3_5_N_5_mux, CLK => clk_c, PRE
         => reset_c_c, Q => \state[5]_net_1\);
    
    \column_address_pad[2]\ : OUTBUF
      port map(D => \address_c[2]\, PAD => column_address(2));
    
    draw_pad_RNIG55H : NOR2B
      port map(A => draw_c, B => \state[5]_net_1\, Y => N_118);
    
    \bytecount_RNI91DP4[3]\ : NOR3B
      port map(A => data_i2c_0_sqmuxa, B => \data_i2c_1_m_2[5]\, 
        C => N_220, Y => \data_i2c_1_m_4[5]\);
    
    \address[0]\ : DFN1E1C0
      port map(D => N_409, CLK => clk_c, CLR => reset_c_c, E => 
        addresse, Q => \address_c[0]\);
    
    GND_i : GND
      port map(Y => \GND\);
    
    draw_pad : INBUF
      port map(PAD => draw, Y => draw_c);
    
    \bytecount[4]\ : DFN1C0
      port map(D => N_10, CLK => clk_c, CLR => reset_c_c, Q => 
        \bytecount[4]_net_1\);
    
    draw_pad_RNIG55H_0 : NOR2A
      port map(A => \state[5]_net_1\, B => draw_c, Y => N_117);
    
    \address[4]\ : DFN1E1C0
      port map(D => N_401, CLK => clk_c, CLR => reset_c_c, E => 
        addresse, Q => \address_c[4]\);
    
    \burstNo_RNIGEJE1_0[2]\ : NOR3B
      port map(A => \burstNo[2]_net_1\, B => data_i2c_4_sqmuxa_1, 
        C => \burstNo[1]_net_1\, Y => data_i2c_4_sqmuxa);
    
    \address_RNO_0[3]\ : AX1A
      port map(A => N_404, B => \address_c[2]\, C => 
        \address_c[3]\, Y => address_n3_i_0);
    
    \bytecount_0_RNIDH4LD[0]\ : AO1A
      port map(A => \bytecount_0[0]_net_1\, B => N_157_1, C => 
        \data_i2c_1[4]\, Y => \data_i2c[4]\);
    
    \address_RNO_0[4]\ : AX1D
      port map(A => N_404, B => address_n3_i_o4_0, C => 
        \address_c[4]\, Y => address_n4_i_0);
    
    \burstNo_RNIOTF92_0[0]\ : NOR3B
      port map(A => N_109_1, B => state_tr4_i_a2_2_0, C => N_52, 
        Y => bytecountlde_i_a2_0_a0_2);
    
    \bytecount_RNICNJQ9[0]\ : NOR3B
      port map(A => N_84, B => N_112, C => N_49, Y => N_93);
    
    \bytecount_0_RNIUJJO2[0]\ : OA1C
      port map(A => N_225_i, B => N_59, C => N_246, Y => 
        \data_i2c_1_i_m_2[6]\);
    
    \bytecount_RNILJMQ_0[6]\ : NOR2B
      port map(A => \bytecount[6]_net_1\, B => 
        \bytecount[5]_net_1\, Y => N_45_1);
    
    \data_pad_RNI9MPUD[3]\ : OR3
      port map(A => un1_bytecount_4_m, B => \data_m[3]\, C => 
        \data_i2c_1_m[3]\, Y => \data_i2c[3]\);
    
    \bytecount_RNI0MJO2[0]\ : AOI1
      port map(A => N_222, B => N_249_1, C => N_241, Y => 
        \data_i2c_1_m_2[4]\);
    
    \state_RNIRN992[5]\ : NOR2B
      port map(A => un1_bytecount_4, B => data_i2c_5_sqmuxa, Y
         => un1_bytecount_4_m);
    
    \bytecount_RNINGPA3[2]\ : AO1
      port map(A => N_218, B => N_230_1, C => N_231, Y => 
        \data_i2c_1_1[0]\);
    
    \bytecount_RNIFA3G2[4]\ : OR2
      port map(A => data_i2c_3_sqmuxa_i_o2_1_0, B => N_65, Y => 
        N_70);
    
    \state_RNO_7[3]\ : NOR3B
      port map(A => \burstNo[0]_net_1\, B => N_45_1, C => 
        \bytecount[1]_net_1\, Y => state_tr4_i_a2_0_3);
    
    \state_RNO_4[3]\ : AO1A
      port map(A => N_52, B => N_109_1, C => N_388, Y => N_380);
    
    \burstNo_RNI688C4[2]\ : NOR3A
      port map(A => N_45_1, B => N_70, C => N_62, Y => 
        bytecount_e0_0_a3_3_1);
    
    \state_RNO[1]\ : NOR3B
      port map(A => busy_byte_4, B => 
        \i2c0.busy_byte_0_a2_0_a2_0_a2_0_a2_0_0\, C => N_392, Y
         => \state_RNO[1]_net_1\);
    
    \column_address_pad[0]\ : OUTBUF
      port map(D => \address_c[0]\, PAD => column_address(0));
    
    \burstNo_RNISTFO_0[0]\ : NOR2A
      port map(A => \bytecount[2]_net_1\, B => \burstNo[0]_net_1\, 
        Y => bytecountlde_i_a2_4_0);
    
    \bytecount_RNIDBMQ_1[0]\ : NOR2B
      port map(A => \bytecount[3]_net_1\, B => 
        \bytecount[0]_net_1\, Y => N_253);
    
    \state_RNIUM9O[0]\ : NOR2A
      port map(A => \state[0]_net_1\, B => \burstNo[0]_net_1\, Y
         => state_ns_0_0_o3_5_m1_e_0);
    
    \state_RNO_0[0]\ : OA1B
      port map(A => N_114, B => bytecountlde_i_o2_0_0, C => N_53, 
        Y => \state_ns_i_a2_i_a3_0[5]\);
    
    \burstNo[1]\ : DFN1E1C0
      port map(D => N_9, CLK => clk_c, CLR => reset_c_c, E => 
        N_29, Q => \burstNo[1]_net_1\);
    
    \bytecount_RNI688C4[6]\ : OA1C
      port map(A => addresslde_0_o2_m1_e_0, B => 
        data_i2c_3_sqmuxa_i_o2_1_0, C => N_62, Y => 
        addresslde_0_a3_0);
    
    \state_RNO_1[3]\ : AO1
      port map(A => state_tr4_i_a2_2_0, B => N_380, C => N_389, Y
         => N_34);
    
    \burstNo_RNIBIPE1[0]\ : ZOR3I
      port map(A => \bytecount[4]_net_1\, B => N_322_2, C => 
        \burstNo[0]_net_1\, Y => N_81);
    
    VCC_i : VCC
      port map(Y => \VCC\);
    
    reset_pad : INBUF
      port map(PAD => reset, Y => \reset_pad\);
    
    \bytecount_RNINK181[3]\ : NOR2A
      port map(A => N_254, B => \bytecount[3]_net_1\, Y => 
        N_230_1);
    
    \state_RNI6T1C2[1]\ : AOI1B
      port map(A => bytecount_e1_i_o2_0tt_m3_0_a2_1, B => 
        busy_byte_4, C => \state[1]_net_1\, Y => 
        bytecount_e1_i_o2_0_m3_0_a3_0_0);
    
    \column_address_pad[6]\ : OUTBUF
      port map(D => \address_c[6]\, PAD => column_address(6));
    
    \bytecount_RNIKIMQ[7]\ : OR2
      port map(A => \bytecount[7]_net_1\, B => 
        \bytecount[3]_net_1\, Y => N_53);
    
    \burstNo_RNO[0]\ : NOR2
      port map(A => state_ns_0_0_o3_5_N_5_mux, B => 
        \burstNo[0]_net_1\, Y => N_42);
    
    \address_RNIGBPR1[4]\ : OR3A
      port map(A => \address_c[4]\, B => N_404, C => 
        address_n3_i_o4_0, Y => N_407);
    
    \state_RNIERP51[0]\ : AOI1
      port map(A => \state[0]_net_1\, B => \i2c0.state[20]\, C
         => \state[5]_net_1\, Y => bytecountlde_i_a3_1_0);
    
    \bytecount_RNICAMQ_0[0]\ : NOR2A
      port map(A => \bytecount[0]_net_1\, B => 
        \bytecount[2]_net_1\, Y => N_45_2);
    
    busy_pad_RNO : INV
      port map(A => \state[5]_net_1\, Y => \state_i[5]\);
    
    \state_RNO_2[3]\ : AO1A
      port map(A => N_31, B => state_tr4_i_a2_0_5, C => N_49, Y
         => state_tr4_i_0);
    
    \address_RNO_0[1]\ : XNOR2
      port map(A => \address_c[0]\, B => \address_c[1]\, Y => 
        address_n1_i_0);
    
    \bytecount_0_RNINL8D5[0]\ : OA1
      port map(A => N_110, B => N_111, C => bytecountlde_i_a2_0, 
        Y => N_114);
    
    \burstNo_RNI2AE11[0]\ : OR2
      port map(A => N_52, B => \burstNo[0]_net_1\, Y => N_60);
    
    \address_RNO[6]\ : NOR3A
      port map(A => N_24, B => N_418, C => 
        state_ns_0_0_o3_5_N_5_mux, Y => N_16);
    
    \state_RNO[2]\ : OR3
      port map(A => \state[3]_net_1\, B => \state[4]_net_1\, C
         => N_41, Y => \state_ns[3]\);
    
    \bytecount_RNI92731[6]\ : NOR3
      port map(A => \bytecount[5]_net_1\, B => 
        \bytecount[6]_net_1\, C => \bytecount_0[0]_net_1\, Y => 
        bytecountlde_i_a2_0_0);
    
    oled_reset_pad : OUTBUF
      port map(D => reset_c_c, PAD => oled_reset);
    
    \burstNo_RNIOTF92[0]\ : NOR3C
      port map(A => N_234_1, B => state_tr4_i_a2_1_0, C => 
        N_322_2, Y => N_389);
    
    \bytecount[0]\ : DFN1C0
      port map(D => bytecount_e0, CLK => clk_c, CLR => reset_c_c, 
        Q => \bytecount[0]_net_1\);
    
    \burstNo_RNO_0[1]\ : XNOR2
      port map(A => \burstNo[0]_net_1\, B => \burstNo[1]_net_1\, 
        Y => burstNo_n1_i_0);
    
    sda_pad : TRIBUFF
      port map(D => \state_RNI2UUTV3[0]\, E => 
        \state_RNIE31T1[11]\, PAD => sda);
    
    \state_RNI6K9H1[5]\ : OR2A
      port map(A => N_48, B => \state[5]_net_1\, Y => N_29);
    
    \data_pad[7]\ : INBUF
      port map(PAD => data(7), Y => \data_c[7]\);
    
    \column_address_pad[1]\ : OUTBUF
      port map(D => \address_c[1]\, PAD => column_address(1));
    
    \state_RNI6T1C2_0[1]\ : AO1B
      port map(A => \i2c0.busy_byte_0_a2_0_a2_0_a2_0_a2_0_0\, B
         => busy_byte_4, C => \state[1]_net_1\, Y => N_49);
    
    \bytecount_RNO_0[4]\ : OR3A
      port map(A => \bytecount_0_RNIKECE4[0]_net_1\, B => N_63, C
         => N_92, Y => N_22);
    
    \state_RNO_6[3]\ : NOR3A
      port map(A => \bytecount[2]_net_1\, B => 
        \bytecount[1]_net_1\, C => N_31, Y => N_388);
    
    \state_RNIOF441[0]\ : OAI1
      port map(A => \i2c0.state[21]\, B => \i2c0.state[20]\, C
         => \state[0]_net_1\, Y => N_48);
    
    \address_RNO[5]\ : XA1C
      port map(A => N_407, B => \address_c[5]\, C => 
        state_ns_0_0_o3_5_N_5_mux, Y => N_402);
    
    \bytecount_RNO[3]\ : XA1C
      port map(A => \bytecount[3]_net_1\, B => N_394, C => N_29, 
        Y => N_8);
    
    \address_RNO[0]\ : NOR2
      port map(A => \address_c[0]\, B => 
        state_ns_0_0_o3_5_N_5_mux, Y => N_409);
    
    \address_RNINTMJ2[6]\ : OR3B
      port map(A => \address_c[5]\, B => \address_c[6]\, C => 
        N_407, Y => N_24);
    
    \bytecount_RNILI181_1[3]\ : MIN3
      port map(A => \bytecount[2]_net_1\, B => 
        \bytecount[1]_net_1\, C => \bytecount[3]_net_1\, Y => 
        \data_i2c_1_m_2[5]\);
    
    \address_RNO_0[2]\ : XOR2
      port map(A => N_404, B => \address_c[2]\, Y => 
        address_n2_i_0);
    
    \bytecount_RNI3VN22[4]\ : NOR3B
      port map(A => N_253, B => N_59, C => \bytecount[4]_net_1\, 
        Y => N_245);
    
    \address_RNO[3]\ : NOR2
      port map(A => address_n3_i_0, B => 
        state_ns_0_0_o3_5_N_5_mux, Y => N_400);
    
    \address[3]\ : DFN1E1C0
      port map(D => N_400, CLK => clk_c, CLR => reset_c_c, E => 
        addresse, Q => \address_c[3]\);
    
    \bytecount_RNO_2[5]\ : OR3B
      port map(A => \bytecount[4]_net_1\, B => 
        \bytecount_0[0]_net_1\, C => N_63, Y => 
        bytecount_e5_i_208_b0_0_o2_0);
    
    \bytecount_RNO_4[7]\ : OR3B
      port map(A => \bytecount[4]_net_1\, B => N_45_1, C => N_63, 
        Y => N_74);
    
    \bytecount_RNO_3[7]\ : NOR2A
      port map(A => \bytecount[7]_net_1\, B => N_29, Y => 
        bytecount_e7_0_a3_0);
    
    \bytecount_RNO_0[1]\ : OA1C
      port map(A => \bytecount_0_RNIKECE4[0]_net_1\, B => N_92, C
         => \bytecount[1]_net_1\, Y => N_28);
    
    \bytecount_RNO[5]\ : XA1C
      port map(A => \bytecount[5]_net_1\, B => 
        bytecount_e5_i_208_N_11, C => N_29, Y => N_12);
    
    \burstNo_RNIR1TF5[0]\ : OR3A
      port map(A => N_83, B => bytecount_e0_0_o2_1, C => N_81, Y
         => N_84);
    
    \burstNo_RNIGEJE1[2]\ : XA1
      port map(A => \burstNo[1]_net_1\, B => \burstNo[2]_net_1\, 
        C => data_i2c_4_sqmuxa_1, Y => N_157_1);
    
    \address_RNO_0[6]\ : OA1C
      port map(A => \address_c[5]\, B => N_407, C => 
        \address_c[6]\, Y => N_418);
    
    \address[7]\ : DFN1E1C0
      port map(D => N_403, CLK => clk_c, CLR => reset_c_c, E => 
        addresse, Q => \address_c[7]\);
    
    \data_pad_RNIJRP2H[0]\ : OR3
      port map(A => \data_m[0]\, B => \data_i2c_1_m[0]\, C => 
        \data_i2c_2[0]\, Y => \data_i2c[0]\);
    
    \bytecount_RNIDBMQ_1[1]\ : NOR2A
      port map(A => \bytecount[1]_net_1\, B => 
        \bytecount[2]_net_1\, Y => N_109_1);
    
    \bytecount_0_RNI50NR1[0]\ : NOR3A
      port map(A => bytecountlde_i_a2_4_0, B => 
        \bytecount_0[0]_net_1\, C => N_68, Y => N_111);
    
    \state_RNIMR9K8[5]\ : AO1A
      port map(A => N_29, B => bytecount_e0_0_a3_3_1, C => 
        \state_ns[1]\, Y => bytecount_e0_0_0);
    
    \bytecount[2]\ : DFN1C0
      port map(D => N_6, CLK => clk_c, CLR => reset_c_c, Q => 
        \bytecount[2]_net_1\);
    
    \state[3]\ : DFN1C0
      port map(D => N_25, CLK => clk_c, CLR => reset_c_c, Q => 
        \state[3]_net_1\);
    
    \bytecount_RNI55419[0]\ : AOI1B
      port map(A => N_114, B => bytecountlde_i_a3_0, C => 
        un1_bytecount_2_m_2, Y => bytecount_e1_i_o2_0_m1_e_1);
    
    \data_pad_RNID8M65[3]\ : NOR2A
      port map(A => \data_c[3]\, B => N_13, Y => \data_m[3]\);
    
    \bytecount_RNO_4[6]\ : OR2B
      port map(A => \bytecount[5]_net_1\, B => 
        \bytecount[0]_net_1\, Y => bytecount_e6_i_m13_i_o3_0);
    
    \bytecount_RNI0TCL1[0]\ : OR2A
      port map(A => N_45_2, B => N_53, Y => 
        data_i2c_3_sqmuxa_i_o2_1_0);
    
    \bytecount_RNO[6]\ : XA1C
      port map(A => \bytecount[6]_net_1\, B => 
        bytecount_e6_i_N_20, C => bytecount_e6_i_m13_i_0, Y => 
        N_14);
    
    clk_pad : CLKBUF
      port map(PAD => clk, Y => clk_c);
    
    \column_address_pad[5]\ : OUTBUF
      port map(D => \address_c[5]\, PAD => column_address(5));
    
    \bytecount_RNO_0[5]\ : OR3
      port map(A => \bytecount_RNO_1[5]_net_1\, B => 
        bytecount_e5_i_208_b0_0_o2_0, C => N_92, Y => 
        bytecount_e5_i_208_N_11);
    
    \data_pad[5]\ : INBUF
      port map(PAD => data(5), Y => \data_c[5]\);
    
    \bytecount_RNIKH181_0[0]\ : NOR2
      port map(A => N_65, B => \bytecount[0]_net_1\, Y => N_241);
    
    busy_pad : OUTBUF
      port map(D => \state_i[5]\, PAD => busy);
    
    \burstNo_RNI2AE11_0[0]\ : NOR2B
      port map(A => \burstNo[0]_net_1\, B => N_322_2, Y => 
        data_i2c_0_sqmuxa_1);
    
    \state_RNIL1AQ[2]\ : NOR2
      port map(A => \state[1]_net_1\, B => \state[2]_net_1\, Y
         => N_392);
    
    \state_RNIGEJE1_0[5]\ : NOR2A
      port map(A => data_i2c_0_sqmuxa_1, B => \state[5]_net_1\, Y
         => data_i2c_0_sqmuxa);
    
    \address_RNO[7]\ : XA1C
      port map(A => N_24, B => \address_c[7]\, C => 
        state_ns_0_0_o3_5_N_5_mux, Y => N_403);
    
    \bytecount_RNIFDMQ_1[4]\ : NOR2A
      port map(A => \bytecount[4]_net_1\, B => 
        \bytecount[1]_net_1\, Y => N_234_1);
    
    reset_pad_RNIN9FD : CLKINT
      port map(A => \reset_pad\, Y => reset_c_c);
    
    \bytecount_RNILEPA3[1]\ : AO1A
      port map(A => \bytecount[1]_net_1\, B => N_235_1, C => 
        N_236, Y => \data_i2c_1_1[2]\);
    
    \burstNo_RNIDI9M[2]\ : XNOR2
      port map(A => \burstNo[1]_net_1\, B => \burstNo[2]_net_1\, 
        Y => N_31);
    
    \address[6]\ : DFN1E1C0
      port map(D => N_16, CLK => clk_c, CLR => reset_c_c, E => 
        addresse, Q => \address_c[6]\);
    
    \data_pad_RNI1DLGB[6]\ : AO1D
      port map(A => \data_c[6]\, B => N_13, C => 
        \data_i2c_1_i_m[6]\, Y => \data_i2c_0_iv_1[6]\);
    
    \bytecount[3]\ : DFN1C0
      port map(D => N_8, CLK => clk_c, CLR => reset_c_c, Q => 
        \bytecount[3]_net_1\);
    
    \state_RNI365P2[0]\ : NOR3A
      port map(A => bytecountlde_i_a3_1_0, B => 
        \state_RNI1OKO[0]_net_1\, C => N_53, Y => 
        bytecountlde_i_a3_0);
    
    \bytecount_RNIBOKU1[0]\ : NOR2
      port map(A => N_29, B => \bytecount[0]_net_1\, Y => N_112);
    
    \bytecount_RNILI181_2[3]\ : NOR2
      port map(A => N_221, B => \bytecount[3]_net_1\, Y => N_251);
    
    \bytecount_0_RNI4T631[0]\ : NOR3A
      port map(A => \bytecount[4]_net_1\, B => 
        \bytecount_0[0]_net_1\, C => \bytecount[2]_net_1\, Y => 
        N_246);
    
    \burstNo_RNO[1]\ : NOR2
      port map(A => burstNo_n1_i_0, B => 
        state_ns_0_0_o3_5_N_5_mux, Y => N_9);
    
    \burstNo_RNIDI9M_1[2]\ : NOR2
      port map(A => \burstNo[2]_net_1\, B => \burstNo[1]_net_1\, 
        Y => N_322_2);
    
    \state_RNIQPI52[0]\ : NOR3A
      port map(A => state_ns_0_0_o3_5_m1_e_0, B => busy_burst, C
         => N_52, Y => \state_RNIQPI52[0]_net_1\);
    
    \state_RNO_1[0]\ : NOR2B
      port map(A => \state[0]_net_1\, B => busy_burst, Y => N_106);
    
    \state_RNO_8[3]\ : NOR3
      port map(A => \bytecount[4]_net_1\, B => 
        \bytecount[7]_net_1\, C => \bytecount[3]_net_1\, Y => 
        state_tr4_i_a2_0_2);
    
    \bytecount_RNIFDMQ[4]\ : OR2
      port map(A => \bytecount[4]_net_1\, B => 
        \bytecount[1]_net_1\, Y => N_65);
    
    \data_pad[4]\ : INBUF
      port map(PAD => data(4), Y => \data_c[4]\);
    
    \burstNo_RNI3S9O[0]\ : NOR2
      port map(A => \burstNo[0]_net_1\, B => \state[5]_net_1\, Y
         => data_i2c_4_sqmuxa_1);
    
    \bytecount_RNIFDMQ[3]\ : XOR2
      port map(A => \bytecount[3]_net_1\, B => 
        \bytecount[2]_net_1\, Y => N_219_i);
    
    \burstNo_RNITLUV4[2]\ : AO1
      port map(A => data_i2c_4_sqmuxa, B => un1_bytecount_3, C
         => un1_bytecount_4_m, Y => \data_i2c_2[0]\);
    
    \bytecount_RNO_1[7]\ : MX2
      port map(A => bytecount_e7_0_a3_0_2, B => 
        bytecount_e7_0_a3_0, S => N_74, Y => bytecount_e7_0_0);
    
    \bytecount_RNIMH3G2[6]\ : OR3A
      port map(A => N_59, B => N_53, C => N_68, Y => 
        bytecount_e0_0_o2_1);
    
    \bytecount_RNIRNCL1[0]\ : NOR2A
      port map(A => N_256, B => \bytecount[0]_net_1\, Y => N_236);
    
    \state_RNIGEJE1[5]\ : OR2
      port map(A => N_62, B => \state[5]_net_1\, Y => N_13_1);
    
    \address_RNO[2]\ : NOR2
      port map(A => address_n2_i_0, B => 
        state_ns_0_0_o3_5_N_5_mux, Y => N_399);
    
    \state_RNIJPKSD[0]\ : OA1
      port map(A => N_114, B => bytecountlde_i_o2_0_0, C => 
        bytecountlde_i_a3_0, Y => N_92);
    
    \burstNo_RNIDI9M_0[2]\ : OR2B
      port map(A => \burstNo[2]_net_1\, B => \burstNo[1]_net_1\, 
        Y => N_52);
    
    \address_RNO[4]\ : NOR2
      port map(A => address_n4_i_0, B => 
        state_ns_0_0_o3_5_N_5_mux, Y => N_401);
    
    \bytecount_RNIB9MQ[0]\ : NOR2B
      port map(A => \bytecount[1]_net_1\, B => 
        \bytecount[0]_net_1\, Y => un1_bytecount_2_m_2);
    
    \state[2]\ : DFN1C0
      port map(D => \state_ns[3]\, CLK => clk_c, CLR => reset_c_c, 
        Q => \state[2]_net_1\);
    
    \bytecount_RNIKH181[2]\ : NOR2
      port map(A => N_228, B => \bytecount[2]_net_1\, Y => N_231);
    
    \burstNo_RNIUVFO[0]\ : NOR2
      port map(A => \bytecount[4]_net_1\, B => \burstNo[0]_net_1\, 
        Y => state_tr4_i_a2_2_0);
    
    \data_pad[3]\ : INBUF
      port map(PAD => data(3), Y => \data_c[3]\);
    
    \state_RNIFE1RE[5]\ : OR3
      port map(A => \data_i2c_0_iv_1[6]\, B => 
        \data_i2c_0_iv_2[6]\, C => data_i2c_5_sqmuxa, Y => 
        \data_i2c_0_iv[6]\);
    
    \data_pad_RNI5BRAI[2]\ : OR3
      port map(A => \data_m[2]\, B => \data_i2c_1_m[2]\, C => 
        \data_i2c_2[2]\, Y => \data_i2c[2]\);
    
    \bytecount_RNIQTVG1[1]\ : AXOI7
      port map(A => \bytecount[1]_net_1\, B => 
        \bytecount[2]_net_1\, C => N_52, Y => N_83);
    
    \state[1]\ : DFN1C0
      port map(D => \state_RNO[1]_net_1\, CLK => clk_c, CLR => 
        reset_c_c, Q => \state[1]_net_1\);
    
    \data_pad[6]\ : INBUF
      port map(PAD => data(6), Y => \data_c[6]\);
    
    \bytecount_RNIDBMQ_0[1]\ : OR2
      port map(A => \bytecount[1]_net_1\, B => 
        \bytecount[2]_net_1\, Y => N_221);
    
    \bytecount_RNO[2]\ : XA1B
      port map(A => \bytecount[2]_net_1\, B => 
        bytecount_e1_i_o2_0_N_3_mux, C => N_29, Y => N_6);
    
    \bytecount_RNIC05S6[3]\ : OA1
      port map(A => \data_i2c_1_1[0]\, B => \data_i2c_1_2[0]\, C
         => data_i2c_0_sqmuxa, Y => \data_i2c_1_m[0]\);
    
    \column_address_pad[7]\ : OUTBUF
      port map(D => \address_c[7]\, PAD => column_address(7));
    
    \bytecount_RNIGEMQ[4]\ : OR2B
      port map(A => \bytecount[4]_net_1\, B => 
        \bytecount[2]_net_1\, Y => N_222);
    
    \state_RNIUIOR1[5]\ : OR2
      port map(A => \state[5]_net_1\, B => N_157_1, Y => 
        \data_i2c_0_iv_2[6]\);
    
    \bytecount_RNO_0[7]\ : OA1C
      port map(A => \bytecount_0[0]_net_1\, B => N_49, C => N_29, 
        Y => bytecount_e7_0_1_tz);
    
    \state_RNIGEJE1_1[5]\ : NOR2
      port map(A => N_60, B => \state[5]_net_1\, Y => 
        data_i2c_5_sqmuxa);
    
    \bytecount_RNO_1[5]\ : OA1
      port map(A => bytecount_e5_i_208tt_N_4, B => 
        bytecount_e5_i_208tt_N_7, C => N_49, Y => 
        \bytecount_RNO_1[5]_net_1\);
    
    \bytecount_RNINKUR1[2]\ : NOR2A
      port map(A => N_157_1, B => \bytecount[2]_net_1\, Y => 
        un1_bytecount_2_m_1);
    
    \state_RNO[3]\ : AOI1
      port map(A => state_tr4_i_a2_2, B => N_34, C => 
        state_tr4_i_0, Y => N_25);
    
    \state_RNO[0]\ : AO1A
      port map(A => N_49, B => \state_ns_i_a2_i_a3_0[5]\, C => 
        N_106, Y => N_32);
    
    \bytecount_RNO[1]\ : NOR3
      port map(A => bytecount_e1_i_o2_0_N_3_mux, B => N_29, C => 
        N_28, Y => N_4);
    
    \bytecount_RNIDBMQ_0[0]\ : OR2
      port map(A => \bytecount[3]_net_1\, B => 
        \bytecount[0]_net_1\, Y => N_228);
    
    \bytecount_RNO_3[6]\ : OR2
      port map(A => \i2c0.state[20]\, B => \i2c0.state[21]\, Y
         => bytecount_e6_i_N_21);
    
    \data_pad[2]\ : INBUF
      port map(PAD => data(2), Y => \data_c[2]\);
    
    \state_RNO_3[3]\ : NOR2
      port map(A => \bytecount[7]_net_1\, B => 
        \bytecount[3]_net_1\, Y => state_tr4_i_a2_0);
    
    \bytecount_RNICAMQ[0]\ : OR2B
      port map(A => \bytecount[2]_net_1\, B => 
        \bytecount[0]_net_1\, Y => N_218);
    
    \bytecount_RNINGPA3[0]\ : AO1
      port map(A => N_218, B => N_230_1, C => N_234, Y => 
        \data_i2c_1_2[2]\);
    
    \bytecount_RNIB9MQ_0[0]\ : NOR2A
      port map(A => \bytecount[1]_net_1\, B => 
        \bytecount[0]_net_1\, Y => un1_bytecount_4);
    
    \burstNo_RNI2AE11[2]\ : XAI1
      port map(A => \burstNo[1]_net_1\, B => \burstNo[2]_net_1\, 
        C => \burstNo[0]_net_1\, Y => N_62);
    
    \bytecount_RNO_1[6]\ : AO1
      port map(A => bytecount_e6_i_N_21, B => \state[0]_net_1\, C
         => \state[5]_net_1\, Y => bytecount_e6_i_m13_i_0);
    
    \bytecount_RNIH1V96[4]\ : NOR3B
      port map(A => data_i2c_0_sqmuxa, B => \data_i2c_1_i_m_2[6]\, 
        C => N_245, Y => \data_i2c_1_i_m[6]\);
    
    \bytecount[7]\ : DFN1C0
      port map(D => bytecount_e7, CLK => clk_c, CLR => reset_c_c, 
        Q => \bytecount[7]_net_1\);
    
    \address[1]\ : DFN1E1C0
      port map(D => N_398, CLK => clk_c, CLR => reset_c_c, E => 
        addresse, Q => \address_c[1]\);
    
    \bytecount_RNO[4]\ : XA1C
      port map(A => \bytecount[4]_net_1\, B => N_22, C => N_29, Y
         => N_10);
    
    \bytecount_0_RNIKECE4[0]\ : MX2
      port map(A => \bytecount_0[0]_net_1\, B => 
        bytecount_e1_i_o2_0_m3_0_a3_0_0, S => 
        bytecount_e1_i_o2_0_0_N_8_mux, Y => 
        \bytecount_0_RNIKECE4[0]_net_1\);
    
    \state_RNIM42F9[1]\ : AO1A
      port map(A => N_49, B => addresslde_0_a3_0, C => 
        state_ns_0_0_o3_5_N_5_mux, Y => addresse);
    
    \bytecount_RNO_4[5]\ : NOR3
      port map(A => \state[5]_net_1\, B => \i2c0.state[20]\, C
         => \i2c0.state[21]\, Y => bytecount_e5_i_208tt_N_7);
    
    \bytecount_RNI1MPE6[3]\ : NOR3B
      port map(A => data_i2c_0_sqmuxa, B => \data_i2c_1_m_2[3]\, 
        C => N_220, Y => \data_i2c_1_m[3]\);
    
    \data_pad_RNIC7M65[2]\ : NOR2A
      port map(A => \data_c[2]\, B => N_13, Y => \data_m[2]\);
    
    \state_RNO_0[3]\ : NOR3A
      port map(A => state_tr4_i_a2_0, B => \bytecount_0[0]_net_1\, 
        C => N_68, Y => state_tr4_i_a2_2);
    
    \state_RNIKCDP4[5]\ : AO1D
      port map(A => N_70, B => N_68, C => N_13_1, Y => N_13);
    
    \burstNo_RNO[2]\ : NOR2
      port map(A => N_36_i, B => state_ns_0_0_o3_5_N_5_mux, Y => 
        N_11);
    
    \address_RNIT7TN[1]\ : OR2B
      port map(A => \address_c[1]\, B => \address_c[0]\, Y => 
        N_404);
    
    \bytecount_RNIKH181[0]\ : NOR2A
      port map(A => N_234_1, B => \bytecount[0]_net_1\, Y => 
        N_234);
    
    \bytecount[5]\ : DFN1C0
      port map(D => N_12, CLK => clk_c, CLR => reset_c_c, Q => 
        \bytecount[5]_net_1\);
    
    \bytecount_RNIMJ181[2]\ : NOR2A
      port map(A => N_254, B => \bytecount[2]_net_1\, Y => N_256);
    
    \bytecount_RNO_0[6]\ : OR3
      port map(A => N_49, B => bytecount_e6_i_m13_i_o3_1, C => 
        N_92, Y => bytecount_e6_i_N_20);
    
    \bytecount_RNO[7]\ : AO1
      port map(A => \bytecount[7]_net_1\, B => 
        bytecount_e7_0_1_tz, C => bytecount_e7_0_0, Y => 
        bytecount_e7);
    
    \bytecount[1]\ : DFN1C0
      port map(D => N_4, CLK => clk_c, CLR => reset_c_c, Q => 
        \bytecount[1]_net_1\);
    
    \data_pad_RNIB6M65[1]\ : NOR2A
      port map(A => \data_c[1]\, B => N_13, Y => \data_m[1]\);
    
    \data_pad[0]\ : INBUF
      port map(PAD => data(0), Y => \data_c[0]\);
    
    \bytecount_RNI41DL1[6]\ : XA1C
      port map(A => \bytecount[5]_net_1\, B => 
        \bytecount[6]_net_1\, C => N_65, Y => 
        addresslde_0_o2_m1_e_0);
    
    scl_pad : TRIBUFF
      port map(D => \state_RNI1MUJ2[4]\, E => \i2c0.state_i[21]\, 
        PAD => scl);
    
    \bytecount_RNILJMQ[6]\ : OR2
      port map(A => \bytecount[6]_net_1\, B => 
        \bytecount[5]_net_1\, Y => N_68);
    
    \bytecount_RNIMJ181[4]\ : NOR2A
      port map(A => \bytecount[4]_net_1\, B => N_221, Y => N_233);
    

end DEF_ARCH; 
