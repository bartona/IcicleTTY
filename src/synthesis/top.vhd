-- Version: v11.0 11.0.0.23

library ieee;
use ieee.std_logic_1164.all;
library igloo;
use igloo.all;

entity i2c is

    port( state_d       : in    std_logic_vector(2 to 2);
          state_ns_0    : out   std_logic_vector(0 to 0);
          state_i_0_0   : in    std_logic;
          data          : in    std_logic_vector(7 downto 1);
          scl_c         : out   std_logic;
          sda_1         : out   std_logic;
          sda_cl        : out   std_logic;
          un5_bytecount : in    std_logic;
          push_i_0      : in    std_logic;
          D3_c_c        : in    std_logic;
          clk_c         : in    std_logic
        );

end i2c;

architecture DEF_ARCH of i2c is 

  component AND2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AND3
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
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

  component NOR2B
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

  component DFN1E1C0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          CLR : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component AO1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component NOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
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

  component NOR3A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component INV
    port( A : in    std_logic := 'U';
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

  component OR3B
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

  component AO1A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component DFN1P0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          PRE : in    std_logic := 'U';
          Q   : out   std_logic
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

  component NOR2A
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

  component AOI1
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
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

  component NOR3
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

  component OR2A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

    signal \state_0[6]_net_1\, \state[7]_net_1\, 
        \state_0[15]_net_1\, \state_RNIQPTM[18]_net_1\, 
        \state_ns_a2_0_7[0]\, \state_ns_a2_0_7_5[0]\, N_550, 
        N_528, N_525, \state[8]_net_1\, \state[6]_net_1\, 
        \state_ns[0]\, \state_ns_a2_1[0]\, sda_5, N_69, N_512_1, 
        N_531, N_84, N_82, N_630, \databit[1]_net_1\, sda_4, 
        N_633, \databit[0]_net_1\, N_464, \databit[2]_net_1\, 
        \state_i_0[16]\, N_529, \state[15]_net_1\, 
        \state[17]_net_1\, un1_databit_i_i_a2_29, 
        un1_databit_i_i_a2_21, un1_databit_i_i_a2_20, 
        un1_databit_i_i_a2_27, un1_databit_i_i_a2_28, 
        un1_databit_i_i_a2_17, un1_databit_i_i_a2_16, 
        un1_databit_i_i_a2_25, un1_databit_i_i_a2_13, 
        un1_databit_i_i_a2_12, un1_databit_i_i_a2_23, 
        un1_databit_i_i_a2_5, un1_databit_i_i_a2_4, 
        un1_databit_i_i_a2_19, un1_databit_i_i_a2_15, 
        \databit[3]_net_1\, un1_databit_i_i_a2_11, 
        \databit[27]_net_1\, \databit[24]_net_1\, 
        un1_databit_i_i_a2_9, \databit[10]_net_1\, 
        \databit[13]_net_1\, un1_databit_i_i_a2_7, 
        \databit[25]_net_1\, \databit[28]_net_1\, 
        \databit[8]_net_1\, \databit[9]_net_1\, 
        \databit[12]_net_1\, \databit[15]_net_1\, 
        \databit[4]_net_1\, \databit[6]_net_1\, 
        \databit[21]_net_1\, \databit[18]_net_1\, 
        \databit[5]_net_1\, \databit[7]_net_1\, 
        \databit[16]_net_1\, \databit[19]_net_1\, 
        \databit[11]_net_1\, \databit[22]_net_1\, 
        \state_RNO[8]_net_1\, N_518, \state_ns[17]\, N_519, 
        \state_ns[14]\, N_526, \databit_2[3]\, I_9, N_24, 
        \addrbit[8]_net_1\, \DWACT_FINC_E[4]\, N_21, 
        \DWACT_FINC_E[7]\, \DWACT_FINC_E[6]\, I_98_0, N_2, 
        \addrbit[31]_net_1\, \DWACT_FINC_E[24]\, 
        \DWACT_FINC_E[23]\, \DWACT_FINC_E[27]\, I_95_0, N_3, 
        \addrbit[30]_net_1\, \DWACT_FINC_E[26]\, I_92_0, N_4, 
        \addrbit[29]_net_1\, \DWACT_FINC_E[25]\, I_89_0, N_5, 
        \addrbit[28]_net_1\, \addrbit[27]_net_1\, 
        \DWACT_FINC_E[29]\, \DWACT_FINC_E[30]\, I_86_0, N_6, 
        \DWACT_FINC_E[15]\, \DWACT_FINC_E[17]\, 
        \DWACT_FINC_E[22]\, I_82_0, N_7, \addrbit[26]_net_1\, 
        \DWACT_FINC_E[21]\, \DWACT_FINC_E[9]\, \DWACT_FINC_E[12]\, 
        I_77_0, N_8, \addrbit[25]_net_1\, \DWACT_FINC_E[13]\, 
        \DWACT_FINC_E[19]\, I_74_0, N_9, \addrbit[24]_net_1\, 
        \DWACT_FINC_E[18]\, \addrbit[21]_net_1\, 
        \addrbit[22]_net_1\, \addrbit[23]_net_1\, I_70_0, N_10, 
        \DWACT_FINC_E[33]\, \DWACT_FINC_E[34]\, \DWACT_FINC_E[2]\, 
        \DWACT_FINC_E[5]\, \addrbit[0]_net_1\, \addrbit[1]_net_1\, 
        \addrbit[2]_net_1\, I_65_0, N_11, \DWACT_FINC_E[28]\, 
        \DWACT_FINC_E[16]\, I_62_0, N_12, \addrbit[18]_net_1\, 
        \addrbit[19]_net_1\, \addrbit[20]_net_1\, I_59_0, N_13, 
        \DWACT_FINC_E[14]\, I_56_0, N_14, I_53_0, N_15, 
        \DWACT_FINC_E[10]\, \DWACT_FINC_E[0]\, 
        \addrbit[15]_net_1\, \addrbit[16]_net_1\, 
        \addrbit[17]_net_1\, I_49_0, N_16, \DWACT_FINC_E[11]\, 
        I_46_0, N_17, I_43_0, N_18, \addrbit[12]_net_1\, 
        \addrbit[13]_net_1\, \addrbit[14]_net_1\, I_40_0, N_19, 
        \DWACT_FINC_E[8]\, I_37_0, N_20, I_35_0, 
        \addrbit[9]_net_1\, \addrbit[10]_net_1\, 
        \addrbit[11]_net_1\, I_32_0, N_22, \addrbit[6]_net_1\, 
        \addrbit[7]_net_1\, I_26_0, \DWACT_FINC_E[3]\, 
        \addrbit[3]_net_1\, \addrbit[4]_net_1\, 
        \addrbit[5]_net_1\, N_24_0, \DWACT_FINC_E_0[4]\, N_21_0, 
        \DWACT_FINC_E_0[7]\, \DWACT_FINC_E_0[6]\, I_98, N_2_0, 
        \databit[31]_net_1\, \DWACT_FINC_E_0[24]\, 
        \DWACT_FINC_E_0[23]\, \DWACT_FINC_E_0[27]\, I_95, N_3_0, 
        \databit[30]_net_1\, \DWACT_FINC_E_0[26]\, I_92, N_4_0, 
        \databit[29]_net_1\, \DWACT_FINC_E_0[25]\, I_89, N_5_0, 
        \DWACT_FINC_E_0[29]\, \DWACT_FINC_E_0[30]\, I_86, N_6_0, 
        \DWACT_FINC_E_0[15]\, \DWACT_FINC_E_0[17]\, 
        \DWACT_FINC_E_0[22]\, I_82, N_7_0, \databit[26]_net_1\, 
        \DWACT_FINC_E_0[21]\, \DWACT_FINC_E_0[9]\, 
        \DWACT_FINC_E_0[12]\, I_77, N_8_0, \DWACT_FINC_E_0[13]\, 
        \DWACT_FINC_E_0[19]\, I_74, N_9_0, \DWACT_FINC_E_0[18]\, 
        \databit[23]_net_1\, I_70, N_10_0, \DWACT_FINC_E_0[33]\, 
        \DWACT_FINC_E_0[34]\, \DWACT_FINC_E_0[2]\, 
        \DWACT_FINC_E_0[5]\, I_65, N_11_0, \DWACT_FINC_E_0[28]\, 
        \DWACT_FINC_E_0[16]\, I_62, N_12_0, \databit[20]_net_1\, 
        I_59, N_13_0, \DWACT_FINC_E_0[14]\, I_56, N_14_0, I_53, 
        N_15_0, \DWACT_FINC_E_0[10]\, \DWACT_FINC_E_0[0]\, 
        \databit[17]_net_1\, I_49, N_16_0, \DWACT_FINC_E_0[11]\, 
        I_46, N_17_0, I_43, N_18_0, \databit[14]_net_1\, I_40, 
        N_19_0, \DWACT_FINC_E_0[8]\, I_37, N_20_0, I_35, I_32, 
        N_22_0, I_28, N_23, I_26, \DWACT_FINC_E_0[3]\, N_31, N_29, 
        N_31_0, N_29_0, \state_i[17]\, \state_i[10]\, 
        \state[10]_net_1\, \state_ns_0_a2_0_0[0]\, next_byte, 
        \state_ns_i_a2_2[2]\, \state_ns_a2_27_4[5]\, 
        \state_ns_a2_27_5[5]\, \state_ns_i_a2_1[2]\, 
        \state_ns_a2_23_0[5]\, \state_ns_a2_23_1[5]\, 
        \state_ns_a2_0[5]\, un1_databit_i_i_a2_3, 
        un1_databit_i_i_a2_1, \state_ns_a2_2[5]\, 
        \state_ns_a2_1[5]\, \state_ns_a2_0_7_3[0]\, 
        sda_cl_1_0_a2_0, \state_ns_a2_0_7_1[0]\, 
        \state[12]_net_1\, \state[14]_net_1\, \state[2]_net_1\, 
        \state_ns_a2_29_12[5]\, \state_ns_a2_29_1[5]\, 
        \state_ns_a2_29_0[5]\, \state_ns_a2_29_9[5]\, 
        \state_ns_a2_29_11[5]\, \state_ns_a2_29_7[5]\, 
        \state_ns_a2_29_10[5]\, \state_ns_a2_29_5[5]\, 
        \state_ns_a2_29_3[5]\, scl_1_0_i_a2_0, \state[0]_net_1\, 
        \state_ns_a2_27_3[5]\, \state_ns_a2_27_1[5]\, 
        \state[5]_net_1\, \state[11]_net_1\, \state_ns_a2_3_0[0]\, 
        \state[13]_net_1\, \state[1]_net_1\, N_515_28, 
        \state_RNIVJ3I[4]_net_1\, \scl_RNO\, \state[19]_net_1\, 
        sda_cl_1, \state_ns[5]\, N_631, N_632, \state_i_0[18]\, 
        \state_RNO[17]_net_1\, \state_RNO[18]_net_1\, 
        \state_i_0[9]\, \addrbit_3[2]\, I_7_0, \addrbit_3[1]\, 
        I_5_0, \addrbit_3[0]\, \state[4]_net_1\, I_4, I_5, I_7, 
        I_12, I_14, I_17, I_20, I_23, I_9_0, I_12_0, I_14_0, 
        I_17_0, I_20_0, I_23_0, I_28_0, \DWACT_FINC_E[20]\, N_25, 
        N_26, N_27, \DWACT_FINC_E[1]\, N_28, N_30, 
        \DWACT_FINC_E_0[20]\, N_23_0, N_25_0, N_26_0, N_27_0, 
        \DWACT_FINC_E_0[1]\, N_28_0, N_30_0, \GND\, \VCC\
         : std_logic;

begin 


    un3_addrbit_I_63 : AND2
      port map(A => \DWACT_FINC_E[15]\, B => \addrbit[21]_net_1\, 
        Y => \DWACT_FINC_E[16]\);
    
    un2_databit_I_82 : XOR2
      port map(A => N_7_0, B => \databit[26]_net_1\, Y => I_82);
    
    un2_databit_I_52 : AND3
      port map(A => \DWACT_FINC_E_0[28]\, B => 
        \DWACT_FINC_E_0[10]\, C => \DWACT_FINC_E_0[12]\, Y => 
        N_15_0);
    
    \state[0]\ : DFN1C0
      port map(D => \state[1]_net_1\, CLK => clk_c, CLR => D3_c_c, 
        Q => \state[0]_net_1\);
    
    un3_addrbit_I_57 : AND2
      port map(A => \addrbit[18]_net_1\, B => \addrbit[19]_net_1\, 
        Y => \DWACT_FINC_E[14]\);
    
    un3_addrbit_I_84 : AND3
      port map(A => \DWACT_FINC_E[15]\, B => \DWACT_FINC_E[17]\, 
        C => \DWACT_FINC_E[22]\, Y => \DWACT_FINC_E[23]\);
    
    un2_databit_I_93 : AND3
      port map(A => \databit[27]_net_1\, B => \databit[28]_net_1\, 
        C => \databit[29]_net_1\, Y => \DWACT_FINC_E_0[26]\);
    
    \databit_RNIT02N[1]\ : NOR2B
      port map(A => \databit[1]_net_1\, B => \databit[2]_net_1\, 
        Y => un1_databit_i_i_a2_15);
    
    \addrbit_RNINC7F3[7]\ : NOR3C
      port map(A => \state_ns_a2_29_1[5]\, B => 
        \state_ns_a2_29_0[5]\, C => \state_ns_a2_29_9[5]\, Y => 
        \state_ns_a2_29_12[5]\);
    
    \addrbit[14]\ : DFN1E1C0
      port map(D => I_40_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[15]_net_1\, Q => \addrbit[14]_net_1\);
    
    un3_addrbit_I_47 : AND2
      port map(A => \addrbit[15]_net_1\, B => \addrbit[16]_net_1\, 
        Y => \DWACT_FINC_E[11]\);
    
    sda_1_RNO_4 : AO1
      port map(A => N_528, B => \state_i_0[16]\, C => N_529, Y
         => N_464);
    
    un2_databit_I_31 : AND3
      port map(A => \DWACT_FINC_E_0[6]\, B => \databit[9]_net_1\, 
        C => \databit[10]_net_1\, Y => N_22_0);
    
    un2_databit_I_88 : AND3
      port map(A => \DWACT_FINC_E_0[24]\, B => 
        \DWACT_FINC_E_0[23]\, C => \databit[27]_net_1\, Y => 
        N_5_0);
    
    un2_databit_I_58 : AND3
      port map(A => \DWACT_FINC_E_0[28]\, B => 
        \DWACT_FINC_E_0[13]\, C => \DWACT_FINC_E_0[14]\, Y => 
        N_13_0);
    
    \databit[1]\ : DFN1E1C0
      port map(D => I_5, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[6]_net_1\, Q => \databit[1]_net_1\);
    
    \addrbit_RNIF0LV[28]\ : NOR2
      port map(A => \addrbit[28]_net_1\, B => \addrbit[27]_net_1\, 
        Y => \state_ns_a2_23_1[5]\);
    
    \addrbit[27]\ : DFN1E1C0
      port map(D => I_86_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state[15]_net_1\, Q => \addrbit[27]_net_1\);
    
    un3_addrbit_I_9 : XOR2
      port map(A => N_30_0, B => \addrbit[3]_net_1\, Y => I_9_0);
    
    sda_1_RNO_10 : MX2
      port map(A => data(3), B => data(7), S => 
        \databit[2]_net_1\, Y => N_632);
    
    \databit[20]\ : DFN1E1C0
      port map(D => I_59, CLK => clk_c, CLR => D3_c_c, E => 
        \state[6]_net_1\, Q => \databit[20]_net_1\);
    
    \databit[17]\ : DFN1E1C0
      port map(D => I_49, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[6]_net_1\, Q => \databit[17]_net_1\);
    
    un2_databit_I_83 : AND3
      port map(A => \databit[24]_net_1\, B => \databit[25]_net_1\, 
        C => \databit[26]_net_1\, Y => \DWACT_FINC_E_0[22]\);
    
    un2_databit_I_53 : XOR2
      port map(A => N_15_0, B => \databit[18]_net_1\, Y => I_53);
    
    \databit[0]\ : DFN1E1C0
      port map(D => I_4, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[6]_net_1\, Q => \databit[0]_net_1\);
    
    un3_addrbit_I_31 : AND3
      port map(A => \DWACT_FINC_E[6]\, B => \addrbit[9]_net_1\, C
         => \addrbit[10]_net_1\, Y => N_22);
    
    \state[10]\ : DFN1C0
      port map(D => \state[11]_net_1\, CLK => clk_c, CLR => 
        D3_c_c, Q => \state[10]_net_1\);
    
    \addrbit_RNI2T5G1[31]\ : NOR3A
      port map(A => N_529, B => \addrbit[31]_net_1\, C => 
        \addrbit[30]_net_1\, Y => \state_ns_a2_0[5]\);
    
    un2_databit_I_4 : INV
      port map(A => \databit[0]_net_1\, Y => I_4);
    
    un2_databit_I_32 : XOR2
      port map(A => N_22_0, B => \databit[11]_net_1\, Y => I_32);
    
    \state_RNO[17]\ : AOI1B
      port map(A => \state_ns_i_a2_2[2]\, B => N_515_28, C => 
        \state[15]_net_1\, Y => \state_RNO[17]_net_1\);
    
    un3_addrbit_I_55 : AND3
      port map(A => \DWACT_FINC_E[28]\, B => \DWACT_FINC_E[13]\, 
        C => \addrbit[18]_net_1\, Y => N_14);
    
    un2_databit_I_97 : AND3
      port map(A => \DWACT_FINC_E_0[24]\, B => 
        \DWACT_FINC_E_0[23]\, C => \DWACT_FINC_E_0[27]\, Y => 
        N_2_0);
    
    \addrbit[23]\ : DFN1E1C0
      port map(D => I_70_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state[15]_net_1\, Q => \addrbit[23]_net_1\);
    
    un3_addrbit_I_91 : AND3
      port map(A => \DWACT_FINC_E[24]\, B => \DWACT_FINC_E[23]\, 
        C => \DWACT_FINC_E[25]\, Y => N_4);
    
    \state_0[6]\ : DFN1C0
      port map(D => \state[7]_net_1\, CLK => clk_c, CLR => D3_c_c, 
        Q => \state_0[6]_net_1\);
    
    \addrbit[9]\ : DFN1E1C0
      port map(D => I_26_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[15]_net_1\, Q => \addrbit[9]_net_1\);
    
    un3_addrbit_I_45 : AND3
      port map(A => \DWACT_FINC_E[6]\, B => \DWACT_FINC_E[10]\, C
         => \addrbit[15]_net_1\, Y => N_17);
    
    \state[6]\ : DFN1C0
      port map(D => \state[7]_net_1\, CLK => clk_c, CLR => D3_c_c, 
        Q => \state[6]_net_1\);
    
    sda_1_RNO_6 : MX2
      port map(A => N_631, B => N_632, S => \databit[1]_net_1\, Y
         => N_633);
    
    sda_1_RNO_1 : NOR2
      port map(A => \state[19]_net_1\, B => \state[0]_net_1\, Y
         => N_512_1);
    
    un3_addrbit_I_56 : XOR2
      port map(A => N_14, B => \addrbit[19]_net_1\, Y => I_56_0);
    
    \addrbit[19]\ : DFN1E1C0
      port map(D => I_56_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state[15]_net_1\, Q => \addrbit[19]_net_1\);
    
    \databit_RNISU323[11]\ : NOR3C
      port map(A => un1_databit_i_i_a2_5, B => 
        un1_databit_i_i_a2_4, C => un1_databit_i_i_a2_19, Y => 
        un1_databit_i_i_a2_25);
    
    un3_addrbit_I_46 : XOR2
      port map(A => N_17, B => \addrbit[16]_net_1\, Y => I_46_0);
    
    un2_databit_I_38 : AND2
      port map(A => \databit[12]_net_1\, B => \databit[13]_net_1\, 
        Y => \DWACT_FINC_E_0[8]\);
    
    un2_databit_I_6 : NOR2B
      port map(A => \databit[1]_net_1\, B => \databit[0]_net_1\, 
        Y => N_31_0);
    
    scl_RNO : OR3B
      port map(A => scl_1_0_i_a2_0, B => N_550, C => 
        \state[19]_net_1\, Y => \scl_RNO\);
    
    un3_addrbit_I_34 : NOR2B
      port map(A => \DWACT_FINC_E[7]\, B => \DWACT_FINC_E[6]\, Y
         => N_21);
    
    un2_databit_I_75 : AND3
      port map(A => \DWACT_FINC_E_0[15]\, B => 
        \DWACT_FINC_E_0[17]\, C => \databit[24]_net_1\, Y => 
        \DWACT_FINC_E_0[19]\);
    
    un2_databit_I_87 : AND2
      port map(A => \DWACT_FINC_E_0[29]\, B => 
        \DWACT_FINC_E_0[30]\, Y => \DWACT_FINC_E_0[24]\);
    
    un2_databit_I_57 : AND2
      port map(A => \databit[18]_net_1\, B => \databit[19]_net_1\, 
        Y => \DWACT_FINC_E_0[14]\);
    
    \state_RNIO15R1[1]\ : NOR3B
      port map(A => \state_ns_a2_3_0[0]\, B => 
        \state_RNIVJ3I[4]_net_1\, C => \state_RNIQPTM[18]_net_1\, 
        Y => N_550);
    
    un3_addrbit_I_94 : AND3
      port map(A => \DWACT_FINC_E[24]\, B => \DWACT_FINC_E[23]\, 
        C => \DWACT_FINC_E[26]\, Y => N_3);
    
    un2_databit_I_33 : AND3
      port map(A => \databit[9]_net_1\, B => \databit[10]_net_1\, 
        C => \databit[11]_net_1\, Y => \DWACT_FINC_E_0[7]\);
    
    \addrbit_RNIF0LV[26]\ : NOR2
      port map(A => \addrbit[29]_net_1\, B => \addrbit[26]_net_1\, 
        Y => \state_ns_a2_23_0[5]\);
    
    \databit_RNIF53I1[29]\ : NOR3A
      port map(A => un1_databit_i_i_a2_3, B => 
        \databit[30]_net_1\, C => \databit[29]_net_1\, Y => 
        un1_databit_i_i_a2_17);
    
    un3_addrbit_I_58 : AND3
      port map(A => \DWACT_FINC_E[28]\, B => \DWACT_FINC_E[13]\, 
        C => \DWACT_FINC_E[14]\, Y => N_13);
    
    un3_addrbit_I_48 : AND3
      port map(A => \DWACT_FINC_E[6]\, B => \DWACT_FINC_E[10]\, C
         => \DWACT_FINC_E[11]\, Y => N_16);
    
    un2_databit_I_49 : XOR2
      port map(A => N_16_0, B => \databit[17]_net_1\, Y => I_49);
    
    \state_0[15]\ : DFN1C0
      port map(D => \state_RNIQPTM[18]_net_1\, CLK => clk_c, CLR
         => D3_c_c, Q => \state_0[15]_net_1\);
    
    \addrbit_RNIRLJN1[7]\ : NOR3A
      port map(A => \state_ns_a2_29_3[5]\, B => 
        \addrbit[10]_net_1\, C => \addrbit[7]_net_1\, Y => 
        \state_ns_a2_29_9[5]\);
    
    \state_RNO_1[14]\ : NOR3C
      port map(A => \state_ns_a2_23_0[5]\, B => 
        \state_ns_a2_23_1[5]\, C => \state[15]_net_1\, Y => 
        \state_ns_a2_1[5]\);
    
    sda_cl_RNO : NOR3C
      port map(A => sda_cl_1_0_a2_0, B => 
        \state_RNIVJ3I[4]_net_1\, C => N_526, Y => sda_cl_1);
    
    \databit_RNI7T2I1[31]\ : NOR3A
      port map(A => un1_databit_i_i_a2_1, B => 
        \databit[20]_net_1\, C => \databit[31]_net_1\, Y => 
        un1_databit_i_i_a2_16);
    
    \databit[10]\ : DFN1E1C0
      port map(D => I_28, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[6]_net_1\, Q => \databit[10]_net_1\);
    
    un3_addrbit_I_72 : AND2
      port map(A => \DWACT_FINC_E[15]\, B => \DWACT_FINC_E[17]\, 
        Y => \DWACT_FINC_E[18]\);
    
    un2_databit_I_70 : XOR2
      port map(A => N_10_0, B => \databit[23]_net_1\, Y => I_70);
    
    \state[4]\ : DFN1C0
      port map(D => \state[5]_net_1\, CLK => clk_c, CLR => D3_c_c, 
        Q => \state[4]_net_1\);
    
    sda_1_RNO_2 : NOR3C
      port map(A => \state_i_0[16]\, B => N_528, C => N_525, Y
         => N_531);
    
    \state_RNIONTM[17]\ : NOR2
      port map(A => \state[15]_net_1\, B => \state[17]_net_1\, Y
         => N_528);
    
    un2_databit_I_19 : AND3
      port map(A => \DWACT_FINC_E_0[0]\, B => \DWACT_FINC_E_0[2]\, 
        C => \databit[6]_net_1\, Y => N_26);
    
    un2_databit_I_37 : XOR2
      port map(A => N_20_0, B => \databit[13]_net_1\, Y => I_37);
    
    \addrbit_RNI7MIV[13]\ : NOR2
      port map(A => \addrbit[13]_net_1\, B => \addrbit[16]_net_1\, 
        Y => \state_ns_a2_29_3[5]\);
    
    un2_databit_I_69 : AND3
      port map(A => \DWACT_FINC_E_0[29]\, B => 
        \DWACT_FINC_E_0[13]\, C => \DWACT_FINC_E_0[33]\, Y => 
        N_10_0);
    
    \state_RNINF38N5[3]\ : AO1A
      port map(A => un5_bytecount, B => \state_ns_0_a2_0_0[0]\, C
         => state_d(2), Y => state_ns_0(0));
    
    \state[7]\ : DFN1C0
      port map(D => \state[8]_net_1\, CLK => clk_c, CLR => D3_c_c, 
        Q => \state[7]_net_1\);
    
    \addrbit[24]\ : DFN1E1C0
      port map(D => I_74_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state[15]_net_1\, Q => \addrbit[24]_net_1\);
    
    \databit_RNI5OVH1[10]\ : NOR3A
      port map(A => un1_databit_i_i_a2_9, B => 
        \databit[10]_net_1\, C => \databit[13]_net_1\, Y => 
        un1_databit_i_i_a2_20);
    
    un2_databit_I_76 : AND3
      port map(A => \DWACT_FINC_E_0[29]\, B => 
        \DWACT_FINC_E_0[13]\, C => \DWACT_FINC_E_0[19]\, Y => 
        N_8_0);
    
    un3_addrbit_I_82 : XOR2
      port map(A => N_7, B => \addrbit[26]_net_1\, Y => I_82_0);
    
    \state[14]\ : DFN1C0
      port map(D => \state_ns[5]\, CLK => clk_c, CLR => D3_c_c, Q
         => \state[14]_net_1\);
    
    \databit_RNIQ14E1[3]\ : NOR3B
      port map(A => \databit[0]_net_1\, B => 
        un1_databit_i_i_a2_15, C => \databit[3]_net_1\, Y => 
        un1_databit_i_i_a2_23);
    
    un2_databit_I_44 : AND2
      port map(A => \DWACT_FINC_E_0[7]\, B => \DWACT_FINC_E_0[9]\, 
        Y => \DWACT_FINC_E_0[10]\);
    
    \addrbit_RNIAC9V1[20]\ : NOR3A
      port map(A => \state_ns_a2_27_1[5]\, B => 
        \addrbit[20]_net_1\, C => \addrbit[23]_net_1\, Y => 
        \state_ns_a2_27_4[5]\);
    
    \state[5]\ : DFN1C0
      port map(D => \state_ns[14]\, CLK => clk_c, CLR => D3_c_c, 
        Q => \state[5]_net_1\);
    
    scl_RNO_0 : NOR2
      port map(A => \state[7]_net_1\, B => \state[0]_net_1\, Y
         => scl_1_0_i_a2_0);
    
    \databit[24]\ : DFN1E1C0
      port map(D => I_74, CLK => clk_c, CLR => D3_c_c, E => 
        \state[6]_net_1\, Q => \databit[24]_net_1\);
    
    GND_i : GND
      port map(Y => \GND\);
    
    \databit_RNIDS3G1[24]\ : NOR3A
      port map(A => un1_databit_i_i_a2_11, B => 
        \databit[27]_net_1\, C => \databit[24]_net_1\, Y => 
        un1_databit_i_i_a2_21);
    
    un2_databit_I_14 : XOR2
      port map(A => N_28, B => \databit[5]_net_1\, Y => I_14);
    
    \databit_RNO[3]\ : AOI1B
      port map(A => un1_databit_i_i_a2_29, B => 
        un1_databit_i_i_a2_28, C => I_9, Y => \databit_2[3]\);
    
    un2_databit_I_64 : AND3
      port map(A => \DWACT_FINC_E_0[28]\, B => 
        \DWACT_FINC_E_0[13]\, C => \DWACT_FINC_E_0[16]\, Y => 
        N_11_0);
    
    un2_databit_I_41 : AND3
      port map(A => \databit[12]_net_1\, B => \databit[13]_net_1\, 
        C => \databit[14]_net_1\, Y => \DWACT_FINC_E_0[9]\);
    
    \state_RNO_1[19]\ : NOR3C
      port map(A => \state_ns_a2_0_7_5[0]\, B => N_550, C => 
        N_528, Y => \state_ns_a2_0_7[0]\);
    
    \databit[9]\ : DFN1E1C0
      port map(D => I_26, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[6]_net_1\, Q => \databit[9]_net_1\);
    
    un3_addrbit_I_70 : XOR2
      port map(A => N_10, B => \addrbit[23]_net_1\, Y => I_70_0);
    
    un2_databit_I_25 : NOR2B
      port map(A => \databit[8]_net_1\, B => \DWACT_FINC_E_0[4]\, 
        Y => N_24_0);
    
    \sda_1\ : DFN1P0
      port map(D => sda_5, CLK => clk_c, PRE => D3_c_c, Q => 
        sda_1);
    
    un3_addrbit_I_59 : XOR2
      port map(A => N_13, B => \addrbit[20]_net_1\, Y => I_59_0);
    
    \addrbit_RNIV6FG[3]\ : NOR2
      port map(A => \addrbit[3]_net_1\, B => \addrbit[0]_net_1\, 
        Y => \state_ns_a2_29_7[5]\);
    
    \addrbit[29]\ : DFN1E1C0
      port map(D => I_92_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state[15]_net_1\, Q => \addrbit[29]_net_1\);
    
    \state_RNO[16]\ : INV
      port map(A => \state[17]_net_1\, Y => \state_i[17]\);
    
    un3_addrbit_I_53 : XOR2
      port map(A => N_15, B => \addrbit[18]_net_1\, Y => I_53_0);
    
    un3_addrbit_I_21 : AND2
      port map(A => \addrbit[6]_net_1\, B => \addrbit[7]_net_1\, 
        Y => \DWACT_FINC_E[3]\);
    
    \addrbit[6]\ : DFN1E1C0
      port map(D => I_17_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[15]_net_1\, Q => \addrbit[6]_net_1\);
    
    un3_addrbit_I_49 : XOR2
      port map(A => N_16, B => \addrbit[17]_net_1\, Y => I_49_0);
    
    un2_databit_I_11 : NOR2B
      port map(A => \databit[3]_net_1\, B => \DWACT_FINC_E_0[0]\, 
        Y => N_29_0);
    
    \databit[30]\ : DFN1E1C0
      port map(D => I_95, CLK => clk_c, CLR => D3_c_c, E => 
        \state[6]_net_1\, Q => \databit[30]_net_1\);
    
    un3_addrbit_I_6 : NOR2B
      port map(A => \addrbit[1]_net_1\, B => \addrbit[0]_net_1\, 
        Y => N_31);
    
    un3_addrbit_I_43 : XOR2
      port map(A => N_18, B => \addrbit[15]_net_1\, Y => I_43_0);
    
    \addrbit_RNIUU0E7[19]\ : NOR3C
      port map(A => \state_ns_a2_27_4[5]\, B => 
        \state_ns_a2_27_5[5]\, C => \state_ns_i_a2_1[2]\, Y => 
        \state_ns_i_a2_2[2]\);
    
    un3_addrbit_I_11 : NOR2B
      port map(A => \addrbit[3]_net_1\, B => \DWACT_FINC_E[0]\, Y
         => N_29);
    
    un2_databit_I_61 : AND3
      port map(A => \DWACT_FINC_E_0[28]\, B => 
        \DWACT_FINC_E_0[13]\, C => \DWACT_FINC_E_0[15]\, Y => 
        N_12_0);
    
    \addrbit_RNIV6FG[2]\ : NOR2B
      port map(A => \addrbit[1]_net_1\, B => \addrbit[2]_net_1\, 
        Y => N_529);
    
    un2_databit_I_42 : AND3
      port map(A => \DWACT_FINC_E_0[6]\, B => \DWACT_FINC_E_0[7]\, 
        C => \DWACT_FINC_E_0[9]\, Y => N_18_0);
    
    un3_addrbit_I_77 : XOR2
      port map(A => N_8, B => \addrbit[25]_net_1\, Y => I_77_0);
    
    un3_addrbit_I_80 : AND3
      port map(A => \DWACT_FINC_E[7]\, B => \DWACT_FINC_E[9]\, C
         => \DWACT_FINC_E[12]\, Y => \DWACT_FINC_E[30]\);
    
    un3_addrbit_I_32 : XOR2
      port map(A => N_22, B => \addrbit[11]_net_1\, Y => I_32_0);
    
    \databit[3]\ : DFN1E1C0
      port map(D => \databit_2[3]\, CLK => clk_c, CLR => D3_c_c, 
        E => \state_0[6]_net_1\, Q => \databit[3]_net_1\);
    
    \addrbit_RNIDLFG[8]\ : NOR2
      port map(A => \addrbit[8]_net_1\, B => \addrbit[9]_net_1\, 
        Y => \state_ns_a2_29_5[5]\);
    
    un3_addrbit_I_61 : AND3
      port map(A => \DWACT_FINC_E[28]\, B => \DWACT_FINC_E[13]\, 
        C => \DWACT_FINC_E[15]\, Y => N_12);
    
    un3_addrbit_I_92 : XOR2
      port map(A => N_4, B => \addrbit[29]_net_1\, Y => I_92_0);
    
    \addrbit[2]\ : DFN1E1C0
      port map(D => \addrbit_3[2]\, CLK => clk_c, CLR => D3_c_c, 
        E => \state_0[15]_net_1\, Q => \addrbit[2]_net_1\);
    
    un2_databit_I_20 : XOR2
      port map(A => N_26, B => \databit[7]_net_1\, Y => I_20);
    
    un3_addrbit_I_24 : AND3
      port map(A => \DWACT_FINC_E[0]\, B => \DWACT_FINC_E[2]\, C
         => \DWACT_FINC_E[3]\, Y => \DWACT_FINC_E[4]\);
    
    un2_databit_I_12 : XOR2
      port map(A => N_29_0, B => \databit[4]_net_1\, Y => I_12);
    
    un2_databit_I_48 : AND3
      port map(A => \DWACT_FINC_E_0[6]\, B => 
        \DWACT_FINC_E_0[10]\, C => \DWACT_FINC_E_0[11]\, Y => 
        N_16_0);
    
    \databit[14]\ : DFN1E1C0
      port map(D => I_40, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[6]_net_1\, Q => \databit[14]_net_1\);
    
    un2_databit_I_62 : XOR2
      port map(A => N_12_0, B => \databit[21]_net_1\, Y => I_62);
    
    \addrbit_RNIJ3V01[4]\ : NOR3A
      port map(A => \state_ns_a2_29_5[5]\, B => 
        \addrbit[6]_net_1\, C => \addrbit[4]_net_1\, Y => 
        \state_ns_a2_29_10[5]\);
    
    un3_addrbit_I_87 : AND2
      port map(A => \DWACT_FINC_E[29]\, B => \DWACT_FINC_E[30]\, 
        Y => \DWACT_FINC_E[24]\);
    
    un3_addrbit_I_14 : XOR2
      port map(A => N_28_0, B => \addrbit[5]_net_1\, Y => I_14_0);
    
    \databit_RNI8T5U2[3]\ : NOR3C
      port map(A => un1_databit_i_i_a2_13, B => 
        un1_databit_i_i_a2_12, C => un1_databit_i_i_a2_23, Y => 
        un1_databit_i_i_a2_27);
    
    \addrbit[7]\ : DFN1E1C0
      port map(D => I_20_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[15]_net_1\, Q => \addrbit[7]_net_1\);
    
    \state[12]\ : DFN1C0
      port map(D => \state[13]_net_1\, CLK => clk_c, CLR => 
        D3_c_c, Q => \state[12]_net_1\);
    
    sda_1_RNO_0 : AO1C
      port map(A => N_525, B => sda_4, C => N_464, Y => N_69);
    
    VCC_i : VCC
      port map(Y => \VCC\);
    
    un2_databit_I_26 : XOR2
      port map(A => N_24_0, B => \databit[9]_net_1\, Y => I_26);
    
    un2_databit_I_18 : AND3
      port map(A => \databit[3]_net_1\, B => \databit[4]_net_1\, 
        C => \databit[5]_net_1\, Y => \DWACT_FINC_E_0[2]\);
    
    \databit[29]\ : DFN1E1C0
      port map(D => I_92, CLK => clk_c, CLR => D3_c_c, E => 
        \state[6]_net_1\, Q => \databit[29]_net_1\);
    
    un3_addrbit_I_75 : AND3
      port map(A => \DWACT_FINC_E[15]\, B => \DWACT_FINC_E[17]\, 
        C => \addrbit[24]_net_1\, Y => \DWACT_FINC_E[19]\);
    
    un2_databit_I_43 : XOR2
      port map(A => N_18_0, B => \databit[15]_net_1\, Y => I_43);
    
    \databit_RNIQH906[10]\ : NOR3C
      port map(A => un1_databit_i_i_a2_21, B => 
        un1_databit_i_i_a2_20, C => un1_databit_i_i_a2_27, Y => 
        un1_databit_i_i_a2_29);
    
    \databit_RNI0A0P[11]\ : NOR2
      port map(A => \databit[11]_net_1\, B => \databit[22]_net_1\, 
        Y => un1_databit_i_i_a2_4);
    
    \addrbit_RNI4R1G1[12]\ : NOR3A
      port map(A => \state_ns_a2_29_7[5]\, B => 
        \addrbit[15]_net_1\, C => \addrbit[12]_net_1\, Y => 
        \state_ns_a2_29_11[5]\);
    
    un3_addrbit_I_64 : AND3
      port map(A => \DWACT_FINC_E[28]\, B => \DWACT_FINC_E[13]\, 
        C => \DWACT_FINC_E[16]\, Y => N_11);
    
    \addrbit_RNIKK7V1[19]\ : NOR3A
      port map(A => \state_ns_a2_27_3[5]\, B => 
        \addrbit[24]_net_1\, C => \addrbit[19]_net_1\, Y => 
        \state_ns_a2_27_5[5]\);
    
    un2_databit_I_68 : AND3
      port map(A => \DWACT_FINC_E_0[34]\, B => 
        \DWACT_FINC_E_0[2]\, C => \DWACT_FINC_E_0[5]\, Y => 
        \DWACT_FINC_E_0[29]\);
    
    un3_addrbit_I_76 : AND3
      port map(A => \DWACT_FINC_E[29]\, B => \DWACT_FINC_E[13]\, 
        C => \DWACT_FINC_E[19]\, Y => N_8);
    
    \addrbit_RNIP41O[17]\ : NOR2
      port map(A => \addrbit[17]_net_1\, B => \addrbit[5]_net_1\, 
        Y => \state_ns_a2_29_1[5]\);
    
    sda_1_RNO_8 : MX2
      port map(A => data(2), B => data(6), S => 
        \databit[2]_net_1\, Y => N_630);
    
    un2_databit_I_13 : AND3
      port map(A => \DWACT_FINC_E_0[0]\, B => \databit[3]_net_1\, 
        C => \databit[4]_net_1\, Y => N_28);
    
    un2_databit_I_7 : XOR2
      port map(A => N_31_0, B => \databit[2]_net_1\, Y => I_7);
    
    un2_databit_I_95 : XOR2
      port map(A => N_3_0, B => \databit[30]_net_1\, Y => I_95);
    
    \databit[2]\ : DFN1E1C0
      port map(D => I_7, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[6]_net_1\, Q => \databit[2]_net_1\);
    
    un3_addrbit_I_85 : AND3
      port map(A => \DWACT_FINC_E[29]\, B => \DWACT_FINC_E[30]\, 
        C => \DWACT_FINC_E[23]\, Y => N_6);
    
    un3_addrbit_I_30 : AND3
      port map(A => \DWACT_FINC_E[0]\, B => \DWACT_FINC_E[2]\, C
         => \DWACT_FINC_E[5]\, Y => \DWACT_FINC_E[6]\);
    
    un2_databit_I_63 : AND2
      port map(A => \DWACT_FINC_E_0[15]\, B => 
        \databit[21]_net_1\, Y => \DWACT_FINC_E_0[16]\);
    
    \state[9]\ : DFN1P0
      port map(D => \state_i[10]\, CLK => clk_c, PRE => D3_c_c, Q
         => \state_i_0[9]\);
    
    \databit_RNI482N[4]\ : NOR2
      port map(A => \databit[4]_net_1\, B => \databit[6]_net_1\, 
        Y => un1_databit_i_i_a2_11);
    
    un3_addrbit_I_90 : AND2
      port map(A => \addrbit[27]_net_1\, B => \addrbit[28]_net_1\, 
        Y => \DWACT_FINC_E[25]\);
    
    un2_databit_I_47 : AND2
      port map(A => \databit[15]_net_1\, B => \databit[16]_net_1\, 
        Y => \DWACT_FINC_E_0[11]\);
    
    un3_addrbit_I_86 : XOR2
      port map(A => N_6, B => \addrbit[27]_net_1\, Y => I_86_0);
    
    scl : DFN1P0
      port map(D => \scl_RNO\, CLK => clk_c, PRE => D3_c_c, Q => 
        scl_c);
    
    \state_RNIITPJ[3]\ : NOR2A
      port map(A => state_i_0_0, B => next_byte, Y => 
        \state_ns_0_a2_0_0[0]\);
    
    \addrbit[1]\ : DFN1E1C0
      port map(D => \addrbit_3[1]\, CLK => clk_c, CLR => D3_c_c, 
        E => \state_0[15]_net_1\, Q => \addrbit[1]_net_1\);
    
    un3_addrbit_I_78 : AND2
      port map(A => \addrbit[24]_net_1\, B => \addrbit[25]_net_1\, 
        Y => \DWACT_FINC_E_0[20]\);
    
    un3_addrbit_I_37 : XOR2
      port map(A => N_20, B => \addrbit[13]_net_1\, Y => I_37_0);
    
    un2_databit_I_85 : AND3
      port map(A => \DWACT_FINC_E_0[29]\, B => 
        \DWACT_FINC_E_0[30]\, C => \DWACT_FINC_E_0[23]\, Y => 
        N_6_0);
    
    un2_databit_I_55 : AND3
      port map(A => \DWACT_FINC_E_0[28]\, B => 
        \DWACT_FINC_E_0[13]\, C => \databit[18]_net_1\, Y => 
        N_14_0);
    
    \databit[25]\ : DFN1E1C0
      port map(D => I_77, CLK => clk_c, CLR => D3_c_c, E => 
        \state[6]_net_1\, Q => \databit[25]_net_1\);
    
    un2_databit_I_17 : XOR2
      port map(A => N_27, B => \databit[6]_net_1\, Y => I_17);
    
    \state_RNI1M3I[5]\ : NOR2
      port map(A => \state[5]_net_1\, B => \state[11]_net_1\, Y
         => sda_cl_1_0_a2_0);
    
    sda_1_RNO_9 : MX2
      port map(A => data(1), B => data(5), S => 
        \databit[2]_net_1\, Y => N_631);
    
    un3_addrbit_I_97 : AND3
      port map(A => \DWACT_FINC_E[24]\, B => \DWACT_FINC_E[23]\, 
        C => \DWACT_FINC_E[27]\, Y => N_2);
    
    \state_RNI8OFL[3]\ : NOR2B
      port map(A => next_byte, B => push_i_0, Y => \state_ns[17]\);
    
    un2_databit_I_67 : AND3
      port map(A => \databit[0]_net_1\, B => \databit[1]_net_1\, 
        C => \databit[2]_net_1\, Y => \DWACT_FINC_E_0[34]\);
    
    sda_1_RNO_7 : NOR2B
      port map(A => data(4), B => \databit[2]_net_1\, Y => N_82);
    
    un2_databit_I_90 : AND2
      port map(A => \databit[27]_net_1\, B => \databit[28]_net_1\, 
        Y => \DWACT_FINC_E_0[25]\);
    
    \databit[19]\ : DFN1E1C0
      port map(D => I_56, CLK => clk_c, CLR => D3_c_c, E => 
        \state[6]_net_1\, Q => \databit[19]_net_1\);
    
    \state_RNIVJ3I[4]\ : NOR2
      port map(A => \state[10]_net_1\, B => \state[4]_net_1\, Y
         => \state_RNIVJ3I[4]_net_1\);
    
    \state[16]\ : DFN1P0
      port map(D => \state_i[17]\, CLK => clk_c, PRE => D3_c_c, Q
         => \state_i_0[16]\);
    
    \databit[21]\ : DFN1E1C0
      port map(D => I_62, CLK => clk_c, CLR => D3_c_c, E => 
        \state[6]_net_1\, Q => \databit[21]_net_1\);
    
    \state_RNO_2[19]\ : NOR3C
      port map(A => \state_ns_a2_0_7_3[0]\, B => sda_cl_1_0_a2_0, 
        C => N_526, Y => \state_ns_a2_0_7_5[0]\);
    
    un3_addrbit_I_88 : AND3
      port map(A => \DWACT_FINC_E[24]\, B => \DWACT_FINC_E[23]\, 
        C => \addrbit[27]_net_1\, Y => N_5);
    
    \addrbit_RNIEB806[4]\ : NOR3C
      port map(A => \state_ns_a2_29_11[5]\, B => 
        \state_ns_a2_29_10[5]\, C => \state_ns_a2_29_12[5]\, Y
         => N_515_28);
    
    \addrbit[11]\ : DFN1E1C0
      port map(D => I_32_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[15]_net_1\, Q => \addrbit[11]_net_1\);
    
    un2_databit_I_79 : AND3
      port map(A => \DWACT_FINC_E_0[15]\, B => 
        \DWACT_FINC_E_0[17]\, C => \DWACT_FINC_E[20]\, Y => 
        \DWACT_FINC_E_0[21]\);
    
    \addrbit[5]\ : DFN1E1C0
      port map(D => I_14_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[15]_net_1\, Q => \addrbit[5]_net_1\);
    
    un2_databit_I_96 : AND2
      port map(A => \DWACT_FINC_E_0[26]\, B => 
        \databit[30]_net_1\, Y => \DWACT_FINC_E_0[27]\);
    
    un3_addrbit_I_35 : XOR2
      port map(A => N_21, B => \addrbit[12]_net_1\, Y => I_35_0);
    
    un2_databit_I_80 : AND3
      port map(A => \DWACT_FINC_E_0[7]\, B => \DWACT_FINC_E_0[9]\, 
        C => \DWACT_FINC_E_0[12]\, Y => \DWACT_FINC_E_0[30]\);
    
    un2_databit_I_50 : AND3
      port map(A => \databit[15]_net_1\, B => \databit[16]_net_1\, 
        C => \databit[17]_net_1\, Y => \DWACT_FINC_E_0[12]\);
    
    \state[13]\ : DFN1C0
      port map(D => \state[14]_net_1\, CLK => clk_c, CLR => 
        D3_c_c, Q => \state[13]_net_1\);
    
    un3_addrbit_I_95 : XOR2
      port map(A => N_3, B => \addrbit[30]_net_1\, Y => I_95_0);
    
    un3_addrbit_I_36 : AND3
      port map(A => \DWACT_FINC_E[6]\, B => \DWACT_FINC_E[7]\, C
         => \addrbit[12]_net_1\, Y => N_20);
    
    un2_databit_I_35 : XOR2
      port map(A => N_21_0, B => \databit[12]_net_1\, Y => I_35);
    
    \databit[7]\ : DFN1E1C0
      port map(D => I_20, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[6]_net_1\, Q => \databit[7]_net_1\);
    
    \state_RNIQPTM[18]\ : OR2B
      port map(A => \state_i_0[18]\, B => \state_i_0[16]\, Y => 
        \state_RNIQPTM[18]_net_1\);
    
    un3_addrbit_I_22 : AND3
      port map(A => \DWACT_FINC_E[0]\, B => \DWACT_FINC_E[2]\, C
         => \DWACT_FINC_E[3]\, Y => N_25_0);
    
    \databit[26]\ : DFN1E1C0
      port map(D => I_82, CLK => clk_c, CLR => D3_c_c, E => 
        \state[6]_net_1\, Q => \databit[26]_net_1\);
    
    \state[8]\ : DFN1C0
      port map(D => \state_RNO[8]_net_1\, CLK => clk_c, CLR => 
        D3_c_c, Q => \state[8]_net_1\);
    
    \addrbit_RNO[0]\ : AOI1
      port map(A => \state_ns_i_a2_2[2]\, B => N_515_28, C => 
        \addrbit[0]_net_1\, Y => \addrbit_3[0]\);
    
    \addrbit[12]\ : DFN1E1C0
      port map(D => I_35_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[15]_net_1\, Q => \addrbit[12]_net_1\);
    
    un3_addrbit_I_96 : AND2
      port map(A => \DWACT_FINC_E[26]\, B => \addrbit[30]_net_1\, 
        Y => \DWACT_FINC_E[27]\);
    
    \state_RNO_1[8]\ : NOR3C
      port map(A => un1_databit_i_i_a2_28, B => 
        un1_databit_i_i_a2_29, C => N_526, Y => N_519);
    
    \state[19]\ : DFN1P0
      port map(D => \state_ns[0]\, CLK => clk_c, PRE => D3_c_c, Q
         => \state[19]_net_1\);
    
    sda_1_RNO_5 : MX2
      port map(A => N_82, B => N_630, S => \databit[1]_net_1\, Y
         => N_84);
    
    \databit[23]\ : DFN1E1C0
      port map(D => I_70, CLK => clk_c, CLR => D3_c_c, E => 
        \state[6]_net_1\, Q => \databit[23]_net_1\);
    
    un3_addrbit_I_12 : XOR2
      port map(A => N_29, B => \addrbit[4]_net_1\, Y => I_12_0);
    
    \addrbit_RNI7OKV[22]\ : NOR2
      port map(A => \addrbit[25]_net_1\, B => \addrbit[22]_net_1\, 
        Y => \state_ns_a2_27_1[5]\);
    
    un2_databit_I_86 : XOR2
      port map(A => N_6_0, B => \databit[27]_net_1\, Y => I_86);
    
    un2_databit_I_56 : XOR2
      port map(A => N_14_0, B => \databit[19]_net_1\, Y => I_56);
    
    un2_databit_I_74 : XOR2
      port map(A => N_9_0, B => \databit[24]_net_1\, Y => I_74);
    
    \databit[4]\ : DFN1E1C0
      port map(D => I_12, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[6]_net_1\, Q => \databit[4]_net_1\);
    
    sda_1_RNO : MX2B
      port map(A => N_69, B => N_512_1, S => N_531, Y => sda_5);
    
    \state_RNI44VJ[8]\ : NOR3
      port map(A => \state[7]_net_1\, B => \state[8]_net_1\, C
         => \state[6]_net_1\, Y => N_525);
    
    \databit[6]\ : DFN1E1C0
      port map(D => I_17, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[6]_net_1\, Q => \databit[6]_net_1\);
    
    \databit[15]\ : DFN1E1C0
      port map(D => I_43, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[6]_net_1\, Q => \databit[15]_net_1\);
    
    \state_RNO[19]\ : OA1
      port map(A => \state_ns_a2_1[0]\, B => \state_ns_a2_0_7[0]\, 
        C => N_525, Y => \state_ns[0]\);
    
    \addrbit_RNI8OJV[18]\ : NOR2
      port map(A => \addrbit[21]_net_1\, B => \addrbit[18]_net_1\, 
        Y => \state_ns_a2_27_3[5]\);
    
    un3_addrbit_I_79 : AND3
      port map(A => \DWACT_FINC_E[15]\, B => \DWACT_FINC_E[17]\, 
        C => \DWACT_FINC_E_0[20]\, Y => \DWACT_FINC_E[21]\);
    
    un3_addrbit_I_62 : XOR2
      port map(A => N_12, B => \addrbit[21]_net_1\, Y => I_62_0);
    
    \state[3]\ : DFN1C0
      port map(D => \state[4]_net_1\, CLK => clk_c, CLR => D3_c_c, 
        Q => next_byte);
    
    un3_addrbit_I_5 : XOR2
      port map(A => \addrbit[0]_net_1\, B => \addrbit[1]_net_1\, 
        Y => I_5_0);
    
    \addrbit[4]\ : DFN1E1C0
      port map(D => I_12_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[15]_net_1\, Q => \addrbit[4]_net_1\);
    
    un3_addrbit_I_73 : AND3
      port map(A => \DWACT_FINC_E[29]\, B => \DWACT_FINC_E[13]\, 
        C => \DWACT_FINC_E[18]\, Y => N_9);
    
    un3_addrbit_I_38 : AND2
      port map(A => \addrbit[12]_net_1\, B => \addrbit[13]_net_1\, 
        Y => \DWACT_FINC_E[8]\);
    
    un2_databit_I_30 : AND3
      port map(A => \DWACT_FINC_E_0[0]\, B => \DWACT_FINC_E_0[2]\, 
        C => \DWACT_FINC_E_0[5]\, Y => \DWACT_FINC_E_0[6]\);
    
    \databit[11]\ : DFN1E1C0
      port map(D => I_32, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[6]_net_1\, Q => \databit[11]_net_1\);
    
    un2_databit_I_71 : AND3
      port map(A => \databit[21]_net_1\, B => \databit[22]_net_1\, 
        C => \databit[23]_net_1\, Y => \DWACT_FINC_E_0[17]\);
    
    un3_addrbit_I_98 : XOR2
      port map(A => N_2, B => \addrbit[31]_net_1\, Y => I_98_0);
    
    \databit_RNII1A66[29]\ : NOR3C
      port map(A => un1_databit_i_i_a2_17, B => 
        un1_databit_i_i_a2_16, C => un1_databit_i_i_a2_25, Y => 
        un1_databit_i_i_a2_28);
    
    un3_addrbit_I_51 : AND3
      port map(A => \DWACT_FINC_E[0]\, B => \DWACT_FINC_E[2]\, C
         => \DWACT_FINC_E[5]\, Y => \DWACT_FINC_E[28]\);
    
    un3_addrbit_I_89 : XOR2
      port map(A => N_5, B => \addrbit[28]_net_1\, Y => I_89_0);
    
    un3_addrbit_I_83 : AND3
      port map(A => \addrbit[24]_net_1\, B => \addrbit[25]_net_1\, 
        C => \addrbit[26]_net_1\, Y => \DWACT_FINC_E[22]\);
    
    un3_addrbit_I_41 : AND3
      port map(A => \addrbit[12]_net_1\, B => \addrbit[13]_net_1\, 
        C => \addrbit[14]_net_1\, Y => \DWACT_FINC_E[9]\);
    
    un2_databit_I_36 : AND3
      port map(A => \DWACT_FINC_E_0[6]\, B => \DWACT_FINC_E_0[7]\, 
        C => \databit[12]_net_1\, Y => N_20_0);
    
    \state_RNO_4[19]\ : NOR2A
      port map(A => push_i_0, B => \state[2]_net_1\, Y => 
        \state_ns_a2_0_7_1[0]\);
    
    un3_addrbit_I_20 : XOR2
      port map(A => N_26_0, B => \addrbit[7]_net_1\, Y => I_20_0);
    
    un2_databit_I_72 : AND2
      port map(A => \DWACT_FINC_E_0[15]\, B => 
        \DWACT_FINC_E_0[17]\, Y => \DWACT_FINC_E_0[18]\);
    
    \databit[5]\ : DFN1E1C0
      port map(D => I_14, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[6]_net_1\, Q => \databit[5]_net_1\);
    
    un3_addrbit_I_10 : AND3
      port map(A => \addrbit[0]_net_1\, B => \addrbit[1]_net_1\, 
        C => \addrbit[2]_net_1\, Y => \DWACT_FINC_E[0]\);
    
    \databit[16]\ : DFN1E1C0
      port map(D => I_46, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[6]_net_1\, Q => \databit[16]_net_1\);
    
    un2_databit_I_29 : AND3
      port map(A => \databit[6]_net_1\, B => \databit[7]_net_1\, 
        C => \databit[8]_net_1\, Y => \DWACT_FINC_E_0[5]\);
    
    \databit_RNIH04G1[25]\ : NOR3A
      port map(A => un1_databit_i_i_a2_7, B => 
        \databit[25]_net_1\, C => \databit[28]_net_1\, Y => 
        un1_databit_i_i_a2_19);
    
    \addrbit[31]\ : DFN1E1C0
      port map(D => I_98_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state[15]_net_1\, Q => \addrbit[31]_net_1\);
    
    \databit[13]\ : DFN1E1C0
      port map(D => I_37, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[6]_net_1\, Q => \databit[13]_net_1\);
    
    \databit[22]\ : DFN1E1C0
      port map(D => I_65, CLK => clk_c, CLR => D3_c_c, E => 
        \state[6]_net_1\, Q => \databit[22]_net_1\);
    
    un3_addrbit_I_54 : AND3
      port map(A => \DWACT_FINC_E[7]\, B => \DWACT_FINC_E[9]\, C
         => \DWACT_FINC_E[12]\, Y => \DWACT_FINC_E[13]\);
    
    un3_addrbit_I_27 : AND3
      port map(A => \DWACT_FINC_E[4]\, B => \addrbit[8]_net_1\, C
         => \addrbit[9]_net_1\, Y => N_23_0);
    
    \addrbit[0]\ : DFN1E1C0
      port map(D => \addrbit_3[0]\, CLK => clk_c, CLR => D3_c_c, 
        E => \state_0[15]_net_1\, Q => \addrbit[0]_net_1\);
    
    un3_addrbit_I_60 : AND3
      port map(A => \addrbit[18]_net_1\, B => \addrbit[19]_net_1\, 
        C => \addrbit[20]_net_1\, Y => \DWACT_FINC_E[15]\);
    
    un3_addrbit_I_44 : AND2
      port map(A => \DWACT_FINC_E[7]\, B => \DWACT_FINC_E[9]\, Y
         => \DWACT_FINC_E[10]\);
    
    \sda_cl\ : DFN1P0
      port map(D => sda_cl_1, CLK => clk_c, PRE => D3_c_c, Q => 
        sda_cl);
    
    un2_databit_I_78 : AND2
      port map(A => \databit[24]_net_1\, B => \databit[25]_net_1\, 
        Y => \DWACT_FINC_E[20]\);
    
    \addrbit[21]\ : DFN1E1C0
      port map(D => I_62_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state[15]_net_1\, Q => \addrbit[21]_net_1\);
    
    un3_addrbit_I_17 : XOR2
      port map(A => N_27_0, B => \addrbit[6]_net_1\, Y => I_17_0);
    
    \state_RNO[5]\ : NOR3C
      port map(A => un1_databit_i_i_a2_28, B => 
        un1_databit_i_i_a2_29, C => \state[6]_net_1\, Y => 
        \state_ns[14]\);
    
    \databit_RNI6A2N[5]\ : NOR2
      port map(A => \databit[5]_net_1\, B => \databit[7]_net_1\, 
        Y => un1_databit_i_i_a2_7);
    
    \addrbit[16]\ : DFN1E1C0
      port map(D => I_46_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[15]_net_1\, Q => \addrbit[16]_net_1\);
    
    un2_databit_I_9 : XOR2
      port map(A => N_30, B => \databit[3]_net_1\, Y => I_9);
    
    \state_RNO[14]\ : NOR3C
      port map(A => \state_ns_a2_2[5]\, B => \state_ns_a2_1[5]\, 
        C => N_515_28, Y => \state_ns[5]\);
    
    un3_addrbit_I_67 : AND3
      port map(A => \addrbit[0]_net_1\, B => \addrbit[1]_net_1\, 
        C => \addrbit[2]_net_1\, Y => \DWACT_FINC_E[34]\);
    
    un2_databit_I_73 : AND3
      port map(A => \DWACT_FINC_E_0[29]\, B => 
        \DWACT_FINC_E_0[13]\, C => \DWACT_FINC_E_0[18]\, Y => 
        N_9_0);
    
    un2_databit_I_24 : AND3
      port map(A => \DWACT_FINC_E_0[0]\, B => \DWACT_FINC_E_0[2]\, 
        C => \DWACT_FINC_E_0[3]\, Y => \DWACT_FINC_E_0[4]\);
    
    \databit[31]\ : DFN1E1C0
      port map(D => I_98, CLK => clk_c, CLR => D3_c_c, E => 
        \state[6]_net_1\, Q => \databit[31]_net_1\);
    
    un3_addrbit_I_39 : AND3
      port map(A => \DWACT_FINC_E[6]\, B => \DWACT_FINC_E[7]\, C
         => \DWACT_FINC_E[8]\, Y => N_19);
    
    \addrbit[10]\ : DFN1E1C0
      port map(D => I_28_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[15]_net_1\, Q => \addrbit[10]_net_1\);
    
    un3_addrbit_I_33 : AND3
      port map(A => \addrbit[9]_net_1\, B => \addrbit[10]_net_1\, 
        C => \addrbit[11]_net_1\, Y => \DWACT_FINC_E[7]\);
    
    \addrbit[22]\ : DFN1E1C0
      port map(D => I_65_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state[15]_net_1\, Q => \addrbit[22]_net_1\);
    
    un3_addrbit_I_25 : NOR2B
      port map(A => \addrbit[8]_net_1\, B => \DWACT_FINC_E[4]\, Y
         => N_24);
    
    \addrbit[15]\ : DFN1E1C0
      port map(D => I_43_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[15]_net_1\, Q => \addrbit[15]_net_1\);
    
    un3_addrbit_I_93 : AND3
      port map(A => \addrbit[27]_net_1\, B => \addrbit[28]_net_1\, 
        C => \addrbit[29]_net_1\, Y => \DWACT_FINC_E[26]\);
    
    \state[2]\ : DFN1C0
      port map(D => \state_ns[17]\, CLK => clk_c, CLR => D3_c_c, 
        Q => \state[2]_net_1\);
    
    un3_addrbit_I_15 : AND2
      port map(A => \addrbit[3]_net_1\, B => \addrbit[4]_net_1\, 
        Y => \DWACT_FINC_E_0[1]\);
    
    un2_databit_I_8 : AND3
      port map(A => \databit[0]_net_1\, B => \databit[1]_net_1\, 
        C => \databit[2]_net_1\, Y => N_30);
    
    un2_databit_I_5 : XOR2
      port map(A => \databit[0]_net_1\, B => \databit[1]_net_1\, 
        Y => I_5);
    
    un3_addrbit_I_26 : XOR2
      port map(A => N_24, B => \addrbit[9]_net_1\, Y => I_26_0);
    
    \addrbit_RNO[1]\ : AOI1B
      port map(A => \state_ns_i_a2_2[2]\, B => N_515_28, C => 
        I_5_0, Y => \addrbit_3[1]\);
    
    un2_databit_I_21 : AND2
      port map(A => \databit[6]_net_1\, B => \databit[7]_net_1\, 
        Y => \DWACT_FINC_E_0[3]\);
    
    \databit[28]\ : DFN1E1C0
      port map(D => I_89, CLK => clk_c, CLR => D3_c_c, E => 
        \state[6]_net_1\, Q => \databit[28]_net_1\);
    
    un3_addrbit_I_16 : AND3
      port map(A => \DWACT_FINC_E[0]\, B => \DWACT_FINC_E_0[1]\, 
        C => \addrbit[5]_net_1\, Y => N_27_0);
    
    un2_databit_I_77 : XOR2
      port map(A => N_8_0, B => \databit[25]_net_1\, Y => I_77);
    
    un2_databit_I_45 : AND3
      port map(A => \DWACT_FINC_E_0[6]\, B => 
        \DWACT_FINC_E_0[10]\, C => \databit[15]_net_1\, Y => 
        N_17_0);
    
    \state[1]\ : DFN1C0
      port map(D => \state[2]_net_1\, CLK => clk_c, CLR => D3_c_c, 
        Q => \state[1]_net_1\);
    
    un3_addrbit_I_65 : XOR2
      port map(A => N_11, B => \addrbit[22]_net_1\, Y => I_65_0);
    
    \databit_RNI3CVO[12]\ : NOR2
      port map(A => \databit[12]_net_1\, B => \databit[15]_net_1\, 
        Y => un1_databit_i_i_a2_12);
    
    \databit[12]\ : DFN1E1C0
      port map(D => I_35, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[6]_net_1\, Q => \databit[12]_net_1\);
    
    \addrbit[18]\ : DFN1E1C0
      port map(D => I_53_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state[15]_net_1\, Q => \addrbit[18]_net_1\);
    
    \state_RNIVJ3I[1]\ : NOR2
      port map(A => \state[13]_net_1\, B => \state[1]_net_1\, Y
         => \state_ns_a2_3_0[0]\);
    
    \databit_RNI7H0P[17]\ : NOR2
      port map(A => \databit[23]_net_1\, B => \databit[17]_net_1\, 
        Y => un1_databit_i_i_a2_1);
    
    un3_addrbit_I_66 : AND3
      port map(A => \DWACT_FINC_E[15]\, B => \addrbit[21]_net_1\, 
        C => \addrbit[22]_net_1\, Y => \DWACT_FINC_E[33]\);
    
    un2_databit_I_15 : AND2
      port map(A => \databit[3]_net_1\, B => \databit[4]_net_1\, 
        Y => \DWACT_FINC_E[1]\);
    
    un2_databit_I_22 : AND3
      port map(A => \DWACT_FINC_E_0[0]\, B => \DWACT_FINC_E_0[2]\, 
        C => \DWACT_FINC_E_0[3]\, Y => N_25);
    
    \state_RNO[8]\ : NOR3
      port map(A => N_518, B => \state_ns[17]\, C => N_519, Y => 
        \state_RNO[8]_net_1\);
    
    \addrbit[8]\ : DFN1E1C0
      port map(D => I_23_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[15]_net_1\, Q => \addrbit[8]_net_1\);
    
    un2_databit_I_65 : XOR2
      port map(A => N_11_0, B => \databit[22]_net_1\, Y => I_65);
    
    un3_addrbit_I_28 : XOR2
      port map(A => N_23_0, B => \addrbit[10]_net_1\, Y => I_28_0);
    
    \databit_RNIBF2N[8]\ : NOR2
      port map(A => \databit[8]_net_1\, B => \databit[9]_net_1\, 
        Y => un1_databit_i_i_a2_13);
    
    \addrbit_RNO[2]\ : AOI1B
      port map(A => \state_ns_i_a2_2[2]\, B => N_515_28, C => 
        I_7_0, Y => \addrbit_3[2]\);
    
    un3_addrbit_I_18 : AND3
      port map(A => \addrbit[3]_net_1\, B => \addrbit[4]_net_1\, 
        C => \addrbit[5]_net_1\, Y => \DWACT_FINC_E[2]\);
    
    \databit_RNIBKVO[16]\ : NOR2
      port map(A => \databit[16]_net_1\, B => \databit[19]_net_1\, 
        Y => un1_databit_i_i_a2_5);
    
    un2_databit_I_40 : XOR2
      port map(A => N_19_0, B => \databit[14]_net_1\, Y => I_40);
    
    \addrbit[17]\ : DFN1E1C0
      port map(D => I_49_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[15]_net_1\, Q => \addrbit[17]_net_1\);
    
    un2_databit_I_28 : XOR2
      port map(A => N_23, B => \databit[10]_net_1\, Y => I_28);
    
    un2_databit_I_89 : XOR2
      port map(A => N_5_0, B => \databit[28]_net_1\, Y => I_89);
    
    un2_databit_I_59 : XOR2
      port map(A => N_13_0, B => \databit[20]_net_1\, Y => I_59);
    
    un3_addrbit_I_68 : AND3
      port map(A => \DWACT_FINC_E[34]\, B => \DWACT_FINC_E[2]\, C
         => \DWACT_FINC_E[5]\, Y => \DWACT_FINC_E[29]\);
    
    \state[11]\ : DFN1C0
      port map(D => \state[12]_net_1\, CLK => clk_c, CLR => 
        D3_c_c, Q => \state[11]_net_1\);
    
    un2_databit_I_94 : AND3
      port map(A => \DWACT_FINC_E_0[24]\, B => 
        \DWACT_FINC_E_0[23]\, C => \DWACT_FINC_E_0[26]\, Y => 
        N_3_0);
    
    \addrbit_RNI3IIV[11]\ : NOR2
      port map(A => \addrbit[11]_net_1\, B => \addrbit[14]_net_1\, 
        Y => \state_ns_a2_29_0[5]\);
    
    un2_databit_I_10 : AND3
      port map(A => \databit[0]_net_1\, B => \databit[1]_net_1\, 
        C => \databit[2]_net_1\, Y => \DWACT_FINC_E_0[0]\);
    
    \state_RNIM0AD[9]\ : NOR2A
      port map(A => \state_i_0[9]\, B => next_byte, Y => N_526);
    
    \state[18]\ : DFN1P0
      port map(D => \state_RNO[18]_net_1\, CLK => clk_c, PRE => 
        D3_c_c, Q => \state_i_0[18]\);
    
    un2_databit_I_46 : XOR2
      port map(A => N_17_0, B => \databit[16]_net_1\, Y => I_46);
    
    un3_addrbit_I_52 : AND3
      port map(A => \DWACT_FINC_E[28]\, B => \DWACT_FINC_E[10]\, 
        C => \DWACT_FINC_E[12]\, Y => N_15);
    
    un2_databit_I_60 : AND3
      port map(A => \databit[18]_net_1\, B => \databit[19]_net_1\, 
        C => \databit[20]_net_1\, Y => \DWACT_FINC_E_0[15]\);
    
    un2_databit_I_23 : XOR2
      port map(A => N_25, B => \databit[8]_net_1\, Y => I_23);
    
    \databit[18]\ : DFN1E1C0
      port map(D => I_53, CLK => clk_c, CLR => D3_c_c, E => 
        \state[6]_net_1\, Q => \databit[18]_net_1\);
    
    un3_addrbit_I_42 : AND3
      port map(A => \DWACT_FINC_E[6]\, B => \DWACT_FINC_E[7]\, C
         => \DWACT_FINC_E[9]\, Y => N_18);
    
    \state_RNO[18]\ : OR2A
      port map(A => \state[19]_net_1\, B => push_i_0, Y => 
        \state_RNO[18]_net_1\);
    
    \state_RNO_0[14]\ : NOR3C
      port map(A => \state_ns_a2_27_4[5]\, B => 
        \state_ns_a2_27_5[5]\, C => \state_ns_a2_0[5]\, Y => 
        \state_ns_a2_2[5]\);
    
    \addrbit[13]\ : DFN1E1C0
      port map(D => I_37_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[15]_net_1\, Q => \addrbit[13]_net_1\);
    
    un3_addrbit_I_7 : XOR2
      port map(A => N_31, B => \addrbit[2]_net_1\, Y => I_7_0);
    
    \addrbit[30]\ : DFN1E1C0
      port map(D => I_95_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state[15]_net_1\, Q => \addrbit[30]_net_1\);
    
    \databit_RNI6G0P[18]\ : NOR2
      port map(A => \databit[21]_net_1\, B => \databit[18]_net_1\, 
        Y => un1_databit_i_i_a2_9);
    
    \addrbit[26]\ : DFN1E1C0
      port map(D => I_82_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state[15]_net_1\, Q => \addrbit[26]_net_1\);
    
    un2_databit_I_91 : AND3
      port map(A => \DWACT_FINC_E_0[24]\, B => 
        \DWACT_FINC_E_0[23]\, C => \DWACT_FINC_E_0[25]\, Y => 
        N_4_0);
    
    un2_databit_I_16 : AND3
      port map(A => \DWACT_FINC_E_0[0]\, B => \DWACT_FINC_E[1]\, 
        C => \databit[5]_net_1\, Y => N_27);
    
    un2_databit_I_84 : AND3
      port map(A => \DWACT_FINC_E_0[15]\, B => 
        \DWACT_FINC_E_0[17]\, C => \DWACT_FINC_E_0[22]\, Y => 
        \DWACT_FINC_E_0[23]\);
    
    un2_databit_I_54 : AND3
      port map(A => \DWACT_FINC_E_0[7]\, B => \DWACT_FINC_E_0[9]\, 
        C => \DWACT_FINC_E_0[12]\, Y => \DWACT_FINC_E_0[13]\);
    
    \addrbit_RNI0UFF3[26]\ : NOR3C
      port map(A => \state_ns_a2_23_0[5]\, B => 
        \state_ns_a2_23_1[5]\, C => \state_ns_a2_0[5]\, Y => 
        \state_ns_i_a2_1[2]\);
    
    un2_databit_I_66 : AND3
      port map(A => \DWACT_FINC_E_0[15]\, B => 
        \databit[21]_net_1\, C => \databit[22]_net_1\, Y => 
        \DWACT_FINC_E_0[33]\);
    
    \state_RNO[9]\ : INV
      port map(A => \state[10]_net_1\, Y => \state_i[10]\);
    
    \addrbit[20]\ : DFN1E1C0
      port map(D => I_59_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state[15]_net_1\, Q => \addrbit[20]_net_1\);
    
    un2_databit_I_39 : AND3
      port map(A => \DWACT_FINC_E_0[6]\, B => \DWACT_FINC_E_0[7]\, 
        C => \DWACT_FINC_E_0[8]\, Y => N_19_0);
    
    un3_addrbit_I_71 : AND3
      port map(A => \addrbit[21]_net_1\, B => \addrbit[22]_net_1\, 
        C => \addrbit[23]_net_1\, Y => \DWACT_FINC_E[17]\);
    
    sda_1_RNO_3 : MX2
      port map(A => N_84, B => N_633, S => \databit[0]_net_1\, Y
         => sda_4);
    
    \databit[8]\ : DFN1E1C0
      port map(D => I_23, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[6]_net_1\, Q => \databit[8]_net_1\);
    
    un3_addrbit_I_8 : AND3
      port map(A => \addrbit[0]_net_1\, B => \addrbit[1]_net_1\, 
        C => \addrbit[2]_net_1\, Y => N_30_0);
    
    un2_databit_I_27 : AND3
      port map(A => \DWACT_FINC_E_0[4]\, B => \databit[8]_net_1\, 
        C => \databit[9]_net_1\, Y => N_23);
    
    \addrbit[25]\ : DFN1E1C0
      port map(D => I_77_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state[15]_net_1\, Q => \addrbit[25]_net_1\);
    
    \databit[27]\ : DFN1E1C0
      port map(D => I_86, CLK => clk_c, CLR => D3_c_c, E => 
        \state[6]_net_1\, Q => \databit[27]_net_1\);
    
    un3_addrbit_I_29 : AND3
      port map(A => \addrbit[6]_net_1\, B => \addrbit[7]_net_1\, 
        C => \addrbit[8]_net_1\, Y => \DWACT_FINC_E[5]\);
    
    un2_databit_I_92 : XOR2
      port map(A => N_4_0, B => \databit[29]_net_1\, Y => I_92);
    
    un2_databit_I_81 : AND3
      port map(A => \DWACT_FINC_E_0[29]\, B => 
        \DWACT_FINC_E_0[30]\, C => \DWACT_FINC_E_0[21]\, Y => 
        N_7_0);
    
    un2_databit_I_51 : AND3
      port map(A => \DWACT_FINC_E_0[0]\, B => \DWACT_FINC_E_0[2]\, 
        C => \DWACT_FINC_E_0[5]\, Y => \DWACT_FINC_E_0[28]\);
    
    un3_addrbit_I_23 : XOR2
      port map(A => N_25_0, B => \addrbit[8]_net_1\, Y => I_23_0);
    
    un3_addrbit_I_19 : AND3
      port map(A => \DWACT_FINC_E[0]\, B => \DWACT_FINC_E[2]\, C
         => \addrbit[6]_net_1\, Y => N_26_0);
    
    un3_addrbit_I_81 : AND3
      port map(A => \DWACT_FINC_E[29]\, B => \DWACT_FINC_E[30]\, 
        C => \DWACT_FINC_E[21]\, Y => N_7);
    
    un3_addrbit_I_13 : AND3
      port map(A => \DWACT_FINC_E[0]\, B => \addrbit[3]_net_1\, C
         => \addrbit[4]_net_1\, Y => N_28_0);
    
    \state[15]\ : DFN1C0
      port map(D => \state_RNIQPTM[18]_net_1\, CLK => clk_c, CLR
         => D3_c_c, Q => \state[15]_net_1\);
    
    un3_addrbit_I_50 : AND3
      port map(A => \addrbit[15]_net_1\, B => \addrbit[16]_net_1\, 
        C => \addrbit[17]_net_1\, Y => \DWACT_FINC_E[12]\);
    
    un3_addrbit_I_74 : XOR2
      port map(A => N_9, B => \addrbit[24]_net_1\, Y => I_74_0);
    
    \addrbit[28]\ : DFN1E1C0
      port map(D => I_89_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state[15]_net_1\, Q => \addrbit[28]_net_1\);
    
    \databit_RNI7H0P[14]\ : NOR2
      port map(A => \databit[26]_net_1\, B => \databit[14]_net_1\, 
        Y => un1_databit_i_i_a2_3);
    
    \addrbit[3]\ : DFN1E1C0
      port map(D => I_9_0, CLK => clk_c, CLR => D3_c_c, E => 
        \state_0[15]_net_1\, Q => \addrbit[3]_net_1\);
    
    un3_addrbit_I_40 : XOR2
      port map(A => N_19, B => \addrbit[14]_net_1\, Y => I_40_0);
    
    un2_databit_I_98 : XOR2
      port map(A => N_2_0, B => \databit[31]_net_1\, Y => I_98);
    
    un2_databit_I_34 : NOR2B
      port map(A => \DWACT_FINC_E_0[7]\, B => \DWACT_FINC_E_0[6]\, 
        Y => N_21_0);
    
    \state_RNO_3[19]\ : NOR3A
      port map(A => \state_ns_a2_0_7_1[0]\, B => 
        \state[12]_net_1\, C => \state[14]_net_1\, Y => 
        \state_ns_a2_0_7_3[0]\);
    
    \state_RNO_0[8]\ : NOR2A
      port map(A => N_526, B => \state[6]_net_1\, Y => N_518);
    
    \state[17]\ : DFN1C0
      port map(D => \state_RNO[17]_net_1\, CLK => clk_c, CLR => 
        D3_c_c, Q => \state[17]_net_1\);
    
    un3_addrbit_I_69 : AND3
      port map(A => \DWACT_FINC_E[29]\, B => \DWACT_FINC_E[13]\, 
        C => \DWACT_FINC_E[33]\, Y => N_10);
    
    \state_RNO_0[19]\ : NOR3B
      port map(A => \state[0]_net_1\, B => N_550, C => 
        \state[17]_net_1\, Y => \state_ns_a2_1[0]\);
    

end DEF_ARCH; 

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
          oled_reset : out   std_logic;
          reset      : in    std_logic
        );

end top;

architecture DEF_ARCH of top is 

  component DFN1C0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          CLR : in    std_logic := 'U';
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

  component NOR2B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AND3
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component AXOI4
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

  component AND2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component XOR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
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

  component DFN1E0C0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          CLR : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component AO1A
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

  component OR2B
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

  component AO1B
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

  component OR2A
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

  component XA1B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
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

  component DFN1P0
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
          PRE : in    std_logic := 'U';
          Q   : out   std_logic
        );
  end component;

  component OR2
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component i2c
    port( state_d       : in    std_logic_vector(2 to 2) := (others => 'U');
          state_ns_0    : out   std_logic_vector(0 to 0);
          state_i_0_0   : in    std_logic := 'U';
          data          : in    std_logic_vector(7 downto 1) := (others => 'U');
          scl_c         : out   std_logic;
          sda_1         : out   std_logic;
          sda_cl        : out   std_logic;
          un5_bytecount : in    std_logic := 'U';
          push_i_0      : in    std_logic := 'U';
          D3_c_c        : in    std_logic := 'U';
          clk_c         : in    std_logic := 'U'
        );
  end component;

  component NOR2A
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component GND
    port( Y : out   std_logic
        );
  end component;

  component AOI1B
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

  component NOR3
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

  component TRIBUFF
    port( D   : in    std_logic := 'U';
          E   : in    std_logic := 'U';
          PAD : out   std_logic
        );
  end component;

  component DFN1E1
    port( D   : in    std_logic := 'U';
          CLK : in    std_logic := 'U';
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

  component OA1B
    port( A : in    std_logic := 'U';
          B : in    std_logic := 'U';
          C : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

  component INV
    port( A : in    std_logic := 'U';
          Y : out   std_logic
        );
  end component;

    signal \VCC\, \data[1]_net_1\, \data[2]_net_1\, 
        \data[3]_net_1\, \data[4]_net_1\, \data[5]_net_1\, 
        \data[6]_net_1\, \data[7]_net_1\, \bytecount[0]_net_1\, 
        \bytecount[1]_net_1\, \bytecount[2]_net_1\, 
        \bytecount[3]_net_1\, \bytecount[4]_net_1\, 
        \bytecount[5]_net_1\, \bytecount[6]_net_1\, \data_3[1]\, 
        \data_3[2]\, \data_3[3]\, \data_3[4]\, \data_3[5]\, 
        \data_3[6]\, \data_3[7]\, \counter[0]_net_1\, 
        \counter[1]_net_1\, \counter[2]_net_1\, 
        \counter[3]_net_1\, \counter[4]_net_1\, 
        \counter[5]_net_1\, \counter[6]_net_1\, 
        \counter[7]_net_1\, \counter[8]_net_1\, 
        \counter[9]_net_1\, \counter[10]_net_1\, 
        \counter[11]_net_1\, \counter[12]_net_1\, 
        \counter[13]_net_1\, \counter[14]_net_1\, 
        \counter[15]_net_1\, \counter[16]_net_1\, 
        \counter[17]_net_1\, \counter[18]_net_1\, 
        \counter[19]_net_1\, \counter[20]_net_1\, 
        \counter[21]_net_1\, \counter[22]_net_1\, 
        \counter[23]_net_1\, I_5_1, I_7_1, I_9_1, I_12_1, I_14_1, 
        I_17_1, I_20_1, I_23_1, I_26_1, I_28_1, I_32_1, I_35_1, 
        I_37_1, I_40_1, I_43_1, I_46_1, I_49_1, I_53_1, I_56_1, 
        I_59_1, I_62_1, I_65_1, I_70_1, I_74_1, I_77_1, I_82_1, 
        I_86_1, I_89_1, I_92_1, I_95_1, I_98_1, 
        \bytecount[7]_net_1\, \bytecount[8]_net_1\, 
        \bytecount[9]_net_1\, \bytecount[10]_net_1\, 
        \bytecount[11]_net_1\, \bytecount[12]_net_1\, 
        \bytecount[13]_net_1\, \bytecount[14]_net_1\, 
        \bytecount[15]_net_1\, \bytecount[16]_net_1\, 
        \bytecount[17]_net_1\, \bytecount[18]_net_1\, 
        \bytecount[19]_net_1\, \bytecount[20]_net_1\, 
        \bytecount[21]_net_1\, \bytecount[22]_net_1\, 
        \bytecount[23]_net_1\, \bytecount[24]_net_1\, 
        \bytecount[25]_net_1\, \bytecount[26]_net_1\, 
        \bytecount[27]_net_1\, \bytecount[28]_net_1\, 
        \bytecount[29]_net_1\, \bytecount[30]_net_1\, 
        \bytecount[31]_net_1\, \bytecount_3[0]\, \bytecount_3[1]\, 
        \bytecount_3[2]\, \bytecount_3[3]\, \bytecount_3[4]\, 
        \bytecount_3[5]\, \bytecount_3[6]\, \bytecount_3[7]\, 
        \bytecount_3[8]\, \bytecount_3[9]\, \bytecount_3[10]\, 
        \bytecount_3[11]\, \bytecount_3[12]\, \bytecount_3[13]\, 
        \bytecount_3[14]\, \bytecount_3[15]\, \bytecount_3[16]\, 
        \bytecount_3[17]\, \bytecount_3[18]\, \bytecount_3[19]\, 
        \bytecount_3[20]\, \bytecount_3[21]\, \bytecount_3[22]\, 
        \bytecount_3[23]\, \bytecount_3[24]\, \bytecount_3[25]\, 
        \bytecount_3[26]\, \bytecount_3[27]\, \bytecount_3[28]\, 
        \bytecount_3[29]\, \bytecount_3[30]\, \bytecount_3[31]\, 
        counter_n1, counter_n2, counter_n3, counter_n4, 
        counter_n5, counter_n6, counter_n7, counter_n8, 
        counter_n9, counter_n10, counter_n11, counter_n12, 
        counter_n13, counter_n14, counter_n15, counter_n16, 
        counter_n17, counter_n18, counter_n19, counter_n20, 
        counter_n21, counter_n22, counter_n23, \state[0]_net_1\, 
        \state_ns[0]\, \state_d[2]\, \state_RNO[1]_net_1\, 
        counter_c2, counter_c3, counter_c4, counter_c12, N_161, 
        N_167, N_168, N_220, N_170, N_171, N_134, N_227, N_228, 
        N_136, N_208, N_213, N_138_i, N_209, N_217, un5_bytecount, 
        N_210, N_211, N_175, N_212, N_176, N_177, N_147, N_222, 
        N_221, N_133, N_154_i, N_190, N_191, N_150_i, N_146, 
        N_193, N_194, N_195, N_197, N_198, N_200, N_229, N_142, 
        N_137, N_206, N_148, N_159, N_135, N_201, N_201_1, 
        \un1_bytecount.U1.DWACT_FINC_E[0]\, 
        \un1_bytecount.U1.DWACT_FINC_E[1]\, 
        \un1_bytecount.U1.DWACT_FINC_E[2]\, 
        \un1_bytecount.U1.DWACT_FINC_E[3]\, 
        \un1_bytecount.U1.DWACT_FINC_E[4]\, 
        \un1_bytecount.U1.DWACT_FINC_E[5]\, 
        \un1_bytecount.U1.DWACT_FINC_E[6]\, 
        \un1_bytecount.U1.DWACT_FINC_E[7]\, 
        \un1_bytecount.U1.DWACT_FINC_E[8]\, 
        \un1_bytecount.U1.DWACT_FINC_E[9]\, 
        \un1_bytecount.U1.DWACT_FINC_E[10]\, 
        \un1_bytecount.U1.DWACT_FINC_E[11]\, 
        \un1_bytecount.U1.DWACT_FINC_E[12]\, 
        \un1_bytecount.U1.DWACT_FINC_E[28]\, 
        \un1_bytecount.U1.DWACT_FINC_E[13]\, 
        \un1_bytecount.U1.DWACT_FINC_E[14]\, 
        \un1_bytecount.U1.DWACT_FINC_E[15]\, 
        \un1_bytecount.U1.DWACT_FINC_E[16]\, 
        \un1_bytecount.U1.DWACT_FINC_E[33]\, 
        \un1_bytecount.U1.DWACT_FINC_E[34]\, 
        \un1_bytecount.U1.DWACT_FINC_E[29]\, 
        \un1_bytecount.U1.DWACT_FINC_E[17]\, 
        \un1_bytecount.U1.DWACT_FINC_E[18]\, 
        \un1_bytecount.U1.DWACT_FINC_E[19]\, 
        \un1_bytecount.U1.DWACT_FINC_E[20]\, 
        \un1_bytecount.U1.DWACT_FINC_E[21]\, 
        \un1_bytecount.U1.DWACT_FINC_E[30]\, 
        \un1_bytecount.U1.DWACT_FINC_E[22]\, 
        \un1_bytecount.U1.DWACT_FINC_E[23]\, 
        \un1_bytecount.U1.DWACT_FINC_E[24]\, 
        \un1_bytecount.U1.DWACT_FINC_E[25]\, 
        \un1_bytecount.U1.DWACT_FINC_E[26]\, 
        \un1_bytecount.U1.DWACT_FINC_E[27]\, \un1_bytecount.N_2\, 
        \un1_bytecount.N_3\, \un1_bytecount.N_4\, 
        \un1_bytecount.N_5\, \un1_bytecount.N_6\, 
        \un1_bytecount.N_7\, \un1_bytecount.N_8\, 
        \un1_bytecount.N_9\, \un1_bytecount.N_10\, 
        \un1_bytecount.N_11\, \un1_bytecount.N_12\, 
        \un1_bytecount.N_13\, \un1_bytecount.N_14\, 
        \un1_bytecount.N_15\, \un1_bytecount.N_16\, 
        \un1_bytecount.N_17\, \un1_bytecount.N_18\, 
        \un1_bytecount.N_19\, \un1_bytecount.N_20\, 
        \un1_bytecount.N_21\, \un1_bytecount.N_22\, 
        \un1_bytecount.N_23\, \un1_bytecount.N_24\, 
        \un1_bytecount.N_25\, \un1_bytecount.N_26\, 
        \un1_bytecount.N_27\, \un1_bytecount.N_28\, 
        \un1_bytecount.N_29\, \un1_bytecount.N_30\, 
        \un1_bytecount.N_31\, \i2c0.sda_1\, \i2c0.sda_cl\, clk_c, 
        led_c, scl_c, \GND\, D3_c_c, N_174, N_181, N_183, N_184, 
        N_185, N_187, N_189, N_179, N_188, \data_2_0_o13_0_tz[5]\, 
        \data_2_0_6[6]\, \data_2_0_6_tz[6]\, 
        \data_2_0_a13_9_1[7]\, \data_2_0_a13_1_0[6]\, 
        \data_2_0_a13_1_1[6]\, \data_2_0_a13_9_0[6]\, 
        \data_2_0_a13_1_0[3]\, \data_2_0_a13_0[4]\, 
        \data_2_0_a2_0[5]\, \data_2_0_a13_8_0[7]\, 
        \data_2_0_a13_5_0[7]\, \data_2_0_a13_0[6]\, 
        \data_2_0_a13_2[6]\, \data_2_0_a13_0_0[4]\, \data_3_0[1]\, 
        \data_3_1[2]\, \data_3_2[2]\, \data_3_3[2]\, 
        \data_2_0_0[4]\, \data_2_0_0[3]\, \data_2_0_1[5]\, 
        \data_2_0_2[7]\, \data_2_0_3[7]\, \data_2_0_4[7]\, 
        \data_2_0_5[7]\, \data_2_0_8[7]\, \data_2_0_9[7]\, 
        \data_2_0_1[6]\, \data_2_0_3[6]\, \data_2_0_4[6]\, 
        \data_2_0_6_0[6]\, \data_2_0_8[6]\, \data_2_0_9[6]\, 
        un5_bytecount_1, un5_bytecount_3, un5_bytecount_6, 
        \un5_bytecount_7\, \un5_bytecount_11\, \un5_bytecount_13\, 
        un5_bytecount_14, \un5_bytecount_15\, \un5_bytecount_17\, 
        \un5_bytecount_18\, \un5_bytecount_19\, 
        \un5_bytecount_20\, \un5_bytecount_22\, 
        \un5_bytecount_25\, un5_bytecount_26, \un5_bytecount_27\, 
        \un5_bytecount_28\, \state_i_0[1]\, push_i_0, 
        \state_d_i[2]\, \counter_i[0]\, counter_c6, counter_c8, 
        counter_c10, counter_c14, counter_c16, counter_c18, 
        counter_c20, counter_c21, counter_c12_m6_0_a2_6, 
        counter_c12_m6_0_a2_5, counter_c12_m6_0_a2_2, 
        counter_c12_m6_0_a2_4, \state_d_0[2]\, \state_0[0]_net_1\
         : std_logic;

    for all : i2c
	Use entity work.i2c(DEF_ARCH);
begin 


    \counter[19]\ : DFN1C0
      port map(D => counter_n19, CLK => clk_c, CLR => D3_c_c, Q
         => \counter[19]_net_1\);
    
    \data_RNO_7[6]\ : NOR3A
      port map(A => \data_2_0_a13_0[6]\, B => N_229, C => N_227, 
        Y => \data_2_0_a13_2[6]\);
    
    \data_RNO_5[2]\ : NOR2B
      port map(A => N_220, B => \bytecount[1]_net_1\, Y => N_168);
    
    un1_bytecount_I_55 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[28]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[13]\, C => 
        \bytecount[18]_net_1\, Y => \un1_bytecount.N_14\);
    
    \state[0]\ : DFN1C0
      port map(D => \state_ns[0]\, CLK => clk_c, CLR => D3_c_c, Q
         => \state[0]_net_1\);
    
    \bytecount_RNISOCL1[4]\ : AXOI4
      port map(A => \bytecount[4]_net_1\, B => N_137, C => 
        \bytecount[1]_net_1\, Y => \data_2_0_o13_0_tz[5]\);
    
    \data[5]\ : DFN1C0
      port map(D => \data_3[5]\, CLK => clk_c, CLR => D3_c_c, Q
         => \data[5]_net_1\);
    
    \counter_RNIBP272[4]\ : NOR3C
      port map(A => counter_c12_m6_0_a2_6, B => 
        counter_c12_m6_0_a2_5, C => counter_c3, Y => counter_c12);
    
    un1_bytecount_I_57 : AND2
      port map(A => \bytecount[18]_net_1\, B => 
        \bytecount[19]_net_1\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[14]\);
    
    un1_bytecount_I_53 : XOR2
      port map(A => \un1_bytecount.N_15\, B => 
        \bytecount[18]_net_1\, Y => I_53_1);
    
    \data_RNO_2[7]\ : OR3
      port map(A => N_198, B => N_200, C => N_201, Y => 
        \data_2_0_2[7]\);
    
    \bytecount_RNO[18]\ : NOR2B
      port map(A => \state_0[0]_net_1\, B => I_53_1, Y => 
        \bytecount_3[18]\);
    
    \bytecount[21]\ : DFN1E0C0
      port map(D => \bytecount_3[21]\, CLK => clk_c, CLR => 
        D3_c_c, E => \state_d_0[2]\, Q => \bytecount[21]_net_1\);
    
    \bytecount_RNI1O605[4]\ : AO1A
      port map(A => N_142, B => \data_2_0_o13_0_tz[5]\, C => 
        N_206, Y => N_148);
    
    \data_RNO_8[6]\ : NOR3A
      port map(A => N_217, B => N_146, C => N_135, Y => N_189);
    
    \bytecount_RNO[12]\ : NOR2B
      port map(A => \state_0[0]_net_1\, B => I_35_1, Y => 
        \bytecount_3[12]\);
    
    un1_bytecount_I_42 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[6]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[7]\, C => 
        \un1_bytecount.U1.DWACT_FINC_E[9]\, Y => 
        \un1_bytecount.N_18\);
    
    \counter_RNO[11]\ : XOR2
      port map(A => counter_c10, B => \counter[11]_net_1\, Y => 
        counter_n11);
    
    un1_bytecount_I_21 : AND2
      port map(A => \bytecount[6]_net_1\, B => 
        \bytecount[7]_net_1\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[3]\);
    
    \counter_RNI22AJ4[18]\ : NOR3C
      port map(A => \counter[17]_net_1\, B => counter_c16, C => 
        \counter[18]_net_1\, Y => counter_c18);
    
    \data_RNO_4[7]\ : OR3
      port map(A => N_195, B => N_190, C => N_191, Y => 
        \data_2_0_5[7]\);
    
    \bytecount[6]\ : DFN1E0C0
      port map(D => \bytecount_3[6]\, CLK => clk_c, CLR => D3_c_c, 
        E => \state_d[2]\, Q => \bytecount[6]_net_1\);
    
    un1_bytecount_I_9 : XOR2
      port map(A => \un1_bytecount.N_30\, B => 
        \bytecount[3]_net_1\, Y => I_9_1);
    
    un1_bytecount_I_28 : XOR2
      port map(A => \un1_bytecount.N_23\, B => 
        \bytecount[10]_net_1\, Y => I_28_1);
    
    \bytecount_RNIIF181[0]\ : AO16
      port map(A => \bytecount[1]_net_1\, B => 
        \bytecount[0]_net_1\, C => \bytecount[2]_net_1\, Y => 
        N_134);
    
    \bytecount[18]\ : DFN1E0C0
      port map(D => \bytecount_3[18]\, CLK => clk_c, CLR => 
        D3_c_c, E => \state_d_0[2]\, Q => \bytecount[18]_net_1\);
    
    un1_bytecount_I_72 : AND2
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[15]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[17]\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[18]\);
    
    un1_bytecount_I_44 : AND2
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[7]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[9]\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[10]\);
    
    \counter[11]\ : DFN1C0
      port map(D => counter_n11, CLK => clk_c, CLR => D3_c_c, Q
         => \counter[11]_net_1\);
    
    \bytecount_RNIDBMQ[0]\ : OR2B
      port map(A => \bytecount[3]_net_1\, B => 
        \bytecount[0]_net_1\, Y => N_136);
    
    un1_bytecount_I_91 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[24]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[23]\, C => 
        \un1_bytecount.U1.DWACT_FINC_E[25]\, Y => 
        \un1_bytecount.N_4\);
    
    \counter_RNI4OF03[14]\ : NOR3C
      port map(A => \counter[13]_net_1\, B => counter_c12, C => 
        \counter[14]_net_1\, Y => counter_c14);
    
    \bytecount_RNO[31]\ : NOR2B
      port map(A => \state[0]_net_1\, B => I_98_1, Y => 
        \bytecount_3[31]\);
    
    un1_bytecount_I_98 : XOR2
      port map(A => \un1_bytecount.N_2\, B => 
        \bytecount[31]_net_1\, Y => I_98_1);
    
    un1_bytecount_I_74 : XOR2
      port map(A => \un1_bytecount.N_9\, B => 
        \bytecount[24]_net_1\, Y => I_74_1);
    
    \data_RNO_16[6]\ : NOR2
      port map(A => \bytecount[5]_net_1\, B => 
        \bytecount[0]_net_1\, Y => \data_2_0_a13_0[6]\);
    
    \counter_RNO[15]\ : XOR2
      port map(A => counter_c14, B => \counter[15]_net_1\, Y => 
        counter_n15);
    
    un1_bytecount_I_39 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[6]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[7]\, C => 
        \un1_bytecount.U1.DWACT_FINC_E[8]\, Y => 
        \un1_bytecount.N_19\);
    
    \data_RNO[3]\ : OA1
      port map(A => N_171, B => \data_2_0_0[3]\, C => 
        \state_i_0[1]\, Y => \data_3[3]\);
    
    \data_RNO_2[4]\ : NOR3B
      port map(A => N_210, B => \data_2_0_a13_0_0[4]\, C => N_136, 
        Y => N_174);
    
    \data_RNO_15[6]\ : AO1B
      port map(A => \bytecount[2]_net_1\, B => N_136, C => N_137, 
        Y => \data_2_0_6_tz[6]\);
    
    \data_RNO_10[7]\ : NOR3A
      port map(A => N_201_1, B => N_137, C => N_135, Y => N_201);
    
    D2_pad : OUTBUF
      port map(D => \GND\, PAD => D2);
    
    \bytecount_RNICAMQ_1[0]\ : OR2A
      port map(A => \bytecount[2]_net_1\, B => 
        \bytecount[0]_net_1\, Y => N_147);
    
    un1_bytecount_I_15 : AND2
      port map(A => \bytecount[3]_net_1\, B => 
        \bytecount[4]_net_1\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[1]\);
    
    \counter_RNI5GMS[12]\ : NOR3C
      port map(A => \counter[11]_net_1\, B => \counter[12]_net_1\, 
        C => \counter[8]_net_1\, Y => counter_c12_m6_0_a2_4);
    
    \data_RNO_4[6]\ : OR3
      port map(A => N_184, B => N_188, C => \data_2_0_3[6]\, Y
         => \data_2_0_6_0[6]\);
    
    un1_bytecount_I_80 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[7]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[9]\, C => 
        \un1_bytecount.U1.DWACT_FINC_E[12]\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[30]\);
    
    \data_RNO_1[3]\ : AO1
      port map(A => \data_2_0_a13_1_0[3]\, B => N_228, C => N_170, 
        Y => \data_2_0_0[3]\);
    
    \bytecount_RNIOFRI4[3]\ : OA1
      port map(A => N_208, B => N_209, C => \bytecount[3]_net_1\, 
        Y => N_170);
    
    \bytecount_RNIIP6BD[0]\ : NOR3B
      port map(A => I_14_1, B => un5_bytecount_3, C => I_23_1, Y
         => un5_bytecount_6);
    
    \counter_RNO[7]\ : XOR2
      port map(A => counter_c6, B => \counter[7]_net_1\, Y => 
        counter_n7);
    
    un1_bytecount_I_17 : XOR2
      port map(A => \un1_bytecount.N_27\, B => 
        \bytecount[6]_net_1\, Y => I_17_1);
    
    \data_RNO_6[7]\ : AO1
      port map(A => N_221, B => N_146, C => N_197, Y => 
        \data_2_0_3[7]\);
    
    un1_bytecount_I_6 : NOR2B
      port map(A => \bytecount[1]_net_1\, B => 
        \bytecount[0]_net_1\, Y => \un1_bytecount.N_31\);
    
    \counter[6]\ : DFN1C0
      port map(D => counter_n6, CLK => clk_c, CLR => D3_c_c, Q
         => \counter[6]_net_1\);
    
    \counter[21]\ : DFN1C0
      port map(D => counter_n21, CLK => clk_c, CLR => D3_c_c, Q
         => \counter[21]_net_1\);
    
    un1_bytecount_I_13 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[0]\, B => 
        \bytecount[3]_net_1\, C => \bytecount[4]_net_1\, Y => 
        \un1_bytecount.N_28\);
    
    un1_bytecount_I_61 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[28]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[13]\, C => 
        \un1_bytecount.U1.DWACT_FINC_E[15]\, Y => 
        \un1_bytecount.N_12\);
    
    \data_RNO_11[7]\ : NOR3A
      port map(A => N_227, B => \bytecount[2]_net_1\, C => N_133, 
        Y => N_195);
    
    \data[4]\ : DFN1C0
      port map(D => \data_3[4]\, CLK => clk_c, CLR => D3_c_c, Q
         => \data[4]_net_1\);
    
    \bytecount_RNIKH181[4]\ : XA1B
      port map(A => \bytecount[1]_net_1\, B => 
        \bytecount[0]_net_1\, C => \bytecount[4]_net_1\, Y => 
        N_228);
    
    un1_bytecount_I_68 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[34]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[2]\, C => 
        \un1_bytecount.U1.DWACT_FINC_E[5]\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[29]\);
    
    \counter[3]\ : DFN1C0
      port map(D => counter_n3, CLK => clk_c, CLR => D3_c_c, Q
         => \counter[3]_net_1\);
    
    \counter[2]\ : DFN1C0
      port map(D => counter_n2, CLK => clk_c, CLR => D3_c_c, Q
         => \counter[2]_net_1\);
    
    \bytecount_RNO[16]\ : NOR2B
      port map(A => \state_0[0]_net_1\, B => I_46_1, Y => 
        \bytecount_3[16]\);
    
    \counter_RNO[8]\ : AX1C
      port map(A => \counter[7]_net_1\, B => counter_c6, C => 
        \counter[8]_net_1\, Y => counter_n8);
    
    \counter_RNO[13]\ : XOR2
      port map(A => counter_c12, B => \counter[13]_net_1\, Y => 
        counter_n13);
    
    \bytecount_RNIGB3G2[0]\ : NOR3A
      port map(A => N_217, B => N_138_i, C => N_135, Y => N_209);
    
    \bytecount_RNO[13]\ : NOR2B
      port map(A => \state_0[0]_net_1\, B => I_37_1, Y => 
        \bytecount_3[13]\);
    
    \bytecount_RNI2T2G2[0]\ : NOR3A
      port map(A => \bytecount[0]_net_1\, B => I_5_1, C => I_7_1, 
        Y => un5_bytecount_1);
    
    \bytecount[19]\ : DFN1E0C0
      port map(D => \bytecount_3[19]\, CLK => clk_c, CLR => 
        D3_c_c, E => \state_d_0[2]\, Q => \bytecount[19]_net_1\);
    
    push : DFN1P0
      port map(D => \state_d_i[2]\, CLK => clk_c, PRE => D3_c_c, 
        Q => push_i_0);
    
    \data_RNO_19[7]\ : XOR2
      port map(A => \bytecount[2]_net_1\, B => N_135, Y => 
        N_150_i);
    
    un1_bytecount_I_86 : XOR2
      port map(A => \un1_bytecount.N_6\, B => 
        \bytecount[27]_net_1\, Y => I_86_1);
    
    \bytecount_RNO[17]\ : NOR2B
      port map(A => \state_0[0]_net_1\, B => I_49_1, Y => 
        \bytecount_3[17]\);
    
    un5_bytecount_19 : NOR3A
      port map(A => \un5_bytecount_11\, B => I_77_1, C => I_82_1, 
        Y => \un5_bytecount_19\);
    
    \data_RNO_1[2]\ : OA1
      port map(A => \bytecount[6]_net_1\, B => N_161, C => N_135, 
        Y => \data_3_2[2]\);
    
    \bytecount[22]\ : DFN1E0C0
      port map(D => \bytecount_3[22]\, CLK => clk_c, CLR => 
        D3_c_c, E => \state_d_0[2]\, Q => \bytecount[22]_net_1\);
    
    \bytecount_RNILJMQ[5]\ : OR2
      port map(A => \bytecount[6]_net_1\, B => 
        \bytecount[5]_net_1\, Y => N_135);
    
    \bytecount_RNIIGMQ[6]\ : OR2B
      port map(A => \bytecount[6]_net_1\, B => 
        \bytecount[2]_net_1\, Y => N_142);
    
    un1_bytecount_I_5 : XOR2
      port map(A => \bytecount[0]_net_1\, B => 
        \bytecount[1]_net_1\, Y => I_5_1);
    
    \counter_RNO[12]\ : AX1C
      port map(A => \counter[11]_net_1\, B => counter_c10, C => 
        \counter[12]_net_1\, Y => counter_n12);
    
    i2c0 : i2c
      port map(state_d(2) => \state_d[2]\, state_ns_0(0) => 
        \state_ns[0]\, state_i_0_0 => \state_i_0[1]\, data(7) => 
        \data[7]_net_1\, data(6) => \data[6]_net_1\, data(5) => 
        \data[5]_net_1\, data(4) => \data[4]_net_1\, data(3) => 
        \data[3]_net_1\, data(2) => \data[2]_net_1\, data(1) => 
        \data[1]_net_1\, scl_c => scl_c, sda_1 => \i2c0.sda_1\, 
        sda_cl => \i2c0.sda_cl\, un5_bytecount => un5_bytecount, 
        push_i_0 => push_i_0, D3_c_c => D3_c_c, clk_c => clk_c);
    
    \bytecount_RNO[15]\ : NOR2B
      port map(A => \state_0[0]_net_1\, B => I_43_1, Y => 
        \bytecount_3[15]\);
    
    un1_bytecount_I_51 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[0]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[2]\, C => 
        \un1_bytecount.U1.DWACT_FINC_E[5]\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[28]\);
    
    \data_RNO_0[3]\ : NOR3B
      port map(A => N_227, B => N_134, C => \bytecount[4]_net_1\, 
        Y => N_171);
    
    \counter_RNO[1]\ : XOR2
      port map(A => \counter[0]_net_1\, B => \counter[1]_net_1\, 
        Y => counter_n1);
    
    \counter[17]\ : DFN1C0
      port map(D => counter_n17, CLK => clk_c, CLR => D3_c_c, Q
         => \counter[17]_net_1\);
    
    un1_bytecount_I_58 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[28]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[13]\, C => 
        \un1_bytecount.U1.DWACT_FINC_E[14]\, Y => 
        \un1_bytecount.N_13\);
    
    \counter[4]\ : DFN1C0
      port map(D => counter_n4, CLK => clk_c, CLR => D3_c_c, Q
         => \counter[4]_net_1\);
    
    \data_RNO[2]\ : NOR3B
      port map(A => \data_3_3[2]\, B => \data_3_2[2]\, C => N_167, 
        Y => \data_3[2]\);
    
    un1_bytecount_I_49 : XOR2
      port map(A => \un1_bytecount.N_16\, B => 
        \bytecount[17]_net_1\, Y => I_49_1);
    
    \counter[10]\ : DFN1C0
      port map(D => counter_n10, CLK => clk_c, CLR => D3_c_c, Q
         => \counter[10]_net_1\);
    
    \bytecount[31]\ : DFN1E0C0
      port map(D => \bytecount_3[31]\, CLK => clk_c, CLR => 
        D3_c_c, E => \state_d[2]\, Q => \bytecount[31]_net_1\);
    
    \state_RNIJV9Q[1]\ : NOR2A
      port map(A => \state_i_0[1]\, B => \state[0]_net_1\, Y => 
        \state_d[2]\);
    
    un1_bytecount_I_79 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[15]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[17]\, C => 
        \un1_bytecount.U1.DWACT_FINC_E[20]\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[21]\);
    
    GND_i : GND
      port map(Y => \GND\);
    
    \counter[13]\ : DFN1C0
      port map(D => counter_n13, CLK => clk_c, CLR => D3_c_c, Q
         => \counter[13]_net_1\);
    
    \bytecount[4]\ : DFN1E0C0
      port map(D => \bytecount_3[4]\, CLK => clk_c, CLR => D3_c_c, 
        E => \state_d[2]\, Q => \bytecount[4]_net_1\);
    
    \bytecount[27]\ : DFN1E0C0
      port map(D => \bytecount_3[27]\, CLK => clk_c, CLR => 
        D3_c_c, E => \state_d[2]\, Q => \bytecount[27]_net_1\);
    
    \data_RNO[4]\ : OA1
      port map(A => N_170, B => \data_2_0_0[4]\, C => 
        \state_i_0[1]\, Y => \data_3[4]\);
    
    \data_RNO_1[5]\ : OR3
      port map(A => N_177, B => N_176, C => N_148, Y => 
        \data_2_0_1[5]\);
    
    \data_RNO_10[6]\ : NOR3B
      port map(A => N_212, B => \data_2_0_a13_9_0[6]\, C => N_133, 
        Y => N_188);
    
    \data_RNO_1[7]\ : OR3
      port map(A => \data_2_0_4[7]\, B => \data_2_0_3[7]\, C => 
        N_193, Y => \data_2_0_9[7]\);
    
    \counter[12]\ : DFN1C0
      port map(D => counter_n12, CLK => clk_c, CLR => D3_c_c, Q
         => \counter[12]_net_1\);
    
    \bytecount_RNO[24]\ : NOR2B
      port map(A => \state_0[0]_net_1\, B => I_74_1, Y => 
        \bytecount_3[24]\);
    
    \counter_RNIICFG[4]\ : NOR2B
      port map(A => counter_c3, B => \counter[4]_net_1\, Y => 
        counter_c4);
    
    un1_bytecount_I_22 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[0]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[2]\, C => 
        \un1_bytecount.U1.DWACT_FINC_E[3]\, Y => 
        \un1_bytecount.N_25\);
    
    \bytecount_RNIJHMQ_0[6]\ : NOR2
      port map(A => \bytecount[6]_net_1\, B => 
        \bytecount[3]_net_1\, Y => \data_2_0_a2_0[5]\);
    
    \data_RNO_13[6]\ : NOR3B
      port map(A => N_201_1, B => N_159, C => 
        \bytecount[6]_net_1\, Y => N_179);
    
    \data[1]\ : DFN1C0
      port map(D => \data_3[1]\, CLK => clk_c, CLR => D3_c_c, Q
         => \data[1]_net_1\);
    
    \bytecount_RNIIIVPL5[0]\ : NOR3C
      port map(A => \un5_bytecount_27\, B => un5_bytecount_26, C
         => \un5_bytecount_28\, Y => un5_bytecount);
    
    un1_bytecount_I_24 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[0]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[2]\, C => 
        \un1_bytecount.U1.DWACT_FINC_E[3]\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[4]\);
    
    \bytecount_RNO[10]\ : NOR2B
      port map(A => \state_0[0]_net_1\, B => I_28_1, Y => 
        \bytecount_3[10]\);
    
    \counter[20]\ : DFN1C0
      port map(D => counter_n20, CLK => clk_c, CLR => D3_c_c, Q
         => \counter[20]_net_1\);
    
    un1_bytecount_I_92 : XOR2
      port map(A => \un1_bytecount.N_4\, B => 
        \bytecount[29]_net_1\, Y => I_92_1);
    
    un1_bytecount_I_30 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[0]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[2]\, C => 
        \un1_bytecount.U1.DWACT_FINC_E[5]\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[6]\);
    
    \data[6]\ : DFN1C0
      port map(D => \data_3[6]\, CLK => clk_c, CLR => D3_c_c, Q
         => \data[6]_net_1\);
    
    \counter_RNO[17]\ : XOR2
      port map(A => counter_c16, B => \counter[17]_net_1\, Y => 
        counter_n17);
    
    \data_RNO_9[6]\ : NOR3B
      port map(A => N_212, B => N_213, C => \bytecount[2]_net_1\, 
        Y => N_184);
    
    \data_RNO_8[7]\ : NOR3B
      port map(A => \bytecount[3]_net_1\, B => N_211, C => N_147, 
        Y => N_198);
    
    D3_pad : OUTBUF
      port map(D => D3_c_c, PAD => D3);
    
    \counter[23]\ : DFN1C0
      port map(D => counter_n23, CLK => clk_c, CLR => D3_c_c, Q
         => \counter[23]_net_1\);
    
    un1_bytecount_I_94 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[24]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[23]\, C => 
        \un1_bytecount.U1.DWACT_FINC_E[26]\, Y => 
        \un1_bytecount.N_3\);
    
    un1_bytecount_I_11 : NOR2B
      port map(A => \bytecount[3]_net_1\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[0]\, Y => 
        \un1_bytecount.N_29\);
    
    un1_bytecount_I_85 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[29]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[30]\, C => 
        \un1_bytecount.U1.DWACT_FINC_E[23]\, Y => 
        \un1_bytecount.N_6\);
    
    un1_bytecount_I_18 : AND3
      port map(A => \bytecount[3]_net_1\, B => 
        \bytecount[4]_net_1\, C => \bytecount[5]_net_1\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[2]\);
    
    \data_RNO_6[6]\ : NOR2B
      port map(A => N_221, B => \data_2_0_6_tz[6]\, Y => 
        \data_2_0_6[6]\);
    
    \data_RNO_1[6]\ : OR3
      port map(A => \data_2_0_4[6]\, B => \data_2_0_6[6]\, C => 
        N_148, Y => \data_2_0_9[6]\);
    
    \state_RNO[1]\ : AOI1B
      port map(A => un5_bytecount, B => \state_0[0]_net_1\, C => 
        \state_i_0[1]\, Y => \state_RNO[1]_net_1\);
    
    \data_RNO_0[1]\ : NOR2B
      port map(A => \state_i_0[1]\, B => N_211, Y => 
        \data_3_0[1]\);
    
    \counter_RNIMB6D[4]\ : NOR3C
      port map(A => \counter[5]_net_1\, B => \counter[4]_net_1\, 
        C => counter_c12_m6_0_a2_2, Y => counter_c12_m6_0_a2_5);
    
    \data_RNO[1]\ : NOR3B
      port map(A => N_210, B => \data_3_0[1]\, C => N_136, Y => 
        \data_3[1]\);
    
    \counter_RNICSLT[8]\ : NOR3C
      port map(A => \counter[7]_net_1\, B => counter_c6, C => 
        \counter[8]_net_1\, Y => counter_c8);
    
    \counter[22]\ : DFN1C0
      port map(D => counter_n22, CLK => clk_c, CLR => D3_c_c, Q
         => \counter[22]_net_1\);
    
    \counter[15]\ : DFN1C0
      port map(D => counter_n15, CLK => clk_c, CLR => D3_c_c, Q
         => \counter[15]_net_1\);
    
    \bytecount[24]\ : DFN1E0C0
      port map(D => \bytecount_3[24]\, CLK => clk_c, CLR => 
        D3_c_c, E => \state_d_0[2]\, Q => \bytecount[24]_net_1\);
    
    un1_bytecount_I_87 : AND2
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[29]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[30]\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[24]\);
    
    \data_RNO_2[3]\ : NOR2
      port map(A => \bytecount[3]_net_1\, B => N_142, Y => 
        \data_2_0_a13_1_0[3]\);
    
    D1_pad : OUTBUF
      port map(D => led_c, PAD => D1);
    
    un5_bytecount_22 : NOR3A
      port map(A => \un5_bytecount_17\, B => I_40_1, C => I_43_1, 
        Y => \un5_bytecount_22\);
    
    un1_bytecount_I_83 : AND3
      port map(A => \bytecount[24]_net_1\, B => 
        \bytecount[25]_net_1\, C => \bytecount[26]_net_1\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[22]\);
    
    \data_RNO_17[7]\ : NOR3B
      port map(A => \bytecount[0]_net_1\, B => 
        \bytecount[2]_net_1\, C => \bytecount[5]_net_1\, Y => 
        \data_2_0_a13_9_1[7]\);
    
    un1_bytecount_I_62 : XOR2
      port map(A => \un1_bytecount.N_12\, B => 
        \bytecount[21]_net_1\, Y => I_62_1);
    
    un1_bytecount_I_36 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[6]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[7]\, C => 
        \bytecount[12]_net_1\, Y => \un1_bytecount.N_20\);
    
    \data_RNO_11[6]\ : AO1
      port map(A => \data_2_0_a13_1_1[6]\, B => 
        \data_2_0_a13_1_0[6]\, C => N_187, Y => \data_2_0_3[6]\);
    
    VCC_i : VCC
      port map(Y => \VCC\);
    
    \data_RNO_1[4]\ : NOR3
      port map(A => \bytecount[1]_net_1\, B => 
        \bytecount[4]_net_1\, C => N_142, Y => 
        \data_2_0_a13_0[4]\);
    
    \counter_RNO[14]\ : AX1C
      port map(A => \counter[13]_net_1\, B => counter_c12, C => 
        \counter[14]_net_1\, Y => counter_n14);
    
    reset_pad : CLKBUF
      port map(PAD => reset, Y => D3_c_c);
    
    un1_bytecount_I_64 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[28]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[13]\, C => 
        \un1_bytecount.U1.DWACT_FINC_E[16]\, Y => 
        \un1_bytecount.N_11\);
    
    \counter[1]\ : DFN1C0
      port map(D => counter_n1, CLK => clk_c, CLR => D3_c_c, Q
         => \counter[1]_net_1\);
    
    \bytecount_RNIHFMQ_0[4]\ : NOR2A
      port map(A => \bytecount[4]_net_1\, B => 
        \bytecount[3]_net_1\, Y => N_222);
    
    \counter_RNO[5]\ : XOR2
      port map(A => counter_c4, B => \counter[5]_net_1\, Y => 
        counter_n5);
    
    \bytecount_RNO[21]\ : NOR2B
      port map(A => \state_0[0]_net_1\, B => I_62_1, Y => 
        \bytecount_3[21]\);
    
    \bytecount_RNICAMQ_0[0]\ : OR2A
      port map(A => \bytecount[0]_net_1\, B => 
        \bytecount[2]_net_1\, Y => N_146);
    
    \counter_RNO[3]\ : XOR2
      port map(A => counter_c2, B => \counter[3]_net_1\, Y => 
        counter_n3);
    
    \bytecount_RNIK6U27[0]\ : NOR3B
      port map(A => un5_bytecount_1, B => I_17_1, C => I_9_1, Y
         => un5_bytecount_3);
    
    \data_RNO_7[7]\ : NOR3B
      port map(A => N_222, B => N_134, C => \bytecount[6]_net_1\, 
        Y => N_193);
    
    \bytecount_RNIJHMQ[6]\ : NOR2B
      port map(A => \bytecount[6]_net_1\, B => 
        \bytecount[3]_net_1\, Y => N_227);
    
    \bytecount_RNI0TCL1[4]\ : NOR3B
      port map(A => \bytecount[2]_net_1\, B => N_213, C => 
        \bytecount[4]_net_1\, Y => N_208);
    
    \bytecount_RNO[29]\ : NOR2B
      port map(A => \state[0]_net_1\, B => I_92_1, Y => 
        \bytecount_3[29]\);
    
    \bytecount[20]\ : DFN1E0C0
      port map(D => \bytecount_3[20]\, CLK => clk_c, CLR => 
        D3_c_c, E => \state_d_0[2]\, Q => \bytecount[20]_net_1\);
    
    un1_bytecount_I_52 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[28]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[10]\, C => 
        \un1_bytecount.U1.DWACT_FINC_E[12]\, Y => 
        \un1_bytecount.N_15\);
    
    \data_RNO_2[5]\ : NOR3A
      port map(A => N_210, B => N_133, C => N_135, Y => N_177);
    
    \data_RNO_16[7]\ : NOR3B
      port map(A => N_213, B => \bytecount[4]_net_1\, C => N_136, 
        Y => N_197);
    
    \data[7]\ : DFN1C0
      port map(D => \data_3[7]\, CLK => clk_c, CLR => D3_c_c, Q
         => \data[7]_net_1\);
    
    un1_bytecount_I_40 : XOR2
      port map(A => \un1_bytecount.N_19\, B => 
        \bytecount[14]_net_1\, Y => I_40_1);
    
    \data_RNO_5[6]\ : OR3
      port map(A => N_181, B => N_179, C => N_183, Y => 
        \data_2_0_4[6]\);
    
    \counter[5]\ : DFN1C0
      port map(D => counter_n5, CLK => clk_c, CLR => D3_c_c, Q
         => \counter[5]_net_1\);
    
    \bytecount[11]\ : DFN1E0C0
      port map(D => \bytecount_3[11]\, CLK => clk_c, CLR => 
        D3_c_c, E => \state_d_0[2]\, Q => \bytecount[11]_net_1\);
    
    un5_bytecount_18 : NOR3A
      port map(A => \un5_bytecount_7\, B => I_86_1, C => I_32_1, 
        Y => \un5_bytecount_18\);
    
    oled_reset_pad : OUTBUF
      port map(D => \GND\, PAD => oled_reset);
    
    \data_RNO_17[6]\ : NOR2A
      port map(A => \bytecount[6]_net_1\, B => 
        \bytecount[2]_net_1\, Y => \data_2_0_a13_9_0[6]\);
    
    un1_bytecount_I_54 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[7]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[9]\, C => 
        \un1_bytecount.U1.DWACT_FINC_E[12]\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[13]\);
    
    un1_bytecount_I_29 : AND3
      port map(A => \bytecount[6]_net_1\, B => 
        \bytecount[7]_net_1\, C => \bytecount[8]_net_1\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[5]\);
    
    \bytecount[0]\ : DFN1E0C0
      port map(D => \bytecount_3[0]\, CLK => clk_c, CLR => D3_c_c, 
        E => \state_d[2]\, Q => \bytecount[0]_net_1\);
    
    un1_bytecount_I_70 : XOR2
      port map(A => \un1_bytecount.N_10\, B => 
        \bytecount[23]_net_1\, Y => I_70_1);
    
    \state_RNI2I9K[1]\ : NOR2A
      port map(A => \state_i_0[1]\, B => \state_0[0]_net_1\, Y
         => \state_d_0[2]\);
    
    sda_pad : TRIBUFF
      port map(D => \i2c0.sda_1\, E => \i2c0.sda_cl\, PAD => sda);
    
    un5_bytecount_7 : NOR3
      port map(A => I_12_1, B => I_20_1, C => I_28_1, Y => 
        \un5_bytecount_7\);
    
    \counter_RNO[10]\ : AX1C
      port map(A => \counter[9]_net_1\, B => counter_c8, C => 
        \counter[10]_net_1\, Y => counter_n10);
    
    un5_bytecount_11 : NOR2
      port map(A => I_74_1, B => I_70_1, Y => \un5_bytecount_11\);
    
    \counter_RNO[21]\ : XOR2
      port map(A => counter_c20, B => \counter[21]_net_1\, Y => 
        counter_n21);
    
    \bytecount_RNO[3]\ : NOR2B
      port map(A => \state[0]_net_1\, B => I_9_1, Y => 
        \bytecount_3[3]\);
    
    un5_bytecount_28 : NOR3B
      port map(A => \un5_bytecount_20\, B => \un5_bytecount_25\, 
        C => I_98_1, Y => \un5_bytecount_28\);
    
    \data_RNO_12[7]\ : NOR3B
      port map(A => \bytecount[6]_net_1\, B => N_228, C => 
        N_154_i, Y => N_190);
    
    \data_RNO_0[6]\ : OR3
      port map(A => \data_2_0_1[6]\, B => N_185, C => 
        \data_2_0_6_0[6]\, Y => \data_2_0_8[6]\);
    
    un5_bytecount_13 : NOR2
      port map(A => I_59_1, B => I_56_1, Y => \un5_bytecount_13\);
    
    un1_bytecount_I_46 : XOR2
      port map(A => \un1_bytecount.N_17\, B => 
        \bytecount[16]_net_1\, Y => I_46_1);
    
    \counter[16]\ : DFN1C0
      port map(D => counter_n16, CLK => clk_c, CLR => D3_c_c, Q
         => \counter[16]_net_1\);
    
    \bytecount_RNIGEMQ_0[4]\ : NOR2
      port map(A => \bytecount[4]_net_1\, B => 
        \bytecount[2]_net_1\, Y => N_210);
    
    \bytecount[25]\ : DFN1E0C0
      port map(D => \bytecount_3[25]\, CLK => clk_c, CLR => 
        D3_c_c, E => \state_d_0[2]\, Q => \bytecount[25]_net_1\);
    
    un1_bytecount_I_35 : XOR2
      port map(A => \un1_bytecount.N_21\, B => 
        \bytecount[12]_net_1\, Y => I_35_1);
    
    \bytecount[23]\ : DFN1E0C0
      port map(D => \bytecount_3[23]\, CLK => clk_c, CLR => 
        D3_c_c, E => \state_d_0[2]\, Q => \bytecount[23]_net_1\);
    
    un1_bytecount_I_76 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[29]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[13]\, C => 
        \un1_bytecount.U1.DWACT_FINC_E[19]\, Y => 
        \un1_bytecount.N_8\);
    
    led : DFN1E1
      port map(D => \counter[23]_net_1\, CLK => clk_c, E => 
        D3_c_c, Q => led_c);
    
    un1_bytecount_I_8 : AND3
      port map(A => \bytecount[0]_net_1\, B => 
        \bytecount[1]_net_1\, C => \bytecount[2]_net_1\, Y => 
        \un1_bytecount.N_30\);
    
    un1_bytecount_I_37 : XOR2
      port map(A => \un1_bytecount.N_20\, B => 
        \bytecount[13]_net_1\, Y => I_37_1);
    
    \bytecount_RNO[5]\ : NOR2B
      port map(A => \state[0]_net_1\, B => I_14_1, Y => 
        \bytecount_3[5]\);
    
    un1_bytecount_I_81 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[29]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[30]\, C => 
        \un1_bytecount.U1.DWACT_FINC_E[21]\, Y => 
        \un1_bytecount.N_7\);
    
    un1_bytecount_I_69 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[29]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[13]\, C => 
        \un1_bytecount.U1.DWACT_FINC_E[33]\, Y => 
        \un1_bytecount.N_10\);
    
    un1_bytecount_I_12 : XOR2
      port map(A => \un1_bytecount.N_29\, B => 
        \bytecount[4]_net_1\, Y => I_12_1);
    
    \data_RNO_5[7]\ : OA1
      port map(A => \data_2_0_a13_8_0[7]\, B => 
        \data_2_0_a13_5_0[7]\, C => N_210, Y => \data_2_0_4[7]\);
    
    un1_bytecount_I_88 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[24]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[23]\, C => 
        \bytecount[27]_net_1\, Y => \un1_bytecount.N_5\);
    
    \counter_RNO[6]\ : AX1C
      port map(A => \counter[5]_net_1\, B => counter_c4, C => 
        \counter[6]_net_1\, Y => counter_n6);
    
    un1_bytecount_I_33 : AND3
      port map(A => \bytecount[9]_net_1\, B => 
        \bytecount[10]_net_1\, C => \bytecount[11]_net_1\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[7]\);
    
    \data_RNO_2[2]\ : OA1C
      port map(A => N_133, B => N_142, C => \bytecount[3]_net_1\, 
        Y => N_167);
    
    \counter_RNIDI2N[6]\ : NOR3C
      port map(A => \counter[5]_net_1\, B => counter_c4, C => 
        \counter[6]_net_1\, Y => counter_c6);
    
    un1_bytecount_I_14 : XOR2
      port map(A => \un1_bytecount.N_28\, B => 
        \bytecount[5]_net_1\, Y => I_14_1);
    
    \data_RNO_15[7]\ : NOR2A
      port map(A => \bytecount[3]_net_1\, B => N_135, Y => 
        \data_2_0_a13_5_0[7]\);
    
    \data_RNO[7]\ : OA1
      port map(A => \data_2_0_8[7]\, B => \data_2_0_9[7]\, C => 
        \state_i_0[1]\, Y => \data_3[7]\);
    
    \data_RNO[5]\ : OA1
      port map(A => N_175, B => \data_2_0_1[5]\, C => 
        \state_i_0[1]\, Y => \data_3[5]\);
    
    \bytecount_RNO[30]\ : NOR2B
      port map(A => \state[0]_net_1\, B => I_95_1, Y => 
        \bytecount_3[30]\);
    
    \counter_RNO[23]\ : AX1C
      port map(A => \counter[22]_net_1\, B => counter_c21, C => 
        \counter[23]_net_1\, Y => counter_n23);
    
    \data_RNO_18[7]\ : XOR2
      port map(A => \bytecount[2]_net_1\, B => 
        \bytecount[3]_net_1\, Y => N_154_i);
    
    \bytecount[2]\ : DFN1E0C0
      port map(D => \bytecount_3[2]\, CLK => clk_c, CLR => D3_c_c, 
        E => \state_d[2]\, Q => \bytecount[2]_net_1\);
    
    \bytecount[12]\ : DFN1E0C0
      port map(D => \bytecount_3[12]\, CLK => clk_c, CLR => 
        D3_c_c, E => \state_d_0[2]\, Q => \bytecount[12]_net_1\);
    
    \counter[14]\ : DFN1C0
      port map(D => counter_n14, CLK => clk_c, CLR => D3_c_c, Q
         => \counter[14]_net_1\);
    
    un1_bytecount_I_59 : XOR2
      port map(A => \un1_bytecount.N_13\, B => 
        \bytecount[20]_net_1\, Y => I_59_1);
    
    \bytecount[26]\ : DFN1E0C0
      port map(D => \bytecount_3[26]\, CLK => clk_c, CLR => 
        D3_c_c, E => \state_d_0[2]\, Q => \bytecount[26]_net_1\);
    
    \counter_RNO[22]\ : XOR2
      port map(A => counter_c21, B => \counter[22]_net_1\, Y => 
        counter_n22);
    
    \bytecount_RNO[6]\ : NOR2B
      port map(A => \state[0]_net_1\, B => I_17_1, Y => 
        \bytecount_3[6]\);
    
    clk_pad : CLKBUF
      port map(PAD => clk, Y => clk_c);
    
    \bytecount[9]\ : DFN1E0C0
      port map(D => \bytecount_3[9]\, CLK => clk_c, CLR => D3_c_c, 
        E => \state_d[2]\, Q => \bytecount[9]_net_1\);
    
    \data_RNO_20[6]\ : NOR3B
      port map(A => N_213, B => \bytecount[2]_net_1\, C => N_136, 
        Y => N_187);
    
    \counter_RNIPJFP5[21]\ : NOR2B
      port map(A => counter_c20, B => \counter[21]_net_1\, Y => 
        counter_c21);
    
    \bytecount[30]\ : DFN1E0C0
      port map(D => \bytecount_3[30]\, CLK => clk_c, CLR => 
        D3_c_c, E => \state_d[2]\, Q => \bytecount[30]_net_1\);
    
    \data_RNO_12[6]\ : NOR3C
      port map(A => N_222, B => N_147, C => N_211, Y => N_181);
    
    \bytecount_RNO[28]\ : NOR2B
      port map(A => \state[0]_net_1\, B => I_89_1, Y => 
        \bytecount_3[28]\);
    
    \bytecount_RNO[22]\ : NOR2B
      port map(A => \state_0[0]_net_1\, B => I_65_1, Y => 
        \bytecount_3[22]\);
    
    un1_bytecount_I_45 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[6]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[10]\, C => 
        \bytecount[15]_net_1\, Y => \un1_bytecount.N_17\);
    
    \data[2]\ : DFN1C0
      port map(D => \data_3[2]\, CLK => clk_c, CLR => D3_c_c, Q
         => \data[2]_net_1\);
    
    \bytecount[17]\ : DFN1E0C0
      port map(D => \bytecount_3[17]\, CLK => clk_c, CLR => 
        D3_c_c, E => \state_d_0[2]\, Q => \bytecount[17]_net_1\);
    
    \bytecount_RNIGEMQ_0[5]\ : NOR2A
      port map(A => \bytecount[5]_net_1\, B => 
        \bytecount[1]_net_1\, Y => N_213);
    
    un1_bytecount_I_75 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[15]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[17]\, C => 
        \bytecount[24]_net_1\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[19]\);
    
    un1_bytecount_I_20 : XOR2
      port map(A => \un1_bytecount.N_26\, B => 
        \bytecount[7]_net_1\, Y => I_20_1);
    
    \data_RNO_3[4]\ : NOR2B
      port map(A => \bytecount[6]_net_1\, B => 
        \bytecount[1]_net_1\, Y => \data_2_0_a13_0_0[4]\);
    
    un1_bytecount_I_47 : AND2
      port map(A => \bytecount[15]_net_1\, B => 
        \bytecount[16]_net_1\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[11]\);
    
    \data_RNO_0[4]\ : AO1
      port map(A => \data_2_0_a13_0[4]\, B => N_136, C => N_174, 
        Y => \data_2_0_0[4]\);
    
    \data_RNO[6]\ : OA1
      port map(A => \data_2_0_8[6]\, B => \data_2_0_9[6]\, C => 
        \state_i_0[1]\, Y => \data_3[6]\);
    
    un1_bytecount_I_77 : XOR2
      port map(A => \un1_bytecount.N_8\, B => 
        \bytecount[25]_net_1\, Y => I_77_1);
    
    un1_bytecount_I_43 : XOR2
      port map(A => \un1_bytecount.N_18\, B => 
        \bytecount[15]_net_1\, Y => I_43_1);
    
    un1_bytecount_I_90 : AND2
      port map(A => \bytecount[27]_net_1\, B => 
        \bytecount[28]_net_1\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[25]\);
    
    \bytecount_RNIGEMQ[5]\ : NOR2B
      port map(A => \bytecount[5]_net_1\, B => 
        \bytecount[1]_net_1\, Y => N_211);
    
    \counter_RNO[4]\ : XOR2
      port map(A => counter_c3, B => \counter[4]_net_1\, Y => 
        counter_n4);
    
    \bytecount[3]\ : DFN1E0C0
      port map(D => \bytecount_3[3]\, CLK => clk_c, CLR => D3_c_c, 
        E => \state_d[2]\, Q => \bytecount[3]_net_1\);
    
    \bytecount[28]\ : DFN1E0C0
      port map(D => \bytecount_3[28]\, CLK => clk_c, CLR => 
        D3_c_c, E => \state_d[2]\, Q => \bytecount[28]_net_1\);
    
    un1_bytecount_I_73 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[29]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[13]\, C => 
        \un1_bytecount.U1.DWACT_FINC_E[18]\, Y => 
        \un1_bytecount.N_9\);
    
    \state_0[0]\ : DFN1C0
      port map(D => \state_ns[0]\, CLK => clk_c, CLR => D3_c_c, Q
         => \state_0[0]_net_1\);
    
    \data_RNO_2[6]\ : AO1
      port map(A => \data_2_0_a13_2[6]\, B => N_210, C => N_189, 
        Y => \data_2_0_1[6]\);
    
    \counter_RNO[18]\ : AX1C
      port map(A => \counter[17]_net_1\, B => counter_c16, C => 
        \counter[18]_net_1\, Y => counter_n18);
    
    \bytecount_RNO[14]\ : NOR2B
      port map(A => \state_0[0]_net_1\, B => I_40_1, Y => 
        \bytecount_3[14]\);
    
    \bytecount_RNIHFMQ[4]\ : NOR2B
      port map(A => \bytecount[4]_net_1\, B => 
        \bytecount[3]_net_1\, Y => N_212);
    
    un1_bytecount_I_19 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[0]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[2]\, C => 
        \bytecount[6]_net_1\, Y => \un1_bytecount.N_26\);
    
    un1_bytecount_I_31 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[6]\, B => 
        \bytecount[9]_net_1\, C => \bytecount[10]_net_1\, Y => 
        \un1_bytecount.N_22\);
    
    un1_bytecount_I_26 : XOR2
      port map(A => \un1_bytecount.N_24\, B => 
        \bytecount[9]_net_1\, Y => I_26_1);
    
    \data_RNO_21[6]\ : MX2A
      port map(A => \bytecount[5]_net_1\, B => 
        \bytecount[3]_net_1\, S => \bytecount[1]_net_1\, Y => 
        N_159);
    
    \bytecount_RNIFDMQ[4]\ : NOR2B
      port map(A => \bytecount[4]_net_1\, B => 
        \bytecount[1]_net_1\, Y => N_217);
    
    un5_bytecount_17 : NOR2
      port map(A => I_37_1, B => I_35_1, Y => \un5_bytecount_17\);
    
    un1_bytecount_I_38 : AND2
      port map(A => \bytecount[12]_net_1\, B => 
        \bytecount[13]_net_1\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[8]\);
    
    \data_RNO_0[7]\ : OR3
      port map(A => \data_2_0_2[7]\, B => N_194, C => 
        \data_2_0_5[7]\, Y => \data_2_0_8[7]\);
    
    \bytecount[14]\ : DFN1E0C0
      port map(D => \bytecount_3[14]\, CLK => clk_c, CLR => 
        D3_c_c, E => \state_d_0[2]\, Q => \bytecount[14]_net_1\);
    
    un5_bytecount_20 : NOR3A
      port map(A => \un5_bytecount_13\, B => I_62_1, C => I_65_1, 
        Y => \un5_bytecount_20\);
    
    \bytecount_RNO[9]\ : NOR2B
      port map(A => \state[0]_net_1\, B => I_26_1, Y => 
        \bytecount_3[9]\);
    
    \bytecount_RNIFDMQ[3]\ : NOR2B
      port map(A => \bytecount[3]_net_1\, B => 
        \bytecount[2]_net_1\, Y => N_220);
    
    un1_bytecount_I_96 : AND2
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[26]\, B => 
        \bytecount[30]_net_1\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[27]\);
    
    \bytecount_RNO[26]\ : NOR2B
      port map(A => \state[0]_net_1\, B => I_82_1, Y => 
        \bytecount_3[26]\);
    
    un1_bytecount_I_60 : AND3
      port map(A => \bytecount[18]_net_1\, B => 
        \bytecount[19]_net_1\, C => \bytecount[20]_net_1\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[15]\);
    
    \data_RNO_4[2]\ : MX2
      port map(A => \bytecount[2]_net_1\, B => 
        \bytecount[0]_net_1\, S => \bytecount[1]_net_1\, Y => 
        N_161);
    
    un1_bytecount_I_82 : XOR2
      port map(A => \un1_bytecount.N_7\, B => 
        \bytecount[26]_net_1\, Y => I_82_1);
    
    \data_RNO_3[6]\ : NOR3A
      port map(A => N_210, B => N_133, C => \bytecount[6]_net_1\, 
        Y => N_185);
    
    \bytecount_RNO[23]\ : NOR2B
      port map(A => \state_0[0]_net_1\, B => I_70_1, Y => 
        \bytecount_3[23]\);
    
    \data_RNO_18[6]\ : OA1B
      port map(A => \bytecount[1]_net_1\, B => 
        \bytecount[4]_net_1\, C => N_137, Y => 
        \data_2_0_a13_1_1[6]\);
    
    \bytecount_RNIB9MQ[0]\ : OR2
      port map(A => \bytecount[0]_net_1\, B => 
        \bytecount[1]_net_1\, Y => N_133);
    
    un5_bytecount_27 : NOR3C
      port map(A => \un5_bytecount_19\, B => \un5_bytecount_18\, 
        C => \un5_bytecount_22\, Y => \un5_bytecount_27\);
    
    un1_bytecount_I_84 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[15]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[17]\, C => 
        \un1_bytecount.U1.DWACT_FINC_E[22]\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[23]\);
    
    \bytecount_RNO[27]\ : NOR2B
      port map(A => \state[0]_net_1\, B => I_86_1, Y => 
        \bytecount_3[27]\);
    
    \data_RNO_3[7]\ : NOR3B
      port map(A => N_133, B => N_222, C => N_142, Y => N_194);
    
    \state[1]\ : DFN1P0
      port map(D => \state_RNO[1]_net_1\, CLK => clk_c, PRE => 
        D3_c_c, Q => \state_i_0[1]\);
    
    \counter[7]\ : DFN1C0
      port map(D => counter_n7, CLK => clk_c, CLR => D3_c_c, Q
         => \counter[7]_net_1\);
    
    \bytecount_RNO[2]\ : NOR2B
      port map(A => \state[0]_net_1\, B => I_7_1, Y => 
        \bytecount_3[2]\);
    
    \bytecount[29]\ : DFN1E0C0
      port map(D => \bytecount_3[29]\, CLK => clk_c, CLR => 
        D3_c_c, E => \state_d[2]\, Q => \bytecount[29]_net_1\);
    
    \bytecount_RNO[25]\ : NOR2B
      port map(A => \state_0[0]_net_1\, B => I_77_1, Y => 
        \bytecount_3[25]\);
    
    \data_RNO_9[7]\ : NOR2B
      port map(A => \data_2_0_a13_9_1[7]\, B => N_229, Y => N_200);
    
    un1_bytecount_I_66 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[15]\, B => 
        \bytecount[21]_net_1\, C => \bytecount[22]_net_1\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[33]\);
    
    \bytecount_RNIGEMQ[4]\ : NOR2B
      port map(A => \bytecount[4]_net_1\, B => 
        \bytecount[2]_net_1\, Y => N_201_1);
    
    \data_RNO_0[2]\ : OA1
      port map(A => N_136, B => N_142, C => \data_3_1[2]\, Y => 
        \data_3_3[2]\);
    
    un1_bytecount_I_50 : AND3
      port map(A => \bytecount[15]_net_1\, B => 
        \bytecount[16]_net_1\, C => \bytecount[17]_net_1\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[12]\);
    
    \counter_RNO[0]\ : INV
      port map(A => \counter[0]_net_1\, Y => \counter_i[0]\);
    
    \bytecount[10]\ : DFN1E0C0
      port map(D => \bytecount_3[10]\, CLK => clk_c, CLR => 
        D3_c_c, E => \state_d_0[2]\, Q => \bytecount[10]_net_1\);
    
    \bytecount_RNO[1]\ : NOR2B
      port map(A => \state[0]_net_1\, B => I_5_1, Y => 
        \bytecount_3[1]\);
    
    \bytecount_RNO[11]\ : NOR2B
      port map(A => \state_0[0]_net_1\, B => I_32_1, Y => 
        \bytecount_3[11]\);
    
    un5_bytecount_15 : NOR2
      port map(A => I_49_1, B => I_46_1, Y => \un5_bytecount_15\);
    
    \bytecount_RNIDBMQ_0[0]\ : OR2
      port map(A => \bytecount[0]_net_1\, B => 
        \bytecount[3]_net_1\, Y => N_137);
    
    \bytecount_RNO[8]\ : NOR2B
      port map(A => \state[0]_net_1\, B => I_23_1, Y => 
        \bytecount_3[8]\);
    
    \bytecount_RNIECMQ[1]\ : NOR2A
      port map(A => \bytecount[1]_net_1\, B => 
        \bytecount[3]_net_1\, Y => N_229);
    
    un1_bytecount_I_41 : AND3
      port map(A => \bytecount[12]_net_1\, B => 
        \bytecount[13]_net_1\, C => \bytecount[14]_net_1\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[9]\);
    
    \bytecount_RNO[19]\ : NOR2B
      port map(A => \state_0[0]_net_1\, B => I_56_1, Y => 
        \bytecount_3[19]\);
    
    un1_bytecount_I_7 : XOR2
      port map(A => \un1_bytecount.N_31\, B => 
        \bytecount[2]_net_1\, Y => I_7_1);
    
    \data_RNO_0[5]\ : NOR3B
      port map(A => N_212, B => N_134, C => N_135, Y => N_175);
    
    un1_bytecount_I_48 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[6]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[10]\, C => 
        \un1_bytecount.U1.DWACT_FINC_E[11]\, Y => 
        \un1_bytecount.N_16\);
    
    \bytecount_RNICAMQ[0]\ : XOR2
      port map(A => \bytecount[2]_net_1\, B => 
        \bytecount[0]_net_1\, Y => N_138_i);
    
    un1_bytecount_I_25 : NOR2B
      port map(A => \bytecount[8]_net_1\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[4]\, Y => 
        \un1_bytecount.N_24\);
    
    \counter_RNI6R5D[3]\ : NOR2B
      port map(A => counter_c2, B => \counter[3]_net_1\, Y => 
        counter_c3);
    
    un5_bytecount_25 : NOR2
      port map(A => I_95_1, B => I_92_1, Y => \un5_bytecount_25\);
    
    un1_bytecount_I_71 : AND3
      port map(A => \bytecount[21]_net_1\, B => 
        \bytecount[22]_net_1\, C => \bytecount[23]_net_1\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[17]\);
    
    \counter_RNO[20]\ : AX1C
      port map(A => \counter[19]_net_1\, B => counter_c18, C => 
        \counter[20]_net_1\, Y => counter_n20);
    
    un1_bytecount_I_56 : XOR2
      port map(A => \un1_bytecount.N_14\, B => 
        \bytecount[19]_net_1\, Y => I_56_1);
    
    \data_RNO_3[2]\ : NOR3A
      port map(A => \state_i_0[1]\, B => \bytecount[4]_net_1\, C
         => N_168, Y => \data_3_1[2]\);
    
    un1_bytecount_I_78 : AND2
      port map(A => \bytecount[24]_net_1\, B => 
        \bytecount[25]_net_1\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[20]\);
    
    \bytecount_RNO[20]\ : NOR2B
      port map(A => \state_0[0]_net_1\, B => I_59_1, Y => 
        \bytecount_3[20]\);
    
    push_RNO : INV
      port map(A => \state_d[2]\, Y => \state_d_i[2]\);
    
    \bytecount[7]\ : DFN1E0C0
      port map(D => \bytecount_3[7]\, CLK => clk_c, CLR => D3_c_c, 
        E => \state_d[2]\, Q => \bytecount[7]_net_1\);
    
    un1_bytecount_I_95 : XOR2
      port map(A => \un1_bytecount.N_3\, B => 
        \bytecount[30]_net_1\, Y => I_95_1);
    
    un1_bytecount_I_27 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[4]\, B => 
        \bytecount[8]_net_1\, C => \bytecount[9]_net_1\, Y => 
        \un1_bytecount.N_23\);
    
    \bytecount_RNIQBG2O[0]\ : NOR3A
      port map(A => un5_bytecount_6, B => I_26_1, C => I_53_1, Y
         => un5_bytecount_14);
    
    \data_RNO_14[6]\ : NOR3B
      port map(A => N_212, B => N_133, C => N_135, Y => N_183);
    
    un1_bytecount_I_23 : XOR2
      port map(A => \un1_bytecount.N_25\, B => 
        \bytecount[8]_net_1\, Y => I_23_1);
    
    \bytecount_RNO[4]\ : NOR2B
      port map(A => \state[0]_net_1\, B => I_12_1, Y => 
        \bytecount_3[4]\);
    
    \bytecount_RNIE1EJD1[0]\ : NOR3B
      port map(A => \un5_bytecount_15\, B => un5_bytecount_14, C
         => I_89_1, Y => un5_bytecount_26);
    
    \bytecount[15]\ : DFN1E0C0
      port map(D => \bytecount_3[15]\, CLK => clk_c, CLR => 
        D3_c_c, E => \state_d_0[2]\, Q => \bytecount[15]_net_1\);
    
    un1_bytecount_I_97 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[24]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[23]\, C => 
        \un1_bytecount.U1.DWACT_FINC_E[27]\, Y => 
        \un1_bytecount.N_2\);
    
    \data_RNO_14[7]\ : NOR2B
      port map(A => \bytecount[0]_net_1\, B => N_213, Y => 
        \data_2_0_a13_8_0[7]\);
    
    \bytecount[13]\ : DFN1E0C0
      port map(D => \bytecount_3[13]\, CLK => clk_c, CLR => 
        D3_c_c, E => \state_d_0[2]\, Q => \bytecount[13]_net_1\);
    
    \counter_RNIT7J6[6]\ : NOR2B
      port map(A => \counter[6]_net_1\, B => \counter[7]_net_1\, 
        Y => counter_c12_m6_0_a2_2);
    
    un1_bytecount_I_10 : AND3
      port map(A => \bytecount[0]_net_1\, B => 
        \bytecount[1]_net_1\, C => \bytecount[2]_net_1\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[0]\);
    
    \counter_RNO[2]\ : AX1C
      port map(A => \counter[1]_net_1\, B => \counter[0]_net_1\, 
        C => \counter[2]_net_1\, Y => counter_n2);
    
    \counter[9]\ : DFN1C0
      port map(D => counter_n9, CLK => clk_c, CLR => D3_c_c, Q
         => \counter[9]_net_1\);
    
    un1_bytecount_I_93 : AND3
      port map(A => \bytecount[27]_net_1\, B => 
        \bytecount[28]_net_1\, C => \bytecount[29]_net_1\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[26]\);
    
    un1_bytecount_I_89 : XOR2
      port map(A => \un1_bytecount.N_5\, B => 
        \bytecount[28]_net_1\, Y => I_89_1);
    
    \counter_RNIFIMC1[10]\ : NOR3C
      port map(A => \counter[9]_net_1\, B => \counter[10]_net_1\, 
        C => counter_c12_m6_0_a2_4, Y => counter_c12_m6_0_a2_6);
    
    \bytecount[8]\ : DFN1E0C0
      port map(D => \bytecount_3[8]\, CLK => clk_c, CLR => D3_c_c, 
        E => \state_d[2]\, Q => \bytecount[8]_net_1\);
    
    \bytecount_RNIJE3G2[6]\ : NOR3C
      port map(A => N_213, B => \data_2_0_a2_0[5]\, C => N_210, Y
         => N_206);
    
    \data_RNO_13[7]\ : NOR3B
      port map(A => N_212, B => N_150_i, C => 
        \bytecount[1]_net_1\, Y => N_191);
    
    \counter_RNIU4OC5[20]\ : NOR3C
      port map(A => \counter[19]_net_1\, B => counter_c18, C => 
        \counter[20]_net_1\, Y => counter_c20);
    
    \counter_RNO[19]\ : XOR2
      port map(A => counter_c18, B => \counter[19]_net_1\, Y => 
        counter_n19);
    
    un1_bytecount_I_32 : XOR2
      port map(A => \un1_bytecount.N_22\, B => 
        \bytecount[11]_net_1\, Y => I_32_1);
    
    \counter_RNIRAS9[2]\ : NOR3C
      port map(A => \counter[1]_net_1\, B => \counter[0]_net_1\, 
        C => \counter[2]_net_1\, Y => counter_c2);
    
    \counter_RNO[9]\ : XOR2
      port map(A => counter_c8, B => \counter[9]_net_1\, Y => 
        counter_n9);
    
    un1_bytecount_I_65 : XOR2
      port map(A => \un1_bytecount.N_11\, B => 
        \bytecount[22]_net_1\, Y => I_65_1);
    
    un1_bytecount_I_34 : NOR2B
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[7]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[6]\, Y => 
        \un1_bytecount.N_21\);
    
    \counter[8]\ : DFN1C0
      port map(D => counter_n8, CLK => clk_c, CLR => D3_c_c, Q
         => \counter[8]_net_1\);
    
    \bytecount[5]\ : DFN1E0C0
      port map(D => \bytecount_3[5]\, CLK => clk_c, CLR => D3_c_c, 
        E => \state_d[2]\, Q => \bytecount[5]_net_1\);
    
    un1_bytecount_I_67 : AND3
      port map(A => \bytecount[0]_net_1\, B => 
        \bytecount[1]_net_1\, C => \bytecount[2]_net_1\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[34]\);
    
    \counter[18]\ : DFN1C0
      port map(D => counter_n18, CLK => clk_c, CLR => D3_c_c, Q
         => \counter[18]_net_1\);
    
    \bytecount_RNO[7]\ : NOR2B
      port map(A => \state[0]_net_1\, B => I_20_1, Y => 
        \bytecount_3[7]\);
    
    un1_bytecount_I_16 : AND3
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[0]\, B => 
        \un1_bytecount.U1.DWACT_FINC_E[1]\, C => 
        \bytecount[5]_net_1\, Y => \un1_bytecount.N_27\);
    
    \data_RNO_19[6]\ : NOR2A
      port map(A => \bytecount[2]_net_1\, B => N_217, Y => 
        \data_2_0_a13_1_0[6]\);
    
    \bytecount[1]\ : DFN1E0C0
      port map(D => \bytecount_3[1]\, CLK => clk_c, CLR => D3_c_c, 
        E => \state_d[2]\, Q => \bytecount[1]_net_1\);
    
    un1_bytecount_I_63 : AND2
      port map(A => \un1_bytecount.U1.DWACT_FINC_E[15]\, B => 
        \bytecount[21]_net_1\, Y => 
        \un1_bytecount.U1.DWACT_FINC_E[16]\);
    
    \counter_RNIMULD1[10]\ : NOR3C
      port map(A => \counter[9]_net_1\, B => counter_c8, C => 
        \counter[10]_net_1\, Y => counter_c10);
    
    \counter_RNO[16]\ : AX1C
      port map(A => \counter[15]_net_1\, B => counter_c14, C => 
        \counter[16]_net_1\, Y => counter_n16);
    
    \counter[0]\ : DFN1C0
      port map(D => \counter_i[0]\, CLK => clk_c, CLR => D3_c_c, 
        Q => \counter[0]_net_1\);
    
    \bytecount_RNIPM181[4]\ : NOR2A
      port map(A => N_211, B => \bytecount[4]_net_1\, Y => N_221);
    
    scl_pad : OUTBUF
      port map(D => scl_c, PAD => scl);
    
    \data_RNO_3[5]\ : NOR3C
      port map(A => N_220, B => \bytecount[5]_net_1\, C => N_228, 
        Y => N_176);
    
    \counter_RNI1RSP3[16]\ : NOR3C
      port map(A => \counter[15]_net_1\, B => counter_c14, C => 
        \counter[16]_net_1\, Y => counter_c16);
    
    \bytecount_RNO[0]\ : NOR2A
      port map(A => \state[0]_net_1\, B => \bytecount[0]_net_1\, 
        Y => \bytecount_3[0]\);
    
    \bytecount[16]\ : DFN1E0C0
      port map(D => \bytecount_3[16]\, CLK => clk_c, CLR => 
        D3_c_c, E => \state_d_0[2]\, Q => \bytecount[16]_net_1\);
    
    \data[3]\ : DFN1C0
      port map(D => \data_3[3]\, CLK => clk_c, CLR => D3_c_c, Q
         => \data[3]_net_1\);
    

end DEF_ARCH; 
