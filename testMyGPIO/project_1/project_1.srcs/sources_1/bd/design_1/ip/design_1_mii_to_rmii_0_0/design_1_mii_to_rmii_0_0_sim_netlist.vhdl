-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue Apr 18 13:38:08 2023
-- Host        : MSI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_mii_to_rmii_0_0 -prefix
--               design_1_mii_to_rmii_0_0_ design_1_mii_to_rmii_0_0_sim_netlist.vhdl
-- Design      : design_1_mii_to_rmii_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mii_to_rmii_0_0_SRL_FIFO is
  port (
    Data_Exists_DFF_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \FSM_sequential_present_state_reg[3]\ : out STD_LOGIC;
    \Addr_Counters[3].FDRE_I_0\ : in STD_LOGIC;
    ref_clk : in STD_LOGIC;
    rx_end_of_packet : in STD_LOGIC;
    rx_error : in STD_LOGIC;
    rx_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_fifo_wr_en : in STD_LOGIC;
    rx_fifo_rd_en : in STD_LOGIC;
    \Addr_Counters[0].FDRE_I_0\ : in STD_LOGIC;
    \Addr_Counters[0].FDRE_I_1\ : in STD_LOGIC;
    Data_Exists_DFF_1 : in STD_LOGIC;
    Data_Exists_DFF_2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_sequential_present_state_reg[0]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end design_1_mii_to_rmii_0_0_SRL_FIFO;

architecture STRUCTURE of design_1_mii_to_rmii_0_0_SRL_FIFO is
  signal \Addr_Counters[0].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[0].MUXCY_L_I_i_5_n_0\ : STD_LOGIC;
  signal \Addr_Counters[1].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[2].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].XORCY_I_i_1_n_0\ : STD_LOGIC;
  signal CI : STD_LOGIC;
  signal D_0 : STD_LOGIC;
  signal \^data_exists_dff_0\ : STD_LOGIC;
  signal Data_Exists_DFF_i_2_n_0 : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S0_out : STD_LOGIC;
  signal S1_out : STD_LOGIC;
  signal addr_cy_1 : STD_LOGIC;
  signal addr_cy_2 : STD_LOGIC;
  signal addr_cy_3 : STD_LOGIC;
  signal sum_A_0 : STD_LOGIC;
  signal sum_A_1 : STD_LOGIC;
  signal sum_A_2 : STD_LOGIC;
  signal sum_A_3 : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "MLO ";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "LO:O";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Addr_Counters[0].MUXCY_L_I_i_5\ : label is "soft_lutpair0";
  attribute BOX_TYPE of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of Data_Exists_DFF : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute SOFT_HLUTNM of Data_Exists_DFF_i_2 : label is "soft_lutpair0";
  attribute BOX_TYPE of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM[0].SRL16E_I ";
  attribute BOX_TYPE of \FIFO_RAM[10].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[10].SRL16E_I\ : label is "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[10].SRL16E_I\ : label is "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM[10].SRL16E_I ";
  attribute BOX_TYPE of \FIFO_RAM[12].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[12].SRL16E_I\ : label is "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[12].SRL16E_I\ : label is "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM[12].SRL16E_I ";
  attribute BOX_TYPE of \FIFO_RAM[13].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[13].SRL16E_I\ : label is "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[13].SRL16E_I\ : label is "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM[13].SRL16E_I ";
  attribute BOX_TYPE of \FIFO_RAM[14].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[14].SRL16E_I\ : label is "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[14].SRL16E_I\ : label is "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM[14].SRL16E_I ";
  attribute BOX_TYPE of \FIFO_RAM[15].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[15].SRL16E_I\ : label is "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[15].SRL16E_I\ : label is "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM[15].SRL16E_I ";
  attribute BOX_TYPE of \FIFO_RAM[2].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[2].SRL16E_I\ : label is "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[2].SRL16E_I\ : label is "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM[2].SRL16E_I ";
  attribute BOX_TYPE of \FIFO_RAM[4].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[4].SRL16E_I\ : label is "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[4].SRL16E_I\ : label is "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM[4].SRL16E_I ";
  attribute BOX_TYPE of \FIFO_RAM[5].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[5].SRL16E_I\ : label is "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[5].SRL16E_I\ : label is "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM[5].SRL16E_I ";
  attribute BOX_TYPE of \FIFO_RAM[6].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[6].SRL16E_I\ : label is "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[6].SRL16E_I\ : label is "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM[6].SRL16E_I ";
  attribute BOX_TYPE of \FIFO_RAM[7].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[7].SRL16E_I\ : label is "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[7].SRL16E_I\ : label is "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM[7].SRL16E_I ";
  attribute BOX_TYPE of \FIFO_RAM[8].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[8].SRL16E_I\ : label is "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[8].SRL16E_I\ : label is "U0/\RMII_AGILE.I_RX/I_RX_FIFO/I_SRL_FIFO/FIFO_RAM[8].SRL16E_I ";
begin
  Data_Exists_DFF_0 <= \^data_exists_dff_0\;
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => ref_clk,
      CE => \^data_exists_dff_0\,
      D => sum_A_3,
      Q => \Addr_Counters[0].FDRE_I_n_0\,
      R => \Addr_Counters[3].FDRE_I_0\
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => addr_cy_1,
      CO(1) => addr_cy_2,
      CO(0) => addr_cy_3,
      CYINIT => CI,
      DI(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \Addr_Counters[2].FDRE_I_n_0\,
      DI(1) => \Addr_Counters[1].FDRE_I_n_0\,
      DI(0) => \Addr_Counters[0].FDRE_I_n_0\,
      O(3) => sum_A_0,
      O(2) => sum_A_1,
      O(1) => sum_A_2,
      O(0) => sum_A_3,
      S(3) => \Addr_Counters[3].XORCY_I_i_1_n_0\,
      S(2) => S0_out,
      S(1) => S1_out,
      S(0) => S
    );
\Addr_Counters[0].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => rx_fifo_wr_en,
      I1 => \Addr_Counters[2].FDRE_I_n_0\,
      I2 => \Addr_Counters[3].FDRE_I_n_0\,
      I3 => \Addr_Counters[1].FDRE_I_n_0\,
      I4 => rx_fifo_rd_en,
      I5 => \Addr_Counters[0].FDRE_I_n_0\,
      O => S
    );
\Addr_Counters[0].MUXCY_L_I_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7700F700"
    )
        port map (
      I0 => \Addr_Counters[3].FDRE_I_n_0\,
      I1 => \Addr_Counters[0].FDRE_I_n_0\,
      I2 => \Addr_Counters[0].FDRE_I_0\,
      I3 => rx_fifo_wr_en,
      I4 => \Addr_Counters[0].FDRE_I_1\,
      I5 => \Addr_Counters[0].MUXCY_L_I_i_5_n_0\,
      O => CI
    );
\Addr_Counters[0].MUXCY_L_I_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \Addr_Counters[2].FDRE_I_n_0\,
      I1 => \Addr_Counters[1].FDRE_I_n_0\,
      I2 => rx_fifo_wr_en,
      O => \Addr_Counters[0].MUXCY_L_I_i_5_n_0\
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => ref_clk,
      CE => \^data_exists_dff_0\,
      D => sum_A_2,
      Q => \Addr_Counters[1].FDRE_I_n_0\,
      R => \Addr_Counters[3].FDRE_I_0\
    );
\Addr_Counters[1].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => rx_fifo_wr_en,
      I1 => \Addr_Counters[2].FDRE_I_n_0\,
      I2 => \Addr_Counters[3].FDRE_I_n_0\,
      I3 => \Addr_Counters[0].FDRE_I_n_0\,
      I4 => rx_fifo_rd_en,
      I5 => \Addr_Counters[1].FDRE_I_n_0\,
      O => S1_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => ref_clk,
      CE => \^data_exists_dff_0\,
      D => sum_A_1,
      Q => \Addr_Counters[2].FDRE_I_n_0\,
      R => \Addr_Counters[3].FDRE_I_0\
    );
\Addr_Counters[2].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => rx_fifo_wr_en,
      I1 => \Addr_Counters[3].FDRE_I_n_0\,
      I2 => \Addr_Counters[0].FDRE_I_n_0\,
      I3 => \Addr_Counters[1].FDRE_I_n_0\,
      I4 => rx_fifo_rd_en,
      I5 => \Addr_Counters[2].FDRE_I_n_0\,
      O => S0_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => ref_clk,
      CE => \^data_exists_dff_0\,
      D => sum_A_0,
      Q => \Addr_Counters[3].FDRE_I_n_0\,
      R => \Addr_Counters[3].FDRE_I_0\
    );
\Addr_Counters[3].XORCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => rx_fifo_wr_en,
      I1 => \Addr_Counters[2].FDRE_I_n_0\,
      I2 => \Addr_Counters[0].FDRE_I_n_0\,
      I3 => \Addr_Counters[1].FDRE_I_n_0\,
      I4 => rx_fifo_rd_en,
      I5 => \Addr_Counters[3].FDRE_I_n_0\,
      O => \Addr_Counters[3].XORCY_I_i_1_n_0\
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => D_0,
      Q => \^data_exists_dff_0\,
      R => \Addr_Counters[3].FDRE_I_0\
    );
Data_Exists_DFF_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFB8"
    )
        port map (
      I0 => \^data_exists_dff_0\,
      I1 => Data_Exists_DFF_i_2_n_0,
      I2 => rx_fifo_wr_en,
      I3 => Data_Exists_DFF_1,
      I4 => Data_Exists_DFF_2,
      O => D_0
    );
Data_Exists_DFF_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Addr_Counters[2].FDRE_I_n_0\,
      I1 => \Addr_Counters[3].FDRE_I_n_0\,
      I2 => \Addr_Counters[0].FDRE_I_n_0\,
      I3 => \Addr_Counters[1].FDRE_I_n_0\,
      O => Data_Exists_DFF_i_2_n_0
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => ref_clk,
      D => rx_end_of_packet,
      Q => D(11)
    );
\FIFO_RAM[10].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => ref_clk,
      D => rx_error,
      Q => D(4)
    );
\FIFO_RAM[12].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => ref_clk,
      D => rx_data(3),
      Q => D(3)
    );
\FIFO_RAM[13].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => ref_clk,
      D => rx_data(2),
      Q => D(2)
    );
\FIFO_RAM[14].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => ref_clk,
      D => rx_data(1),
      Q => D(1)
    );
\FIFO_RAM[15].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => ref_clk,
      D => rx_data(0),
      Q => D(0)
    );
\FIFO_RAM[2].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => ref_clk,
      D => rx_error,
      Q => D(10)
    );
\FIFO_RAM[4].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => ref_clk,
      D => rx_data(7),
      Q => D(9)
    );
\FIFO_RAM[5].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => ref_clk,
      D => rx_data(6),
      Q => D(8)
    );
\FIFO_RAM[6].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => ref_clk,
      D => rx_data(5),
      Q => D(7)
    );
\FIFO_RAM[7].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => ref_clk,
      D => rx_data(4),
      Q => D(6)
    );
\FIFO_RAM[8].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => ref_clk,
      D => rx_end_of_packet,
      Q => D(5)
    );
\FSM_sequential_present_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => \^data_exists_dff_0\,
      I3 => \FSM_sequential_present_state_reg[0]\(1),
      I4 => \FSM_sequential_present_state_reg[0]\(0),
      O => \FSM_sequential_present_state_reg[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mii_to_rmii_0_0_rmii_tx_agile is
  port (
    Rmii2Phy_tx_en : out STD_LOGIC;
    \Rmii2Phy_txd_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rmii2Mac_tx_clk_i : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    mac2Rmii_tx_er_d2 : in STD_LOGIC;
    ref_clk : in STD_LOGIC;
    mac2Rmii_tx_en_d2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end design_1_mii_to_rmii_0_0_rmii_tx_agile;

architecture STRUCTURE of design_1_mii_to_rmii_0_0_rmii_tx_agile is
  signal \FSM_onehot_present_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[11]\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[12]\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[13]\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[14]\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[15]\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[16]\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[17]\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[18]\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[19]\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[20]\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[21]\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[22]\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[23]\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_present_state_reg_n_0_[9]\ : STD_LOGIC;
  signal \Rmii2Phy_txd[0]_i_1_n_0\ : STD_LOGIC;
  signal \Rmii2Phy_txd[1]_i_1_n_0\ : STD_LOGIC;
  signal \Rmii2Phy_txd[1]_i_2_n_0\ : STD_LOGIC;
  signal \Rmii2Phy_txd[1]_i_3_n_0\ : STD_LOGIC;
  signal \Rmii2Phy_txd[1]_i_4_n_0\ : STD_LOGIC;
  signal mac2Rmii_tx_en_d : STD_LOGIC;
  signal mac2Rmii_tx_er_d : STD_LOGIC;
  signal \mac2Rmii_txd_d_reg_n_0_[0]\ : STD_LOGIC;
  signal \mac2Rmii_txd_d_reg_n_0_[1]\ : STD_LOGIC;
  signal \mac2Rmii_txd_d_reg_n_0_[3]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal rmii2mac_tx_clk_bi_i_3_n_0 : STD_LOGIC;
  signal rmii2mac_tx_clk_bi_i_4_n_0 : STD_LOGIC;
  signal tx_in_reg_en : STD_LOGIC;
  signal txd_error : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_present_state[4]_i_1\ : label is "soft_lutpair17";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[0]\ : label is "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[10]\ : label is "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[11]\ : label is "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[12]\ : label is "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[13]\ : label is "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[14]\ : label is "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[15]\ : label is "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[16]\ : label is "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[17]\ : label is "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[18]\ : label is "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[19]\ : label is "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[1]\ : label is "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[20]\ : label is "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[21]\ : label is "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[22]\ : label is "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[23]\ : label is "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[2]\ : label is "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[3]\ : label is "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[4]\ : label is "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[5]\ : label is "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[6]\ : label is "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[7]\ : label is "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[8]\ : label is "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_present_state_reg[9]\ : label is "tx10_dibit_1_clk_h0:000000000100000000000000,tx10_dibit_0_clk_l9:000000000010000000000000,tx10_dibit_0_clk_l8:000000000001000000000000,tx10_dibit_1_clk_h5:000010000000000000000000,tx10_dibit_1_clk_h4:000001000000000000000000,tx100_dibit_1_clk_h:000000000000000000001000,tx10_dibit_1_clk_h3:000000100000000000000000,tx100_dibit_0_clk_l:000000000000000000000100,tx10_dibit_1_clk_h2:000000010000000000000000,idle_clk_h:000000000000000000000010,tx10_dibit_1_clk_h9:100000000000000000000000,tx10_dibit_1_clk_h8:010000000000000000000000,tx10_dibit_0_clk_l7:000000000000100000000000,idle_clk_l:000000000000000000000001,tx10_dibit_0_clk_l6:000000000000010000000000,tx10_dibit_0_clk_l3:000000000000000010000000,tx10_dibit_1_clk_h7:001000000000000000000000,tx10_dibit_0_clk_l2:000000000000000001000000,tx10_dibit_1_clk_h6:000100000000000000000000,tx10_dibit_0_clk_l5:000000000000001000000000,tx10_dibit_0_clk_l4:000000000000000100000000,tx10_dibit_0_clk_l1:000000000000000000100000,tx10_dibit_1_clk_h1:000000001000000000000000,tx10_dibit_0_clk_l0:000000000000000000010000";
  attribute SOFT_HLUTNM of rmii2mac_tx_clk_bi_i_3 : label is "soft_lutpair17";
begin
\FSM_onehot_present_state[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_present_state_reg_n_0_[1]\,
      I1 => \FSM_onehot_present_state_reg_n_0_[23]\,
      O => \FSM_onehot_present_state[4]_i_1_n_0\
    );
\FSM_onehot_present_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => '0',
      Q => \FSM_onehot_present_state_reg_n_0_[0]\,
      S => SR(0)
    );
\FSM_onehot_present_state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \FSM_onehot_present_state_reg_n_0_[9]\,
      Q => \FSM_onehot_present_state_reg_n_0_[10]\,
      R => SR(0)
    );
\FSM_onehot_present_state_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \FSM_onehot_present_state_reg_n_0_[10]\,
      Q => \FSM_onehot_present_state_reg_n_0_[11]\,
      R => SR(0)
    );
\FSM_onehot_present_state_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \FSM_onehot_present_state_reg_n_0_[11]\,
      Q => \FSM_onehot_present_state_reg_n_0_[12]\,
      R => SR(0)
    );
\FSM_onehot_present_state_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \FSM_onehot_present_state_reg_n_0_[12]\,
      Q => \FSM_onehot_present_state_reg_n_0_[13]\,
      R => SR(0)
    );
\FSM_onehot_present_state_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \FSM_onehot_present_state_reg_n_0_[13]\,
      Q => \FSM_onehot_present_state_reg_n_0_[14]\,
      R => SR(0)
    );
\FSM_onehot_present_state_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \FSM_onehot_present_state_reg_n_0_[14]\,
      Q => \FSM_onehot_present_state_reg_n_0_[15]\,
      R => SR(0)
    );
\FSM_onehot_present_state_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \FSM_onehot_present_state_reg_n_0_[15]\,
      Q => \FSM_onehot_present_state_reg_n_0_[16]\,
      R => SR(0)
    );
\FSM_onehot_present_state_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \FSM_onehot_present_state_reg_n_0_[16]\,
      Q => \FSM_onehot_present_state_reg_n_0_[17]\,
      R => SR(0)
    );
\FSM_onehot_present_state_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \FSM_onehot_present_state_reg_n_0_[17]\,
      Q => \FSM_onehot_present_state_reg_n_0_[18]\,
      R => SR(0)
    );
\FSM_onehot_present_state_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \FSM_onehot_present_state_reg_n_0_[18]\,
      Q => \FSM_onehot_present_state_reg_n_0_[19]\,
      R => SR(0)
    );
\FSM_onehot_present_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \FSM_onehot_present_state_reg_n_0_[0]\,
      Q => \FSM_onehot_present_state_reg_n_0_[1]\,
      R => SR(0)
    );
\FSM_onehot_present_state_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \FSM_onehot_present_state_reg_n_0_[19]\,
      Q => \FSM_onehot_present_state_reg_n_0_[20]\,
      R => SR(0)
    );
\FSM_onehot_present_state_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \FSM_onehot_present_state_reg_n_0_[20]\,
      Q => \FSM_onehot_present_state_reg_n_0_[21]\,
      R => SR(0)
    );
\FSM_onehot_present_state_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \FSM_onehot_present_state_reg_n_0_[21]\,
      Q => \FSM_onehot_present_state_reg_n_0_[22]\,
      R => SR(0)
    );
\FSM_onehot_present_state_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \FSM_onehot_present_state_reg_n_0_[22]\,
      Q => \FSM_onehot_present_state_reg_n_0_[23]\,
      R => SR(0)
    );
\FSM_onehot_present_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \FSM_onehot_present_state_reg_n_0_[3]\,
      Q => \FSM_onehot_present_state_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_onehot_present_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \FSM_onehot_present_state_reg_n_0_[2]\,
      Q => \FSM_onehot_present_state_reg_n_0_[3]\,
      R => SR(0)
    );
\FSM_onehot_present_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \FSM_onehot_present_state[4]_i_1_n_0\,
      Q => \FSM_onehot_present_state_reg_n_0_[4]\,
      R => SR(0)
    );
\FSM_onehot_present_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \FSM_onehot_present_state_reg_n_0_[4]\,
      Q => \FSM_onehot_present_state_reg_n_0_[5]\,
      R => SR(0)
    );
\FSM_onehot_present_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \FSM_onehot_present_state_reg_n_0_[5]\,
      Q => \FSM_onehot_present_state_reg_n_0_[6]\,
      R => SR(0)
    );
\FSM_onehot_present_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \FSM_onehot_present_state_reg_n_0_[6]\,
      Q => \FSM_onehot_present_state_reg_n_0_[7]\,
      R => SR(0)
    );
\FSM_onehot_present_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \FSM_onehot_present_state_reg_n_0_[7]\,
      Q => \FSM_onehot_present_state_reg_n_0_[8]\,
      R => SR(0)
    );
\FSM_onehot_present_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ref_clk,
      CE => '1',
      D => \FSM_onehot_present_state_reg_n_0_[8]\,
      Q => \FSM_onehot_present_state_reg_n_0_[9]\,
      R => SR(0)
    );
Rmii2Phy_tx_en_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => mac2Rmii_tx_en_d,
      Q => Rmii2Phy_tx_en,
      R => SR(0)
    );
\Rmii2Phy_txd[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554AAAB5557AAA8"
    )
        port map (
      I0 => p_0_in,
      I1 => \Rmii2Phy_txd[1]_i_2_n_0\,
      I2 => \Rmii2Phy_txd[1]_i_3_n_0\,
      I3 => \Rmii2Phy_txd[1]_i_4_n_0\,
      I4 => txd_error,
      I5 => \mac2Rmii_txd_d_reg_n_0_[0]\,
      O => \Rmii2Phy_txd[0]_i_1_n_0\
    );
\Rmii2Phy_txd[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAABAAA8"
    )
        port map (
      I0 => \mac2Rmii_txd_d_reg_n_0_[3]\,
      I1 => \Rmii2Phy_txd[1]_i_2_n_0\,
      I2 => \Rmii2Phy_txd[1]_i_3_n_0\,
      I3 => \Rmii2Phy_txd[1]_i_4_n_0\,
      I4 => \mac2Rmii_txd_d_reg_n_0_[1]\,
      I5 => txd_error,
      O => \Rmii2Phy_txd[1]_i_1_n_0\
    );
\Rmii2Phy_txd[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_present_state_reg_n_0_[12]\,
      I1 => \FSM_onehot_present_state_reg_n_0_[11]\,
      I2 => \FSM_onehot_present_state_reg_n_0_[13]\,
      O => \Rmii2Phy_txd[1]_i_2_n_0\
    );
\Rmii2Phy_txd[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_present_state_reg_n_0_[5]\,
      I1 => \FSM_onehot_present_state_reg_n_0_[6]\,
      I2 => \FSM_onehot_present_state_reg_n_0_[2]\,
      I3 => \FSM_onehot_present_state_reg_n_0_[4]\,
      O => \Rmii2Phy_txd[1]_i_3_n_0\
    );
\Rmii2Phy_txd[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_present_state_reg_n_0_[9]\,
      I1 => \FSM_onehot_present_state_reg_n_0_[10]\,
      I2 => \FSM_onehot_present_state_reg_n_0_[7]\,
      I3 => \FSM_onehot_present_state_reg_n_0_[8]\,
      O => \Rmii2Phy_txd[1]_i_4_n_0\
    );
\Rmii2Phy_txd[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => mac2Rmii_tx_er_d,
      I1 => \FSM_onehot_present_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_present_state_reg_n_0_[2]\,
      O => txd_error
    );
\Rmii2Phy_txd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \Rmii2Phy_txd[0]_i_1_n_0\,
      Q => \Rmii2Phy_txd_reg[1]_0\(0),
      R => SR(0)
    );
\Rmii2Phy_txd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \Rmii2Phy_txd[1]_i_1_n_0\,
      Q => \Rmii2Phy_txd_reg[1]_0\(1),
      R => SR(0)
    );
mac2Rmii_tx_en_d_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => tx_in_reg_en,
      D => mac2Rmii_tx_en_d2,
      Q => mac2Rmii_tx_en_d,
      R => SR(0)
    );
mac2Rmii_tx_er_d_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_present_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_present_state_reg_n_0_[0]\,
      I2 => \FSM_onehot_present_state_reg_n_0_[13]\,
      O => tx_in_reg_en
    );
mac2Rmii_tx_er_d_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => tx_in_reg_en,
      D => mac2Rmii_tx_er_d2,
      Q => mac2Rmii_tx_er_d,
      R => SR(0)
    );
\mac2Rmii_txd_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => tx_in_reg_en,
      D => Q(0),
      Q => \mac2Rmii_txd_d_reg_n_0_[0]\,
      R => SR(0)
    );
\mac2Rmii_txd_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => tx_in_reg_en,
      D => Q(1),
      Q => \mac2Rmii_txd_d_reg_n_0_[1]\,
      R => SR(0)
    );
\mac2Rmii_txd_d_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => tx_in_reg_en,
      D => Q(2),
      Q => p_0_in,
      R => SR(0)
    );
\mac2Rmii_txd_d_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => tx_in_reg_en,
      D => Q(3),
      Q => \mac2Rmii_txd_d_reg_n_0_[3]\,
      R => SR(0)
    );
rmii2mac_tx_clk_bi_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_present_state_reg_n_0_[21]\,
      I1 => \FSM_onehot_present_state_reg_n_0_[20]\,
      I2 => \FSM_onehot_present_state_reg_n_0_[22]\,
      I3 => \FSM_onehot_present_state_reg_n_0_[23]\,
      I4 => rmii2mac_tx_clk_bi_i_3_n_0,
      I5 => rmii2mac_tx_clk_bi_i_4_n_0,
      O => rmii2Mac_tx_clk_i
    );
rmii2mac_tx_clk_bi_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_present_state_reg_n_0_[14]\,
      I1 => \FSM_onehot_present_state_reg_n_0_[15]\,
      I2 => \FSM_onehot_present_state_reg_n_0_[1]\,
      I3 => \FSM_onehot_present_state_reg_n_0_[3]\,
      O => rmii2mac_tx_clk_bi_i_3_n_0
    );
rmii2mac_tx_clk_bi_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_present_state_reg_n_0_[18]\,
      I1 => \FSM_onehot_present_state_reg_n_0_[19]\,
      I2 => \FSM_onehot_present_state_reg_n_0_[16]\,
      I3 => \FSM_onehot_present_state_reg_n_0_[17]\,
      O => rmii2mac_tx_clk_bi_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mii_to_rmii_0_0_rx_fifo_disposer is
  port (
    rx_fifo_rd_en : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_sequential_present_state_reg[3]_0\ : out STD_LOGIC;
    rmii2Mac_rx_dv_i : out STD_LOGIC;
    rmii2Mac_rx_clk_i : out STD_LOGIC;
    \FSM_sequential_present_state_reg[2]_0\ : out STD_LOGIC;
    \FSM_sequential_present_state_reg[3]_1\ : out STD_LOGIC;
    \FSM_sequential_present_state_reg[0]_0\ : out STD_LOGIC;
    \FSM_sequential_present_state_reg[2]_1\ : out STD_LOGIC;
    \FSM_sequential_present_state_reg[4]_0\ : out STD_LOGIC;
    \FSM_sequential_present_state_reg[0]_1\ : in STD_LOGIC;
    rx_100 : in STD_LOGIC;
    rx_10 : in STD_LOGIC;
    \FSM_sequential_present_state_reg[1]_0\ : in STD_LOGIC;
    \FSM_sequential_present_state_reg[1]_1\ : in STD_LOGIC;
    \FSM_sequential_present_state_reg[0]_2\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rx_fifo_mt_n : in STD_LOGIC;
    \FSM_sequential_present_state_reg[5]_0\ : in STD_LOGIC;
    ref_clk : in STD_LOGIC
  );
end design_1_mii_to_rmii_0_0_rx_fifo_disposer;

architecture STRUCTURE of design_1_mii_to_rmii_0_0_rx_fifo_disposer is
  signal \FSM_sequential_present_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_present_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_present_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_present_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_present_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_present_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_present_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_present_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_present_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_present_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_present_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_present_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_present_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_present_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_present_state[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_present_state[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_present_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_present_state[3]_i_7_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal next_state : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal present_state : STD_LOGIC_VECTOR ( 4 to 4 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Addr_Counters[0].MUXCY_L_I_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Addr_Counters[0].MUXCY_L_I_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of Data_Exists_DFF_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_present_state[0]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_present_state[1]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_present_state[1]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_present_state[1]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_present_state[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_present_state[2]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_present_state[2]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_present_state[2]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_present_state[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_present_state[3]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_present_state[3]_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_present_state[3]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_present_state[3]_i_7\ : label is "soft_lutpair5";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_present_state_reg[0]\ : label is "rx_100_rd_fifo_clk_l:000001,idle_clk_h:000111,idle_clk_l:000000,rx_10_nib_0_08_clk_h:011011,rx_10_nib_1_06_clk_l:100011,rx_10_nib_0_04_clk_h:010111,rx_10_nib_0_07_clk_h:011010,rx_10_nib_1_05_clk_l:100010,rx_10_nib_0_03_clk_h:010110,rx_10_nib_0_06_clk_h:011001,rx_10_nib_1_04_clk_l:100001,rx_10_nib_0_02_clk_h:010101,rx_10_nib_0_05_clk_h:011000,rx_10_nib_0_06_clk_l:001111,rx_10_nib_1_03_clk_l:100000,rx_10_nib_0_01_clk_h:010100,rx_10_nib_0_05_clk_l:001110,rx_10_nib_0_04_clk_l:001101,rx_10_nib_0_03_clk_l:001100,rx_10_nib_1_08_clk_h:101111,rx_10_nib_1_07_clk_h:101110,rx_10_nib_0_00_clk_h:010011,rx_10_nib_0_09_clk_l:010010,rx_10_nib_1_06_clk_h:101101,rx_10_nib_1_05_clk_h:101100,rx_10_nib_0_02_clk_l:001011,rx_10_nib_0_08_clk_l:010001,rx_100_nib_1_rd_fifo_clk_h:000110,rx_10_nib_0_01_clk_l:001010,rx_10_nib_0_07_clk_l:010000,rx_100_nib_1_clk_h:000101,rx_10_nib_0_00_clk_l:001001,rx_100_nib_1_clk_l:000100,rx_10_rd_fifo_clk_l:001000,rx_100_nib_0_clk_h:000011,rx_10_nib_1_04_clk_h:101011,rx_10_nib_1_02_clk_l:011111,rx_10_nib_1_09_rd_fifo_clk_h:110001,rx_10_nib_1_03_clk_h:101010,rx_10_nib_1_00_clk_h:100111,rx_10_nib_1_01_clk_l:011110,rx_10_nib_1_09_clk_h:110000,rx_10_nib_1_09_clk_l:100110,rx_10_nib_1_02_clk_h:101001,rx_10_nib_1_00_clk_l:011101,rx_10_nib_1_01_clk_h:101000,rx_10_nib_1_08_clk_l:100101,rx_10_nib_0_09_clk_h:011100,rx_10_nib_1_07_clk_l:100100,rx_100_nib_0_clk_l:000010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_present_state_reg[1]\ : label is "rx_100_rd_fifo_clk_l:000001,idle_clk_h:000111,idle_clk_l:000000,rx_10_nib_0_08_clk_h:011011,rx_10_nib_1_06_clk_l:100011,rx_10_nib_0_04_clk_h:010111,rx_10_nib_0_07_clk_h:011010,rx_10_nib_1_05_clk_l:100010,rx_10_nib_0_03_clk_h:010110,rx_10_nib_0_06_clk_h:011001,rx_10_nib_1_04_clk_l:100001,rx_10_nib_0_02_clk_h:010101,rx_10_nib_0_05_clk_h:011000,rx_10_nib_0_06_clk_l:001111,rx_10_nib_1_03_clk_l:100000,rx_10_nib_0_01_clk_h:010100,rx_10_nib_0_05_clk_l:001110,rx_10_nib_0_04_clk_l:001101,rx_10_nib_0_03_clk_l:001100,rx_10_nib_1_08_clk_h:101111,rx_10_nib_1_07_clk_h:101110,rx_10_nib_0_00_clk_h:010011,rx_10_nib_0_09_clk_l:010010,rx_10_nib_1_06_clk_h:101101,rx_10_nib_1_05_clk_h:101100,rx_10_nib_0_02_clk_l:001011,rx_10_nib_0_08_clk_l:010001,rx_100_nib_1_rd_fifo_clk_h:000110,rx_10_nib_0_01_clk_l:001010,rx_10_nib_0_07_clk_l:010000,rx_100_nib_1_clk_h:000101,rx_10_nib_0_00_clk_l:001001,rx_100_nib_1_clk_l:000100,rx_10_rd_fifo_clk_l:001000,rx_100_nib_0_clk_h:000011,rx_10_nib_1_04_clk_h:101011,rx_10_nib_1_02_clk_l:011111,rx_10_nib_1_09_rd_fifo_clk_h:110001,rx_10_nib_1_03_clk_h:101010,rx_10_nib_1_00_clk_h:100111,rx_10_nib_1_01_clk_l:011110,rx_10_nib_1_09_clk_h:110000,rx_10_nib_1_09_clk_l:100110,rx_10_nib_1_02_clk_h:101001,rx_10_nib_1_00_clk_l:011101,rx_10_nib_1_01_clk_h:101000,rx_10_nib_1_08_clk_l:100101,rx_10_nib_0_09_clk_h:011100,rx_10_nib_1_07_clk_l:100100,rx_100_nib_0_clk_l:000010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_present_state_reg[2]\ : label is "rx_100_rd_fifo_clk_l:000001,idle_clk_h:000111,idle_clk_l:000000,rx_10_nib_0_08_clk_h:011011,rx_10_nib_1_06_clk_l:100011,rx_10_nib_0_04_clk_h:010111,rx_10_nib_0_07_clk_h:011010,rx_10_nib_1_05_clk_l:100010,rx_10_nib_0_03_clk_h:010110,rx_10_nib_0_06_clk_h:011001,rx_10_nib_1_04_clk_l:100001,rx_10_nib_0_02_clk_h:010101,rx_10_nib_0_05_clk_h:011000,rx_10_nib_0_06_clk_l:001111,rx_10_nib_1_03_clk_l:100000,rx_10_nib_0_01_clk_h:010100,rx_10_nib_0_05_clk_l:001110,rx_10_nib_0_04_clk_l:001101,rx_10_nib_0_03_clk_l:001100,rx_10_nib_1_08_clk_h:101111,rx_10_nib_1_07_clk_h:101110,rx_10_nib_0_00_clk_h:010011,rx_10_nib_0_09_clk_l:010010,rx_10_nib_1_06_clk_h:101101,rx_10_nib_1_05_clk_h:101100,rx_10_nib_0_02_clk_l:001011,rx_10_nib_0_08_clk_l:010001,rx_100_nib_1_rd_fifo_clk_h:000110,rx_10_nib_0_01_clk_l:001010,rx_10_nib_0_07_clk_l:010000,rx_100_nib_1_clk_h:000101,rx_10_nib_0_00_clk_l:001001,rx_100_nib_1_clk_l:000100,rx_10_rd_fifo_clk_l:001000,rx_100_nib_0_clk_h:000011,rx_10_nib_1_04_clk_h:101011,rx_10_nib_1_02_clk_l:011111,rx_10_nib_1_09_rd_fifo_clk_h:110001,rx_10_nib_1_03_clk_h:101010,rx_10_nib_1_00_clk_h:100111,rx_10_nib_1_01_clk_l:011110,rx_10_nib_1_09_clk_h:110000,rx_10_nib_1_09_clk_l:100110,rx_10_nib_1_02_clk_h:101001,rx_10_nib_1_00_clk_l:011101,rx_10_nib_1_01_clk_h:101000,rx_10_nib_1_08_clk_l:100101,rx_10_nib_0_09_clk_h:011100,rx_10_nib_1_07_clk_l:100100,rx_100_nib_0_clk_l:000010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_present_state_reg[3]\ : label is "rx_100_rd_fifo_clk_l:000001,idle_clk_h:000111,idle_clk_l:000000,rx_10_nib_0_08_clk_h:011011,rx_10_nib_1_06_clk_l:100011,rx_10_nib_0_04_clk_h:010111,rx_10_nib_0_07_clk_h:011010,rx_10_nib_1_05_clk_l:100010,rx_10_nib_0_03_clk_h:010110,rx_10_nib_0_06_clk_h:011001,rx_10_nib_1_04_clk_l:100001,rx_10_nib_0_02_clk_h:010101,rx_10_nib_0_05_clk_h:011000,rx_10_nib_0_06_clk_l:001111,rx_10_nib_1_03_clk_l:100000,rx_10_nib_0_01_clk_h:010100,rx_10_nib_0_05_clk_l:001110,rx_10_nib_0_04_clk_l:001101,rx_10_nib_0_03_clk_l:001100,rx_10_nib_1_08_clk_h:101111,rx_10_nib_1_07_clk_h:101110,rx_10_nib_0_00_clk_h:010011,rx_10_nib_0_09_clk_l:010010,rx_10_nib_1_06_clk_h:101101,rx_10_nib_1_05_clk_h:101100,rx_10_nib_0_02_clk_l:001011,rx_10_nib_0_08_clk_l:010001,rx_100_nib_1_rd_fifo_clk_h:000110,rx_10_nib_0_01_clk_l:001010,rx_10_nib_0_07_clk_l:010000,rx_100_nib_1_clk_h:000101,rx_10_nib_0_00_clk_l:001001,rx_100_nib_1_clk_l:000100,rx_10_rd_fifo_clk_l:001000,rx_100_nib_0_clk_h:000011,rx_10_nib_1_04_clk_h:101011,rx_10_nib_1_02_clk_l:011111,rx_10_nib_1_09_rd_fifo_clk_h:110001,rx_10_nib_1_03_clk_h:101010,rx_10_nib_1_00_clk_h:100111,rx_10_nib_1_01_clk_l:011110,rx_10_nib_1_09_clk_h:110000,rx_10_nib_1_09_clk_l:100110,rx_10_nib_1_02_clk_h:101001,rx_10_nib_1_00_clk_l:011101,rx_10_nib_1_01_clk_h:101000,rx_10_nib_1_08_clk_l:100101,rx_10_nib_0_09_clk_h:011100,rx_10_nib_1_07_clk_l:100100,rx_100_nib_0_clk_l:000010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_present_state_reg[4]\ : label is "rx_100_rd_fifo_clk_l:000001,idle_clk_h:000111,idle_clk_l:000000,rx_10_nib_0_08_clk_h:011011,rx_10_nib_1_06_clk_l:100011,rx_10_nib_0_04_clk_h:010111,rx_10_nib_0_07_clk_h:011010,rx_10_nib_1_05_clk_l:100010,rx_10_nib_0_03_clk_h:010110,rx_10_nib_0_06_clk_h:011001,rx_10_nib_1_04_clk_l:100001,rx_10_nib_0_02_clk_h:010101,rx_10_nib_0_05_clk_h:011000,rx_10_nib_0_06_clk_l:001111,rx_10_nib_1_03_clk_l:100000,rx_10_nib_0_01_clk_h:010100,rx_10_nib_0_05_clk_l:001110,rx_10_nib_0_04_clk_l:001101,rx_10_nib_0_03_clk_l:001100,rx_10_nib_1_08_clk_h:101111,rx_10_nib_1_07_clk_h:101110,rx_10_nib_0_00_clk_h:010011,rx_10_nib_0_09_clk_l:010010,rx_10_nib_1_06_clk_h:101101,rx_10_nib_1_05_clk_h:101100,rx_10_nib_0_02_clk_l:001011,rx_10_nib_0_08_clk_l:010001,rx_100_nib_1_rd_fifo_clk_h:000110,rx_10_nib_0_01_clk_l:001010,rx_10_nib_0_07_clk_l:010000,rx_100_nib_1_clk_h:000101,rx_10_nib_0_00_clk_l:001001,rx_100_nib_1_clk_l:000100,rx_10_rd_fifo_clk_l:001000,rx_100_nib_0_clk_h:000011,rx_10_nib_1_04_clk_h:101011,rx_10_nib_1_02_clk_l:011111,rx_10_nib_1_09_rd_fifo_clk_h:110001,rx_10_nib_1_03_clk_h:101010,rx_10_nib_1_00_clk_h:100111,rx_10_nib_1_01_clk_l:011110,rx_10_nib_1_09_clk_h:110000,rx_10_nib_1_09_clk_l:100110,rx_10_nib_1_02_clk_h:101001,rx_10_nib_1_00_clk_l:011101,rx_10_nib_1_01_clk_h:101000,rx_10_nib_1_08_clk_l:100101,rx_10_nib_0_09_clk_h:011100,rx_10_nib_1_07_clk_l:100100,rx_100_nib_0_clk_l:000010";
  attribute FSM_ENCODED_STATES of \FSM_sequential_present_state_reg[5]\ : label is "rx_100_rd_fifo_clk_l:000001,idle_clk_h:000111,idle_clk_l:000000,rx_10_nib_0_08_clk_h:011011,rx_10_nib_1_06_clk_l:100011,rx_10_nib_0_04_clk_h:010111,rx_10_nib_0_07_clk_h:011010,rx_10_nib_1_05_clk_l:100010,rx_10_nib_0_03_clk_h:010110,rx_10_nib_0_06_clk_h:011001,rx_10_nib_1_04_clk_l:100001,rx_10_nib_0_02_clk_h:010101,rx_10_nib_0_05_clk_h:011000,rx_10_nib_0_06_clk_l:001111,rx_10_nib_1_03_clk_l:100000,rx_10_nib_0_01_clk_h:010100,rx_10_nib_0_05_clk_l:001110,rx_10_nib_0_04_clk_l:001101,rx_10_nib_0_03_clk_l:001100,rx_10_nib_1_08_clk_h:101111,rx_10_nib_1_07_clk_h:101110,rx_10_nib_0_00_clk_h:010011,rx_10_nib_0_09_clk_l:010010,rx_10_nib_1_06_clk_h:101101,rx_10_nib_1_05_clk_h:101100,rx_10_nib_0_02_clk_l:001011,rx_10_nib_0_08_clk_l:010001,rx_100_nib_1_rd_fifo_clk_h:000110,rx_10_nib_0_01_clk_l:001010,rx_10_nib_0_07_clk_l:010000,rx_100_nib_1_clk_h:000101,rx_10_nib_0_00_clk_l:001001,rx_100_nib_1_clk_l:000100,rx_10_rd_fifo_clk_l:001000,rx_100_nib_0_clk_h:000011,rx_10_nib_1_04_clk_h:101011,rx_10_nib_1_02_clk_l:011111,rx_10_nib_1_09_rd_fifo_clk_h:110001,rx_10_nib_1_03_clk_h:101010,rx_10_nib_1_00_clk_h:100111,rx_10_nib_1_01_clk_l:011110,rx_10_nib_1_09_clk_h:110000,rx_10_nib_1_09_clk_l:100110,rx_10_nib_1_02_clk_h:101001,rx_10_nib_1_00_clk_l:011101,rx_10_nib_1_01_clk_h:101000,rx_10_nib_1_08_clk_l:100101,rx_10_nib_0_09_clk_h:011100,rx_10_nib_1_07_clk_l:100100,rx_100_nib_0_clk_l:000010";
begin
  Q(4 downto 0) <= \^q\(4 downto 0);
\Addr_Counters[0].MUXCY_L_I_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000052"
    )
        port map (
      I0 => \^q\(3),
      I1 => present_state(4),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      O => \FSM_sequential_present_state_reg[3]_0\
    );
\Addr_Counters[0].MUXCY_L_I_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => present_state(4),
      I1 => \^q\(4),
      O => \FSM_sequential_present_state_reg[4]_0\
    );
Data_Exists_DFF_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60F0F060"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => rx_fifo_mt_n,
      I3 => present_state(4),
      I4 => \^q\(4),
      O => \FSM_sequential_present_state_reg[2]_1\
    );
Data_Exists_DFF_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0E0E050"
    )
        port map (
      I0 => \^q\(0),
      I1 => present_state(4),
      I2 => rx_fifo_mt_n,
      I3 => \^q\(3),
      I4 => \^q\(1),
      O => \FSM_sequential_present_state_reg[0]_0\
    );
\FSM_sequential_present_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEEFE"
    )
        port map (
      I0 => \FSM_sequential_present_state[0]_i_2_n_0\,
      I1 => \FSM_sequential_present_state[3]_i_7_n_0\,
      I2 => \FSM_sequential_present_state_reg[0]_1\,
      I3 => \FSM_sequential_present_state[0]_i_4_n_0\,
      I4 => \FSM_sequential_present_state[0]_i_5_n_0\,
      I5 => \FSM_sequential_present_state[0]_i_6_n_0\,
      O => next_state(0)
    );
\FSM_sequential_present_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010001010101"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => present_state(4),
      I3 => \^q\(1),
      I4 => rx_100,
      I5 => rx_10,
      O => \FSM_sequential_present_state[0]_i_2_n_0\
    );
\FSM_sequential_present_state[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => \FSM_sequential_present_state[0]_i_4_n_0\
    );
\FSM_sequential_present_state[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"005E"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => present_state(4),
      I3 => \^q\(0),
      O => \FSM_sequential_present_state[0]_i_5_n_0\
    );
\FSM_sequential_present_state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010001000100000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => present_state(4),
      I4 => \FSM_sequential_present_state_reg[0]_2\(1),
      I5 => \FSM_sequential_present_state_reg[0]_2\(0),
      O => \FSM_sequential_present_state[0]_i_6_n_0\
    );
\FSM_sequential_present_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAFFEAEAEAEAEAEA"
    )
        port map (
      I0 => \FSM_sequential_present_state[1]_i_2_n_0\,
      I1 => \FSM_sequential_present_state[1]_i_3_n_0\,
      I2 => \FSM_sequential_present_state_reg[1]_0\,
      I3 => \FSM_sequential_present_state[2]_i_4_n_0\,
      I4 => \FSM_sequential_present_state[1]_i_5_n_0\,
      I5 => \FSM_sequential_present_state_reg[1]_1\,
      O => next_state(1)
    );
\FSM_sequential_present_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"005E5E00"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => present_state(4),
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \FSM_sequential_present_state[1]_i_2_n_0\
    );
\FSM_sequential_present_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => present_state(4),
      I1 => \^q\(0),
      I2 => \^q\(4),
      I3 => \^q\(3),
      O => \FSM_sequential_present_state[1]_i_3_n_0\
    );
\FSM_sequential_present_state[1]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      I1 => present_state(4),
      O => \FSM_sequential_present_state[1]_i_5_n_0\
    );
\FSM_sequential_present_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEFEEEE"
    )
        port map (
      I0 => \FSM_sequential_present_state[2]_i_2_n_0\,
      I1 => \FSM_sequential_present_state[2]_i_3_n_0\,
      I2 => \FSM_sequential_present_state[2]_i_4_n_0\,
      I3 => rx_100,
      I4 => \FSM_sequential_present_state[2]_i_5_n_0\,
      I5 => \FSM_sequential_present_state[2]_i_6_n_0\,
      O => next_state(2)
    );
\FSM_sequential_present_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"004000C0"
    )
        port map (
      I0 => present_state(4),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(4),
      O => \FSM_sequential_present_state[2]_i_2_n_0\
    );
\FSM_sequential_present_state[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => present_state(4),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \FSM_sequential_present_state[2]_i_3_n_0\
    );
\FSM_sequential_present_state[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(4),
      O => \FSM_sequential_present_state[2]_i_4_n_0\
    );
\FSM_sequential_present_state[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => rx_10,
      I3 => present_state(4),
      O => \FSM_sequential_present_state[2]_i_5_n_0\
    );
\FSM_sequential_present_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002A002A2A2A2A00"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => present_state(4),
      O => \FSM_sequential_present_state[2]_i_6_n_0\
    );
\FSM_sequential_present_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \FSM_sequential_present_state[3]_i_2_n_0\,
      I1 => \FSM_sequential_present_state[3]_i_3_n_0\,
      I2 => \FSM_sequential_present_state[3]_i_4_n_0\,
      I3 => \FSM_sequential_present_state[3]_i_5_n_0\,
      I4 => \FSM_sequential_present_state[3]_i_6_n_0\,
      I5 => \FSM_sequential_present_state[3]_i_7_n_0\,
      O => next_state(3)
    );
\FSM_sequential_present_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \FSM_sequential_present_state[3]_i_2_n_0\
    );
\FSM_sequential_present_state[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => rx_10,
      I1 => present_state(4),
      I2 => \^q\(4),
      O => \FSM_sequential_present_state[3]_i_3_n_0\
    );
\FSM_sequential_present_state[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777700000FFF0000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => present_state(4),
      I3 => \^q\(4),
      I4 => \^q\(3),
      I5 => \^q\(0),
      O => \FSM_sequential_present_state[3]_i_4_n_0\
    );
\FSM_sequential_present_state[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => present_state(4),
      I1 => \^q\(2),
      I2 => rx_10,
      I3 => rx_100,
      O => \FSM_sequential_present_state[3]_i_5_n_0\
    );
\FSM_sequential_present_state[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(4),
      O => \FSM_sequential_present_state[3]_i_6_n_0\
    );
\FSM_sequential_present_state[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(4),
      I2 => present_state(4),
      O => \FSM_sequential_present_state[3]_i_7_n_0\
    );
\FSM_sequential_present_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15555555C0000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => present_state(4),
      O => next_state(4)
    );
\FSM_sequential_present_state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FF000000FF00"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => present_state(4),
      I5 => \^q\(3),
      O => next_state(5)
    );
\FSM_sequential_present_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => next_state(0),
      Q => \^q\(0),
      R => \FSM_sequential_present_state_reg[5]_0\
    );
\FSM_sequential_present_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => next_state(1),
      Q => \^q\(1),
      R => \FSM_sequential_present_state_reg[5]_0\
    );
\FSM_sequential_present_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => next_state(2),
      Q => \^q\(2),
      R => \FSM_sequential_present_state_reg[5]_0\
    );
\FSM_sequential_present_state_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => next_state(3),
      Q => \^q\(3),
      R => \FSM_sequential_present_state_reg[5]_0\
    );
\FSM_sequential_present_state_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => next_state(4),
      Q => present_state(4),
      R => \FSM_sequential_present_state_reg[5]_0\
    );
\FSM_sequential_present_state_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => next_state(5),
      Q => \^q\(4),
      R => \FSM_sequential_present_state_reg[5]_0\
    );
\Rx_fifo_output[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000118"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => present_state(4),
      O => rx_fifo_rd_en
    );
rmii2mac_rx_clk_bi_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"352D256925282C68"
    )
        port map (
      I0 => \^q\(3),
      I1 => present_state(4),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => rmii2Mac_rx_clk_i
    );
rmii2mac_rx_dv_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333333FFFFEDFFC"
    )
        port map (
      I0 => \^q\(0),
      I1 => present_state(4),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => rmii2Mac_rx_dv_i
    );
rmii2mac_rx_er_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000057FEFF50"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => present_state(4),
      I4 => \^q\(3),
      I5 => \^q\(4),
      O => \FSM_sequential_present_state_reg[2]_0\
    );
rmii2mac_rx_er_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0188FF040180FF44"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(4),
      I4 => present_state(4),
      I5 => \^q\(0),
      O => \FSM_sequential_present_state_reg[3]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mii_to_rmii_0_0_rx_fifo_loader is
  port (
    \rst_n_d_reg[1]\ : out STD_LOGIC;
    rx_10 : out STD_LOGIC;
    rx_100 : out STD_LOGIC;
    rx_error : out STD_LOGIC;
    rmii2Mac_crs_i : out STD_LOGIC;
    rx_end_of_packet : out STD_LOGIC;
    rx_fifo_wr_en : out STD_LOGIC;
    Rx_cary_sense_reg_0 : out STD_LOGIC;
    rxd_100_i_reg_0 : out STD_LOGIC;
    rx_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ref_clk : in STD_LOGIC;
    phy2Rmii_rx_er_d2 : in STD_LOGIC;
    mac2Rmii_tx_en_d2 : in STD_LOGIC;
    phy2Rmii_crs_dv_d2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \sample_rxd_cnt_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_sequential_present_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end design_1_mii_to_rmii_0_0_rx_fifo_loader;

architecture STRUCTURE of design_1_mii_to_rmii_0_0_rx_fifo_loader is
  signal \Rx_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \Rx_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \Rx_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \Rx_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \Rx_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \Rx_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \Rx_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \Rx_data[7]_i_1_n_0\ : STD_LOGIC;
  signal Rx_fifo_wr_en0 : STD_LOGIC;
  signal \dibit_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \dibit_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \dibit_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \dibit_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \dibit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \dibit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \dibit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \phy2Rmii_crs_dv_sr_reg_n_0_[0]\ : STD_LOGIC;
  signal \phy2Rmii_crs_dv_sr_reg_n_0_[10]\ : STD_LOGIC;
  signal \phy2Rmii_crs_dv_sr_reg_n_0_[11]\ : STD_LOGIC;
  signal \phy2Rmii_crs_dv_sr_reg_n_0_[1]\ : STD_LOGIC;
  signal \phy2Rmii_crs_dv_sr_reg_n_0_[2]\ : STD_LOGIC;
  signal \phy2Rmii_crs_dv_sr_reg_n_0_[3]\ : STD_LOGIC;
  signal \phy2Rmii_crs_dv_sr_reg_n_0_[4]\ : STD_LOGIC;
  signal \phy2Rmii_crs_dv_sr_reg_n_0_[5]\ : STD_LOGIC;
  signal \phy2Rmii_crs_dv_sr_reg_n_0_[6]\ : STD_LOGIC;
  signal \phy2Rmii_crs_dv_sr_reg_n_0_[7]\ : STD_LOGIC;
  signal \phy2Rmii_crs_dv_sr_reg_n_0_[8]\ : STD_LOGIC;
  signal \phy2Rmii_crs_dv_sr_reg_n_0_[9]\ : STD_LOGIC;
  signal phy2rmii_rxd_d1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal phy2rmii_rxd_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal present_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \present_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \present_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \present_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \present_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \present_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \present_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \present_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \present_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \present_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \present_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \present_state[2]_i_2_n_0\ : STD_LOGIC;
  signal repeated_data_cnt : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \repeated_data_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \repeated_data_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \repeated_data_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \repeated_data_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \repeated_data_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \repeated_data_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \repeated_data_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \^rmii2mac_crs_i\ : STD_LOGIC;
  signal \^rst_n_d_reg[1]\ : STD_LOGIC;
  signal \^rx_10\ : STD_LOGIC;
  signal \^rx_100\ : STD_LOGIC;
  signal rx_cary_sense_i : STD_LOGIC;
  signal rx_cary_sense_i0 : STD_LOGIC;
  signal rx_cary_sense_i_i_2_n_0 : STD_LOGIC;
  signal \^rx_data\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_data_valid_i : STD_LOGIC;
  signal rx_data_valid_i_i_1_n_0 : STD_LOGIC;
  signal \^rx_end_of_packet\ : STD_LOGIC;
  signal rx_end_of_packet_i0 : STD_LOGIC;
  signal rxd_100_i_i_1_n_0 : STD_LOGIC;
  signal rxd_is_idle : STD_LOGIC;
  signal rxd_is_idle_i_1_n_0 : STD_LOGIC;
  signal rxd_is_preamble10 : STD_LOGIC;
  signal rxd_is_preamble10_i_1_n_0 : STD_LOGIC;
  signal sample_rxd : STD_LOGIC;
  signal sample_rxd_cnt : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \sample_rxd_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \sample_rxd_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \sample_rxd_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \sample_rxd_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \sample_rxd_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal sample_rxd_i_1_n_0 : STD_LOGIC;
  signal sample_rxd_reg_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Rx_data[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Rx_data[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Rx_data[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Rx_data[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \present_state[0]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \present_state[0]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \present_state[0]_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \present_state[1]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \present_state[1]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \present_state[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \present_state[2]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of rxd_is_idle_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sample_rxd_cnt[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \sample_rxd_cnt[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sample_rxd_cnt[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \sample_rxd_cnt[4]_i_1\ : label is "soft_lutpair13";
begin
  rmii2Mac_crs_i <= \^rmii2mac_crs_i\;
  \rst_n_d_reg[1]\ <= \^rst_n_d_reg[1]\;
  rx_10 <= \^rx_10\;
  rx_100 <= \^rx_100\;
  rx_data(7 downto 0) <= \^rx_data\(7 downto 0);
  rx_end_of_packet <= \^rx_end_of_packet\;
\FSM_sequential_present_state[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F11"
    )
        port map (
      I0 => \^rx_100\,
      I1 => \^rx_10\,
      I2 => \FSM_sequential_present_state_reg[1]\(1),
      I3 => \FSM_sequential_present_state_reg[1]\(0),
      O => rxd_100_i_reg_0
    );
Rx_cary_sense_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => rx_cary_sense_i,
      Q => \^rmii2mac_crs_i\,
      R => \^rst_n_d_reg[1]\
    );
\Rx_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => phy2rmii_rxd_d2(0),
      I1 => \dibit_cnt_reg_n_0_[0]\,
      I2 => \^rx_data\(0),
      O => \Rx_data[0]_i_1_n_0\
    );
\Rx_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => phy2rmii_rxd_d2(1),
      I1 => \dibit_cnt_reg_n_0_[0]\,
      I2 => \^rx_data\(1),
      O => \Rx_data[1]_i_1_n_0\
    );
\Rx_data[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => phy2rmii_rxd_d2(0),
      I1 => \dibit_cnt_reg_n_0_[1]\,
      I2 => \dibit_cnt_reg_n_0_[0]\,
      I3 => \^rx_data\(2),
      O => \Rx_data[2]_i_1_n_0\
    );
\Rx_data[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => phy2rmii_rxd_d2(1),
      I1 => \dibit_cnt_reg_n_0_[1]\,
      I2 => \dibit_cnt_reg_n_0_[0]\,
      I3 => \^rx_data\(3),
      O => \Rx_data[3]_i_1_n_0\
    );
\Rx_data[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => phy2rmii_rxd_d2(0),
      I1 => \dibit_cnt_reg_n_0_[1]\,
      I2 => \dibit_cnt_reg_n_0_[2]\,
      I3 => \dibit_cnt_reg_n_0_[0]\,
      I4 => \^rx_data\(4),
      O => \Rx_data[4]_i_1_n_0\
    );
\Rx_data[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEF0020"
    )
        port map (
      I0 => phy2rmii_rxd_d2(1),
      I1 => \dibit_cnt_reg_n_0_[1]\,
      I2 => \dibit_cnt_reg_n_0_[2]\,
      I3 => \dibit_cnt_reg_n_0_[0]\,
      I4 => \^rx_data\(5),
      O => \Rx_data[5]_i_1_n_0\
    );
\Rx_data[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => phy2rmii_rxd_d2(0),
      I1 => \dibit_cnt_reg_n_0_[1]\,
      I2 => \dibit_cnt_reg_n_0_[0]\,
      I3 => \dibit_cnt_reg_n_0_[2]\,
      I4 => p_0_in,
      I5 => \^rx_data\(6),
      O => \Rx_data[6]_i_1_n_0\
    );
\Rx_data[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => phy2rmii_rxd_d2(1),
      I1 => \dibit_cnt_reg_n_0_[1]\,
      I2 => \dibit_cnt_reg_n_0_[0]\,
      I3 => \dibit_cnt_reg_n_0_[2]\,
      I4 => p_0_in,
      I5 => \^rx_data\(7),
      O => \Rx_data[7]_i_1_n_0\
    );
\Rx_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \Rx_data[0]_i_1_n_0\,
      Q => \^rx_data\(0),
      R => \^rst_n_d_reg[1]\
    );
\Rx_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \Rx_data[1]_i_1_n_0\,
      Q => \^rx_data\(1),
      R => \^rst_n_d_reg[1]\
    );
\Rx_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \Rx_data[2]_i_1_n_0\,
      Q => \^rx_data\(2),
      R => \^rst_n_d_reg[1]\
    );
\Rx_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \Rx_data[3]_i_1_n_0\,
      Q => \^rx_data\(3),
      R => \^rst_n_d_reg[1]\
    );
\Rx_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \Rx_data[4]_i_1_n_0\,
      Q => \^rx_data\(4),
      R => \^rst_n_d_reg[1]\
    );
\Rx_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \Rx_data[5]_i_1_n_0\,
      Q => \^rx_data\(5),
      R => \^rst_n_d_reg[1]\
    );
\Rx_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \Rx_data[6]_i_1_n_0\,
      Q => \^rx_data\(6),
      R => \^rst_n_d_reg[1]\
    );
\Rx_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \Rx_data[7]_i_1_n_0\,
      Q => \^rx_data\(7),
      R => \^rst_n_d_reg[1]\
    );
Rx_error_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => phy2Rmii_rx_er_d2,
      Q => rx_error,
      R => \^rst_n_d_reg[1]\
    );
Rx_fifo_wr_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => sample_rxd_reg_n_0,
      I1 => p_0_in,
      I2 => rxd_is_idle,
      I3 => rxd_is_preamble10,
      O => Rx_fifo_wr_en0
    );
Rx_fifo_wr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => Rx_fifo_wr_en0,
      Q => rx_fifo_wr_en,
      R => \^rst_n_d_reg[1]\
    );
\dibit_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF3202FFFF"
    )
        port map (
      I0 => \dibit_cnt_reg_n_0_[0]\,
      I1 => rxd_is_preamble10,
      I2 => sample_rxd_reg_n_0,
      I3 => p_0_in,
      I4 => \sample_rxd_cnt_reg[3]_0\(0),
      I5 => rxd_is_idle,
      O => \dibit_cnt[0]_i_1_n_0\
    );
\dibit_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E200000000"
    )
        port map (
      I0 => \dibit_cnt_reg_n_0_[1]\,
      I1 => sample_rxd_reg_n_0,
      I2 => \dibit_cnt_reg_n_0_[0]\,
      I3 => rxd_is_preamble10,
      I4 => rxd_is_idle,
      I5 => \sample_rxd_cnt_reg[3]_0\(0),
      O => \dibit_cnt[1]_i_1_n_0\
    );
\dibit_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECE0000"
    )
        port map (
      I0 => \dibit_cnt_reg_n_0_[2]\,
      I1 => rxd_is_preamble10,
      I2 => sample_rxd_reg_n_0,
      I3 => \dibit_cnt_reg_n_0_[1]\,
      I4 => \sample_rxd_cnt_reg[3]_0\(0),
      I5 => rxd_is_idle,
      O => \dibit_cnt[2]_i_1_n_0\
    );
\dibit_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000E200000000"
    )
        port map (
      I0 => p_0_in,
      I1 => sample_rxd_reg_n_0,
      I2 => \dibit_cnt_reg_n_0_[2]\,
      I3 => rxd_is_preamble10,
      I4 => rxd_is_idle,
      I5 => \sample_rxd_cnt_reg[3]_0\(0),
      O => \dibit_cnt[3]_i_1_n_0\
    );
\dibit_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \dibit_cnt[0]_i_1_n_0\,
      Q => \dibit_cnt_reg_n_0_[0]\,
      R => '0'
    );
\dibit_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \dibit_cnt[1]_i_1_n_0\,
      Q => \dibit_cnt_reg_n_0_[1]\,
      R => '0'
    );
\dibit_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \dibit_cnt[2]_i_1_n_0\,
      Q => \dibit_cnt_reg_n_0_[2]\,
      R => '0'
    );
\dibit_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \dibit_cnt[3]_i_1_n_0\,
      Q => p_0_in,
      R => '0'
    );
\phy2Rmii_crs_dv_sr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => phy2Rmii_crs_dv_d2,
      Q => \phy2Rmii_crs_dv_sr_reg_n_0_[0]\,
      R => \^rst_n_d_reg[1]\
    );
\phy2Rmii_crs_dv_sr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \phy2Rmii_crs_dv_sr_reg_n_0_[9]\,
      Q => \phy2Rmii_crs_dv_sr_reg_n_0_[10]\,
      R => \^rst_n_d_reg[1]\
    );
\phy2Rmii_crs_dv_sr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \phy2Rmii_crs_dv_sr_reg_n_0_[10]\,
      Q => \phy2Rmii_crs_dv_sr_reg_n_0_[11]\,
      R => \^rst_n_d_reg[1]\
    );
\phy2Rmii_crs_dv_sr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \phy2Rmii_crs_dv_sr_reg_n_0_[0]\,
      Q => \phy2Rmii_crs_dv_sr_reg_n_0_[1]\,
      R => \^rst_n_d_reg[1]\
    );
\phy2Rmii_crs_dv_sr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \phy2Rmii_crs_dv_sr_reg_n_0_[1]\,
      Q => \phy2Rmii_crs_dv_sr_reg_n_0_[2]\,
      R => \^rst_n_d_reg[1]\
    );
\phy2Rmii_crs_dv_sr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \phy2Rmii_crs_dv_sr_reg_n_0_[2]\,
      Q => \phy2Rmii_crs_dv_sr_reg_n_0_[3]\,
      R => \^rst_n_d_reg[1]\
    );
\phy2Rmii_crs_dv_sr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \phy2Rmii_crs_dv_sr_reg_n_0_[3]\,
      Q => \phy2Rmii_crs_dv_sr_reg_n_0_[4]\,
      R => \^rst_n_d_reg[1]\
    );
\phy2Rmii_crs_dv_sr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \phy2Rmii_crs_dv_sr_reg_n_0_[4]\,
      Q => \phy2Rmii_crs_dv_sr_reg_n_0_[5]\,
      R => \^rst_n_d_reg[1]\
    );
\phy2Rmii_crs_dv_sr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \phy2Rmii_crs_dv_sr_reg_n_0_[5]\,
      Q => \phy2Rmii_crs_dv_sr_reg_n_0_[6]\,
      R => \^rst_n_d_reg[1]\
    );
\phy2Rmii_crs_dv_sr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \phy2Rmii_crs_dv_sr_reg_n_0_[6]\,
      Q => \phy2Rmii_crs_dv_sr_reg_n_0_[7]\,
      R => \^rst_n_d_reg[1]\
    );
\phy2Rmii_crs_dv_sr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \phy2Rmii_crs_dv_sr_reg_n_0_[7]\,
      Q => \phy2Rmii_crs_dv_sr_reg_n_0_[8]\,
      R => \^rst_n_d_reg[1]\
    );
\phy2Rmii_crs_dv_sr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \phy2Rmii_crs_dv_sr_reg_n_0_[8]\,
      Q => \phy2Rmii_crs_dv_sr_reg_n_0_[9]\,
      R => \^rst_n_d_reg[1]\
    );
\phy2rmii_rxd_d1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => Q(0),
      Q => phy2rmii_rxd_d1(0),
      R => \^rst_n_d_reg[1]\
    );
\phy2rmii_rxd_d1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => Q(1),
      Q => phy2rmii_rxd_d1(1),
      R => \^rst_n_d_reg[1]\
    );
\phy2rmii_rxd_d2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => phy2rmii_rxd_d1(0),
      Q => phy2rmii_rxd_d2(0),
      R => \^rst_n_d_reg[1]\
    );
\phy2rmii_rxd_d2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => phy2rmii_rxd_d1(1),
      Q => phy2rmii_rxd_d2(1),
      R => \^rst_n_d_reg[1]\
    );
\present_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF0F0F0FBFFF0F0"
    )
        port map (
      I0 => \present_state[0]_i_2_n_0\,
      I1 => \present_state[1]_i_6_n_0\,
      I2 => \present_state[0]_i_3_n_0\,
      I3 => present_state(0),
      I4 => \present_state[0]_i_4_n_0\,
      I5 => \present_state[0]_i_5_n_0\,
      O => next_state(0)
    );
\present_state[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => phy2rmii_rxd_d1(0),
      I1 => phy2rmii_rxd_d1(1),
      I2 => phy2Rmii_crs_dv_d2,
      O => \present_state[0]_i_2_n_0\
    );
\present_state[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => present_state(1),
      I1 => present_state(0),
      I2 => present_state(2),
      I3 => rx_data_valid_i,
      O => \present_state[0]_i_3_n_0\
    );
\present_state[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => present_state(1),
      I1 => present_state(2),
      O => \present_state[0]_i_4_n_0\
    );
\present_state[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => phy2Rmii_crs_dv_d2,
      I3 => phy2rmii_rxd_d1(0),
      I4 => phy2rmii_rxd_d1(1),
      O => \present_state[0]_i_5_n_0\
    );
\present_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFA0FFA8FFA8"
    )
        port map (
      I0 => present_state(0),
      I1 => \present_state[1]_i_2_n_0\,
      I2 => \present_state[1]_i_3_n_0\,
      I3 => \present_state[1]_i_4_n_0\,
      I4 => \present_state[1]_i_5_n_0\,
      I5 => \present_state[1]_i_6_n_0\,
      O => next_state(1)
    );
\present_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => present_state(2),
      I1 => present_state(1),
      I2 => Q(1),
      I3 => Q(0),
      I4 => phy2Rmii_crs_dv_d2,
      O => \present_state[1]_i_2_n_0\
    );
\present_state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => present_state(2),
      I1 => rx_data_valid_i,
      I2 => present_state(1),
      O => \present_state[1]_i_3_n_0\
    );
\present_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004040404040404"
    )
        port map (
      I0 => present_state(0),
      I1 => present_state(1),
      I2 => present_state(2),
      I3 => Q(1),
      I4 => Q(0),
      I5 => phy2Rmii_crs_dv_d2,
      O => \present_state[1]_i_4_n_0\
    );
\present_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => phy2Rmii_crs_dv_d2,
      I1 => phy2rmii_rxd_d1(1),
      I2 => present_state(0),
      I3 => phy2rmii_rxd_d1(0),
      I4 => present_state(2),
      I5 => present_state(1),
      O => \present_state[1]_i_5_n_0\
    );
\present_state[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \repeated_data_cnt_reg_n_0_[5]\,
      I1 => \repeated_data_cnt_reg_n_0_[0]\,
      I2 => \repeated_data_cnt_reg_n_0_[3]\,
      I3 => \repeated_data_cnt_reg_n_0_[1]\,
      I4 => \repeated_data_cnt_reg_n_0_[2]\,
      I5 => \repeated_data_cnt_reg_n_0_[4]\,
      O => \present_state[1]_i_6_n_0\
    );
\present_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA0300"
    )
        port map (
      I0 => rx_data_valid_i,
      I1 => \present_state[2]_i_2_n_0\,
      I2 => present_state(0),
      I3 => present_state(1),
      I4 => present_state(2),
      O => \present_state[2]_i_1_n_0\
    );
\present_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => phy2Rmii_crs_dv_d2,
      I1 => Q(0),
      I2 => Q(1),
      O => \present_state[2]_i_2_n_0\
    );
\present_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => next_state(0),
      Q => present_state(0),
      R => \^rst_n_d_reg[1]\
    );
\present_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => next_state(1),
      Q => present_state(1),
      R => \^rst_n_d_reg[1]\
    );
\present_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \present_state[2]_i_1_n_0\,
      Q => present_state(2),
      R => \^rst_n_d_reg[1]\
    );
\repeated_data_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80000000FFFFFFFF"
    )
        port map (
      I0 => \repeated_data_cnt_reg_n_0_[3]\,
      I1 => \repeated_data_cnt_reg_n_0_[1]\,
      I2 => \repeated_data_cnt_reg_n_0_[2]\,
      I3 => \repeated_data_cnt_reg_n_0_[4]\,
      I4 => \repeated_data_cnt_reg_n_0_[5]\,
      I5 => \repeated_data_cnt_reg_n_0_[0]\,
      O => repeated_data_cnt(0)
    );
\repeated_data_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFFFFFF0000"
    )
        port map (
      I0 => \repeated_data_cnt_reg_n_0_[4]\,
      I1 => \repeated_data_cnt_reg_n_0_[2]\,
      I2 => \repeated_data_cnt_reg_n_0_[3]\,
      I3 => \repeated_data_cnt_reg_n_0_[5]\,
      I4 => \repeated_data_cnt_reg_n_0_[1]\,
      I5 => \repeated_data_cnt_reg_n_0_[0]\,
      O => repeated_data_cnt(1)
    );
\repeated_data_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FFFF00FF00FF00"
    )
        port map (
      I0 => \repeated_data_cnt_reg_n_0_[4]\,
      I1 => \repeated_data_cnt_reg_n_0_[3]\,
      I2 => \repeated_data_cnt_reg_n_0_[5]\,
      I3 => \repeated_data_cnt_reg_n_0_[2]\,
      I4 => \repeated_data_cnt_reg_n_0_[1]\,
      I5 => \repeated_data_cnt_reg_n_0_[0]\,
      O => repeated_data_cnt(2)
    );
\repeated_data_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FF0F0F0F0F0F0F0"
    )
        port map (
      I0 => \repeated_data_cnt_reg_n_0_[4]\,
      I1 => \repeated_data_cnt_reg_n_0_[5]\,
      I2 => \repeated_data_cnt_reg_n_0_[3]\,
      I3 => \repeated_data_cnt_reg_n_0_[0]\,
      I4 => \repeated_data_cnt_reg_n_0_[2]\,
      I5 => \repeated_data_cnt_reg_n_0_[1]\,
      O => repeated_data_cnt(3)
    );
\repeated_data_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BCCCCCCCCCCCCCCC"
    )
        port map (
      I0 => \repeated_data_cnt_reg_n_0_[5]\,
      I1 => \repeated_data_cnt_reg_n_0_[4]\,
      I2 => \repeated_data_cnt_reg_n_0_[0]\,
      I3 => \repeated_data_cnt_reg_n_0_[3]\,
      I4 => \repeated_data_cnt_reg_n_0_[1]\,
      I5 => \repeated_data_cnt_reg_n_0_[2]\,
      O => repeated_data_cnt(4)
    );
\repeated_data_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7DFFFF7D"
    )
        port map (
      I0 => \sample_rxd_cnt_reg[3]_0\(0),
      I1 => Q(1),
      I2 => phy2rmii_rxd_d1(1),
      I3 => phy2rmii_rxd_d1(0),
      I4 => Q(0),
      O => \repeated_data_cnt[5]_i_1_n_0\
    );
\repeated_data_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \repeated_data_cnt_reg_n_0_[5]\,
      I1 => \repeated_data_cnt_reg_n_0_[4]\,
      I2 => \repeated_data_cnt_reg_n_0_[2]\,
      I3 => \repeated_data_cnt_reg_n_0_[1]\,
      I4 => \repeated_data_cnt_reg_n_0_[3]\,
      I5 => \repeated_data_cnt_reg_n_0_[0]\,
      O => repeated_data_cnt(5)
    );
\repeated_data_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => repeated_data_cnt(0),
      Q => \repeated_data_cnt_reg_n_0_[0]\,
      R => \repeated_data_cnt[5]_i_1_n_0\
    );
\repeated_data_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => repeated_data_cnt(1),
      Q => \repeated_data_cnt_reg_n_0_[1]\,
      R => \repeated_data_cnt[5]_i_1_n_0\
    );
\repeated_data_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => repeated_data_cnt(2),
      Q => \repeated_data_cnt_reg_n_0_[2]\,
      R => \repeated_data_cnt[5]_i_1_n_0\
    );
\repeated_data_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => repeated_data_cnt(3),
      Q => \repeated_data_cnt_reg_n_0_[3]\,
      R => \repeated_data_cnt[5]_i_1_n_0\
    );
\repeated_data_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => repeated_data_cnt(4),
      Q => \repeated_data_cnt_reg_n_0_[4]\,
      R => \repeated_data_cnt[5]_i_1_n_0\
    );
\repeated_data_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => repeated_data_cnt(5),
      Q => \repeated_data_cnt_reg_n_0_[5]\,
      R => \repeated_data_cnt[5]_i_1_n_0\
    );
rmii2mac_col_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^rmii2mac_crs_i\,
      I1 => mac2Rmii_tx_en_d2,
      O => Rx_cary_sense_reg_0
    );
rmii2mac_tx_clk_bi_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sample_rxd_cnt_reg[3]_0\(0),
      O => \^rst_n_d_reg[1]\
    );
rx_cary_sense_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => phy2Rmii_crs_dv_d2,
      I1 => rx_cary_sense_i,
      I2 => rx_cary_sense_i_i_2_n_0,
      O => rx_cary_sense_i0
    );
rx_cary_sense_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000400044444"
    )
        port map (
      I0 => \phy2Rmii_crs_dv_sr_reg_n_0_[0]\,
      I1 => phy2Rmii_crs_dv_d2,
      I2 => \^rx_10\,
      I3 => \phy2Rmii_crs_dv_sr_reg_n_0_[1]\,
      I4 => \phy2Rmii_crs_dv_sr_reg_n_0_[11]\,
      I5 => \^rx_100\,
      O => rx_cary_sense_i_i_2_n_0
    );
rx_cary_sense_i_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => rx_cary_sense_i0,
      Q => rx_cary_sense_i,
      R => \^rst_n_d_reg[1]\
    );
rx_data_valid_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7774"
    )
        port map (
      I0 => \^rx_end_of_packet\,
      I1 => rx_data_valid_i,
      I2 => phy2Rmii_crs_dv_d2,
      I3 => \phy2Rmii_crs_dv_sr_reg_n_0_[0]\,
      O => rx_data_valid_i_i_1_n_0
    );
rx_data_valid_i_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => rx_data_valid_i_i_1_n_0,
      Q => rx_data_valid_i,
      R => \^rst_n_d_reg[1]\
    );
rx_end_of_packet_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"004400F4"
    )
        port map (
      I0 => \phy2Rmii_crs_dv_sr_reg_n_0_[0]\,
      I1 => \^rx_100\,
      I2 => \^rx_10\,
      I3 => phy2Rmii_crs_dv_d2,
      I4 => \phy2Rmii_crs_dv_sr_reg_n_0_[9]\,
      O => rx_end_of_packet_i0
    );
rx_end_of_packet_i_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => rx_end_of_packet_i0,
      Q => \^rx_end_of_packet\,
      R => \^rst_n_d_reg[1]\
    );
rxd_100_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404500000000"
    )
        port map (
      I0 => present_state(2),
      I1 => rx_data_valid_i,
      I2 => present_state(1),
      I3 => \present_state[2]_i_2_n_0\,
      I4 => \present_state[1]_i_6_n_0\,
      I5 => present_state(0),
      O => rxd_100_i_i_1_n_0
    );
rxd_100_i_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => rxd_100_i_i_1_n_0,
      Q => \^rx_100\,
      R => '0'
    );
rxd_10_i_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \present_state[2]_i_1_n_0\,
      Q => \^rx_10\,
      R => '0'
    );
rxd_is_idle_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5550505C"
    )
        port map (
      I0 => rx_data_valid_i,
      I1 => \present_state[0]_i_5_n_0\,
      I2 => present_state(2),
      I3 => present_state(1),
      I4 => present_state(0),
      O => rxd_is_idle_i_1_n_0
    );
rxd_is_idle_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => rxd_is_idle_i_1_n_0,
      Q => rxd_is_idle,
      R => '0'
    );
rxd_is_preamble10_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888F88888"
    )
        port map (
      I0 => \present_state[1]_i_6_n_0\,
      I1 => \present_state[1]_i_5_n_0\,
      I2 => \present_state[2]_i_2_n_0\,
      I3 => present_state(2),
      I4 => present_state(1),
      I5 => present_state(0),
      O => rxd_is_preamble10_i_1_n_0
    );
rxd_is_preamble10_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => rxd_is_preamble10_i_1_n_0,
      Q => rxd_is_preamble10,
      R => '0'
    );
\sample_rxd_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5030"
    )
        port map (
      I0 => sample_rxd_cnt(4),
      I1 => rxd_is_preamble10,
      I2 => \sample_rxd_cnt_reg[3]_0\(0),
      I3 => \^rx_10\,
      O => \sample_rxd_cnt[0]_i_1_n_0\
    );
\sample_rxd_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^rx_10\,
      I1 => \sample_rxd_cnt_reg[3]_0\(0),
      I2 => sample_rxd_cnt(0),
      O => \sample_rxd_cnt[1]_i_1_n_0\
    );
\sample_rxd_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^rx_10\,
      I1 => \sample_rxd_cnt_reg[3]_0\(0),
      I2 => sample_rxd_cnt(1),
      O => \sample_rxd_cnt[2]_i_1_n_0\
    );
\sample_rxd_cnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^rx_10\,
      I1 => \sample_rxd_cnt_reg[3]_0\(0),
      I2 => sample_rxd_cnt(2),
      O => \sample_rxd_cnt[3]_i_1_n_0\
    );
\sample_rxd_cnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => sample_rxd_cnt(3),
      I1 => rxd_is_preamble10,
      I2 => \sample_rxd_cnt_reg[3]_0\(0),
      I3 => \^rx_10\,
      O => \sample_rxd_cnt[4]_i_1_n_0\
    );
\sample_rxd_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \sample_rxd_cnt[0]_i_1_n_0\,
      Q => sample_rxd_cnt(0),
      R => '0'
    );
\sample_rxd_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \sample_rxd_cnt[1]_i_1_n_0\,
      Q => sample_rxd_cnt(1),
      R => '0'
    );
\sample_rxd_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \sample_rxd_cnt[2]_i_1_n_0\,
      Q => sample_rxd_cnt(2),
      R => '0'
    );
\sample_rxd_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \sample_rxd_cnt[3]_i_1_n_0\,
      Q => sample_rxd_cnt(3),
      R => '0'
    );
\sample_rxd_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \sample_rxd_cnt[4]_i_1_n_0\,
      Q => sample_rxd_cnt(4),
      R => '0'
    );
sample_rxd_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => sample_rxd,
      I1 => \^rx_10\,
      I2 => rxd_is_preamble10,
      I3 => sample_rxd_reg_n_0,
      O => sample_rxd_i_1_n_0
    );
sample_rxd_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => sample_rxd_cnt(3),
      I1 => sample_rxd_cnt(4),
      I2 => sample_rxd_cnt(2),
      I3 => sample_rxd_cnt(1),
      I4 => sample_rxd_cnt(0),
      I5 => \^rx_10\,
      O => sample_rxd
    );
sample_rxd_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => sample_rxd_i_1_n_0,
      Q => sample_rxd_reg_n_0,
      R => \^rst_n_d_reg[1]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mii_to_rmii_0_0_rx_fifo is
  port (
    rx_fifo_mt_n : out STD_LOGIC;
    rmii2Mac_rx_er_i : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \FSM_sequential_present_state_reg[3]\ : out STD_LOGIC;
    \Rx_fifo_output_reg[15]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \Rx_fifo_output_reg[7]_0\ : out STD_LOGIC;
    \Addr_Counters[3].FDRE_I\ : in STD_LOGIC;
    ref_clk : in STD_LOGIC;
    rx_end_of_packet : in STD_LOGIC;
    rx_error : in STD_LOGIC;
    rx_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_fifo_wr_en : in STD_LOGIC;
    rx_fifo_rd_en : in STD_LOGIC;
    \Addr_Counters[0].FDRE_I\ : in STD_LOGIC;
    \Addr_Counters[0].FDRE_I_0\ : in STD_LOGIC;
    rmii2mac_rx_er_reg : in STD_LOGIC;
    rmii2mac_rx_er_reg_0 : in STD_LOGIC;
    Data_Exists_DFF : in STD_LOGIC;
    Data_Exists_DFF_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end design_1_mii_to_rmii_0_0_rx_fifo;

architecture STRUCTURE of design_1_mii_to_rmii_0_0_rx_fifo is
  signal Rx_fifo_output : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal \^rx_fifo_output_reg[15]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rx_fifo_output_i : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  \Rx_fifo_output_reg[15]_0\(1 downto 0) <= \^rx_fifo_output_reg[15]_0\(1 downto 0);
\FSM_sequential_present_state[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF10"
    )
        port map (
      I0 => \^rx_fifo_output_reg[15]_0\(0),
      I1 => \^rx_fifo_output_reg[15]_0\(1),
      I2 => Q(1),
      I3 => Q(0),
      O => \Rx_fifo_output_reg[7]_0\
    );
I_SRL_FIFO: entity work.design_1_mii_to_rmii_0_0_SRL_FIFO
     port map (
      \Addr_Counters[0].FDRE_I_0\ => \Addr_Counters[0].FDRE_I\,
      \Addr_Counters[0].FDRE_I_1\ => \Addr_Counters[0].FDRE_I_0\,
      \Addr_Counters[3].FDRE_I_0\ => \Addr_Counters[3].FDRE_I\,
      D(11) => rx_fifo_output_i(15),
      D(10) => rx_fifo_output_i(13),
      D(9 downto 5) => rx_fifo_output_i(11 downto 7),
      D(4) => rx_fifo_output_i(5),
      D(3 downto 0) => rx_fifo_output_i(3 downto 0),
      Data_Exists_DFF_0 => rx_fifo_mt_n,
      Data_Exists_DFF_1 => Data_Exists_DFF,
      Data_Exists_DFF_2 => Data_Exists_DFF_0,
      \FSM_sequential_present_state_reg[0]\(1 downto 0) => \^rx_fifo_output_reg[15]_0\(1 downto 0),
      \FSM_sequential_present_state_reg[3]\ => \FSM_sequential_present_state_reg[3]\,
      Q(1 downto 0) => Q(3 downto 2),
      ref_clk => ref_clk,
      rx_data(7 downto 0) => rx_data(7 downto 0),
      rx_end_of_packet => rx_end_of_packet,
      rx_error => rx_error,
      rx_fifo_rd_en => rx_fifo_rd_en,
      rx_fifo_wr_en => rx_fifo_wr_en
    );
\Rx_fifo_output_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => rx_fifo_rd_en,
      D => rx_fifo_output_i(0),
      Q => Rx_fifo_output(0),
      R => \Addr_Counters[3].FDRE_I\
    );
\Rx_fifo_output_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => rx_fifo_rd_en,
      D => rx_fifo_output_i(10),
      Q => Rx_fifo_output(10),
      R => \Addr_Counters[3].FDRE_I\
    );
\Rx_fifo_output_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => rx_fifo_rd_en,
      D => rx_fifo_output_i(11),
      Q => Rx_fifo_output(11),
      R => \Addr_Counters[3].FDRE_I\
    );
\Rx_fifo_output_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => rx_fifo_rd_en,
      D => rx_fifo_output_i(13),
      Q => Rx_fifo_output(13),
      R => \Addr_Counters[3].FDRE_I\
    );
\Rx_fifo_output_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => rx_fifo_rd_en,
      D => rx_fifo_output_i(15),
      Q => \^rx_fifo_output_reg[15]_0\(1),
      R => \Addr_Counters[3].FDRE_I\
    );
\Rx_fifo_output_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => rx_fifo_rd_en,
      D => rx_fifo_output_i(1),
      Q => Rx_fifo_output(1),
      R => \Addr_Counters[3].FDRE_I\
    );
\Rx_fifo_output_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => rx_fifo_rd_en,
      D => rx_fifo_output_i(2),
      Q => Rx_fifo_output(2),
      R => \Addr_Counters[3].FDRE_I\
    );
\Rx_fifo_output_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => rx_fifo_rd_en,
      D => rx_fifo_output_i(3),
      Q => Rx_fifo_output(3),
      R => \Addr_Counters[3].FDRE_I\
    );
\Rx_fifo_output_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => rx_fifo_rd_en,
      D => rx_fifo_output_i(5),
      Q => Rx_fifo_output(5),
      R => \Addr_Counters[3].FDRE_I\
    );
\Rx_fifo_output_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => rx_fifo_rd_en,
      D => rx_fifo_output_i(7),
      Q => \^rx_fifo_output_reg[15]_0\(0),
      R => \Addr_Counters[3].FDRE_I\
    );
\Rx_fifo_output_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => rx_fifo_rd_en,
      D => rx_fifo_output_i(8),
      Q => Rx_fifo_output(8),
      R => \Addr_Counters[3].FDRE_I\
    );
\Rx_fifo_output_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => rx_fifo_rd_en,
      D => rx_fifo_output_i(9),
      Q => Rx_fifo_output(9),
      R => \Addr_Counters[3].FDRE_I\
    );
rmii2mac_rx_er_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => Rx_fifo_output(5),
      I1 => rmii2mac_rx_er_reg,
      I2 => Rx_fifo_output(13),
      I3 => rmii2mac_rx_er_reg_0,
      O => rmii2Mac_rx_er_i
    );
\rmii2mac_rxd[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => Rx_fifo_output(0),
      I1 => rmii2mac_rx_er_reg,
      I2 => Rx_fifo_output(8),
      I3 => rmii2mac_rx_er_reg_0,
      O => D(0)
    );
\rmii2mac_rxd[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => Rx_fifo_output(1),
      I1 => rmii2mac_rx_er_reg,
      I2 => Rx_fifo_output(9),
      I3 => rmii2mac_rx_er_reg_0,
      O => D(1)
    );
\rmii2mac_rxd[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => Rx_fifo_output(2),
      I1 => rmii2mac_rx_er_reg,
      I2 => Rx_fifo_output(10),
      I3 => rmii2mac_rx_er_reg_0,
      O => D(2)
    );
\rmii2mac_rxd[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => Rx_fifo_output(3),
      I1 => rmii2mac_rx_er_reg,
      I2 => Rx_fifo_output(11),
      I3 => rmii2mac_rx_er_reg_0,
      O => D(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mii_to_rmii_0_0_rmii_rx_agile is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    rmii2Mac_crs_i : out STD_LOGIC;
    Rx_cary_sense_reg : out STD_LOGIC;
    rmii2Mac_rx_dv_i : out STD_LOGIC;
    rmii2Mac_rx_clk_i : out STD_LOGIC;
    rmii2Mac_rx_er_i : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ref_clk : in STD_LOGIC;
    phy2Rmii_rx_er_d2 : in STD_LOGIC;
    mac2Rmii_tx_en_d2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    phy2Rmii_crs_dv_d2 : in STD_LOGIC;
    \sample_rxd_cnt_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end design_1_mii_to_rmii_0_0_rmii_rx_agile;

architecture STRUCTURE of design_1_mii_to_rmii_0_0_rmii_rx_agile is
  signal I_RX_FIFO_DISPOSER_n_10 : STD_LOGIC;
  signal I_RX_FIFO_DISPOSER_n_11 : STD_LOGIC;
  signal I_RX_FIFO_DISPOSER_n_12 : STD_LOGIC;
  signal I_RX_FIFO_DISPOSER_n_13 : STD_LOGIC;
  signal I_RX_FIFO_DISPOSER_n_6 : STD_LOGIC;
  signal I_RX_FIFO_DISPOSER_n_9 : STD_LOGIC;
  signal I_RX_FIFO_LOADER_n_8 : STD_LOGIC;
  signal I_RX_FIFO_n_6 : STD_LOGIC;
  signal I_RX_FIFO_n_9 : STD_LOGIC;
  signal Rmii_rx_eop : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal present_state : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal rx_10 : STD_LOGIC;
  signal rx_100 : STD_LOGIC;
  signal rx_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_end_of_packet : STD_LOGIC;
  signal rx_error : STD_LOGIC;
  signal rx_fifo_mt_n : STD_LOGIC;
  signal rx_fifo_rd_en : STD_LOGIC;
  signal rx_fifo_wr_en : STD_LOGIC;
begin
  SR(0) <= \^sr\(0);
I_RX_FIFO: entity work.design_1_mii_to_rmii_0_0_rx_fifo
     port map (
      \Addr_Counters[0].FDRE_I\ => I_RX_FIFO_DISPOSER_n_6,
      \Addr_Counters[0].FDRE_I_0\ => I_RX_FIFO_DISPOSER_n_13,
      \Addr_Counters[3].FDRE_I\ => \^sr\(0),
      D(3 downto 0) => D(3 downto 0),
      Data_Exists_DFF => I_RX_FIFO_DISPOSER_n_12,
      Data_Exists_DFF_0 => I_RX_FIFO_DISPOSER_n_11,
      \FSM_sequential_present_state_reg[3]\ => I_RX_FIFO_n_6,
      Q(3) => present_state(5),
      Q(2 downto 0) => present_state(3 downto 1),
      \Rx_fifo_output_reg[15]_0\(1 downto 0) => Rmii_rx_eop(1 downto 0),
      \Rx_fifo_output_reg[7]_0\ => I_RX_FIFO_n_9,
      ref_clk => ref_clk,
      rmii2Mac_rx_er_i => rmii2Mac_rx_er_i,
      rmii2mac_rx_er_reg => I_RX_FIFO_DISPOSER_n_9,
      rmii2mac_rx_er_reg_0 => I_RX_FIFO_DISPOSER_n_10,
      rx_data(7 downto 0) => rx_data(7 downto 0),
      rx_end_of_packet => rx_end_of_packet,
      rx_error => rx_error,
      rx_fifo_mt_n => rx_fifo_mt_n,
      rx_fifo_rd_en => rx_fifo_rd_en,
      rx_fifo_wr_en => rx_fifo_wr_en
    );
I_RX_FIFO_DISPOSER: entity work.design_1_mii_to_rmii_0_0_rx_fifo_disposer
     port map (
      \FSM_sequential_present_state_reg[0]_0\ => I_RX_FIFO_DISPOSER_n_11,
      \FSM_sequential_present_state_reg[0]_1\ => I_RX_FIFO_n_6,
      \FSM_sequential_present_state_reg[0]_2\(1 downto 0) => Rmii_rx_eop(1 downto 0),
      \FSM_sequential_present_state_reg[1]_0\ => I_RX_FIFO_n_9,
      \FSM_sequential_present_state_reg[1]_1\ => I_RX_FIFO_LOADER_n_8,
      \FSM_sequential_present_state_reg[2]_0\ => I_RX_FIFO_DISPOSER_n_9,
      \FSM_sequential_present_state_reg[2]_1\ => I_RX_FIFO_DISPOSER_n_12,
      \FSM_sequential_present_state_reg[3]_0\ => I_RX_FIFO_DISPOSER_n_6,
      \FSM_sequential_present_state_reg[3]_1\ => I_RX_FIFO_DISPOSER_n_10,
      \FSM_sequential_present_state_reg[4]_0\ => I_RX_FIFO_DISPOSER_n_13,
      \FSM_sequential_present_state_reg[5]_0\ => \^sr\(0),
      Q(4) => present_state(5),
      Q(3 downto 0) => present_state(3 downto 0),
      ref_clk => ref_clk,
      rmii2Mac_rx_clk_i => rmii2Mac_rx_clk_i,
      rmii2Mac_rx_dv_i => rmii2Mac_rx_dv_i,
      rx_10 => rx_10,
      rx_100 => rx_100,
      rx_fifo_mt_n => rx_fifo_mt_n,
      rx_fifo_rd_en => rx_fifo_rd_en
    );
I_RX_FIFO_LOADER: entity work.design_1_mii_to_rmii_0_0_rx_fifo_loader
     port map (
      \FSM_sequential_present_state_reg[1]\(1 downto 0) => present_state(1 downto 0),
      Q(1 downto 0) => Q(1 downto 0),
      Rx_cary_sense_reg_0 => Rx_cary_sense_reg,
      mac2Rmii_tx_en_d2 => mac2Rmii_tx_en_d2,
      phy2Rmii_crs_dv_d2 => phy2Rmii_crs_dv_d2,
      phy2Rmii_rx_er_d2 => phy2Rmii_rx_er_d2,
      ref_clk => ref_clk,
      rmii2Mac_crs_i => rmii2Mac_crs_i,
      \rst_n_d_reg[1]\ => \^sr\(0),
      rx_10 => rx_10,
      rx_100 => rx_100,
      rx_data(7 downto 0) => rx_data(7 downto 0),
      rx_end_of_packet => rx_end_of_packet,
      rx_error => rx_error,
      rx_fifo_wr_en => rx_fifo_wr_en,
      rxd_100_i_reg_0 => I_RX_FIFO_LOADER_n_8,
      \sample_rxd_cnt_reg[3]_0\(0) => \sample_rxd_cnt_reg[3]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mii_to_rmii_0_0_mii_to_rmii is
  port (
    rst_n : in STD_LOGIC;
    ref_clk : in STD_LOGIC;
    mac2rmii_tx_en : in STD_LOGIC;
    mac2rmii_txd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mac2rmii_tx_er : in STD_LOGIC;
    rmii2mac_tx_clk : out STD_LOGIC;
    rmii2mac_rx_clk : out STD_LOGIC;
    rmii2mac_col : out STD_LOGIC;
    rmii2mac_crs : out STD_LOGIC;
    rmii2mac_rx_dv : out STD_LOGIC;
    rmii2mac_rx_er : out STD_LOGIC;
    rmii2mac_rxd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    phy2rmii_crs_dv : in STD_LOGIC;
    phy2rmii_rx_er : in STD_LOGIC;
    phy2rmii_rxd : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rmii2phy_txd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rmii2phy_tx_en : out STD_LOGIC
  );
  attribute C_FAMILY : string;
  attribute C_FAMILY of design_1_mii_to_rmii_0_0_mii_to_rmii : entity is "zynq";
  attribute C_FIXED_SPEED : string;
  attribute C_FIXED_SPEED of design_1_mii_to_rmii_0_0_mii_to_rmii : entity is "1'b0";
  attribute C_INCLUDE_BUF : integer;
  attribute C_INCLUDE_BUF of design_1_mii_to_rmii_0_0_mii_to_rmii : entity is 0;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of design_1_mii_to_rmii_0_0_mii_to_rmii : entity is "design_1_mii_to_rmii_0_0";
  attribute C_SPEED_100 : string;
  attribute C_SPEED_100 of design_1_mii_to_rmii_0_0_mii_to_rmii : entity is "1'b0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_mii_to_rmii_0_0_mii_to_rmii : entity is "yes";
  attribute hdl : string;
  attribute hdl of design_1_mii_to_rmii_0_0_mii_to_rmii : entity is "VHDL";
  attribute imp_netlist : string;
  attribute imp_netlist of design_1_mii_to_rmii_0_0_mii_to_rmii : entity is "TRUE";
  attribute ip_group : string;
  attribute ip_group of design_1_mii_to_rmii_0_0_mii_to_rmii : entity is "LOGICORE";
  attribute iptype : string;
  attribute iptype of design_1_mii_to_rmii_0_0_mii_to_rmii : entity is "IP";
  attribute style : string;
  attribute style of design_1_mii_to_rmii_0_0_mii_to_rmii : entity is "HDL";
end design_1_mii_to_rmii_0_0_mii_to_rmii;

architecture STRUCTURE of design_1_mii_to_rmii_0_0_mii_to_rmii is
  signal \RMII_AGILE.I_RX_n_0\ : STD_LOGIC;
  signal \RMII_AGILE.I_RX_n_2\ : STD_LOGIC;
  signal \RMII_AGILE.I_TX_n_1\ : STD_LOGIC;
  signal \RMII_AGILE.I_TX_n_2\ : STD_LOGIC;
  signal \^rmii2phy_tx_en\ : STD_LOGIC;
  signal mac2Rmii_tx_en_d1 : STD_LOGIC;
  signal mac2Rmii_tx_en_d2 : STD_LOGIC;
  signal mac2Rmii_tx_er_d1 : STD_LOGIC;
  signal mac2Rmii_tx_er_d2 : STD_LOGIC;
  signal mac2Rmii_txd_d1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mac2Rmii_txd_d2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal phy2Rmii_crs_dv_d1 : STD_LOGIC;
  signal phy2Rmii_crs_dv_d2 : STD_LOGIC;
  signal phy2Rmii_rx_er_d1 : STD_LOGIC;
  signal phy2Rmii_rx_er_d2 : STD_LOGIC;
  signal phy2Rmii_rxd_d1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal phy2Rmii_rxd_d2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rmii2Mac_crs_i : STD_LOGIC;
  signal rmii2Mac_rx_clk_i : STD_LOGIC;
  signal rmii2Mac_rx_dv_i : STD_LOGIC;
  signal rmii2Mac_rx_er_i : STD_LOGIC;
  signal rmii2Mac_rxd_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rmii2Mac_tx_clk_i : STD_LOGIC;
  signal \rst_n_d_reg_n_0_[0]\ : STD_LOGIC;
  signal sync_rst_n : STD_LOGIC;
  attribute sigis : string;
  attribute sigis of ref_clk : signal is "CLK";
  attribute sigis of rst_n : signal is "RST";
begin
\RMII_AGILE.I_RX\: entity work.design_1_mii_to_rmii_0_0_rmii_rx_agile
     port map (
      D(3 downto 0) => rmii2Mac_rxd_i(3 downto 0),
      Q(1 downto 0) => phy2Rmii_rxd_d2(1 downto 0),
      Rx_cary_sense_reg => \RMII_AGILE.I_RX_n_2\,
      SR(0) => \RMII_AGILE.I_RX_n_0\,
      mac2Rmii_tx_en_d2 => mac2Rmii_tx_en_d2,
      phy2Rmii_crs_dv_d2 => phy2Rmii_crs_dv_d2,
      phy2Rmii_rx_er_d2 => phy2Rmii_rx_er_d2,
      ref_clk => ref_clk,
      rmii2Mac_crs_i => rmii2Mac_crs_i,
      rmii2Mac_rx_clk_i => rmii2Mac_rx_clk_i,
      rmii2Mac_rx_dv_i => rmii2Mac_rx_dv_i,
      rmii2Mac_rx_er_i => rmii2Mac_rx_er_i,
      \sample_rxd_cnt_reg[3]\(0) => sync_rst_n
    );
\RMII_AGILE.I_TX\: entity work.design_1_mii_to_rmii_0_0_rmii_tx_agile
     port map (
      Q(3 downto 0) => mac2Rmii_txd_d2(3 downto 0),
      Rmii2Phy_tx_en => \^rmii2phy_tx_en\,
      \Rmii2Phy_txd_reg[1]_0\(1) => \RMII_AGILE.I_TX_n_1\,
      \Rmii2Phy_txd_reg[1]_0\(0) => \RMII_AGILE.I_TX_n_2\,
      SR(0) => \RMII_AGILE.I_RX_n_0\,
      mac2Rmii_tx_en_d2 => mac2Rmii_tx_en_d2,
      mac2Rmii_tx_er_d2 => mac2Rmii_tx_er_d2,
      ref_clk => ref_clk,
      rmii2Mac_tx_clk_i => rmii2Mac_tx_clk_i
    );
mac2Rmii_tx_en_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => mac2rmii_tx_en,
      Q => mac2Rmii_tx_en_d1,
      R => \RMII_AGILE.I_RX_n_0\
    );
mac2Rmii_tx_en_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => mac2Rmii_tx_en_d1,
      Q => mac2Rmii_tx_en_d2,
      R => \RMII_AGILE.I_RX_n_0\
    );
mac2Rmii_tx_er_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => mac2rmii_tx_er,
      Q => mac2Rmii_tx_er_d1,
      R => \RMII_AGILE.I_RX_n_0\
    );
mac2Rmii_tx_er_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => mac2Rmii_tx_er_d1,
      Q => mac2Rmii_tx_er_d2,
      R => \RMII_AGILE.I_RX_n_0\
    );
\mac2Rmii_txd_d1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => mac2rmii_txd(0),
      Q => mac2Rmii_txd_d1(0),
      R => \RMII_AGILE.I_RX_n_0\
    );
\mac2Rmii_txd_d1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => mac2rmii_txd(1),
      Q => mac2Rmii_txd_d1(1),
      R => \RMII_AGILE.I_RX_n_0\
    );
\mac2Rmii_txd_d1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => mac2rmii_txd(2),
      Q => mac2Rmii_txd_d1(2),
      R => \RMII_AGILE.I_RX_n_0\
    );
\mac2Rmii_txd_d1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => mac2rmii_txd(3),
      Q => mac2Rmii_txd_d1(3),
      R => \RMII_AGILE.I_RX_n_0\
    );
\mac2Rmii_txd_d2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => mac2Rmii_txd_d1(0),
      Q => mac2Rmii_txd_d2(0),
      R => \RMII_AGILE.I_RX_n_0\
    );
\mac2Rmii_txd_d2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => mac2Rmii_txd_d1(1),
      Q => mac2Rmii_txd_d2(1),
      R => \RMII_AGILE.I_RX_n_0\
    );
\mac2Rmii_txd_d2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => mac2Rmii_txd_d1(2),
      Q => mac2Rmii_txd_d2(2),
      R => \RMII_AGILE.I_RX_n_0\
    );
\mac2Rmii_txd_d2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => mac2Rmii_txd_d1(3),
      Q => mac2Rmii_txd_d2(3),
      R => \RMII_AGILE.I_RX_n_0\
    );
phy2Rmii_crs_dv_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => phy2rmii_crs_dv,
      Q => phy2Rmii_crs_dv_d1,
      R => \RMII_AGILE.I_RX_n_0\
    );
phy2Rmii_crs_dv_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => phy2Rmii_crs_dv_d1,
      Q => phy2Rmii_crs_dv_d2,
      R => \RMII_AGILE.I_RX_n_0\
    );
phy2Rmii_rx_er_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => phy2rmii_rx_er,
      Q => phy2Rmii_rx_er_d1,
      R => \RMII_AGILE.I_RX_n_0\
    );
phy2Rmii_rx_er_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => phy2Rmii_rx_er_d1,
      Q => phy2Rmii_rx_er_d2,
      R => \RMII_AGILE.I_RX_n_0\
    );
\phy2Rmii_rxd_d1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => phy2rmii_rxd(0),
      Q => phy2Rmii_rxd_d1(0),
      R => \RMII_AGILE.I_RX_n_0\
    );
\phy2Rmii_rxd_d1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => phy2rmii_rxd(1),
      Q => phy2Rmii_rxd_d1(1),
      R => \RMII_AGILE.I_RX_n_0\
    );
\phy2Rmii_rxd_d2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => phy2Rmii_rxd_d1(0),
      Q => phy2Rmii_rxd_d2(0),
      R => \RMII_AGILE.I_RX_n_0\
    );
\phy2Rmii_rxd_d2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => phy2Rmii_rxd_d1(1),
      Q => phy2Rmii_rxd_d2(1),
      R => \RMII_AGILE.I_RX_n_0\
    );
rmii2mac_col_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \RMII_AGILE.I_RX_n_2\,
      Q => rmii2mac_col,
      R => \RMII_AGILE.I_RX_n_0\
    );
rmii2mac_crs_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => rmii2Mac_crs_i,
      Q => rmii2mac_crs,
      R => \RMII_AGILE.I_RX_n_0\
    );
rmii2mac_rx_clk_bi_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => rmii2Mac_rx_clk_i,
      Q => rmii2mac_rx_clk,
      R => \RMII_AGILE.I_RX_n_0\
    );
rmii2mac_rx_dv_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => rmii2Mac_rx_dv_i,
      Q => rmii2mac_rx_dv,
      R => \RMII_AGILE.I_RX_n_0\
    );
rmii2mac_rx_er_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => rmii2Mac_rx_er_i,
      Q => rmii2mac_rx_er,
      R => \RMII_AGILE.I_RX_n_0\
    );
\rmii2mac_rxd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => rmii2Mac_rxd_i(0),
      Q => rmii2mac_rxd(0),
      R => \RMII_AGILE.I_RX_n_0\
    );
\rmii2mac_rxd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => rmii2Mac_rxd_i(1),
      Q => rmii2mac_rxd(1),
      R => \RMII_AGILE.I_RX_n_0\
    );
\rmii2mac_rxd_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => rmii2Mac_rxd_i(2),
      Q => rmii2mac_rxd(2),
      R => \RMII_AGILE.I_RX_n_0\
    );
\rmii2mac_rxd_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => rmii2Mac_rxd_i(3),
      Q => rmii2mac_rxd(3),
      R => \RMII_AGILE.I_RX_n_0\
    );
rmii2mac_tx_clk_bi_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => rmii2Mac_tx_clk_i,
      Q => rmii2mac_tx_clk,
      R => \RMII_AGILE.I_RX_n_0\
    );
rmii2phy_tx_en_reg: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \^rmii2phy_tx_en\,
      Q => rmii2phy_tx_en,
      R => \RMII_AGILE.I_RX_n_0\
    );
\rmii2phy_txd_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \RMII_AGILE.I_TX_n_2\,
      Q => rmii2phy_txd(0),
      R => \RMII_AGILE.I_RX_n_0\
    );
\rmii2phy_txd_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \RMII_AGILE.I_TX_n_1\,
      Q => rmii2phy_txd(1),
      R => \RMII_AGILE.I_RX_n_0\
    );
\rst_n_d_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => rst_n,
      Q => \rst_n_d_reg_n_0_[0]\,
      R => '0'
    );
\rst_n_d_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ref_clk,
      CE => '1',
      D => \rst_n_d_reg_n_0_[0]\,
      Q => sync_rst_n,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_mii_to_rmii_0_0 is
  port (
    rst_n : in STD_LOGIC;
    ref_clk : in STD_LOGIC;
    mac2rmii_tx_en : in STD_LOGIC;
    mac2rmii_txd : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mac2rmii_tx_er : in STD_LOGIC;
    rmii2mac_tx_clk : out STD_LOGIC;
    rmii2mac_rx_clk : out STD_LOGIC;
    rmii2mac_col : out STD_LOGIC;
    rmii2mac_crs : out STD_LOGIC;
    rmii2mac_rx_dv : out STD_LOGIC;
    rmii2mac_rx_er : out STD_LOGIC;
    rmii2mac_rxd : out STD_LOGIC_VECTOR ( 3 downto 0 );
    phy2rmii_crs_dv : in STD_LOGIC;
    phy2rmii_rx_er : in STD_LOGIC;
    phy2rmii_rxd : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rmii2phy_txd : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rmii2phy_tx_en : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_mii_to_rmii_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_mii_to_rmii_0_0 : entity is "design_1_mii_to_rmii_0_0,mii_to_rmii,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_mii_to_rmii_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_mii_to_rmii_0_0 : entity is "mii_to_rmii,Vivado 2018.3";
end design_1_mii_to_rmii_0_0;

architecture STRUCTURE of design_1_mii_to_rmii_0_0 is
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_FIXED_SPEED : string;
  attribute C_FIXED_SPEED of U0 : label is "1'b0";
  attribute C_INCLUDE_BUF : integer;
  attribute C_INCLUDE_BUF of U0 : label is 0;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of U0 : label is "design_1_mii_to_rmii_0_0";
  attribute C_SPEED_100 : string;
  attribute C_SPEED_100 of U0 : label is "1'b0";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute hdl : string;
  attribute hdl of U0 : label is "VHDL";
  attribute imp_netlist : string;
  attribute imp_netlist of U0 : label is "TRUE";
  attribute ip_group : string;
  attribute ip_group of U0 : label is "LOGICORE";
  attribute iptype : string;
  attribute iptype of U0 : label is "IP";
  attribute style : string;
  attribute style of U0 : label is "HDL";
  attribute x_interface_info : string;
  attribute x_interface_info of mac2rmii_tx_en : signal is "xilinx.com:interface:mii:1.0 MII TX_EN";
  attribute x_interface_info of mac2rmii_tx_er : signal is "xilinx.com:interface:mii:1.0 MII TX_ER";
  attribute x_interface_info of phy2rmii_crs_dv : signal is "xilinx.com:interface:rmii:1.0 RMII_PHY_M CRS_DV";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of phy2rmii_crs_dv : signal is "XIL_INTERFACENAME RMII_PHY_M, BOARD.ASSOCIATED_PARAM RMII_BOARD_INTERFACE";
  attribute x_interface_info of phy2rmii_rx_er : signal is "xilinx.com:interface:rmii:1.0 RMII_PHY_M RX_ER";
  attribute x_interface_info of ref_clk : signal is "xilinx.com:signal:clock:1.0 clock CLK";
  attribute x_interface_parameter of ref_clk : signal is "XIL_INTERFACENAME clock, BOARD.ASSOCIATED_PARAM REF_CLK_BOARD_INTERFACE, FREQ_HZ 125000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of rmii2mac_col : signal is "xilinx.com:interface:mii:1.0 MII COL";
  attribute x_interface_info of rmii2mac_crs : signal is "xilinx.com:interface:mii:1.0 MII CRS";
  attribute x_interface_info of rmii2mac_rx_clk : signal is "xilinx.com:interface:mii:1.0 MII RX_CLK";
  attribute x_interface_info of rmii2mac_rx_dv : signal is "xilinx.com:interface:mii:1.0 MII RX_DV";
  attribute x_interface_info of rmii2mac_rx_er : signal is "xilinx.com:interface:mii:1.0 MII RX_ER";
  attribute x_interface_info of rmii2mac_tx_clk : signal is "xilinx.com:interface:mii:1.0 MII TX_CLK";
  attribute x_interface_info of rmii2phy_tx_en : signal is "xilinx.com:interface:rmii:1.0 RMII_PHY_M TX_EN";
  attribute x_interface_info of rst_n : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst_n : signal is "XIL_INTERFACENAME rst, BOARD.ASSOCIATED_PARAM RESET_BOARD_INTERFACE, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of mac2rmii_txd : signal is "xilinx.com:interface:mii:1.0 MII TXD";
  attribute x_interface_info of phy2rmii_rxd : signal is "xilinx.com:interface:rmii:1.0 RMII_PHY_M RXD";
  attribute x_interface_info of rmii2mac_rxd : signal is "xilinx.com:interface:mii:1.0 MII RXD";
  attribute x_interface_info of rmii2phy_txd : signal is "xilinx.com:interface:rmii:1.0 RMII_PHY_M TXD";
begin
U0: entity work.design_1_mii_to_rmii_0_0_mii_to_rmii
     port map (
      mac2rmii_tx_en => mac2rmii_tx_en,
      mac2rmii_tx_er => mac2rmii_tx_er,
      mac2rmii_txd(3 downto 0) => mac2rmii_txd(3 downto 0),
      phy2rmii_crs_dv => phy2rmii_crs_dv,
      phy2rmii_rx_er => phy2rmii_rx_er,
      phy2rmii_rxd(1 downto 0) => phy2rmii_rxd(1 downto 0),
      ref_clk => ref_clk,
      rmii2mac_col => rmii2mac_col,
      rmii2mac_crs => rmii2mac_crs,
      rmii2mac_rx_clk => rmii2mac_rx_clk,
      rmii2mac_rx_dv => rmii2mac_rx_dv,
      rmii2mac_rx_er => rmii2mac_rx_er,
      rmii2mac_rxd(3 downto 0) => rmii2mac_rxd(3 downto 0),
      rmii2mac_tx_clk => rmii2mac_tx_clk,
      rmii2phy_tx_en => rmii2phy_tx_en,
      rmii2phy_txd(1 downto 0) => rmii2phy_txd(1 downto 0),
      rst_n => rst_n
    );
end STRUCTURE;
