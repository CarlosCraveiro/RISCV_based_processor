-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "01/07/2023 17:27:35"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DE10_LITE_Golden_Top IS
    PORT (
	MAX10_CLK1_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_R : OUT std_logic_vector(3 DOWNTO 0);
	VGA_G : OUT std_logic_vector(3 DOWNTO 0);
	VGA_B : OUT std_logic_vector(3 DOWNTO 0)
	);
END DE10_LITE_Golden_Top;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[6]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[8]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[9]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[7]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[7]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_HS	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_VS	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[0]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[1]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[2]	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[3]	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[0]	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[1]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[2]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[3]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[0]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[1]	=>  Location: PIN_T1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[2]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[3]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- MAX10_CLK1_50	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF DE10_LITE_Golden_Top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_MAX10_CLK1_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL \Memory0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Memory0|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Memory0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Memory0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Memory0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Memory0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \VGA0|CGROM|char_gen_rom|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \VGA0|CGROM|char_gen_rom|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \VGA0|format_rom|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \VGA0|format_rom|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \VGA0|clock_25MHz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CNT0|q[25]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MAX10_CLK1_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[7]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[7]~output_o\ : std_logic;
SIGNAL \VGA_HS~output_o\ : std_logic;
SIGNAL \VGA_VS~output_o\ : std_logic;
SIGNAL \VGA_R[0]~output_o\ : std_logic;
SIGNAL \VGA_R[1]~output_o\ : std_logic;
SIGNAL \VGA_R[2]~output_o\ : std_logic;
SIGNAL \VGA_R[3]~output_o\ : std_logic;
SIGNAL \VGA_G[0]~output_o\ : std_logic;
SIGNAL \VGA_G[1]~output_o\ : std_logic;
SIGNAL \VGA_G[2]~output_o\ : std_logic;
SIGNAL \VGA_G[3]~output_o\ : std_logic;
SIGNAL \VGA_B[0]~output_o\ : std_logic;
SIGNAL \VGA_B[1]~output_o\ : std_logic;
SIGNAL \VGA_B[2]~output_o\ : std_logic;
SIGNAL \VGA_B[3]~output_o\ : std_logic;
SIGNAL \MAX10_CLK1_50~input_o\ : std_logic;
SIGNAL \MAX10_CLK1_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \CNT0|q[0]~75_combout\ : std_logic;
SIGNAL \CNT0|q[1]~25_combout\ : std_logic;
SIGNAL \CNT0|q[1]~26\ : std_logic;
SIGNAL \CNT0|q[2]~27_combout\ : std_logic;
SIGNAL \CNT0|q[2]~28\ : std_logic;
SIGNAL \CNT0|q[3]~29_combout\ : std_logic;
SIGNAL \CNT0|q[3]~30\ : std_logic;
SIGNAL \CNT0|q[4]~31_combout\ : std_logic;
SIGNAL \CNT0|q[4]~32\ : std_logic;
SIGNAL \CNT0|q[5]~33_combout\ : std_logic;
SIGNAL \CNT0|q[5]~34\ : std_logic;
SIGNAL \CNT0|q[6]~35_combout\ : std_logic;
SIGNAL \CNT0|q[6]~36\ : std_logic;
SIGNAL \CNT0|q[7]~37_combout\ : std_logic;
SIGNAL \CNT0|q[7]~38\ : std_logic;
SIGNAL \CNT0|q[8]~39_combout\ : std_logic;
SIGNAL \CNT0|q[8]~40\ : std_logic;
SIGNAL \CNT0|q[9]~41_combout\ : std_logic;
SIGNAL \CNT0|q[9]~42\ : std_logic;
SIGNAL \CNT0|q[10]~43_combout\ : std_logic;
SIGNAL \CNT0|q[10]~44\ : std_logic;
SIGNAL \CNT0|q[11]~45_combout\ : std_logic;
SIGNAL \CNT0|q[11]~46\ : std_logic;
SIGNAL \CNT0|q[12]~47_combout\ : std_logic;
SIGNAL \CNT0|q[12]~48\ : std_logic;
SIGNAL \CNT0|q[13]~49_combout\ : std_logic;
SIGNAL \CNT0|q[13]~50\ : std_logic;
SIGNAL \CNT0|q[14]~51_combout\ : std_logic;
SIGNAL \CNT0|q[14]~52\ : std_logic;
SIGNAL \CNT0|q[15]~53_combout\ : std_logic;
SIGNAL \CNT0|q[15]~54\ : std_logic;
SIGNAL \CNT0|q[16]~55_combout\ : std_logic;
SIGNAL \CNT0|q[16]~56\ : std_logic;
SIGNAL \CNT0|q[17]~57_combout\ : std_logic;
SIGNAL \CNT0|q[17]~58\ : std_logic;
SIGNAL \CNT0|q[18]~59_combout\ : std_logic;
SIGNAL \CNT0|q[18]~60\ : std_logic;
SIGNAL \CNT0|q[19]~61_combout\ : std_logic;
SIGNAL \CNT0|q[19]~62\ : std_logic;
SIGNAL \CNT0|q[20]~63_combout\ : std_logic;
SIGNAL \CNT0|q[20]~64\ : std_logic;
SIGNAL \CNT0|q[21]~65_combout\ : std_logic;
SIGNAL \CNT0|q[21]~66\ : std_logic;
SIGNAL \CNT0|q[22]~67_combout\ : std_logic;
SIGNAL \CNT0|q[22]~68\ : std_logic;
SIGNAL \CNT0|q[23]~69_combout\ : std_logic;
SIGNAL \CNT0|q[23]~70\ : std_logic;
SIGNAL \CNT0|q[24]~71_combout\ : std_logic;
SIGNAL \CNT0|q[24]~72\ : std_logic;
SIGNAL \CNT0|q[25]~73_combout\ : std_logic;
SIGNAL \CNT0|q[25]~clkctrl_outclk\ : std_logic;
SIGNAL \FSM0|cseq|Mux0~1_combout\ : std_logic;
SIGNAL \FSM0|cseq|Mux0~2_combout\ : std_logic;
SIGNAL \FSM0|aludecod|Selector0~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \FSM0|aludecod|Decoder0~1_combout\ : std_logic;
SIGNAL \FSM0|pc_write~combout\ : std_logic;
SIGNAL \FSM0|cu_decoder|Mux2~0_combout\ : std_logic;
SIGNAL \FSM0|aludecod|Decoder0~0_combout\ : std_logic;
SIGNAL \RegBank0|RD1[2]~35_combout\ : std_logic;
SIGNAL \FSM0|cu_decoder|reg_wr~0_combout\ : std_logic;
SIGNAL \RegBank0|Decoder0~1_combout\ : std_logic;
SIGNAL \RegBank0|register_array[5][8]~q\ : std_logic;
SIGNAL \RegBank0|Decoder0~3_combout\ : std_logic;
SIGNAL \RegBank0|register_array[7][8]~q\ : std_logic;
SIGNAL \RegBank0|Decoder0~0_combout\ : std_logic;
SIGNAL \RegBank0|register_array[6][8]~q\ : std_logic;
SIGNAL \RegBank0|Decoder0~2_combout\ : std_logic;
SIGNAL \RegBank0|register_array[4][8]~q\ : std_logic;
SIGNAL \RegBank0|RD1[8]~62_combout\ : std_logic;
SIGNAL \RegBank0|RD1[8]~63_combout\ : std_logic;
SIGNAL \RegBank0|Decoder0~5_combout\ : std_logic;
SIGNAL \RegBank0|register_array[1][8]~q\ : std_logic;
SIGNAL \RegBank0|RD1[2]~34_combout\ : std_logic;
SIGNAL \RegBank0|RD1[8]~64_combout\ : std_logic;
SIGNAL \RegBank0|Decoder0~4_combout\ : std_logic;
SIGNAL \RegBank0|register_array[2][8]~q\ : std_logic;
SIGNAL \RegBank0|Decoder0~6_combout\ : std_logic;
SIGNAL \RegBank0|register_array[3][8]~q\ : std_logic;
SIGNAL \RegBank0|RD1[8]~65_combout\ : std_logic;
SIGNAL \RegBank0|RD1[8]~105_combout\ : std_logic;
SIGNAL \FSM0|cu_decoder|Mux4~0_combout\ : std_logic;
SIGNAL \SrcA[8]~7_combout\ : std_logic;
SIGNAL \FSM0|aludecod|Selector2~0_combout\ : std_logic;
SIGNAL \FSM0|pc_write~0_combout\ : std_logic;
SIGNAL \FSM0|cu_decoder|Decoder2~0_combout\ : std_logic;
SIGNAL \FSM0|aludecod|Selector1~0_combout\ : std_logic;
SIGNAL \RegBank0|RD2[13]~35_combout\ : std_logic;
SIGNAL \RegBank0|register_array[7][10]~q\ : std_logic;
SIGNAL \RegBank0|register_array[6][10]~q\ : std_logic;
SIGNAL \RegBank0|register_array[4][10]~q\ : std_logic;
SIGNAL \RegBank0|RD2[10]~54_combout\ : std_logic;
SIGNAL \RegBank0|register_array[5][10]~q\ : std_logic;
SIGNAL \RegBank0|RD2[10]~55_combout\ : std_logic;
SIGNAL \RegBank0|register_array[1][10]~q\ : std_logic;
SIGNAL \RegBank0|RD2[10]~56_combout\ : std_logic;
SIGNAL \RegBank0|register_array[3][10]~q\ : std_logic;
SIGNAL \RegBank0|register_array[2][10]~q\ : std_logic;
SIGNAL \RegBank0|RD2[10]~57_combout\ : std_logic;
SIGNAL \RegBank0|RD2[10]~103_combout\ : std_logic;
SIGNAL \FSM0|cu_decoder|Mux1~0_combout\ : std_logic;
SIGNAL \SrcB[10]~6_combout\ : std_logic;
SIGNAL \SrcB[10]~7_combout\ : std_logic;
SIGNAL \SrcB[9]~8_combout\ : std_logic;
SIGNAL \RegBank0|register_array[3][9]~q\ : std_logic;
SIGNAL \RegBank0|register_array[2][9]~q\ : std_logic;
SIGNAL \RegBank0|register_array[1][9]~q\ : std_logic;
SIGNAL \RegBank0|RD2[9]~60_combout\ : std_logic;
SIGNAL \RegBank0|register_array[5][9]~q\ : std_logic;
SIGNAL \RegBank0|register_array[4][9]~q\ : std_logic;
SIGNAL \RegBank0|RD2[9]~58_combout\ : std_logic;
SIGNAL \RegBank0|register_array[7][9]~q\ : std_logic;
SIGNAL \RegBank0|register_array[6][9]~q\ : std_logic;
SIGNAL \RegBank0|RD2[9]~59_combout\ : std_logic;
SIGNAL \RegBank0|RD2[9]~61_combout\ : std_logic;
SIGNAL \RegBank0|RD2[9]~104_combout\ : std_logic;
SIGNAL \SrcB[9]~9_combout\ : std_logic;
SIGNAL \RegBank0|register_array[2][6]~q\ : std_logic;
SIGNAL \RegBank0|register_array[3][6]~q\ : std_logic;
SIGNAL \RegBank0|register_array[6][6]~q\ : std_logic;
SIGNAL \RegBank0|register_array[4][6]~q\ : std_logic;
SIGNAL \RegBank0|RD2[6]~70_combout\ : std_logic;
SIGNAL \RegBank0|register_array[7][6]~q\ : std_logic;
SIGNAL \RegBank0|register_array[5][6]~q\ : std_logic;
SIGNAL \RegBank0|RD2[6]~71_combout\ : std_logic;
SIGNAL \RegBank0|register_array[1][6]~q\ : std_logic;
SIGNAL \RegBank0|RD2[6]~72_combout\ : std_logic;
SIGNAL \RegBank0|RD2[6]~73_combout\ : std_logic;
SIGNAL \RegBank0|RD2[6]~107_combout\ : std_logic;
SIGNAL \RegBank0|register_array[3][7]~q\ : std_logic;
SIGNAL \RegBank0|register_array[4][7]~q\ : std_logic;
SIGNAL \RegBank0|register_array[5][7]~q\ : std_logic;
SIGNAL \RegBank0|RD1[7]~66_combout\ : std_logic;
SIGNAL \RegBank0|register_array[7][7]~q\ : std_logic;
SIGNAL \RegBank0|register_array[6][7]~q\ : std_logic;
SIGNAL \RegBank0|RD1[7]~67_combout\ : std_logic;
SIGNAL \RegBank0|register_array[1][7]~q\ : std_logic;
SIGNAL \RegBank0|register_array[2][7]~q\ : std_logic;
SIGNAL \RegBank0|RD1[7]~68_combout\ : std_logic;
SIGNAL \RegBank0|RD1[7]~69_combout\ : std_logic;
SIGNAL \RegBank0|RD1[7]~106_combout\ : std_logic;
SIGNAL \RegBank0|RD1[9]~60_combout\ : std_logic;
SIGNAL \RegBank0|RD1[9]~58_combout\ : std_logic;
SIGNAL \RegBank0|RD1[9]~59_combout\ : std_logic;
SIGNAL \RegBank0|RD1[9]~61_combout\ : std_logic;
SIGNAL \RegBank0|RD1[9]~104_combout\ : std_logic;
SIGNAL \RegBank0|RD1[10]~54_combout\ : std_logic;
SIGNAL \RegBank0|RD1[10]~55_combout\ : std_logic;
SIGNAL \RegBank0|RD1[10]~56_combout\ : std_logic;
SIGNAL \RegBank0|RD1[10]~57_combout\ : std_logic;
SIGNAL \RegBank0|RD1[10]~103_combout\ : std_logic;
SIGNAL \RegBank0|register_array[2][11]~q\ : std_logic;
SIGNAL \RegBank0|register_array[1][11]~q\ : std_logic;
SIGNAL \RegBank0|RD2[11]~52_combout\ : std_logic;
SIGNAL \RegBank0|register_array[3][11]~q\ : std_logic;
SIGNAL \RegBank0|register_array[5][11]~q\ : std_logic;
SIGNAL \RegBank0|RD2[11]~50_combout\ : std_logic;
SIGNAL \RegBank0|register_array[6][11]~q\ : std_logic;
SIGNAL \RegBank0|register_array[7][11]~q\ : std_logic;
SIGNAL \RegBank0|RD2[11]~51_combout\ : std_logic;
SIGNAL \RegBank0|RD2[11]~53_combout\ : std_logic;
SIGNAL \RegBank0|RD2[11]~102_combout\ : std_logic;
SIGNAL \SrcB[11]~4_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~19\ : std_logic;
SIGNAL \ALU0|twc|Add0~20_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~34_combout\ : std_logic;
SIGNAL \SrcA[11]~4_combout\ : std_logic;
SIGNAL \SrcA[10]~5_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~16_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~36_combout\ : std_logic;
SIGNAL \SrcA[9]~6_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~14_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~37_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~12_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~38_combout\ : std_logic;
SIGNAL \SrcA[7]~8_combout\ : std_logic;
SIGNAL \SrcB[2]~12_combout\ : std_logic;
SIGNAL \RegBank0|register_array[2][5]~q\ : std_logic;
SIGNAL \RegBank0|register_array[1][5]~q\ : std_logic;
SIGNAL \RegBank0|RD2[5]~76_combout\ : std_logic;
SIGNAL \RegBank0|register_array[5][5]~q\ : std_logic;
SIGNAL \RegBank0|register_array[4][5]~q\ : std_logic;
SIGNAL \RegBank0|RD2[5]~74_combout\ : std_logic;
SIGNAL \RegBank0|register_array[6][5]~q\ : std_logic;
SIGNAL \RegBank0|register_array[7][5]~q\ : std_logic;
SIGNAL \RegBank0|RD2[5]~75_combout\ : std_logic;
SIGNAL \RegBank0|register_array[3][5]~q\ : std_logic;
SIGNAL \RegBank0|RD2[5]~77_combout\ : std_logic;
SIGNAL \RegBank0|RD2[5]~108_combout\ : std_logic;
SIGNAL \RegBank0|register_array[1][12]~q\ : std_logic;
SIGNAL \RegBank0|register_array[6][12]~q\ : std_logic;
SIGNAL \RegBank0|register_array[4][12]~q\ : std_logic;
SIGNAL \RegBank0|RD2[12]~46_combout\ : std_logic;
SIGNAL \RegBank0|register_array[5][12]~q\ : std_logic;
SIGNAL \RegBank0|register_array[7][12]~q\ : std_logic;
SIGNAL \RegBank0|RD2[12]~47_combout\ : std_logic;
SIGNAL \RegBank0|RD2[12]~48_combout\ : std_logic;
SIGNAL \RegBank0|register_array[2][12]~q\ : std_logic;
SIGNAL \RegBank0|RD2[12]~49_combout\ : std_logic;
SIGNAL \RegBank0|RD2[12]~101_combout\ : std_logic;
SIGNAL \SrcB[12]~3_combout\ : std_logic;
SIGNAL \SrcA[12]~3_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[12]~31_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~21\ : std_logic;
SIGNAL \ALU0|twc|Add0~22_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~33_combout\ : std_logic;
SIGNAL \ALU0|Sum[11]~23\ : std_logic;
SIGNAL \ALU0|Sum[12]~24_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[12]~44_combout\ : std_logic;
SIGNAL \ALU0|m2|m3|out~8_combout\ : std_logic;
SIGNAL \Result[12]~6_combout\ : std_logic;
SIGNAL \Result[12]~7_combout\ : std_logic;
SIGNAL \RegBank0|register_array[3][12]~q\ : std_logic;
SIGNAL \RegBank0|RD1[12]~46_combout\ : std_logic;
SIGNAL \RegBank0|RD1[12]~47_combout\ : std_logic;
SIGNAL \RegBank0|RD1[12]~48_combout\ : std_logic;
SIGNAL \RegBank0|RD1[12]~49_combout\ : std_logic;
SIGNAL \RegBank0|RD1[12]~101_combout\ : std_logic;
SIGNAL \RegBank0|register_array[5][13]~q\ : std_logic;
SIGNAL \RegBank0|register_array[4][13]~q\ : std_logic;
SIGNAL \RegBank0|RD2[13]~42_combout\ : std_logic;
SIGNAL \RegBank0|register_array[6][13]~q\ : std_logic;
SIGNAL \RegBank0|register_array[7][13]~q\ : std_logic;
SIGNAL \RegBank0|RD2[13]~43_combout\ : std_logic;
SIGNAL \RegBank0|register_array[1][13]~q\ : std_logic;
SIGNAL \RegBank0|register_array[2][13]~q\ : std_logic;
SIGNAL \RegBank0|RD2[13]~44_combout\ : std_logic;
SIGNAL \RegBank0|RD2[13]~45_combout\ : std_logic;
SIGNAL \RegBank0|RD2[13]~100_combout\ : std_logic;
SIGNAL \SrcB[13]~2_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~23\ : std_logic;
SIGNAL \ALU0|twc|Add0~24_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~32_combout\ : std_logic;
SIGNAL \SrcA[13]~2_combout\ : std_logic;
SIGNAL \ALU0|Sum[12]~25\ : std_logic;
SIGNAL \ALU0|Sum[13]~26_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[13]~30_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[13]~43_combout\ : std_logic;
SIGNAL \ALU0|m2|m3|out~7_combout\ : std_logic;
SIGNAL \Result[13]~4_combout\ : std_logic;
SIGNAL \Result[13]~5_combout\ : std_logic;
SIGNAL \RegBank0|register_array[3][13]~feeder_combout\ : std_logic;
SIGNAL \RegBank0|register_array[3][13]~q\ : std_logic;
SIGNAL \RegBank0|RD1[13]~44_combout\ : std_logic;
SIGNAL \RegBank0|RD1[13]~42_combout\ : std_logic;
SIGNAL \RegBank0|RD1[13]~43_combout\ : std_logic;
SIGNAL \RegBank0|RD1[13]~45_combout\ : std_logic;
SIGNAL \RegBank0|RD1[13]~100_combout\ : std_logic;
SIGNAL \Result[15]~0_combout\ : std_logic;
SIGNAL \Result[15]~1_combout\ : std_logic;
SIGNAL \RegBank0|register_array[5][15]~q\ : std_logic;
SIGNAL \RegBank0|register_array[4][15]~q\ : std_logic;
SIGNAL \RegBank0|RD1[15]~32_combout\ : std_logic;
SIGNAL \RegBank0|register_array[6][15]~q\ : std_logic;
SIGNAL \RegBank0|register_array[7][15]~q\ : std_logic;
SIGNAL \RegBank0|RD1[15]~33_combout\ : std_logic;
SIGNAL \RegBank0|register_array[1][15]~q\ : std_logic;
SIGNAL \RegBank0|register_array[2][15]~q\ : std_logic;
SIGNAL \RegBank0|RD1[15]~36_combout\ : std_logic;
SIGNAL \RegBank0|register_array[3][15]~q\ : std_logic;
SIGNAL \RegBank0|RD1[15]~37_combout\ : std_logic;
SIGNAL \RegBank0|RD1[15]~98_combout\ : std_logic;
SIGNAL \SrcB[5]~15_combout\ : std_logic;
SIGNAL \RegBank0|register_array[2][4]~q\ : std_logic;
SIGNAL \RegBank0|register_array[1][4]~q\ : std_logic;
SIGNAL \RegBank0|register_array[6][4]~q\ : std_logic;
SIGNAL \RegBank0|register_array[4][4]~q\ : std_logic;
SIGNAL \RegBank0|RD2[4]~78_combout\ : std_logic;
SIGNAL \RegBank0|register_array[5][4]~q\ : std_logic;
SIGNAL \RegBank0|register_array[7][4]~q\ : std_logic;
SIGNAL \RegBank0|RD2[4]~79_combout\ : std_logic;
SIGNAL \RegBank0|RD2[4]~80_combout\ : std_logic;
SIGNAL \RegBank0|register_array[3][4]~q\ : std_logic;
SIGNAL \RegBank0|RD2[4]~81_combout\ : std_logic;
SIGNAL \RegBank0|RD2[4]~109_combout\ : std_logic;
SIGNAL \SrcB[4]~16_combout\ : std_logic;
SIGNAL \RegBank0|register_array[2][3]~q\ : std_logic;
SIGNAL \RegBank0|register_array[1][3]~q\ : std_logic;
SIGNAL \RegBank0|RD2[3]~84_combout\ : std_logic;
SIGNAL \RegBank0|register_array[3][3]~q\ : std_logic;
SIGNAL \RegBank0|register_array[5][3]~q\ : std_logic;
SIGNAL \RegBank0|register_array[4][3]~q\ : std_logic;
SIGNAL \RegBank0|RD2[3]~82_combout\ : std_logic;
SIGNAL \RegBank0|register_array[6][3]~q\ : std_logic;
SIGNAL \RegBank0|register_array[7][3]~q\ : std_logic;
SIGNAL \RegBank0|RD2[3]~83_combout\ : std_logic;
SIGNAL \RegBank0|RD2[3]~85_combout\ : std_logic;
SIGNAL \RegBank0|RD2[3]~110_combout\ : std_logic;
SIGNAL \RegBank0|register_array[1][1]~q\ : std_logic;
SIGNAL \RegBank0|RD2[1]~96_combout\ : std_logic;
SIGNAL \RegBank0|register_array[3][1]~q\ : std_logic;
SIGNAL \RegBank0|register_array[5][1]~q\ : std_logic;
SIGNAL \RegBank0|register_array[4][1]~q\ : std_logic;
SIGNAL \RegBank0|RD2[1]~94_combout\ : std_logic;
SIGNAL \RegBank0|register_array[6][1]~q\ : std_logic;
SIGNAL \RegBank0|register_array[7][1]~q\ : std_logic;
SIGNAL \RegBank0|RD2[1]~95_combout\ : std_logic;
SIGNAL \RegBank0|RD2[1]~97_combout\ : std_logic;
SIGNAL \RegBank0|RD2[1]~113_combout\ : std_logic;
SIGNAL \SrcB[1]~21_combout\ : std_logic;
SIGNAL \SrcB[1]~22_combout\ : std_logic;
SIGNAL \SrcA[1]~14_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[1]~41_combout\ : std_logic;
SIGNAL \ALU0|m2|m3|out[0]~5_combout\ : std_logic;
SIGNAL \SrcA[0]~15_combout\ : std_logic;
SIGNAL \ALU0|Sum[0]~0_combout\ : std_logic;
SIGNAL \ALU0|m2|m3|out[0]~3_combout\ : std_logic;
SIGNAL \ALU0|m2|m3|out[0]~4_combout\ : std_logic;
SIGNAL \ALU0|m2|m3|out[0]~19_combout\ : std_logic;
SIGNAL \Result[0]~30_combout\ : std_logic;
SIGNAL \Result[0]~31_combout\ : std_logic;
SIGNAL \RegBank0|register_array[7][0]~q\ : std_logic;
SIGNAL \RegBank0|register_array[5][0]~q\ : std_logic;
SIGNAL \RegBank0|register_array[4][0]~q\ : std_logic;
SIGNAL \RegBank0|register_array[6][0]~q\ : std_logic;
SIGNAL \RegBank0|RD2[0]~90_combout\ : std_logic;
SIGNAL \RegBank0|RD2[0]~91_combout\ : std_logic;
SIGNAL \RegBank0|register_array[1][0]~q\ : std_logic;
SIGNAL \RegBank0|RD2[0]~92_combout\ : std_logic;
SIGNAL \RegBank0|register_array[2][0]~q\ : std_logic;
SIGNAL \RegBank0|register_array[3][0]~q\ : std_logic;
SIGNAL \RegBank0|RD2[0]~93_combout\ : std_logic;
SIGNAL \RegBank0|RD2[0]~112_combout\ : std_logic;
SIGNAL \SrcB[0]~19_combout\ : std_logic;
SIGNAL \SrcB[0]~20_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~0_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~44_combout\ : std_logic;
SIGNAL \ALU0|Sum[0]~1\ : std_logic;
SIGNAL \ALU0|Sum[1]~2_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[1]~54_combout\ : std_logic;
SIGNAL \ALU0|m2|m3|out~18_combout\ : std_logic;
SIGNAL \Result[1]~28_combout\ : std_logic;
SIGNAL \Result[1]~29_combout\ : std_logic;
SIGNAL \RegBank0|register_array[2][1]~q\ : std_logic;
SIGNAL \RegBank0|RD1[1]~92_combout\ : std_logic;
SIGNAL \RegBank0|RD1[1]~90_combout\ : std_logic;
SIGNAL \RegBank0|RD1[1]~91_combout\ : std_logic;
SIGNAL \RegBank0|RD1[1]~93_combout\ : std_logic;
SIGNAL \RegBank0|RD1[1]~112_combout\ : std_logic;
SIGNAL \RegBank0|register_array[5][2]~q\ : std_logic;
SIGNAL \RegBank0|register_array[6][2]~q\ : std_logic;
SIGNAL \RegBank0|register_array[4][2]~q\ : std_logic;
SIGNAL \RegBank0|RD1[2]~86_combout\ : std_logic;
SIGNAL \RegBank0|register_array[7][2]~q\ : std_logic;
SIGNAL \RegBank0|RD1[2]~87_combout\ : std_logic;
SIGNAL \RegBank0|register_array[1][2]~q\ : std_logic;
SIGNAL \RegBank0|RD1[2]~88_combout\ : std_logic;
SIGNAL \RegBank0|register_array[2][2]~q\ : std_logic;
SIGNAL \RegBank0|register_array[3][2]~q\ : std_logic;
SIGNAL \RegBank0|RD1[2]~89_combout\ : std_logic;
SIGNAL \RegBank0|RD1[2]~111_combout\ : std_logic;
SIGNAL \RegBank0|RD1[3]~82_combout\ : std_logic;
SIGNAL \RegBank0|RD1[3]~83_combout\ : std_logic;
SIGNAL \RegBank0|RD1[3]~84_combout\ : std_logic;
SIGNAL \RegBank0|RD1[3]~85_combout\ : std_logic;
SIGNAL \RegBank0|RD1[3]~110_combout\ : std_logic;
SIGNAL \RegBank0|RD1[4]~78_combout\ : std_logic;
SIGNAL \RegBank0|RD1[4]~79_combout\ : std_logic;
SIGNAL \RegBank0|RD1[4]~80_combout\ : std_logic;
SIGNAL \RegBank0|RD1[4]~81_combout\ : std_logic;
SIGNAL \RegBank0|RD1[4]~109_combout\ : std_logic;
SIGNAL \SrcA[14]~1_combout\ : std_logic;
SIGNAL \RegBank0|register_array[2][14]~q\ : std_logic;
SIGNAL \RegBank0|register_array[4][14]~q\ : std_logic;
SIGNAL \RegBank0|register_array[6][14]~q\ : std_logic;
SIGNAL \RegBank0|RD2[14]~38_combout\ : std_logic;
SIGNAL \RegBank0|register_array[7][14]~q\ : std_logic;
SIGNAL \RegBank0|register_array[5][14]~q\ : std_logic;
SIGNAL \RegBank0|RD2[14]~39_combout\ : std_logic;
SIGNAL \RegBank0|register_array[1][14]~q\ : std_logic;
SIGNAL \RegBank0|RD2[14]~40_combout\ : std_logic;
SIGNAL \RegBank0|RD2[14]~41_combout\ : std_logic;
SIGNAL \RegBank0|RD2[14]~99_combout\ : std_logic;
SIGNAL \SrcB[14]~1_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~25\ : std_logic;
SIGNAL \ALU0|twc|Add0~26_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~31_combout\ : std_logic;
SIGNAL \ALU0|Sum[13]~27\ : std_logic;
SIGNAL \ALU0|Sum[14]~28_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[14]~29_combout\ : std_logic;
SIGNAL \ALU0|m2|m3|out~6_combout\ : std_logic;
SIGNAL \Result[14]~2_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[14]~42_combout\ : std_logic;
SIGNAL \Result[14]~3_combout\ : std_logic;
SIGNAL \RegBank0|register_array[3][14]~q\ : std_logic;
SIGNAL \RegBank0|RD1[14]~38_combout\ : std_logic;
SIGNAL \RegBank0|RD1[14]~39_combout\ : std_logic;
SIGNAL \RegBank0|RD1[14]~40_combout\ : std_logic;
SIGNAL \RegBank0|RD1[14]~41_combout\ : std_logic;
SIGNAL \RegBank0|RD1[14]~99_combout\ : std_logic;
SIGNAL \SrcB[3]~17_combout\ : std_logic;
SIGNAL \RegBank0|RD2[2]~86_combout\ : std_logic;
SIGNAL \RegBank0|RD2[2]~87_combout\ : std_logic;
SIGNAL \RegBank0|RD2[2]~88_combout\ : std_logic;
SIGNAL \RegBank0|RD2[2]~89_combout\ : std_logic;
SIGNAL \RegBank0|RD2[2]~111_combout\ : std_logic;
SIGNAL \SrcB[2]~18_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~1\ : std_logic;
SIGNAL \ALU0|twc|Add0~3\ : std_logic;
SIGNAL \ALU0|twc|Add0~5\ : std_logic;
SIGNAL \ALU0|twc|Add0~7\ : std_logic;
SIGNAL \ALU0|twc|Add0~9\ : std_logic;
SIGNAL \ALU0|twc|Add0~10_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~39_combout\ : std_logic;
SIGNAL \SrcA[5]~10_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~8_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~40_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~6_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~41_combout\ : std_logic;
SIGNAL \SrcA[4]~11_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~4_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~42_combout\ : std_logic;
SIGNAL \SrcA[3]~12_combout\ : std_logic;
SIGNAL \SrcA[2]~13_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~2_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~43_combout\ : std_logic;
SIGNAL \ALU0|Sum[1]~3\ : std_logic;
SIGNAL \ALU0|Sum[2]~5\ : std_logic;
SIGNAL \ALU0|Sum[3]~7\ : std_logic;
SIGNAL \ALU0|Sum[4]~9\ : std_logic;
SIGNAL \ALU0|Sum[5]~11\ : std_logic;
SIGNAL \ALU0|Sum[6]~13\ : std_logic;
SIGNAL \ALU0|Sum[7]~15\ : std_logic;
SIGNAL \ALU0|Sum[8]~17\ : std_logic;
SIGNAL \ALU0|Sum[9]~19\ : std_logic;
SIGNAL \ALU0|Sum[10]~21\ : std_logic;
SIGNAL \ALU0|Sum[11]~22_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[11]~32_combout\ : std_logic;
SIGNAL \ALU0|m2|m3|out~9_combout\ : std_logic;
SIGNAL \Result[11]~8_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[11]~45_combout\ : std_logic;
SIGNAL \Result[11]~9_combout\ : std_logic;
SIGNAL \RegBank0|register_array[4][11]~q\ : std_logic;
SIGNAL \RegBank0|RD1[11]~50_combout\ : std_logic;
SIGNAL \RegBank0|RD1[11]~51_combout\ : std_logic;
SIGNAL \RegBank0|RD1[11]~52_combout\ : std_logic;
SIGNAL \RegBank0|RD1[11]~53_combout\ : std_logic;
SIGNAL \RegBank0|RD1[11]~102_combout\ : std_logic;
SIGNAL \SrcB[6]~14_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~11\ : std_logic;
SIGNAL \ALU0|twc|Add0~13\ : std_logic;
SIGNAL \ALU0|twc|Add0~15\ : std_logic;
SIGNAL \ALU0|twc|Add0~17\ : std_logic;
SIGNAL \ALU0|twc|Add0~18_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~35_combout\ : std_logic;
SIGNAL \ALU0|Sum[10]~20_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[10]~33_combout\ : std_logic;
SIGNAL \ALU0|m2|m3|out~10_combout\ : std_logic;
SIGNAL \Result[10]~10_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[10]~46_combout\ : std_logic;
SIGNAL \Result[10]~11_combout\ : std_logic;
SIGNAL \Adr[10]~9_combout\ : std_logic;
SIGNAL \ALU0|Sum[9]~18_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[9]~34_combout\ : std_logic;
SIGNAL \ALU0|m2|m3|out~11_combout\ : std_logic;
SIGNAL \Result[9]~12_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[9]~47_combout\ : std_logic;
SIGNAL \Result[9]~13_combout\ : std_logic;
SIGNAL \Adr[9]~8_combout\ : std_logic;
SIGNAL \SrcB[10]~5_combout\ : std_logic;
SIGNAL \SrcB[8]~10_combout\ : std_logic;
SIGNAL \RegBank0|RD2[8]~62_combout\ : std_logic;
SIGNAL \RegBank0|RD2[8]~63_combout\ : std_logic;
SIGNAL \RegBank0|RD2[8]~64_combout\ : std_logic;
SIGNAL \RegBank0|RD2[8]~65_combout\ : std_logic;
SIGNAL \RegBank0|RD2[8]~105_combout\ : std_logic;
SIGNAL \SrcB[8]~11_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[8]~35_combout\ : std_logic;
SIGNAL \ALU0|Sum[8]~16_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[8]~48_combout\ : std_logic;
SIGNAL \ALU0|m2|m3|out~12_combout\ : std_logic;
SIGNAL \Result[8]~14_combout\ : std_logic;
SIGNAL \Result[8]~15_combout\ : std_logic;
SIGNAL \Adr[8]~7_combout\ : std_logic;
SIGNAL \RegBank0|RD2[13]~34_combout\ : std_logic;
SIGNAL \RegBank0|RD2[7]~68_combout\ : std_logic;
SIGNAL \RegBank0|RD2[7]~66_combout\ : std_logic;
SIGNAL \RegBank0|RD2[7]~67_combout\ : std_logic;
SIGNAL \RegBank0|RD2[7]~69_combout\ : std_logic;
SIGNAL \RegBank0|RD2[7]~106_combout\ : std_logic;
SIGNAL \SrcB[7]~13_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[7]~36_combout\ : std_logic;
SIGNAL \ALU0|Sum[7]~14_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[7]~49_combout\ : std_logic;
SIGNAL \ALU0|m2|m3|out~13_combout\ : std_logic;
SIGNAL \Result[7]~16_combout\ : std_logic;
SIGNAL \Result[7]~17_combout\ : std_logic;
SIGNAL \Adr[7]~6_combout\ : std_logic;
SIGNAL \RegBank0|RD1[6]~70_combout\ : std_logic;
SIGNAL \RegBank0|RD1[6]~71_combout\ : std_logic;
SIGNAL \RegBank0|RD1[6]~72_combout\ : std_logic;
SIGNAL \RegBank0|RD1[6]~73_combout\ : std_logic;
SIGNAL \RegBank0|RD1[6]~107_combout\ : std_logic;
SIGNAL \SrcA[6]~9_combout\ : std_logic;
SIGNAL \ALU0|Sum[6]~12_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[6]~37_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[6]~50_combout\ : std_logic;
SIGNAL \ALU0|m2|m3|out~14_combout\ : std_logic;
SIGNAL \Result[6]~18_combout\ : std_logic;
SIGNAL \Result[6]~19_combout\ : std_logic;
SIGNAL \Adr[6]~5_combout\ : std_logic;
SIGNAL \ALU0|Sum[5]~10_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[5]~38_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[5]~51_combout\ : std_logic;
SIGNAL \ALU0|m2|m3|out~15_combout\ : std_logic;
SIGNAL \Result[5]~20_combout\ : std_logic;
SIGNAL \Result[5]~21_combout\ : std_logic;
SIGNAL \Adr[5]~4_combout\ : std_logic;
SIGNAL \ALU0|m2|m3|out~1_combout\ : std_logic;
SIGNAL \ALU0|Sum[4]~8_combout\ : std_logic;
SIGNAL \ALU0|m2|m3|out~2_combout\ : std_logic;
SIGNAL \Result[4]~22_combout\ : std_logic;
SIGNAL \Result[4]~23_combout\ : std_logic;
SIGNAL \Adr[4]~3_combout\ : std_logic;
SIGNAL \ALU0|Sum[3]~6_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[3]~39_combout\ : std_logic;
SIGNAL \ALU0|m2|m3|out~16_combout\ : std_logic;
SIGNAL \Result[3]~24_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[3]~52_combout\ : std_logic;
SIGNAL \Result[3]~25_combout\ : std_logic;
SIGNAL \Adr[3]~2_combout\ : std_logic;
SIGNAL \FSM0|cseq|Mux0~0_combout\ : std_logic;
SIGNAL \FSM0|cseq|Mux0~3_combout\ : std_logic;
SIGNAL \FSM0|aludecod|WideOr1~0_combout\ : std_logic;
SIGNAL \ALU0|Sum[2]~4_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[2]~40_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[2]~53_combout\ : std_logic;
SIGNAL \ALU0|m2|m3|out~17_combout\ : std_logic;
SIGNAL \Result[2]~26_combout\ : std_logic;
SIGNAL \Result[2]~27_combout\ : std_logic;
SIGNAL \Adr[2]~1_combout\ : std_logic;
SIGNAL \FSM0|cseq|Mux1~0_combout\ : std_logic;
SIGNAL \FSM0|cseq|Mux1~1_combout\ : std_logic;
SIGNAL \FSM0|cseq|Mux1~2_combout\ : std_logic;
SIGNAL \FSM0|cseq|Mux1~3_combout\ : std_logic;
SIGNAL \FSM0|cu_decoder|Mux0~0_combout\ : std_logic;
SIGNAL \Adr[1]~0_combout\ : std_logic;
SIGNAL \Instr[7]~feeder_combout\ : std_logic;
SIGNAL \RegBank0|RD1[5]~76_combout\ : std_logic;
SIGNAL \RegBank0|RD1[5]~74_combout\ : std_logic;
SIGNAL \RegBank0|RD1[5]~75_combout\ : std_logic;
SIGNAL \RegBank0|RD1[5]~77_combout\ : std_logic;
SIGNAL \RegBank0|RD1[5]~108_combout\ : std_logic;
SIGNAL \Instr[6]~feeder_combout\ : std_logic;
SIGNAL \RegBank0|RD1[0]~94_combout\ : std_logic;
SIGNAL \RegBank0|RD1[0]~95_combout\ : std_logic;
SIGNAL \RegBank0|RD1[0]~96_combout\ : std_logic;
SIGNAL \RegBank0|RD1[0]~97_combout\ : std_logic;
SIGNAL \RegBank0|RD1[0]~113_combout\ : std_logic;
SIGNAL \FSM0|cseq|Mux2~0_combout\ : std_logic;
SIGNAL \display0|seg_e~0_combout\ : std_logic;
SIGNAL \FSM0|cseq|Mux2~1_combout\ : std_logic;
SIGNAL \FSM0|aludecod|Decoder0~2_combout\ : std_logic;
SIGNAL \FSM0|cseq|next_state[3]~0_combout\ : std_logic;
SIGNAL \FSM0|cu_decoder|Decoder3~0_combout\ : std_logic;
SIGNAL \RegBank0|RD2[15]~32_combout\ : std_logic;
SIGNAL \RegBank0|RD2[15]~33_combout\ : std_logic;
SIGNAL \RegBank0|RD2[15]~36_combout\ : std_logic;
SIGNAL \RegBank0|RD2[15]~37_combout\ : std_logic;
SIGNAL \RegBank0|RD2[15]~98_combout\ : std_logic;
SIGNAL \SrcB[15]~0_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~27\ : std_logic;
SIGNAL \ALU0|twc|Add0~28_combout\ : std_logic;
SIGNAL \ALU0|twc|Add0~30_combout\ : std_logic;
SIGNAL \SrcA[15]~0_combout\ : std_logic;
SIGNAL \ALU0|Sum[14]~29\ : std_logic;
SIGNAL \ALU0|Sum[15]~30_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[15]~28_combout\ : std_logic;
SIGNAL \ALU0|m2|m3|out~0_combout\ : std_logic;
SIGNAL \display0|seg_a~0_combout\ : std_logic;
SIGNAL \display0|seg_b~0_combout\ : std_logic;
SIGNAL \display0|seg_c~0_combout\ : std_logic;
SIGNAL \display0|seg_d~0_combout\ : std_logic;
SIGNAL \display0|seg_f~0_combout\ : std_logic;
SIGNAL \display0|seg_g~0_combout\ : std_logic;
SIGNAL \display1|seg_a~0_combout\ : std_logic;
SIGNAL \display1|seg_b~0_combout\ : std_logic;
SIGNAL \display1|seg_c~0_combout\ : std_logic;
SIGNAL \display1|seg_d~0_combout\ : std_logic;
SIGNAL \display1|seg_e~0_combout\ : std_logic;
SIGNAL \display1|seg_f~0_combout\ : std_logic;
SIGNAL \display1|seg_g~0_combout\ : std_logic;
SIGNAL \VGA0|clock_25MHz~0_combout\ : std_logic;
SIGNAL \VGA0|clock_25MHz~q\ : std_logic;
SIGNAL \VGA0|clock_25MHz~clkctrl_outclk\ : std_logic;
SIGNAL \VGA0|SYNC|Add0~0_combout\ : std_logic;
SIGNAL \VGA0|SYNC|Add0~1\ : std_logic;
SIGNAL \VGA0|SYNC|Add0~2_combout\ : std_logic;
SIGNAL \VGA0|SYNC|Add0~3\ : std_logic;
SIGNAL \VGA0|SYNC|Add0~4_combout\ : std_logic;
SIGNAL \VGA0|SYNC|Add0~5\ : std_logic;
SIGNAL \VGA0|SYNC|Add0~6_combout\ : std_logic;
SIGNAL \VGA0|SYNC|Add0~7\ : std_logic;
SIGNAL \VGA0|SYNC|Add0~8_combout\ : std_logic;
SIGNAL \VGA0|SYNC|Equal0~0_combout\ : std_logic;
SIGNAL \VGA0|SYNC|Add0~15\ : std_logic;
SIGNAL \VGA0|SYNC|Add0~16_combout\ : std_logic;
SIGNAL \VGA0|SYNC|Add0~17\ : std_logic;
SIGNAL \VGA0|SYNC|Add0~18_combout\ : std_logic;
SIGNAL \VGA0|SYNC|h_count~1_combout\ : std_logic;
SIGNAL \VGA0|SYNC|Equal0~1_combout\ : std_logic;
SIGNAL \VGA0|SYNC|h_count~0_combout\ : std_logic;
SIGNAL \VGA0|SYNC|Equal0~2_combout\ : std_logic;
SIGNAL \VGA0|SYNC|Add0~9\ : std_logic;
SIGNAL \VGA0|SYNC|Add0~10_combout\ : std_logic;
SIGNAL \VGA0|SYNC|h_count~2_combout\ : std_logic;
SIGNAL \VGA0|SYNC|Add0~11\ : std_logic;
SIGNAL \VGA0|SYNC|Add0~12_combout\ : std_logic;
SIGNAL \VGA0|SYNC|Add0~13\ : std_logic;
SIGNAL \VGA0|SYNC|Add0~14_combout\ : std_logic;
SIGNAL \VGA0|SYNC|process_0~0_combout\ : std_logic;
SIGNAL \VGA0|SYNC|process_0~1_combout\ : std_logic;
SIGNAL \VGA0|SYNC|process_0~2_combout\ : std_logic;
SIGNAL \VGA0|SYNC|process_0~3_combout\ : std_logic;
SIGNAL \VGA0|SYNC|horiz_sync~q\ : std_logic;
SIGNAL \VGA0|SYNC|horiz_sync_out~q\ : std_logic;
SIGNAL \VGA0|SYNC|Equal1~0_combout\ : std_logic;
SIGNAL \VGA0|SYNC|Add1~0_combout\ : std_logic;
SIGNAL \VGA0|SYNC|v_count~0_combout\ : std_logic;
SIGNAL \VGA0|SYNC|v_count[5]~1_combout\ : std_logic;
SIGNAL \VGA0|SYNC|Add1~1\ : std_logic;
SIGNAL \VGA0|SYNC|Add1~2_combout\ : std_logic;
SIGNAL \VGA0|SYNC|v_count~2_combout\ : std_logic;
SIGNAL \VGA0|SYNC|Add1~3\ : std_logic;
SIGNAL \VGA0|SYNC|Add1~4_combout\ : std_logic;
SIGNAL \VGA0|SYNC|v_count[2]~4_combout\ : std_logic;
SIGNAL \VGA0|SYNC|Add1~5\ : std_logic;
SIGNAL \VGA0|SYNC|Add1~6_combout\ : std_logic;
SIGNAL \VGA0|SYNC|v_count[3]~5_combout\ : std_logic;
SIGNAL \VGA0|SYNC|Add1~7\ : std_logic;
SIGNAL \VGA0|SYNC|Add1~9\ : std_logic;
SIGNAL \VGA0|SYNC|Add1~10_combout\ : std_logic;
SIGNAL \VGA0|SYNC|v_count[5]~8_combout\ : std_logic;
SIGNAL \VGA0|SYNC|Add1~11\ : std_logic;
SIGNAL \VGA0|SYNC|Add1~12_combout\ : std_logic;
SIGNAL \VGA0|SYNC|v_count[6]~9_combout\ : std_logic;
SIGNAL \VGA0|SYNC|Add1~13\ : std_logic;
SIGNAL \VGA0|SYNC|Add1~14_combout\ : std_logic;
SIGNAL \VGA0|SYNC|v_count[7]~10_combout\ : std_logic;
SIGNAL \VGA0|SYNC|Add1~15\ : std_logic;
SIGNAL \VGA0|SYNC|Add1~16_combout\ : std_logic;
SIGNAL \VGA0|SYNC|v_count[8]~11_combout\ : std_logic;
SIGNAL \VGA0|SYNC|Add1~17\ : std_logic;
SIGNAL \VGA0|SYNC|Add1~18_combout\ : std_logic;
SIGNAL \VGA0|SYNC|v_count[9]~7_combout\ : std_logic;
SIGNAL \VGA0|SYNC|process_0~6_combout\ : std_logic;
SIGNAL \VGA0|SYNC|process_0~7_combout\ : std_logic;
SIGNAL \VGA0|SYNC|process_0~8_combout\ : std_logic;
SIGNAL \VGA0|SYNC|process_0~9_combout\ : std_logic;
SIGNAL \VGA0|SYNC|process_0~10_combout\ : std_logic;
SIGNAL \VGA0|SYNC|process_0~11_combout\ : std_logic;
SIGNAL \VGA0|SYNC|v_count[7]~3_combout\ : std_logic;
SIGNAL \VGA0|SYNC|Add1~8_combout\ : std_logic;
SIGNAL \VGA0|SYNC|v_count[4]~6_combout\ : std_logic;
SIGNAL \VGA0|SYNC|LessThan7~0_combout\ : std_logic;
SIGNAL \VGA0|SYNC|process_0~4_combout\ : std_logic;
SIGNAL \VGA0|SYNC|process_0~5_combout\ : std_logic;
SIGNAL \VGA0|SYNC|vert_sync~q\ : std_logic;
SIGNAL \VGA0|SYNC|vert_sync_out~q\ : std_logic;
SIGNAL \VGA0|SYNC|LessThan6~0_combout\ : std_logic;
SIGNAL \VGA0|SYNC|video_on_h~q\ : std_logic;
SIGNAL \VGA0|SYNC|pixel_row[1]~feeder_combout\ : std_logic;
SIGNAL \VGA0|SYNC|LessThan7~1_combout\ : std_logic;
SIGNAL \VGA0|SYNC|pixel_row[2]~feeder_combout\ : std_logic;
SIGNAL \VGA0|SYNC|pixel_row[6]~feeder_combout\ : std_logic;
SIGNAL \VGA0|SYNC|pixel_row[7]~feeder_combout\ : std_logic;
SIGNAL \VGA0|Mux27~2_combout\ : std_logic;
SIGNAL \VGA0|Mux25~1_combout\ : std_logic;
SIGNAL \VGA0|Mux40~6_combout\ : std_logic;
SIGNAL \VGA0|Mux25~0_combout\ : std_logic;
SIGNAL \VGA0|Mux25~2_combout\ : std_logic;
SIGNAL \VGA0|Mux21~0_combout\ : std_logic;
SIGNAL \VGA0|Mux21~1_combout\ : std_logic;
SIGNAL \VGA0|Mux21~2_combout\ : std_logic;
SIGNAL \VGA0|Mux17~0_combout\ : std_logic;
SIGNAL \VGA0|Mux17~1_combout\ : std_logic;
SIGNAL \VGA0|Mux17~2_combout\ : std_logic;
SIGNAL \VGA0|Mux17~3_combout\ : std_logic;
SIGNAL \VGA0|Mux17~4_combout\ : std_logic;
SIGNAL \VGA0|Mux42~12_combout\ : std_logic;
SIGNAL \VGA0|Mux27~4_combout\ : std_logic;
SIGNAL \VGA0|Mux42~13_combout\ : std_logic;
SIGNAL \VGA0|Mux42~8_combout\ : std_logic;
SIGNAL \VGA0|Mux42~5_combout\ : std_logic;
SIGNAL \VGA0|Mux42~6_combout\ : std_logic;
SIGNAL \VGA0|Mux42~7_combout\ : std_logic;
SIGNAL \VGA0|Mux42~9_combout\ : std_logic;
SIGNAL \VGA0|Mux42~10_combout\ : std_logic;
SIGNAL \VGA0|Mux5~1_combout\ : std_logic;
SIGNAL \VGA0|Mux5~0_combout\ : std_logic;
SIGNAL \VGA0|Mux5~2_combout\ : std_logic;
SIGNAL \VGA0|Mux42~15_combout\ : std_logic;
SIGNAL \VGA0|char_address~15_combout\ : std_logic;
SIGNAL \VGA0|char_address~4_combout\ : std_logic;
SIGNAL \VGA0|Mux36~1_combout\ : std_logic;
SIGNAL \VGA0|Mux36~0_combout\ : std_logic;
SIGNAL \RegBank0|Equal1~0_combout\ : std_logic;
SIGNAL \VGA0|Mux36~2_combout\ : std_logic;
SIGNAL \VGA0|Mux31~1_combout\ : std_logic;
SIGNAL \VGA0|Mux31~0_combout\ : std_logic;
SIGNAL \RegBank0|Equal0~0_combout\ : std_logic;
SIGNAL \VGA0|Mux31~2_combout\ : std_logic;
SIGNAL \VGA0|Mux42~2_combout\ : std_logic;
SIGNAL \VGA0|Mux42~3_combout\ : std_logic;
SIGNAL \VGA0|Mux42~11_combout\ : std_logic;
SIGNAL \VGA0|Mux42~14_combout\ : std_logic;
SIGNAL \VGA0|VIDEO_DISPLAY_DATA~1_combout\ : std_logic;
SIGNAL \VGA0|VIDEO_DISPLAY_DATA~0_combout\ : std_logic;
SIGNAL \VGA0|char_address~5_combout\ : std_logic;
SIGNAL \VGA0|VIDEO_DISPLAY_DATA~3_combout\ : std_logic;
SIGNAL \VGA0|VIDEO_DISPLAY_DATA~2_combout\ : std_logic;
SIGNAL \VGA0|VIDEO_DISPLAY_DATA~4_combout\ : std_logic;
SIGNAL \VGA0|VIDEO_DISPLAY_DATA~5_combout\ : std_logic;
SIGNAL \VGA0|char_address~6_combout\ : std_logic;
SIGNAL \VGA0|char_address~7_combout\ : std_logic;
SIGNAL \VGA0|Mux16~0_combout\ : std_logic;
SIGNAL \VGA0|Mux16~1_combout\ : std_logic;
SIGNAL \VGA0|Mux41~12_combout\ : std_logic;
SIGNAL \VGA0|Mux41~16_combout\ : std_logic;
SIGNAL \VGA0|Mux41~13_combout\ : std_logic;
SIGNAL \VGA0|Mux41~14_combout\ : std_logic;
SIGNAL \VGA0|Mux41~15_combout\ : std_logic;
SIGNAL \VGA0|Mux41~17_combout\ : std_logic;
SIGNAL \VGA0|Mux41~18_combout\ : std_logic;
SIGNAL \VGA0|Mux41~21_combout\ : std_logic;
SIGNAL \VGA0|char_address~8_combout\ : std_logic;
SIGNAL \VGA0|char_address~9_combout\ : std_logic;
SIGNAL \VGA0|Mux30~0_combout\ : std_logic;
SIGNAL \VGA0|Mux30~1_combout\ : std_logic;
SIGNAL \VGA0|Mux30~2_combout\ : std_logic;
SIGNAL \VGA0|Mux35~1_combout\ : std_logic;
SIGNAL \VGA0|Mux35~0_combout\ : std_logic;
SIGNAL \VGA0|Mux35~2_combout\ : std_logic;
SIGNAL \VGA0|Mux41~10_combout\ : std_logic;
SIGNAL \VGA0|Mux41~11_combout\ : std_logic;
SIGNAL \VGA0|Mux41~0_combout\ : std_logic;
SIGNAL \VGA0|Mux41~1_combout\ : std_logic;
SIGNAL \VGA0|Mux41~2_combout\ : std_logic;
SIGNAL \VGA0|Mux41~6_combout\ : std_logic;
SIGNAL \VGA0|Mux41~7_combout\ : std_logic;
SIGNAL \VGA0|Mux41~4_combout\ : std_logic;
SIGNAL \VGA0|Mux41~3_combout\ : std_logic;
SIGNAL \VGA0|Mux41~5_combout\ : std_logic;
SIGNAL \VGA0|Mux41~8_combout\ : std_logic;
SIGNAL \VGA0|Mux41~9_combout\ : std_logic;
SIGNAL \VGA0|Mux41~22_combout\ : std_logic;
SIGNAL \VGA0|Mux41~19_combout\ : std_logic;
SIGNAL \VGA0|Mux16~2_combout\ : std_logic;
SIGNAL \VGA0|Mux41~20_combout\ : std_logic;
SIGNAL \VGA0|char_address~10_combout\ : std_logic;
SIGNAL \VGA0|Mux37~0_combout\ : std_logic;
SIGNAL \VGA0|Mux40~17_combout\ : std_logic;
SIGNAL \VGA0|Mux40~18_combout\ : std_logic;
SIGNAL \VGA0|Mux40~22_combout\ : std_logic;
SIGNAL \VGA0|Mux40~19_combout\ : std_logic;
SIGNAL \VGA0|Mux40~20_combout\ : std_logic;
SIGNAL \VGA0|Mux40~21_combout\ : std_logic;
SIGNAL \VGA0|Mux40~23_combout\ : std_logic;
SIGNAL \VGA0|Mux40~24_combout\ : std_logic;
SIGNAL \VGA0|Mux40~54_combout\ : std_logic;
SIGNAL \VGA0|VIDEO_DISPLAY_DATA~6_combout\ : std_logic;
SIGNAL \VGA0|Mux40~12_combout\ : std_logic;
SIGNAL \VGA0|Mux40~7_combout\ : std_logic;
SIGNAL \VGA0|Mux40~8_combout\ : std_logic;
SIGNAL \VGA0|Mux40~10_combout\ : std_logic;
SIGNAL \VGA0|Mux42~4_combout\ : std_logic;
SIGNAL \VGA0|Mux40~9_combout\ : std_logic;
SIGNAL \VGA0|Mux40~11_combout\ : std_logic;
SIGNAL \VGA0|Mux40~14_combout\ : std_logic;
SIGNAL \VGA0|Mux40~15_combout\ : std_logic;
SIGNAL \VGA0|Mux40~56_combout\ : std_logic;
SIGNAL \VGA0|Mux40~13_combout\ : std_logic;
SIGNAL \VGA0|Mux40~57_combout\ : std_logic;
SIGNAL \VGA0|Mux40~16_combout\ : std_logic;
SIGNAL \VGA0|Mux40~25_combout\ : std_logic;
SIGNAL \VGA0|Mux40~26_combout\ : std_logic;
SIGNAL \VGA0|Mux29~7_combout\ : std_logic;
SIGNAL \VGA0|Mux29~8_combout\ : std_logic;
SIGNAL \VGA0|Mux29~4_combout\ : std_logic;
SIGNAL \VGA0|Mux29~5_combout\ : std_logic;
SIGNAL \VGA0|Mux29~2_combout\ : std_logic;
SIGNAL \VGA0|Mux29~3_combout\ : std_logic;
SIGNAL \VGA0|Mux29~6_combout\ : std_logic;
SIGNAL \VGA0|Mux29~0_combout\ : std_logic;
SIGNAL \VGA0|Mux29~1_combout\ : std_logic;
SIGNAL \VGA0|Mux29~9_combout\ : std_logic;
SIGNAL \VGA0|Mux29~10_combout\ : std_logic;
SIGNAL \VGA0|Mux40~27_combout\ : std_logic;
SIGNAL \VGA0|char_address~11_combout\ : std_logic;
SIGNAL \VGA0|Mux40~38_combout\ : std_logic;
SIGNAL \VGA0|Mux40~37_combout\ : std_logic;
SIGNAL \VGA0|Mux40~39_combout\ : std_logic;
SIGNAL \VGA0|Mux40~40_combout\ : std_logic;
SIGNAL \VGA0|Mux40~45_combout\ : std_logic;
SIGNAL \VGA0|Mux40~43_combout\ : std_logic;
SIGNAL \VGA0|Mux40~42_combout\ : std_logic;
SIGNAL \VGA0|Mux40~44_combout\ : std_logic;
SIGNAL \VGA0|Mux40~41_combout\ : std_logic;
SIGNAL \VGA0|Mux40~46_combout\ : std_logic;
SIGNAL \VGA0|Mux40~32_combout\ : std_logic;
SIGNAL \ALU0|m2|m1|m3|out[15]~55_combout\ : std_logic;
SIGNAL \VGA0|Mux40~33_combout\ : std_logic;
SIGNAL \VGA0|Mux40~29_combout\ : std_logic;
SIGNAL \VGA0|Mux40~28_combout\ : std_logic;
SIGNAL \VGA0|Mux40~30_combout\ : std_logic;
SIGNAL \VGA0|Mux40~31_combout\ : std_logic;
SIGNAL \VGA0|Mux14~0_combout\ : std_logic;
SIGNAL \VGA0|Mux14~1_combout\ : std_logic;
SIGNAL \VGA0|Mux40~34_combout\ : std_logic;
SIGNAL \VGA0|Mux40~35_combout\ : std_logic;
SIGNAL \VGA0|Mux40~36_combout\ : std_logic;
SIGNAL \VGA0|Mux39~0_combout\ : std_logic;
SIGNAL \VGA0|Mux28~0_combout\ : std_logic;
SIGNAL \VGA0|Mux28~2_combout\ : std_logic;
SIGNAL \VGA0|Mux28~1_combout\ : std_logic;
SIGNAL \VGA0|Mux28~3_combout\ : std_logic;
SIGNAL \VGA0|Mux28~4_combout\ : std_logic;
SIGNAL \VGA0|Mux28~5_combout\ : std_logic;
SIGNAL \VGA0|Mux28~6_combout\ : std_logic;
SIGNAL \VGA0|Mux39~1_combout\ : std_logic;
SIGNAL \VGA0|char_address~12_combout\ : std_logic;
SIGNAL \VGA0|Mux40~47_combout\ : std_logic;
SIGNAL \VGA0|Mux40~49_combout\ : std_logic;
SIGNAL \VGA0|Mux27~3_combout\ : std_logic;
SIGNAL \VGA0|Mux40~50_combout\ : std_logic;
SIGNAL \VGA0|Mux40~51_combout\ : std_logic;
SIGNAL \VGA0|Mux40~52_combout\ : std_logic;
SIGNAL \VGA0|Mux40~55_combout\ : std_logic;
SIGNAL \VGA0|Mux40~53_combout\ : std_logic;
SIGNAL \VGA0|Mux38~0_combout\ : std_logic;
SIGNAL \VGA0|Mux40~48_combout\ : std_logic;
SIGNAL \VGA0|Mux38~1_combout\ : std_logic;
SIGNAL \VGA0|char_address~13_combout\ : std_logic;
SIGNAL \VGA0|char_address~16_combout\ : std_logic;
SIGNAL \VGA0|Mux37~2_combout\ : std_logic;
SIGNAL \VGA0|Mux37~3_combout\ : std_logic;
SIGNAL \VGA0|Mux37~1_combout\ : std_logic;
SIGNAL \VGA0|Mux37~4_combout\ : std_logic;
SIGNAL \VGA0|char_address~14_combout\ : std_logic;
SIGNAL \VGA0|CGROM|Mux0~2_combout\ : std_logic;
SIGNAL \VGA0|CGROM|Mux0~3_combout\ : std_logic;
SIGNAL \VGA0|CGROM|Mux0~0_combout\ : std_logic;
SIGNAL \VGA0|CGROM|Mux0~1_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \VGA0|Green_Data~0_combout\ : std_logic;
SIGNAL \VGA0|LessThan0~0_combout\ : std_logic;
SIGNAL \VGA0|Rev_video~q\ : std_logic;
SIGNAL \VGA0|SYNC|video_on_v~q\ : std_logic;
SIGNAL \VGA0|SYNC|green_out~0_combout\ : std_logic;
SIGNAL \VGA0|SYNC|green_out~q\ : std_logic;
SIGNAL \VGA0|SYNC|video_on~combout\ : std_logic;
SIGNAL \VGA0|SYNC|blue_out~q\ : std_logic;
SIGNAL \VGA0|SYNC|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA0|SYNC|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA0|switch_sync\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VGA0|SYNC|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Memory0|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \FSM0|curr_state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CNT0|q\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \VGA0|format_rom|auto_generated|q_a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL Instr : std_logic_vector(15 DOWNTO 0);
SIGNAL WriteData : std_logic_vector(15 DOWNTO 0);
SIGNAL PC : std_logic_vector(15 DOWNTO 0);
SIGNAL \VGA0|CGROM|char_gen_rom|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL B : std_logic_vector(15 DOWNTO 0);
SIGNAL \VGA0|char_address\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \VGA0|SYNC|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL ALUOut : std_logic_vector(15 DOWNTO 0);
SIGNAL \FSM0|ALT_INV_pc_write~combout\ : std_logic;
SIGNAL \display1|ALT_INV_seg_g~0_combout\ : std_logic;
SIGNAL \display1|ALT_INV_seg_f~0_combout\ : std_logic;
SIGNAL \display1|ALT_INV_seg_e~0_combout\ : std_logic;
SIGNAL \display1|ALT_INV_seg_d~0_combout\ : std_logic;
SIGNAL \display1|ALT_INV_seg_c~0_combout\ : std_logic;
SIGNAL \display1|ALT_INV_seg_b~0_combout\ : std_logic;
SIGNAL \display1|ALT_INV_seg_a~0_combout\ : std_logic;
SIGNAL \FSM0|aludecod|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \display0|ALT_INV_seg_g~0_combout\ : std_logic;
SIGNAL \display0|ALT_INV_seg_f~0_combout\ : std_logic;
SIGNAL \display0|ALT_INV_seg_e~0_combout\ : std_logic;
SIGNAL \display0|ALT_INV_seg_d~0_combout\ : std_logic;
SIGNAL \display0|ALT_INV_seg_c~0_combout\ : std_logic;
SIGNAL \display0|ALT_INV_seg_b~0_combout\ : std_logic;
SIGNAL \display0|ALT_INV_seg_a~0_combout\ : std_logic;
SIGNAL \ALU0|m2|m3|ALT_INV_out~0_combout\ : std_logic;
SIGNAL \CNT0|ALT_INV_q[25]~clkctrl_outclk\ : std_logic;
SIGNAL \VGA0|ALT_INV_clock_25MHz~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_MAX10_CLK1_50 <= MAX10_CLK1_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Memory0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ <= (WriteData(15) & WriteData(13) & WriteData(12) & WriteData(11) & WriteData(10) & WriteData(9) & WriteData(7) & WriteData(6) & WriteData(5));

\Memory0|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\Adr[10]~9_combout\ & \Adr[9]~8_combout\ & \Adr[8]~7_combout\ & \Adr[7]~6_combout\ & \Adr[6]~5_combout\ & \Adr[5]~4_combout\ & \Adr[4]~3_combout\ & \Adr[3]~2_combout\ & 
\Adr[2]~1_combout\ & \Adr[1]~0_combout\);

\Memory0|altsyncram_component|auto_generated|q_a\(5) <= \Memory0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);
\Memory0|altsyncram_component|auto_generated|q_a\(6) <= \Memory0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(1);
\Memory0|altsyncram_component|auto_generated|q_a\(7) <= \Memory0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(2);
\Memory0|altsyncram_component|auto_generated|q_a\(9) <= \Memory0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(3);
\Memory0|altsyncram_component|auto_generated|q_a\(10) <= \Memory0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(4);
\Memory0|altsyncram_component|auto_generated|q_a\(11) <= \Memory0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(5);
\Memory0|altsyncram_component|auto_generated|q_a\(12) <= \Memory0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(6);
\Memory0|altsyncram_component|auto_generated|q_a\(13) <= \Memory0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(7);
\Memory0|altsyncram_component|auto_generated|q_a\(15) <= \Memory0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(8);

\Memory0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & WriteData(14) & WriteData(8) & WriteData(4) & WriteData(3) & WriteData(2) & WriteData(1) & WriteData(0));

\Memory0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\Adr[10]~9_combout\ & \Adr[9]~8_combout\ & \Adr[8]~7_combout\ & \Adr[7]~6_combout\ & \Adr[6]~5_combout\ & \Adr[5]~4_combout\ & \Adr[4]~3_combout\ & \Adr[3]~2_combout\ & 
\Adr[2]~1_combout\ & \Adr[1]~0_combout\);

\Memory0|altsyncram_component|auto_generated|q_a\(0) <= \Memory0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\Memory0|altsyncram_component|auto_generated|q_a\(1) <= \Memory0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\Memory0|altsyncram_component|auto_generated|q_a\(2) <= \Memory0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\Memory0|altsyncram_component|auto_generated|q_a\(3) <= \Memory0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\Memory0|altsyncram_component|auto_generated|q_a\(4) <= \Memory0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\Memory0|altsyncram_component|auto_generated|q_a\(8) <= \Memory0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\Memory0|altsyncram_component|auto_generated|q_a\(14) <= \Memory0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);

\VGA0|CGROM|char_gen_rom|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\VGA0|char_address\(5) & \VGA0|char_address\(4) & \VGA0|char_address\(3) & \VGA0|char_address\(2) & \VGA0|char_address\(1) & \VGA0|char_address\(0) & 
\VGA0|SYNC|pixel_row\(3) & \VGA0|SYNC|pixel_row\(2) & \VGA0|SYNC|pixel_row\(1));

\VGA0|CGROM|char_gen_rom|auto_generated|q_a\(0) <= \VGA0|CGROM|char_gen_rom|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\VGA0|CGROM|char_gen_rom|auto_generated|q_a\(1) <= \VGA0|CGROM|char_gen_rom|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\VGA0|CGROM|char_gen_rom|auto_generated|q_a\(2) <= \VGA0|CGROM|char_gen_rom|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\VGA0|CGROM|char_gen_rom|auto_generated|q_a\(3) <= \VGA0|CGROM|char_gen_rom|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\VGA0|CGROM|char_gen_rom|auto_generated|q_a\(4) <= \VGA0|CGROM|char_gen_rom|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\VGA0|CGROM|char_gen_rom|auto_generated|q_a\(5) <= \VGA0|CGROM|char_gen_rom|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\VGA0|CGROM|char_gen_rom|auto_generated|q_a\(6) <= \VGA0|CGROM|char_gen_rom|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\VGA0|CGROM|char_gen_rom|auto_generated|q_a\(7) <= \VGA0|CGROM|char_gen_rom|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\VGA0|format_rom|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\VGA0|SYNC|pixel_row\(8) & \VGA0|SYNC|pixel_row\(7) & \VGA0|SYNC|pixel_row\(6) & \VGA0|SYNC|pixel_row\(5) & \VGA0|SYNC|pixel_column\(5) & \VGA0|SYNC|pixel_column\(4));

\VGA0|format_rom|auto_generated|q_a\(0) <= \VGA0|format_rom|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\VGA0|format_rom|auto_generated|q_a\(1) <= \VGA0|format_rom|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\VGA0|format_rom|auto_generated|q_a\(2) <= \VGA0|format_rom|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\VGA0|format_rom|auto_generated|q_a\(3) <= \VGA0|format_rom|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\VGA0|format_rom|auto_generated|q_a\(4) <= \VGA0|format_rom|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\VGA0|format_rom|auto_generated|q_a\(5) <= \VGA0|format_rom|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\VGA0|clock_25MHz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \VGA0|clock_25MHz~q\);

\CNT0|q[25]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CNT0|q\(25));

\MAX10_CLK1_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MAX10_CLK1_50~input_o\);
\FSM0|ALT_INV_pc_write~combout\ <= NOT \FSM0|pc_write~combout\;
\display1|ALT_INV_seg_g~0_combout\ <= NOT \display1|seg_g~0_combout\;
\display1|ALT_INV_seg_f~0_combout\ <= NOT \display1|seg_f~0_combout\;
\display1|ALT_INV_seg_e~0_combout\ <= NOT \display1|seg_e~0_combout\;
\display1|ALT_INV_seg_d~0_combout\ <= NOT \display1|seg_d~0_combout\;
\display1|ALT_INV_seg_c~0_combout\ <= NOT \display1|seg_c~0_combout\;
\display1|ALT_INV_seg_b~0_combout\ <= NOT \display1|seg_b~0_combout\;
\display1|ALT_INV_seg_a~0_combout\ <= NOT \display1|seg_a~0_combout\;
\FSM0|aludecod|ALT_INV_Decoder0~0_combout\ <= NOT \FSM0|aludecod|Decoder0~0_combout\;
\display0|ALT_INV_seg_g~0_combout\ <= NOT \display0|seg_g~0_combout\;
\display0|ALT_INV_seg_f~0_combout\ <= NOT \display0|seg_f~0_combout\;
\display0|ALT_INV_seg_e~0_combout\ <= NOT \display0|seg_e~0_combout\;
\display0|ALT_INV_seg_d~0_combout\ <= NOT \display0|seg_d~0_combout\;
\display0|ALT_INV_seg_c~0_combout\ <= NOT \display0|seg_c~0_combout\;
\display0|ALT_INV_seg_b~0_combout\ <= NOT \display0|seg_b~0_combout\;
\display0|ALT_INV_seg_a~0_combout\ <= NOT \display0|seg_a~0_combout\;
\ALU0|m2|m3|ALT_INV_out~0_combout\ <= NOT \ALU0|m2|m3|out~0_combout\;
\CNT0|ALT_INV_q[25]~clkctrl_outclk\ <= NOT \CNT0|q[25]~clkctrl_outclk\;
\VGA0|ALT_INV_clock_25MHz~clkctrl_outclk\ <= NOT \VGA0|clock_25MHz~clkctrl_outclk\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N8
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\LEDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CNT0|q\(25),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\LEDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALU0|m2|m3|ALT_INV_out~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\LEDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\LEDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\LEDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\LEDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\LEDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\LEDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\LEDR[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\LEDR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|ALT_INV_seg_a~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|ALT_INV_seg_b~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|ALT_INV_seg_c~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|ALT_INV_seg_d~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|ALT_INV_seg_e~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|ALT_INV_seg_f~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|ALT_INV_seg_g~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM0|aludecod|ALT_INV_Decoder0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[7]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|ALT_INV_seg_a~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|ALT_INV_seg_b~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|ALT_INV_seg_c~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|ALT_INV_seg_d~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|ALT_INV_seg_e~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|ALT_INV_seg_f~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|ALT_INV_seg_g~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FSM0|ALT_INV_pc_write~combout\,
	devoe => ww_devoe,
	o => \HEX1[7]~output_o\);

-- Location: IOOBUF_X0_Y18_N2
\VGA_HS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA0|SYNC|horiz_sync_out~q\,
	devoe => ww_devoe,
	o => \VGA_HS~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\VGA_VS~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA0|SYNC|vert_sync_out~q\,
	devoe => ww_devoe,
	o => \VGA_VS~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\VGA_R[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA0|SYNC|green_out~q\,
	devoe => ww_devoe,
	o => \VGA_R[0]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\VGA_R[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA0|SYNC|green_out~q\,
	devoe => ww_devoe,
	o => \VGA_R[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\VGA_R[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA0|SYNC|green_out~q\,
	devoe => ww_devoe,
	o => \VGA_R[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\VGA_R[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA0|SYNC|green_out~q\,
	devoe => ww_devoe,
	o => \VGA_R[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\VGA_G[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA0|SYNC|green_out~q\,
	devoe => ww_devoe,
	o => \VGA_G[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\VGA_G[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA0|SYNC|green_out~q\,
	devoe => ww_devoe,
	o => \VGA_G[1]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\VGA_G[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA0|SYNC|green_out~q\,
	devoe => ww_devoe,
	o => \VGA_G[2]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\VGA_G[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA0|SYNC|green_out~q\,
	devoe => ww_devoe,
	o => \VGA_G[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\VGA_B[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA0|SYNC|blue_out~q\,
	devoe => ww_devoe,
	o => \VGA_B[0]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\VGA_B[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA0|SYNC|blue_out~q\,
	devoe => ww_devoe,
	o => \VGA_B[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\VGA_B[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA0|SYNC|blue_out~q\,
	devoe => ww_devoe,
	o => \VGA_B[2]~output_o\);

-- Location: IOOBUF_X0_Y18_N9
\VGA_B[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA0|SYNC|blue_out~q\,
	devoe => ww_devoe,
	o => \VGA_B[3]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\MAX10_CLK1_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MAX10_CLK1_50,
	o => \MAX10_CLK1_50~input_o\);

-- Location: CLKCTRL_G19
\MAX10_CLK1_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MAX10_CLK1_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MAX10_CLK1_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X42_Y2_N0
\CNT0|q[0]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[0]~75_combout\ = !\CNT0|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CNT0|q\(0),
	combout => \CNT0|q[0]~75_combout\);

-- Location: FF_X42_Y2_N1
\CNT0|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[0]~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(0));

-- Location: LCCOMB_X42_Y2_N8
\CNT0|q[1]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[1]~25_combout\ = (\CNT0|q\(0) & (\CNT0|q\(1) $ (VCC))) # (!\CNT0|q\(0) & (\CNT0|q\(1) & VCC))
-- \CNT0|q[1]~26\ = CARRY((\CNT0|q\(0) & \CNT0|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CNT0|q\(0),
	datab => \CNT0|q\(1),
	datad => VCC,
	combout => \CNT0|q[1]~25_combout\,
	cout => \CNT0|q[1]~26\);

-- Location: FF_X42_Y2_N9
\CNT0|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[1]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(1));

-- Location: LCCOMB_X42_Y2_N10
\CNT0|q[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[2]~27_combout\ = (\CNT0|q\(2) & (!\CNT0|q[1]~26\)) # (!\CNT0|q\(2) & ((\CNT0|q[1]~26\) # (GND)))
-- \CNT0|q[2]~28\ = CARRY((!\CNT0|q[1]~26\) # (!\CNT0|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT0|q\(2),
	datad => VCC,
	cin => \CNT0|q[1]~26\,
	combout => \CNT0|q[2]~27_combout\,
	cout => \CNT0|q[2]~28\);

-- Location: FF_X42_Y2_N11
\CNT0|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[2]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(2));

-- Location: LCCOMB_X42_Y2_N12
\CNT0|q[3]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[3]~29_combout\ = (\CNT0|q\(3) & (\CNT0|q[2]~28\ $ (GND))) # (!\CNT0|q\(3) & (!\CNT0|q[2]~28\ & VCC))
-- \CNT0|q[3]~30\ = CARRY((\CNT0|q\(3) & !\CNT0|q[2]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT0|q\(3),
	datad => VCC,
	cin => \CNT0|q[2]~28\,
	combout => \CNT0|q[3]~29_combout\,
	cout => \CNT0|q[3]~30\);

-- Location: FF_X42_Y2_N13
\CNT0|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[3]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(3));

-- Location: LCCOMB_X42_Y2_N14
\CNT0|q[4]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[4]~31_combout\ = (\CNT0|q\(4) & (!\CNT0|q[3]~30\)) # (!\CNT0|q\(4) & ((\CNT0|q[3]~30\) # (GND)))
-- \CNT0|q[4]~32\ = CARRY((!\CNT0|q[3]~30\) # (!\CNT0|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT0|q\(4),
	datad => VCC,
	cin => \CNT0|q[3]~30\,
	combout => \CNT0|q[4]~31_combout\,
	cout => \CNT0|q[4]~32\);

-- Location: FF_X42_Y2_N15
\CNT0|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[4]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(4));

-- Location: LCCOMB_X42_Y2_N16
\CNT0|q[5]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[5]~33_combout\ = (\CNT0|q\(5) & (\CNT0|q[4]~32\ $ (GND))) # (!\CNT0|q\(5) & (!\CNT0|q[4]~32\ & VCC))
-- \CNT0|q[5]~34\ = CARRY((\CNT0|q\(5) & !\CNT0|q[4]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT0|q\(5),
	datad => VCC,
	cin => \CNT0|q[4]~32\,
	combout => \CNT0|q[5]~33_combout\,
	cout => \CNT0|q[5]~34\);

-- Location: FF_X42_Y2_N17
\CNT0|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[5]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(5));

-- Location: LCCOMB_X42_Y2_N18
\CNT0|q[6]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[6]~35_combout\ = (\CNT0|q\(6) & (!\CNT0|q[5]~34\)) # (!\CNT0|q\(6) & ((\CNT0|q[5]~34\) # (GND)))
-- \CNT0|q[6]~36\ = CARRY((!\CNT0|q[5]~34\) # (!\CNT0|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT0|q\(6),
	datad => VCC,
	cin => \CNT0|q[5]~34\,
	combout => \CNT0|q[6]~35_combout\,
	cout => \CNT0|q[6]~36\);

-- Location: FF_X42_Y2_N19
\CNT0|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[6]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(6));

-- Location: LCCOMB_X42_Y2_N20
\CNT0|q[7]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[7]~37_combout\ = (\CNT0|q\(7) & (\CNT0|q[6]~36\ $ (GND))) # (!\CNT0|q\(7) & (!\CNT0|q[6]~36\ & VCC))
-- \CNT0|q[7]~38\ = CARRY((\CNT0|q\(7) & !\CNT0|q[6]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT0|q\(7),
	datad => VCC,
	cin => \CNT0|q[6]~36\,
	combout => \CNT0|q[7]~37_combout\,
	cout => \CNT0|q[7]~38\);

-- Location: FF_X42_Y2_N21
\CNT0|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[7]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(7));

-- Location: LCCOMB_X42_Y2_N22
\CNT0|q[8]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[8]~39_combout\ = (\CNT0|q\(8) & (!\CNT0|q[7]~38\)) # (!\CNT0|q\(8) & ((\CNT0|q[7]~38\) # (GND)))
-- \CNT0|q[8]~40\ = CARRY((!\CNT0|q[7]~38\) # (!\CNT0|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT0|q\(8),
	datad => VCC,
	cin => \CNT0|q[7]~38\,
	combout => \CNT0|q[8]~39_combout\,
	cout => \CNT0|q[8]~40\);

-- Location: FF_X42_Y2_N23
\CNT0|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[8]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(8));

-- Location: LCCOMB_X42_Y2_N24
\CNT0|q[9]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[9]~41_combout\ = (\CNT0|q\(9) & (\CNT0|q[8]~40\ $ (GND))) # (!\CNT0|q\(9) & (!\CNT0|q[8]~40\ & VCC))
-- \CNT0|q[9]~42\ = CARRY((\CNT0|q\(9) & !\CNT0|q[8]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT0|q\(9),
	datad => VCC,
	cin => \CNT0|q[8]~40\,
	combout => \CNT0|q[9]~41_combout\,
	cout => \CNT0|q[9]~42\);

-- Location: FF_X42_Y2_N25
\CNT0|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[9]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(9));

-- Location: LCCOMB_X42_Y2_N26
\CNT0|q[10]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[10]~43_combout\ = (\CNT0|q\(10) & (!\CNT0|q[9]~42\)) # (!\CNT0|q\(10) & ((\CNT0|q[9]~42\) # (GND)))
-- \CNT0|q[10]~44\ = CARRY((!\CNT0|q[9]~42\) # (!\CNT0|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT0|q\(10),
	datad => VCC,
	cin => \CNT0|q[9]~42\,
	combout => \CNT0|q[10]~43_combout\,
	cout => \CNT0|q[10]~44\);

-- Location: FF_X42_Y2_N27
\CNT0|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[10]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(10));

-- Location: LCCOMB_X42_Y2_N28
\CNT0|q[11]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[11]~45_combout\ = (\CNT0|q\(11) & (\CNT0|q[10]~44\ $ (GND))) # (!\CNT0|q\(11) & (!\CNT0|q[10]~44\ & VCC))
-- \CNT0|q[11]~46\ = CARRY((\CNT0|q\(11) & !\CNT0|q[10]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT0|q\(11),
	datad => VCC,
	cin => \CNT0|q[10]~44\,
	combout => \CNT0|q[11]~45_combout\,
	cout => \CNT0|q[11]~46\);

-- Location: FF_X42_Y2_N29
\CNT0|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[11]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(11));

-- Location: LCCOMB_X42_Y2_N30
\CNT0|q[12]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[12]~47_combout\ = (\CNT0|q\(12) & (!\CNT0|q[11]~46\)) # (!\CNT0|q\(12) & ((\CNT0|q[11]~46\) # (GND)))
-- \CNT0|q[12]~48\ = CARRY((!\CNT0|q[11]~46\) # (!\CNT0|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT0|q\(12),
	datad => VCC,
	cin => \CNT0|q[11]~46\,
	combout => \CNT0|q[12]~47_combout\,
	cout => \CNT0|q[12]~48\);

-- Location: FF_X42_Y2_N31
\CNT0|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[12]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(12));

-- Location: LCCOMB_X42_Y1_N0
\CNT0|q[13]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[13]~49_combout\ = (\CNT0|q\(13) & (\CNT0|q[12]~48\ $ (GND))) # (!\CNT0|q\(13) & (!\CNT0|q[12]~48\ & VCC))
-- \CNT0|q[13]~50\ = CARRY((\CNT0|q\(13) & !\CNT0|q[12]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT0|q\(13),
	datad => VCC,
	cin => \CNT0|q[12]~48\,
	combout => \CNT0|q[13]~49_combout\,
	cout => \CNT0|q[13]~50\);

-- Location: FF_X42_Y1_N1
\CNT0|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[13]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(13));

-- Location: LCCOMB_X42_Y1_N2
\CNT0|q[14]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[14]~51_combout\ = (\CNT0|q\(14) & (!\CNT0|q[13]~50\)) # (!\CNT0|q\(14) & ((\CNT0|q[13]~50\) # (GND)))
-- \CNT0|q[14]~52\ = CARRY((!\CNT0|q[13]~50\) # (!\CNT0|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT0|q\(14),
	datad => VCC,
	cin => \CNT0|q[13]~50\,
	combout => \CNT0|q[14]~51_combout\,
	cout => \CNT0|q[14]~52\);

-- Location: FF_X42_Y1_N3
\CNT0|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[14]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(14));

-- Location: LCCOMB_X42_Y1_N4
\CNT0|q[15]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[15]~53_combout\ = (\CNT0|q\(15) & (\CNT0|q[14]~52\ $ (GND))) # (!\CNT0|q\(15) & (!\CNT0|q[14]~52\ & VCC))
-- \CNT0|q[15]~54\ = CARRY((\CNT0|q\(15) & !\CNT0|q[14]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT0|q\(15),
	datad => VCC,
	cin => \CNT0|q[14]~52\,
	combout => \CNT0|q[15]~53_combout\,
	cout => \CNT0|q[15]~54\);

-- Location: FF_X42_Y1_N5
\CNT0|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[15]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(15));

-- Location: LCCOMB_X42_Y1_N6
\CNT0|q[16]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[16]~55_combout\ = (\CNT0|q\(16) & (!\CNT0|q[15]~54\)) # (!\CNT0|q\(16) & ((\CNT0|q[15]~54\) # (GND)))
-- \CNT0|q[16]~56\ = CARRY((!\CNT0|q[15]~54\) # (!\CNT0|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT0|q\(16),
	datad => VCC,
	cin => \CNT0|q[15]~54\,
	combout => \CNT0|q[16]~55_combout\,
	cout => \CNT0|q[16]~56\);

-- Location: FF_X42_Y1_N7
\CNT0|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[16]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(16));

-- Location: LCCOMB_X42_Y1_N8
\CNT0|q[17]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[17]~57_combout\ = (\CNT0|q\(17) & (\CNT0|q[16]~56\ $ (GND))) # (!\CNT0|q\(17) & (!\CNT0|q[16]~56\ & VCC))
-- \CNT0|q[17]~58\ = CARRY((\CNT0|q\(17) & !\CNT0|q[16]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT0|q\(17),
	datad => VCC,
	cin => \CNT0|q[16]~56\,
	combout => \CNT0|q[17]~57_combout\,
	cout => \CNT0|q[17]~58\);

-- Location: FF_X42_Y1_N9
\CNT0|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[17]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(17));

-- Location: LCCOMB_X42_Y1_N10
\CNT0|q[18]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[18]~59_combout\ = (\CNT0|q\(18) & (!\CNT0|q[17]~58\)) # (!\CNT0|q\(18) & ((\CNT0|q[17]~58\) # (GND)))
-- \CNT0|q[18]~60\ = CARRY((!\CNT0|q[17]~58\) # (!\CNT0|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT0|q\(18),
	datad => VCC,
	cin => \CNT0|q[17]~58\,
	combout => \CNT0|q[18]~59_combout\,
	cout => \CNT0|q[18]~60\);

-- Location: FF_X42_Y1_N11
\CNT0|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[18]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(18));

-- Location: LCCOMB_X42_Y1_N12
\CNT0|q[19]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[19]~61_combout\ = (\CNT0|q\(19) & (\CNT0|q[18]~60\ $ (GND))) # (!\CNT0|q\(19) & (!\CNT0|q[18]~60\ & VCC))
-- \CNT0|q[19]~62\ = CARRY((\CNT0|q\(19) & !\CNT0|q[18]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT0|q\(19),
	datad => VCC,
	cin => \CNT0|q[18]~60\,
	combout => \CNT0|q[19]~61_combout\,
	cout => \CNT0|q[19]~62\);

-- Location: FF_X42_Y1_N13
\CNT0|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[19]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(19));

-- Location: LCCOMB_X42_Y1_N14
\CNT0|q[20]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[20]~63_combout\ = (\CNT0|q\(20) & (!\CNT0|q[19]~62\)) # (!\CNT0|q\(20) & ((\CNT0|q[19]~62\) # (GND)))
-- \CNT0|q[20]~64\ = CARRY((!\CNT0|q[19]~62\) # (!\CNT0|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT0|q\(20),
	datad => VCC,
	cin => \CNT0|q[19]~62\,
	combout => \CNT0|q[20]~63_combout\,
	cout => \CNT0|q[20]~64\);

-- Location: FF_X42_Y1_N15
\CNT0|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[20]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(20));

-- Location: LCCOMB_X42_Y1_N16
\CNT0|q[21]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[21]~65_combout\ = (\CNT0|q\(21) & (\CNT0|q[20]~64\ $ (GND))) # (!\CNT0|q\(21) & (!\CNT0|q[20]~64\ & VCC))
-- \CNT0|q[21]~66\ = CARRY((\CNT0|q\(21) & !\CNT0|q[20]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT0|q\(21),
	datad => VCC,
	cin => \CNT0|q[20]~64\,
	combout => \CNT0|q[21]~65_combout\,
	cout => \CNT0|q[21]~66\);

-- Location: FF_X42_Y1_N17
\CNT0|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[21]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(21));

-- Location: LCCOMB_X42_Y1_N18
\CNT0|q[22]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[22]~67_combout\ = (\CNT0|q\(22) & (!\CNT0|q[21]~66\)) # (!\CNT0|q\(22) & ((\CNT0|q[21]~66\) # (GND)))
-- \CNT0|q[22]~68\ = CARRY((!\CNT0|q[21]~66\) # (!\CNT0|q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT0|q\(22),
	datad => VCC,
	cin => \CNT0|q[21]~66\,
	combout => \CNT0|q[22]~67_combout\,
	cout => \CNT0|q[22]~68\);

-- Location: FF_X42_Y1_N19
\CNT0|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[22]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(22));

-- Location: LCCOMB_X42_Y1_N20
\CNT0|q[23]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[23]~69_combout\ = (\CNT0|q\(23) & (\CNT0|q[22]~68\ $ (GND))) # (!\CNT0|q\(23) & (!\CNT0|q[22]~68\ & VCC))
-- \CNT0|q[23]~70\ = CARRY((\CNT0|q\(23) & !\CNT0|q[22]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT0|q\(23),
	datad => VCC,
	cin => \CNT0|q[22]~68\,
	combout => \CNT0|q[23]~69_combout\,
	cout => \CNT0|q[23]~70\);

-- Location: FF_X42_Y1_N21
\CNT0|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[23]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(23));

-- Location: LCCOMB_X42_Y1_N22
\CNT0|q[24]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[24]~71_combout\ = (\CNT0|q\(24) & (!\CNT0|q[23]~70\)) # (!\CNT0|q\(24) & ((\CNT0|q[23]~70\) # (GND)))
-- \CNT0|q[24]~72\ = CARRY((!\CNT0|q[23]~70\) # (!\CNT0|q\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CNT0|q\(24),
	datad => VCC,
	cin => \CNT0|q[23]~70\,
	combout => \CNT0|q[24]~71_combout\,
	cout => \CNT0|q[24]~72\);

-- Location: FF_X42_Y1_N23
\CNT0|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~inputclkctrl_outclk\,
	d => \CNT0|q[24]~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(24));

-- Location: LCCOMB_X42_Y1_N24
\CNT0|q[25]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CNT0|q[25]~73_combout\ = \CNT0|q\(25) $ (!\CNT0|q[24]~72\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CNT0|q\(25),
	cin => \CNT0|q[24]~72\,
	combout => \CNT0|q[25]~73_combout\);

-- Location: FF_X42_Y1_N25
\CNT0|q[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~input_o\,
	d => \CNT0|q[25]~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CNT0|q\(25));

-- Location: CLKCTRL_G17
\CNT0|q[25]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CNT0|q[25]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CNT0|q[25]~clkctrl_outclk\);

-- Location: LCCOMB_X58_Y42_N12
\FSM0|cseq|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|cseq|Mux0~1_combout\ = (\FSM0|curr_state\(0) & (!\FSM0|curr_state\(1) & ((Instr(1)) # (Instr(0))))) # (!\FSM0|curr_state\(0) & (((\FSM0|curr_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(1),
	datab => \FSM0|curr_state\(0),
	datac => Instr(0),
	datad => \FSM0|curr_state\(1),
	combout => \FSM0|cseq|Mux0~1_combout\);

-- Location: LCCOMB_X58_Y42_N30
\FSM0|cseq|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|cseq|Mux0~2_combout\ = (\FSM0|curr_state\(0) & ((\FSM0|cseq|Mux0~1_combout\) # (!\FSM0|curr_state\(3)))) # (!\FSM0|curr_state\(0) & ((\FSM0|curr_state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cseq|Mux0~1_combout\,
	datab => \FSM0|curr_state\(0),
	datad => \FSM0|curr_state\(3),
	combout => \FSM0|cseq|Mux0~2_combout\);

-- Location: LCCOMB_X55_Y41_N16
\FSM0|aludecod|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|aludecod|Selector0~0_combout\ = (\FSM0|aludecod|WideOr1~0_combout\ & Instr(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FSM0|aludecod|WideOr1~0_combout\,
	datad => Instr(15),
	combout => \FSM0|aludecod|Selector0~0_combout\);

-- Location: IOIBUF_X49_Y54_N29
\KEY[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X59_Y42_N30
\FSM0|aludecod|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|aludecod|Decoder0~1_combout\ = (!\FSM0|curr_state\(1) & !\FSM0|curr_state\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(1),
	datac => \FSM0|curr_state\(2),
	combout => \FSM0|aludecod|Decoder0~1_combout\);

-- Location: LCCOMB_X59_Y42_N24
\FSM0|pc_write\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|pc_write~combout\ = (\FSM0|aludecod|Decoder0~1_combout\ & ((\FSM0|curr_state\(3) & (\FSM0|curr_state\(0) & \ALU0|m2|m3|out~0_combout\)) # (!\FSM0|curr_state\(3) & (!\FSM0|curr_state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(3),
	datab => \FSM0|curr_state\(0),
	datac => \FSM0|aludecod|Decoder0~1_combout\,
	datad => \ALU0|m2|m3|out~0_combout\,
	combout => \FSM0|pc_write~combout\);

-- Location: FF_X61_Y43_N21
\PC[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[6]~19_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \FSM0|pc_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(6));

-- Location: LCCOMB_X58_Y42_N0
\FSM0|cu_decoder|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|cu_decoder|Mux2~0_combout\ = (!\FSM0|curr_state\(0) & ((\FSM0|curr_state\(1) & (!\FSM0|curr_state\(3) & \FSM0|curr_state\(2))) # (!\FSM0|curr_state\(1) & (\FSM0|curr_state\(3) & !\FSM0|curr_state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(1),
	datab => \FSM0|curr_state\(0),
	datac => \FSM0|curr_state\(3),
	datad => \FSM0|curr_state\(2),
	combout => \FSM0|cu_decoder|Mux2~0_combout\);

-- Location: LCCOMB_X60_Y45_N26
\FSM0|aludecod|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|aludecod|Decoder0~0_combout\ = (!\FSM0|curr_state\(3) & (!\FSM0|curr_state\(0) & (!\FSM0|curr_state\(1) & !\FSM0|curr_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(3),
	datab => \FSM0|curr_state\(0),
	datac => \FSM0|curr_state\(1),
	datad => \FSM0|curr_state\(2),
	combout => \FSM0|aludecod|Decoder0~0_combout\);

-- Location: FF_X55_Y40_N5
\Instr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Memory0|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \FSM0|aludecod|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Instr(3));

-- Location: LCCOMB_X58_Y41_N0
\RegBank0|RD1[2]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[2]~35_combout\ = (Instr(6) & !Instr(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(6),
	datac => Instr(7),
	combout => \RegBank0|RD1[2]~35_combout\);

-- Location: LCCOMB_X60_Y45_N16
\FSM0|cu_decoder|reg_wr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|cu_decoder|reg_wr~0_combout\ = (!\FSM0|curr_state\(3) & (\FSM0|curr_state\(2) & (\FSM0|curr_state\(0) $ (!\FSM0|curr_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(3),
	datab => \FSM0|curr_state\(0),
	datac => \FSM0|curr_state\(1),
	datad => \FSM0|curr_state\(2),
	combout => \FSM0|cu_decoder|reg_wr~0_combout\);

-- Location: LCCOMB_X58_Y41_N2
\RegBank0|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|Decoder0~1_combout\ = (!Instr(6) & (Instr(5) & (Instr(7) & \FSM0|cu_decoder|reg_wr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(6),
	datab => Instr(5),
	datac => Instr(7),
	datad => \FSM0|cu_decoder|reg_wr~0_combout\,
	combout => \RegBank0|Decoder0~1_combout\);

-- Location: FF_X59_Y42_N27
\RegBank0|register_array[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[8]~15_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[5][8]~q\);

-- Location: LCCOMB_X58_Y41_N4
\RegBank0|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|Decoder0~3_combout\ = (Instr(6) & (Instr(5) & (Instr(7) & \FSM0|cu_decoder|reg_wr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(6),
	datab => Instr(5),
	datac => Instr(7),
	datad => \FSM0|cu_decoder|reg_wr~0_combout\,
	combout => \RegBank0|Decoder0~3_combout\);

-- Location: FF_X62_Y43_N25
\RegBank0|register_array[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[8]~15_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[7][8]~q\);

-- Location: LCCOMB_X58_Y41_N16
\RegBank0|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|Decoder0~0_combout\ = (Instr(6) & (!Instr(5) & (Instr(7) & \FSM0|cu_decoder|reg_wr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(6),
	datab => Instr(5),
	datac => Instr(7),
	datad => \FSM0|cu_decoder|reg_wr~0_combout\,
	combout => \RegBank0|Decoder0~0_combout\);

-- Location: FF_X60_Y43_N31
\RegBank0|register_array[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[8]~15_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[6][8]~q\);

-- Location: LCCOMB_X57_Y41_N8
\RegBank0|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|Decoder0~2_combout\ = (!Instr(6) & (!Instr(5) & (\FSM0|cu_decoder|reg_wr~0_combout\ & Instr(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(6),
	datab => Instr(5),
	datac => \FSM0|cu_decoder|reg_wr~0_combout\,
	datad => Instr(7),
	combout => \RegBank0|Decoder0~2_combout\);

-- Location: FF_X60_Y43_N1
\RegBank0|register_array[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[8]~15_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[4][8]~q\);

-- Location: LCCOMB_X60_Y43_N0
\RegBank0|RD1[8]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[8]~62_combout\ = (Instr(6) & ((\RegBank0|register_array[6][8]~q\) # ((Instr(5))))) # (!Instr(6) & (((\RegBank0|register_array[4][8]~q\ & !Instr(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[6][8]~q\,
	datab => Instr(6),
	datac => \RegBank0|register_array[4][8]~q\,
	datad => Instr(5),
	combout => \RegBank0|RD1[8]~62_combout\);

-- Location: LCCOMB_X62_Y43_N24
\RegBank0|RD1[8]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[8]~63_combout\ = (Instr(5) & ((\RegBank0|RD1[8]~62_combout\ & ((\RegBank0|register_array[7][8]~q\))) # (!\RegBank0|RD1[8]~62_combout\ & (\RegBank0|register_array[5][8]~q\)))) # (!Instr(5) & (((\RegBank0|RD1[8]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[5][8]~q\,
	datab => Instr(5),
	datac => \RegBank0|register_array[7][8]~q\,
	datad => \RegBank0|RD1[8]~62_combout\,
	combout => \RegBank0|RD1[8]~63_combout\);

-- Location: LCCOMB_X57_Y41_N10
\RegBank0|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|Decoder0~5_combout\ = (!Instr(6) & (Instr(5) & (\FSM0|cu_decoder|reg_wr~0_combout\ & !Instr(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(6),
	datab => Instr(5),
	datac => \FSM0|cu_decoder|reg_wr~0_combout\,
	datad => Instr(7),
	combout => \RegBank0|Decoder0~5_combout\);

-- Location: FF_X62_Y43_N19
\RegBank0|register_array[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[8]~15_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[1][8]~q\);

-- Location: LCCOMB_X57_Y41_N6
\RegBank0|RD1[2]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[2]~34_combout\ = (Instr(7)) # ((Instr(6) & Instr(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(6),
	datab => Instr(7),
	datac => Instr(5),
	combout => \RegBank0|RD1[2]~34_combout\);

-- Location: LCCOMB_X62_Y43_N18
\RegBank0|RD1[8]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[8]~64_combout\ = (\RegBank0|RD1[2]~35_combout\ & (((\RegBank0|RD1[2]~34_combout\)))) # (!\RegBank0|RD1[2]~35_combout\ & ((\RegBank0|RD1[2]~34_combout\ & (\RegBank0|RD1[8]~63_combout\)) # (!\RegBank0|RD1[2]~34_combout\ & 
-- ((\RegBank0|register_array[1][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[2]~35_combout\,
	datab => \RegBank0|RD1[8]~63_combout\,
	datac => \RegBank0|register_array[1][8]~q\,
	datad => \RegBank0|RD1[2]~34_combout\,
	combout => \RegBank0|RD1[8]~64_combout\);

-- Location: LCCOMB_X58_Y41_N30
\RegBank0|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|Decoder0~4_combout\ = (Instr(6) & (!Instr(5) & (!Instr(7) & \FSM0|cu_decoder|reg_wr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(6),
	datab => Instr(5),
	datac => Instr(7),
	datad => \FSM0|cu_decoder|reg_wr~0_combout\,
	combout => \RegBank0|Decoder0~4_combout\);

-- Location: FF_X58_Y43_N9
\RegBank0|register_array[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[8]~15_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[2][8]~q\);

-- Location: LCCOMB_X57_Y41_N20
\RegBank0|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|Decoder0~6_combout\ = (Instr(6) & (Instr(5) & (\FSM0|cu_decoder|reg_wr~0_combout\ & !Instr(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(6),
	datab => Instr(5),
	datac => \FSM0|cu_decoder|reg_wr~0_combout\,
	datad => Instr(7),
	combout => \RegBank0|Decoder0~6_combout\);

-- Location: FF_X58_Y43_N13
\RegBank0|register_array[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[8]~15_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[3][8]~q\);

-- Location: LCCOMB_X58_Y43_N8
\RegBank0|RD1[8]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[8]~65_combout\ = (\RegBank0|RD1[8]~64_combout\ & (((\RegBank0|register_array[3][8]~q\)) # (!\RegBank0|RD1[2]~35_combout\))) # (!\RegBank0|RD1[8]~64_combout\ & (\RegBank0|RD1[2]~35_combout\ & (\RegBank0|register_array[2][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[8]~64_combout\,
	datab => \RegBank0|RD1[2]~35_combout\,
	datac => \RegBank0|register_array[2][8]~q\,
	datad => \RegBank0|register_array[3][8]~q\,
	combout => \RegBank0|RD1[8]~65_combout\);

-- Location: LCCOMB_X57_Y41_N18
\RegBank0|RD1[8]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[8]~105_combout\ = (\RegBank0|RD1[8]~65_combout\ & ((Instr(6)) # ((Instr(7)) # (Instr(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(6),
	datab => Instr(7),
	datac => Instr(5),
	datad => \RegBank0|RD1[8]~65_combout\,
	combout => \RegBank0|RD1[8]~105_combout\);

-- Location: FF_X57_Y41_N19
\WriteData[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD1[8]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WriteData(8));

-- Location: FF_X56_Y42_N19
\PC[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[8]~15_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \FSM0|pc_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(8));

-- Location: LCCOMB_X60_Y45_N8
\FSM0|cu_decoder|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|cu_decoder|Mux4~0_combout\ = (!\FSM0|curr_state\(2) & ((\FSM0|curr_state\(3) & (\FSM0|curr_state\(0) & !\FSM0|curr_state\(1))) # (!\FSM0|curr_state\(3) & (!\FSM0|curr_state\(0) & \FSM0|curr_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(3),
	datab => \FSM0|curr_state\(0),
	datac => \FSM0|curr_state\(1),
	datad => \FSM0|curr_state\(2),
	combout => \FSM0|cu_decoder|Mux4~0_combout\);

-- Location: LCCOMB_X56_Y42_N12
\SrcA[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcA[8]~7_combout\ = (!\FSM0|cu_decoder|Mux4~0_combout\ & ((\FSM0|cu_decoder|Mux2~0_combout\ & (WriteData(8))) # (!\FSM0|cu_decoder|Mux2~0_combout\ & ((PC(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => WriteData(8),
	datab => PC(8),
	datac => \FSM0|cu_decoder|Mux4~0_combout\,
	datad => \FSM0|cu_decoder|Mux2~0_combout\,
	combout => \SrcA[8]~7_combout\);

-- Location: LCCOMB_X55_Y41_N18
\FSM0|aludecod|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|aludecod|Selector2~0_combout\ = (Instr(13) & \FSM0|aludecod|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Instr(13),
	datac => \FSM0|aludecod|WideOr1~0_combout\,
	combout => \FSM0|aludecod|Selector2~0_combout\);

-- Location: LCCOMB_X58_Y42_N20
\FSM0|pc_write~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|pc_write~0_combout\ = (!\FSM0|curr_state\(1) & (\FSM0|curr_state\(0) & !\FSM0|curr_state\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(1),
	datab => \FSM0|curr_state\(0),
	datad => \FSM0|curr_state\(2),
	combout => \FSM0|pc_write~0_combout\);

-- Location: LCCOMB_X59_Y42_N18
\FSM0|cu_decoder|Decoder2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|cu_decoder|Decoder2~0_combout\ = (\FSM0|curr_state\(2) & (!\FSM0|curr_state\(0) & !\FSM0|curr_state\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(2),
	datab => \FSM0|curr_state\(0),
	datad => \FSM0|curr_state\(3),
	combout => \FSM0|cu_decoder|Decoder2~0_combout\);

-- Location: LCCOMB_X57_Y43_N22
\FSM0|aludecod|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|aludecod|Selector1~0_combout\ = (Instr(14) & \FSM0|aludecod|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Instr(14),
	datac => \FSM0|aludecod|WideOr1~0_combout\,
	combout => \FSM0|aludecod|Selector1~0_combout\);

-- Location: FF_X60_Y44_N29
\Instr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Memory0|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \FSM0|aludecod|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Instr(4));

-- Location: LCCOMB_X59_Y43_N18
\RegBank0|RD2[13]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[13]~35_combout\ = (Instr(3) & !Instr(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(3),
	datad => Instr(4),
	combout => \RegBank0|RD2[13]~35_combout\);

-- Location: FF_X56_Y40_N23
\RegBank0|register_array[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[10]~11_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[7][10]~q\);

-- Location: FF_X60_Y43_N11
\RegBank0|register_array[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[10]~11_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[6][10]~q\);

-- Location: FF_X60_Y43_N21
\RegBank0|register_array[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[10]~11_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[4][10]~q\);

-- Location: LCCOMB_X60_Y43_N10
\RegBank0|RD2[10]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[10]~54_combout\ = (Instr(2) & (Instr(3))) # (!Instr(2) & ((Instr(3) & (\RegBank0|register_array[6][10]~q\)) # (!Instr(3) & ((\RegBank0|register_array[4][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(2),
	datab => Instr(3),
	datac => \RegBank0|register_array[6][10]~q\,
	datad => \RegBank0|register_array[4][10]~q\,
	combout => \RegBank0|RD2[10]~54_combout\);

-- Location: FF_X56_Y40_N5
\RegBank0|register_array[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[10]~11_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[5][10]~q\);

-- Location: LCCOMB_X56_Y40_N4
\RegBank0|RD2[10]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[10]~55_combout\ = (\RegBank0|RD2[10]~54_combout\ & ((\RegBank0|register_array[7][10]~q\) # ((!Instr(2))))) # (!\RegBank0|RD2[10]~54_combout\ & (((\RegBank0|register_array[5][10]~q\ & Instr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[7][10]~q\,
	datab => \RegBank0|RD2[10]~54_combout\,
	datac => \RegBank0|register_array[5][10]~q\,
	datad => Instr(2),
	combout => \RegBank0|RD2[10]~55_combout\);

-- Location: FF_X61_Y40_N9
\RegBank0|register_array[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[10]~11_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[1][10]~q\);

-- Location: LCCOMB_X58_Y40_N24
\RegBank0|RD2[10]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[10]~56_combout\ = (\RegBank0|RD2[13]~34_combout\ & ((\RegBank0|RD2[10]~55_combout\) # ((\RegBank0|RD2[13]~35_combout\)))) # (!\RegBank0|RD2[13]~34_combout\ & (((!\RegBank0|RD2[13]~35_combout\ & \RegBank0|register_array[1][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[10]~55_combout\,
	datab => \RegBank0|RD2[13]~34_combout\,
	datac => \RegBank0|RD2[13]~35_combout\,
	datad => \RegBank0|register_array[1][10]~q\,
	combout => \RegBank0|RD2[10]~56_combout\);

-- Location: FF_X58_Y40_N11
\RegBank0|register_array[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[10]~11_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[3][10]~q\);

-- Location: FF_X58_Y40_N23
\RegBank0|register_array[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[10]~11_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[2][10]~q\);

-- Location: LCCOMB_X58_Y40_N10
\RegBank0|RD2[10]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[10]~57_combout\ = (\RegBank0|RD2[13]~35_combout\ & ((\RegBank0|RD2[10]~56_combout\ & (\RegBank0|register_array[3][10]~q\)) # (!\RegBank0|RD2[10]~56_combout\ & ((\RegBank0|register_array[2][10]~q\))))) # (!\RegBank0|RD2[13]~35_combout\ & 
-- (\RegBank0|RD2[10]~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[13]~35_combout\,
	datab => \RegBank0|RD2[10]~56_combout\,
	datac => \RegBank0|register_array[3][10]~q\,
	datad => \RegBank0|register_array[2][10]~q\,
	combout => \RegBank0|RD2[10]~57_combout\);

-- Location: LCCOMB_X60_Y44_N16
\RegBank0|RD2[10]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[10]~103_combout\ = (\RegBank0|RD2[10]~57_combout\ & ((Instr(2)) # ((Instr(3)) # (Instr(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(2),
	datab => \RegBank0|RD2[10]~57_combout\,
	datac => Instr(3),
	datad => Instr(4),
	combout => \RegBank0|RD2[10]~103_combout\);

-- Location: FF_X60_Y44_N17
\B[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD2[10]~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(10));

-- Location: LCCOMB_X60_Y45_N18
\FSM0|cu_decoder|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|cu_decoder|Mux1~0_combout\ = (\FSM0|curr_state\(2)) # (\FSM0|curr_state\(3) $ (!\FSM0|curr_state\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(3),
	datac => \FSM0|curr_state\(1),
	datad => \FSM0|curr_state\(2),
	combout => \FSM0|cu_decoder|Mux1~0_combout\);

-- Location: LCCOMB_X59_Y42_N2
\SrcB[10]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcB[10]~6_combout\ = (!\FSM0|cu_decoder|Mux4~0_combout\ & (\FSM0|pc_write~0_combout\ & (Instr(7) & !\FSM0|cu_decoder|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cu_decoder|Mux4~0_combout\,
	datab => \FSM0|pc_write~0_combout\,
	datac => Instr(7),
	datad => \FSM0|cu_decoder|Mux1~0_combout\,
	combout => \SrcB[10]~6_combout\);

-- Location: LCCOMB_X60_Y44_N26
\SrcB[10]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcB[10]~7_combout\ = (\SrcB[10]~5_combout\) # ((\SrcB[10]~6_combout\) # ((B(10) & \FSM0|cu_decoder|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[10]~5_combout\,
	datab => B(10),
	datac => \SrcB[10]~6_combout\,
	datad => \FSM0|cu_decoder|Mux1~0_combout\,
	combout => \SrcB[10]~7_combout\);

-- Location: LCCOMB_X60_Y44_N20
\SrcB[9]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcB[9]~8_combout\ = (Instr(6) & (!\FSM0|cu_decoder|Mux4~0_combout\ & (\FSM0|pc_write~0_combout\ & !\FSM0|cu_decoder|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(6),
	datab => \FSM0|cu_decoder|Mux4~0_combout\,
	datac => \FSM0|pc_write~0_combout\,
	datad => \FSM0|cu_decoder|Mux1~0_combout\,
	combout => \SrcB[9]~8_combout\);

-- Location: FF_X55_Y44_N9
\RegBank0|register_array[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \Result[9]~13_combout\,
	ena => \RegBank0|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[3][9]~q\);

-- Location: FF_X60_Y41_N7
\RegBank0|register_array[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[9]~13_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[2][9]~q\);

-- Location: FF_X60_Y41_N1
\RegBank0|register_array[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[9]~13_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[1][9]~q\);

-- Location: LCCOMB_X60_Y41_N6
\RegBank0|RD2[9]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[9]~60_combout\ = (\RegBank0|RD2[13]~34_combout\ & (\RegBank0|RD2[13]~35_combout\)) # (!\RegBank0|RD2[13]~34_combout\ & ((\RegBank0|RD2[13]~35_combout\ & (\RegBank0|register_array[2][9]~q\)) # (!\RegBank0|RD2[13]~35_combout\ & 
-- ((\RegBank0|register_array[1][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[13]~34_combout\,
	datab => \RegBank0|RD2[13]~35_combout\,
	datac => \RegBank0|register_array[2][9]~q\,
	datad => \RegBank0|register_array[1][9]~q\,
	combout => \RegBank0|RD2[9]~60_combout\);

-- Location: FF_X59_Y43_N31
\RegBank0|register_array[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[9]~13_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[5][9]~q\);

-- Location: FF_X60_Y42_N23
\RegBank0|register_array[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[9]~13_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[4][9]~q\);

-- Location: LCCOMB_X59_Y43_N30
\RegBank0|RD2[9]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[9]~58_combout\ = (Instr(3) & (Instr(2))) # (!Instr(3) & ((Instr(2) & (\RegBank0|register_array[5][9]~q\)) # (!Instr(2) & ((\RegBank0|register_array[4][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(3),
	datab => Instr(2),
	datac => \RegBank0|register_array[5][9]~q\,
	datad => \RegBank0|register_array[4][9]~q\,
	combout => \RegBank0|RD2[9]~58_combout\);

-- Location: FF_X61_Y42_N19
\RegBank0|register_array[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[9]~13_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[7][9]~q\);

-- Location: FF_X60_Y42_N13
\RegBank0|register_array[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[9]~13_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[6][9]~q\);

-- Location: LCCOMB_X60_Y42_N12
\RegBank0|RD2[9]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[9]~59_combout\ = (\RegBank0|RD2[9]~58_combout\ & ((\RegBank0|register_array[7][9]~q\) # ((!Instr(3))))) # (!\RegBank0|RD2[9]~58_combout\ & (((\RegBank0|register_array[6][9]~q\ & Instr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[9]~58_combout\,
	datab => \RegBank0|register_array[7][9]~q\,
	datac => \RegBank0|register_array[6][9]~q\,
	datad => Instr(3),
	combout => \RegBank0|RD2[9]~59_combout\);

-- Location: LCCOMB_X60_Y42_N8
\RegBank0|RD2[9]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[9]~61_combout\ = (\RegBank0|RD2[13]~34_combout\ & ((\RegBank0|RD2[9]~60_combout\ & (\RegBank0|register_array[3][9]~q\)) # (!\RegBank0|RD2[9]~60_combout\ & ((\RegBank0|RD2[9]~59_combout\))))) # (!\RegBank0|RD2[13]~34_combout\ & 
-- (((\RegBank0|RD2[9]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[13]~34_combout\,
	datab => \RegBank0|register_array[3][9]~q\,
	datac => \RegBank0|RD2[9]~60_combout\,
	datad => \RegBank0|RD2[9]~59_combout\,
	combout => \RegBank0|RD2[9]~61_combout\);

-- Location: LCCOMB_X60_Y44_N14
\RegBank0|RD2[9]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[9]~104_combout\ = (\RegBank0|RD2[9]~61_combout\ & ((Instr(2)) # ((Instr(4)) # (Instr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(2),
	datab => Instr(4),
	datac => Instr(3),
	datad => \RegBank0|RD2[9]~61_combout\,
	combout => \RegBank0|RD2[9]~104_combout\);

-- Location: FF_X60_Y44_N15
\B[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD2[9]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(9));

-- Location: LCCOMB_X60_Y44_N24
\SrcB[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcB[9]~9_combout\ = (\SrcB[10]~5_combout\) # ((\SrcB[9]~8_combout\) # ((B(9) & \FSM0|cu_decoder|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[10]~5_combout\,
	datab => \SrcB[9]~8_combout\,
	datac => B(9),
	datad => \FSM0|cu_decoder|Mux1~0_combout\,
	combout => \SrcB[9]~9_combout\);

-- Location: FF_X60_Y41_N3
\RegBank0|register_array[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[6]~19_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[2][6]~q\);

-- Location: FF_X56_Y43_N27
\RegBank0|register_array[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \Result[6]~19_combout\,
	ena => \RegBank0|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[3][6]~q\);

-- Location: FF_X60_Y42_N21
\RegBank0|register_array[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[6]~19_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[6][6]~q\);

-- Location: FF_X60_Y42_N15
\RegBank0|register_array[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[6]~19_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[4][6]~q\);

-- Location: LCCOMB_X60_Y42_N20
\RegBank0|RD2[6]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[6]~70_combout\ = (Instr(3) & ((Instr(2)) # ((\RegBank0|register_array[6][6]~q\)))) # (!Instr(3) & (!Instr(2) & ((\RegBank0|register_array[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(3),
	datab => Instr(2),
	datac => \RegBank0|register_array[6][6]~q\,
	datad => \RegBank0|register_array[4][6]~q\,
	combout => \RegBank0|RD2[6]~70_combout\);

-- Location: FF_X61_Y42_N15
\RegBank0|register_array[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[6]~19_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[7][6]~q\);

-- Location: FF_X59_Y43_N9
\RegBank0|register_array[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[6]~19_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[5][6]~q\);

-- Location: LCCOMB_X59_Y43_N8
\RegBank0|RD2[6]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[6]~71_combout\ = (\RegBank0|RD2[6]~70_combout\ & ((\RegBank0|register_array[7][6]~q\) # ((!Instr(2))))) # (!\RegBank0|RD2[6]~70_combout\ & (((\RegBank0|register_array[5][6]~q\ & Instr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[6]~70_combout\,
	datab => \RegBank0|register_array[7][6]~q\,
	datac => \RegBank0|register_array[5][6]~q\,
	datad => Instr(2),
	combout => \RegBank0|RD2[6]~71_combout\);

-- Location: FF_X60_Y41_N13
\RegBank0|register_array[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[6]~19_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[1][6]~q\);

-- Location: LCCOMB_X59_Y43_N2
\RegBank0|RD2[6]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[6]~72_combout\ = (\RegBank0|RD2[13]~34_combout\ & ((\RegBank0|RD2[6]~71_combout\) # ((\RegBank0|RD2[13]~35_combout\)))) # (!\RegBank0|RD2[13]~34_combout\ & (((\RegBank0|register_array[1][6]~q\ & !\RegBank0|RD2[13]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[6]~71_combout\,
	datab => \RegBank0|RD2[13]~34_combout\,
	datac => \RegBank0|register_array[1][6]~q\,
	datad => \RegBank0|RD2[13]~35_combout\,
	combout => \RegBank0|RD2[6]~72_combout\);

-- Location: LCCOMB_X59_Y43_N20
\RegBank0|RD2[6]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[6]~73_combout\ = (\RegBank0|RD2[13]~35_combout\ & ((\RegBank0|RD2[6]~72_combout\ & ((\RegBank0|register_array[3][6]~q\))) # (!\RegBank0|RD2[6]~72_combout\ & (\RegBank0|register_array[2][6]~q\)))) # (!\RegBank0|RD2[13]~35_combout\ & 
-- (((\RegBank0|RD2[6]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[2][6]~q\,
	datab => \RegBank0|RD2[13]~35_combout\,
	datac => \RegBank0|register_array[3][6]~q\,
	datad => \RegBank0|RD2[6]~72_combout\,
	combout => \RegBank0|RD2[6]~73_combout\);

-- Location: LCCOMB_X55_Y41_N14
\RegBank0|RD2[6]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[6]~107_combout\ = (\RegBank0|RD2[6]~73_combout\ & ((Instr(3)) # ((Instr(2)) # (Instr(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(3),
	datab => \RegBank0|RD2[6]~73_combout\,
	datac => Instr(2),
	datad => Instr(4),
	combout => \RegBank0|RD2[6]~107_combout\);

-- Location: FF_X55_Y41_N15
\B[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD2[6]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(6));

-- Location: FF_X54_Y41_N3
\RegBank0|register_array[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \Result[7]~17_combout\,
	ena => \RegBank0|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[3][7]~q\);

-- Location: FF_X60_Y42_N19
\RegBank0|register_array[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[7]~17_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[4][7]~q\);

-- Location: FF_X59_Y42_N29
\RegBank0|register_array[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[7]~17_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[5][7]~q\);

-- Location: LCCOMB_X60_Y42_N18
\RegBank0|RD1[7]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[7]~66_combout\ = (Instr(5) & ((Instr(6)) # ((\RegBank0|register_array[5][7]~q\)))) # (!Instr(5) & (!Instr(6) & (\RegBank0|register_array[4][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(5),
	datab => Instr(6),
	datac => \RegBank0|register_array[4][7]~q\,
	datad => \RegBank0|register_array[5][7]~q\,
	combout => \RegBank0|RD1[7]~66_combout\);

-- Location: FF_X62_Y42_N19
\RegBank0|register_array[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[7]~17_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[7][7]~q\);

-- Location: FF_X62_Y42_N25
\RegBank0|register_array[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[7]~17_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[6][7]~q\);

-- Location: LCCOMB_X62_Y42_N18
\RegBank0|RD1[7]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[7]~67_combout\ = (\RegBank0|RD1[7]~66_combout\ & (((\RegBank0|register_array[7][7]~q\)) # (!Instr(6)))) # (!\RegBank0|RD1[7]~66_combout\ & (Instr(6) & ((\RegBank0|register_array[6][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[7]~66_combout\,
	datab => Instr(6),
	datac => \RegBank0|register_array[7][7]~q\,
	datad => \RegBank0|register_array[6][7]~q\,
	combout => \RegBank0|RD1[7]~67_combout\);

-- Location: FF_X62_Y43_N13
\RegBank0|register_array[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[7]~17_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[1][7]~q\);

-- Location: FF_X61_Y43_N15
\RegBank0|register_array[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[7]~17_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[2][7]~q\);

-- Location: LCCOMB_X62_Y43_N12
\RegBank0|RD1[7]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[7]~68_combout\ = (\RegBank0|RD1[2]~34_combout\ & (\RegBank0|RD1[2]~35_combout\)) # (!\RegBank0|RD1[2]~34_combout\ & ((\RegBank0|RD1[2]~35_combout\ & ((\RegBank0|register_array[2][7]~q\))) # (!\RegBank0|RD1[2]~35_combout\ & 
-- (\RegBank0|register_array[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[2]~34_combout\,
	datab => \RegBank0|RD1[2]~35_combout\,
	datac => \RegBank0|register_array[1][7]~q\,
	datad => \RegBank0|register_array[2][7]~q\,
	combout => \RegBank0|RD1[7]~68_combout\);

-- Location: LCCOMB_X62_Y43_N30
\RegBank0|RD1[7]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[7]~69_combout\ = (\RegBank0|RD1[2]~34_combout\ & ((\RegBank0|RD1[7]~68_combout\ & (\RegBank0|register_array[3][7]~q\)) # (!\RegBank0|RD1[7]~68_combout\ & ((\RegBank0|RD1[7]~67_combout\))))) # (!\RegBank0|RD1[2]~34_combout\ & 
-- (((\RegBank0|RD1[7]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[2]~34_combout\,
	datab => \RegBank0|register_array[3][7]~q\,
	datac => \RegBank0|RD1[7]~67_combout\,
	datad => \RegBank0|RD1[7]~68_combout\,
	combout => \RegBank0|RD1[7]~69_combout\);

-- Location: LCCOMB_X61_Y42_N0
\RegBank0|RD1[7]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[7]~106_combout\ = (\RegBank0|RD1[7]~69_combout\ & ((Instr(7)) # ((Instr(5)) # (Instr(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(7),
	datab => Instr(5),
	datac => \RegBank0|RD1[7]~69_combout\,
	datad => Instr(6),
	combout => \RegBank0|RD1[7]~106_combout\);

-- Location: FF_X61_Y42_N1
\WriteData[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD1[7]~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WriteData(7));

-- Location: LCCOMB_X60_Y41_N0
\RegBank0|RD1[9]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[9]~60_combout\ = (\RegBank0|RD1[2]~35_combout\ & ((\RegBank0|RD1[2]~34_combout\) # ((\RegBank0|register_array[2][9]~q\)))) # (!\RegBank0|RD1[2]~35_combout\ & (!\RegBank0|RD1[2]~34_combout\ & (\RegBank0|register_array[1][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[2]~35_combout\,
	datab => \RegBank0|RD1[2]~34_combout\,
	datac => \RegBank0|register_array[1][9]~q\,
	datad => \RegBank0|register_array[2][9]~q\,
	combout => \RegBank0|RD1[9]~60_combout\);

-- Location: LCCOMB_X60_Y42_N22
\RegBank0|RD1[9]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[9]~58_combout\ = (Instr(5) & ((Instr(6)) # ((\RegBank0|register_array[5][9]~q\)))) # (!Instr(5) & (!Instr(6) & (\RegBank0|register_array[4][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(5),
	datab => Instr(6),
	datac => \RegBank0|register_array[4][9]~q\,
	datad => \RegBank0|register_array[5][9]~q\,
	combout => \RegBank0|RD1[9]~58_combout\);

-- Location: LCCOMB_X61_Y42_N18
\RegBank0|RD1[9]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[9]~59_combout\ = (Instr(6) & ((\RegBank0|RD1[9]~58_combout\ & ((\RegBank0|register_array[7][9]~q\))) # (!\RegBank0|RD1[9]~58_combout\ & (\RegBank0|register_array[6][9]~q\)))) # (!Instr(6) & (((\RegBank0|RD1[9]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[6][9]~q\,
	datab => Instr(6),
	datac => \RegBank0|register_array[7][9]~q\,
	datad => \RegBank0|RD1[9]~58_combout\,
	combout => \RegBank0|RD1[9]~59_combout\);

-- Location: LCCOMB_X60_Y42_N10
\RegBank0|RD1[9]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[9]~61_combout\ = (\RegBank0|RD1[2]~34_combout\ & ((\RegBank0|RD1[9]~60_combout\ & (\RegBank0|register_array[3][9]~q\)) # (!\RegBank0|RD1[9]~60_combout\ & ((\RegBank0|RD1[9]~59_combout\))))) # (!\RegBank0|RD1[2]~34_combout\ & 
-- (\RegBank0|RD1[9]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[2]~34_combout\,
	datab => \RegBank0|RD1[9]~60_combout\,
	datac => \RegBank0|register_array[3][9]~q\,
	datad => \RegBank0|RD1[9]~59_combout\,
	combout => \RegBank0|RD1[9]~61_combout\);

-- Location: LCCOMB_X57_Y42_N28
\RegBank0|RD1[9]~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[9]~104_combout\ = (\RegBank0|RD1[9]~61_combout\ & ((Instr(7)) # ((Instr(6)) # (Instr(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(7),
	datab => Instr(6),
	datac => \RegBank0|RD1[9]~61_combout\,
	datad => Instr(5),
	combout => \RegBank0|RD1[9]~104_combout\);

-- Location: FF_X57_Y42_N29
\WriteData[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD1[9]~104_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WriteData(9));

-- Location: LCCOMB_X60_Y43_N20
\RegBank0|RD1[10]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[10]~54_combout\ = (Instr(5) & (Instr(6))) # (!Instr(5) & ((Instr(6) & ((\RegBank0|register_array[6][10]~q\))) # (!Instr(6) & (\RegBank0|register_array[4][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(5),
	datab => Instr(6),
	datac => \RegBank0|register_array[4][10]~q\,
	datad => \RegBank0|register_array[6][10]~q\,
	combout => \RegBank0|RD1[10]~54_combout\);

-- Location: LCCOMB_X56_Y40_N22
\RegBank0|RD1[10]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[10]~55_combout\ = (\RegBank0|RD1[10]~54_combout\ & (((\RegBank0|register_array[7][10]~q\) # (!Instr(5))))) # (!\RegBank0|RD1[10]~54_combout\ & (\RegBank0|register_array[5][10]~q\ & ((Instr(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[10]~54_combout\,
	datab => \RegBank0|register_array[5][10]~q\,
	datac => \RegBank0|register_array[7][10]~q\,
	datad => Instr(5),
	combout => \RegBank0|RD1[10]~55_combout\);

-- Location: LCCOMB_X61_Y40_N8
\RegBank0|RD1[10]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[10]~56_combout\ = (\RegBank0|RD1[2]~34_combout\ & ((\RegBank0|RD1[10]~55_combout\) # ((\RegBank0|RD1[2]~35_combout\)))) # (!\RegBank0|RD1[2]~34_combout\ & (((\RegBank0|register_array[1][10]~q\ & !\RegBank0|RD1[2]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[2]~34_combout\,
	datab => \RegBank0|RD1[10]~55_combout\,
	datac => \RegBank0|register_array[1][10]~q\,
	datad => \RegBank0|RD1[2]~35_combout\,
	combout => \RegBank0|RD1[10]~56_combout\);

-- Location: LCCOMB_X58_Y40_N22
\RegBank0|RD1[10]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[10]~57_combout\ = (\RegBank0|RD1[10]~56_combout\ & ((\RegBank0|register_array[3][10]~q\) # ((!\RegBank0|RD1[2]~35_combout\)))) # (!\RegBank0|RD1[10]~56_combout\ & (((\RegBank0|register_array[2][10]~q\ & \RegBank0|RD1[2]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[3][10]~q\,
	datab => \RegBank0|RD1[10]~56_combout\,
	datac => \RegBank0|register_array[2][10]~q\,
	datad => \RegBank0|RD1[2]~35_combout\,
	combout => \RegBank0|RD1[10]~57_combout\);

-- Location: LCCOMB_X57_Y41_N0
\RegBank0|RD1[10]~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[10]~103_combout\ = (\RegBank0|RD1[10]~57_combout\ & ((Instr(6)) # ((Instr(7)) # (Instr(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(6),
	datab => Instr(7),
	datac => Instr(5),
	datad => \RegBank0|RD1[10]~57_combout\,
	combout => \RegBank0|RD1[10]~103_combout\);

-- Location: FF_X57_Y41_N1
\WriteData[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD1[10]~103_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WriteData(10));

-- Location: FF_X60_Y41_N11
\RegBank0|register_array[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[11]~9_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[2][11]~q\);

-- Location: FF_X60_Y41_N29
\RegBank0|register_array[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[11]~9_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[1][11]~q\);

-- Location: LCCOMB_X60_Y41_N10
\RegBank0|RD2[11]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[11]~52_combout\ = (\RegBank0|RD2[13]~34_combout\ & (\RegBank0|RD2[13]~35_combout\)) # (!\RegBank0|RD2[13]~34_combout\ & ((\RegBank0|RD2[13]~35_combout\ & (\RegBank0|register_array[2][11]~q\)) # (!\RegBank0|RD2[13]~35_combout\ & 
-- ((\RegBank0|register_array[1][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[13]~34_combout\,
	datab => \RegBank0|RD2[13]~35_combout\,
	datac => \RegBank0|register_array[2][11]~q\,
	datad => \RegBank0|register_array[1][11]~q\,
	combout => \RegBank0|RD2[11]~52_combout\);

-- Location: FF_X54_Y41_N25
\RegBank0|register_array[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \Result[11]~9_combout\,
	ena => \RegBank0|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[3][11]~q\);

-- Location: FF_X58_Y41_N29
\RegBank0|register_array[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[11]~9_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[5][11]~q\);

-- Location: LCCOMB_X58_Y41_N28
\RegBank0|RD2[11]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[11]~50_combout\ = (Instr(2) & (((\RegBank0|register_array[5][11]~q\) # (Instr(3))))) # (!Instr(2) & (\RegBank0|register_array[4][11]~q\ & ((!Instr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(2),
	datab => \RegBank0|register_array[4][11]~q\,
	datac => \RegBank0|register_array[5][11]~q\,
	datad => Instr(3),
	combout => \RegBank0|RD2[11]~50_combout\);

-- Location: FF_X59_Y41_N17
\RegBank0|register_array[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[11]~9_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[6][11]~q\);

-- Location: FF_X59_Y41_N3
\RegBank0|register_array[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[11]~9_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[7][11]~q\);

-- Location: LCCOMB_X59_Y41_N16
\RegBank0|RD2[11]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[11]~51_combout\ = (Instr(3) & ((\RegBank0|RD2[11]~50_combout\ & ((\RegBank0|register_array[7][11]~q\))) # (!\RegBank0|RD2[11]~50_combout\ & (\RegBank0|register_array[6][11]~q\)))) # (!Instr(3) & (\RegBank0|RD2[11]~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(3),
	datab => \RegBank0|RD2[11]~50_combout\,
	datac => \RegBank0|register_array[6][11]~q\,
	datad => \RegBank0|register_array[7][11]~q\,
	combout => \RegBank0|RD2[11]~51_combout\);

-- Location: LCCOMB_X59_Y41_N20
\RegBank0|RD2[11]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[11]~53_combout\ = (\RegBank0|RD2[13]~34_combout\ & ((\RegBank0|RD2[11]~52_combout\ & (\RegBank0|register_array[3][11]~q\)) # (!\RegBank0|RD2[11]~52_combout\ & ((\RegBank0|RD2[11]~51_combout\))))) # (!\RegBank0|RD2[13]~34_combout\ & 
-- (\RegBank0|RD2[11]~52_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[13]~34_combout\,
	datab => \RegBank0|RD2[11]~52_combout\,
	datac => \RegBank0|register_array[3][11]~q\,
	datad => \RegBank0|RD2[11]~51_combout\,
	combout => \RegBank0|RD2[11]~53_combout\);

-- Location: LCCOMB_X59_Y40_N16
\RegBank0|RD2[11]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[11]~102_combout\ = (\RegBank0|RD2[11]~53_combout\ & ((Instr(2)) # ((Instr(3)) # (Instr(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[11]~53_combout\,
	datab => Instr(2),
	datac => Instr(3),
	datad => Instr(4),
	combout => \RegBank0|RD2[11]~102_combout\);

-- Location: FF_X59_Y40_N17
\B[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD2[11]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(11));

-- Location: LCCOMB_X59_Y40_N18
\SrcB[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcB[11]~4_combout\ = (\FSM0|cu_decoder|Mux1~0_combout\ & (((B(11))))) # (!\FSM0|cu_decoder|Mux1~0_combout\ & (!\FSM0|pc_write~0_combout\ & (Instr(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|pc_write~0_combout\,
	datab => Instr(12),
	datac => \FSM0|cu_decoder|Mux1~0_combout\,
	datad => B(11),
	combout => \SrcB[11]~4_combout\);

-- Location: LCCOMB_X58_Y44_N20
\ALU0|twc|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~18_combout\ = (\SrcB[10]~7_combout\ & ((\FSM0|cu_decoder|Decoder3~0_combout\ & ((\ALU0|twc|Add0~17\) # (GND))) # (!\FSM0|cu_decoder|Decoder3~0_combout\ & (!\ALU0|twc|Add0~17\)))) # (!\SrcB[10]~7_combout\ & (((!\ALU0|twc|Add0~17\))))
-- \ALU0|twc|Add0~19\ = CARRY(((\SrcB[10]~7_combout\ & \FSM0|cu_decoder|Decoder3~0_combout\)) # (!\ALU0|twc|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[10]~7_combout\,
	datab => \FSM0|cu_decoder|Decoder3~0_combout\,
	datad => VCC,
	cin => \ALU0|twc|Add0~17\,
	combout => \ALU0|twc|Add0~18_combout\,
	cout => \ALU0|twc|Add0~19\);

-- Location: LCCOMB_X58_Y44_N22
\ALU0|twc|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~20_combout\ = (\ALU0|twc|Add0~19\ & (((!\SrcB[11]~4_combout\) # (!\FSM0|cu_decoder|Decoder3~0_combout\)))) # (!\ALU0|twc|Add0~19\ & ((((!\SrcB[11]~4_combout\) # (!\FSM0|cu_decoder|Decoder3~0_combout\)))))
-- \ALU0|twc|Add0~21\ = CARRY((!\ALU0|twc|Add0~19\ & ((!\SrcB[11]~4_combout\) # (!\FSM0|cu_decoder|Decoder3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cu_decoder|Decoder3~0_combout\,
	datab => \SrcB[11]~4_combout\,
	datad => VCC,
	cin => \ALU0|twc|Add0~19\,
	combout => \ALU0|twc|Add0~20_combout\,
	cout => \ALU0|twc|Add0~21\);

-- Location: LCCOMB_X57_Y44_N4
\ALU0|twc|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~34_combout\ = (\FSM0|aludecod|Selector2~0_combout\ & (((\ALU0|twc|Add0~20_combout\)))) # (!\FSM0|aludecod|Selector2~0_combout\ & (\SrcB[11]~4_combout\ & (\FSM0|cu_decoder|Decoder3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[11]~4_combout\,
	datab => \FSM0|aludecod|Selector2~0_combout\,
	datac => \FSM0|cu_decoder|Decoder3~0_combout\,
	datad => \ALU0|twc|Add0~20_combout\,
	combout => \ALU0|twc|Add0~34_combout\);

-- Location: FF_X57_Y42_N1
\PC[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[11]~9_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \FSM0|pc_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(11));

-- Location: LCCOMB_X57_Y42_N18
\SrcA[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcA[11]~4_combout\ = (!\FSM0|cu_decoder|Mux4~0_combout\ & ((\FSM0|cu_decoder|Mux2~0_combout\ & (WriteData(11))) # (!\FSM0|cu_decoder|Mux2~0_combout\ & ((PC(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => WriteData(11),
	datab => PC(11),
	datac => \FSM0|cu_decoder|Mux2~0_combout\,
	datad => \FSM0|cu_decoder|Mux4~0_combout\,
	combout => \SrcA[11]~4_combout\);

-- Location: FF_X56_Y42_N15
\PC[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[10]~11_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \FSM0|pc_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(10));

-- Location: LCCOMB_X56_Y42_N24
\SrcA[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcA[10]~5_combout\ = (!\FSM0|cu_decoder|Mux4~0_combout\ & ((\FSM0|cu_decoder|Mux2~0_combout\ & ((WriteData(10)))) # (!\FSM0|cu_decoder|Mux2~0_combout\ & (PC(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cu_decoder|Mux2~0_combout\,
	datab => PC(10),
	datac => \FSM0|cu_decoder|Mux4~0_combout\,
	datad => WriteData(10),
	combout => \SrcA[10]~5_combout\);

-- Location: LCCOMB_X58_Y44_N18
\ALU0|twc|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~16_combout\ = (\ALU0|twc|Add0~15\ & (((!\SrcB[9]~9_combout\) # (!\FSM0|cu_decoder|Decoder3~0_combout\)))) # (!\ALU0|twc|Add0~15\ & ((((!\SrcB[9]~9_combout\) # (!\FSM0|cu_decoder|Decoder3~0_combout\)))))
-- \ALU0|twc|Add0~17\ = CARRY((!\ALU0|twc|Add0~15\ & ((!\SrcB[9]~9_combout\) # (!\FSM0|cu_decoder|Decoder3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cu_decoder|Decoder3~0_combout\,
	datab => \SrcB[9]~9_combout\,
	datad => VCC,
	cin => \ALU0|twc|Add0~15\,
	combout => \ALU0|twc|Add0~16_combout\,
	cout => \ALU0|twc|Add0~17\);

-- Location: LCCOMB_X57_Y44_N8
\ALU0|twc|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~36_combout\ = (\FSM0|aludecod|Selector2~0_combout\ & (\ALU0|twc|Add0~16_combout\)) # (!\FSM0|aludecod|Selector2~0_combout\ & (((\FSM0|cu_decoder|Decoder3~0_combout\ & \SrcB[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|Selector2~0_combout\,
	datab => \ALU0|twc|Add0~16_combout\,
	datac => \FSM0|cu_decoder|Decoder3~0_combout\,
	datad => \SrcB[9]~9_combout\,
	combout => \ALU0|twc|Add0~36_combout\);

-- Location: LCCOMB_X57_Y42_N16
\SrcA[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcA[9]~6_combout\ = (!\FSM0|cu_decoder|Mux4~0_combout\ & ((\FSM0|cu_decoder|Mux2~0_combout\ & ((WriteData(9)))) # (!\FSM0|cu_decoder|Mux2~0_combout\ & (PC(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(9),
	datab => WriteData(9),
	datac => \FSM0|cu_decoder|Mux2~0_combout\,
	datad => \FSM0|cu_decoder|Mux4~0_combout\,
	combout => \SrcA[9]~6_combout\);

-- Location: LCCOMB_X58_Y44_N16
\ALU0|twc|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~14_combout\ = (\SrcB[8]~11_combout\ & ((\FSM0|cu_decoder|Decoder3~0_combout\ & ((\ALU0|twc|Add0~13\) # (GND))) # (!\FSM0|cu_decoder|Decoder3~0_combout\ & (!\ALU0|twc|Add0~13\)))) # (!\SrcB[8]~11_combout\ & (((!\ALU0|twc|Add0~13\))))
-- \ALU0|twc|Add0~15\ = CARRY(((\SrcB[8]~11_combout\ & \FSM0|cu_decoder|Decoder3~0_combout\)) # (!\ALU0|twc|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[8]~11_combout\,
	datab => \FSM0|cu_decoder|Decoder3~0_combout\,
	datad => VCC,
	cin => \ALU0|twc|Add0~13\,
	combout => \ALU0|twc|Add0~14_combout\,
	cout => \ALU0|twc|Add0~15\);

-- Location: LCCOMB_X57_Y44_N26
\ALU0|twc|Add0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~37_combout\ = (\FSM0|aludecod|Selector2~0_combout\ & (((\ALU0|twc|Add0~14_combout\)))) # (!\FSM0|aludecod|Selector2~0_combout\ & (\SrcB[8]~11_combout\ & ((\FSM0|cu_decoder|Decoder3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[8]~11_combout\,
	datab => \ALU0|twc|Add0~14_combout\,
	datac => \FSM0|cu_decoder|Decoder3~0_combout\,
	datad => \FSM0|aludecod|Selector2~0_combout\,
	combout => \ALU0|twc|Add0~37_combout\);

-- Location: LCCOMB_X58_Y44_N14
\ALU0|twc|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~12_combout\ = (\ALU0|twc|Add0~11\ & (((!\FSM0|cu_decoder|Decoder3~0_combout\) # (!\SrcB[7]~13_combout\)))) # (!\ALU0|twc|Add0~11\ & ((((!\FSM0|cu_decoder|Decoder3~0_combout\) # (!\SrcB[7]~13_combout\)))))
-- \ALU0|twc|Add0~13\ = CARRY((!\ALU0|twc|Add0~11\ & ((!\FSM0|cu_decoder|Decoder3~0_combout\) # (!\SrcB[7]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[7]~13_combout\,
	datab => \FSM0|cu_decoder|Decoder3~0_combout\,
	datad => VCC,
	cin => \ALU0|twc|Add0~11\,
	combout => \ALU0|twc|Add0~12_combout\,
	cout => \ALU0|twc|Add0~13\);

-- Location: LCCOMB_X57_Y44_N20
\ALU0|twc|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~38_combout\ = (\FSM0|aludecod|Selector2~0_combout\ & (((\ALU0|twc|Add0~12_combout\)))) # (!\FSM0|aludecod|Selector2~0_combout\ & (\SrcB[7]~13_combout\ & (\FSM0|cu_decoder|Decoder3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[7]~13_combout\,
	datab => \FSM0|cu_decoder|Decoder3~0_combout\,
	datac => \ALU0|twc|Add0~12_combout\,
	datad => \FSM0|aludecod|Selector2~0_combout\,
	combout => \ALU0|twc|Add0~38_combout\);

-- Location: FF_X61_Y43_N9
\PC[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[7]~17_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \FSM0|pc_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(7));

-- Location: LCCOMB_X61_Y43_N26
\SrcA[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcA[7]~8_combout\ = (!\FSM0|cu_decoder|Mux4~0_combout\ & ((\FSM0|cu_decoder|Mux2~0_combout\ & ((WriteData(7)))) # (!\FSM0|cu_decoder|Mux2~0_combout\ & (PC(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cu_decoder|Mux2~0_combout\,
	datab => \FSM0|cu_decoder|Mux4~0_combout\,
	datac => PC(7),
	datad => WriteData(7),
	combout => \SrcA[7]~8_combout\);

-- Location: LCCOMB_X60_Y44_N8
\SrcB[2]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcB[2]~12_combout\ = (!\FSM0|cu_decoder|Mux1~0_combout\ & ((!\FSM0|pc_write~0_combout\) # (!\FSM0|cu_decoder|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM0|cu_decoder|Mux4~0_combout\,
	datac => \FSM0|pc_write~0_combout\,
	datad => \FSM0|cu_decoder|Mux1~0_combout\,
	combout => \SrcB[2]~12_combout\);

-- Location: FF_X61_Y43_N1
\RegBank0|register_array[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[5]~21_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[2][5]~q\);

-- Location: FF_X62_Y43_N7
\RegBank0|register_array[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[5]~21_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[1][5]~q\);

-- Location: LCCOMB_X61_Y43_N0
\RegBank0|RD2[5]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[5]~76_combout\ = (\RegBank0|RD2[13]~34_combout\ & (\RegBank0|RD2[13]~35_combout\)) # (!\RegBank0|RD2[13]~34_combout\ & ((\RegBank0|RD2[13]~35_combout\ & (\RegBank0|register_array[2][5]~q\)) # (!\RegBank0|RD2[13]~35_combout\ & 
-- ((\RegBank0|register_array[1][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[13]~34_combout\,
	datab => \RegBank0|RD2[13]~35_combout\,
	datac => \RegBank0|register_array[2][5]~q\,
	datad => \RegBank0|register_array[1][5]~q\,
	combout => \RegBank0|RD2[5]~76_combout\);

-- Location: FF_X59_Y43_N23
\RegBank0|register_array[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[5]~21_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[5][5]~q\);

-- Location: FF_X60_Y42_N1
\RegBank0|register_array[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[5]~21_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[4][5]~q\);

-- Location: LCCOMB_X59_Y43_N22
\RegBank0|RD2[5]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[5]~74_combout\ = (Instr(3) & (Instr(2))) # (!Instr(3) & ((Instr(2) & (\RegBank0|register_array[5][5]~q\)) # (!Instr(2) & ((\RegBank0|register_array[4][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(3),
	datab => Instr(2),
	datac => \RegBank0|register_array[5][5]~q\,
	datad => \RegBank0|register_array[4][5]~q\,
	combout => \RegBank0|RD2[5]~74_combout\);

-- Location: FF_X61_Y44_N9
\RegBank0|register_array[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[5]~21_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[6][5]~q\);

-- Location: FF_X61_Y44_N27
\RegBank0|register_array[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[5]~21_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[7][5]~q\);

-- Location: LCCOMB_X61_Y44_N8
\RegBank0|RD2[5]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[5]~75_combout\ = (Instr(3) & ((\RegBank0|RD2[5]~74_combout\ & ((\RegBank0|register_array[7][5]~q\))) # (!\RegBank0|RD2[5]~74_combout\ & (\RegBank0|register_array[6][5]~q\)))) # (!Instr(3) & (\RegBank0|RD2[5]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(3),
	datab => \RegBank0|RD2[5]~74_combout\,
	datac => \RegBank0|register_array[6][5]~q\,
	datad => \RegBank0|register_array[7][5]~q\,
	combout => \RegBank0|RD2[5]~75_combout\);

-- Location: FF_X56_Y41_N21
\RegBank0|register_array[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \Result[5]~21_combout\,
	ena => \RegBank0|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[3][5]~q\);

-- Location: LCCOMB_X61_Y44_N4
\RegBank0|RD2[5]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[5]~77_combout\ = (\RegBank0|RD2[5]~76_combout\ & (((\RegBank0|register_array[3][5]~q\)) # (!\RegBank0|RD2[13]~34_combout\))) # (!\RegBank0|RD2[5]~76_combout\ & (\RegBank0|RD2[13]~34_combout\ & (\RegBank0|RD2[5]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[5]~76_combout\,
	datab => \RegBank0|RD2[13]~34_combout\,
	datac => \RegBank0|RD2[5]~75_combout\,
	datad => \RegBank0|register_array[3][5]~q\,
	combout => \RegBank0|RD2[5]~77_combout\);

-- Location: LCCOMB_X60_Y44_N10
\RegBank0|RD2[5]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[5]~108_combout\ = (\RegBank0|RD2[5]~77_combout\ & ((Instr(2)) # ((Instr(4)) # (Instr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(2),
	datab => Instr(4),
	datac => Instr(3),
	datad => \RegBank0|RD2[5]~77_combout\,
	combout => \RegBank0|RD2[5]~108_combout\);

-- Location: FF_X60_Y44_N11
\B[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD2[5]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(5));

-- Location: FF_X60_Y41_N21
\RegBank0|register_array[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[12]~7_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[1][12]~q\);

-- Location: FF_X60_Y43_N7
\RegBank0|register_array[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[12]~7_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[6][12]~q\);

-- Location: FF_X60_Y43_N9
\RegBank0|register_array[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[12]~7_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[4][12]~q\);

-- Location: LCCOMB_X60_Y43_N6
\RegBank0|RD2[12]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[12]~46_combout\ = (Instr(2) & (Instr(3))) # (!Instr(2) & ((Instr(3) & (\RegBank0|register_array[6][12]~q\)) # (!Instr(3) & ((\RegBank0|register_array[4][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(2),
	datab => Instr(3),
	datac => \RegBank0|register_array[6][12]~q\,
	datad => \RegBank0|register_array[4][12]~q\,
	combout => \RegBank0|RD2[12]~46_combout\);

-- Location: FF_X59_Y42_N9
\RegBank0|register_array[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[12]~7_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[5][12]~q\);

-- Location: FF_X61_Y42_N17
\RegBank0|register_array[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[12]~7_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[7][12]~q\);

-- Location: LCCOMB_X59_Y42_N8
\RegBank0|RD2[12]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[12]~47_combout\ = (\RegBank0|RD2[12]~46_combout\ & (((\RegBank0|register_array[7][12]~q\)) # (!Instr(2)))) # (!\RegBank0|RD2[12]~46_combout\ & (Instr(2) & (\RegBank0|register_array[5][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[12]~46_combout\,
	datab => Instr(2),
	datac => \RegBank0|register_array[5][12]~q\,
	datad => \RegBank0|register_array[7][12]~q\,
	combout => \RegBank0|RD2[12]~47_combout\);

-- Location: LCCOMB_X60_Y41_N22
\RegBank0|RD2[12]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[12]~48_combout\ = (\RegBank0|RD2[13]~35_combout\ & (((\RegBank0|RD2[13]~34_combout\)))) # (!\RegBank0|RD2[13]~35_combout\ & ((\RegBank0|RD2[13]~34_combout\ & ((\RegBank0|RD2[12]~47_combout\))) # (!\RegBank0|RD2[13]~34_combout\ & 
-- (\RegBank0|register_array[1][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[1][12]~q\,
	datab => \RegBank0|RD2[12]~47_combout\,
	datac => \RegBank0|RD2[13]~35_combout\,
	datad => \RegBank0|RD2[13]~34_combout\,
	combout => \RegBank0|RD2[12]~48_combout\);

-- Location: FF_X60_Y41_N19
\RegBank0|register_array[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[12]~7_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[2][12]~q\);

-- Location: LCCOMB_X60_Y41_N16
\RegBank0|RD2[12]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[12]~49_combout\ = (\RegBank0|RD2[13]~35_combout\ & ((\RegBank0|RD2[12]~48_combout\ & (\RegBank0|register_array[3][12]~q\)) # (!\RegBank0|RD2[12]~48_combout\ & ((\RegBank0|register_array[2][12]~q\))))) # (!\RegBank0|RD2[13]~35_combout\ & 
-- (((\RegBank0|RD2[12]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[3][12]~q\,
	datab => \RegBank0|RD2[13]~35_combout\,
	datac => \RegBank0|RD2[12]~48_combout\,
	datad => \RegBank0|register_array[2][12]~q\,
	combout => \RegBank0|RD2[12]~49_combout\);

-- Location: LCCOMB_X59_Y43_N16
\RegBank0|RD2[12]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[12]~101_combout\ = (\RegBank0|RD2[12]~49_combout\ & ((Instr(3)) # ((Instr(2)) # (Instr(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(3),
	datab => \RegBank0|RD2[12]~49_combout\,
	datac => Instr(2),
	datad => Instr(4),
	combout => \RegBank0|RD2[12]~101_combout\);

-- Location: FF_X59_Y43_N17
\B[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD2[12]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(12));

-- Location: LCCOMB_X59_Y40_N22
\SrcB[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcB[12]~3_combout\ = (\FSM0|cu_decoder|Mux1~0_combout\ & (((B(12))))) # (!\FSM0|cu_decoder|Mux1~0_combout\ & (!\FSM0|pc_write~0_combout\ & (Instr(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|pc_write~0_combout\,
	datab => Instr(12),
	datac => \FSM0|cu_decoder|Mux1~0_combout\,
	datad => B(12),
	combout => \SrcB[12]~3_combout\);

-- Location: FF_X56_Y42_N3
\PC[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[12]~7_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \FSM0|pc_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(12));

-- Location: LCCOMB_X56_Y42_N28
\SrcA[12]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcA[12]~3_combout\ = (!\FSM0|cu_decoder|Mux4~0_combout\ & ((\FSM0|cu_decoder|Mux2~0_combout\ & ((WriteData(12)))) # (!\FSM0|cu_decoder|Mux2~0_combout\ & (PC(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cu_decoder|Mux2~0_combout\,
	datab => PC(12),
	datac => \FSM0|cu_decoder|Mux4~0_combout\,
	datad => WriteData(12),
	combout => \SrcA[12]~3_combout\);

-- Location: LCCOMB_X59_Y44_N26
\ALU0|m2|m1|m3|out[12]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[12]~31_combout\ = (\FSM0|aludecod|Selector2~0_combout\ & ((\SrcA[12]~3_combout\) # ((\SrcB[12]~3_combout\ & \FSM0|cu_decoder|Decoder3~0_combout\)))) # (!\FSM0|aludecod|Selector2~0_combout\ & (\SrcB[12]~3_combout\ & 
-- (\FSM0|cu_decoder|Decoder3~0_combout\ & \SrcA[12]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[12]~3_combout\,
	datab => \FSM0|cu_decoder|Decoder3~0_combout\,
	datac => \FSM0|aludecod|Selector2~0_combout\,
	datad => \SrcA[12]~3_combout\,
	combout => \ALU0|m2|m1|m3|out[12]~31_combout\);

-- Location: LCCOMB_X58_Y44_N24
\ALU0|twc|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~22_combout\ = (\FSM0|cu_decoder|Decoder3~0_combout\ & ((\SrcB[12]~3_combout\ & ((\ALU0|twc|Add0~21\) # (GND))) # (!\SrcB[12]~3_combout\ & (!\ALU0|twc|Add0~21\)))) # (!\FSM0|cu_decoder|Decoder3~0_combout\ & (((!\ALU0|twc|Add0~21\))))
-- \ALU0|twc|Add0~23\ = CARRY(((\FSM0|cu_decoder|Decoder3~0_combout\ & \SrcB[12]~3_combout\)) # (!\ALU0|twc|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cu_decoder|Decoder3~0_combout\,
	datab => \SrcB[12]~3_combout\,
	datad => VCC,
	cin => \ALU0|twc|Add0~21\,
	combout => \ALU0|twc|Add0~22_combout\,
	cout => \ALU0|twc|Add0~23\);

-- Location: LCCOMB_X59_Y44_N8
\ALU0|twc|Add0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~33_combout\ = (\FSM0|aludecod|Selector2~0_combout\ & (((\ALU0|twc|Add0~22_combout\)))) # (!\FSM0|aludecod|Selector2~0_combout\ & (\SrcB[12]~3_combout\ & (\FSM0|cu_decoder|Decoder3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[12]~3_combout\,
	datab => \FSM0|cu_decoder|Decoder3~0_combout\,
	datac => \FSM0|aludecod|Selector2~0_combout\,
	datad => \ALU0|twc|Add0~22_combout\,
	combout => \ALU0|twc|Add0~33_combout\);

-- Location: LCCOMB_X56_Y44_N22
\ALU0|Sum[11]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|Sum[11]~22_combout\ = (\ALU0|twc|Add0~34_combout\ & ((\SrcA[11]~4_combout\ & (\ALU0|Sum[10]~21\ & VCC)) # (!\SrcA[11]~4_combout\ & (!\ALU0|Sum[10]~21\)))) # (!\ALU0|twc|Add0~34_combout\ & ((\SrcA[11]~4_combout\ & (!\ALU0|Sum[10]~21\)) # 
-- (!\SrcA[11]~4_combout\ & ((\ALU0|Sum[10]~21\) # (GND)))))
-- \ALU0|Sum[11]~23\ = CARRY((\ALU0|twc|Add0~34_combout\ & (!\SrcA[11]~4_combout\ & !\ALU0|Sum[10]~21\)) # (!\ALU0|twc|Add0~34_combout\ & ((!\ALU0|Sum[10]~21\) # (!\SrcA[11]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|twc|Add0~34_combout\,
	datab => \SrcA[11]~4_combout\,
	datad => VCC,
	cin => \ALU0|Sum[10]~21\,
	combout => \ALU0|Sum[11]~22_combout\,
	cout => \ALU0|Sum[11]~23\);

-- Location: LCCOMB_X56_Y44_N24
\ALU0|Sum[12]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|Sum[12]~24_combout\ = ((\SrcA[12]~3_combout\ $ (\ALU0|twc|Add0~33_combout\ $ (!\ALU0|Sum[11]~23\)))) # (GND)
-- \ALU0|Sum[12]~25\ = CARRY((\SrcA[12]~3_combout\ & ((\ALU0|twc|Add0~33_combout\) # (!\ALU0|Sum[11]~23\))) # (!\SrcA[12]~3_combout\ & (\ALU0|twc|Add0~33_combout\ & !\ALU0|Sum[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA[12]~3_combout\,
	datab => \ALU0|twc|Add0~33_combout\,
	datad => VCC,
	cin => \ALU0|Sum[11]~23\,
	combout => \ALU0|Sum[12]~24_combout\,
	cout => \ALU0|Sum[12]~25\);

-- Location: LCCOMB_X56_Y43_N24
\ALU0|m2|m1|m3|out[12]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[12]~44_combout\ = (Instr(14) & ((\FSM0|aludecod|WideOr1~0_combout\ & (\ALU0|m2|m1|m3|out[12]~31_combout\)) # (!\FSM0|aludecod|WideOr1~0_combout\ & ((\ALU0|Sum[12]~24_combout\))))) # (!Instr(14) & (((\ALU0|Sum[12]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(14),
	datab => \ALU0|m2|m1|m3|out[12]~31_combout\,
	datac => \ALU0|Sum[12]~24_combout\,
	datad => \FSM0|aludecod|WideOr1~0_combout\,
	combout => \ALU0|m2|m1|m3|out[12]~44_combout\);

-- Location: LCCOMB_X56_Y43_N30
\ALU0|m2|m3|out~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m3|out~8_combout\ = (!\FSM0|aludecod|Selector0~0_combout\ & ((\FSM0|aludecod|Selector1~0_combout\ & ((\ALU0|m2|m1|m3|out[12]~31_combout\))) # (!\FSM0|aludecod|Selector1~0_combout\ & (\ALU0|Sum[12]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Sum[12]~24_combout\,
	datab => \FSM0|aludecod|Selector1~0_combout\,
	datac => \FSM0|aludecod|Selector0~0_combout\,
	datad => \ALU0|m2|m1|m3|out[12]~31_combout\,
	combout => \ALU0|m2|m3|out~8_combout\);

-- Location: FF_X56_Y43_N31
\ALUOut[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \ALU0|m2|m3|out~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ALUOut(12));

-- Location: LCCOMB_X56_Y43_N8
\Result[12]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[12]~6_combout\ = (\FSM0|cu_decoder|Decoder2~0_combout\ & ((\Memory0|altsyncram_component|auto_generated|q_a\(12)))) # (!\FSM0|cu_decoder|Decoder2~0_combout\ & (ALUOut(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ALUOut(12),
	datac => \Memory0|altsyncram_component|auto_generated|q_a\(12),
	datad => \FSM0|cu_decoder|Decoder2~0_combout\,
	combout => \Result[12]~6_combout\);

-- Location: LCCOMB_X56_Y43_N0
\Result[12]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[12]~7_combout\ = (\FSM0|aludecod|Decoder0~1_combout\ & (!\FSM0|aludecod|Selector0~0_combout\ & (\ALU0|m2|m1|m3|out[12]~44_combout\))) # (!\FSM0|aludecod|Decoder0~1_combout\ & (((\Result[12]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|Selector0~0_combout\,
	datab => \ALU0|m2|m1|m3|out[12]~44_combout\,
	datac => \Result[12]~6_combout\,
	datad => \FSM0|aludecod|Decoder0~1_combout\,
	combout => \Result[12]~7_combout\);

-- Location: FF_X56_Y43_N1
\RegBank0|register_array[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \Result[12]~7_combout\,
	ena => \RegBank0|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[3][12]~q\);

-- Location: LCCOMB_X60_Y43_N8
\RegBank0|RD1[12]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[12]~46_combout\ = (Instr(5) & (Instr(6))) # (!Instr(5) & ((Instr(6) & ((\RegBank0|register_array[6][12]~q\))) # (!Instr(6) & (\RegBank0|register_array[4][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(5),
	datab => Instr(6),
	datac => \RegBank0|register_array[4][12]~q\,
	datad => \RegBank0|register_array[6][12]~q\,
	combout => \RegBank0|RD1[12]~46_combout\);

-- Location: LCCOMB_X61_Y42_N16
\RegBank0|RD1[12]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[12]~47_combout\ = (\RegBank0|RD1[12]~46_combout\ & (((\RegBank0|register_array[7][12]~q\) # (!Instr(5))))) # (!\RegBank0|RD1[12]~46_combout\ & (\RegBank0|register_array[5][12]~q\ & ((Instr(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[5][12]~q\,
	datab => \RegBank0|RD1[12]~46_combout\,
	datac => \RegBank0|register_array[7][12]~q\,
	datad => Instr(5),
	combout => \RegBank0|RD1[12]~47_combout\);

-- Location: LCCOMB_X60_Y41_N20
\RegBank0|RD1[12]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[12]~48_combout\ = (\RegBank0|RD1[2]~34_combout\ & ((\RegBank0|RD1[12]~47_combout\) # ((\RegBank0|RD1[2]~35_combout\)))) # (!\RegBank0|RD1[2]~34_combout\ & (((\RegBank0|register_array[1][12]~q\ & !\RegBank0|RD1[2]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[2]~34_combout\,
	datab => \RegBank0|RD1[12]~47_combout\,
	datac => \RegBank0|register_array[1][12]~q\,
	datad => \RegBank0|RD1[2]~35_combout\,
	combout => \RegBank0|RD1[12]~48_combout\);

-- Location: LCCOMB_X60_Y41_N18
\RegBank0|RD1[12]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[12]~49_combout\ = (\RegBank0|RD1[12]~48_combout\ & ((\RegBank0|register_array[3][12]~q\) # ((!\RegBank0|RD1[2]~35_combout\)))) # (!\RegBank0|RD1[12]~48_combout\ & (((\RegBank0|register_array[2][12]~q\ & \RegBank0|RD1[2]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[3][12]~q\,
	datab => \RegBank0|RD1[12]~48_combout\,
	datac => \RegBank0|register_array[2][12]~q\,
	datad => \RegBank0|RD1[2]~35_combout\,
	combout => \RegBank0|RD1[12]~49_combout\);

-- Location: LCCOMB_X57_Y41_N30
\RegBank0|RD1[12]~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[12]~101_combout\ = (\RegBank0|RD1[12]~49_combout\ & ((Instr(6)) # ((Instr(7)) # (Instr(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(6),
	datab => Instr(7),
	datac => Instr(5),
	datad => \RegBank0|RD1[12]~49_combout\,
	combout => \RegBank0|RD1[12]~101_combout\);

-- Location: FF_X57_Y41_N31
\WriteData[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD1[12]~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WriteData(12));

-- Location: FF_X59_Y43_N29
\RegBank0|register_array[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[13]~5_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[5][13]~q\);

-- Location: FF_X60_Y43_N29
\RegBank0|register_array[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[13]~5_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[4][13]~q\);

-- Location: LCCOMB_X59_Y43_N28
\RegBank0|RD2[13]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[13]~42_combout\ = (Instr(3) & (Instr(2))) # (!Instr(3) & ((Instr(2) & (\RegBank0|register_array[5][13]~q\)) # (!Instr(2) & ((\RegBank0|register_array[4][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(3),
	datab => Instr(2),
	datac => \RegBank0|register_array[5][13]~q\,
	datad => \RegBank0|register_array[4][13]~q\,
	combout => \RegBank0|RD2[13]~42_combout\);

-- Location: FF_X60_Y42_N27
\RegBank0|register_array[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[13]~5_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[6][13]~q\);

-- Location: FF_X61_Y42_N23
\RegBank0|register_array[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[13]~5_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[7][13]~q\);

-- Location: LCCOMB_X60_Y42_N26
\RegBank0|RD2[13]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[13]~43_combout\ = (Instr(3) & ((\RegBank0|RD2[13]~42_combout\ & ((\RegBank0|register_array[7][13]~q\))) # (!\RegBank0|RD2[13]~42_combout\ & (\RegBank0|register_array[6][13]~q\)))) # (!Instr(3) & (\RegBank0|RD2[13]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(3),
	datab => \RegBank0|RD2[13]~42_combout\,
	datac => \RegBank0|register_array[6][13]~q\,
	datad => \RegBank0|register_array[7][13]~q\,
	combout => \RegBank0|RD2[13]~43_combout\);

-- Location: FF_X60_Y41_N31
\RegBank0|register_array[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[13]~5_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[1][13]~q\);

-- Location: FF_X60_Y41_N5
\RegBank0|register_array[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[13]~5_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[2][13]~q\);

-- Location: LCCOMB_X60_Y41_N4
\RegBank0|RD2[13]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[13]~44_combout\ = (\RegBank0|RD2[13]~35_combout\ & (((\RegBank0|register_array[2][13]~q\) # (\RegBank0|RD2[13]~34_combout\)))) # (!\RegBank0|RD2[13]~35_combout\ & (\RegBank0|register_array[1][13]~q\ & ((!\RegBank0|RD2[13]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[1][13]~q\,
	datab => \RegBank0|RD2[13]~35_combout\,
	datac => \RegBank0|register_array[2][13]~q\,
	datad => \RegBank0|RD2[13]~34_combout\,
	combout => \RegBank0|RD2[13]~44_combout\);

-- Location: LCCOMB_X60_Y41_N24
\RegBank0|RD2[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[13]~45_combout\ = (\RegBank0|RD2[13]~34_combout\ & ((\RegBank0|RD2[13]~44_combout\ & (\RegBank0|register_array[3][13]~q\)) # (!\RegBank0|RD2[13]~44_combout\ & ((\RegBank0|RD2[13]~43_combout\))))) # (!\RegBank0|RD2[13]~34_combout\ & 
-- (((\RegBank0|RD2[13]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[3][13]~q\,
	datab => \RegBank0|RD2[13]~43_combout\,
	datac => \RegBank0|RD2[13]~34_combout\,
	datad => \RegBank0|RD2[13]~44_combout\,
	combout => \RegBank0|RD2[13]~45_combout\);

-- Location: LCCOMB_X59_Y40_N10
\RegBank0|RD2[13]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[13]~100_combout\ = (\RegBank0|RD2[13]~45_combout\ & ((Instr(2)) # ((Instr(3)) # (Instr(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[13]~45_combout\,
	datab => Instr(2),
	datac => Instr(3),
	datad => Instr(4),
	combout => \RegBank0|RD2[13]~100_combout\);

-- Location: FF_X59_Y40_N11
\B[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD2[13]~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(13));

-- Location: LCCOMB_X59_Y40_N20
\SrcB[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcB[13]~2_combout\ = (\FSM0|cu_decoder|Mux1~0_combout\ & (((B(13))))) # (!\FSM0|cu_decoder|Mux1~0_combout\ & (!\FSM0|pc_write~0_combout\ & (Instr(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|pc_write~0_combout\,
	datab => Instr(12),
	datac => \FSM0|cu_decoder|Mux1~0_combout\,
	datad => B(13),
	combout => \SrcB[13]~2_combout\);

-- Location: LCCOMB_X58_Y44_N26
\ALU0|twc|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~24_combout\ = (\ALU0|twc|Add0~23\ & (((!\SrcB[13]~2_combout\) # (!\FSM0|cu_decoder|Decoder3~0_combout\)))) # (!\ALU0|twc|Add0~23\ & ((((!\SrcB[13]~2_combout\) # (!\FSM0|cu_decoder|Decoder3~0_combout\)))))
-- \ALU0|twc|Add0~25\ = CARRY((!\ALU0|twc|Add0~23\ & ((!\SrcB[13]~2_combout\) # (!\FSM0|cu_decoder|Decoder3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cu_decoder|Decoder3~0_combout\,
	datab => \SrcB[13]~2_combout\,
	datad => VCC,
	cin => \ALU0|twc|Add0~23\,
	combout => \ALU0|twc|Add0~24_combout\,
	cout => \ALU0|twc|Add0~25\);

-- Location: LCCOMB_X56_Y41_N16
\ALU0|twc|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~32_combout\ = (\FSM0|aludecod|Selector2~0_combout\ & (\ALU0|twc|Add0~24_combout\)) # (!\FSM0|aludecod|Selector2~0_combout\ & (((\FSM0|cu_decoder|Decoder3~0_combout\ & \SrcB[13]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|twc|Add0~24_combout\,
	datab => \FSM0|aludecod|Selector2~0_combout\,
	datac => \FSM0|cu_decoder|Decoder3~0_combout\,
	datad => \SrcB[13]~2_combout\,
	combout => \ALU0|twc|Add0~32_combout\);

-- Location: FF_X57_Y42_N3
\PC[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[13]~5_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \FSM0|pc_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(13));

-- Location: LCCOMB_X57_Y42_N12
\SrcA[13]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcA[13]~2_combout\ = (!\FSM0|cu_decoder|Mux4~0_combout\ & ((\FSM0|cu_decoder|Mux2~0_combout\ & (WriteData(13))) # (!\FSM0|cu_decoder|Mux2~0_combout\ & ((PC(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => WriteData(13),
	datab => PC(13),
	datac => \FSM0|cu_decoder|Mux2~0_combout\,
	datad => \FSM0|cu_decoder|Mux4~0_combout\,
	combout => \SrcA[13]~2_combout\);

-- Location: LCCOMB_X56_Y44_N26
\ALU0|Sum[13]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|Sum[13]~26_combout\ = (\ALU0|twc|Add0~32_combout\ & ((\SrcA[13]~2_combout\ & (\ALU0|Sum[12]~25\ & VCC)) # (!\SrcA[13]~2_combout\ & (!\ALU0|Sum[12]~25\)))) # (!\ALU0|twc|Add0~32_combout\ & ((\SrcA[13]~2_combout\ & (!\ALU0|Sum[12]~25\)) # 
-- (!\SrcA[13]~2_combout\ & ((\ALU0|Sum[12]~25\) # (GND)))))
-- \ALU0|Sum[13]~27\ = CARRY((\ALU0|twc|Add0~32_combout\ & (!\SrcA[13]~2_combout\ & !\ALU0|Sum[12]~25\)) # (!\ALU0|twc|Add0~32_combout\ & ((!\ALU0|Sum[12]~25\) # (!\SrcA[13]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|twc|Add0~32_combout\,
	datab => \SrcA[13]~2_combout\,
	datad => VCC,
	cin => \ALU0|Sum[12]~25\,
	combout => \ALU0|Sum[13]~26_combout\,
	cout => \ALU0|Sum[13]~27\);

-- Location: LCCOMB_X56_Y41_N26
\ALU0|m2|m1|m3|out[13]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[13]~30_combout\ = (\FSM0|aludecod|Selector2~0_combout\ & ((\SrcA[13]~2_combout\) # ((\FSM0|cu_decoder|Decoder3~0_combout\ & \SrcB[13]~2_combout\)))) # (!\FSM0|aludecod|Selector2~0_combout\ & (\FSM0|cu_decoder|Decoder3~0_combout\ & 
-- (\SrcA[13]~2_combout\ & \SrcB[13]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cu_decoder|Decoder3~0_combout\,
	datab => \FSM0|aludecod|Selector2~0_combout\,
	datac => \SrcA[13]~2_combout\,
	datad => \SrcB[13]~2_combout\,
	combout => \ALU0|m2|m1|m3|out[13]~30_combout\);

-- Location: LCCOMB_X56_Y41_N28
\ALU0|m2|m1|m3|out[13]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[13]~43_combout\ = (Instr(14) & ((\FSM0|aludecod|WideOr1~0_combout\ & ((\ALU0|m2|m1|m3|out[13]~30_combout\))) # (!\FSM0|aludecod|WideOr1~0_combout\ & (\ALU0|Sum[13]~26_combout\)))) # (!Instr(14) & (\ALU0|Sum[13]~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(14),
	datab => \ALU0|Sum[13]~26_combout\,
	datac => \FSM0|aludecod|WideOr1~0_combout\,
	datad => \ALU0|m2|m1|m3|out[13]~30_combout\,
	combout => \ALU0|m2|m1|m3|out[13]~43_combout\);

-- Location: LCCOMB_X56_Y41_N14
\ALU0|m2|m3|out~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m3|out~7_combout\ = (!\FSM0|aludecod|Selector0~0_combout\ & ((\FSM0|aludecod|Selector1~0_combout\ & ((\ALU0|m2|m1|m3|out[13]~30_combout\))) # (!\FSM0|aludecod|Selector1~0_combout\ & (\ALU0|Sum[13]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|Selector0~0_combout\,
	datab => \ALU0|Sum[13]~26_combout\,
	datac => \ALU0|m2|m1|m3|out[13]~30_combout\,
	datad => \FSM0|aludecod|Selector1~0_combout\,
	combout => \ALU0|m2|m3|out~7_combout\);

-- Location: FF_X56_Y41_N15
\ALUOut[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \ALU0|m2|m3|out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ALUOut(13));

-- Location: LCCOMB_X56_Y41_N8
\Result[13]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[13]~4_combout\ = (\FSM0|cu_decoder|Decoder2~0_combout\ & (\Memory0|altsyncram_component|auto_generated|q_a\(13))) # (!\FSM0|cu_decoder|Decoder2~0_combout\ & ((ALUOut(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cu_decoder|Decoder2~0_combout\,
	datab => \Memory0|altsyncram_component|auto_generated|q_a\(13),
	datac => ALUOut(13),
	combout => \Result[13]~4_combout\);

-- Location: LCCOMB_X56_Y41_N12
\Result[13]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[13]~5_combout\ = (\FSM0|aludecod|Decoder0~1_combout\ & (!\FSM0|aludecod|Selector0~0_combout\ & (\ALU0|m2|m1|m3|out[13]~43_combout\))) # (!\FSM0|aludecod|Decoder0~1_combout\ & (((\Result[13]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|Selector0~0_combout\,
	datab => \ALU0|m2|m1|m3|out[13]~43_combout\,
	datac => \Result[13]~4_combout\,
	datad => \FSM0|aludecod|Decoder0~1_combout\,
	combout => \Result[13]~5_combout\);

-- Location: LCCOMB_X56_Y41_N10
\RegBank0|register_array[3][13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|register_array[3][13]~feeder_combout\ = \Result[13]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Result[13]~5_combout\,
	combout => \RegBank0|register_array[3][13]~feeder_combout\);

-- Location: FF_X56_Y41_N11
\RegBank0|register_array[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|register_array[3][13]~feeder_combout\,
	ena => \RegBank0|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[3][13]~q\);

-- Location: LCCOMB_X60_Y41_N30
\RegBank0|RD1[13]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[13]~44_combout\ = (\RegBank0|RD1[2]~35_combout\ & ((\RegBank0|register_array[2][13]~q\) # ((\RegBank0|RD1[2]~34_combout\)))) # (!\RegBank0|RD1[2]~35_combout\ & (((\RegBank0|register_array[1][13]~q\ & !\RegBank0|RD1[2]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[2]~35_combout\,
	datab => \RegBank0|register_array[2][13]~q\,
	datac => \RegBank0|register_array[1][13]~q\,
	datad => \RegBank0|RD1[2]~34_combout\,
	combout => \RegBank0|RD1[13]~44_combout\);

-- Location: LCCOMB_X60_Y43_N28
\RegBank0|RD1[13]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[13]~42_combout\ = (Instr(5) & ((Instr(6)) # ((\RegBank0|register_array[5][13]~q\)))) # (!Instr(5) & (!Instr(6) & (\RegBank0|register_array[4][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(5),
	datab => Instr(6),
	datac => \RegBank0|register_array[4][13]~q\,
	datad => \RegBank0|register_array[5][13]~q\,
	combout => \RegBank0|RD1[13]~42_combout\);

-- Location: LCCOMB_X61_Y42_N22
\RegBank0|RD1[13]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[13]~43_combout\ = (\RegBank0|RD1[13]~42_combout\ & (((\RegBank0|register_array[7][13]~q\) # (!Instr(6))))) # (!\RegBank0|RD1[13]~42_combout\ & (\RegBank0|register_array[6][13]~q\ & ((Instr(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[6][13]~q\,
	datab => \RegBank0|RD1[13]~42_combout\,
	datac => \RegBank0|register_array[7][13]~q\,
	datad => Instr(6),
	combout => \RegBank0|RD1[13]~43_combout\);

-- Location: LCCOMB_X60_Y41_N14
\RegBank0|RD1[13]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[13]~45_combout\ = (\RegBank0|RD1[13]~44_combout\ & ((\RegBank0|register_array[3][13]~q\) # ((!\RegBank0|RD1[2]~34_combout\)))) # (!\RegBank0|RD1[13]~44_combout\ & (((\RegBank0|RD1[13]~43_combout\ & \RegBank0|RD1[2]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[3][13]~q\,
	datab => \RegBank0|RD1[13]~44_combout\,
	datac => \RegBank0|RD1[13]~43_combout\,
	datad => \RegBank0|RD1[2]~34_combout\,
	combout => \RegBank0|RD1[13]~45_combout\);

-- Location: LCCOMB_X57_Y41_N4
\RegBank0|RD1[13]~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[13]~100_combout\ = (\RegBank0|RD1[13]~45_combout\ & ((Instr(6)) # ((Instr(7)) # (Instr(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(6),
	datab => Instr(7),
	datac => Instr(5),
	datad => \RegBank0|RD1[13]~45_combout\,
	combout => \RegBank0|RD1[13]~100_combout\);

-- Location: FF_X57_Y41_N5
\WriteData[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD1[13]~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WriteData(13));

-- Location: FF_X57_Y43_N19
\ALUOut[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \ALU0|m2|m3|out~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ALUOut(15));

-- Location: LCCOMB_X57_Y43_N18
\Result[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[15]~0_combout\ = (\FSM0|cu_decoder|Decoder2~0_combout\ & (\Memory0|altsyncram_component|auto_generated|q_a\(15))) # (!\FSM0|cu_decoder|Decoder2~0_combout\ & ((ALUOut(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memory0|altsyncram_component|auto_generated|q_a\(15),
	datab => \FSM0|cu_decoder|Decoder2~0_combout\,
	datac => ALUOut(15),
	combout => \Result[15]~0_combout\);

-- Location: LCCOMB_X59_Y42_N22
\Result[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[15]~1_combout\ = (\FSM0|curr_state\(1) & (\Result[15]~0_combout\)) # (!\FSM0|curr_state\(1) & ((\FSM0|curr_state\(2) & (\Result[15]~0_combout\)) # (!\FSM0|curr_state\(2) & ((\ALU0|m2|m3|out~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(1),
	datab => \Result[15]~0_combout\,
	datac => \FSM0|curr_state\(2),
	datad => \ALU0|m2|m3|out~0_combout\,
	combout => \Result[15]~1_combout\);

-- Location: FF_X59_Y42_N21
\RegBank0|register_array[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[15]~1_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[5][15]~q\);

-- Location: FF_X60_Y42_N17
\RegBank0|register_array[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[15]~1_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[4][15]~q\);

-- Location: LCCOMB_X59_Y42_N20
\RegBank0|RD1[15]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[15]~32_combout\ = (Instr(6) & (Instr(5))) # (!Instr(6) & ((Instr(5) & (\RegBank0|register_array[5][15]~q\)) # (!Instr(5) & ((\RegBank0|register_array[4][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(6),
	datab => Instr(5),
	datac => \RegBank0|register_array[5][15]~q\,
	datad => \RegBank0|register_array[4][15]~q\,
	combout => \RegBank0|RD1[15]~32_combout\);

-- Location: FF_X59_Y41_N25
\RegBank0|register_array[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[15]~1_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[6][15]~q\);

-- Location: FF_X59_Y41_N11
\RegBank0|register_array[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[15]~1_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[7][15]~q\);

-- Location: LCCOMB_X59_Y41_N24
\RegBank0|RD1[15]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[15]~33_combout\ = (\RegBank0|RD1[15]~32_combout\ & (((\RegBank0|register_array[7][15]~q\)) # (!Instr(6)))) # (!\RegBank0|RD1[15]~32_combout\ & (Instr(6) & (\RegBank0|register_array[6][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[15]~32_combout\,
	datab => Instr(6),
	datac => \RegBank0|register_array[6][15]~q\,
	datad => \RegBank0|register_array[7][15]~q\,
	combout => \RegBank0|RD1[15]~33_combout\);

-- Location: FF_X60_Y41_N27
\RegBank0|register_array[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[15]~1_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[1][15]~q\);

-- Location: FF_X60_Y41_N9
\RegBank0|register_array[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[15]~1_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[2][15]~q\);

-- Location: LCCOMB_X60_Y41_N8
\RegBank0|RD1[15]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[15]~36_combout\ = (\RegBank0|RD1[2]~34_combout\ & (((\RegBank0|RD1[2]~35_combout\)))) # (!\RegBank0|RD1[2]~34_combout\ & ((\RegBank0|RD1[2]~35_combout\ & ((\RegBank0|register_array[2][15]~q\))) # (!\RegBank0|RD1[2]~35_combout\ & 
-- (\RegBank0|register_array[1][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[1][15]~q\,
	datab => \RegBank0|RD1[2]~34_combout\,
	datac => \RegBank0|register_array[2][15]~q\,
	datad => \RegBank0|RD1[2]~35_combout\,
	combout => \RegBank0|RD1[15]~36_combout\);

-- Location: FF_X59_Y42_N19
\RegBank0|register_array[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[15]~1_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[3][15]~q\);

-- Location: LCCOMB_X59_Y41_N4
\RegBank0|RD1[15]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[15]~37_combout\ = (\RegBank0|RD1[2]~34_combout\ & ((\RegBank0|RD1[15]~36_combout\ & ((\RegBank0|register_array[3][15]~q\))) # (!\RegBank0|RD1[15]~36_combout\ & (\RegBank0|RD1[15]~33_combout\)))) # (!\RegBank0|RD1[2]~34_combout\ & 
-- (((\RegBank0|RD1[15]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[2]~34_combout\,
	datab => \RegBank0|RD1[15]~33_combout\,
	datac => \RegBank0|RD1[15]~36_combout\,
	datad => \RegBank0|register_array[3][15]~q\,
	combout => \RegBank0|RD1[15]~37_combout\);

-- Location: LCCOMB_X57_Y42_N24
\RegBank0|RD1[15]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[15]~98_combout\ = (\RegBank0|RD1[15]~37_combout\ & ((Instr(7)) # ((Instr(5)) # (Instr(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(7),
	datab => Instr(5),
	datac => \RegBank0|RD1[15]~37_combout\,
	datad => Instr(6),
	combout => \RegBank0|RD1[15]~98_combout\);

-- Location: FF_X57_Y42_N25
\WriteData[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD1[15]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WriteData(15));

-- Location: M9K_X53_Y41_N0
\Memory0|altsyncram_component|auto_generated|ram_block1a5\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000073002081409",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../src/program.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DE10_LITE_Memory:Memory0|altsyncram:altsyncram_component|altsyncram_o3s3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FSM0|aludecod|Decoder0~2_combout\,
	portare => VCC,
	clk0 => \CNT0|ALT_INV_q[25]~clkctrl_outclk\,
	portadatain => \Memory0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \Memory0|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Memory0|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: FF_X55_Y40_N25
\Instr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Memory0|altsyncram_component|auto_generated|q_a\(10),
	sload => VCC,
	ena => \FSM0|aludecod|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Instr(10));

-- Location: LCCOMB_X55_Y40_N2
\SrcB[5]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcB[5]~15_combout\ = (\SrcB[2]~12_combout\ & ((Instr(10)) # ((B(5) & \FSM0|cu_decoder|Mux1~0_combout\)))) # (!\SrcB[2]~12_combout\ & (B(5) & ((\FSM0|cu_decoder|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[2]~12_combout\,
	datab => B(5),
	datac => Instr(10),
	datad => \FSM0|cu_decoder|Mux1~0_combout\,
	combout => \SrcB[5]~15_combout\);

-- Location: FF_X55_Y41_N9
\Instr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Memory0|altsyncram_component|auto_generated|q_a\(9),
	sload => VCC,
	ena => \FSM0|aludecod|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Instr(9));

-- Location: FF_X58_Y43_N23
\RegBank0|register_array[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[4]~23_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[2][4]~q\);

-- Location: FF_X62_Y43_N27
\RegBank0|register_array[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[4]~23_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[1][4]~q\);

-- Location: FF_X60_Y43_N19
\RegBank0|register_array[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[4]~23_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[6][4]~q\);

-- Location: FF_X60_Y43_N13
\RegBank0|register_array[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[4]~23_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[4][4]~q\);

-- Location: LCCOMB_X60_Y43_N18
\RegBank0|RD2[4]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[4]~78_combout\ = (Instr(2) & (Instr(3))) # (!Instr(2) & ((Instr(3) & (\RegBank0|register_array[6][4]~q\)) # (!Instr(3) & ((\RegBank0|register_array[4][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(2),
	datab => Instr(3),
	datac => \RegBank0|register_array[6][4]~q\,
	datad => \RegBank0|register_array[4][4]~q\,
	combout => \RegBank0|RD2[4]~78_combout\);

-- Location: FF_X59_Y43_N25
\RegBank0|register_array[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[4]~23_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[5][4]~q\);

-- Location: FF_X62_Y43_N9
\RegBank0|register_array[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[4]~23_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[7][4]~q\);

-- Location: LCCOMB_X59_Y43_N24
\RegBank0|RD2[4]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[4]~79_combout\ = (Instr(2) & ((\RegBank0|RD2[4]~78_combout\ & ((\RegBank0|register_array[7][4]~q\))) # (!\RegBank0|RD2[4]~78_combout\ & (\RegBank0|register_array[5][4]~q\)))) # (!Instr(2) & (\RegBank0|RD2[4]~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(2),
	datab => \RegBank0|RD2[4]~78_combout\,
	datac => \RegBank0|register_array[5][4]~q\,
	datad => \RegBank0|register_array[7][4]~q\,
	combout => \RegBank0|RD2[4]~79_combout\);

-- Location: LCCOMB_X58_Y43_N0
\RegBank0|RD2[4]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[4]~80_combout\ = (\RegBank0|RD2[13]~34_combout\ & (((\RegBank0|RD2[4]~79_combout\) # (\RegBank0|RD2[13]~35_combout\)))) # (!\RegBank0|RD2[13]~34_combout\ & (\RegBank0|register_array[1][4]~q\ & ((!\RegBank0|RD2[13]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[1][4]~q\,
	datab => \RegBank0|RD2[4]~79_combout\,
	datac => \RegBank0|RD2[13]~34_combout\,
	datad => \RegBank0|RD2[13]~35_combout\,
	combout => \RegBank0|RD2[4]~80_combout\);

-- Location: FF_X58_Y43_N3
\RegBank0|register_array[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[4]~23_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[3][4]~q\);

-- Location: LCCOMB_X58_Y43_N2
\RegBank0|RD2[4]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[4]~81_combout\ = (\RegBank0|RD2[4]~80_combout\ & (((\RegBank0|register_array[3][4]~q\) # (!\RegBank0|RD2[13]~35_combout\)))) # (!\RegBank0|RD2[4]~80_combout\ & (\RegBank0|register_array[2][4]~q\ & ((\RegBank0|RD2[13]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[2][4]~q\,
	datab => \RegBank0|RD2[4]~80_combout\,
	datac => \RegBank0|register_array[3][4]~q\,
	datad => \RegBank0|RD2[13]~35_combout\,
	combout => \RegBank0|RD2[4]~81_combout\);

-- Location: LCCOMB_X59_Y43_N26
\RegBank0|RD2[4]~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[4]~109_combout\ = (\RegBank0|RD2[4]~81_combout\ & ((Instr(2)) # ((Instr(3)) # (Instr(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[4]~81_combout\,
	datab => Instr(2),
	datac => Instr(3),
	datad => Instr(4),
	combout => \RegBank0|RD2[4]~109_combout\);

-- Location: FF_X59_Y43_N27
\B[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD2[4]~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(4));

-- Location: LCCOMB_X55_Y41_N26
\SrcB[4]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcB[4]~16_combout\ = (\SrcB[2]~12_combout\ & ((Instr(9)) # ((B(4) & \FSM0|cu_decoder|Mux1~0_combout\)))) # (!\SrcB[2]~12_combout\ & (((B(4) & \FSM0|cu_decoder|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[2]~12_combout\,
	datab => Instr(9),
	datac => B(4),
	datad => \FSM0|cu_decoder|Mux1~0_combout\,
	combout => \SrcB[4]~16_combout\);

-- Location: FF_X61_Y43_N19
\RegBank0|register_array[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[3]~25_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[2][3]~q\);

-- Location: FF_X62_Y43_N29
\RegBank0|register_array[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[3]~25_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[1][3]~q\);

-- Location: LCCOMB_X61_Y43_N18
\RegBank0|RD2[3]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[3]~84_combout\ = (\RegBank0|RD2[13]~34_combout\ & (\RegBank0|RD2[13]~35_combout\)) # (!\RegBank0|RD2[13]~34_combout\ & ((\RegBank0|RD2[13]~35_combout\ & (\RegBank0|register_array[2][3]~q\)) # (!\RegBank0|RD2[13]~35_combout\ & 
-- ((\RegBank0|register_array[1][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[13]~34_combout\,
	datab => \RegBank0|RD2[13]~35_combout\,
	datac => \RegBank0|register_array[2][3]~q\,
	datad => \RegBank0|register_array[1][3]~q\,
	combout => \RegBank0|RD2[3]~84_combout\);

-- Location: FF_X56_Y42_N21
\RegBank0|register_array[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[3]~25_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[3][3]~q\);

-- Location: FF_X59_Y42_N15
\RegBank0|register_array[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[3]~25_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[5][3]~q\);

-- Location: FF_X60_Y42_N3
\RegBank0|register_array[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[3]~25_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[4][3]~q\);

-- Location: LCCOMB_X59_Y42_N14
\RegBank0|RD2[3]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[3]~82_combout\ = (Instr(3) & (Instr(2))) # (!Instr(3) & ((Instr(2) & (\RegBank0|register_array[5][3]~q\)) # (!Instr(2) & ((\RegBank0|register_array[4][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(3),
	datab => Instr(2),
	datac => \RegBank0|register_array[5][3]~q\,
	datad => \RegBank0|register_array[4][3]~q\,
	combout => \RegBank0|RD2[3]~82_combout\);

-- Location: FF_X62_Y42_N29
\RegBank0|register_array[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[3]~25_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[6][3]~q\);

-- Location: FF_X61_Y42_N9
\RegBank0|register_array[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[3]~25_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[7][3]~q\);

-- Location: LCCOMB_X62_Y42_N28
\RegBank0|RD2[3]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[3]~83_combout\ = (Instr(3) & ((\RegBank0|RD2[3]~82_combout\ & ((\RegBank0|register_array[7][3]~q\))) # (!\RegBank0|RD2[3]~82_combout\ & (\RegBank0|register_array[6][3]~q\)))) # (!Instr(3) & (\RegBank0|RD2[3]~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(3),
	datab => \RegBank0|RD2[3]~82_combout\,
	datac => \RegBank0|register_array[6][3]~q\,
	datad => \RegBank0|register_array[7][3]~q\,
	combout => \RegBank0|RD2[3]~83_combout\);

-- Location: LCCOMB_X61_Y42_N26
\RegBank0|RD2[3]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[3]~85_combout\ = (\RegBank0|RD2[3]~84_combout\ & (((\RegBank0|register_array[3][3]~q\)) # (!\RegBank0|RD2[13]~34_combout\))) # (!\RegBank0|RD2[3]~84_combout\ & (\RegBank0|RD2[13]~34_combout\ & ((\RegBank0|RD2[3]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[3]~84_combout\,
	datab => \RegBank0|RD2[13]~34_combout\,
	datac => \RegBank0|register_array[3][3]~q\,
	datad => \RegBank0|RD2[3]~83_combout\,
	combout => \RegBank0|RD2[3]~85_combout\);

-- Location: LCCOMB_X59_Y40_N26
\RegBank0|RD2[3]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[3]~110_combout\ = (\RegBank0|RD2[3]~85_combout\ & ((Instr(2)) # ((Instr(3)) # (Instr(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[3]~85_combout\,
	datab => Instr(2),
	datac => Instr(3),
	datad => Instr(4),
	combout => \RegBank0|RD2[3]~110_combout\);

-- Location: FF_X59_Y40_N27
\B[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD2[3]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(3));

-- Location: FF_X62_Y43_N21
\RegBank0|register_array[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[1]~29_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[1][1]~q\);

-- Location: LCCOMB_X61_Y43_N30
\RegBank0|RD2[1]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[1]~96_combout\ = (\RegBank0|RD2[13]~34_combout\ & (\RegBank0|RD2[13]~35_combout\)) # (!\RegBank0|RD2[13]~34_combout\ & ((\RegBank0|RD2[13]~35_combout\ & (\RegBank0|register_array[2][1]~q\)) # (!\RegBank0|RD2[13]~35_combout\ & 
-- ((\RegBank0|register_array[1][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[13]~34_combout\,
	datab => \RegBank0|RD2[13]~35_combout\,
	datac => \RegBank0|register_array[2][1]~q\,
	datad => \RegBank0|register_array[1][1]~q\,
	combout => \RegBank0|RD2[1]~96_combout\);

-- Location: FF_X55_Y44_N3
\RegBank0|register_array[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \Result[1]~29_combout\,
	ena => \RegBank0|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[3][1]~q\);

-- Location: FF_X59_Y42_N11
\RegBank0|register_array[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[1]~29_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[5][1]~q\);

-- Location: FF_X60_Y42_N25
\RegBank0|register_array[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[1]~29_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[4][1]~q\);

-- Location: LCCOMB_X59_Y42_N10
\RegBank0|RD2[1]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[1]~94_combout\ = (Instr(3) & (Instr(2))) # (!Instr(3) & ((Instr(2) & (\RegBank0|register_array[5][1]~q\)) # (!Instr(2) & ((\RegBank0|register_array[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(3),
	datab => Instr(2),
	datac => \RegBank0|register_array[5][1]~q\,
	datad => \RegBank0|register_array[4][1]~q\,
	combout => \RegBank0|RD2[1]~94_combout\);

-- Location: FF_X61_Y44_N15
\RegBank0|register_array[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[1]~29_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[6][1]~q\);

-- Location: FF_X61_Y44_N17
\RegBank0|register_array[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[1]~29_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[7][1]~q\);

-- Location: LCCOMB_X61_Y44_N14
\RegBank0|RD2[1]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[1]~95_combout\ = (Instr(3) & ((\RegBank0|RD2[1]~94_combout\ & ((\RegBank0|register_array[7][1]~q\))) # (!\RegBank0|RD2[1]~94_combout\ & (\RegBank0|register_array[6][1]~q\)))) # (!Instr(3) & (\RegBank0|RD2[1]~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(3),
	datab => \RegBank0|RD2[1]~94_combout\,
	datac => \RegBank0|register_array[6][1]~q\,
	datad => \RegBank0|register_array[7][1]~q\,
	combout => \RegBank0|RD2[1]~95_combout\);

-- Location: LCCOMB_X61_Y44_N18
\RegBank0|RD2[1]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[1]~97_combout\ = (\RegBank0|RD2[1]~96_combout\ & (((\RegBank0|register_array[3][1]~q\)) # (!\RegBank0|RD2[13]~34_combout\))) # (!\RegBank0|RD2[1]~96_combout\ & (\RegBank0|RD2[13]~34_combout\ & ((\RegBank0|RD2[1]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[1]~96_combout\,
	datab => \RegBank0|RD2[13]~34_combout\,
	datac => \RegBank0|register_array[3][1]~q\,
	datad => \RegBank0|RD2[1]~95_combout\,
	combout => \RegBank0|RD2[1]~97_combout\);

-- Location: LCCOMB_X60_Y44_N2
\RegBank0|RD2[1]~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[1]~113_combout\ = (\RegBank0|RD2[1]~97_combout\ & ((Instr(2)) # ((Instr(4)) # (Instr(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(2),
	datab => Instr(4),
	datac => Instr(3),
	datad => \RegBank0|RD2[1]~97_combout\,
	combout => \RegBank0|RD2[1]~113_combout\);

-- Location: FF_X60_Y44_N3
\B[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD2[1]~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(1));

-- Location: LCCOMB_X60_Y44_N12
\SrcB[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcB[1]~21_combout\ = (B(1) & ((\FSM0|curr_state\(2)) # (\FSM0|curr_state\(1) $ (!\FSM0|curr_state\(3))))) # (!B(1) & (!\FSM0|curr_state\(1) & (!\FSM0|curr_state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(1),
	datab => \FSM0|curr_state\(3),
	datac => \FSM0|curr_state\(2),
	datad => B(1),
	combout => \SrcB[1]~21_combout\);

-- Location: LCCOMB_X60_Y44_N22
\SrcB[1]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcB[1]~22_combout\ = (\SrcB[1]~21_combout\) # ((Instr(3) & (\FSM0|cu_decoder|Decoder3~0_combout\ & \SrcB[2]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[1]~21_combout\,
	datab => Instr(3),
	datac => \FSM0|cu_decoder|Decoder3~0_combout\,
	datad => \SrcB[2]~12_combout\,
	combout => \SrcB[1]~22_combout\);

-- Location: FF_X61_Y43_N5
\PC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[1]~29_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \FSM0|pc_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(1));

-- Location: LCCOMB_X61_Y46_N4
\SrcA[1]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcA[1]~14_combout\ = (!\FSM0|cu_decoder|Mux4~0_combout\ & ((\FSM0|cu_decoder|Mux2~0_combout\ & (WriteData(1))) # (!\FSM0|cu_decoder|Mux2~0_combout\ & ((PC(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cu_decoder|Mux4~0_combout\,
	datab => WriteData(1),
	datac => PC(1),
	datad => \FSM0|cu_decoder|Mux2~0_combout\,
	combout => \SrcA[1]~14_combout\);

-- Location: LCCOMB_X55_Y44_N14
\ALU0|m2|m1|m3|out[1]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[1]~41_combout\ = (\FSM0|aludecod|Selector1~0_combout\ & ((\SrcB[1]~22_combout\ & ((\FSM0|aludecod|Selector2~0_combout\) # (\SrcA[1]~14_combout\))) # (!\SrcB[1]~22_combout\ & (\FSM0|aludecod|Selector2~0_combout\ & 
-- \SrcA[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[1]~22_combout\,
	datab => \FSM0|aludecod|Selector2~0_combout\,
	datac => \FSM0|aludecod|Selector1~0_combout\,
	datad => \SrcA[1]~14_combout\,
	combout => \ALU0|m2|m1|m3|out[1]~41_combout\);

-- Location: LCCOMB_X57_Y43_N12
\ALU0|m2|m3|out[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m3|out[0]~5_combout\ = (\ALU0|Sum[15]~30_combout\ & (\FSM0|aludecod|Selector0~0_combout\ & (!\FSM0|aludecod|Selector1~0_combout\ & \FSM0|aludecod|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Sum[15]~30_combout\,
	datab => \FSM0|aludecod|Selector0~0_combout\,
	datac => \FSM0|aludecod|Selector1~0_combout\,
	datad => \FSM0|aludecod|Selector2~0_combout\,
	combout => \ALU0|m2|m3|out[0]~5_combout\);

-- Location: FF_X56_Y42_N11
\PC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[0]~31_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \FSM0|pc_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(0));

-- Location: LCCOMB_X61_Y46_N22
\SrcA[0]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcA[0]~15_combout\ = (!\FSM0|cu_decoder|Mux4~0_combout\ & ((\FSM0|cu_decoder|Mux2~0_combout\ & (WriteData(0))) # (!\FSM0|cu_decoder|Mux2~0_combout\ & ((PC(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cu_decoder|Mux2~0_combout\,
	datab => WriteData(0),
	datac => PC(0),
	datad => \FSM0|cu_decoder|Mux4~0_combout\,
	combout => \SrcA[0]~15_combout\);

-- Location: LCCOMB_X56_Y44_N0
\ALU0|Sum[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|Sum[0]~0_combout\ = (\SrcA[0]~15_combout\ & (\SrcB[0]~20_combout\ $ (VCC))) # (!\SrcA[0]~15_combout\ & (\SrcB[0]~20_combout\ & VCC))
-- \ALU0|Sum[0]~1\ = CARRY((\SrcA[0]~15_combout\ & \SrcB[0]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA[0]~15_combout\,
	datab => \SrcB[0]~20_combout\,
	datad => VCC,
	combout => \ALU0|Sum[0]~0_combout\,
	cout => \ALU0|Sum[0]~1\);

-- Location: LCCOMB_X57_Y43_N16
\ALU0|m2|m3|out[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m3|out[0]~3_combout\ = (\FSM0|aludecod|Selector1~0_combout\ & ((\FSM0|aludecod|Selector2~0_combout\ & ((\SrcB[0]~20_combout\) # (\SrcA[0]~15_combout\))) # (!\FSM0|aludecod|Selector2~0_combout\ & (\SrcB[0]~20_combout\ & \SrcA[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|Selector2~0_combout\,
	datab => \SrcB[0]~20_combout\,
	datac => \FSM0|aludecod|Selector1~0_combout\,
	datad => \SrcA[0]~15_combout\,
	combout => \ALU0|m2|m3|out[0]~3_combout\);

-- Location: LCCOMB_X57_Y43_N2
\ALU0|m2|m3|out[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m3|out[0]~4_combout\ = (!\FSM0|aludecod|Selector0~0_combout\ & ((\ALU0|m2|m3|out[0]~3_combout\) # ((!\FSM0|aludecod|Selector1~0_combout\ & \ALU0|Sum[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|Selector1~0_combout\,
	datab => \FSM0|aludecod|Selector0~0_combout\,
	datac => \ALU0|Sum[0]~0_combout\,
	datad => \ALU0|m2|m3|out[0]~3_combout\,
	combout => \ALU0|m2|m3|out[0]~4_combout\);

-- Location: LCCOMB_X57_Y43_N6
\ALU0|m2|m3|out[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m3|out[0]~19_combout\ = (\ALU0|m2|m3|out[0]~5_combout\) # (\ALU0|m2|m3|out[0]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|m2|m3|out[0]~5_combout\,
	datad => \ALU0|m2|m3|out[0]~4_combout\,
	combout => \ALU0|m2|m3|out[0]~19_combout\);

-- Location: FF_X57_Y43_N7
\ALUOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \ALU0|m2|m3|out[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ALUOut(0));

-- Location: LCCOMB_X55_Y43_N20
\Result[0]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[0]~30_combout\ = (\FSM0|cu_decoder|Decoder2~0_combout\ & ((\Memory0|altsyncram_component|auto_generated|q_a\(0)))) # (!\FSM0|cu_decoder|Decoder2~0_combout\ & (ALUOut(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ALUOut(0),
	datac => \FSM0|cu_decoder|Decoder2~0_combout\,
	datad => \Memory0|altsyncram_component|auto_generated|q_a\(0),
	combout => \Result[0]~30_combout\);

-- Location: LCCOMB_X58_Y43_N28
\Result[0]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[0]~31_combout\ = (\FSM0|aludecod|Decoder0~1_combout\ & ((\ALU0|m2|m3|out[0]~5_combout\) # ((\ALU0|m2|m3|out[0]~4_combout\)))) # (!\FSM0|aludecod|Decoder0~1_combout\ & (((\Result[0]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|m2|m3|out[0]~5_combout\,
	datab => \FSM0|aludecod|Decoder0~1_combout\,
	datac => \Result[0]~30_combout\,
	datad => \ALU0|m2|m3|out[0]~4_combout\,
	combout => \Result[0]~31_combout\);

-- Location: FF_X61_Y42_N13
\RegBank0|register_array[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[0]~31_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[7][0]~q\);

-- Location: FF_X59_Y42_N1
\RegBank0|register_array[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[0]~31_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[5][0]~q\);

-- Location: FF_X60_Y42_N31
\RegBank0|register_array[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[0]~31_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[4][0]~q\);

-- Location: FF_X60_Y42_N29
\RegBank0|register_array[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[0]~31_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[6][0]~q\);

-- Location: LCCOMB_X60_Y42_N28
\RegBank0|RD2[0]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[0]~90_combout\ = (Instr(2) & (((Instr(3))))) # (!Instr(2) & ((Instr(3) & ((\RegBank0|register_array[6][0]~q\))) # (!Instr(3) & (\RegBank0|register_array[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[4][0]~q\,
	datab => Instr(2),
	datac => \RegBank0|register_array[6][0]~q\,
	datad => Instr(3),
	combout => \RegBank0|RD2[0]~90_combout\);

-- Location: LCCOMB_X59_Y42_N0
\RegBank0|RD2[0]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[0]~91_combout\ = (Instr(2) & ((\RegBank0|RD2[0]~90_combout\ & (\RegBank0|register_array[7][0]~q\)) # (!\RegBank0|RD2[0]~90_combout\ & ((\RegBank0|register_array[5][0]~q\))))) # (!Instr(2) & (((\RegBank0|RD2[0]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[7][0]~q\,
	datab => Instr(2),
	datac => \RegBank0|register_array[5][0]~q\,
	datad => \RegBank0|RD2[0]~90_combout\,
	combout => \RegBank0|RD2[0]~91_combout\);

-- Location: FF_X62_Y43_N11
\RegBank0|register_array[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[0]~31_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[1][0]~q\);

-- Location: LCCOMB_X58_Y43_N30
\RegBank0|RD2[0]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[0]~92_combout\ = (\RegBank0|RD2[13]~35_combout\ & (((\RegBank0|RD2[13]~34_combout\)))) # (!\RegBank0|RD2[13]~35_combout\ & ((\RegBank0|RD2[13]~34_combout\ & (\RegBank0|RD2[0]~91_combout\)) # (!\RegBank0|RD2[13]~34_combout\ & 
-- ((\RegBank0|register_array[1][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[0]~91_combout\,
	datab => \RegBank0|RD2[13]~35_combout\,
	datac => \RegBank0|RD2[13]~34_combout\,
	datad => \RegBank0|register_array[1][0]~q\,
	combout => \RegBank0|RD2[0]~92_combout\);

-- Location: FF_X58_Y43_N21
\RegBank0|register_array[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[0]~31_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[2][0]~q\);

-- Location: FF_X58_Y43_N17
\RegBank0|register_array[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[0]~31_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[3][0]~q\);

-- Location: LCCOMB_X58_Y43_N16
\RegBank0|RD2[0]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[0]~93_combout\ = (\RegBank0|RD2[0]~92_combout\ & (((\RegBank0|register_array[3][0]~q\) # (!\RegBank0|RD2[13]~35_combout\)))) # (!\RegBank0|RD2[0]~92_combout\ & (\RegBank0|register_array[2][0]~q\ & ((\RegBank0|RD2[13]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[0]~92_combout\,
	datab => \RegBank0|register_array[2][0]~q\,
	datac => \RegBank0|register_array[3][0]~q\,
	datad => \RegBank0|RD2[13]~35_combout\,
	combout => \RegBank0|RD2[0]~93_combout\);

-- Location: LCCOMB_X59_Y43_N14
\RegBank0|RD2[0]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[0]~112_combout\ = (\RegBank0|RD2[0]~93_combout\ & ((Instr(3)) # ((Instr(2)) # (Instr(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(3),
	datab => Instr(2),
	datac => \RegBank0|RD2[0]~93_combout\,
	datad => Instr(4),
	combout => \RegBank0|RD2[0]~112_combout\);

-- Location: FF_X59_Y43_N15
\B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD2[0]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(0));

-- Location: LCCOMB_X60_Y44_N6
\SrcB[0]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcB[0]~19_combout\ = (B(0) & ((\FSM0|curr_state\(2) & ((\FSM0|curr_state\(3)) # (\FSM0|curr_state\(1)))) # (!\FSM0|curr_state\(2) & (\FSM0|curr_state\(3) & \FSM0|curr_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(2),
	datab => B(0),
	datac => \FSM0|curr_state\(3),
	datad => \FSM0|curr_state\(1),
	combout => \SrcB[0]~19_combout\);

-- Location: LCCOMB_X60_Y44_N0
\SrcB[0]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcB[0]~20_combout\ = (\SrcB[0]~19_combout\) # ((\SrcB[2]~12_combout\ & (\FSM0|cu_decoder|Decoder3~0_combout\ & Instr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[0]~19_combout\,
	datab => \SrcB[2]~12_combout\,
	datac => \FSM0|cu_decoder|Decoder3~0_combout\,
	datad => Instr(2),
	combout => \SrcB[0]~20_combout\);

-- Location: LCCOMB_X58_Y44_N2
\ALU0|twc|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~0_combout\ = (\SrcB[1]~22_combout\ & (!\SrcB[0]~20_combout\ & VCC)) # (!\SrcB[1]~22_combout\ & (\SrcB[0]~20_combout\ $ (GND)))
-- \ALU0|twc|Add0~1\ = CARRY((!\SrcB[1]~22_combout\ & !\SrcB[0]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[1]~22_combout\,
	datab => \SrcB[0]~20_combout\,
	datad => VCC,
	combout => \ALU0|twc|Add0~0_combout\,
	cout => \ALU0|twc|Add0~1\);

-- Location: LCCOMB_X55_Y41_N4
\ALU0|twc|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~44_combout\ = (\FSM0|aludecod|WideOr1~0_combout\ & ((Instr(13) & ((\ALU0|twc|Add0~0_combout\))) # (!Instr(13) & (\SrcB[1]~22_combout\)))) # (!\FSM0|aludecod|WideOr1~0_combout\ & (\SrcB[1]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[1]~22_combout\,
	datab => \ALU0|twc|Add0~0_combout\,
	datac => \FSM0|aludecod|WideOr1~0_combout\,
	datad => Instr(13),
	combout => \ALU0|twc|Add0~44_combout\);

-- Location: LCCOMB_X56_Y44_N2
\ALU0|Sum[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|Sum[1]~2_combout\ = (\ALU0|twc|Add0~44_combout\ & ((\SrcA[1]~14_combout\ & (\ALU0|Sum[0]~1\ & VCC)) # (!\SrcA[1]~14_combout\ & (!\ALU0|Sum[0]~1\)))) # (!\ALU0|twc|Add0~44_combout\ & ((\SrcA[1]~14_combout\ & (!\ALU0|Sum[0]~1\)) # 
-- (!\SrcA[1]~14_combout\ & ((\ALU0|Sum[0]~1\) # (GND)))))
-- \ALU0|Sum[1]~3\ = CARRY((\ALU0|twc|Add0~44_combout\ & (!\SrcA[1]~14_combout\ & !\ALU0|Sum[0]~1\)) # (!\ALU0|twc|Add0~44_combout\ & ((!\ALU0|Sum[0]~1\) # (!\SrcA[1]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|twc|Add0~44_combout\,
	datab => \SrcA[1]~14_combout\,
	datad => VCC,
	cin => \ALU0|Sum[0]~1\,
	combout => \ALU0|Sum[1]~2_combout\,
	cout => \ALU0|Sum[1]~3\);

-- Location: LCCOMB_X55_Y44_N6
\ALU0|m2|m1|m3|out[1]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[1]~54_combout\ = (\ALU0|m2|m1|m3|out[1]~41_combout\) # ((\ALU0|Sum[1]~2_combout\ & ((!Instr(14)) # (!\FSM0|aludecod|WideOr1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|WideOr1~0_combout\,
	datab => Instr(14),
	datac => \ALU0|m2|m1|m3|out[1]~41_combout\,
	datad => \ALU0|Sum[1]~2_combout\,
	combout => \ALU0|m2|m1|m3|out[1]~54_combout\);

-- Location: LCCOMB_X55_Y44_N10
\ALU0|m2|m3|out~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m3|out~18_combout\ = (!\FSM0|aludecod|Selector0~0_combout\ & ((\ALU0|m2|m1|m3|out[1]~41_combout\) # ((\ALU0|Sum[1]~2_combout\ & !\FSM0|aludecod|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Sum[1]~2_combout\,
	datab => \ALU0|m2|m1|m3|out[1]~41_combout\,
	datac => \FSM0|aludecod|Selector1~0_combout\,
	datad => \FSM0|aludecod|Selector0~0_combout\,
	combout => \ALU0|m2|m3|out~18_combout\);

-- Location: FF_X55_Y44_N11
\ALUOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \ALU0|m2|m3|out~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ALUOut(1));

-- Location: LCCOMB_X55_Y44_N28
\Result[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[1]~28_combout\ = (!\FSM0|aludecod|Decoder0~1_combout\ & ((\FSM0|cu_decoder|Decoder2~0_combout\ & (\Memory0|altsyncram_component|auto_generated|q_a\(1))) # (!\FSM0|cu_decoder|Decoder2~0_combout\ & ((ALUOut(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cu_decoder|Decoder2~0_combout\,
	datab => \Memory0|altsyncram_component|auto_generated|q_a\(1),
	datac => \FSM0|aludecod|Decoder0~1_combout\,
	datad => ALUOut(1),
	combout => \Result[1]~28_combout\);

-- Location: LCCOMB_X55_Y44_N2
\Result[1]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[1]~29_combout\ = (\Result[1]~28_combout\) # ((\ALU0|m2|m1|m3|out[1]~54_combout\ & (\FSM0|aludecod|Decoder0~1_combout\ & !\FSM0|aludecod|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|m2|m1|m3|out[1]~54_combout\,
	datab => \Result[1]~28_combout\,
	datac => \FSM0|aludecod|Decoder0~1_combout\,
	datad => \FSM0|aludecod|Selector0~0_combout\,
	combout => \Result[1]~29_combout\);

-- Location: FF_X61_Y43_N31
\RegBank0|register_array[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[1]~29_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[2][1]~q\);

-- Location: LCCOMB_X62_Y43_N20
\RegBank0|RD1[1]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[1]~92_combout\ = (\RegBank0|RD1[2]~35_combout\ & ((\RegBank0|register_array[2][1]~q\) # ((\RegBank0|RD1[2]~34_combout\)))) # (!\RegBank0|RD1[2]~35_combout\ & (((\RegBank0|register_array[1][1]~q\ & !\RegBank0|RD1[2]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[2]~35_combout\,
	datab => \RegBank0|register_array[2][1]~q\,
	datac => \RegBank0|register_array[1][1]~q\,
	datad => \RegBank0|RD1[2]~34_combout\,
	combout => \RegBank0|RD1[1]~92_combout\);

-- Location: LCCOMB_X60_Y42_N24
\RegBank0|RD1[1]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[1]~90_combout\ = (Instr(5) & ((Instr(6)) # ((\RegBank0|register_array[5][1]~q\)))) # (!Instr(5) & (!Instr(6) & (\RegBank0|register_array[4][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(5),
	datab => Instr(6),
	datac => \RegBank0|register_array[4][1]~q\,
	datad => \RegBank0|register_array[5][1]~q\,
	combout => \RegBank0|RD1[1]~90_combout\);

-- Location: LCCOMB_X61_Y44_N16
\RegBank0|RD1[1]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[1]~91_combout\ = (\RegBank0|RD1[1]~90_combout\ & (((\RegBank0|register_array[7][1]~q\) # (!Instr(6))))) # (!\RegBank0|RD1[1]~90_combout\ & (\RegBank0|register_array[6][1]~q\ & ((Instr(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[1]~90_combout\,
	datab => \RegBank0|register_array[6][1]~q\,
	datac => \RegBank0|register_array[7][1]~q\,
	datad => Instr(6),
	combout => \RegBank0|RD1[1]~91_combout\);

-- Location: LCCOMB_X61_Y44_N22
\RegBank0|RD1[1]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[1]~93_combout\ = (\RegBank0|RD1[1]~92_combout\ & (((\RegBank0|register_array[3][1]~q\)) # (!\RegBank0|RD1[2]~34_combout\))) # (!\RegBank0|RD1[1]~92_combout\ & (\RegBank0|RD1[2]~34_combout\ & ((\RegBank0|RD1[1]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[1]~92_combout\,
	datab => \RegBank0|RD1[2]~34_combout\,
	datac => \RegBank0|register_array[3][1]~q\,
	datad => \RegBank0|RD1[1]~91_combout\,
	combout => \RegBank0|RD1[1]~93_combout\);

-- Location: LCCOMB_X57_Y41_N2
\RegBank0|RD1[1]~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[1]~112_combout\ = (\RegBank0|RD1[1]~93_combout\ & ((Instr(6)) # ((Instr(7)) # (Instr(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(6),
	datab => Instr(7),
	datac => Instr(5),
	datad => \RegBank0|RD1[1]~93_combout\,
	combout => \RegBank0|RD1[1]~112_combout\);

-- Location: FF_X57_Y41_N3
\WriteData[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD1[1]~112_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WriteData(1));

-- Location: FF_X59_Y43_N11
\RegBank0|register_array[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[2]~27_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[5][2]~q\);

-- Location: FF_X60_Y43_N23
\RegBank0|register_array[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[2]~27_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[6][2]~q\);

-- Location: FF_X60_Y43_N17
\RegBank0|register_array[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[2]~27_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[4][2]~q\);

-- Location: LCCOMB_X60_Y43_N16
\RegBank0|RD1[2]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[2]~86_combout\ = (Instr(6) & ((\RegBank0|register_array[6][2]~q\) # ((Instr(5))))) # (!Instr(6) & (((\RegBank0|register_array[4][2]~q\ & !Instr(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[6][2]~q\,
	datab => Instr(6),
	datac => \RegBank0|register_array[4][2]~q\,
	datad => Instr(5),
	combout => \RegBank0|RD1[2]~86_combout\);

-- Location: FF_X62_Y43_N23
\RegBank0|register_array[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[2]~27_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[7][2]~q\);

-- Location: LCCOMB_X62_Y43_N22
\RegBank0|RD1[2]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[2]~87_combout\ = (\RegBank0|RD1[2]~86_combout\ & (((\RegBank0|register_array[7][2]~q\) # (!Instr(5))))) # (!\RegBank0|RD1[2]~86_combout\ & (\RegBank0|register_array[5][2]~q\ & ((Instr(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[5][2]~q\,
	datab => \RegBank0|RD1[2]~86_combout\,
	datac => \RegBank0|register_array[7][2]~q\,
	datad => Instr(5),
	combout => \RegBank0|RD1[2]~87_combout\);

-- Location: FF_X62_Y43_N17
\RegBank0|register_array[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[2]~27_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[1][2]~q\);

-- Location: LCCOMB_X62_Y43_N16
\RegBank0|RD1[2]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[2]~88_combout\ = (\RegBank0|RD1[2]~35_combout\ & (((\RegBank0|RD1[2]~34_combout\)))) # (!\RegBank0|RD1[2]~35_combout\ & ((\RegBank0|RD1[2]~34_combout\ & (\RegBank0|RD1[2]~87_combout\)) # (!\RegBank0|RD1[2]~34_combout\ & 
-- ((\RegBank0|register_array[1][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[2]~87_combout\,
	datab => \RegBank0|RD1[2]~35_combout\,
	datac => \RegBank0|register_array[1][2]~q\,
	datad => \RegBank0|RD1[2]~34_combout\,
	combout => \RegBank0|RD1[2]~88_combout\);

-- Location: FF_X61_Y43_N13
\RegBank0|register_array[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[2]~27_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[2][2]~q\);

-- Location: FF_X56_Y43_N5
\RegBank0|register_array[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \Result[2]~27_combout\,
	ena => \RegBank0|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[3][2]~q\);

-- Location: LCCOMB_X61_Y43_N12
\RegBank0|RD1[2]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[2]~89_combout\ = (\RegBank0|RD1[2]~35_combout\ & ((\RegBank0|RD1[2]~88_combout\ & ((\RegBank0|register_array[3][2]~q\))) # (!\RegBank0|RD1[2]~88_combout\ & (\RegBank0|register_array[2][2]~q\)))) # (!\RegBank0|RD1[2]~35_combout\ & 
-- (\RegBank0|RD1[2]~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[2]~35_combout\,
	datab => \RegBank0|RD1[2]~88_combout\,
	datac => \RegBank0|register_array[2][2]~q\,
	datad => \RegBank0|register_array[3][2]~q\,
	combout => \RegBank0|RD1[2]~89_combout\);

-- Location: LCCOMB_X61_Y42_N28
\RegBank0|RD1[2]~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[2]~111_combout\ = (\RegBank0|RD1[2]~89_combout\ & ((Instr(7)) # ((Instr(5)) # (Instr(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(7),
	datab => Instr(5),
	datac => \RegBank0|RD1[2]~89_combout\,
	datad => Instr(6),
	combout => \RegBank0|RD1[2]~111_combout\);

-- Location: FF_X61_Y42_N29
\WriteData[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD1[2]~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WriteData(2));

-- Location: LCCOMB_X60_Y42_N2
\RegBank0|RD1[3]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[3]~82_combout\ = (Instr(5) & ((Instr(6)) # ((\RegBank0|register_array[5][3]~q\)))) # (!Instr(5) & (!Instr(6) & (\RegBank0|register_array[4][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(5),
	datab => Instr(6),
	datac => \RegBank0|register_array[4][3]~q\,
	datad => \RegBank0|register_array[5][3]~q\,
	combout => \RegBank0|RD1[3]~82_combout\);

-- Location: LCCOMB_X61_Y42_N8
\RegBank0|RD1[3]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[3]~83_combout\ = (\RegBank0|RD1[3]~82_combout\ & (((\RegBank0|register_array[7][3]~q\)) # (!Instr(6)))) # (!\RegBank0|RD1[3]~82_combout\ & (Instr(6) & ((\RegBank0|register_array[6][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[3]~82_combout\,
	datab => Instr(6),
	datac => \RegBank0|register_array[7][3]~q\,
	datad => \RegBank0|register_array[6][3]~q\,
	combout => \RegBank0|RD1[3]~83_combout\);

-- Location: LCCOMB_X62_Y43_N28
\RegBank0|RD1[3]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[3]~84_combout\ = (\RegBank0|RD1[2]~35_combout\ & ((\RegBank0|register_array[2][3]~q\) # ((\RegBank0|RD1[2]~34_combout\)))) # (!\RegBank0|RD1[2]~35_combout\ & (((\RegBank0|register_array[1][3]~q\ & !\RegBank0|RD1[2]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[2]~35_combout\,
	datab => \RegBank0|register_array[2][3]~q\,
	datac => \RegBank0|register_array[1][3]~q\,
	datad => \RegBank0|RD1[2]~34_combout\,
	combout => \RegBank0|RD1[3]~84_combout\);

-- Location: LCCOMB_X61_Y42_N30
\RegBank0|RD1[3]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[3]~85_combout\ = (\RegBank0|RD1[2]~34_combout\ & ((\RegBank0|RD1[3]~84_combout\ & (\RegBank0|register_array[3][3]~q\)) # (!\RegBank0|RD1[3]~84_combout\ & ((\RegBank0|RD1[3]~83_combout\))))) # (!\RegBank0|RD1[2]~34_combout\ & 
-- (((\RegBank0|RD1[3]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[2]~34_combout\,
	datab => \RegBank0|register_array[3][3]~q\,
	datac => \RegBank0|RD1[3]~83_combout\,
	datad => \RegBank0|RD1[3]~84_combout\,
	combout => \RegBank0|RD1[3]~85_combout\);

-- Location: LCCOMB_X61_Y42_N10
\RegBank0|RD1[3]~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[3]~110_combout\ = (\RegBank0|RD1[3]~85_combout\ & ((Instr(7)) # ((Instr(5)) # (Instr(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(7),
	datab => Instr(5),
	datac => \RegBank0|RD1[3]~85_combout\,
	datad => Instr(6),
	combout => \RegBank0|RD1[3]~110_combout\);

-- Location: FF_X61_Y42_N11
\WriteData[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD1[3]~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WriteData(3));

-- Location: LCCOMB_X60_Y43_N12
\RegBank0|RD1[4]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[4]~78_combout\ = (Instr(5) & (Instr(6))) # (!Instr(5) & ((Instr(6) & ((\RegBank0|register_array[6][4]~q\))) # (!Instr(6) & (\RegBank0|register_array[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(5),
	datab => Instr(6),
	datac => \RegBank0|register_array[4][4]~q\,
	datad => \RegBank0|register_array[6][4]~q\,
	combout => \RegBank0|RD1[4]~78_combout\);

-- Location: LCCOMB_X62_Y43_N8
\RegBank0|RD1[4]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[4]~79_combout\ = (\RegBank0|RD1[4]~78_combout\ & (((\RegBank0|register_array[7][4]~q\) # (!Instr(5))))) # (!\RegBank0|RD1[4]~78_combout\ & (\RegBank0|register_array[5][4]~q\ & ((Instr(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[5][4]~q\,
	datab => \RegBank0|RD1[4]~78_combout\,
	datac => \RegBank0|register_array[7][4]~q\,
	datad => Instr(5),
	combout => \RegBank0|RD1[4]~79_combout\);

-- Location: LCCOMB_X62_Y43_N26
\RegBank0|RD1[4]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[4]~80_combout\ = (\RegBank0|RD1[2]~35_combout\ & (((\RegBank0|RD1[2]~34_combout\)))) # (!\RegBank0|RD1[2]~35_combout\ & ((\RegBank0|RD1[2]~34_combout\ & (\RegBank0|RD1[4]~79_combout\)) # (!\RegBank0|RD1[2]~34_combout\ & 
-- ((\RegBank0|register_array[1][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[2]~35_combout\,
	datab => \RegBank0|RD1[4]~79_combout\,
	datac => \RegBank0|register_array[1][4]~q\,
	datad => \RegBank0|RD1[2]~34_combout\,
	combout => \RegBank0|RD1[4]~80_combout\);

-- Location: LCCOMB_X58_Y43_N22
\RegBank0|RD1[4]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[4]~81_combout\ = (\RegBank0|RD1[2]~35_combout\ & ((\RegBank0|RD1[4]~80_combout\ & (\RegBank0|register_array[3][4]~q\)) # (!\RegBank0|RD1[4]~80_combout\ & ((\RegBank0|register_array[2][4]~q\))))) # (!\RegBank0|RD1[2]~35_combout\ & 
-- (((\RegBank0|RD1[4]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[2]~35_combout\,
	datab => \RegBank0|register_array[3][4]~q\,
	datac => \RegBank0|register_array[2][4]~q\,
	datad => \RegBank0|RD1[4]~80_combout\,
	combout => \RegBank0|RD1[4]~81_combout\);

-- Location: LCCOMB_X57_Y41_N24
\RegBank0|RD1[4]~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[4]~109_combout\ = (\RegBank0|RD1[4]~81_combout\ & ((Instr(6)) # ((Instr(7)) # (Instr(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(6),
	datab => Instr(7),
	datac => Instr(5),
	datad => \RegBank0|RD1[4]~81_combout\,
	combout => \RegBank0|RD1[4]~109_combout\);

-- Location: FF_X57_Y41_N25
\WriteData[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD1[4]~109_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WriteData(4));

-- Location: FF_X56_Y42_N9
\PC[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[14]~3_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \FSM0|pc_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(14));

-- Location: LCCOMB_X57_Y42_N8
\SrcA[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcA[14]~1_combout\ = (!\FSM0|cu_decoder|Mux4~0_combout\ & ((\FSM0|cu_decoder|Mux2~0_combout\ & (WriteData(14))) # (!\FSM0|cu_decoder|Mux2~0_combout\ & ((PC(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cu_decoder|Mux4~0_combout\,
	datab => \FSM0|cu_decoder|Mux2~0_combout\,
	datac => WriteData(14),
	datad => PC(14),
	combout => \SrcA[14]~1_combout\);

-- Location: FF_X58_Y40_N17
\RegBank0|register_array[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[14]~3_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[2][14]~q\);

-- Location: FF_X60_Y43_N27
\RegBank0|register_array[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[14]~3_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[4][14]~q\);

-- Location: FF_X60_Y43_N25
\RegBank0|register_array[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[14]~3_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[6][14]~q\);

-- Location: LCCOMB_X60_Y43_N24
\RegBank0|RD2[14]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[14]~38_combout\ = (Instr(3) & (((\RegBank0|register_array[6][14]~q\) # (Instr(2))))) # (!Instr(3) & (\RegBank0|register_array[4][14]~q\ & ((!Instr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[4][14]~q\,
	datab => Instr(3),
	datac => \RegBank0|register_array[6][14]~q\,
	datad => Instr(2),
	combout => \RegBank0|RD2[14]~38_combout\);

-- Location: FF_X56_Y40_N3
\RegBank0|register_array[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[14]~3_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[7][14]~q\);

-- Location: FF_X56_Y40_N17
\RegBank0|register_array[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[14]~3_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[5][14]~q\);

-- Location: LCCOMB_X56_Y40_N16
\RegBank0|RD2[14]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[14]~39_combout\ = (\RegBank0|RD2[14]~38_combout\ & ((\RegBank0|register_array[7][14]~q\) # ((!Instr(2))))) # (!\RegBank0|RD2[14]~38_combout\ & (((\RegBank0|register_array[5][14]~q\ & Instr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[14]~38_combout\,
	datab => \RegBank0|register_array[7][14]~q\,
	datac => \RegBank0|register_array[5][14]~q\,
	datad => Instr(2),
	combout => \RegBank0|RD2[14]~39_combout\);

-- Location: FF_X57_Y40_N9
\RegBank0|register_array[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[14]~3_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[1][14]~q\);

-- Location: LCCOMB_X58_Y40_N2
\RegBank0|RD2[14]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[14]~40_combout\ = (\RegBank0|RD2[13]~35_combout\ & (((\RegBank0|RD2[13]~34_combout\)))) # (!\RegBank0|RD2[13]~35_combout\ & ((\RegBank0|RD2[13]~34_combout\ & (\RegBank0|RD2[14]~39_combout\)) # (!\RegBank0|RD2[13]~34_combout\ & 
-- ((\RegBank0|register_array[1][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[13]~35_combout\,
	datab => \RegBank0|RD2[14]~39_combout\,
	datac => \RegBank0|RD2[13]~34_combout\,
	datad => \RegBank0|register_array[1][14]~q\,
	combout => \RegBank0|RD2[14]~40_combout\);

-- Location: LCCOMB_X58_Y40_N12
\RegBank0|RD2[14]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[14]~41_combout\ = (\RegBank0|RD2[13]~35_combout\ & ((\RegBank0|RD2[14]~40_combout\ & ((\RegBank0|register_array[3][14]~q\))) # (!\RegBank0|RD2[14]~40_combout\ & (\RegBank0|register_array[2][14]~q\)))) # (!\RegBank0|RD2[13]~35_combout\ & 
-- (((\RegBank0|RD2[14]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[13]~35_combout\,
	datab => \RegBank0|register_array[2][14]~q\,
	datac => \RegBank0|register_array[3][14]~q\,
	datad => \RegBank0|RD2[14]~40_combout\,
	combout => \RegBank0|RD2[14]~41_combout\);

-- Location: LCCOMB_X59_Y40_N6
\RegBank0|RD2[14]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[14]~99_combout\ = (\RegBank0|RD2[14]~41_combout\ & ((Instr(2)) # ((Instr(3)) # (Instr(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[14]~41_combout\,
	datab => Instr(2),
	datac => Instr(3),
	datad => Instr(4),
	combout => \RegBank0|RD2[14]~99_combout\);

-- Location: FF_X59_Y40_N7
\B[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD2[14]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(14));

-- Location: LCCOMB_X59_Y40_N24
\SrcB[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcB[14]~1_combout\ = (\FSM0|cu_decoder|Mux1~0_combout\ & (((B(14))))) # (!\FSM0|cu_decoder|Mux1~0_combout\ & (!\FSM0|pc_write~0_combout\ & (Instr(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|pc_write~0_combout\,
	datab => Instr(12),
	datac => \FSM0|cu_decoder|Mux1~0_combout\,
	datad => B(14),
	combout => \SrcB[14]~1_combout\);

-- Location: LCCOMB_X58_Y44_N28
\ALU0|twc|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~26_combout\ = (\FSM0|cu_decoder|Decoder3~0_combout\ & ((\SrcB[14]~1_combout\ & ((\ALU0|twc|Add0~25\) # (GND))) # (!\SrcB[14]~1_combout\ & (!\ALU0|twc|Add0~25\)))) # (!\FSM0|cu_decoder|Decoder3~0_combout\ & (((!\ALU0|twc|Add0~25\))))
-- \ALU0|twc|Add0~27\ = CARRY(((\FSM0|cu_decoder|Decoder3~0_combout\ & \SrcB[14]~1_combout\)) # (!\ALU0|twc|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cu_decoder|Decoder3~0_combout\,
	datab => \SrcB[14]~1_combout\,
	datad => VCC,
	cin => \ALU0|twc|Add0~25\,
	combout => \ALU0|twc|Add0~26_combout\,
	cout => \ALU0|twc|Add0~27\);

-- Location: LCCOMB_X57_Y44_N10
\ALU0|twc|Add0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~31_combout\ = (\FSM0|aludecod|Selector2~0_combout\ & (((\ALU0|twc|Add0~26_combout\)))) # (!\FSM0|aludecod|Selector2~0_combout\ & (\SrcB[14]~1_combout\ & (\FSM0|cu_decoder|Decoder3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[14]~1_combout\,
	datab => \FSM0|aludecod|Selector2~0_combout\,
	datac => \FSM0|cu_decoder|Decoder3~0_combout\,
	datad => \ALU0|twc|Add0~26_combout\,
	combout => \ALU0|twc|Add0~31_combout\);

-- Location: LCCOMB_X56_Y44_N28
\ALU0|Sum[14]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|Sum[14]~28_combout\ = ((\SrcA[14]~1_combout\ $ (\ALU0|twc|Add0~31_combout\ $ (!\ALU0|Sum[13]~27\)))) # (GND)
-- \ALU0|Sum[14]~29\ = CARRY((\SrcA[14]~1_combout\ & ((\ALU0|twc|Add0~31_combout\) # (!\ALU0|Sum[13]~27\))) # (!\SrcA[14]~1_combout\ & (\ALU0|twc|Add0~31_combout\ & !\ALU0|Sum[13]~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA[14]~1_combout\,
	datab => \ALU0|twc|Add0~31_combout\,
	datad => VCC,
	cin => \ALU0|Sum[13]~27\,
	combout => \ALU0|Sum[14]~28_combout\,
	cout => \ALU0|Sum[14]~29\);

-- Location: LCCOMB_X57_Y44_N24
\ALU0|m2|m1|m3|out[14]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[14]~29_combout\ = (\FSM0|aludecod|Selector2~0_combout\ & ((\SrcA[14]~1_combout\) # ((\SrcB[14]~1_combout\ & \FSM0|cu_decoder|Decoder3~0_combout\)))) # (!\FSM0|aludecod|Selector2~0_combout\ & (\SrcB[14]~1_combout\ & 
-- (\FSM0|cu_decoder|Decoder3~0_combout\ & \SrcA[14]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[14]~1_combout\,
	datab => \FSM0|aludecod|Selector2~0_combout\,
	datac => \FSM0|cu_decoder|Decoder3~0_combout\,
	datad => \SrcA[14]~1_combout\,
	combout => \ALU0|m2|m1|m3|out[14]~29_combout\);

-- Location: LCCOMB_X57_Y43_N28
\ALU0|m2|m3|out~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m3|out~6_combout\ = (!\FSM0|aludecod|Selector0~0_combout\ & ((\FSM0|aludecod|Selector1~0_combout\ & ((\ALU0|m2|m1|m3|out[14]~29_combout\))) # (!\FSM0|aludecod|Selector1~0_combout\ & (\ALU0|Sum[14]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|Selector1~0_combout\,
	datab => \ALU0|Sum[14]~28_combout\,
	datac => \FSM0|aludecod|Selector0~0_combout\,
	datad => \ALU0|m2|m1|m3|out[14]~29_combout\,
	combout => \ALU0|m2|m3|out~6_combout\);

-- Location: FF_X57_Y43_N29
\ALUOut[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \ALU0|m2|m3|out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ALUOut(14));

-- Location: LCCOMB_X57_Y43_N14
\Result[14]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[14]~2_combout\ = (\FSM0|cu_decoder|Decoder2~0_combout\ & (\Memory0|altsyncram_component|auto_generated|q_a\(14))) # (!\FSM0|cu_decoder|Decoder2~0_combout\ & ((ALUOut(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memory0|altsyncram_component|auto_generated|q_a\(14),
	datab => ALUOut(14),
	datac => \FSM0|cu_decoder|Decoder2~0_combout\,
	combout => \Result[14]~2_combout\);

-- Location: LCCOMB_X57_Y43_N30
\ALU0|m2|m1|m3|out[14]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[14]~42_combout\ = (Instr(14) & ((\FSM0|aludecod|WideOr1~0_combout\ & (\ALU0|m2|m1|m3|out[14]~29_combout\)) # (!\FSM0|aludecod|WideOr1~0_combout\ & ((\ALU0|Sum[14]~28_combout\))))) # (!Instr(14) & (((\ALU0|Sum[14]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|m2|m1|m3|out[14]~29_combout\,
	datab => Instr(14),
	datac => \FSM0|aludecod|WideOr1~0_combout\,
	datad => \ALU0|Sum[14]~28_combout\,
	combout => \ALU0|m2|m1|m3|out[14]~42_combout\);

-- Location: LCCOMB_X58_Y40_N28
\Result[14]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[14]~3_combout\ = (\FSM0|aludecod|Decoder0~1_combout\ & (((\ALU0|m2|m1|m3|out[14]~42_combout\ & !\FSM0|aludecod|Selector0~0_combout\)))) # (!\FSM0|aludecod|Decoder0~1_combout\ & (\Result[14]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[14]~2_combout\,
	datab => \ALU0|m2|m1|m3|out[14]~42_combout\,
	datac => \FSM0|aludecod|Selector0~0_combout\,
	datad => \FSM0|aludecod|Decoder0~1_combout\,
	combout => \Result[14]~3_combout\);

-- Location: FF_X58_Y40_N13
\RegBank0|register_array[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[14]~3_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[3][14]~q\);

-- Location: LCCOMB_X60_Y43_N26
\RegBank0|RD1[14]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[14]~38_combout\ = (Instr(5) & (Instr(6))) # (!Instr(5) & ((Instr(6) & ((\RegBank0|register_array[6][14]~q\))) # (!Instr(6) & (\RegBank0|register_array[4][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(5),
	datab => Instr(6),
	datac => \RegBank0|register_array[4][14]~q\,
	datad => \RegBank0|register_array[6][14]~q\,
	combout => \RegBank0|RD1[14]~38_combout\);

-- Location: LCCOMB_X56_Y40_N2
\RegBank0|RD1[14]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[14]~39_combout\ = (\RegBank0|RD1[14]~38_combout\ & (((\RegBank0|register_array[7][14]~q\)) # (!Instr(5)))) # (!\RegBank0|RD1[14]~38_combout\ & (Instr(5) & ((\RegBank0|register_array[5][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[14]~38_combout\,
	datab => Instr(5),
	datac => \RegBank0|register_array[7][14]~q\,
	datad => \RegBank0|register_array[5][14]~q\,
	combout => \RegBank0|RD1[14]~39_combout\);

-- Location: LCCOMB_X57_Y40_N8
\RegBank0|RD1[14]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[14]~40_combout\ = (\RegBank0|RD1[2]~35_combout\ & (\RegBank0|RD1[2]~34_combout\)) # (!\RegBank0|RD1[2]~35_combout\ & ((\RegBank0|RD1[2]~34_combout\ & ((\RegBank0|RD1[14]~39_combout\))) # (!\RegBank0|RD1[2]~34_combout\ & 
-- (\RegBank0|register_array[1][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[2]~35_combout\,
	datab => \RegBank0|RD1[2]~34_combout\,
	datac => \RegBank0|register_array[1][14]~q\,
	datad => \RegBank0|RD1[14]~39_combout\,
	combout => \RegBank0|RD1[14]~40_combout\);

-- Location: LCCOMB_X58_Y40_N16
\RegBank0|RD1[14]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[14]~41_combout\ = (\RegBank0|RD1[14]~40_combout\ & ((\RegBank0|register_array[3][14]~q\) # ((!\RegBank0|RD1[2]~35_combout\)))) # (!\RegBank0|RD1[14]~40_combout\ & (((\RegBank0|register_array[2][14]~q\ & \RegBank0|RD1[2]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[3][14]~q\,
	datab => \RegBank0|RD1[14]~40_combout\,
	datac => \RegBank0|register_array[2][14]~q\,
	datad => \RegBank0|RD1[2]~35_combout\,
	combout => \RegBank0|RD1[14]~41_combout\);

-- Location: LCCOMB_X57_Y42_N14
\RegBank0|RD1[14]~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[14]~99_combout\ = (\RegBank0|RD1[14]~41_combout\ & ((Instr(7)) # ((Instr(5)) # (Instr(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(7),
	datab => Instr(5),
	datac => \RegBank0|RD1[14]~41_combout\,
	datad => Instr(6),
	combout => \RegBank0|RD1[14]~99_combout\);

-- Location: FF_X57_Y42_N15
\WriteData[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD1[14]~99_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WriteData(14));

-- Location: M9K_X53_Y42_N0
\Memory0|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A01000005631098101402",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../src/program.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DE10_LITE_Memory:Memory0|altsyncram:altsyncram_component|altsyncram_o3s3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 9,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 2048,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 10,
	port_b_data_width => 9,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \FSM0|aludecod|Decoder0~2_combout\,
	portare => VCC,
	clk0 => \CNT0|ALT_INV_q[25]~clkctrl_outclk\,
	portadatain => \Memory0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \Memory0|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \Memory0|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X59_Y40_N1
\Instr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Memory0|altsyncram_component|auto_generated|q_a\(8),
	sload => VCC,
	ena => \FSM0|aludecod|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Instr(8));

-- Location: LCCOMB_X59_Y40_N28
\SrcB[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcB[3]~17_combout\ = (B(3) & ((\FSM0|cu_decoder|Mux1~0_combout\) # ((\SrcB[2]~12_combout\ & Instr(8))))) # (!B(3) & (((\SrcB[2]~12_combout\ & Instr(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(3),
	datab => \FSM0|cu_decoder|Mux1~0_combout\,
	datac => \SrcB[2]~12_combout\,
	datad => Instr(8),
	combout => \SrcB[3]~17_combout\);

-- Location: LCCOMB_X60_Y43_N22
\RegBank0|RD2[2]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[2]~86_combout\ = (Instr(2) & (Instr(3))) # (!Instr(2) & ((Instr(3) & (\RegBank0|register_array[6][2]~q\)) # (!Instr(3) & ((\RegBank0|register_array[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(2),
	datab => Instr(3),
	datac => \RegBank0|register_array[6][2]~q\,
	datad => \RegBank0|register_array[4][2]~q\,
	combout => \RegBank0|RD2[2]~86_combout\);

-- Location: LCCOMB_X59_Y43_N10
\RegBank0|RD2[2]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[2]~87_combout\ = (Instr(2) & ((\RegBank0|RD2[2]~86_combout\ & ((\RegBank0|register_array[7][2]~q\))) # (!\RegBank0|RD2[2]~86_combout\ & (\RegBank0|register_array[5][2]~q\)))) # (!Instr(2) & (\RegBank0|RD2[2]~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(2),
	datab => \RegBank0|RD2[2]~86_combout\,
	datac => \RegBank0|register_array[5][2]~q\,
	datad => \RegBank0|register_array[7][2]~q\,
	combout => \RegBank0|RD2[2]~87_combout\);

-- Location: LCCOMB_X59_Y43_N12
\RegBank0|RD2[2]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[2]~88_combout\ = (\RegBank0|RD2[13]~34_combout\ & ((\RegBank0|RD2[2]~87_combout\) # ((\RegBank0|RD2[13]~35_combout\)))) # (!\RegBank0|RD2[13]~34_combout\ & (((\RegBank0|register_array[1][2]~q\ & !\RegBank0|RD2[13]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[2]~87_combout\,
	datab => \RegBank0|RD2[13]~34_combout\,
	datac => \RegBank0|register_array[1][2]~q\,
	datad => \RegBank0|RD2[13]~35_combout\,
	combout => \RegBank0|RD2[2]~88_combout\);

-- Location: LCCOMB_X59_Y43_N6
\RegBank0|RD2[2]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[2]~89_combout\ = (\RegBank0|RD2[2]~88_combout\ & (((\RegBank0|register_array[3][2]~q\)) # (!\RegBank0|RD2[13]~35_combout\))) # (!\RegBank0|RD2[2]~88_combout\ & (\RegBank0|RD2[13]~35_combout\ & ((\RegBank0|register_array[2][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[2]~88_combout\,
	datab => \RegBank0|RD2[13]~35_combout\,
	datac => \RegBank0|register_array[3][2]~q\,
	datad => \RegBank0|register_array[2][2]~q\,
	combout => \RegBank0|RD2[2]~89_combout\);

-- Location: LCCOMB_X59_Y43_N4
\RegBank0|RD2[2]~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[2]~111_combout\ = (\RegBank0|RD2[2]~89_combout\ & ((Instr(3)) # ((Instr(2)) # (Instr(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[2]~89_combout\,
	datab => Instr(3),
	datac => Instr(2),
	datad => Instr(4),
	combout => \RegBank0|RD2[2]~111_combout\);

-- Location: FF_X59_Y43_N5
\B[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD2[2]~111_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(2));

-- Location: LCCOMB_X59_Y42_N12
\SrcB[2]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcB[2]~18_combout\ = (Instr(4) & ((\SrcB[2]~12_combout\) # ((B(2) & \FSM0|cu_decoder|Mux1~0_combout\)))) # (!Instr(4) & (((B(2) & \FSM0|cu_decoder|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(4),
	datab => \SrcB[2]~12_combout\,
	datac => B(2),
	datad => \FSM0|cu_decoder|Mux1~0_combout\,
	combout => \SrcB[2]~18_combout\);

-- Location: LCCOMB_X58_Y44_N4
\ALU0|twc|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~2_combout\ = (\SrcB[2]~18_combout\ & ((\FSM0|cu_decoder|Decoder3~0_combout\ & ((\ALU0|twc|Add0~1\) # (GND))) # (!\FSM0|cu_decoder|Decoder3~0_combout\ & (!\ALU0|twc|Add0~1\)))) # (!\SrcB[2]~18_combout\ & (((!\ALU0|twc|Add0~1\))))
-- \ALU0|twc|Add0~3\ = CARRY(((\SrcB[2]~18_combout\ & \FSM0|cu_decoder|Decoder3~0_combout\)) # (!\ALU0|twc|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[2]~18_combout\,
	datab => \FSM0|cu_decoder|Decoder3~0_combout\,
	datad => VCC,
	cin => \ALU0|twc|Add0~1\,
	combout => \ALU0|twc|Add0~2_combout\,
	cout => \ALU0|twc|Add0~3\);

-- Location: LCCOMB_X58_Y44_N6
\ALU0|twc|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~4_combout\ = (\ALU0|twc|Add0~3\ & (((!\SrcB[3]~17_combout\) # (!\FSM0|cu_decoder|Decoder3~0_combout\)))) # (!\ALU0|twc|Add0~3\ & ((((!\SrcB[3]~17_combout\) # (!\FSM0|cu_decoder|Decoder3~0_combout\)))))
-- \ALU0|twc|Add0~5\ = CARRY((!\ALU0|twc|Add0~3\ & ((!\SrcB[3]~17_combout\) # (!\FSM0|cu_decoder|Decoder3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cu_decoder|Decoder3~0_combout\,
	datab => \SrcB[3]~17_combout\,
	datad => VCC,
	cin => \ALU0|twc|Add0~3\,
	combout => \ALU0|twc|Add0~4_combout\,
	cout => \ALU0|twc|Add0~5\);

-- Location: LCCOMB_X58_Y44_N8
\ALU0|twc|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~6_combout\ = (\SrcB[4]~16_combout\ & ((\FSM0|cu_decoder|Decoder3~0_combout\ & ((\ALU0|twc|Add0~5\) # (GND))) # (!\FSM0|cu_decoder|Decoder3~0_combout\ & (!\ALU0|twc|Add0~5\)))) # (!\SrcB[4]~16_combout\ & (((!\ALU0|twc|Add0~5\))))
-- \ALU0|twc|Add0~7\ = CARRY(((\SrcB[4]~16_combout\ & \FSM0|cu_decoder|Decoder3~0_combout\)) # (!\ALU0|twc|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[4]~16_combout\,
	datab => \FSM0|cu_decoder|Decoder3~0_combout\,
	datad => VCC,
	cin => \ALU0|twc|Add0~5\,
	combout => \ALU0|twc|Add0~6_combout\,
	cout => \ALU0|twc|Add0~7\);

-- Location: LCCOMB_X58_Y44_N10
\ALU0|twc|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~8_combout\ = (\ALU0|twc|Add0~7\ & (((!\SrcB[5]~15_combout\) # (!\FSM0|cu_decoder|Decoder3~0_combout\)))) # (!\ALU0|twc|Add0~7\ & ((((!\SrcB[5]~15_combout\) # (!\FSM0|cu_decoder|Decoder3~0_combout\)))))
-- \ALU0|twc|Add0~9\ = CARRY((!\ALU0|twc|Add0~7\ & ((!\SrcB[5]~15_combout\) # (!\FSM0|cu_decoder|Decoder3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cu_decoder|Decoder3~0_combout\,
	datab => \SrcB[5]~15_combout\,
	datad => VCC,
	cin => \ALU0|twc|Add0~7\,
	combout => \ALU0|twc|Add0~8_combout\,
	cout => \ALU0|twc|Add0~9\);

-- Location: LCCOMB_X58_Y44_N12
\ALU0|twc|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~10_combout\ = (\SrcB[6]~14_combout\ & ((\FSM0|cu_decoder|Decoder3~0_combout\ & ((\ALU0|twc|Add0~9\) # (GND))) # (!\FSM0|cu_decoder|Decoder3~0_combout\ & (!\ALU0|twc|Add0~9\)))) # (!\SrcB[6]~14_combout\ & (((!\ALU0|twc|Add0~9\))))
-- \ALU0|twc|Add0~11\ = CARRY(((\SrcB[6]~14_combout\ & \FSM0|cu_decoder|Decoder3~0_combout\)) # (!\ALU0|twc|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[6]~14_combout\,
	datab => \FSM0|cu_decoder|Decoder3~0_combout\,
	datad => VCC,
	cin => \ALU0|twc|Add0~9\,
	combout => \ALU0|twc|Add0~10_combout\,
	cout => \ALU0|twc|Add0~11\);

-- Location: LCCOMB_X59_Y44_N12
\ALU0|twc|Add0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~39_combout\ = (\FSM0|aludecod|Selector2~0_combout\ & (((\ALU0|twc|Add0~10_combout\)))) # (!\FSM0|aludecod|Selector2~0_combout\ & (\FSM0|cu_decoder|Decoder3~0_combout\ & (\SrcB[6]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|Selector2~0_combout\,
	datab => \FSM0|cu_decoder|Decoder3~0_combout\,
	datac => \SrcB[6]~14_combout\,
	datad => \ALU0|twc|Add0~10_combout\,
	combout => \ALU0|twc|Add0~39_combout\);

-- Location: FF_X61_Y43_N23
\PC[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[5]~21_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \FSM0|pc_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(5));

-- Location: LCCOMB_X59_Y44_N6
\SrcA[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcA[5]~10_combout\ = (!\FSM0|cu_decoder|Mux4~0_combout\ & ((\FSM0|cu_decoder|Mux2~0_combout\ & ((WriteData(5)))) # (!\FSM0|cu_decoder|Mux2~0_combout\ & (PC(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(5),
	datab => WriteData(5),
	datac => \FSM0|cu_decoder|Mux2~0_combout\,
	datad => \FSM0|cu_decoder|Mux4~0_combout\,
	combout => \SrcA[5]~10_combout\);

-- Location: LCCOMB_X58_Y44_N0
\ALU0|twc|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~40_combout\ = (\FSM0|aludecod|Selector2~0_combout\ & (((\ALU0|twc|Add0~8_combout\)))) # (!\FSM0|aludecod|Selector2~0_combout\ & (\FSM0|cu_decoder|Decoder3~0_combout\ & (\SrcB[5]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|Selector2~0_combout\,
	datab => \FSM0|cu_decoder|Decoder3~0_combout\,
	datac => \SrcB[5]~15_combout\,
	datad => \ALU0|twc|Add0~8_combout\,
	combout => \ALU0|twc|Add0~40_combout\);

-- Location: LCCOMB_X57_Y43_N26
\ALU0|twc|Add0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~41_combout\ = (\FSM0|aludecod|Selector2~0_combout\ & (\ALU0|twc|Add0~6_combout\)) # (!\FSM0|aludecod|Selector2~0_combout\ & (((\SrcB[4]~16_combout\ & \FSM0|cu_decoder|Decoder3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|Selector2~0_combout\,
	datab => \ALU0|twc|Add0~6_combout\,
	datac => \SrcB[4]~16_combout\,
	datad => \FSM0|cu_decoder|Decoder3~0_combout\,
	combout => \ALU0|twc|Add0~41_combout\);

-- Location: LCCOMB_X56_Y42_N16
\SrcA[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcA[4]~11_combout\ = (!\FSM0|cu_decoder|Mux4~0_combout\ & ((\FSM0|cu_decoder|Mux2~0_combout\ & ((WriteData(4)))) # (!\FSM0|cu_decoder|Mux2~0_combout\ & (PC(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => WriteData(4),
	datac => \FSM0|cu_decoder|Mux4~0_combout\,
	datad => \FSM0|cu_decoder|Mux2~0_combout\,
	combout => \SrcA[4]~11_combout\);

-- Location: LCCOMB_X57_Y44_N6
\ALU0|twc|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~42_combout\ = (\FSM0|aludecod|Selector2~0_combout\ & (\ALU0|twc|Add0~4_combout\)) # (!\FSM0|aludecod|Selector2~0_combout\ & (((\FSM0|cu_decoder|Decoder3~0_combout\ & \SrcB[3]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|twc|Add0~4_combout\,
	datab => \FSM0|cu_decoder|Decoder3~0_combout\,
	datac => \SrcB[3]~17_combout\,
	datad => \FSM0|aludecod|Selector2~0_combout\,
	combout => \ALU0|twc|Add0~42_combout\);

-- Location: FF_X61_Y43_N17
\PC[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[3]~25_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \FSM0|pc_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(3));

-- Location: LCCOMB_X61_Y46_N24
\SrcA[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcA[3]~12_combout\ = (!\FSM0|cu_decoder|Mux4~0_combout\ & ((\FSM0|cu_decoder|Mux2~0_combout\ & ((WriteData(3)))) # (!\FSM0|cu_decoder|Mux2~0_combout\ & (PC(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cu_decoder|Mux4~0_combout\,
	datab => PC(3),
	datac => \FSM0|cu_decoder|Mux2~0_combout\,
	datad => WriteData(3),
	combout => \SrcA[3]~12_combout\);

-- Location: FF_X61_Y43_N3
\PC[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[2]~27_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \FSM0|pc_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(2));

-- Location: LCCOMB_X61_Y46_N18
\SrcA[2]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcA[2]~13_combout\ = (!\FSM0|cu_decoder|Mux4~0_combout\ & ((\FSM0|cu_decoder|Mux2~0_combout\ & (WriteData(2))) # (!\FSM0|cu_decoder|Mux2~0_combout\ & ((PC(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cu_decoder|Mux4~0_combout\,
	datab => WriteData(2),
	datac => PC(2),
	datad => \FSM0|cu_decoder|Mux2~0_combout\,
	combout => \SrcA[2]~13_combout\);

-- Location: LCCOMB_X59_Y44_N0
\ALU0|twc|Add0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~43_combout\ = (\FSM0|aludecod|Selector2~0_combout\ & (\ALU0|twc|Add0~2_combout\)) # (!\FSM0|aludecod|Selector2~0_combout\ & (((\SrcB[2]~18_combout\ & \FSM0|cu_decoder|Decoder3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|Selector2~0_combout\,
	datab => \ALU0|twc|Add0~2_combout\,
	datac => \SrcB[2]~18_combout\,
	datad => \FSM0|cu_decoder|Decoder3~0_combout\,
	combout => \ALU0|twc|Add0~43_combout\);

-- Location: LCCOMB_X56_Y44_N4
\ALU0|Sum[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|Sum[2]~4_combout\ = ((\SrcA[2]~13_combout\ $ (\ALU0|twc|Add0~43_combout\ $ (!\ALU0|Sum[1]~3\)))) # (GND)
-- \ALU0|Sum[2]~5\ = CARRY((\SrcA[2]~13_combout\ & ((\ALU0|twc|Add0~43_combout\) # (!\ALU0|Sum[1]~3\))) # (!\SrcA[2]~13_combout\ & (\ALU0|twc|Add0~43_combout\ & !\ALU0|Sum[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA[2]~13_combout\,
	datab => \ALU0|twc|Add0~43_combout\,
	datad => VCC,
	cin => \ALU0|Sum[1]~3\,
	combout => \ALU0|Sum[2]~4_combout\,
	cout => \ALU0|Sum[2]~5\);

-- Location: LCCOMB_X56_Y44_N6
\ALU0|Sum[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|Sum[3]~6_combout\ = (\ALU0|twc|Add0~42_combout\ & ((\SrcA[3]~12_combout\ & (\ALU0|Sum[2]~5\ & VCC)) # (!\SrcA[3]~12_combout\ & (!\ALU0|Sum[2]~5\)))) # (!\ALU0|twc|Add0~42_combout\ & ((\SrcA[3]~12_combout\ & (!\ALU0|Sum[2]~5\)) # 
-- (!\SrcA[3]~12_combout\ & ((\ALU0|Sum[2]~5\) # (GND)))))
-- \ALU0|Sum[3]~7\ = CARRY((\ALU0|twc|Add0~42_combout\ & (!\SrcA[3]~12_combout\ & !\ALU0|Sum[2]~5\)) # (!\ALU0|twc|Add0~42_combout\ & ((!\ALU0|Sum[2]~5\) # (!\SrcA[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|twc|Add0~42_combout\,
	datab => \SrcA[3]~12_combout\,
	datad => VCC,
	cin => \ALU0|Sum[2]~5\,
	combout => \ALU0|Sum[3]~6_combout\,
	cout => \ALU0|Sum[3]~7\);

-- Location: LCCOMB_X56_Y44_N8
\ALU0|Sum[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|Sum[4]~8_combout\ = ((\ALU0|twc|Add0~41_combout\ $ (\SrcA[4]~11_combout\ $ (!\ALU0|Sum[3]~7\)))) # (GND)
-- \ALU0|Sum[4]~9\ = CARRY((\ALU0|twc|Add0~41_combout\ & ((\SrcA[4]~11_combout\) # (!\ALU0|Sum[3]~7\))) # (!\ALU0|twc|Add0~41_combout\ & (\SrcA[4]~11_combout\ & !\ALU0|Sum[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|twc|Add0~41_combout\,
	datab => \SrcA[4]~11_combout\,
	datad => VCC,
	cin => \ALU0|Sum[3]~7\,
	combout => \ALU0|Sum[4]~8_combout\,
	cout => \ALU0|Sum[4]~9\);

-- Location: LCCOMB_X56_Y44_N10
\ALU0|Sum[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|Sum[5]~10_combout\ = (\SrcA[5]~10_combout\ & ((\ALU0|twc|Add0~40_combout\ & (\ALU0|Sum[4]~9\ & VCC)) # (!\ALU0|twc|Add0~40_combout\ & (!\ALU0|Sum[4]~9\)))) # (!\SrcA[5]~10_combout\ & ((\ALU0|twc|Add0~40_combout\ & (!\ALU0|Sum[4]~9\)) # 
-- (!\ALU0|twc|Add0~40_combout\ & ((\ALU0|Sum[4]~9\) # (GND)))))
-- \ALU0|Sum[5]~11\ = CARRY((\SrcA[5]~10_combout\ & (!\ALU0|twc|Add0~40_combout\ & !\ALU0|Sum[4]~9\)) # (!\SrcA[5]~10_combout\ & ((!\ALU0|Sum[4]~9\) # (!\ALU0|twc|Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA[5]~10_combout\,
	datab => \ALU0|twc|Add0~40_combout\,
	datad => VCC,
	cin => \ALU0|Sum[4]~9\,
	combout => \ALU0|Sum[5]~10_combout\,
	cout => \ALU0|Sum[5]~11\);

-- Location: LCCOMB_X56_Y44_N12
\ALU0|Sum[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|Sum[6]~12_combout\ = ((\SrcA[6]~9_combout\ $ (\ALU0|twc|Add0~39_combout\ $ (!\ALU0|Sum[5]~11\)))) # (GND)
-- \ALU0|Sum[6]~13\ = CARRY((\SrcA[6]~9_combout\ & ((\ALU0|twc|Add0~39_combout\) # (!\ALU0|Sum[5]~11\))) # (!\SrcA[6]~9_combout\ & (\ALU0|twc|Add0~39_combout\ & !\ALU0|Sum[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA[6]~9_combout\,
	datab => \ALU0|twc|Add0~39_combout\,
	datad => VCC,
	cin => \ALU0|Sum[5]~11\,
	combout => \ALU0|Sum[6]~12_combout\,
	cout => \ALU0|Sum[6]~13\);

-- Location: LCCOMB_X56_Y44_N14
\ALU0|Sum[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|Sum[7]~14_combout\ = (\ALU0|twc|Add0~38_combout\ & ((\SrcA[7]~8_combout\ & (\ALU0|Sum[6]~13\ & VCC)) # (!\SrcA[7]~8_combout\ & (!\ALU0|Sum[6]~13\)))) # (!\ALU0|twc|Add0~38_combout\ & ((\SrcA[7]~8_combout\ & (!\ALU0|Sum[6]~13\)) # 
-- (!\SrcA[7]~8_combout\ & ((\ALU0|Sum[6]~13\) # (GND)))))
-- \ALU0|Sum[7]~15\ = CARRY((\ALU0|twc|Add0~38_combout\ & (!\SrcA[7]~8_combout\ & !\ALU0|Sum[6]~13\)) # (!\ALU0|twc|Add0~38_combout\ & ((!\ALU0|Sum[6]~13\) # (!\SrcA[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|twc|Add0~38_combout\,
	datab => \SrcA[7]~8_combout\,
	datad => VCC,
	cin => \ALU0|Sum[6]~13\,
	combout => \ALU0|Sum[7]~14_combout\,
	cout => \ALU0|Sum[7]~15\);

-- Location: LCCOMB_X56_Y44_N16
\ALU0|Sum[8]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|Sum[8]~16_combout\ = ((\SrcA[8]~7_combout\ $ (\ALU0|twc|Add0~37_combout\ $ (!\ALU0|Sum[7]~15\)))) # (GND)
-- \ALU0|Sum[8]~17\ = CARRY((\SrcA[8]~7_combout\ & ((\ALU0|twc|Add0~37_combout\) # (!\ALU0|Sum[7]~15\))) # (!\SrcA[8]~7_combout\ & (\ALU0|twc|Add0~37_combout\ & !\ALU0|Sum[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA[8]~7_combout\,
	datab => \ALU0|twc|Add0~37_combout\,
	datad => VCC,
	cin => \ALU0|Sum[7]~15\,
	combout => \ALU0|Sum[8]~16_combout\,
	cout => \ALU0|Sum[8]~17\);

-- Location: LCCOMB_X56_Y44_N18
\ALU0|Sum[9]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|Sum[9]~18_combout\ = (\ALU0|twc|Add0~36_combout\ & ((\SrcA[9]~6_combout\ & (\ALU0|Sum[8]~17\ & VCC)) # (!\SrcA[9]~6_combout\ & (!\ALU0|Sum[8]~17\)))) # (!\ALU0|twc|Add0~36_combout\ & ((\SrcA[9]~6_combout\ & (!\ALU0|Sum[8]~17\)) # 
-- (!\SrcA[9]~6_combout\ & ((\ALU0|Sum[8]~17\) # (GND)))))
-- \ALU0|Sum[9]~19\ = CARRY((\ALU0|twc|Add0~36_combout\ & (!\SrcA[9]~6_combout\ & !\ALU0|Sum[8]~17\)) # (!\ALU0|twc|Add0~36_combout\ & ((!\ALU0|Sum[8]~17\) # (!\SrcA[9]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|twc|Add0~36_combout\,
	datab => \SrcA[9]~6_combout\,
	datad => VCC,
	cin => \ALU0|Sum[8]~17\,
	combout => \ALU0|Sum[9]~18_combout\,
	cout => \ALU0|Sum[9]~19\);

-- Location: LCCOMB_X56_Y44_N20
\ALU0|Sum[10]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|Sum[10]~20_combout\ = ((\ALU0|twc|Add0~35_combout\ $ (\SrcA[10]~5_combout\ $ (!\ALU0|Sum[9]~19\)))) # (GND)
-- \ALU0|Sum[10]~21\ = CARRY((\ALU0|twc|Add0~35_combout\ & ((\SrcA[10]~5_combout\) # (!\ALU0|Sum[9]~19\))) # (!\ALU0|twc|Add0~35_combout\ & (\SrcA[10]~5_combout\ & !\ALU0|Sum[9]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|twc|Add0~35_combout\,
	datab => \SrcA[10]~5_combout\,
	datad => VCC,
	cin => \ALU0|Sum[9]~19\,
	combout => \ALU0|Sum[10]~20_combout\,
	cout => \ALU0|Sum[10]~21\);

-- Location: LCCOMB_X57_Y44_N18
\ALU0|m2|m1|m3|out[11]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[11]~32_combout\ = (\SrcA[11]~4_combout\ & ((\FSM0|aludecod|Selector2~0_combout\) # ((\SrcB[11]~4_combout\ & \FSM0|cu_decoder|Decoder3~0_combout\)))) # (!\SrcA[11]~4_combout\ & (\SrcB[11]~4_combout\ & 
-- (\FSM0|cu_decoder|Decoder3~0_combout\ & \FSM0|aludecod|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[11]~4_combout\,
	datab => \SrcA[11]~4_combout\,
	datac => \FSM0|cu_decoder|Decoder3~0_combout\,
	datad => \FSM0|aludecod|Selector2~0_combout\,
	combout => \ALU0|m2|m1|m3|out[11]~32_combout\);

-- Location: LCCOMB_X54_Y41_N12
\ALU0|m2|m3|out~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m3|out~9_combout\ = (!\FSM0|aludecod|Selector0~0_combout\ & ((\FSM0|aludecod|Selector1~0_combout\ & ((\ALU0|m2|m1|m3|out[11]~32_combout\))) # (!\FSM0|aludecod|Selector1~0_combout\ & (\ALU0|Sum[11]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|Selector0~0_combout\,
	datab => \ALU0|Sum[11]~22_combout\,
	datac => \FSM0|aludecod|Selector1~0_combout\,
	datad => \ALU0|m2|m1|m3|out[11]~32_combout\,
	combout => \ALU0|m2|m3|out~9_combout\);

-- Location: FF_X54_Y41_N13
\ALUOut[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \ALU0|m2|m3|out~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ALUOut(11));

-- Location: LCCOMB_X54_Y41_N22
\Result[11]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[11]~8_combout\ = (\FSM0|cu_decoder|Decoder2~0_combout\ & ((\Memory0|altsyncram_component|auto_generated|q_a\(11)))) # (!\FSM0|cu_decoder|Decoder2~0_combout\ & (ALUOut(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ALUOut(11),
	datab => \Memory0|altsyncram_component|auto_generated|q_a\(11),
	datad => \FSM0|cu_decoder|Decoder2~0_combout\,
	combout => \Result[11]~8_combout\);

-- Location: LCCOMB_X54_Y41_N4
\ALU0|m2|m1|m3|out[11]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[11]~45_combout\ = (Instr(14) & ((\FSM0|aludecod|WideOr1~0_combout\ & (\ALU0|m2|m1|m3|out[11]~32_combout\)) # (!\FSM0|aludecod|WideOr1~0_combout\ & ((\ALU0|Sum[11]~22_combout\))))) # (!Instr(14) & (((\ALU0|Sum[11]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(14),
	datab => \ALU0|m2|m1|m3|out[11]~32_combout\,
	datac => \FSM0|aludecod|WideOr1~0_combout\,
	datad => \ALU0|Sum[11]~22_combout\,
	combout => \ALU0|m2|m1|m3|out[11]~45_combout\);

-- Location: LCCOMB_X54_Y41_N24
\Result[11]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[11]~9_combout\ = (\FSM0|aludecod|Decoder0~1_combout\ & (((\ALU0|m2|m1|m3|out[11]~45_combout\ & !\FSM0|aludecod|Selector0~0_combout\)))) # (!\FSM0|aludecod|Decoder0~1_combout\ & (\Result[11]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[11]~8_combout\,
	datab => \ALU0|m2|m1|m3|out[11]~45_combout\,
	datac => \FSM0|aludecod|Decoder0~1_combout\,
	datad => \FSM0|aludecod|Selector0~0_combout\,
	combout => \Result[11]~9_combout\);

-- Location: FF_X58_Y41_N15
\RegBank0|register_array[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[11]~9_combout\,
	sload => VCC,
	ena => \RegBank0|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegBank0|register_array[4][11]~q\);

-- Location: LCCOMB_X58_Y41_N14
\RegBank0|RD1[11]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[11]~50_combout\ = (Instr(6) & (Instr(5))) # (!Instr(6) & ((Instr(5) & ((\RegBank0|register_array[5][11]~q\))) # (!Instr(5) & (\RegBank0|register_array[4][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(6),
	datab => Instr(5),
	datac => \RegBank0|register_array[4][11]~q\,
	datad => \RegBank0|register_array[5][11]~q\,
	combout => \RegBank0|RD1[11]~50_combout\);

-- Location: LCCOMB_X59_Y41_N2
\RegBank0|RD1[11]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[11]~51_combout\ = (\RegBank0|RD1[11]~50_combout\ & (((\RegBank0|register_array[7][11]~q\)) # (!Instr(6)))) # (!\RegBank0|RD1[11]~50_combout\ & (Instr(6) & ((\RegBank0|register_array[6][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[11]~50_combout\,
	datab => Instr(6),
	datac => \RegBank0|register_array[7][11]~q\,
	datad => \RegBank0|register_array[6][11]~q\,
	combout => \RegBank0|RD1[11]~51_combout\);

-- Location: LCCOMB_X60_Y41_N28
\RegBank0|RD1[11]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[11]~52_combout\ = (\RegBank0|RD1[2]~35_combout\ & ((\RegBank0|RD1[2]~34_combout\) # ((\RegBank0|register_array[2][11]~q\)))) # (!\RegBank0|RD1[2]~35_combout\ & (!\RegBank0|RD1[2]~34_combout\ & (\RegBank0|register_array[1][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[2]~35_combout\,
	datab => \RegBank0|RD1[2]~34_combout\,
	datac => \RegBank0|register_array[1][11]~q\,
	datad => \RegBank0|register_array[2][11]~q\,
	combout => \RegBank0|RD1[11]~52_combout\);

-- Location: LCCOMB_X59_Y41_N6
\RegBank0|RD1[11]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[11]~53_combout\ = (\RegBank0|RD1[2]~34_combout\ & ((\RegBank0|RD1[11]~52_combout\ & ((\RegBank0|register_array[3][11]~q\))) # (!\RegBank0|RD1[11]~52_combout\ & (\RegBank0|RD1[11]~51_combout\)))) # (!\RegBank0|RD1[2]~34_combout\ & 
-- (((\RegBank0|RD1[11]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[2]~34_combout\,
	datab => \RegBank0|RD1[11]~51_combout\,
	datac => \RegBank0|register_array[3][11]~q\,
	datad => \RegBank0|RD1[11]~52_combout\,
	combout => \RegBank0|RD1[11]~53_combout\);

-- Location: LCCOMB_X57_Y42_N30
\RegBank0|RD1[11]~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[11]~102_combout\ = (\RegBank0|RD1[11]~53_combout\ & ((Instr(7)) # ((Instr(5)) # (Instr(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(7),
	datab => Instr(5),
	datac => \RegBank0|RD1[11]~53_combout\,
	datad => Instr(6),
	combout => \RegBank0|RD1[11]~102_combout\);

-- Location: FF_X57_Y42_N31
\WriteData[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD1[11]~102_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WriteData(11));

-- Location: FF_X55_Y41_N29
\Instr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Memory0|altsyncram_component|auto_generated|q_a\(11),
	sload => VCC,
	ena => \FSM0|aludecod|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Instr(11));

-- Location: LCCOMB_X55_Y41_N28
\SrcB[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcB[6]~14_combout\ = (B(6) & ((\FSM0|cu_decoder|Mux1~0_combout\) # ((Instr(11) & \SrcB[2]~12_combout\)))) # (!B(6) & (((Instr(11) & \SrcB[2]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(6),
	datab => \FSM0|cu_decoder|Mux1~0_combout\,
	datac => Instr(11),
	datad => \SrcB[2]~12_combout\,
	combout => \SrcB[6]~14_combout\);

-- Location: LCCOMB_X57_Y44_N30
\ALU0|twc|Add0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~35_combout\ = (\FSM0|aludecod|Selector2~0_combout\ & (\ALU0|twc|Add0~18_combout\)) # (!\FSM0|aludecod|Selector2~0_combout\ & (((\FSM0|cu_decoder|Decoder3~0_combout\ & \SrcB[10]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|twc|Add0~18_combout\,
	datab => \FSM0|aludecod|Selector2~0_combout\,
	datac => \FSM0|cu_decoder|Decoder3~0_combout\,
	datad => \SrcB[10]~7_combout\,
	combout => \ALU0|twc|Add0~35_combout\);

-- Location: LCCOMB_X57_Y44_N28
\ALU0|m2|m1|m3|out[10]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[10]~33_combout\ = (\SrcA[10]~5_combout\ & ((\FSM0|aludecod|Selector2~0_combout\) # ((\FSM0|cu_decoder|Decoder3~0_combout\ & \SrcB[10]~7_combout\)))) # (!\SrcA[10]~5_combout\ & (\FSM0|aludecod|Selector2~0_combout\ & 
-- (\FSM0|cu_decoder|Decoder3~0_combout\ & \SrcB[10]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA[10]~5_combout\,
	datab => \FSM0|aludecod|Selector2~0_combout\,
	datac => \FSM0|cu_decoder|Decoder3~0_combout\,
	datad => \SrcB[10]~7_combout\,
	combout => \ALU0|m2|m1|m3|out[10]~33_combout\);

-- Location: LCCOMB_X55_Y44_N12
\ALU0|m2|m3|out~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m3|out~10_combout\ = (!\FSM0|aludecod|Selector0~0_combout\ & ((\FSM0|aludecod|Selector1~0_combout\ & ((\ALU0|m2|m1|m3|out[10]~33_combout\))) # (!\FSM0|aludecod|Selector1~0_combout\ & (\ALU0|Sum[10]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|Selector1~0_combout\,
	datab => \ALU0|Sum[10]~20_combout\,
	datac => \ALU0|m2|m1|m3|out[10]~33_combout\,
	datad => \FSM0|aludecod|Selector0~0_combout\,
	combout => \ALU0|m2|m3|out~10_combout\);

-- Location: FF_X55_Y44_N13
\ALUOut[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \ALU0|m2|m3|out~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ALUOut(10));

-- Location: LCCOMB_X55_Y44_N30
\Result[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[10]~10_combout\ = (\FSM0|cu_decoder|Decoder2~0_combout\ & ((\Memory0|altsyncram_component|auto_generated|q_a\(10)))) # (!\FSM0|cu_decoder|Decoder2~0_combout\ & (ALUOut(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ALUOut(10),
	datac => \Memory0|altsyncram_component|auto_generated|q_a\(10),
	datad => \FSM0|cu_decoder|Decoder2~0_combout\,
	combout => \Result[10]~10_combout\);

-- Location: LCCOMB_X55_Y44_N16
\ALU0|m2|m1|m3|out[10]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[10]~46_combout\ = (Instr(14) & ((\FSM0|aludecod|WideOr1~0_combout\ & (\ALU0|m2|m1|m3|out[10]~33_combout\)) # (!\FSM0|aludecod|WideOr1~0_combout\ & ((\ALU0|Sum[10]~20_combout\))))) # (!Instr(14) & (((\ALU0|Sum[10]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|m2|m1|m3|out[10]~33_combout\,
	datab => Instr(14),
	datac => \FSM0|aludecod|WideOr1~0_combout\,
	datad => \ALU0|Sum[10]~20_combout\,
	combout => \ALU0|m2|m1|m3|out[10]~46_combout\);

-- Location: LCCOMB_X58_Y40_N14
\Result[10]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[10]~11_combout\ = (\FSM0|aludecod|Decoder0~1_combout\ & (!\FSM0|aludecod|Selector0~0_combout\ & ((\ALU0|m2|m1|m3|out[10]~46_combout\)))) # (!\FSM0|aludecod|Decoder0~1_combout\ & (((\Result[10]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|Selector0~0_combout\,
	datab => \Result[10]~10_combout\,
	datac => \ALU0|m2|m1|m3|out[10]~46_combout\,
	datad => \FSM0|aludecod|Decoder0~1_combout\,
	combout => \Result[10]~11_combout\);

-- Location: LCCOMB_X56_Y42_N0
\Adr[10]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Adr[10]~9_combout\ = (\FSM0|cu_decoder|Mux0~0_combout\ & (\Result[10]~11_combout\)) # (!\FSM0|cu_decoder|Mux0~0_combout\ & ((PC(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[10]~11_combout\,
	datab => PC(10),
	datac => \FSM0|cu_decoder|Mux0~0_combout\,
	combout => \Adr[10]~9_combout\);

-- Location: LCCOMB_X57_Y44_N14
\ALU0|m2|m1|m3|out[9]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[9]~34_combout\ = (\FSM0|aludecod|Selector2~0_combout\ & ((\SrcA[9]~6_combout\) # ((\FSM0|cu_decoder|Decoder3~0_combout\ & \SrcB[9]~9_combout\)))) # (!\FSM0|aludecod|Selector2~0_combout\ & (\SrcA[9]~6_combout\ & 
-- (\FSM0|cu_decoder|Decoder3~0_combout\ & \SrcB[9]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|Selector2~0_combout\,
	datab => \SrcA[9]~6_combout\,
	datac => \FSM0|cu_decoder|Decoder3~0_combout\,
	datad => \SrcB[9]~9_combout\,
	combout => \ALU0|m2|m1|m3|out[9]~34_combout\);

-- Location: LCCOMB_X55_Y44_N0
\ALU0|m2|m3|out~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m3|out~11_combout\ = (!\FSM0|aludecod|Selector0~0_combout\ & ((\FSM0|aludecod|Selector1~0_combout\ & ((\ALU0|m2|m1|m3|out[9]~34_combout\))) # (!\FSM0|aludecod|Selector1~0_combout\ & (\ALU0|Sum[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Sum[9]~18_combout\,
	datab => \FSM0|aludecod|Selector0~0_combout\,
	datac => \FSM0|aludecod|Selector1~0_combout\,
	datad => \ALU0|m2|m1|m3|out[9]~34_combout\,
	combout => \ALU0|m2|m3|out~11_combout\);

-- Location: FF_X55_Y44_N1
\ALUOut[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \ALU0|m2|m3|out~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ALUOut(9));

-- Location: LCCOMB_X55_Y44_N26
\Result[9]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[9]~12_combout\ = (\FSM0|cu_decoder|Decoder2~0_combout\ & (\Memory0|altsyncram_component|auto_generated|q_a\(9))) # (!\FSM0|cu_decoder|Decoder2~0_combout\ & ((ALUOut(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cu_decoder|Decoder2~0_combout\,
	datab => \Memory0|altsyncram_component|auto_generated|q_a\(9),
	datad => ALUOut(9),
	combout => \Result[9]~12_combout\);

-- Location: LCCOMB_X55_Y44_N18
\ALU0|m2|m1|m3|out[9]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[9]~47_combout\ = (Instr(14) & ((\FSM0|aludecod|WideOr1~0_combout\ & ((\ALU0|m2|m1|m3|out[9]~34_combout\))) # (!\FSM0|aludecod|WideOr1~0_combout\ & (\ALU0|Sum[9]~18_combout\)))) # (!Instr(14) & (\ALU0|Sum[9]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Sum[9]~18_combout\,
	datab => Instr(14),
	datac => \FSM0|aludecod|WideOr1~0_combout\,
	datad => \ALU0|m2|m1|m3|out[9]~34_combout\,
	combout => \ALU0|m2|m1|m3|out[9]~47_combout\);

-- Location: LCCOMB_X55_Y44_N8
\Result[9]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[9]~13_combout\ = (\FSM0|aludecod|Decoder0~1_combout\ & (((\ALU0|m2|m1|m3|out[9]~47_combout\ & !\FSM0|aludecod|Selector0~0_combout\)))) # (!\FSM0|aludecod|Decoder0~1_combout\ & (\Result[9]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[9]~12_combout\,
	datab => \ALU0|m2|m1|m3|out[9]~47_combout\,
	datac => \FSM0|aludecod|Decoder0~1_combout\,
	datad => \FSM0|aludecod|Selector0~0_combout\,
	combout => \Result[9]~13_combout\);

-- Location: FF_X57_Y42_N23
\PC[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[9]~13_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \FSM0|pc_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(9));

-- Location: LCCOMB_X57_Y42_N10
\Adr[9]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Adr[9]~8_combout\ = (\FSM0|cu_decoder|Mux0~0_combout\ & ((\Result[9]~13_combout\))) # (!\FSM0|cu_decoder|Mux0~0_combout\ & (PC(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(9),
	datac => \Result[9]~13_combout\,
	datad => \FSM0|cu_decoder|Mux0~0_combout\,
	combout => \Adr[9]~8_combout\);

-- Location: FF_X59_Y40_N3
\Instr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Memory0|altsyncram_component|auto_generated|q_a\(12),
	sload => VCC,
	ena => \FSM0|aludecod|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Instr(12));

-- Location: LCCOMB_X59_Y40_N4
\SrcB[10]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcB[10]~5_combout\ = (!\FSM0|pc_write~0_combout\ & (Instr(12) & !\FSM0|cu_decoder|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|pc_write~0_combout\,
	datab => Instr(12),
	datac => \FSM0|cu_decoder|Mux1~0_combout\,
	combout => \SrcB[10]~5_combout\);

-- Location: LCCOMB_X60_Y44_N18
\SrcB[8]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcB[8]~10_combout\ = (Instr(5) & (!\FSM0|cu_decoder|Mux4~0_combout\ & (\FSM0|pc_write~0_combout\ & !\FSM0|cu_decoder|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(5),
	datab => \FSM0|cu_decoder|Mux4~0_combout\,
	datac => \FSM0|pc_write~0_combout\,
	datad => \FSM0|cu_decoder|Mux1~0_combout\,
	combout => \SrcB[8]~10_combout\);

-- Location: LCCOMB_X60_Y43_N30
\RegBank0|RD2[8]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[8]~62_combout\ = (Instr(2) & (Instr(3))) # (!Instr(2) & ((Instr(3) & (\RegBank0|register_array[6][8]~q\)) # (!Instr(3) & ((\RegBank0|register_array[4][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(2),
	datab => Instr(3),
	datac => \RegBank0|register_array[6][8]~q\,
	datad => \RegBank0|register_array[4][8]~q\,
	combout => \RegBank0|RD2[8]~62_combout\);

-- Location: LCCOMB_X59_Y42_N26
\RegBank0|RD2[8]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[8]~63_combout\ = (\RegBank0|RD2[8]~62_combout\ & (((\RegBank0|register_array[7][8]~q\)) # (!Instr(2)))) # (!\RegBank0|RD2[8]~62_combout\ & (Instr(2) & (\RegBank0|register_array[5][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[8]~62_combout\,
	datab => Instr(2),
	datac => \RegBank0|register_array[5][8]~q\,
	datad => \RegBank0|register_array[7][8]~q\,
	combout => \RegBank0|RD2[8]~63_combout\);

-- Location: LCCOMB_X58_Y43_N10
\RegBank0|RD2[8]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[8]~64_combout\ = (\RegBank0|RD2[13]~34_combout\ & (((\RegBank0|RD2[8]~63_combout\) # (\RegBank0|RD2[13]~35_combout\)))) # (!\RegBank0|RD2[13]~34_combout\ & (\RegBank0|register_array[1][8]~q\ & ((!\RegBank0|RD2[13]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[1][8]~q\,
	datab => \RegBank0|RD2[13]~34_combout\,
	datac => \RegBank0|RD2[8]~63_combout\,
	datad => \RegBank0|RD2[13]~35_combout\,
	combout => \RegBank0|RD2[8]~64_combout\);

-- Location: LCCOMB_X58_Y43_N12
\RegBank0|RD2[8]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[8]~65_combout\ = (\RegBank0|RD2[8]~64_combout\ & (((\RegBank0|register_array[3][8]~q\) # (!\RegBank0|RD2[13]~35_combout\)))) # (!\RegBank0|RD2[8]~64_combout\ & (\RegBank0|register_array[2][8]~q\ & ((\RegBank0|RD2[13]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[8]~64_combout\,
	datab => \RegBank0|register_array[2][8]~q\,
	datac => \RegBank0|register_array[3][8]~q\,
	datad => \RegBank0|RD2[13]~35_combout\,
	combout => \RegBank0|RD2[8]~65_combout\);

-- Location: LCCOMB_X60_Y44_N4
\RegBank0|RD2[8]~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[8]~105_combout\ = (\RegBank0|RD2[8]~65_combout\ & ((Instr(4)) # ((Instr(3)) # (Instr(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[8]~65_combout\,
	datab => Instr(4),
	datac => Instr(3),
	datad => Instr(2),
	combout => \RegBank0|RD2[8]~105_combout\);

-- Location: FF_X60_Y44_N5
\B[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD2[8]~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(8));

-- Location: LCCOMB_X60_Y44_N30
\SrcB[8]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcB[8]~11_combout\ = (\SrcB[10]~5_combout\) # ((\SrcB[8]~10_combout\) # ((B(8) & \FSM0|cu_decoder|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[10]~5_combout\,
	datab => \SrcB[8]~10_combout\,
	datac => B(8),
	datad => \FSM0|cu_decoder|Mux1~0_combout\,
	combout => \SrcB[8]~11_combout\);

-- Location: LCCOMB_X57_Y44_N16
\ALU0|m2|m1|m3|out[8]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[8]~35_combout\ = (\SrcA[8]~7_combout\ & ((\FSM0|aludecod|Selector2~0_combout\) # ((\FSM0|cu_decoder|Decoder3~0_combout\ & \SrcB[8]~11_combout\)))) # (!\SrcA[8]~7_combout\ & (\FSM0|aludecod|Selector2~0_combout\ & 
-- (\FSM0|cu_decoder|Decoder3~0_combout\ & \SrcB[8]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcA[8]~7_combout\,
	datab => \FSM0|aludecod|Selector2~0_combout\,
	datac => \FSM0|cu_decoder|Decoder3~0_combout\,
	datad => \SrcB[8]~11_combout\,
	combout => \ALU0|m2|m1|m3|out[8]~35_combout\);

-- Location: LCCOMB_X56_Y43_N18
\ALU0|m2|m1|m3|out[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[8]~48_combout\ = (Instr(14) & ((\FSM0|aludecod|WideOr1~0_combout\ & (\ALU0|m2|m1|m3|out[8]~35_combout\)) # (!\FSM0|aludecod|WideOr1~0_combout\ & ((\ALU0|Sum[8]~16_combout\))))) # (!Instr(14) & (((\ALU0|Sum[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(14),
	datab => \ALU0|m2|m1|m3|out[8]~35_combout\,
	datac => \ALU0|Sum[8]~16_combout\,
	datad => \FSM0|aludecod|WideOr1~0_combout\,
	combout => \ALU0|m2|m1|m3|out[8]~48_combout\);

-- Location: LCCOMB_X56_Y43_N10
\ALU0|m2|m3|out~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m3|out~12_combout\ = (!\FSM0|aludecod|Selector0~0_combout\ & ((\FSM0|aludecod|Selector1~0_combout\ & ((\ALU0|m2|m1|m3|out[8]~35_combout\))) # (!\FSM0|aludecod|Selector1~0_combout\ & (\ALU0|Sum[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Sum[8]~16_combout\,
	datab => \ALU0|m2|m1|m3|out[8]~35_combout\,
	datac => \FSM0|aludecod|Selector0~0_combout\,
	datad => \FSM0|aludecod|Selector1~0_combout\,
	combout => \ALU0|m2|m3|out~12_combout\);

-- Location: FF_X56_Y43_N11
\ALUOut[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \ALU0|m2|m3|out~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ALUOut(8));

-- Location: LCCOMB_X55_Y43_N16
\Result[8]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[8]~14_combout\ = (\FSM0|cu_decoder|Decoder2~0_combout\ & (\Memory0|altsyncram_component|auto_generated|q_a\(8))) # (!\FSM0|cu_decoder|Decoder2~0_combout\ & ((ALUOut(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Memory0|altsyncram_component|auto_generated|q_a\(8),
	datac => \FSM0|cu_decoder|Decoder2~0_combout\,
	datad => ALUOut(8),
	combout => \Result[8]~14_combout\);

-- Location: LCCOMB_X55_Y43_N10
\Result[8]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[8]~15_combout\ = (\FSM0|aludecod|Decoder0~1_combout\ & (!\FSM0|aludecod|Selector0~0_combout\ & (\ALU0|m2|m1|m3|out[8]~48_combout\))) # (!\FSM0|aludecod|Decoder0~1_combout\ & (((\Result[8]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|Selector0~0_combout\,
	datab => \ALU0|m2|m1|m3|out[8]~48_combout\,
	datac => \FSM0|aludecod|Decoder0~1_combout\,
	datad => \Result[8]~14_combout\,
	combout => \Result[8]~15_combout\);

-- Location: LCCOMB_X56_Y42_N20
\Adr[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Adr[8]~7_combout\ = (\FSM0|cu_decoder|Mux0~0_combout\ & (\Result[8]~15_combout\)) # (!\FSM0|cu_decoder|Mux0~0_combout\ & ((PC(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[8]~15_combout\,
	datab => \FSM0|cu_decoder|Mux0~0_combout\,
	datad => PC(8),
	combout => \Adr[8]~7_combout\);

-- Location: FF_X59_Y40_N15
\Instr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Memory0|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \FSM0|aludecod|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Instr(2));

-- Location: LCCOMB_X59_Y43_N0
\RegBank0|RD2[13]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[13]~34_combout\ = (Instr(4)) # ((Instr(3) & Instr(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(3),
	datac => Instr(2),
	datad => Instr(4),
	combout => \RegBank0|RD2[13]~34_combout\);

-- Location: LCCOMB_X61_Y43_N14
\RegBank0|RD2[7]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[7]~68_combout\ = (\RegBank0|RD2[13]~34_combout\ & (((\RegBank0|RD2[13]~35_combout\)))) # (!\RegBank0|RD2[13]~34_combout\ & ((\RegBank0|RD2[13]~35_combout\ & ((\RegBank0|register_array[2][7]~q\))) # (!\RegBank0|RD2[13]~35_combout\ & 
-- (\RegBank0|register_array[1][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[13]~34_combout\,
	datab => \RegBank0|register_array[1][7]~q\,
	datac => \RegBank0|register_array[2][7]~q\,
	datad => \RegBank0|RD2[13]~35_combout\,
	combout => \RegBank0|RD2[7]~68_combout\);

-- Location: LCCOMB_X59_Y42_N28
\RegBank0|RD2[7]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[7]~66_combout\ = (Instr(3) & (Instr(2))) # (!Instr(3) & ((Instr(2) & (\RegBank0|register_array[5][7]~q\)) # (!Instr(2) & ((\RegBank0|register_array[4][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(3),
	datab => Instr(2),
	datac => \RegBank0|register_array[5][7]~q\,
	datad => \RegBank0|register_array[4][7]~q\,
	combout => \RegBank0|RD2[7]~66_combout\);

-- Location: LCCOMB_X62_Y42_N24
\RegBank0|RD2[7]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[7]~67_combout\ = (Instr(3) & ((\RegBank0|RD2[7]~66_combout\ & ((\RegBank0|register_array[7][7]~q\))) # (!\RegBank0|RD2[7]~66_combout\ & (\RegBank0|register_array[6][7]~q\)))) # (!Instr(3) & (\RegBank0|RD2[7]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(3),
	datab => \RegBank0|RD2[7]~66_combout\,
	datac => \RegBank0|register_array[6][7]~q\,
	datad => \RegBank0|register_array[7][7]~q\,
	combout => \RegBank0|RD2[7]~67_combout\);

-- Location: LCCOMB_X61_Y42_N20
\RegBank0|RD2[7]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[7]~69_combout\ = (\RegBank0|RD2[7]~68_combout\ & ((\RegBank0|register_array[3][7]~q\) # ((!\RegBank0|RD2[13]~34_combout\)))) # (!\RegBank0|RD2[7]~68_combout\ & (((\RegBank0|RD2[13]~34_combout\ & \RegBank0|RD2[7]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[7]~68_combout\,
	datab => \RegBank0|register_array[3][7]~q\,
	datac => \RegBank0|RD2[13]~34_combout\,
	datad => \RegBank0|RD2[7]~67_combout\,
	combout => \RegBank0|RD2[7]~69_combout\);

-- Location: LCCOMB_X59_Y40_N30
\RegBank0|RD2[7]~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[7]~106_combout\ = (\RegBank0|RD2[7]~69_combout\ & ((Instr(2)) # ((Instr(3)) # (Instr(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[7]~69_combout\,
	datab => Instr(2),
	datac => Instr(3),
	datad => Instr(4),
	combout => \RegBank0|RD2[7]~106_combout\);

-- Location: FF_X59_Y40_N31
\B[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD2[7]~106_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(7));

-- Location: LCCOMB_X59_Y40_N2
\SrcB[7]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcB[7]~13_combout\ = (B(7) & ((\FSM0|cu_decoder|Mux1~0_combout\) # ((\SrcB[2]~12_combout\ & Instr(12))))) # (!B(7) & (\SrcB[2]~12_combout\ & (Instr(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => B(7),
	datab => \SrcB[2]~12_combout\,
	datac => Instr(12),
	datad => \FSM0|cu_decoder|Mux1~0_combout\,
	combout => \SrcB[7]~13_combout\);

-- Location: LCCOMB_X57_Y44_N2
\ALU0|m2|m1|m3|out[7]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[7]~36_combout\ = (\SrcA[7]~8_combout\ & ((\FSM0|aludecod|Selector2~0_combout\) # ((\SrcB[7]~13_combout\ & \FSM0|cu_decoder|Decoder3~0_combout\)))) # (!\SrcA[7]~8_combout\ & (\SrcB[7]~13_combout\ & (\FSM0|cu_decoder|Decoder3~0_combout\ & 
-- \FSM0|aludecod|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[7]~13_combout\,
	datab => \FSM0|cu_decoder|Decoder3~0_combout\,
	datac => \SrcA[7]~8_combout\,
	datad => \FSM0|aludecod|Selector2~0_combout\,
	combout => \ALU0|m2|m1|m3|out[7]~36_combout\);

-- Location: LCCOMB_X54_Y41_N6
\ALU0|m2|m1|m3|out[7]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[7]~49_combout\ = (Instr(14) & ((\FSM0|aludecod|WideOr1~0_combout\ & (\ALU0|m2|m1|m3|out[7]~36_combout\)) # (!\FSM0|aludecod|WideOr1~0_combout\ & ((\ALU0|Sum[7]~14_combout\))))) # (!Instr(14) & (((\ALU0|Sum[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|m2|m1|m3|out[7]~36_combout\,
	datab => Instr(14),
	datac => \FSM0|aludecod|WideOr1~0_combout\,
	datad => \ALU0|Sum[7]~14_combout\,
	combout => \ALU0|m2|m1|m3|out[7]~49_combout\);

-- Location: LCCOMB_X54_Y41_N8
\ALU0|m2|m3|out~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m3|out~13_combout\ = (!\FSM0|aludecod|Selector0~0_combout\ & ((\FSM0|aludecod|Selector1~0_combout\ & ((\ALU0|m2|m1|m3|out[7]~36_combout\))) # (!\FSM0|aludecod|Selector1~0_combout\ & (\ALU0|Sum[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Sum[7]~14_combout\,
	datab => \FSM0|aludecod|Selector1~0_combout\,
	datac => \FSM0|aludecod|Selector0~0_combout\,
	datad => \ALU0|m2|m1|m3|out[7]~36_combout\,
	combout => \ALU0|m2|m3|out~13_combout\);

-- Location: FF_X54_Y41_N9
\ALUOut[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \ALU0|m2|m3|out~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ALUOut(7));

-- Location: LCCOMB_X54_Y41_N10
\Result[7]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[7]~16_combout\ = (\FSM0|cu_decoder|Decoder2~0_combout\ & (\Memory0|altsyncram_component|auto_generated|q_a\(7))) # (!\FSM0|cu_decoder|Decoder2~0_combout\ & ((ALUOut(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memory0|altsyncram_component|auto_generated|q_a\(7),
	datac => ALUOut(7),
	datad => \FSM0|cu_decoder|Decoder2~0_combout\,
	combout => \Result[7]~16_combout\);

-- Location: LCCOMB_X54_Y41_N2
\Result[7]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[7]~17_combout\ = (\FSM0|aludecod|Decoder0~1_combout\ & (\ALU0|m2|m1|m3|out[7]~49_combout\ & (!\FSM0|aludecod|Selector0~0_combout\))) # (!\FSM0|aludecod|Decoder0~1_combout\ & (((\Result[7]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|m2|m1|m3|out[7]~49_combout\,
	datab => \FSM0|aludecod|Selector0~0_combout\,
	datac => \FSM0|aludecod|Decoder0~1_combout\,
	datad => \Result[7]~16_combout\,
	combout => \Result[7]~17_combout\);

-- Location: LCCOMB_X61_Y43_N6
\Adr[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Adr[7]~6_combout\ = (\FSM0|cu_decoder|Mux0~0_combout\ & (\Result[7]~17_combout\)) # (!\FSM0|cu_decoder|Mux0~0_combout\ & ((PC(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM0|cu_decoder|Mux0~0_combout\,
	datac => \Result[7]~17_combout\,
	datad => PC(7),
	combout => \Adr[7]~6_combout\);

-- Location: FF_X55_Y42_N1
\Instr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Memory0|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \FSM0|aludecod|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Instr(5));

-- Location: LCCOMB_X60_Y42_N14
\RegBank0|RD1[6]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[6]~70_combout\ = (Instr(5) & (Instr(6))) # (!Instr(5) & ((Instr(6) & ((\RegBank0|register_array[6][6]~q\))) # (!Instr(6) & (\RegBank0|register_array[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(5),
	datab => Instr(6),
	datac => \RegBank0|register_array[4][6]~q\,
	datad => \RegBank0|register_array[6][6]~q\,
	combout => \RegBank0|RD1[6]~70_combout\);

-- Location: LCCOMB_X61_Y42_N14
\RegBank0|RD1[6]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[6]~71_combout\ = (Instr(5) & ((\RegBank0|RD1[6]~70_combout\ & ((\RegBank0|register_array[7][6]~q\))) # (!\RegBank0|RD1[6]~70_combout\ & (\RegBank0|register_array[5][6]~q\)))) # (!Instr(5) & (((\RegBank0|RD1[6]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[5][6]~q\,
	datab => Instr(5),
	datac => \RegBank0|register_array[7][6]~q\,
	datad => \RegBank0|RD1[6]~70_combout\,
	combout => \RegBank0|RD1[6]~71_combout\);

-- Location: LCCOMB_X60_Y41_N12
\RegBank0|RD1[6]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[6]~72_combout\ = (\RegBank0|RD1[2]~34_combout\ & ((\RegBank0|RD1[6]~71_combout\) # ((\RegBank0|RD1[2]~35_combout\)))) # (!\RegBank0|RD1[2]~34_combout\ & (((\RegBank0|register_array[1][6]~q\ & !\RegBank0|RD1[2]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[2]~34_combout\,
	datab => \RegBank0|RD1[6]~71_combout\,
	datac => \RegBank0|register_array[1][6]~q\,
	datad => \RegBank0|RD1[2]~35_combout\,
	combout => \RegBank0|RD1[6]~72_combout\);

-- Location: LCCOMB_X60_Y41_N2
\RegBank0|RD1[6]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[6]~73_combout\ = (\RegBank0|RD1[6]~72_combout\ & ((\RegBank0|register_array[3][6]~q\) # ((!\RegBank0|RD1[2]~35_combout\)))) # (!\RegBank0|RD1[6]~72_combout\ & (((\RegBank0|register_array[2][6]~q\ & \RegBank0|RD1[2]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[3][6]~q\,
	datab => \RegBank0|RD1[6]~72_combout\,
	datac => \RegBank0|register_array[2][6]~q\,
	datad => \RegBank0|RD1[2]~35_combout\,
	combout => \RegBank0|RD1[6]~73_combout\);

-- Location: LCCOMB_X57_Y41_N12
\RegBank0|RD1[6]~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[6]~107_combout\ = (\RegBank0|RD1[6]~73_combout\ & ((Instr(6)) # ((Instr(7)) # (Instr(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(6),
	datab => Instr(7),
	datac => Instr(5),
	datad => \RegBank0|RD1[6]~73_combout\,
	combout => \RegBank0|RD1[6]~107_combout\);

-- Location: FF_X57_Y41_N13
\WriteData[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD1[6]~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WriteData(6));

-- Location: LCCOMB_X59_Y44_N2
\SrcA[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcA[6]~9_combout\ = (!\FSM0|cu_decoder|Mux4~0_combout\ & ((\FSM0|cu_decoder|Mux2~0_combout\ & ((WriteData(6)))) # (!\FSM0|cu_decoder|Mux2~0_combout\ & (PC(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(6),
	datab => \FSM0|cu_decoder|Mux2~0_combout\,
	datac => WriteData(6),
	datad => \FSM0|cu_decoder|Mux4~0_combout\,
	combout => \SrcA[6]~9_combout\);

-- Location: LCCOMB_X59_Y44_N4
\ALU0|m2|m1|m3|out[6]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[6]~37_combout\ = (\FSM0|aludecod|Selector2~0_combout\ & ((\SrcA[6]~9_combout\) # ((\FSM0|cu_decoder|Decoder3~0_combout\ & \SrcB[6]~14_combout\)))) # (!\FSM0|aludecod|Selector2~0_combout\ & (\FSM0|cu_decoder|Decoder3~0_combout\ & 
-- (\SrcB[6]~14_combout\ & \SrcA[6]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|Selector2~0_combout\,
	datab => \FSM0|cu_decoder|Decoder3~0_combout\,
	datac => \SrcB[6]~14_combout\,
	datad => \SrcA[6]~9_combout\,
	combout => \ALU0|m2|m1|m3|out[6]~37_combout\);

-- Location: LCCOMB_X56_Y43_N20
\ALU0|m2|m1|m3|out[6]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[6]~50_combout\ = (\FSM0|aludecod|WideOr1~0_combout\ & ((Instr(14) & ((\ALU0|m2|m1|m3|out[6]~37_combout\))) # (!Instr(14) & (\ALU0|Sum[6]~12_combout\)))) # (!\FSM0|aludecod|WideOr1~0_combout\ & (\ALU0|Sum[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|WideOr1~0_combout\,
	datab => \ALU0|Sum[6]~12_combout\,
	datac => \ALU0|m2|m1|m3|out[6]~37_combout\,
	datad => Instr(14),
	combout => \ALU0|m2|m1|m3|out[6]~50_combout\);

-- Location: LCCOMB_X56_Y43_N28
\ALU0|m2|m3|out~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m3|out~14_combout\ = (!\FSM0|aludecod|Selector0~0_combout\ & ((\FSM0|aludecod|Selector1~0_combout\ & ((\ALU0|m2|m1|m3|out[6]~37_combout\))) # (!\FSM0|aludecod|Selector1~0_combout\ & (\ALU0|Sum[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Sum[6]~12_combout\,
	datab => \FSM0|aludecod|Selector1~0_combout\,
	datac => \FSM0|aludecod|Selector0~0_combout\,
	datad => \ALU0|m2|m1|m3|out[6]~37_combout\,
	combout => \ALU0|m2|m3|out~14_combout\);

-- Location: FF_X56_Y43_N29
\ALUOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \ALU0|m2|m3|out~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ALUOut(6));

-- Location: LCCOMB_X56_Y43_N6
\Result[6]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[6]~18_combout\ = (\FSM0|cu_decoder|Decoder2~0_combout\ & ((\Memory0|altsyncram_component|auto_generated|q_a\(6)))) # (!\FSM0|cu_decoder|Decoder2~0_combout\ & (ALUOut(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ALUOut(6),
	datac => \Memory0|altsyncram_component|auto_generated|q_a\(6),
	datad => \FSM0|cu_decoder|Decoder2~0_combout\,
	combout => \Result[6]~18_combout\);

-- Location: LCCOMB_X56_Y43_N26
\Result[6]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[6]~19_combout\ = (\FSM0|aludecod|Decoder0~1_combout\ & (!\FSM0|aludecod|Selector0~0_combout\ & (\ALU0|m2|m1|m3|out[6]~50_combout\))) # (!\FSM0|aludecod|Decoder0~1_combout\ & (((\Result[6]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|Selector0~0_combout\,
	datab => \ALU0|m2|m1|m3|out[6]~50_combout\,
	datac => \Result[6]~18_combout\,
	datad => \FSM0|aludecod|Decoder0~1_combout\,
	combout => \Result[6]~19_combout\);

-- Location: LCCOMB_X61_Y43_N20
\Adr[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Adr[6]~5_combout\ = (\FSM0|cu_decoder|Mux0~0_combout\ & (\Result[6]~19_combout\)) # (!\FSM0|cu_decoder|Mux0~0_combout\ & ((PC(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[6]~19_combout\,
	datac => PC(6),
	datad => \FSM0|cu_decoder|Mux0~0_combout\,
	combout => \Adr[6]~5_combout\);

-- Location: FF_X57_Y43_N5
\Instr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Memory0|altsyncram_component|auto_generated|q_a\(14),
	sload => VCC,
	ena => \FSM0|aludecod|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Instr(14));

-- Location: LCCOMB_X56_Y41_N2
\ALU0|m2|m1|m3|out[5]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[5]~38_combout\ = (\FSM0|aludecod|Selector2~0_combout\ & ((\SrcA[5]~10_combout\) # ((\FSM0|cu_decoder|Decoder3~0_combout\ & \SrcB[5]~15_combout\)))) # (!\FSM0|aludecod|Selector2~0_combout\ & (\FSM0|cu_decoder|Decoder3~0_combout\ & 
-- (\SrcB[5]~15_combout\ & \SrcA[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cu_decoder|Decoder3~0_combout\,
	datab => \FSM0|aludecod|Selector2~0_combout\,
	datac => \SrcB[5]~15_combout\,
	datad => \SrcA[5]~10_combout\,
	combout => \ALU0|m2|m1|m3|out[5]~38_combout\);

-- Location: LCCOMB_X56_Y41_N6
\ALU0|m2|m1|m3|out[5]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[5]~51_combout\ = (Instr(14) & ((\FSM0|aludecod|WideOr1~0_combout\ & ((\ALU0|m2|m1|m3|out[5]~38_combout\))) # (!\FSM0|aludecod|WideOr1~0_combout\ & (\ALU0|Sum[5]~10_combout\)))) # (!Instr(14) & (\ALU0|Sum[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(14),
	datab => \ALU0|Sum[5]~10_combout\,
	datac => \FSM0|aludecod|WideOr1~0_combout\,
	datad => \ALU0|m2|m1|m3|out[5]~38_combout\,
	combout => \ALU0|m2|m1|m3|out[5]~51_combout\);

-- Location: LCCOMB_X56_Y41_N22
\ALU0|m2|m3|out~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m3|out~15_combout\ = (!\FSM0|aludecod|Selector0~0_combout\ & ((\FSM0|aludecod|Selector1~0_combout\ & (\ALU0|m2|m1|m3|out[5]~38_combout\)) # (!\FSM0|aludecod|Selector1~0_combout\ & ((\ALU0|Sum[5]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|Selector0~0_combout\,
	datab => \ALU0|m2|m1|m3|out[5]~38_combout\,
	datac => \ALU0|Sum[5]~10_combout\,
	datad => \FSM0|aludecod|Selector1~0_combout\,
	combout => \ALU0|m2|m3|out~15_combout\);

-- Location: FF_X56_Y41_N23
\ALUOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \ALU0|m2|m3|out~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ALUOut(5));

-- Location: LCCOMB_X56_Y41_N24
\Result[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[5]~20_combout\ = (\FSM0|cu_decoder|Decoder2~0_combout\ & ((\Memory0|altsyncram_component|auto_generated|q_a\(5)))) # (!\FSM0|cu_decoder|Decoder2~0_combout\ & (ALUOut(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ALUOut(5),
	datab => \Memory0|altsyncram_component|auto_generated|q_a\(5),
	datac => \FSM0|cu_decoder|Decoder2~0_combout\,
	combout => \Result[5]~20_combout\);

-- Location: LCCOMB_X56_Y41_N20
\Result[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[5]~21_combout\ = (\FSM0|aludecod|Decoder0~1_combout\ & (\ALU0|m2|m1|m3|out[5]~51_combout\ & ((!\FSM0|aludecod|Selector0~0_combout\)))) # (!\FSM0|aludecod|Decoder0~1_combout\ & (((\Result[5]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|m2|m1|m3|out[5]~51_combout\,
	datab => \Result[5]~20_combout\,
	datac => \FSM0|aludecod|Selector0~0_combout\,
	datad => \FSM0|aludecod|Decoder0~1_combout\,
	combout => \Result[5]~21_combout\);

-- Location: LCCOMB_X61_Y43_N22
\Adr[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Adr[5]~4_combout\ = (\FSM0|cu_decoder|Mux0~0_combout\ & (\Result[5]~21_combout\)) # (!\FSM0|cu_decoder|Mux0~0_combout\ & ((PC(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[5]~21_combout\,
	datac => PC(5),
	datad => \FSM0|cu_decoder|Mux0~0_combout\,
	combout => \Adr[5]~4_combout\);

-- Location: LCCOMB_X57_Y43_N10
\ALU0|m2|m3|out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m3|out~1_combout\ = (\FSM0|aludecod|Selector2~0_combout\ & ((\SrcA[4]~11_combout\) # ((\SrcB[4]~16_combout\ & \FSM0|cu_decoder|Decoder3~0_combout\)))) # (!\FSM0|aludecod|Selector2~0_combout\ & (\SrcA[4]~11_combout\ & (\SrcB[4]~16_combout\ & 
-- \FSM0|cu_decoder|Decoder3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|Selector2~0_combout\,
	datab => \SrcA[4]~11_combout\,
	datac => \SrcB[4]~16_combout\,
	datad => \FSM0|cu_decoder|Decoder3~0_combout\,
	combout => \ALU0|m2|m3|out~1_combout\);

-- Location: LCCOMB_X57_Y43_N20
\ALU0|m2|m3|out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m3|out~2_combout\ = (!\FSM0|aludecod|Selector0~0_combout\ & ((\FSM0|aludecod|Selector1~0_combout\ & (\ALU0|m2|m3|out~1_combout\)) # (!\FSM0|aludecod|Selector1~0_combout\ & ((\ALU0|Sum[4]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|m2|m3|out~1_combout\,
	datab => \ALU0|Sum[4]~8_combout\,
	datac => \FSM0|aludecod|Selector0~0_combout\,
	datad => \FSM0|aludecod|Selector1~0_combout\,
	combout => \ALU0|m2|m3|out~2_combout\);

-- Location: FF_X57_Y43_N9
\ALUOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \ALU0|m2|m3|out~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ALUOut(4));

-- Location: LCCOMB_X57_Y43_N8
\Result[4]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[4]~22_combout\ = (\FSM0|cu_decoder|Decoder2~0_combout\ & (\Memory0|altsyncram_component|auto_generated|q_a\(4))) # (!\FSM0|cu_decoder|Decoder2~0_combout\ & ((ALUOut(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memory0|altsyncram_component|auto_generated|q_a\(4),
	datab => \FSM0|cu_decoder|Decoder2~0_combout\,
	datac => ALUOut(4),
	combout => \Result[4]~22_combout\);

-- Location: LCCOMB_X58_Y43_N26
\Result[4]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[4]~23_combout\ = (\FSM0|curr_state\(1) & (\Result[4]~22_combout\)) # (!\FSM0|curr_state\(1) & ((\FSM0|curr_state\(2) & (\Result[4]~22_combout\)) # (!\FSM0|curr_state\(2) & ((\ALU0|m2|m3|out~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[4]~22_combout\,
	datab => \ALU0|m2|m3|out~2_combout\,
	datac => \FSM0|curr_state\(1),
	datad => \FSM0|curr_state\(2),
	combout => \Result[4]~23_combout\);

-- Location: FF_X56_Y42_N23
\PC[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[4]~23_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \FSM0|pc_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(4));

-- Location: LCCOMB_X56_Y42_N30
\Adr[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Adr[4]~3_combout\ = (\FSM0|cu_decoder|Mux0~0_combout\ & ((\Result[4]~23_combout\))) # (!\FSM0|cu_decoder|Mux0~0_combout\ & (PC(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(4),
	datab => \FSM0|cu_decoder|Mux0~0_combout\,
	datac => \Result[4]~23_combout\,
	combout => \Adr[4]~3_combout\);

-- Location: LCCOMB_X57_Y44_N12
\ALU0|m2|m1|m3|out[3]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[3]~39_combout\ = (\SrcA[3]~12_combout\ & ((\FSM0|aludecod|Selector2~0_combout\) # ((\SrcB[3]~17_combout\ & \FSM0|cu_decoder|Decoder3~0_combout\)))) # (!\SrcA[3]~12_combout\ & (\SrcB[3]~17_combout\ & (\FSM0|cu_decoder|Decoder3~0_combout\ 
-- & \FSM0|aludecod|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SrcB[3]~17_combout\,
	datab => \FSM0|cu_decoder|Decoder3~0_combout\,
	datac => \SrcA[3]~12_combout\,
	datad => \FSM0|aludecod|Selector2~0_combout\,
	combout => \ALU0|m2|m1|m3|out[3]~39_combout\);

-- Location: LCCOMB_X55_Y44_N4
\ALU0|m2|m3|out~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m3|out~16_combout\ = (!\FSM0|aludecod|Selector0~0_combout\ & ((\FSM0|aludecod|Selector1~0_combout\ & ((\ALU0|m2|m1|m3|out[3]~39_combout\))) # (!\FSM0|aludecod|Selector1~0_combout\ & (\ALU0|Sum[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Sum[3]~6_combout\,
	datab => \ALU0|m2|m1|m3|out[3]~39_combout\,
	datac => \FSM0|aludecod|Selector1~0_combout\,
	datad => \FSM0|aludecod|Selector0~0_combout\,
	combout => \ALU0|m2|m3|out~16_combout\);

-- Location: FF_X55_Y44_N5
\ALUOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \ALU0|m2|m3|out~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ALUOut(3));

-- Location: LCCOMB_X55_Y44_N22
\Result[3]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[3]~24_combout\ = (\FSM0|cu_decoder|Decoder2~0_combout\ & (\Memory0|altsyncram_component|auto_generated|q_a\(3))) # (!\FSM0|cu_decoder|Decoder2~0_combout\ & ((ALUOut(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memory0|altsyncram_component|auto_generated|q_a\(3),
	datab => ALUOut(3),
	datad => \FSM0|cu_decoder|Decoder2~0_combout\,
	combout => \Result[3]~24_combout\);

-- Location: LCCOMB_X55_Y44_N20
\ALU0|m2|m1|m3|out[3]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[3]~52_combout\ = (\FSM0|aludecod|WideOr1~0_combout\ & ((Instr(14) & (\ALU0|m2|m1|m3|out[3]~39_combout\)) # (!Instr(14) & ((\ALU0|Sum[3]~6_combout\))))) # (!\FSM0|aludecod|WideOr1~0_combout\ & (((\ALU0|Sum[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|WideOr1~0_combout\,
	datab => \ALU0|m2|m1|m3|out[3]~39_combout\,
	datac => Instr(14),
	datad => \ALU0|Sum[3]~6_combout\,
	combout => \ALU0|m2|m1|m3|out[3]~52_combout\);

-- Location: LCCOMB_X55_Y44_N24
\Result[3]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[3]~25_combout\ = (\FSM0|aludecod|Decoder0~1_combout\ & (((\ALU0|m2|m1|m3|out[3]~52_combout\ & !\FSM0|aludecod|Selector0~0_combout\)))) # (!\FSM0|aludecod|Decoder0~1_combout\ & (\Result[3]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[3]~24_combout\,
	datab => \ALU0|m2|m1|m3|out[3]~52_combout\,
	datac => \FSM0|aludecod|Decoder0~1_combout\,
	datad => \FSM0|aludecod|Selector0~0_combout\,
	combout => \Result[3]~25_combout\);

-- Location: LCCOMB_X61_Y43_N28
\Adr[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Adr[3]~2_combout\ = (\FSM0|cu_decoder|Mux0~0_combout\ & (\Result[3]~25_combout\)) # (!\FSM0|cu_decoder|Mux0~0_combout\ & ((PC(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM0|cu_decoder|Mux0~0_combout\,
	datac => \Result[3]~25_combout\,
	datad => PC(3),
	combout => \Adr[3]~2_combout\);

-- Location: FF_X55_Y41_N31
\Instr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Memory0|altsyncram_component|auto_generated|q_a\(15),
	sload => VCC,
	ena => \FSM0|aludecod|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Instr(15));

-- Location: LCCOMB_X55_Y41_N0
\FSM0|cseq|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|cseq|Mux0~0_combout\ = (!Instr(15) & (Instr(13) & !Instr(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(15),
	datac => Instr(13),
	datad => Instr(14),
	combout => \FSM0|cseq|Mux0~0_combout\);

-- Location: LCCOMB_X58_Y42_N28
\FSM0|cseq|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|cseq|Mux0~3_combout\ = (\FSM0|cseq|Mux0~2_combout\ & (((!\FSM0|curr_state\(2) & !\FSM0|cseq|Mux0~1_combout\)))) # (!\FSM0|cseq|Mux0~2_combout\ & (\FSM0|cseq|Mux0~1_combout\ & ((\FSM0|cseq|Mux0~0_combout\) # (\FSM0|curr_state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cseq|Mux0~2_combout\,
	datab => \FSM0|cseq|Mux0~0_combout\,
	datac => \FSM0|curr_state\(2),
	datad => \FSM0|cseq|Mux0~1_combout\,
	combout => \FSM0|cseq|Mux0~3_combout\);

-- Location: FF_X58_Y42_N29
\FSM0|curr_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \FSM0|cseq|Mux0~3_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM0|curr_state\(2));

-- Location: LCCOMB_X59_Y42_N16
\FSM0|aludecod|WideOr1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|aludecod|WideOr1~0_combout\ = (\FSM0|curr_state\(1) & (((\FSM0|curr_state\(2) & !\FSM0|curr_state\(3))))) # (!\FSM0|curr_state\(1) & (!\FSM0|curr_state\(0) & (!\FSM0|curr_state\(2) & \FSM0|curr_state\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(1),
	datab => \FSM0|curr_state\(0),
	datac => \FSM0|curr_state\(2),
	datad => \FSM0|curr_state\(3),
	combout => \FSM0|aludecod|WideOr1~0_combout\);

-- Location: LCCOMB_X59_Y44_N30
\ALU0|m2|m1|m3|out[2]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[2]~40_combout\ = (\FSM0|aludecod|Selector2~0_combout\ & ((\SrcA[2]~13_combout\) # ((\FSM0|cu_decoder|Decoder3~0_combout\ & \SrcB[2]~18_combout\)))) # (!\FSM0|aludecod|Selector2~0_combout\ & (\FSM0|cu_decoder|Decoder3~0_combout\ & 
-- (\SrcB[2]~18_combout\ & \SrcA[2]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|Selector2~0_combout\,
	datab => \FSM0|cu_decoder|Decoder3~0_combout\,
	datac => \SrcB[2]~18_combout\,
	datad => \SrcA[2]~13_combout\,
	combout => \ALU0|m2|m1|m3|out[2]~40_combout\);

-- Location: LCCOMB_X56_Y43_N22
\ALU0|m2|m1|m3|out[2]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[2]~53_combout\ = (\FSM0|aludecod|WideOr1~0_combout\ & ((Instr(14) & ((\ALU0|m2|m1|m3|out[2]~40_combout\))) # (!Instr(14) & (\ALU0|Sum[2]~4_combout\)))) # (!\FSM0|aludecod|WideOr1~0_combout\ & (\ALU0|Sum[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|WideOr1~0_combout\,
	datab => \ALU0|Sum[2]~4_combout\,
	datac => \ALU0|m2|m1|m3|out[2]~40_combout\,
	datad => Instr(14),
	combout => \ALU0|m2|m1|m3|out[2]~53_combout\);

-- Location: LCCOMB_X56_Y43_N16
\ALU0|m2|m3|out~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m3|out~17_combout\ = (!\FSM0|aludecod|Selector0~0_combout\ & ((\FSM0|aludecod|Selector1~0_combout\ & (\ALU0|m2|m1|m3|out[2]~40_combout\)) # (!\FSM0|aludecod|Selector1~0_combout\ & ((\ALU0|Sum[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|Selector0~0_combout\,
	datab => \FSM0|aludecod|Selector1~0_combout\,
	datac => \ALU0|m2|m1|m3|out[2]~40_combout\,
	datad => \ALU0|Sum[2]~4_combout\,
	combout => \ALU0|m2|m3|out~17_combout\);

-- Location: FF_X56_Y43_N17
\ALUOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \ALU0|m2|m3|out~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ALUOut(2));

-- Location: LCCOMB_X56_Y43_N2
\Result[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[2]~26_combout\ = (\FSM0|cu_decoder|Decoder2~0_combout\ & ((\Memory0|altsyncram_component|auto_generated|q_a\(2)))) # (!\FSM0|cu_decoder|Decoder2~0_combout\ & (ALUOut(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ALUOut(2),
	datac => \Memory0|altsyncram_component|auto_generated|q_a\(2),
	datad => \FSM0|cu_decoder|Decoder2~0_combout\,
	combout => \Result[2]~26_combout\);

-- Location: LCCOMB_X56_Y43_N4
\Result[2]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Result[2]~27_combout\ = (\FSM0|aludecod|Decoder0~1_combout\ & (\ALU0|m2|m1|m3|out[2]~53_combout\ & ((!\FSM0|aludecod|Selector0~0_combout\)))) # (!\FSM0|aludecod|Decoder0~1_combout\ & (((\Result[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|m2|m1|m3|out[2]~53_combout\,
	datab => \Result[2]~26_combout\,
	datac => \FSM0|aludecod|Selector0~0_combout\,
	datad => \FSM0|aludecod|Decoder0~1_combout\,
	combout => \Result[2]~27_combout\);

-- Location: LCCOMB_X61_Y43_N10
\Adr[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Adr[2]~1_combout\ = (\FSM0|cu_decoder|Mux0~0_combout\ & (\Result[2]~27_combout\)) # (!\FSM0|cu_decoder|Mux0~0_combout\ & ((PC(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM0|cu_decoder|Mux0~0_combout\,
	datac => \Result[2]~27_combout\,
	datad => PC(2),
	combout => \Adr[2]~1_combout\);

-- Location: FF_X55_Y41_N1
\Instr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Memory0|altsyncram_component|auto_generated|q_a\(13),
	sload => VCC,
	ena => \FSM0|aludecod|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Instr(13));

-- Location: LCCOMB_X55_Y41_N2
\FSM0|cseq|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|cseq|Mux1~0_combout\ = ((!Instr(13) & (!Instr(15) & !Instr(14)))) # (!\FSM0|curr_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(1),
	datab => Instr(13),
	datac => Instr(15),
	datad => Instr(14),
	combout => \FSM0|cseq|Mux1~0_combout\);

-- Location: LCCOMB_X58_Y42_N16
\FSM0|cseq|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|cseq|Mux1~1_combout\ = (!\FSM0|curr_state\(0) & (\FSM0|cseq|Mux1~0_combout\ & (\FSM0|curr_state\(3) $ (\FSM0|curr_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(3),
	datab => \FSM0|curr_state\(0),
	datac => \FSM0|cseq|Mux1~0_combout\,
	datad => \FSM0|curr_state\(1),
	combout => \FSM0|cseq|Mux1~1_combout\);

-- Location: LCCOMB_X58_Y42_N26
\FSM0|cseq|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|cseq|Mux1~2_combout\ = (\FSM0|cseq|Mux1~1_combout\) # ((!\FSM0|cu_decoder|Decoder3~0_combout\ & (!Instr(0) & \FSM0|curr_state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cu_decoder|Decoder3~0_combout\,
	datab => \FSM0|cseq|Mux1~1_combout\,
	datac => Instr(0),
	datad => \FSM0|curr_state\(0),
	combout => \FSM0|cseq|Mux1~2_combout\);

-- Location: LCCOMB_X58_Y42_N10
\FSM0|cseq|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|cseq|Mux1~3_combout\ = (\FSM0|cseq|Mux1~2_combout\ & (((\FSM0|curr_state\(1) & \FSM0|cu_decoder|Decoder2~0_combout\)) # (!\FSM0|curr_state\(2)))) # (!\FSM0|cseq|Mux1~2_combout\ & (((\FSM0|curr_state\(1) & \FSM0|cu_decoder|Decoder2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cseq|Mux1~2_combout\,
	datab => \FSM0|curr_state\(2),
	datac => \FSM0|curr_state\(1),
	datad => \FSM0|cu_decoder|Decoder2~0_combout\,
	combout => \FSM0|cseq|Mux1~3_combout\);

-- Location: FF_X58_Y42_N11
\FSM0|curr_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \FSM0|cseq|Mux1~3_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM0|curr_state\(1));

-- Location: LCCOMB_X60_Y45_N14
\FSM0|cu_decoder|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|cu_decoder|Mux0~0_combout\ = (!\FSM0|curr_state\(3) & (\FSM0|curr_state\(1) $ (\FSM0|curr_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(3),
	datac => \FSM0|curr_state\(1),
	datad => \FSM0|curr_state\(2),
	combout => \FSM0|cu_decoder|Mux0~0_combout\);

-- Location: LCCOMB_X61_Y43_N24
\Adr[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Adr[1]~0_combout\ = (\FSM0|cu_decoder|Mux0~0_combout\ & ((\Result[1]~29_combout\))) # (!\FSM0|cu_decoder|Mux0~0_combout\ & (PC(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FSM0|cu_decoder|Mux0~0_combout\,
	datac => PC(1),
	datad => \Result[1]~29_combout\,
	combout => \Adr[1]~0_combout\);

-- Location: LCCOMB_X57_Y41_N16
\Instr[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instr[7]~feeder_combout\ = \Memory0|altsyncram_component|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memory0|altsyncram_component|auto_generated|q_a\(7),
	combout => \Instr[7]~feeder_combout\);

-- Location: FF_X57_Y41_N17
\Instr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \Instr[7]~feeder_combout\,
	ena => \FSM0|aludecod|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Instr(7));

-- Location: LCCOMB_X62_Y43_N6
\RegBank0|RD1[5]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[5]~76_combout\ = (\RegBank0|RD1[2]~35_combout\ & ((\RegBank0|register_array[2][5]~q\) # ((\RegBank0|RD1[2]~34_combout\)))) # (!\RegBank0|RD1[2]~35_combout\ & (((\RegBank0|register_array[1][5]~q\ & !\RegBank0|RD1[2]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[2][5]~q\,
	datab => \RegBank0|RD1[2]~35_combout\,
	datac => \RegBank0|register_array[1][5]~q\,
	datad => \RegBank0|RD1[2]~34_combout\,
	combout => \RegBank0|RD1[5]~76_combout\);

-- Location: LCCOMB_X60_Y42_N0
\RegBank0|RD1[5]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[5]~74_combout\ = (Instr(5) & ((Instr(6)) # ((\RegBank0|register_array[5][5]~q\)))) # (!Instr(5) & (!Instr(6) & (\RegBank0|register_array[4][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(5),
	datab => Instr(6),
	datac => \RegBank0|register_array[4][5]~q\,
	datad => \RegBank0|register_array[5][5]~q\,
	combout => \RegBank0|RD1[5]~74_combout\);

-- Location: LCCOMB_X61_Y44_N26
\RegBank0|RD1[5]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[5]~75_combout\ = (Instr(6) & ((\RegBank0|RD1[5]~74_combout\ & (\RegBank0|register_array[7][5]~q\)) # (!\RegBank0|RD1[5]~74_combout\ & ((\RegBank0|register_array[6][5]~q\))))) # (!Instr(6) & (\RegBank0|RD1[5]~74_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(6),
	datab => \RegBank0|RD1[5]~74_combout\,
	datac => \RegBank0|register_array[7][5]~q\,
	datad => \RegBank0|register_array[6][5]~q\,
	combout => \RegBank0|RD1[5]~75_combout\);

-- Location: LCCOMB_X61_Y44_N20
\RegBank0|RD1[5]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[5]~77_combout\ = (\RegBank0|RD1[5]~76_combout\ & (((\RegBank0|register_array[3][5]~q\)) # (!\RegBank0|RD1[2]~34_combout\))) # (!\RegBank0|RD1[5]~76_combout\ & (\RegBank0|RD1[2]~34_combout\ & (\RegBank0|RD1[5]~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[5]~76_combout\,
	datab => \RegBank0|RD1[2]~34_combout\,
	datac => \RegBank0|RD1[5]~75_combout\,
	datad => \RegBank0|register_array[3][5]~q\,
	combout => \RegBank0|RD1[5]~77_combout\);

-- Location: LCCOMB_X57_Y41_N22
\RegBank0|RD1[5]~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[5]~108_combout\ = (\RegBank0|RD1[5]~77_combout\ & ((Instr(6)) # ((Instr(7)) # (Instr(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(6),
	datab => Instr(7),
	datac => Instr(5),
	datad => \RegBank0|RD1[5]~77_combout\,
	combout => \RegBank0|RD1[5]~108_combout\);

-- Location: FF_X57_Y41_N23
\WriteData[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD1[5]~108_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WriteData(5));

-- Location: LCCOMB_X57_Y41_N26
\Instr[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Instr[6]~feeder_combout\ = \Memory0|altsyncram_component|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Memory0|altsyncram_component|auto_generated|q_a\(6),
	combout => \Instr[6]~feeder_combout\);

-- Location: FF_X57_Y41_N27
\Instr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \Instr[6]~feeder_combout\,
	ena => \FSM0|aludecod|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Instr(6));

-- Location: LCCOMB_X60_Y42_N30
\RegBank0|RD1[0]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[0]~94_combout\ = (Instr(5) & (Instr(6))) # (!Instr(5) & ((Instr(6) & ((\RegBank0|register_array[6][0]~q\))) # (!Instr(6) & (\RegBank0|register_array[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(5),
	datab => Instr(6),
	datac => \RegBank0|register_array[4][0]~q\,
	datad => \RegBank0|register_array[6][0]~q\,
	combout => \RegBank0|RD1[0]~94_combout\);

-- Location: LCCOMB_X61_Y42_N12
\RegBank0|RD1[0]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[0]~95_combout\ = (Instr(5) & ((\RegBank0|RD1[0]~94_combout\ & ((\RegBank0|register_array[7][0]~q\))) # (!\RegBank0|RD1[0]~94_combout\ & (\RegBank0|register_array[5][0]~q\)))) # (!Instr(5) & (((\RegBank0|RD1[0]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|register_array[5][0]~q\,
	datab => Instr(5),
	datac => \RegBank0|register_array[7][0]~q\,
	datad => \RegBank0|RD1[0]~94_combout\,
	combout => \RegBank0|RD1[0]~95_combout\);

-- Location: LCCOMB_X62_Y43_N10
\RegBank0|RD1[0]~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[0]~96_combout\ = (\RegBank0|RD1[2]~34_combout\ & ((\RegBank0|RD1[2]~35_combout\) # ((\RegBank0|RD1[0]~95_combout\)))) # (!\RegBank0|RD1[2]~34_combout\ & (!\RegBank0|RD1[2]~35_combout\ & (\RegBank0|register_array[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[2]~34_combout\,
	datab => \RegBank0|RD1[2]~35_combout\,
	datac => \RegBank0|register_array[1][0]~q\,
	datad => \RegBank0|RD1[0]~95_combout\,
	combout => \RegBank0|RD1[0]~96_combout\);

-- Location: LCCOMB_X58_Y43_N20
\RegBank0|RD1[0]~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[0]~97_combout\ = (\RegBank0|RD1[2]~35_combout\ & ((\RegBank0|RD1[0]~96_combout\ & ((\RegBank0|register_array[3][0]~q\))) # (!\RegBank0|RD1[0]~96_combout\ & (\RegBank0|register_array[2][0]~q\)))) # (!\RegBank0|RD1[2]~35_combout\ & 
-- (\RegBank0|RD1[0]~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[2]~35_combout\,
	datab => \RegBank0|RD1[0]~96_combout\,
	datac => \RegBank0|register_array[2][0]~q\,
	datad => \RegBank0|register_array[3][0]~q\,
	combout => \RegBank0|RD1[0]~97_combout\);

-- Location: LCCOMB_X57_Y41_N28
\RegBank0|RD1[0]~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD1[0]~113_combout\ = (\RegBank0|RD1[0]~97_combout\ & ((Instr(6)) # ((Instr(5)) # (Instr(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(6),
	datab => Instr(5),
	datac => \RegBank0|RD1[0]~97_combout\,
	datad => Instr(7),
	combout => \RegBank0|RD1[0]~113_combout\);

-- Location: FF_X57_Y41_N29
\WriteData[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD1[0]~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => WriteData(0));

-- Location: FF_X55_Y42_N13
\Instr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Memory0|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \FSM0|aludecod|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Instr(1));

-- Location: LCCOMB_X58_Y42_N14
\FSM0|cseq|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|cseq|Mux2~0_combout\ = (!\FSM0|curr_state\(1) & (\FSM0|curr_state\(0) & (!\FSM0|curr_state\(3) & !\FSM0|curr_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(1),
	datab => \FSM0|curr_state\(0),
	datac => \FSM0|curr_state\(3),
	datad => \FSM0|curr_state\(2),
	combout => \FSM0|cseq|Mux2~0_combout\);

-- Location: LCCOMB_X60_Y45_N20
\display0|seg_e~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display0|seg_e~0_combout\ = (\FSM0|curr_state\(1) & ((\FSM0|curr_state\(3)) # ((!\FSM0|curr_state\(0))))) # (!\FSM0|curr_state\(1) & ((\FSM0|curr_state\(2) & (\FSM0|curr_state\(3))) # (!\FSM0|curr_state\(2) & ((!\FSM0|curr_state\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(3),
	datab => \FSM0|curr_state\(0),
	datac => \FSM0|curr_state\(1),
	datad => \FSM0|curr_state\(2),
	combout => \display0|seg_e~0_combout\);

-- Location: LCCOMB_X58_Y42_N24
\FSM0|cseq|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|cseq|Mux2~1_combout\ = (\display0|seg_e~0_combout\) # ((Instr(1) & (\FSM0|cseq|Mux2~0_combout\ & Instr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(1),
	datab => \FSM0|cseq|Mux2~0_combout\,
	datac => Instr(0),
	datad => \display0|seg_e~0_combout\,
	combout => \FSM0|cseq|Mux2~1_combout\);

-- Location: FF_X58_Y42_N25
\FSM0|curr_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \FSM0|cseq|Mux2~1_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM0|curr_state\(0));

-- Location: LCCOMB_X60_Y45_N28
\FSM0|aludecod|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|aludecod|Decoder0~2_combout\ = (!\FSM0|curr_state\(3) & (\FSM0|curr_state\(0) & (!\FSM0|curr_state\(1) & \FSM0|curr_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(3),
	datab => \FSM0|curr_state\(0),
	datac => \FSM0|curr_state\(1),
	datad => \FSM0|curr_state\(2),
	combout => \FSM0|aludecod|Decoder0~2_combout\);

-- Location: FF_X55_Y42_N11
\Instr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Memory0|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \FSM0|aludecod|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Instr(0));

-- Location: LCCOMB_X58_Y42_N6
\FSM0|cseq|next_state[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|cseq|next_state[3]~0_combout\ = (Instr(0) & (!\FSM0|curr_state\(3) & \FSM0|pc_write~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Instr(0),
	datac => \FSM0|curr_state\(3),
	datad => \FSM0|pc_write~0_combout\,
	combout => \FSM0|cseq|next_state[3]~0_combout\);

-- Location: FF_X58_Y42_N7
\FSM0|curr_state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \FSM0|cseq|next_state[3]~0_combout\,
	sclr => \ALT_INV_KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FSM0|curr_state\(3));

-- Location: LCCOMB_X58_Y42_N18
\FSM0|cu_decoder|Decoder3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \FSM0|cu_decoder|Decoder3~0_combout\ = (\FSM0|curr_state\(3)) # (\FSM0|curr_state\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(3),
	datad => \FSM0|curr_state\(1),
	combout => \FSM0|cu_decoder|Decoder3~0_combout\);

-- Location: LCCOMB_X60_Y42_N16
\RegBank0|RD2[15]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[15]~32_combout\ = (Instr(3) & (Instr(2))) # (!Instr(3) & ((Instr(2) & ((\RegBank0|register_array[5][15]~q\))) # (!Instr(2) & (\RegBank0|register_array[4][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(3),
	datab => Instr(2),
	datac => \RegBank0|register_array[4][15]~q\,
	datad => \RegBank0|register_array[5][15]~q\,
	combout => \RegBank0|RD2[15]~32_combout\);

-- Location: LCCOMB_X59_Y41_N10
\RegBank0|RD2[15]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[15]~33_combout\ = (\RegBank0|RD2[15]~32_combout\ & (((\RegBank0|register_array[7][15]~q\)) # (!Instr(3)))) # (!\RegBank0|RD2[15]~32_combout\ & (Instr(3) & ((\RegBank0|register_array[6][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[15]~32_combout\,
	datab => Instr(3),
	datac => \RegBank0|register_array[7][15]~q\,
	datad => \RegBank0|register_array[6][15]~q\,
	combout => \RegBank0|RD2[15]~33_combout\);

-- Location: LCCOMB_X60_Y41_N26
\RegBank0|RD2[15]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[15]~36_combout\ = (\RegBank0|RD2[13]~34_combout\ & (\RegBank0|RD2[13]~35_combout\)) # (!\RegBank0|RD2[13]~34_combout\ & ((\RegBank0|RD2[13]~35_combout\ & ((\RegBank0|register_array[2][15]~q\))) # (!\RegBank0|RD2[13]~35_combout\ & 
-- (\RegBank0|register_array[1][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[13]~34_combout\,
	datab => \RegBank0|RD2[13]~35_combout\,
	datac => \RegBank0|register_array[1][15]~q\,
	datad => \RegBank0|register_array[2][15]~q\,
	combout => \RegBank0|RD2[15]~36_combout\);

-- Location: LCCOMB_X59_Y41_N30
\RegBank0|RD2[15]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[15]~37_combout\ = (\RegBank0|RD2[13]~34_combout\ & ((\RegBank0|RD2[15]~36_combout\ & ((\RegBank0|register_array[3][15]~q\))) # (!\RegBank0|RD2[15]~36_combout\ & (\RegBank0|RD2[15]~33_combout\)))) # (!\RegBank0|RD2[13]~34_combout\ & 
-- (((\RegBank0|RD2[15]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[15]~33_combout\,
	datab => \RegBank0|register_array[3][15]~q\,
	datac => \RegBank0|RD2[13]~34_combout\,
	datad => \RegBank0|RD2[15]~36_combout\,
	combout => \RegBank0|RD2[15]~37_combout\);

-- Location: LCCOMB_X59_Y40_N8
\RegBank0|RD2[15]~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|RD2[15]~98_combout\ = (\RegBank0|RD2[15]~37_combout\ & ((Instr(3)) # ((Instr(2)) # (Instr(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[15]~37_combout\,
	datab => Instr(3),
	datac => Instr(2),
	datad => Instr(4),
	combout => \RegBank0|RD2[15]~98_combout\);

-- Location: FF_X59_Y40_N9
\B[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	d => \RegBank0|RD2[15]~98_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => B(15));

-- Location: LCCOMB_X59_Y40_N12
\SrcB[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcB[15]~0_combout\ = (\FSM0|cu_decoder|Mux1~0_combout\ & (((B(15))))) # (!\FSM0|cu_decoder|Mux1~0_combout\ & (!\FSM0|pc_write~0_combout\ & (Instr(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|pc_write~0_combout\,
	datab => Instr(12),
	datac => \FSM0|cu_decoder|Mux1~0_combout\,
	datad => B(15),
	combout => \SrcB[15]~0_combout\);

-- Location: LCCOMB_X58_Y44_N30
\ALU0|twc|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~28_combout\ = \ALU0|twc|Add0~27\ $ (((\FSM0|cu_decoder|Decoder3~0_combout\ & \SrcB[15]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \FSM0|cu_decoder|Decoder3~0_combout\,
	datad => \SrcB[15]~0_combout\,
	cin => \ALU0|twc|Add0~27\,
	combout => \ALU0|twc|Add0~28_combout\);

-- Location: LCCOMB_X57_Y44_N0
\ALU0|twc|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|twc|Add0~30_combout\ = (\FSM0|aludecod|Selector2~0_combout\ & (\ALU0|twc|Add0~28_combout\)) # (!\FSM0|aludecod|Selector2~0_combout\ & (((\FSM0|cu_decoder|Decoder3~0_combout\ & \SrcB[15]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|twc|Add0~28_combout\,
	datab => \FSM0|aludecod|Selector2~0_combout\,
	datac => \FSM0|cu_decoder|Decoder3~0_combout\,
	datad => \SrcB[15]~0_combout\,
	combout => \ALU0|twc|Add0~30_combout\);

-- Location: FF_X57_Y42_N27
\PC[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CNT0|q[25]~clkctrl_outclk\,
	asdata => \Result[15]~1_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \FSM0|pc_write~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => PC(15));

-- Location: LCCOMB_X57_Y42_N4
\SrcA[15]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SrcA[15]~0_combout\ = (!\FSM0|cu_decoder|Mux4~0_combout\ & ((\FSM0|cu_decoder|Mux2~0_combout\ & ((WriteData(15)))) # (!\FSM0|cu_decoder|Mux2~0_combout\ & (PC(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(15),
	datab => WriteData(15),
	datac => \FSM0|cu_decoder|Mux2~0_combout\,
	datad => \FSM0|cu_decoder|Mux4~0_combout\,
	combout => \SrcA[15]~0_combout\);

-- Location: LCCOMB_X56_Y44_N30
\ALU0|Sum[15]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|Sum[15]~30_combout\ = \ALU0|twc|Add0~30_combout\ $ (\ALU0|Sum[14]~29\ $ (\SrcA[15]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ALU0|twc|Add0~30_combout\,
	datad => \SrcA[15]~0_combout\,
	cin => \ALU0|Sum[14]~29\,
	combout => \ALU0|Sum[15]~30_combout\);

-- Location: LCCOMB_X57_Y43_N24
\ALU0|m2|m1|m3|out[15]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[15]~28_combout\ = (\SrcA[15]~0_combout\ & ((\FSM0|aludecod|Selector2~0_combout\) # ((\FSM0|cu_decoder|Decoder3~0_combout\ & \SrcB[15]~0_combout\)))) # (!\SrcA[15]~0_combout\ & (\FSM0|cu_decoder|Decoder3~0_combout\ & 
-- (\SrcB[15]~0_combout\ & \FSM0|aludecod|Selector2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cu_decoder|Decoder3~0_combout\,
	datab => \SrcA[15]~0_combout\,
	datac => \SrcB[15]~0_combout\,
	datad => \FSM0|aludecod|Selector2~0_combout\,
	combout => \ALU0|m2|m1|m3|out[15]~28_combout\);

-- Location: LCCOMB_X57_Y43_N0
\ALU0|m2|m3|out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m3|out~0_combout\ = (!\FSM0|aludecod|Selector0~0_combout\ & ((\FSM0|aludecod|Selector1~0_combout\ & ((\ALU0|m2|m1|m3|out[15]~28_combout\))) # (!\FSM0|aludecod|Selector1~0_combout\ & (\ALU0|Sum[15]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|Sum[15]~30_combout\,
	datab => \FSM0|aludecod|Selector0~0_combout\,
	datac => \FSM0|aludecod|Selector1~0_combout\,
	datad => \ALU0|m2|m1|m3|out[15]~28_combout\,
	combout => \ALU0|m2|m3|out~0_combout\);

-- Location: LCCOMB_X60_Y45_N12
\display0|seg_a~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display0|seg_a~0_combout\ = (\FSM0|curr_state\(3) & ((\FSM0|curr_state\(1) $ (!\FSM0|curr_state\(2))) # (!\FSM0|curr_state\(0)))) # (!\FSM0|curr_state\(3) & ((\FSM0|curr_state\(1)) # (\FSM0|curr_state\(0) $ (!\FSM0|curr_state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(3),
	datab => \FSM0|curr_state\(0),
	datac => \FSM0|curr_state\(1),
	datad => \FSM0|curr_state\(2),
	combout => \display0|seg_a~0_combout\);

-- Location: LCCOMB_X60_Y45_N30
\display0|seg_b~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display0|seg_b~0_combout\ = (\FSM0|curr_state\(3) & ((\FSM0|curr_state\(0) & (!\FSM0|curr_state\(1))) # (!\FSM0|curr_state\(0) & ((!\FSM0|curr_state\(2)))))) # (!\FSM0|curr_state\(3) & ((\FSM0|curr_state\(0) $ (!\FSM0|curr_state\(1))) # 
-- (!\FSM0|curr_state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(3),
	datab => \FSM0|curr_state\(0),
	datac => \FSM0|curr_state\(1),
	datad => \FSM0|curr_state\(2),
	combout => \display0|seg_b~0_combout\);

-- Location: LCCOMB_X60_Y45_N24
\display0|seg_c~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display0|seg_c~0_combout\ = (\FSM0|curr_state\(3) & (((\FSM0|curr_state\(0) & !\FSM0|curr_state\(1))) # (!\FSM0|curr_state\(2)))) # (!\FSM0|curr_state\(3) & ((\FSM0|curr_state\(0)) # ((\FSM0|curr_state\(2)) # (!\FSM0|curr_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(3),
	datab => \FSM0|curr_state\(0),
	datac => \FSM0|curr_state\(1),
	datad => \FSM0|curr_state\(2),
	combout => \display0|seg_c~0_combout\);

-- Location: LCCOMB_X60_Y45_N10
\display0|seg_d~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display0|seg_d~0_combout\ = (\FSM0|curr_state\(1) & ((\FSM0|curr_state\(0) & ((!\FSM0|curr_state\(2)))) # (!\FSM0|curr_state\(0) & ((\FSM0|curr_state\(2)) # (!\FSM0|curr_state\(3)))))) # (!\FSM0|curr_state\(1) & ((\FSM0|curr_state\(3)) # 
-- (\FSM0|curr_state\(0) $ (!\FSM0|curr_state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(3),
	datab => \FSM0|curr_state\(0),
	datac => \FSM0|curr_state\(1),
	datad => \FSM0|curr_state\(2),
	combout => \display0|seg_d~0_combout\);

-- Location: LCCOMB_X60_Y45_N6
\display0|seg_f~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display0|seg_f~0_combout\ = (\FSM0|curr_state\(0) & (\FSM0|curr_state\(3) $ (((!\FSM0|curr_state\(1) & \FSM0|curr_state\(2)))))) # (!\FSM0|curr_state\(0) & ((\FSM0|curr_state\(3)) # ((\FSM0|curr_state\(2)) # (!\FSM0|curr_state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(3),
	datab => \FSM0|curr_state\(0),
	datac => \FSM0|curr_state\(1),
	datad => \FSM0|curr_state\(2),
	combout => \display0|seg_f~0_combout\);

-- Location: LCCOMB_X60_Y45_N0
\display0|seg_g~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display0|seg_g~0_combout\ = (\FSM0|curr_state\(0) & ((\FSM0|curr_state\(3)) # (\FSM0|curr_state\(1) $ (\FSM0|curr_state\(2))))) # (!\FSM0|curr_state\(0) & ((\FSM0|curr_state\(1)) # (\FSM0|curr_state\(3) $ (\FSM0|curr_state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|curr_state\(3),
	datab => \FSM0|curr_state\(0),
	datac => \FSM0|curr_state\(1),
	datad => \FSM0|curr_state\(2),
	combout => \display0|seg_g~0_combout\);

-- Location: LCCOMB_X61_Y46_N8
\display1|seg_a~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display1|seg_a~0_combout\ = (PC(2) & ((PC(1)) # (PC(0) $ (PC(3))))) # (!PC(2) & ((PC(1) $ (PC(3))) # (!PC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => PC(2),
	datac => PC(1),
	datad => PC(3),
	combout => \display1|seg_a~0_combout\);

-- Location: LCCOMB_X61_Y46_N26
\display1|seg_b~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display1|seg_b~0_combout\ = (PC(1) & ((PC(0) & ((!PC(3)))) # (!PC(0) & (!PC(2))))) # (!PC(1) & ((PC(0) $ (!PC(3))) # (!PC(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => PC(2),
	datac => PC(1),
	datad => PC(3),
	combout => \display1|seg_b~0_combout\);

-- Location: LCCOMB_X61_Y46_N28
\display1|seg_c~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display1|seg_c~0_combout\ = (PC(2) & (((PC(0) & !PC(1))) # (!PC(3)))) # (!PC(2) & ((PC(0)) # ((PC(3)) # (!PC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => PC(2),
	datac => PC(1),
	datad => PC(3),
	combout => \display1|seg_c~0_combout\);

-- Location: LCCOMB_X61_Y46_N6
\display1|seg_d~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display1|seg_d~0_combout\ = (PC(1) & ((PC(0) & (!PC(2))) # (!PC(0) & ((PC(2)) # (!PC(3)))))) # (!PC(1) & ((PC(3)) # (PC(0) $ (!PC(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => PC(2),
	datac => PC(1),
	datad => PC(3),
	combout => \display1|seg_d~0_combout\);

-- Location: LCCOMB_X61_Y46_N16
\display1|seg_e~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display1|seg_e~0_combout\ = (PC(1) & (((PC(3))) # (!PC(0)))) # (!PC(1) & ((PC(2) & ((PC(3)))) # (!PC(2) & (!PC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => PC(2),
	datac => PC(1),
	datad => PC(3),
	combout => \display1|seg_e~0_combout\);

-- Location: LCCOMB_X61_Y46_N2
\display1|seg_f~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display1|seg_f~0_combout\ = (PC(0) & (PC(3) $ (((PC(2) & !PC(1)))))) # (!PC(0) & ((PC(2)) # ((PC(3)) # (!PC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => PC(2),
	datac => PC(1),
	datad => PC(3),
	combout => \display1|seg_f~0_combout\);

-- Location: LCCOMB_X61_Y46_N12
\display1|seg_g~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \display1|seg_g~0_combout\ = (PC(0) & ((PC(3)) # (PC(2) $ (PC(1))))) # (!PC(0) & ((PC(1)) # (PC(2) $ (PC(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => PC(2),
	datac => PC(1),
	datad => PC(3),
	combout => \display1|seg_g~0_combout\);

-- Location: LCCOMB_X42_Y1_N30
\VGA0|clock_25MHz~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|clock_25MHz~0_combout\ = !\VGA0|clock_25MHz~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA0|clock_25MHz~q\,
	combout => \VGA0|clock_25MHz~0_combout\);

-- Location: FF_X42_Y1_N31
\VGA0|clock_25MHz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MAX10_CLK1_50~input_o\,
	d => \VGA0|clock_25MHz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|clock_25MHz~q\);

-- Location: CLKCTRL_G15
\VGA0|clock_25MHz~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \VGA0|clock_25MHz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \VGA0|clock_25MHz~clkctrl_outclk\);

-- Location: LCCOMB_X54_Y37_N6
\VGA0|SYNC|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|Add0~0_combout\ = \VGA0|SYNC|h_count\(0) $ (VCC)
-- \VGA0|SYNC|Add0~1\ = CARRY(\VGA0|SYNC|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|h_count\(0),
	datad => VCC,
	combout => \VGA0|SYNC|Add0~0_combout\,
	cout => \VGA0|SYNC|Add0~1\);

-- Location: FF_X54_Y37_N7
\VGA0|SYNC|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|h_count\(0));

-- Location: LCCOMB_X54_Y37_N8
\VGA0|SYNC|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|Add0~2_combout\ = (\VGA0|SYNC|h_count\(1) & (!\VGA0|SYNC|Add0~1\)) # (!\VGA0|SYNC|h_count\(1) & ((\VGA0|SYNC|Add0~1\) # (GND)))
-- \VGA0|SYNC|Add0~3\ = CARRY((!\VGA0|SYNC|Add0~1\) # (!\VGA0|SYNC|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|SYNC|h_count\(1),
	datad => VCC,
	cin => \VGA0|SYNC|Add0~1\,
	combout => \VGA0|SYNC|Add0~2_combout\,
	cout => \VGA0|SYNC|Add0~3\);

-- Location: FF_X54_Y37_N9
\VGA0|SYNC|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|h_count\(1));

-- Location: LCCOMB_X54_Y37_N10
\VGA0|SYNC|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|Add0~4_combout\ = (\VGA0|SYNC|h_count\(2) & (\VGA0|SYNC|Add0~3\ $ (GND))) # (!\VGA0|SYNC|h_count\(2) & (!\VGA0|SYNC|Add0~3\ & VCC))
-- \VGA0|SYNC|Add0~5\ = CARRY((\VGA0|SYNC|h_count\(2) & !\VGA0|SYNC|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|h_count\(2),
	datad => VCC,
	cin => \VGA0|SYNC|Add0~3\,
	combout => \VGA0|SYNC|Add0~4_combout\,
	cout => \VGA0|SYNC|Add0~5\);

-- Location: FF_X54_Y37_N11
\VGA0|SYNC|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|h_count\(2));

-- Location: LCCOMB_X54_Y37_N12
\VGA0|SYNC|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|Add0~6_combout\ = (\VGA0|SYNC|h_count\(3) & (!\VGA0|SYNC|Add0~5\)) # (!\VGA0|SYNC|h_count\(3) & ((\VGA0|SYNC|Add0~5\) # (GND)))
-- \VGA0|SYNC|Add0~7\ = CARRY((!\VGA0|SYNC|Add0~5\) # (!\VGA0|SYNC|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|SYNC|h_count\(3),
	datad => VCC,
	cin => \VGA0|SYNC|Add0~5\,
	combout => \VGA0|SYNC|Add0~6_combout\,
	cout => \VGA0|SYNC|Add0~7\);

-- Location: FF_X54_Y37_N13
\VGA0|SYNC|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|h_count\(3));

-- Location: LCCOMB_X54_Y37_N14
\VGA0|SYNC|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|Add0~8_combout\ = (\VGA0|SYNC|h_count\(4) & (\VGA0|SYNC|Add0~7\ $ (GND))) # (!\VGA0|SYNC|h_count\(4) & (!\VGA0|SYNC|Add0~7\ & VCC))
-- \VGA0|SYNC|Add0~9\ = CARRY((\VGA0|SYNC|h_count\(4) & !\VGA0|SYNC|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|SYNC|h_count\(4),
	datad => VCC,
	cin => \VGA0|SYNC|Add0~7\,
	combout => \VGA0|SYNC|Add0~8_combout\,
	cout => \VGA0|SYNC|Add0~9\);

-- Location: FF_X54_Y37_N15
\VGA0|SYNC|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|h_count\(4));

-- Location: LCCOMB_X54_Y37_N2
\VGA0|SYNC|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|Equal0~0_combout\ = (\VGA0|SYNC|h_count\(0) & (\VGA0|SYNC|h_count\(4) & (\VGA0|SYNC|h_count\(1) & \VGA0|SYNC|h_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|h_count\(0),
	datab => \VGA0|SYNC|h_count\(4),
	datac => \VGA0|SYNC|h_count\(1),
	datad => \VGA0|SYNC|h_count\(3),
	combout => \VGA0|SYNC|Equal0~0_combout\);

-- Location: LCCOMB_X54_Y37_N20
\VGA0|SYNC|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|Add0~14_combout\ = (\VGA0|SYNC|h_count\(7) & (!\VGA0|SYNC|Add0~13\)) # (!\VGA0|SYNC|h_count\(7) & ((\VGA0|SYNC|Add0~13\) # (GND)))
-- \VGA0|SYNC|Add0~15\ = CARRY((!\VGA0|SYNC|Add0~13\) # (!\VGA0|SYNC|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|SYNC|h_count\(7),
	datad => VCC,
	cin => \VGA0|SYNC|Add0~13\,
	combout => \VGA0|SYNC|Add0~14_combout\,
	cout => \VGA0|SYNC|Add0~15\);

-- Location: LCCOMB_X54_Y37_N22
\VGA0|SYNC|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|Add0~16_combout\ = (\VGA0|SYNC|h_count\(8) & (\VGA0|SYNC|Add0~15\ $ (GND))) # (!\VGA0|SYNC|h_count\(8) & (!\VGA0|SYNC|Add0~15\ & VCC))
-- \VGA0|SYNC|Add0~17\ = CARRY((\VGA0|SYNC|h_count\(8) & !\VGA0|SYNC|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|h_count\(8),
	datad => VCC,
	cin => \VGA0|SYNC|Add0~15\,
	combout => \VGA0|SYNC|Add0~16_combout\,
	cout => \VGA0|SYNC|Add0~17\);

-- Location: LCCOMB_X54_Y37_N24
\VGA0|SYNC|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|Add0~18_combout\ = \VGA0|SYNC|Add0~17\ $ (\VGA0|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA0|SYNC|h_count\(9),
	cin => \VGA0|SYNC|Add0~17\,
	combout => \VGA0|SYNC|Add0~18_combout\);

-- Location: LCCOMB_X55_Y37_N4
\VGA0|SYNC|h_count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|h_count~1_combout\ = (\VGA0|SYNC|Add0~18_combout\ & (((!\VGA0|SYNC|Equal0~1_combout\) # (!\VGA0|SYNC|Equal0~2_combout\)) # (!\VGA0|SYNC|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|Equal0~0_combout\,
	datab => \VGA0|SYNC|Equal0~2_combout\,
	datac => \VGA0|SYNC|Add0~18_combout\,
	datad => \VGA0|SYNC|Equal0~1_combout\,
	combout => \VGA0|SYNC|h_count~1_combout\);

-- Location: FF_X55_Y37_N5
\VGA0|SYNC|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|h_count\(9));

-- Location: LCCOMB_X54_Y38_N2
\VGA0|SYNC|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|Equal0~1_combout\ = (!\VGA0|SYNC|h_count\(6) & \VGA0|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|SYNC|h_count\(6),
	datad => \VGA0|SYNC|h_count\(9),
	combout => \VGA0|SYNC|Equal0~1_combout\);

-- Location: LCCOMB_X55_Y37_N2
\VGA0|SYNC|h_count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|h_count~0_combout\ = (\VGA0|SYNC|Add0~16_combout\ & (((!\VGA0|SYNC|Equal0~1_combout\) # (!\VGA0|SYNC|Equal0~2_combout\)) # (!\VGA0|SYNC|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|Equal0~0_combout\,
	datab => \VGA0|SYNC|Equal0~2_combout\,
	datac => \VGA0|SYNC|Add0~16_combout\,
	datad => \VGA0|SYNC|Equal0~1_combout\,
	combout => \VGA0|SYNC|h_count~0_combout\);

-- Location: FF_X55_Y37_N3
\VGA0|SYNC|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|h_count\(8));

-- Location: LCCOMB_X54_Y37_N4
\VGA0|SYNC|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|Equal0~2_combout\ = (\VGA0|SYNC|h_count\(2) & (!\VGA0|SYNC|h_count\(7) & (!\VGA0|SYNC|h_count\(5) & \VGA0|SYNC|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|h_count\(2),
	datab => \VGA0|SYNC|h_count\(7),
	datac => \VGA0|SYNC|h_count\(5),
	datad => \VGA0|SYNC|h_count\(8),
	combout => \VGA0|SYNC|Equal0~2_combout\);

-- Location: LCCOMB_X54_Y37_N16
\VGA0|SYNC|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|Add0~10_combout\ = (\VGA0|SYNC|h_count\(5) & (!\VGA0|SYNC|Add0~9\)) # (!\VGA0|SYNC|h_count\(5) & ((\VGA0|SYNC|Add0~9\) # (GND)))
-- \VGA0|SYNC|Add0~11\ = CARRY((!\VGA0|SYNC|Add0~9\) # (!\VGA0|SYNC|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|h_count\(5),
	datad => VCC,
	cin => \VGA0|SYNC|Add0~9\,
	combout => \VGA0|SYNC|Add0~10_combout\,
	cout => \VGA0|SYNC|Add0~11\);

-- Location: LCCOMB_X55_Y37_N30
\VGA0|SYNC|h_count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|h_count~2_combout\ = (\VGA0|SYNC|Add0~10_combout\ & (((!\VGA0|SYNC|Equal0~1_combout\) # (!\VGA0|SYNC|Equal0~2_combout\)) # (!\VGA0|SYNC|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|Equal0~0_combout\,
	datab => \VGA0|SYNC|Equal0~2_combout\,
	datac => \VGA0|SYNC|Add0~10_combout\,
	datad => \VGA0|SYNC|Equal0~1_combout\,
	combout => \VGA0|SYNC|h_count~2_combout\);

-- Location: FF_X55_Y37_N31
\VGA0|SYNC|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|h_count\(5));

-- Location: LCCOMB_X54_Y37_N18
\VGA0|SYNC|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|Add0~12_combout\ = (\VGA0|SYNC|h_count\(6) & (\VGA0|SYNC|Add0~11\ $ (GND))) # (!\VGA0|SYNC|h_count\(6) & (!\VGA0|SYNC|Add0~11\ & VCC))
-- \VGA0|SYNC|Add0~13\ = CARRY((\VGA0|SYNC|h_count\(6) & !\VGA0|SYNC|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|SYNC|h_count\(6),
	datad => VCC,
	cin => \VGA0|SYNC|Add0~11\,
	combout => \VGA0|SYNC|Add0~12_combout\,
	cout => \VGA0|SYNC|Add0~13\);

-- Location: FF_X54_Y37_N19
\VGA0|SYNC|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|h_count\(6));

-- Location: FF_X54_Y37_N21
\VGA0|SYNC|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|h_count\(7));

-- Location: LCCOMB_X54_Y38_N22
\VGA0|SYNC|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|process_0~0_combout\ = (\VGA0|SYNC|h_count\(7) & (!\VGA0|SYNC|h_count\(8) & \VGA0|SYNC|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|h_count\(7),
	datab => \VGA0|SYNC|h_count\(8),
	datad => \VGA0|SYNC|h_count\(9),
	combout => \VGA0|SYNC|process_0~0_combout\);

-- Location: LCCOMB_X54_Y37_N0
\VGA0|SYNC|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|process_0~1_combout\ = (\VGA0|SYNC|h_count\(3)) # ((\VGA0|SYNC|h_count\(0) & (!\VGA0|SYNC|h_count\(5) & \VGA0|SYNC|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|h_count\(0),
	datab => \VGA0|SYNC|h_count\(3),
	datac => \VGA0|SYNC|h_count\(5),
	datad => \VGA0|SYNC|h_count\(1),
	combout => \VGA0|SYNC|process_0~1_combout\);

-- Location: LCCOMB_X54_Y38_N0
\VGA0|SYNC|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|process_0~2_combout\ = (\VGA0|SYNC|h_count\(4) & ((\VGA0|SYNC|process_0~1_combout\) # (\VGA0|SYNC|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|SYNC|process_0~1_combout\,
	datac => \VGA0|SYNC|h_count\(4),
	datad => \VGA0|SYNC|h_count\(2),
	combout => \VGA0|SYNC|process_0~2_combout\);

-- Location: LCCOMB_X54_Y38_N30
\VGA0|SYNC|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|process_0~3_combout\ = ((\VGA0|SYNC|process_0~2_combout\ & (\VGA0|SYNC|h_count\(6) & \VGA0|SYNC|h_count\(5))) # (!\VGA0|SYNC|process_0~2_combout\ & (!\VGA0|SYNC|h_count\(6) & !\VGA0|SYNC|h_count\(5)))) # (!\VGA0|SYNC|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|process_0~0_combout\,
	datab => \VGA0|SYNC|process_0~2_combout\,
	datac => \VGA0|SYNC|h_count\(6),
	datad => \VGA0|SYNC|h_count\(5),
	combout => \VGA0|SYNC|process_0~3_combout\);

-- Location: FF_X54_Y38_N31
\VGA0|SYNC|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|horiz_sync~q\);

-- Location: FF_X54_Y38_N9
\VGA0|SYNC|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	asdata => \VGA0|SYNC|horiz_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|horiz_sync_out~q\);

-- Location: LCCOMB_X54_Y37_N30
\VGA0|SYNC|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|Equal1~0_combout\ = (\VGA0|SYNC|h_count\(2)) # (((\VGA0|SYNC|h_count\(8)) # (!\VGA0|SYNC|h_count\(5))) # (!\VGA0|SYNC|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|h_count\(2),
	datab => \VGA0|SYNC|h_count\(7),
	datac => \VGA0|SYNC|h_count\(5),
	datad => \VGA0|SYNC|h_count\(8),
	combout => \VGA0|SYNC|Equal1~0_combout\);

-- Location: LCCOMB_X52_Y37_N10
\VGA0|SYNC|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|Add1~0_combout\ = \VGA0|SYNC|v_count\(0) $ (VCC)
-- \VGA0|SYNC|Add1~1\ = CARRY(\VGA0|SYNC|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|SYNC|v_count\(0),
	datad => VCC,
	combout => \VGA0|SYNC|Add1~0_combout\,
	cout => \VGA0|SYNC|Add1~1\);

-- Location: LCCOMB_X55_Y37_N8
\VGA0|SYNC|v_count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|v_count~0_combout\ = (\VGA0|SYNC|Add1~0_combout\ & \VGA0|SYNC|process_0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|Add1~0_combout\,
	datad => \VGA0|SYNC|process_0~11_combout\,
	combout => \VGA0|SYNC|v_count~0_combout\);

-- Location: LCCOMB_X55_Y37_N20
\VGA0|SYNC|v_count[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|v_count[5]~1_combout\ = ((\VGA0|SYNC|Equal0~0_combout\ & (\VGA0|SYNC|Equal0~1_combout\ & !\VGA0|SYNC|Equal1~0_combout\))) # (!\VGA0|SYNC|process_0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|Equal0~0_combout\,
	datab => \VGA0|SYNC|Equal0~1_combout\,
	datac => \VGA0|SYNC|Equal1~0_combout\,
	datad => \VGA0|SYNC|process_0~11_combout\,
	combout => \VGA0|SYNC|v_count[5]~1_combout\);

-- Location: FF_X55_Y37_N9
\VGA0|SYNC|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|v_count~0_combout\,
	ena => \VGA0|SYNC|v_count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|v_count\(0));

-- Location: LCCOMB_X52_Y37_N12
\VGA0|SYNC|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|Add1~2_combout\ = (\VGA0|SYNC|v_count\(1) & (!\VGA0|SYNC|Add1~1\)) # (!\VGA0|SYNC|v_count\(1) & ((\VGA0|SYNC|Add1~1\) # (GND)))
-- \VGA0|SYNC|Add1~3\ = CARRY((!\VGA0|SYNC|Add1~1\) # (!\VGA0|SYNC|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|v_count\(1),
	datad => VCC,
	cin => \VGA0|SYNC|Add1~1\,
	combout => \VGA0|SYNC|Add1~2_combout\,
	cout => \VGA0|SYNC|Add1~3\);

-- Location: LCCOMB_X55_Y37_N26
\VGA0|SYNC|v_count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|v_count~2_combout\ = (\VGA0|SYNC|Add1~2_combout\ & \VGA0|SYNC|process_0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|SYNC|Add1~2_combout\,
	datad => \VGA0|SYNC|process_0~11_combout\,
	combout => \VGA0|SYNC|v_count~2_combout\);

-- Location: FF_X55_Y37_N27
\VGA0|SYNC|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|v_count~2_combout\,
	ena => \VGA0|SYNC|v_count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|v_count\(1));

-- Location: LCCOMB_X52_Y37_N14
\VGA0|SYNC|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|Add1~4_combout\ = (\VGA0|SYNC|v_count\(2) & (\VGA0|SYNC|Add1~3\ $ (GND))) # (!\VGA0|SYNC|v_count\(2) & (!\VGA0|SYNC|Add1~3\ & VCC))
-- \VGA0|SYNC|Add1~5\ = CARRY((\VGA0|SYNC|v_count\(2) & !\VGA0|SYNC|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|SYNC|v_count\(2),
	datad => VCC,
	cin => \VGA0|SYNC|Add1~3\,
	combout => \VGA0|SYNC|Add1~4_combout\,
	cout => \VGA0|SYNC|Add1~5\);

-- Location: LCCOMB_X52_Y37_N8
\VGA0|SYNC|v_count[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|v_count[2]~4_combout\ = (\VGA0|SYNC|v_count[7]~3_combout\ & ((\VGA0|SYNC|Add1~4_combout\) # ((\VGA0|SYNC|v_count\(2) & !\VGA0|SYNC|v_count[5]~1_combout\)))) # (!\VGA0|SYNC|v_count[7]~3_combout\ & (((\VGA0|SYNC|v_count\(2) & 
-- !\VGA0|SYNC|v_count[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|v_count[7]~3_combout\,
	datab => \VGA0|SYNC|Add1~4_combout\,
	datac => \VGA0|SYNC|v_count\(2),
	datad => \VGA0|SYNC|v_count[5]~1_combout\,
	combout => \VGA0|SYNC|v_count[2]~4_combout\);

-- Location: FF_X52_Y37_N9
\VGA0|SYNC|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|v_count[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|v_count\(2));

-- Location: LCCOMB_X52_Y37_N16
\VGA0|SYNC|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|Add1~6_combout\ = (\VGA0|SYNC|v_count\(3) & (!\VGA0|SYNC|Add1~5\)) # (!\VGA0|SYNC|v_count\(3) & ((\VGA0|SYNC|Add1~5\) # (GND)))
-- \VGA0|SYNC|Add1~7\ = CARRY((!\VGA0|SYNC|Add1~5\) # (!\VGA0|SYNC|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|SYNC|v_count\(3),
	datad => VCC,
	cin => \VGA0|SYNC|Add1~5\,
	combout => \VGA0|SYNC|Add1~6_combout\,
	cout => \VGA0|SYNC|Add1~7\);

-- Location: LCCOMB_X52_Y37_N2
\VGA0|SYNC|v_count[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|v_count[3]~5_combout\ = (\VGA0|SYNC|v_count[7]~3_combout\ & ((\VGA0|SYNC|Add1~6_combout\) # ((\VGA0|SYNC|v_count\(3) & !\VGA0|SYNC|v_count[5]~1_combout\)))) # (!\VGA0|SYNC|v_count[7]~3_combout\ & (((\VGA0|SYNC|v_count\(3) & 
-- !\VGA0|SYNC|v_count[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|v_count[7]~3_combout\,
	datab => \VGA0|SYNC|Add1~6_combout\,
	datac => \VGA0|SYNC|v_count\(3),
	datad => \VGA0|SYNC|v_count[5]~1_combout\,
	combout => \VGA0|SYNC|v_count[3]~5_combout\);

-- Location: FF_X52_Y37_N3
\VGA0|SYNC|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|v_count[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|v_count\(3));

-- Location: LCCOMB_X52_Y37_N18
\VGA0|SYNC|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|Add1~8_combout\ = (\VGA0|SYNC|v_count\(4) & (\VGA0|SYNC|Add1~7\ $ (GND))) # (!\VGA0|SYNC|v_count\(4) & (!\VGA0|SYNC|Add1~7\ & VCC))
-- \VGA0|SYNC|Add1~9\ = CARRY((\VGA0|SYNC|v_count\(4) & !\VGA0|SYNC|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|SYNC|v_count\(4),
	datad => VCC,
	cin => \VGA0|SYNC|Add1~7\,
	combout => \VGA0|SYNC|Add1~8_combout\,
	cout => \VGA0|SYNC|Add1~9\);

-- Location: LCCOMB_X52_Y37_N20
\VGA0|SYNC|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|Add1~10_combout\ = (\VGA0|SYNC|v_count\(5) & (!\VGA0|SYNC|Add1~9\)) # (!\VGA0|SYNC|v_count\(5) & ((\VGA0|SYNC|Add1~9\) # (GND)))
-- \VGA0|SYNC|Add1~11\ = CARRY((!\VGA0|SYNC|Add1~9\) # (!\VGA0|SYNC|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|SYNC|v_count\(5),
	datad => VCC,
	cin => \VGA0|SYNC|Add1~9\,
	combout => \VGA0|SYNC|Add1~10_combout\,
	cout => \VGA0|SYNC|Add1~11\);

-- Location: LCCOMB_X55_Y37_N14
\VGA0|SYNC|v_count[5]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|v_count[5]~8_combout\ = (\VGA0|SYNC|v_count[7]~3_combout\ & ((\VGA0|SYNC|Add1~10_combout\) # ((\VGA0|SYNC|v_count\(5) & !\VGA0|SYNC|v_count[5]~1_combout\)))) # (!\VGA0|SYNC|v_count[7]~3_combout\ & (((\VGA0|SYNC|v_count\(5) & 
-- !\VGA0|SYNC|v_count[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|v_count[7]~3_combout\,
	datab => \VGA0|SYNC|Add1~10_combout\,
	datac => \VGA0|SYNC|v_count\(5),
	datad => \VGA0|SYNC|v_count[5]~1_combout\,
	combout => \VGA0|SYNC|v_count[5]~8_combout\);

-- Location: FF_X55_Y37_N15
\VGA0|SYNC|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|v_count[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|v_count\(5));

-- Location: LCCOMB_X52_Y37_N22
\VGA0|SYNC|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|Add1~12_combout\ = (\VGA0|SYNC|v_count\(6) & (\VGA0|SYNC|Add1~11\ $ (GND))) # (!\VGA0|SYNC|v_count\(6) & (!\VGA0|SYNC|Add1~11\ & VCC))
-- \VGA0|SYNC|Add1~13\ = CARRY((\VGA0|SYNC|v_count\(6) & !\VGA0|SYNC|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|v_count\(6),
	datad => VCC,
	cin => \VGA0|SYNC|Add1~11\,
	combout => \VGA0|SYNC|Add1~12_combout\,
	cout => \VGA0|SYNC|Add1~13\);

-- Location: LCCOMB_X55_Y37_N0
\VGA0|SYNC|v_count[6]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|v_count[6]~9_combout\ = (\VGA0|SYNC|v_count[7]~3_combout\ & ((\VGA0|SYNC|Add1~12_combout\) # ((\VGA0|SYNC|v_count\(6) & !\VGA0|SYNC|v_count[5]~1_combout\)))) # (!\VGA0|SYNC|v_count[7]~3_combout\ & (((\VGA0|SYNC|v_count\(6) & 
-- !\VGA0|SYNC|v_count[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|v_count[7]~3_combout\,
	datab => \VGA0|SYNC|Add1~12_combout\,
	datac => \VGA0|SYNC|v_count\(6),
	datad => \VGA0|SYNC|v_count[5]~1_combout\,
	combout => \VGA0|SYNC|v_count[6]~9_combout\);

-- Location: FF_X55_Y37_N1
\VGA0|SYNC|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|v_count[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|v_count\(6));

-- Location: LCCOMB_X52_Y37_N24
\VGA0|SYNC|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|Add1~14_combout\ = (\VGA0|SYNC|v_count\(7) & (!\VGA0|SYNC|Add1~13\)) # (!\VGA0|SYNC|v_count\(7) & ((\VGA0|SYNC|Add1~13\) # (GND)))
-- \VGA0|SYNC|Add1~15\ = CARRY((!\VGA0|SYNC|Add1~13\) # (!\VGA0|SYNC|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|SYNC|v_count\(7),
	datad => VCC,
	cin => \VGA0|SYNC|Add1~13\,
	combout => \VGA0|SYNC|Add1~14_combout\,
	cout => \VGA0|SYNC|Add1~15\);

-- Location: LCCOMB_X52_Y37_N0
\VGA0|SYNC|v_count[7]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|v_count[7]~10_combout\ = (\VGA0|SYNC|v_count[7]~3_combout\ & ((\VGA0|SYNC|Add1~14_combout\) # ((\VGA0|SYNC|v_count\(7) & !\VGA0|SYNC|v_count[5]~1_combout\)))) # (!\VGA0|SYNC|v_count[7]~3_combout\ & (((\VGA0|SYNC|v_count\(7) & 
-- !\VGA0|SYNC|v_count[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|v_count[7]~3_combout\,
	datab => \VGA0|SYNC|Add1~14_combout\,
	datac => \VGA0|SYNC|v_count\(7),
	datad => \VGA0|SYNC|v_count[5]~1_combout\,
	combout => \VGA0|SYNC|v_count[7]~10_combout\);

-- Location: FF_X52_Y37_N1
\VGA0|SYNC|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|v_count[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|v_count\(7));

-- Location: LCCOMB_X52_Y37_N26
\VGA0|SYNC|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|Add1~16_combout\ = (\VGA0|SYNC|v_count\(8) & (\VGA0|SYNC|Add1~15\ $ (GND))) # (!\VGA0|SYNC|v_count\(8) & (!\VGA0|SYNC|Add1~15\ & VCC))
-- \VGA0|SYNC|Add1~17\ = CARRY((\VGA0|SYNC|v_count\(8) & !\VGA0|SYNC|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|v_count\(8),
	datad => VCC,
	cin => \VGA0|SYNC|Add1~15\,
	combout => \VGA0|SYNC|Add1~16_combout\,
	cout => \VGA0|SYNC|Add1~17\);

-- Location: LCCOMB_X52_Y37_N30
\VGA0|SYNC|v_count[8]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|v_count[8]~11_combout\ = (\VGA0|SYNC|v_count[7]~3_combout\ & ((\VGA0|SYNC|Add1~16_combout\) # ((\VGA0|SYNC|v_count\(8) & !\VGA0|SYNC|v_count[5]~1_combout\)))) # (!\VGA0|SYNC|v_count[7]~3_combout\ & (((\VGA0|SYNC|v_count\(8) & 
-- !\VGA0|SYNC|v_count[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|v_count[7]~3_combout\,
	datab => \VGA0|SYNC|Add1~16_combout\,
	datac => \VGA0|SYNC|v_count\(8),
	datad => \VGA0|SYNC|v_count[5]~1_combout\,
	combout => \VGA0|SYNC|v_count[8]~11_combout\);

-- Location: FF_X52_Y37_N31
\VGA0|SYNC|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|v_count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|v_count\(8));

-- Location: LCCOMB_X52_Y37_N28
\VGA0|SYNC|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|Add1~18_combout\ = \VGA0|SYNC|Add1~17\ $ (\VGA0|SYNC|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA0|SYNC|v_count\(9),
	cin => \VGA0|SYNC|Add1~17\,
	combout => \VGA0|SYNC|Add1~18_combout\);

-- Location: LCCOMB_X52_Y37_N6
\VGA0|SYNC|v_count[9]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|v_count[9]~7_combout\ = (\VGA0|SYNC|v_count[7]~3_combout\ & ((\VGA0|SYNC|Add1~18_combout\) # ((\VGA0|SYNC|v_count\(9) & !\VGA0|SYNC|v_count[5]~1_combout\)))) # (!\VGA0|SYNC|v_count[7]~3_combout\ & (((\VGA0|SYNC|v_count\(9) & 
-- !\VGA0|SYNC|v_count[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|v_count[7]~3_combout\,
	datab => \VGA0|SYNC|Add1~18_combout\,
	datac => \VGA0|SYNC|v_count\(9),
	datad => \VGA0|SYNC|v_count[5]~1_combout\,
	combout => \VGA0|SYNC|v_count[9]~7_combout\);

-- Location: FF_X52_Y37_N7
\VGA0|SYNC|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|v_count[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|v_count\(9));

-- Location: LCCOMB_X55_Y37_N28
\VGA0|SYNC|process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|process_0~6_combout\ = (!\VGA0|SYNC|v_count\(4) & (!\VGA0|SYNC|v_count\(5) & ((!\VGA0|SYNC|v_count\(2)) # (!\VGA0|SYNC|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|v_count\(4),
	datab => \VGA0|SYNC|v_count\(3),
	datac => \VGA0|SYNC|v_count\(5),
	datad => \VGA0|SYNC|v_count\(2),
	combout => \VGA0|SYNC|process_0~6_combout\);

-- Location: LCCOMB_X55_Y37_N6
\VGA0|SYNC|process_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|process_0~7_combout\ = (!\VGA0|SYNC|v_count\(7) & (!\VGA0|SYNC|v_count\(8) & !\VGA0|SYNC|v_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|v_count\(7),
	datac => \VGA0|SYNC|v_count\(8),
	datad => \VGA0|SYNC|v_count\(6),
	combout => \VGA0|SYNC|process_0~7_combout\);

-- Location: LCCOMB_X55_Y37_N24
\VGA0|SYNC|process_0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|process_0~8_combout\ = (((\VGA0|SYNC|process_0~6_combout\ & \VGA0|SYNC|process_0~7_combout\)) # (!\VGA0|SYNC|h_count\(9))) # (!\VGA0|SYNC|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|v_count\(9),
	datab => \VGA0|SYNC|process_0~6_combout\,
	datac => \VGA0|SYNC|h_count\(9),
	datad => \VGA0|SYNC|process_0~7_combout\,
	combout => \VGA0|SYNC|process_0~8_combout\);

-- Location: LCCOMB_X54_Y37_N26
\VGA0|SYNC|process_0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|process_0~9_combout\ = ((!\VGA0|SYNC|h_count\(2) & ((!\VGA0|SYNC|h_count\(1)) # (!\VGA0|SYNC|h_count\(0))))) # (!\VGA0|SYNC|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|h_count\(0),
	datab => \VGA0|SYNC|h_count\(3),
	datac => \VGA0|SYNC|h_count\(1),
	datad => \VGA0|SYNC|h_count\(2),
	combout => \VGA0|SYNC|process_0~9_combout\);

-- Location: LCCOMB_X54_Y37_N28
\VGA0|SYNC|process_0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|process_0~10_combout\ = (!\VGA0|SYNC|h_count\(6) & ((\VGA0|SYNC|process_0~9_combout\) # ((!\VGA0|SYNC|h_count\(4)) # (!\VGA0|SYNC|h_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|process_0~9_combout\,
	datab => \VGA0|SYNC|h_count\(6),
	datac => \VGA0|SYNC|h_count\(5),
	datad => \VGA0|SYNC|h_count\(4),
	combout => \VGA0|SYNC|process_0~10_combout\);

-- Location: LCCOMB_X55_Y37_N18
\VGA0|SYNC|process_0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|process_0~11_combout\ = (\VGA0|SYNC|process_0~8_combout\) # ((!\VGA0|SYNC|h_count\(8) & ((\VGA0|SYNC|process_0~10_combout\) # (!\VGA0|SYNC|h_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|process_0~8_combout\,
	datab => \VGA0|SYNC|h_count\(7),
	datac => \VGA0|SYNC|h_count\(8),
	datad => \VGA0|SYNC|process_0~10_combout\,
	combout => \VGA0|SYNC|process_0~11_combout\);

-- Location: LCCOMB_X55_Y37_N22
\VGA0|SYNC|v_count[7]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|v_count[7]~3_combout\ = (\VGA0|SYNC|Equal0~0_combout\ & (\VGA0|SYNC|Equal0~1_combout\ & (!\VGA0|SYNC|Equal1~0_combout\ & \VGA0|SYNC|process_0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|Equal0~0_combout\,
	datab => \VGA0|SYNC|Equal0~1_combout\,
	datac => \VGA0|SYNC|Equal1~0_combout\,
	datad => \VGA0|SYNC|process_0~11_combout\,
	combout => \VGA0|SYNC|v_count[7]~3_combout\);

-- Location: LCCOMB_X52_Y37_N4
\VGA0|SYNC|v_count[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|v_count[4]~6_combout\ = (\VGA0|SYNC|v_count[7]~3_combout\ & ((\VGA0|SYNC|Add1~8_combout\) # ((\VGA0|SYNC|v_count\(4) & !\VGA0|SYNC|v_count[5]~1_combout\)))) # (!\VGA0|SYNC|v_count[7]~3_combout\ & (((\VGA0|SYNC|v_count\(4) & 
-- !\VGA0|SYNC|v_count[5]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|v_count[7]~3_combout\,
	datab => \VGA0|SYNC|Add1~8_combout\,
	datac => \VGA0|SYNC|v_count\(4),
	datad => \VGA0|SYNC|v_count[5]~1_combout\,
	combout => \VGA0|SYNC|v_count[4]~6_combout\);

-- Location: FF_X52_Y37_N5
\VGA0|SYNC|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|v_count[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|v_count\(4));

-- Location: LCCOMB_X55_Y37_N10
\VGA0|SYNC|LessThan7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|LessThan7~0_combout\ = (\VGA0|SYNC|v_count\(8) & (\VGA0|SYNC|v_count\(6) & (\VGA0|SYNC|v_count\(5) & \VGA0|SYNC|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|v_count\(8),
	datab => \VGA0|SYNC|v_count\(6),
	datac => \VGA0|SYNC|v_count\(5),
	datad => \VGA0|SYNC|v_count\(7),
	combout => \VGA0|SYNC|LessThan7~0_combout\);

-- Location: LCCOMB_X55_Y37_N12
\VGA0|SYNC|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|process_0~4_combout\ = ((\VGA0|SYNC|v_count\(1) $ (!\VGA0|SYNC|v_count\(0))) # (!\VGA0|SYNC|v_count\(2))) # (!\VGA0|SYNC|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|v_count\(1),
	datab => \VGA0|SYNC|v_count\(3),
	datac => \VGA0|SYNC|v_count\(0),
	datad => \VGA0|SYNC|v_count\(2),
	combout => \VGA0|SYNC|process_0~4_combout\);

-- Location: LCCOMB_X55_Y37_N16
\VGA0|SYNC|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|process_0~5_combout\ = (\VGA0|SYNC|v_count\(4)) # (((\VGA0|SYNC|process_0~4_combout\) # (\VGA0|SYNC|v_count\(9))) # (!\VGA0|SYNC|LessThan7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|v_count\(4),
	datab => \VGA0|SYNC|LessThan7~0_combout\,
	datac => \VGA0|SYNC|process_0~4_combout\,
	datad => \VGA0|SYNC|v_count\(9),
	combout => \VGA0|SYNC|process_0~5_combout\);

-- Location: FF_X55_Y37_N17
\VGA0|SYNC|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|vert_sync~q\);

-- Location: FF_X47_Y33_N1
\VGA0|SYNC|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	asdata => \VGA0|SYNC|vert_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|vert_sync_out~q\);

-- Location: LCCOMB_X54_Y38_N10
\VGA0|SYNC|LessThan6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|LessThan6~0_combout\ = ((!\VGA0|SYNC|h_count\(7) & !\VGA0|SYNC|h_count\(8))) # (!\VGA0|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|h_count\(7),
	datab => \VGA0|SYNC|h_count\(9),
	datac => \VGA0|SYNC|h_count\(8),
	combout => \VGA0|SYNC|LessThan6~0_combout\);

-- Location: FF_X54_Y38_N11
\VGA0|SYNC|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|video_on_h~q\);

-- Location: LCCOMB_X52_Y38_N12
\VGA0|SYNC|pixel_row[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|pixel_row[1]~feeder_combout\ = \VGA0|SYNC|v_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA0|SYNC|v_count\(1),
	combout => \VGA0|SYNC|pixel_row[1]~feeder_combout\);

-- Location: LCCOMB_X54_Y38_N24
\VGA0|SYNC|LessThan7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|LessThan7~1_combout\ = (!\VGA0|SYNC|v_count\(9) & !\VGA0|SYNC|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|SYNC|v_count\(9),
	datad => \VGA0|SYNC|LessThan7~0_combout\,
	combout => \VGA0|SYNC|LessThan7~1_combout\);

-- Location: FF_X52_Y38_N13
\VGA0|SYNC|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|pixel_row[1]~feeder_combout\,
	ena => \VGA0|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|pixel_row\(1));

-- Location: LCCOMB_X52_Y38_N6
\VGA0|SYNC|pixel_row[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|pixel_row[2]~feeder_combout\ = \VGA0|SYNC|v_count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA0|SYNC|v_count\(2),
	combout => \VGA0|SYNC|pixel_row[2]~feeder_combout\);

-- Location: FF_X52_Y38_N7
\VGA0|SYNC|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|pixel_row[2]~feeder_combout\,
	ena => \VGA0|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|pixel_row\(2));

-- Location: FF_X52_Y38_N9
\VGA0|SYNC|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	asdata => \VGA0|SYNC|v_count\(3),
	sload => VCC,
	ena => \VGA0|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|pixel_row\(3));

-- Location: FF_X54_Y38_N3
\VGA0|SYNC|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	asdata => \VGA0|SYNC|h_count\(4),
	sload => VCC,
	ena => \VGA0|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|pixel_column\(4));

-- Location: FF_X55_Y39_N19
\VGA0|SYNC|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	asdata => \VGA0|SYNC|h_count\(5),
	sload => VCC,
	ena => \VGA0|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|pixel_column\(5));

-- Location: FF_X56_Y38_N27
\VGA0|SYNC|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	asdata => \VGA0|SYNC|v_count\(5),
	sload => VCC,
	ena => \VGA0|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|pixel_row\(5));

-- Location: LCCOMB_X56_Y38_N8
\VGA0|SYNC|pixel_row[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|pixel_row[6]~feeder_combout\ = \VGA0|SYNC|v_count\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA0|SYNC|v_count\(6),
	combout => \VGA0|SYNC|pixel_row[6]~feeder_combout\);

-- Location: FF_X56_Y38_N9
\VGA0|SYNC|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|pixel_row[6]~feeder_combout\,
	ena => \VGA0|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|pixel_row\(6));

-- Location: LCCOMB_X55_Y38_N16
\VGA0|SYNC|pixel_row[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|pixel_row[7]~feeder_combout\ = \VGA0|SYNC|v_count\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA0|SYNC|v_count\(7),
	combout => \VGA0|SYNC|pixel_row[7]~feeder_combout\);

-- Location: FF_X55_Y38_N17
\VGA0|SYNC|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|pixel_row[7]~feeder_combout\,
	ena => \VGA0|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|pixel_row\(7));

-- Location: FF_X56_Y39_N1
\VGA0|SYNC|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	asdata => \VGA0|SYNC|v_count\(8),
	sload => VCC,
	ena => \VGA0|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|pixel_row\(8));

-- Location: M9K_X53_Y39_N0
\VGA0|format_rom|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000008000200008000200008000140004C001200080000B0003000030008000170000C001000080002000048001700080003200010001200080003100010001200080002000018001A0008000150003000010008000040001000120008000120001000010008000200004800090008000200000C0010000C800320000C0005000800020000800020",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../src/format.mif",
	init_file_layout => "port_a",
	logical_ram_name => "DE10_LITE_VGA_Generator:VGA0|altsyncram:format_rom|altsyncram_emr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 60,
	port_a_logical_ram_width => 6,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \VGA0|clock_25MHz~clkctrl_outclk\,
	portaaddr => \VGA0|format_rom|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \VGA0|format_rom|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X54_Y38_N23
\VGA0|SYNC|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	asdata => \VGA0|SYNC|h_count\(6),
	sload => VCC,
	ena => \VGA0|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|pixel_column\(6));

-- Location: FF_X55_Y39_N9
\VGA0|SYNC|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	asdata => \VGA0|SYNC|h_count\(7),
	sload => VCC,
	ena => \VGA0|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|pixel_column\(7));

-- Location: FF_X55_Y39_N21
\VGA0|SYNC|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	asdata => \VGA0|SYNC|h_count\(8),
	sload => VCC,
	ena => \VGA0|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|pixel_column\(8));

-- Location: LCCOMB_X55_Y39_N6
\VGA0|Mux27~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux27~2_combout\ = (\VGA0|SYNC|pixel_column\(6) & (\VGA0|SYNC|pixel_column\(7) & (\VGA0|SYNC|pixel_column\(5) & !\VGA0|SYNC|pixel_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(6),
	datab => \VGA0|SYNC|pixel_column\(7),
	datac => \VGA0|SYNC|pixel_column\(5),
	datad => \VGA0|SYNC|pixel_column\(8),
	combout => \VGA0|Mux27~2_combout\);

-- Location: LCCOMB_X56_Y43_N12
\VGA0|Mux25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux25~1_combout\ = (\VGA0|SYNC|pixel_column\(4) & ((\ALU0|m2|m1|m3|out[8]~48_combout\))) # (!\VGA0|SYNC|pixel_column\(4) & (\ALU0|m2|m1|m3|out[12]~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(4),
	datab => \ALU0|m2|m1|m3|out[12]~44_combout\,
	datad => \ALU0|m2|m1|m3|out[8]~48_combout\,
	combout => \VGA0|Mux25~1_combout\);

-- Location: LCCOMB_X55_Y39_N2
\VGA0|Mux40~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~6_combout\ = (!\VGA0|SYNC|pixel_column\(6) & (!\VGA0|SYNC|pixel_column\(7) & (!\VGA0|SYNC|pixel_column\(5) & \VGA0|SYNC|pixel_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(6),
	datab => \VGA0|SYNC|pixel_column\(7),
	datac => \VGA0|SYNC|pixel_column\(5),
	datad => \VGA0|SYNC|pixel_column\(8),
	combout => \VGA0|Mux40~6_combout\);

-- Location: LCCOMB_X58_Y43_N4
\VGA0|Mux25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux25~0_combout\ = (\VGA0|Mux40~6_combout\ & ((\VGA0|SYNC|pixel_column\(4) & (\ALU0|m2|m3|out[0]~19_combout\)) # (!\VGA0|SYNC|pixel_column\(4) & ((\ALU0|m2|m3|out~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(4),
	datab => \ALU0|m2|m3|out[0]~19_combout\,
	datac => \VGA0|Mux40~6_combout\,
	datad => \ALU0|m2|m3|out~2_combout\,
	combout => \VGA0|Mux25~0_combout\);

-- Location: LCCOMB_X54_Y39_N26
\VGA0|Mux25~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux25~2_combout\ = (\VGA0|Mux25~0_combout\) # ((\VGA0|Mux27~2_combout\ & (\VGA0|Mux25~1_combout\ & !\FSM0|aludecod|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux27~2_combout\,
	datab => \VGA0|Mux25~1_combout\,
	datac => \FSM0|aludecod|Selector0~0_combout\,
	datad => \VGA0|Mux25~0_combout\,
	combout => \VGA0|Mux25~2_combout\);

-- Location: LCCOMB_X55_Y43_N22
\VGA0|Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux21~0_combout\ = (\VGA0|SYNC|pixel_column\(4) & (\Memory0|altsyncram_component|auto_generated|q_a\(0))) # (!\VGA0|SYNC|pixel_column\(4) & ((\Memory0|altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Memory0|altsyncram_component|auto_generated|q_a\(0),
	datac => \Memory0|altsyncram_component|auto_generated|q_a\(4),
	datad => \VGA0|SYNC|pixel_column\(4),
	combout => \VGA0|Mux21~0_combout\);

-- Location: LCCOMB_X55_Y43_N8
\VGA0|Mux21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux21~1_combout\ = (\VGA0|SYNC|pixel_column\(4) & ((\Memory0|altsyncram_component|auto_generated|q_a\(8)))) # (!\VGA0|SYNC|pixel_column\(4) & (\Memory0|altsyncram_component|auto_generated|q_a\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Memory0|altsyncram_component|auto_generated|q_a\(12),
	datac => \Memory0|altsyncram_component|auto_generated|q_a\(8),
	datad => \VGA0|SYNC|pixel_column\(4),
	combout => \VGA0|Mux21~1_combout\);

-- Location: LCCOMB_X54_Y43_N8
\VGA0|Mux21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux21~2_combout\ = (\VGA0|Mux40~6_combout\ & ((\VGA0|Mux21~0_combout\) # ((\VGA0|Mux21~1_combout\ & \VGA0|Mux27~2_combout\)))) # (!\VGA0|Mux40~6_combout\ & (((\VGA0|Mux21~1_combout\ & \VGA0|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux40~6_combout\,
	datab => \VGA0|Mux21~0_combout\,
	datac => \VGA0|Mux21~1_combout\,
	datad => \VGA0|Mux27~2_combout\,
	combout => \VGA0|Mux21~2_combout\);

-- Location: LCCOMB_X56_Y42_N2
\VGA0|Mux17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux17~0_combout\ = (\FSM0|cu_decoder|Mux0~0_combout\ & (\Result[12]~7_combout\)) # (!\FSM0|cu_decoder|Mux0~0_combout\ & ((PC(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Result[12]~7_combout\,
	datac => PC(12),
	datad => \FSM0|cu_decoder|Mux0~0_combout\,
	combout => \VGA0|Mux17~0_combout\);

-- Location: LCCOMB_X56_Y42_N26
\VGA0|Mux17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux17~1_combout\ = (\VGA0|Mux27~2_combout\ & ((\VGA0|SYNC|pixel_column\(4) & ((\Adr[8]~7_combout\))) # (!\VGA0|SYNC|pixel_column\(4) & (\VGA0|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux27~2_combout\,
	datab => \VGA0|SYNC|pixel_column\(4),
	datac => \VGA0|Mux17~0_combout\,
	datad => \Adr[8]~7_combout\,
	combout => \VGA0|Mux17~1_combout\);

-- Location: LCCOMB_X56_Y42_N4
\VGA0|Mux17~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux17~2_combout\ = (\Result[0]~31_combout\ & (\FSM0|cu_decoder|Mux0~0_combout\ & \VGA0|SYNC|pixel_column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[0]~31_combout\,
	datac => \FSM0|cu_decoder|Mux0~0_combout\,
	datad => \VGA0|SYNC|pixel_column\(4),
	combout => \VGA0|Mux17~2_combout\);

-- Location: LCCOMB_X56_Y42_N10
\VGA0|Mux17~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux17~3_combout\ = (\VGA0|SYNC|pixel_column\(4) & (((!\FSM0|cu_decoder|Mux0~0_combout\ & PC(0))))) # (!\VGA0|SYNC|pixel_column\(4) & (\Adr[4]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adr[4]~3_combout\,
	datab => \FSM0|cu_decoder|Mux0~0_combout\,
	datac => PC(0),
	datad => \VGA0|SYNC|pixel_column\(4),
	combout => \VGA0|Mux17~3_combout\);

-- Location: LCCOMB_X56_Y42_N6
\VGA0|Mux17~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux17~4_combout\ = (\VGA0|Mux17~1_combout\) # ((\VGA0|Mux40~6_combout\ & ((\VGA0|Mux17~2_combout\) # (\VGA0|Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux17~1_combout\,
	datab => \VGA0|Mux17~2_combout\,
	datac => \VGA0|Mux17~3_combout\,
	datad => \VGA0|Mux40~6_combout\,
	combout => \VGA0|Mux17~4_combout\);

-- Location: LCCOMB_X54_Y39_N20
\VGA0|Mux42~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux42~12_combout\ = (\VGA0|SYNC|pixel_row\(5) & ((\VGA0|SYNC|pixel_row\(6)) # ((\VGA0|Mux21~2_combout\)))) # (!\VGA0|SYNC|pixel_row\(5) & (!\VGA0|SYNC|pixel_row\(6) & ((\VGA0|Mux17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_row\(5),
	datab => \VGA0|SYNC|pixel_row\(6),
	datac => \VGA0|Mux21~2_combout\,
	datad => \VGA0|Mux17~4_combout\,
	combout => \VGA0|Mux42~12_combout\);

-- Location: FF_X55_Y39_N25
\VGA0|SYNC|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	asdata => \VGA0|SYNC|h_count\(9),
	sload => VCC,
	ena => \VGA0|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|pixel_column\(9));

-- Location: LCCOMB_X54_Y39_N14
\VGA0|Mux27~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux27~4_combout\ = (\VGA0|Mux27~2_combout\ & (!\VGA0|SYNC|pixel_column\(9) & (!\VGA0|SYNC|pixel_column\(4) & !\ALU0|m2|m3|out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux27~2_combout\,
	datab => \VGA0|SYNC|pixel_column\(9),
	datac => \VGA0|SYNC|pixel_column\(4),
	datad => \ALU0|m2|m3|out~0_combout\,
	combout => \VGA0|Mux27~4_combout\);

-- Location: LCCOMB_X54_Y39_N30
\VGA0|Mux42~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux42~13_combout\ = (\VGA0|Mux42~12_combout\ & (((\VGA0|Mux27~4_combout\) # (!\VGA0|SYNC|pixel_row\(6))))) # (!\VGA0|Mux42~12_combout\ & (\VGA0|Mux25~2_combout\ & ((\VGA0|SYNC|pixel_row\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux25~2_combout\,
	datab => \VGA0|Mux42~12_combout\,
	datac => \VGA0|Mux27~4_combout\,
	datad => \VGA0|SYNC|pixel_row\(6),
	combout => \VGA0|Mux42~13_combout\);

-- Location: LCCOMB_X56_Y42_N22
\VGA0|Mux42~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux42~8_combout\ = (!\VGA0|SYNC|pixel_row\(5) & ((\VGA0|SYNC|pixel_column\(4) & (PC(0))) # (!\VGA0|SYNC|pixel_column\(4) & ((PC(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(0),
	datab => \VGA0|SYNC|pixel_column\(4),
	datac => PC(4),
	datad => \VGA0|SYNC|pixel_row\(5),
	combout => \VGA0|Mux42~8_combout\);

-- Location: LCCOMB_X56_Y42_N18
\VGA0|Mux42~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux42~5_combout\ = (!\VGA0|SYNC|pixel_row\(5) & ((\VGA0|SYNC|pixel_column\(4) & (PC(8))) # (!\VGA0|SYNC|pixel_column\(4) & ((PC(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(4),
	datab => \VGA0|SYNC|pixel_row\(5),
	datac => PC(8),
	datad => PC(12),
	combout => \VGA0|Mux42~5_combout\);

-- Location: LCCOMB_X59_Y40_N0
\VGA0|Mux42~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux42~6_combout\ = (\VGA0|SYNC|pixel_row\(5) & ((\VGA0|SYNC|pixel_column\(4) & (Instr(8))) # (!\VGA0|SYNC|pixel_column\(4) & ((Instr(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(4),
	datab => \VGA0|SYNC|pixel_row\(5),
	datac => Instr(8),
	datad => Instr(12),
	combout => \VGA0|Mux42~6_combout\);

-- Location: LCCOMB_X55_Y42_N14
\VGA0|Mux42~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux42~7_combout\ = (\VGA0|Mux27~2_combout\ & ((\VGA0|Mux42~5_combout\) # (\VGA0|Mux42~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux27~2_combout\,
	datab => \VGA0|Mux42~5_combout\,
	datad => \VGA0|Mux42~6_combout\,
	combout => \VGA0|Mux42~7_combout\);

-- Location: LCCOMB_X55_Y42_N10
\VGA0|Mux42~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux42~9_combout\ = (\VGA0|SYNC|pixel_row\(5) & ((\VGA0|SYNC|pixel_column\(4) & (Instr(0))) # (!\VGA0|SYNC|pixel_column\(4) & ((Instr(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(4),
	datab => \VGA0|SYNC|pixel_row\(5),
	datac => Instr(0),
	datad => Instr(4),
	combout => \VGA0|Mux42~9_combout\);

-- Location: LCCOMB_X55_Y42_N24
\VGA0|Mux42~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux42~10_combout\ = (\VGA0|Mux42~7_combout\) # ((\VGA0|Mux40~6_combout\ & ((\VGA0|Mux42~8_combout\) # (\VGA0|Mux42~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux40~6_combout\,
	datab => \VGA0|Mux42~8_combout\,
	datac => \VGA0|Mux42~7_combout\,
	datad => \VGA0|Mux42~9_combout\,
	combout => \VGA0|Mux42~10_combout\);

-- Location: LCCOMB_X55_Y40_N0
\VGA0|Mux5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux5~1_combout\ = (\VGA0|SYNC|pixel_column\(7) & (\VGA0|SYNC|pixel_column\(5) & (\VGA0|char_address\(0) & !\VGA0|SYNC|pixel_column\(8)))) # (!\VGA0|SYNC|pixel_column\(7) & (\VGA0|SYNC|pixel_column\(8) & ((!\VGA0|char_address\(0)) # 
-- (!\VGA0|SYNC|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(5),
	datab => \VGA0|char_address\(0),
	datac => \VGA0|SYNC|pixel_column\(7),
	datad => \VGA0|SYNC|pixel_column\(8),
	combout => \VGA0|Mux5~1_combout\);

-- Location: LCCOMB_X55_Y40_N14
\VGA0|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux5~0_combout\ = (\VGA0|SYNC|pixel_column\(6)) # ((\VGA0|SYNC|pixel_column\(4) & !\VGA0|SYNC|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(6),
	datac => \VGA0|SYNC|pixel_column\(4),
	datad => \VGA0|SYNC|pixel_column\(5),
	combout => \VGA0|Mux5~0_combout\);

-- Location: LCCOMB_X55_Y40_N18
\VGA0|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux5~2_combout\ = (\VGA0|Mux5~1_combout\ & (!\VGA0|Mux5~0_combout\)) # (!\VGA0|Mux5~1_combout\ & ((\VGA0|char_address\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|Mux5~1_combout\,
	datac => \VGA0|Mux5~0_combout\,
	datad => \VGA0|char_address\(0),
	combout => \VGA0|Mux5~2_combout\);

-- Location: LCCOMB_X55_Y39_N22
\VGA0|Mux42~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux42~15_combout\ = (\VGA0|SYNC|pixel_row\(6) & (\VGA0|Mux42~10_combout\)) # (!\VGA0|SYNC|pixel_row\(6) & (((\VGA0|Mux5~2_combout\ & \VGA0|SYNC|pixel_row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux42~10_combout\,
	datab => \VGA0|SYNC|pixel_row\(6),
	datac => \VGA0|Mux5~2_combout\,
	datad => \VGA0|SYNC|pixel_row\(5),
	combout => \VGA0|Mux42~15_combout\);

-- Location: LCCOMB_X58_Y41_N22
\VGA0|char_address~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|char_address~15_combout\ = (!\VGA0|SYNC|pixel_column\(4) & (\VGA0|Mux27~2_combout\ & (!\VGA0|SYNC|pixel_column\(9) & \FSM0|pc_write~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(4),
	datab => \VGA0|Mux27~2_combout\,
	datac => \VGA0|SYNC|pixel_column\(9),
	datad => \FSM0|pc_write~combout\,
	combout => \VGA0|char_address~15_combout\);

-- Location: LCCOMB_X58_Y41_N8
\VGA0|char_address~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|char_address~4_combout\ = (!\VGA0|SYNC|pixel_column\(4) & (!\VGA0|SYNC|pixel_column\(9) & (\VGA0|Mux27~2_combout\ & \FSM0|cu_decoder|reg_wr~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(4),
	datab => \VGA0|SYNC|pixel_column\(9),
	datac => \VGA0|Mux27~2_combout\,
	datad => \FSM0|cu_decoder|reg_wr~0_combout\,
	combout => \VGA0|char_address~4_combout\);

-- Location: LCCOMB_X58_Y43_N24
\VGA0|Mux36~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux36~1_combout\ = (\VGA0|Mux40~6_combout\ & ((\VGA0|SYNC|pixel_column\(4) & ((\RegBank0|RD2[0]~93_combout\))) # (!\VGA0|SYNC|pixel_column\(4) & (\RegBank0|RD2[4]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[4]~81_combout\,
	datab => \VGA0|SYNC|pixel_column\(4),
	datac => \VGA0|Mux40~6_combout\,
	datad => \RegBank0|RD2[0]~93_combout\,
	combout => \VGA0|Mux36~1_combout\);

-- Location: LCCOMB_X58_Y43_N14
\VGA0|Mux36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux36~0_combout\ = (\VGA0|Mux27~2_combout\ & ((\VGA0|SYNC|pixel_column\(4) & (\RegBank0|RD2[8]~65_combout\)) # (!\VGA0|SYNC|pixel_column\(4) & ((\RegBank0|RD2[12]~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux27~2_combout\,
	datab => \VGA0|SYNC|pixel_column\(4),
	datac => \RegBank0|RD2[8]~65_combout\,
	datad => \RegBank0|RD2[12]~49_combout\,
	combout => \VGA0|Mux36~0_combout\);

-- Location: LCCOMB_X60_Y44_N28
\RegBank0|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|Equal1~0_combout\ = (!Instr(3) & (!Instr(4) & !Instr(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Instr(3),
	datac => Instr(4),
	datad => Instr(2),
	combout => \RegBank0|Equal1~0_combout\);

-- Location: LCCOMB_X58_Y43_N18
\VGA0|Mux36~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux36~2_combout\ = (!\RegBank0|Equal1~0_combout\ & ((\VGA0|Mux36~1_combout\) # (\VGA0|Mux36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|Mux36~1_combout\,
	datac => \VGA0|Mux36~0_combout\,
	datad => \RegBank0|Equal1~0_combout\,
	combout => \VGA0|Mux36~2_combout\);

-- Location: LCCOMB_X57_Y41_N14
\VGA0|Mux31~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux31~1_combout\ = (\VGA0|Mux40~6_combout\ & ((\VGA0|SYNC|pixel_column\(4) & (\RegBank0|RD1[0]~97_combout\)) # (!\VGA0|SYNC|pixel_column\(4) & ((\RegBank0|RD1[4]~81_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[0]~97_combout\,
	datab => \VGA0|Mux40~6_combout\,
	datac => \VGA0|SYNC|pixel_column\(4),
	datad => \RegBank0|RD1[4]~81_combout\,
	combout => \VGA0|Mux31~1_combout\);

-- Location: LCCOMB_X58_Y41_N18
\VGA0|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux31~0_combout\ = (\VGA0|Mux27~2_combout\ & ((\VGA0|SYNC|pixel_column\(4) & (\RegBank0|RD1[8]~65_combout\)) # (!\VGA0|SYNC|pixel_column\(4) & ((\RegBank0|RD1[12]~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[8]~65_combout\,
	datab => \VGA0|Mux27~2_combout\,
	datac => \VGA0|SYNC|pixel_column\(4),
	datad => \RegBank0|RD1[12]~49_combout\,
	combout => \VGA0|Mux31~0_combout\);

-- Location: LCCOMB_X58_Y41_N10
\RegBank0|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \RegBank0|Equal0~0_combout\ = (!Instr(6) & (!Instr(5) & !Instr(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(6),
	datab => Instr(5),
	datac => Instr(7),
	combout => \RegBank0|Equal0~0_combout\);

-- Location: LCCOMB_X58_Y41_N20
\VGA0|Mux31~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux31~2_combout\ = (!\RegBank0|Equal0~0_combout\ & ((\VGA0|Mux31~1_combout\) # (\VGA0|Mux31~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux31~1_combout\,
	datab => \VGA0|Mux31~0_combout\,
	datad => \RegBank0|Equal0~0_combout\,
	combout => \VGA0|Mux31~2_combout\);

-- Location: LCCOMB_X58_Y41_N6
\VGA0|Mux42~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux42~2_combout\ = (\VGA0|SYNC|pixel_row\(5) & ((\VGA0|Mux36~2_combout\) # ((\VGA0|SYNC|pixel_row\(6))))) # (!\VGA0|SYNC|pixel_row\(5) & (((!\VGA0|SYNC|pixel_row\(6) & \VGA0|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux36~2_combout\,
	datab => \VGA0|SYNC|pixel_row\(5),
	datac => \VGA0|SYNC|pixel_row\(6),
	datad => \VGA0|Mux31~2_combout\,
	combout => \VGA0|Mux42~2_combout\);

-- Location: LCCOMB_X58_Y41_N24
\VGA0|Mux42~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux42~3_combout\ = (\VGA0|SYNC|pixel_row\(6) & ((\VGA0|Mux42~2_combout\ & (\VGA0|char_address~15_combout\)) # (!\VGA0|Mux42~2_combout\ & ((\VGA0|char_address~4_combout\))))) # (!\VGA0|SYNC|pixel_row\(6) & (((\VGA0|Mux42~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|char_address~15_combout\,
	datab => \VGA0|char_address~4_combout\,
	datac => \VGA0|SYNC|pixel_row\(6),
	datad => \VGA0|Mux42~2_combout\,
	combout => \VGA0|Mux42~3_combout\);

-- Location: LCCOMB_X54_Y39_N16
\VGA0|Mux42~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux42~11_combout\ = (!\VGA0|SYNC|pixel_row\(7) & ((\VGA0|SYNC|pixel_row\(8) & ((\VGA0|Mux42~3_combout\))) # (!\VGA0|SYNC|pixel_row\(8) & (\VGA0|Mux42~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_row\(7),
	datab => \VGA0|Mux42~15_combout\,
	datac => \VGA0|SYNC|pixel_row\(8),
	datad => \VGA0|Mux42~3_combout\,
	combout => \VGA0|Mux42~11_combout\);

-- Location: LCCOMB_X54_Y39_N8
\VGA0|Mux42~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux42~14_combout\ = (\VGA0|Mux42~11_combout\) # ((\VGA0|SYNC|pixel_row\(7) & (!\VGA0|SYNC|pixel_row\(8) & \VGA0|Mux42~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_row\(7),
	datab => \VGA0|SYNC|pixel_row\(8),
	datac => \VGA0|Mux42~13_combout\,
	datad => \VGA0|Mux42~11_combout\,
	combout => \VGA0|Mux42~14_combout\);

-- Location: LCCOMB_X55_Y39_N14
\VGA0|VIDEO_DISPLAY_DATA~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|VIDEO_DISPLAY_DATA~1_combout\ = (\VGA0|SYNC|pixel_column\(7) & (((\VGA0|SYNC|pixel_column\(8))))) # (!\VGA0|SYNC|pixel_column\(7) & (((\VGA0|SYNC|pixel_column\(6) & \VGA0|SYNC|pixel_column\(5))) # (!\VGA0|SYNC|pixel_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(6),
	datab => \VGA0|SYNC|pixel_column\(7),
	datac => \VGA0|SYNC|pixel_column\(5),
	datad => \VGA0|SYNC|pixel_column\(8),
	combout => \VGA0|VIDEO_DISPLAY_DATA~1_combout\);

-- Location: LCCOMB_X56_Y39_N8
\VGA0|VIDEO_DISPLAY_DATA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|VIDEO_DISPLAY_DATA~0_combout\ = (\VGA0|SYNC|pixel_column\(9)) # ((\VGA0|SYNC|pixel_column\(6)) # ((\VGA0|SYNC|pixel_column\(8)) # (!\VGA0|SYNC|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(9),
	datab => \VGA0|SYNC|pixel_column\(6),
	datac => \VGA0|SYNC|pixel_column\(7),
	datad => \VGA0|SYNC|pixel_column\(8),
	combout => \VGA0|VIDEO_DISPLAY_DATA~0_combout\);

-- Location: FF_X56_Y39_N7
\VGA0|SYNC|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	asdata => \VGA0|SYNC|v_count\(4),
	sload => VCC,
	ena => \VGA0|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|pixel_row\(4));

-- Location: LCCOMB_X56_Y39_N10
\VGA0|char_address~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|char_address~5_combout\ = (!\VGA0|VIDEO_DISPLAY_DATA~1_combout\ & (!\VGA0|VIDEO_DISPLAY_DATA~0_combout\ & (\VGA0|SYNC|pixel_row\(4) & !\VGA0|SYNC|pixel_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|VIDEO_DISPLAY_DATA~1_combout\,
	datab => \VGA0|VIDEO_DISPLAY_DATA~0_combout\,
	datac => \VGA0|SYNC|pixel_row\(4),
	datad => \VGA0|SYNC|pixel_column\(9),
	combout => \VGA0|char_address~5_combout\);

-- Location: LCCOMB_X55_Y39_N16
\VGA0|VIDEO_DISPLAY_DATA~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|VIDEO_DISPLAY_DATA~3_combout\ = (!\VGA0|SYNC|pixel_column\(5) & (!\VGA0|SYNC|pixel_column\(8) & (\VGA0|SYNC|pixel_column\(7) & !\VGA0|SYNC|pixel_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(5),
	datab => \VGA0|SYNC|pixel_column\(8),
	datac => \VGA0|SYNC|pixel_column\(7),
	datad => \VGA0|SYNC|pixel_column\(9),
	combout => \VGA0|VIDEO_DISPLAY_DATA~3_combout\);

-- Location: LCCOMB_X56_Y38_N12
\VGA0|VIDEO_DISPLAY_DATA~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|VIDEO_DISPLAY_DATA~2_combout\ = (\VGA0|SYNC|pixel_row\(6) & (((\VGA0|SYNC|pixel_row\(7) & \VGA0|SYNC|pixel_row\(8))))) # (!\VGA0|SYNC|pixel_row\(6) & (!\VGA0|SYNC|pixel_row\(5) & (!\VGA0|SYNC|pixel_row\(7) & !\VGA0|SYNC|pixel_row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_row\(5),
	datab => \VGA0|SYNC|pixel_row\(6),
	datac => \VGA0|SYNC|pixel_row\(7),
	datad => \VGA0|SYNC|pixel_row\(8),
	combout => \VGA0|VIDEO_DISPLAY_DATA~2_combout\);

-- Location: LCCOMB_X56_Y39_N4
\VGA0|VIDEO_DISPLAY_DATA~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|VIDEO_DISPLAY_DATA~4_combout\ = (\VGA0|VIDEO_DISPLAY_DATA~2_combout\) # ((\VGA0|VIDEO_DISPLAY_DATA~3_combout\ & \VGA0|SYNC|pixel_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|VIDEO_DISPLAY_DATA~3_combout\,
	datab => \VGA0|SYNC|pixel_column\(6),
	datac => \VGA0|VIDEO_DISPLAY_DATA~2_combout\,
	combout => \VGA0|VIDEO_DISPLAY_DATA~4_combout\);

-- Location: LCCOMB_X56_Y39_N6
\VGA0|VIDEO_DISPLAY_DATA~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|VIDEO_DISPLAY_DATA~5_combout\ = (\VGA0|SYNC|pixel_column\(9)) # ((\VGA0|VIDEO_DISPLAY_DATA~1_combout\) # (!\VGA0|SYNC|pixel_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|SYNC|pixel_column\(9),
	datac => \VGA0|SYNC|pixel_row\(4),
	datad => \VGA0|VIDEO_DISPLAY_DATA~1_combout\,
	combout => \VGA0|VIDEO_DISPLAY_DATA~5_combout\);

-- Location: LCCOMB_X56_Y39_N22
\VGA0|char_address~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|char_address~6_combout\ = (!\VGA0|VIDEO_DISPLAY_DATA~4_combout\ & (\VGA0|VIDEO_DISPLAY_DATA~0_combout\ & !\VGA0|VIDEO_DISPLAY_DATA~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|VIDEO_DISPLAY_DATA~4_combout\,
	datac => \VGA0|VIDEO_DISPLAY_DATA~0_combout\,
	datad => \VGA0|VIDEO_DISPLAY_DATA~5_combout\,
	combout => \VGA0|char_address~6_combout\);

-- Location: LCCOMB_X54_Y39_N24
\VGA0|char_address~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|char_address~7_combout\ = (\VGA0|format_rom|auto_generated|q_a\(0) & ((\VGA0|char_address~5_combout\) # ((\VGA0|Mux42~14_combout\ & \VGA0|char_address~6_combout\)))) # (!\VGA0|format_rom|auto_generated|q_a\(0) & (\VGA0|Mux42~14_combout\ & 
-- ((\VGA0|char_address~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|format_rom|auto_generated|q_a\(0),
	datab => \VGA0|Mux42~14_combout\,
	datac => \VGA0|char_address~5_combout\,
	datad => \VGA0|char_address~6_combout\,
	combout => \VGA0|char_address~7_combout\);

-- Location: FF_X54_Y39_N25
\VGA0|char_address[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|char_address~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|char_address\(0));

-- Location: LCCOMB_X57_Y42_N2
\VGA0|Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux16~0_combout\ = (!\VGA0|SYNC|pixel_column\(4) & ((\FSM0|cu_decoder|Mux0~0_combout\ & (\Result[13]~5_combout\)) # (!\FSM0|cu_decoder|Mux0~0_combout\ & ((PC(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(4),
	datab => \Result[13]~5_combout\,
	datac => PC(13),
	datad => \FSM0|cu_decoder|Mux0~0_combout\,
	combout => \VGA0|Mux16~0_combout\);

-- Location: LCCOMB_X57_Y42_N20
\VGA0|Mux16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux16~1_combout\ = (\VGA0|Mux27~2_combout\ & ((\VGA0|Mux16~0_combout\) # ((\VGA0|SYNC|pixel_column\(4) & \Adr[9]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux16~0_combout\,
	datab => \VGA0|Mux27~2_combout\,
	datac => \VGA0|SYNC|pixel_column\(4),
	datad => \Adr[9]~8_combout\,
	combout => \VGA0|Mux16~1_combout\);

-- Location: LCCOMB_X56_Y41_N4
\VGA0|Mux41~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux41~12_combout\ = (\VGA0|SYNC|pixel_row\(7) & ((!\FSM0|aludecod|WideOr1~0_combout\) # (!Instr(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Instr(15),
	datac => \FSM0|aludecod|WideOr1~0_combout\,
	datad => \VGA0|SYNC|pixel_row\(7),
	combout => \VGA0|Mux41~12_combout\);

-- Location: LCCOMB_X56_Y41_N18
\VGA0|Mux41~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux41~16_combout\ = (\VGA0|Mux41~12_combout\ & ((\VGA0|SYNC|pixel_column\(4) & (\ALU0|m2|m1|m3|out[9]~47_combout\)) # (!\VGA0|SYNC|pixel_column\(4) & ((\ALU0|m2|m1|m3|out[13]~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|m2|m1|m3|out[9]~47_combout\,
	datab => \ALU0|m2|m1|m3|out[13]~43_combout\,
	datac => \VGA0|Mux41~12_combout\,
	datad => \VGA0|SYNC|pixel_column\(4),
	combout => \VGA0|Mux41~16_combout\);

-- Location: LCCOMB_X56_Y41_N30
\VGA0|Mux41~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux41~13_combout\ = (\VGA0|Mux41~12_combout\ & ((\VGA0|SYNC|pixel_column\(4) & ((\ALU0|m2|m1|m3|out[1]~54_combout\))) # (!\VGA0|SYNC|pixel_column\(4) & (\ALU0|m2|m1|m3|out[5]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|m2|m1|m3|out[5]~51_combout\,
	datab => \VGA0|Mux41~12_combout\,
	datac => \ALU0|m2|m1|m3|out[1]~54_combout\,
	datad => \VGA0|SYNC|pixel_column\(4),
	combout => \VGA0|Mux41~13_combout\);

-- Location: LCCOMB_X61_Y43_N4
\VGA0|Mux41~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux41~14_combout\ = (!\VGA0|SYNC|pixel_row\(7) & ((\VGA0|SYNC|pixel_column\(4) & ((PC(1)))) # (!\VGA0|SYNC|pixel_column\(4) & (PC(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(5),
	datab => \VGA0|SYNC|pixel_column\(4),
	datac => PC(1),
	datad => \VGA0|SYNC|pixel_row\(7),
	combout => \VGA0|Mux41~14_combout\);

-- Location: LCCOMB_X56_Y41_N0
\VGA0|Mux41~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux41~15_combout\ = (\VGA0|Mux40~6_combout\ & ((\VGA0|Mux41~13_combout\) # (\VGA0|Mux41~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux41~13_combout\,
	datac => \VGA0|Mux40~6_combout\,
	datad => \VGA0|Mux41~14_combout\,
	combout => \VGA0|Mux41~15_combout\);

-- Location: LCCOMB_X57_Y42_N22
\VGA0|Mux41~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux41~17_combout\ = (!\VGA0|SYNC|pixel_row\(7) & ((\VGA0|SYNC|pixel_column\(4) & (PC(9))) # (!\VGA0|SYNC|pixel_column\(4) & ((PC(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_row\(7),
	datab => \VGA0|SYNC|pixel_column\(4),
	datac => PC(9),
	datad => PC(13),
	combout => \VGA0|Mux41~17_combout\);

-- Location: LCCOMB_X55_Y42_N28
\VGA0|Mux41~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux41~18_combout\ = (\VGA0|Mux41~15_combout\) # ((\VGA0|Mux27~2_combout\ & ((\VGA0|Mux41~16_combout\) # (\VGA0|Mux41~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux41~16_combout\,
	datab => \VGA0|Mux41~15_combout\,
	datac => \VGA0|Mux41~17_combout\,
	datad => \VGA0|Mux27~2_combout\,
	combout => \VGA0|Mux41~18_combout\);

-- Location: LCCOMB_X55_Y42_N26
\VGA0|Mux41~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux41~21_combout\ = (\VGA0|SYNC|pixel_row\(8) & (!\VGA0|SYNC|pixel_row\(6))) # (!\VGA0|SYNC|pixel_row\(8) & (\VGA0|SYNC|pixel_row\(6) & (!\VGA0|SYNC|pixel_row\(5) & \VGA0|Mux41~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_row\(8),
	datab => \VGA0|SYNC|pixel_row\(6),
	datac => \VGA0|SYNC|pixel_row\(5),
	datad => \VGA0|Mux41~18_combout\,
	combout => \VGA0|Mux41~21_combout\);

-- Location: LCCOMB_X54_Y39_N2
\VGA0|char_address~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|char_address~8_combout\ = (!\VGA0|SYNC|pixel_column\(4) & (!\VGA0|SYNC|pixel_column\(9) & (\CNT0|q\(25) & \VGA0|Mux27~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(4),
	datab => \VGA0|SYNC|pixel_column\(9),
	datac => \CNT0|q\(25),
	datad => \VGA0|Mux27~2_combout\,
	combout => \VGA0|char_address~8_combout\);

-- Location: LCCOMB_X55_Y42_N16
\VGA0|char_address~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|char_address~9_combout\ = ((\KEY[1]~input_o\) # ((\VGA0|SYNC|pixel_column\(9)) # (\VGA0|SYNC|pixel_column\(4)))) # (!\VGA0|Mux27~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux27~2_combout\,
	datab => \KEY[1]~input_o\,
	datac => \VGA0|SYNC|pixel_column\(9),
	datad => \VGA0|SYNC|pixel_column\(4),
	combout => \VGA0|char_address~9_combout\);

-- Location: LCCOMB_X61_Y44_N30
\VGA0|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux30~0_combout\ = (\VGA0|Mux27~2_combout\ & ((\VGA0|SYNC|pixel_column\(4) & ((\RegBank0|RD1[9]~61_combout\))) # (!\VGA0|SYNC|pixel_column\(4) & (\RegBank0|RD1[13]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[13]~45_combout\,
	datab => \VGA0|Mux27~2_combout\,
	datac => \VGA0|SYNC|pixel_column\(4),
	datad => \RegBank0|RD1[9]~61_combout\,
	combout => \VGA0|Mux30~0_combout\);

-- Location: LCCOMB_X61_Y44_N24
\VGA0|Mux30~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux30~1_combout\ = (\VGA0|Mux40~6_combout\ & ((\VGA0|SYNC|pixel_column\(4) & (\RegBank0|RD1[1]~93_combout\)) # (!\VGA0|SYNC|pixel_column\(4) & ((\RegBank0|RD1[5]~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux40~6_combout\,
	datab => \RegBank0|RD1[1]~93_combout\,
	datac => \VGA0|SYNC|pixel_column\(4),
	datad => \RegBank0|RD1[5]~77_combout\,
	combout => \VGA0|Mux30~1_combout\);

-- Location: LCCOMB_X61_Y44_N2
\VGA0|Mux30~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux30~2_combout\ = (!\RegBank0|Equal0~0_combout\ & ((\VGA0|Mux30~0_combout\) # (\VGA0|Mux30~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux30~0_combout\,
	datac => \RegBank0|Equal0~0_combout\,
	datad => \VGA0|Mux30~1_combout\,
	combout => \VGA0|Mux30~2_combout\);

-- Location: LCCOMB_X61_Y44_N10
\VGA0|Mux35~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux35~1_combout\ = (\VGA0|Mux40~6_combout\ & ((\VGA0|SYNC|pixel_column\(4) & ((\RegBank0|RD2[1]~97_combout\))) # (!\VGA0|SYNC|pixel_column\(4) & (\RegBank0|RD2[5]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux40~6_combout\,
	datab => \RegBank0|RD2[5]~77_combout\,
	datac => \VGA0|SYNC|pixel_column\(4),
	datad => \RegBank0|RD2[1]~97_combout\,
	combout => \VGA0|Mux35~1_combout\);

-- Location: LCCOMB_X61_Y44_N0
\VGA0|Mux35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux35~0_combout\ = (\VGA0|Mux27~2_combout\ & ((\VGA0|SYNC|pixel_column\(4) & ((\RegBank0|RD2[9]~61_combout\))) # (!\VGA0|SYNC|pixel_column\(4) & (\RegBank0|RD2[13]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[13]~45_combout\,
	datab => \VGA0|Mux27~2_combout\,
	datac => \VGA0|SYNC|pixel_column\(4),
	datad => \RegBank0|RD2[9]~61_combout\,
	combout => \VGA0|Mux35~0_combout\);

-- Location: LCCOMB_X61_Y44_N12
\VGA0|Mux35~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux35~2_combout\ = (!\RegBank0|Equal1~0_combout\ & ((\VGA0|Mux35~1_combout\) # (\VGA0|Mux35~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux35~1_combout\,
	datab => \RegBank0|Equal1~0_combout\,
	datad => \VGA0|Mux35~0_combout\,
	combout => \VGA0|Mux35~2_combout\);

-- Location: LCCOMB_X61_Y44_N28
\VGA0|Mux41~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux41~10_combout\ = (\VGA0|SYNC|pixel_row\(5) & (((\VGA0|SYNC|pixel_row\(7)) # (\VGA0|Mux35~2_combout\)))) # (!\VGA0|SYNC|pixel_row\(5) & (\VGA0|Mux30~2_combout\ & (!\VGA0|SYNC|pixel_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_row\(5),
	datab => \VGA0|Mux30~2_combout\,
	datac => \VGA0|SYNC|pixel_row\(7),
	datad => \VGA0|Mux35~2_combout\,
	combout => \VGA0|Mux41~10_combout\);

-- Location: LCCOMB_X55_Y42_N18
\VGA0|Mux41~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux41~11_combout\ = (\VGA0|SYNC|pixel_row\(7) & ((\VGA0|Mux41~10_combout\ & ((!\VGA0|char_address~9_combout\))) # (!\VGA0|Mux41~10_combout\ & (\VGA0|char_address~8_combout\)))) # (!\VGA0|SYNC|pixel_row\(7) & (((\VGA0|Mux41~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|char_address~8_combout\,
	datab => \VGA0|char_address~9_combout\,
	datac => \VGA0|SYNC|pixel_row\(7),
	datad => \VGA0|Mux41~10_combout\,
	combout => \VGA0|Mux41~11_combout\);

-- Location: LCCOMB_X55_Y41_N12
\VGA0|Mux41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux41~0_combout\ = (!\VGA0|SYNC|pixel_row\(6) & ((\VGA0|SYNC|pixel_column\(4) & ((\Memory0|altsyncram_component|auto_generated|q_a\(9)))) # (!\VGA0|SYNC|pixel_column\(4) & (\Memory0|altsyncram_component|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memory0|altsyncram_component|auto_generated|q_a\(13),
	datab => \Memory0|altsyncram_component|auto_generated|q_a\(9),
	datac => \VGA0|SYNC|pixel_column\(4),
	datad => \VGA0|SYNC|pixel_row\(6),
	combout => \VGA0|Mux41~0_combout\);

-- Location: LCCOMB_X55_Y41_N8
\VGA0|Mux41~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux41~1_combout\ = ((\VGA0|SYNC|pixel_column\(4) & ((Instr(9)))) # (!\VGA0|SYNC|pixel_column\(4) & (Instr(13)))) # (!\VGA0|SYNC|pixel_row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(4),
	datab => Instr(13),
	datac => Instr(9),
	datad => \VGA0|SYNC|pixel_row\(6),
	combout => \VGA0|Mux41~1_combout\);

-- Location: LCCOMB_X55_Y41_N22
\VGA0|Mux41~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux41~2_combout\ = (\VGA0|Mux27~2_combout\ & ((\VGA0|Mux41~0_combout\) # ((!\VGA0|SYNC|pixel_row\(7) & \VGA0|Mux41~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux41~0_combout\,
	datab => \VGA0|SYNC|pixel_row\(7),
	datac => \VGA0|Mux27~2_combout\,
	datad => \VGA0|Mux41~1_combout\,
	combout => \VGA0|Mux41~2_combout\);

-- Location: LCCOMB_X55_Y39_N26
\VGA0|Mux41~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux41~6_combout\ = (\VGA0|SYNC|pixel_column\(5) & ((\VGA0|SYNC|pixel_column\(6) & ((\VGA0|char_address\(1)))) # (!\VGA0|SYNC|pixel_column\(6) & (!\VGA0|SYNC|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(6),
	datab => \VGA0|SYNC|pixel_column\(4),
	datac => \VGA0|SYNC|pixel_column\(5),
	datad => \VGA0|char_address\(1),
	combout => \VGA0|Mux41~6_combout\);

-- Location: LCCOMB_X55_Y39_N4
\VGA0|Mux41~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux41~7_combout\ = (\VGA0|SYNC|pixel_column\(7) & (((\VGA0|char_address\(1))))) # (!\VGA0|SYNC|pixel_column\(7) & ((\VGA0|SYNC|pixel_column\(8) & (\VGA0|Mux41~6_combout\)) # (!\VGA0|SYNC|pixel_column\(8) & ((\VGA0|char_address\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux41~6_combout\,
	datab => \VGA0|char_address\(1),
	datac => \VGA0|SYNC|pixel_column\(7),
	datad => \VGA0|SYNC|pixel_column\(8),
	combout => \VGA0|Mux41~7_combout\);

-- Location: LCCOMB_X55_Y42_N0
\VGA0|Mux41~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux41~4_combout\ = (\VGA0|SYNC|pixel_row\(6) & (((Instr(5) & !\VGA0|SYNC|pixel_row\(7))))) # (!\VGA0|SYNC|pixel_row\(6) & (\Memory0|altsyncram_component|auto_generated|q_a\(5) & ((\VGA0|SYNC|pixel_row\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memory0|altsyncram_component|auto_generated|q_a\(5),
	datab => \VGA0|SYNC|pixel_row\(6),
	datac => Instr(5),
	datad => \VGA0|SYNC|pixel_row\(7),
	combout => \VGA0|Mux41~4_combout\);

-- Location: LCCOMB_X55_Y42_N12
\VGA0|Mux41~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux41~3_combout\ = (\VGA0|SYNC|pixel_row\(6) & (((Instr(1) & !\VGA0|SYNC|pixel_row\(7))))) # (!\VGA0|SYNC|pixel_row\(6) & ((\Memory0|altsyncram_component|auto_generated|q_a\(1)) # ((!\VGA0|SYNC|pixel_row\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memory0|altsyncram_component|auto_generated|q_a\(1),
	datab => \VGA0|SYNC|pixel_row\(6),
	datac => Instr(1),
	datad => \VGA0|SYNC|pixel_row\(7),
	combout => \VGA0|Mux41~3_combout\);

-- Location: LCCOMB_X55_Y42_N2
\VGA0|Mux41~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux41~5_combout\ = (\VGA0|Mux40~6_combout\ & ((\VGA0|SYNC|pixel_column\(4) & ((\VGA0|Mux41~3_combout\))) # (!\VGA0|SYNC|pixel_column\(4) & (\VGA0|Mux41~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux40~6_combout\,
	datab => \VGA0|Mux41~4_combout\,
	datac => \VGA0|SYNC|pixel_column\(4),
	datad => \VGA0|Mux41~3_combout\,
	combout => \VGA0|Mux41~5_combout\);

-- Location: LCCOMB_X55_Y42_N4
\VGA0|Mux41~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux41~8_combout\ = (\VGA0|Mux41~5_combout\) # ((!\VGA0|SYNC|pixel_row\(7) & (\VGA0|Mux41~7_combout\ & !\VGA0|SYNC|pixel_row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_row\(7),
	datab => \VGA0|Mux41~7_combout\,
	datac => \VGA0|SYNC|pixel_row\(6),
	datad => \VGA0|Mux41~5_combout\,
	combout => \VGA0|Mux41~8_combout\);

-- Location: LCCOMB_X55_Y42_N6
\VGA0|Mux41~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux41~9_combout\ = (\VGA0|SYNC|pixel_row\(5) & (!\VGA0|SYNC|pixel_row\(8) & ((\VGA0|Mux41~2_combout\) # (\VGA0|Mux41~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux41~2_combout\,
	datab => \VGA0|SYNC|pixel_row\(5),
	datac => \VGA0|Mux41~8_combout\,
	datad => \VGA0|SYNC|pixel_row\(8),
	combout => \VGA0|Mux41~9_combout\);

-- Location: LCCOMB_X55_Y42_N20
\VGA0|Mux41~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux41~22_combout\ = (\VGA0|Mux41~9_combout\) # ((\VGA0|Mux41~21_combout\ & ((\VGA0|Mux41~11_combout\) # (\VGA0|SYNC|pixel_row\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux41~21_combout\,
	datab => \VGA0|Mux41~11_combout\,
	datac => \VGA0|SYNC|pixel_row\(6),
	datad => \VGA0|Mux41~9_combout\,
	combout => \VGA0|Mux41~22_combout\);

-- Location: LCCOMB_X55_Y42_N30
\VGA0|Mux41~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux41~19_combout\ = (!\VGA0|SYNC|pixel_row\(8) & (!\VGA0|SYNC|pixel_row\(6) & (!\VGA0|SYNC|pixel_row\(5) & \VGA0|SYNC|pixel_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_row\(8),
	datab => \VGA0|SYNC|pixel_row\(6),
	datac => \VGA0|SYNC|pixel_row\(5),
	datad => \VGA0|SYNC|pixel_row\(7),
	combout => \VGA0|Mux41~19_combout\);

-- Location: LCCOMB_X58_Y42_N8
\VGA0|Mux16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux16~2_combout\ = (\VGA0|Mux40~6_combout\ & ((\VGA0|SYNC|pixel_column\(4) & ((\Adr[1]~0_combout\))) # (!\VGA0|SYNC|pixel_column\(4) & (\Adr[5]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(4),
	datab => \VGA0|Mux40~6_combout\,
	datac => \Adr[5]~4_combout\,
	datad => \Adr[1]~0_combout\,
	combout => \VGA0|Mux16~2_combout\);

-- Location: LCCOMB_X55_Y42_N8
\VGA0|Mux41~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux41~20_combout\ = (\VGA0|Mux41~22_combout\) # ((\VGA0|Mux41~19_combout\ & ((\VGA0|Mux16~1_combout\) # (\VGA0|Mux16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux16~1_combout\,
	datab => \VGA0|Mux41~22_combout\,
	datac => \VGA0|Mux41~19_combout\,
	datad => \VGA0|Mux16~2_combout\,
	combout => \VGA0|Mux41~20_combout\);

-- Location: LCCOMB_X54_Y39_N18
\VGA0|char_address~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|char_address~10_combout\ = (\VGA0|format_rom|auto_generated|q_a\(1) & ((\VGA0|char_address~5_combout\) # ((\VGA0|Mux41~20_combout\ & \VGA0|char_address~6_combout\)))) # (!\VGA0|format_rom|auto_generated|q_a\(1) & (\VGA0|Mux41~20_combout\ & 
-- ((\VGA0|char_address~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|format_rom|auto_generated|q_a\(1),
	datab => \VGA0|Mux41~20_combout\,
	datac => \VGA0|char_address~5_combout\,
	datad => \VGA0|char_address~6_combout\,
	combout => \VGA0|char_address~10_combout\);

-- Location: FF_X54_Y39_N19
\VGA0|char_address[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|char_address~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|char_address\(1));

-- Location: LCCOMB_X55_Y40_N30
\VGA0|Mux37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux37~0_combout\ = (\VGA0|SYNC|pixel_column\(6) & (!\VGA0|SYNC|pixel_column\(8) & (\VGA0|SYNC|pixel_column\(7) & \VGA0|SYNC|pixel_column\(5)))) # (!\VGA0|SYNC|pixel_column\(6) & (\VGA0|SYNC|pixel_column\(8) & (!\VGA0|SYNC|pixel_column\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(6),
	datab => \VGA0|SYNC|pixel_column\(8),
	datac => \VGA0|SYNC|pixel_column\(7),
	datad => \VGA0|SYNC|pixel_column\(5),
	combout => \VGA0|Mux37~0_combout\);

-- Location: LCCOMB_X55_Y39_N30
\VGA0|Mux40~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~17_combout\ = (\VGA0|SYNC|pixel_column\(7) & (((\VGA0|SYNC|pixel_column\(8)) # (!\VGA0|SYNC|pixel_column\(5))) # (!\VGA0|SYNC|pixel_column\(6)))) # (!\VGA0|SYNC|pixel_column\(7) & (((\VGA0|SYNC|pixel_column\(6) & \VGA0|SYNC|pixel_column\(5))) 
-- # (!\VGA0|SYNC|pixel_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(6),
	datab => \VGA0|SYNC|pixel_column\(7),
	datac => \VGA0|SYNC|pixel_column\(5),
	datad => \VGA0|SYNC|pixel_column\(8),
	combout => \VGA0|Mux40~17_combout\);

-- Location: LCCOMB_X55_Y40_N8
\VGA0|Mux40~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~18_combout\ = (\VGA0|Mux37~0_combout\ & ((\VGA0|SYNC|pixel_column\(4)) # ((\VGA0|char_address\(2) & \VGA0|Mux40~17_combout\)))) # (!\VGA0|Mux37~0_combout\ & (\VGA0|char_address\(2) & (\VGA0|Mux40~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux37~0_combout\,
	datab => \VGA0|char_address\(2),
	datac => \VGA0|Mux40~17_combout\,
	datad => \VGA0|SYNC|pixel_column\(4),
	combout => \VGA0|Mux40~18_combout\);

-- Location: LCCOMB_X61_Y43_N2
\VGA0|Mux40~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~22_combout\ = (!\VGA0|SYNC|pixel_row\(5) & ((\VGA0|SYNC|pixel_column\(4) & ((PC(2)))) # (!\VGA0|SYNC|pixel_column\(4) & (PC(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_row\(5),
	datab => PC(6),
	datac => PC(2),
	datad => \VGA0|SYNC|pixel_column\(4),
	combout => \VGA0|Mux40~22_combout\);

-- Location: LCCOMB_X56_Y42_N14
\VGA0|Mux40~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~19_combout\ = (!\VGA0|SYNC|pixel_row\(5) & ((\VGA0|SYNC|pixel_column\(4) & ((PC(10)))) # (!\VGA0|SYNC|pixel_column\(4) & (PC(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(4),
	datab => PC(14),
	datac => PC(10),
	datad => \VGA0|SYNC|pixel_row\(5),
	combout => \VGA0|Mux40~19_combout\);

-- Location: LCCOMB_X55_Y40_N24
\VGA0|Mux40~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~20_combout\ = (\VGA0|SYNC|pixel_row\(5) & ((\VGA0|SYNC|pixel_column\(4) & (Instr(10))) # (!\VGA0|SYNC|pixel_column\(4) & ((Instr(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(4),
	datab => \VGA0|SYNC|pixel_row\(5),
	datac => Instr(10),
	datad => Instr(14),
	combout => \VGA0|Mux40~20_combout\);

-- Location: LCCOMB_X55_Y40_N4
\VGA0|Mux40~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~21_combout\ = (\VGA0|Mux27~2_combout\ & ((\VGA0|Mux40~19_combout\) # (\VGA0|Mux40~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux40~19_combout\,
	datab => \VGA0|Mux27~2_combout\,
	datad => \VGA0|Mux40~20_combout\,
	combout => \VGA0|Mux40~21_combout\);

-- Location: LCCOMB_X59_Y40_N14
\VGA0|Mux40~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~23_combout\ = (\VGA0|SYNC|pixel_row\(5) & ((\VGA0|SYNC|pixel_column\(4) & ((Instr(2)))) # (!\VGA0|SYNC|pixel_column\(4) & (Instr(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(6),
	datab => \VGA0|SYNC|pixel_row\(5),
	datac => Instr(2),
	datad => \VGA0|SYNC|pixel_column\(4),
	combout => \VGA0|Mux40~23_combout\);

-- Location: LCCOMB_X56_Y40_N6
\VGA0|Mux40~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~24_combout\ = (\VGA0|Mux40~21_combout\) # ((\VGA0|Mux40~6_combout\ & ((\VGA0|Mux40~22_combout\) # (\VGA0|Mux40~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux40~6_combout\,
	datab => \VGA0|Mux40~22_combout\,
	datac => \VGA0|Mux40~21_combout\,
	datad => \VGA0|Mux40~23_combout\,
	combout => \VGA0|Mux40~24_combout\);

-- Location: LCCOMB_X56_Y40_N26
\VGA0|Mux40~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~54_combout\ = (\VGA0|SYNC|pixel_row\(6) & (((\VGA0|Mux40~24_combout\)))) # (!\VGA0|SYNC|pixel_row\(6) & (\VGA0|Mux40~18_combout\ & (\VGA0|SYNC|pixel_row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux40~18_combout\,
	datab => \VGA0|SYNC|pixel_row\(5),
	datac => \VGA0|SYNC|pixel_row\(6),
	datad => \VGA0|Mux40~24_combout\,
	combout => \VGA0|Mux40~54_combout\);

-- Location: LCCOMB_X56_Y40_N28
\VGA0|VIDEO_DISPLAY_DATA~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|VIDEO_DISPLAY_DATA~6_combout\ = (!\VGA0|SYNC|pixel_row\(5) & !\VGA0|SYNC|pixel_row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|SYNC|pixel_row\(5),
	datac => \VGA0|SYNC|pixel_row\(6),
	combout => \VGA0|VIDEO_DISPLAY_DATA~6_combout\);

-- Location: LCCOMB_X56_Y40_N18
\VGA0|Mux40~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~12_combout\ = (!\VGA0|SYNC|pixel_column\(4) & (\VGA0|VIDEO_DISPLAY_DATA~6_combout\ & (\Result[14]~3_combout\ & \FSM0|cu_decoder|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(4),
	datab => \VGA0|VIDEO_DISPLAY_DATA~6_combout\,
	datac => \Result[14]~3_combout\,
	datad => \FSM0|cu_decoder|Mux0~0_combout\,
	combout => \VGA0|Mux40~12_combout\);

-- Location: LCCOMB_X55_Y41_N24
\VGA0|Mux40~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~7_combout\ = (\VGA0|SYNC|pixel_row\(6) & (!\VGA0|SYNC|pixel_row\(5) & ((!\FSM0|aludecod|WideOr1~0_combout\) # (!Instr(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Instr(15),
	datab => \VGA0|SYNC|pixel_row\(6),
	datac => \FSM0|aludecod|WideOr1~0_combout\,
	datad => \VGA0|SYNC|pixel_row\(5),
	combout => \VGA0|Mux40~7_combout\);

-- Location: LCCOMB_X56_Y43_N14
\VGA0|Mux40~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~8_combout\ = (\VGA0|Mux40~7_combout\ & ((\VGA0|SYNC|pixel_column\(4) & ((\ALU0|m2|m1|m3|out[2]~53_combout\))) # (!\VGA0|SYNC|pixel_column\(4) & (\ALU0|m2|m1|m3|out[6]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux40~7_combout\,
	datab => \ALU0|m2|m1|m3|out[6]~50_combout\,
	datac => \ALU0|m2|m1|m3|out[2]~53_combout\,
	datad => \VGA0|SYNC|pixel_column\(4),
	combout => \VGA0|Mux40~8_combout\);

-- Location: LCCOMB_X56_Y40_N30
\VGA0|Mux40~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~10_combout\ = (\VGA0|VIDEO_DISPLAY_DATA~6_combout\ & ((\VGA0|SYNC|pixel_column\(4) & ((\Adr[2]~1_combout\))) # (!\VGA0|SYNC|pixel_column\(4) & (\Adr[6]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(4),
	datab => \VGA0|VIDEO_DISPLAY_DATA~6_combout\,
	datac => \Adr[6]~5_combout\,
	datad => \Adr[2]~1_combout\,
	combout => \VGA0|Mux40~10_combout\);

-- Location: LCCOMB_X56_Y40_N24
\VGA0|Mux42~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux42~4_combout\ = (\VGA0|SYNC|pixel_row\(5) & !\VGA0|SYNC|pixel_row\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|SYNC|pixel_row\(5),
	datac => \VGA0|SYNC|pixel_row\(6),
	combout => \VGA0|Mux42~4_combout\);

-- Location: LCCOMB_X56_Y40_N10
\VGA0|Mux40~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~9_combout\ = (\VGA0|Mux42~4_combout\ & ((\VGA0|SYNC|pixel_column\(4) & ((\Memory0|altsyncram_component|auto_generated|q_a\(2)))) # (!\VGA0|SYNC|pixel_column\(4) & (\Memory0|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(4),
	datab => \Memory0|altsyncram_component|auto_generated|q_a\(6),
	datac => \VGA0|Mux42~4_combout\,
	datad => \Memory0|altsyncram_component|auto_generated|q_a\(2),
	combout => \VGA0|Mux40~9_combout\);

-- Location: LCCOMB_X56_Y40_N0
\VGA0|Mux40~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~11_combout\ = (\VGA0|Mux40~6_combout\ & ((\VGA0|Mux40~8_combout\) # ((\VGA0|Mux40~10_combout\) # (\VGA0|Mux40~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux40~6_combout\,
	datab => \VGA0|Mux40~8_combout\,
	datac => \VGA0|Mux40~10_combout\,
	datad => \VGA0|Mux40~9_combout\,
	combout => \VGA0|Mux40~11_combout\);

-- Location: LCCOMB_X56_Y42_N8
\VGA0|Mux40~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~14_combout\ = (\VGA0|VIDEO_DISPLAY_DATA~6_combout\ & (!\FSM0|cu_decoder|Mux0~0_combout\ & (PC(14) & !\VGA0|SYNC|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|VIDEO_DISPLAY_DATA~6_combout\,
	datab => \FSM0|cu_decoder|Mux0~0_combout\,
	datac => PC(14),
	datad => \VGA0|SYNC|pixel_column\(4),
	combout => \VGA0|Mux40~14_combout\);

-- Location: LCCOMB_X55_Y40_N20
\VGA0|Mux40~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~15_combout\ = (\VGA0|SYNC|pixel_column\(4) & ((\Memory0|altsyncram_component|auto_generated|q_a\(10)))) # (!\VGA0|SYNC|pixel_column\(4) & (\Memory0|altsyncram_component|auto_generated|q_a\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(4),
	datab => \Memory0|altsyncram_component|auto_generated|q_a\(14),
	datac => \Memory0|altsyncram_component|auto_generated|q_a\(10),
	combout => \VGA0|Mux40~15_combout\);

-- Location: LCCOMB_X55_Y40_N12
\VGA0|Mux40~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~56_combout\ = (\VGA0|SYNC|pixel_row\(5) & (((\VGA0|Mux40~15_combout\)))) # (!\VGA0|SYNC|pixel_row\(5) & (\Adr[10]~9_combout\ & (\VGA0|SYNC|pixel_column\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Adr[10]~9_combout\,
	datab => \VGA0|SYNC|pixel_row\(5),
	datac => \VGA0|SYNC|pixel_column\(4),
	datad => \VGA0|Mux40~15_combout\,
	combout => \VGA0|Mux40~56_combout\);

-- Location: LCCOMB_X58_Y40_N18
\VGA0|Mux40~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~13_combout\ = (\VGA0|Mux40~7_combout\ & ((\VGA0|SYNC|pixel_column\(4) & (\ALU0|m2|m1|m3|out[10]~46_combout\)) # (!\VGA0|SYNC|pixel_column\(4) & ((\ALU0|m2|m1|m3|out[14]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux40~7_combout\,
	datab => \VGA0|SYNC|pixel_column\(4),
	datac => \ALU0|m2|m1|m3|out[10]~46_combout\,
	datad => \ALU0|m2|m1|m3|out[14]~42_combout\,
	combout => \VGA0|Mux40~13_combout\);

-- Location: LCCOMB_X56_Y40_N20
\VGA0|Mux40~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~57_combout\ = (\VGA0|Mux40~14_combout\) # ((\VGA0|Mux40~13_combout\) # ((!\VGA0|SYNC|pixel_row\(6) & \VGA0|Mux40~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_row\(6),
	datab => \VGA0|Mux40~14_combout\,
	datac => \VGA0|Mux40~56_combout\,
	datad => \VGA0|Mux40~13_combout\,
	combout => \VGA0|Mux40~57_combout\);

-- Location: LCCOMB_X56_Y40_N12
\VGA0|Mux40~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~16_combout\ = (\VGA0|Mux40~11_combout\) # ((\VGA0|Mux27~2_combout\ & ((\VGA0|Mux40~12_combout\) # (\VGA0|Mux40~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux40~12_combout\,
	datab => \VGA0|Mux40~11_combout\,
	datac => \VGA0|Mux27~2_combout\,
	datad => \VGA0|Mux40~57_combout\,
	combout => \VGA0|Mux40~16_combout\);

-- Location: LCCOMB_X56_Y40_N8
\VGA0|Mux40~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~25_combout\ = (\VGA0|SYNC|pixel_row\(8) & (((\VGA0|SYNC|pixel_row\(7))))) # (!\VGA0|SYNC|pixel_row\(8) & ((\VGA0|SYNC|pixel_row\(7) & ((\VGA0|Mux40~16_combout\))) # (!\VGA0|SYNC|pixel_row\(7) & (\VGA0|Mux40~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux40~54_combout\,
	datab => \VGA0|SYNC|pixel_row\(8),
	datac => \VGA0|SYNC|pixel_row\(7),
	datad => \VGA0|Mux40~16_combout\,
	combout => \VGA0|Mux40~25_combout\);

-- Location: LCCOMB_X54_Y39_N28
\VGA0|Mux40~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~26_combout\ = (\VGA0|Mux27~2_combout\ & (!\VGA0|SYNC|pixel_column\(9) & (!\VGA0|SYNC|pixel_column\(4) & !\VGA0|SYNC|pixel_row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux27~2_combout\,
	datab => \VGA0|SYNC|pixel_column\(9),
	datac => \VGA0|SYNC|pixel_column\(4),
	datad => \VGA0|SYNC|pixel_row\(6),
	combout => \VGA0|Mux40~26_combout\);

-- Location: LCCOMB_X59_Y41_N26
\VGA0|Mux29~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux29~7_combout\ = (!\VGA0|SYNC|pixel_column\(5) & (!\VGA0|SYNC|pixel_column\(7) & (!\RegBank0|Equal1~0_combout\ & !\VGA0|SYNC|pixel_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(5),
	datab => \VGA0|SYNC|pixel_column\(7),
	datac => \RegBank0|Equal1~0_combout\,
	datad => \VGA0|SYNC|pixel_column\(6),
	combout => \VGA0|Mux29~7_combout\);

-- Location: LCCOMB_X58_Y40_N30
\VGA0|Mux29~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux29~8_combout\ = (\VGA0|Mux29~7_combout\ & ((\VGA0|SYNC|pixel_column\(4) & ((\RegBank0|RD2[2]~89_combout\))) # (!\VGA0|SYNC|pixel_column\(4) & (\RegBank0|RD2[6]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[6]~73_combout\,
	datab => \VGA0|SYNC|pixel_column\(4),
	datac => \VGA0|Mux29~7_combout\,
	datad => \RegBank0|RD2[2]~89_combout\,
	combout => \VGA0|Mux29~8_combout\);

-- Location: LCCOMB_X58_Y41_N12
\VGA0|Mux29~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux29~4_combout\ = (\VGA0|SYNC|pixel_column\(6) & (\VGA0|SYNC|pixel_column\(7) & (\VGA0|SYNC|pixel_column\(5) & !\RegBank0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(6),
	datab => \VGA0|SYNC|pixel_column\(7),
	datac => \VGA0|SYNC|pixel_column\(5),
	datad => \RegBank0|Equal0~0_combout\,
	combout => \VGA0|Mux29~4_combout\);

-- Location: LCCOMB_X58_Y40_N26
\VGA0|Mux29~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux29~5_combout\ = (\VGA0|Mux29~4_combout\ & ((\VGA0|SYNC|pixel_column\(4) & (\RegBank0|RD1[10]~57_combout\)) # (!\VGA0|SYNC|pixel_column\(4) & ((\RegBank0|RD1[14]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[10]~57_combout\,
	datab => \VGA0|SYNC|pixel_column\(4),
	datac => \VGA0|Mux29~4_combout\,
	datad => \RegBank0|RD1[14]~41_combout\,
	combout => \VGA0|Mux29~5_combout\);

-- Location: LCCOMB_X58_Y41_N26
\VGA0|Mux29~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux29~2_combout\ = (!\VGA0|SYNC|pixel_column\(6) & (!\VGA0|SYNC|pixel_column\(7) & (!\VGA0|SYNC|pixel_column\(5) & !\RegBank0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(6),
	datab => \VGA0|SYNC|pixel_column\(7),
	datac => \VGA0|SYNC|pixel_column\(5),
	datad => \RegBank0|Equal0~0_combout\,
	combout => \VGA0|Mux29~2_combout\);

-- Location: LCCOMB_X61_Y41_N24
\VGA0|Mux29~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux29~3_combout\ = (\VGA0|Mux29~2_combout\ & ((\VGA0|SYNC|pixel_column\(4) & ((\RegBank0|RD1[2]~89_combout\))) # (!\VGA0|SYNC|pixel_column\(4) & (\RegBank0|RD1[6]~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[6]~73_combout\,
	datab => \VGA0|SYNC|pixel_column\(4),
	datac => \VGA0|Mux29~2_combout\,
	datad => \RegBank0|RD1[2]~89_combout\,
	combout => \VGA0|Mux29~3_combout\);

-- Location: LCCOMB_X58_Y40_N20
\VGA0|Mux29~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux29~6_combout\ = (\VGA0|SYNC|pixel_row\(5) & (((\VGA0|SYNC|pixel_column\(8))))) # (!\VGA0|SYNC|pixel_row\(5) & ((\VGA0|SYNC|pixel_column\(8) & ((\VGA0|Mux29~3_combout\))) # (!\VGA0|SYNC|pixel_column\(8) & (\VGA0|Mux29~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux29~5_combout\,
	datab => \VGA0|SYNC|pixel_row\(5),
	datac => \VGA0|SYNC|pixel_column\(8),
	datad => \VGA0|Mux29~3_combout\,
	combout => \VGA0|Mux29~6_combout\);

-- Location: LCCOMB_X59_Y41_N0
\VGA0|Mux29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux29~0_combout\ = (\VGA0|SYNC|pixel_column\(5) & (\VGA0|SYNC|pixel_column\(7) & (!\RegBank0|Equal1~0_combout\ & \VGA0|SYNC|pixel_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(5),
	datab => \VGA0|SYNC|pixel_column\(7),
	datac => \RegBank0|Equal1~0_combout\,
	datad => \VGA0|SYNC|pixel_column\(6),
	combout => \VGA0|Mux29~0_combout\);

-- Location: LCCOMB_X58_Y40_N0
\VGA0|Mux29~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux29~1_combout\ = (\VGA0|Mux29~0_combout\ & ((\VGA0|SYNC|pixel_column\(4) & (\RegBank0|RD2[10]~57_combout\)) # (!\VGA0|SYNC|pixel_column\(4) & ((\RegBank0|RD2[14]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD2[10]~57_combout\,
	datab => \VGA0|SYNC|pixel_column\(4),
	datac => \RegBank0|RD2[14]~41_combout\,
	datad => \VGA0|Mux29~0_combout\,
	combout => \VGA0|Mux29~1_combout\);

-- Location: LCCOMB_X58_Y40_N8
\VGA0|Mux29~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux29~9_combout\ = (\VGA0|Mux29~6_combout\ & ((\VGA0|Mux29~8_combout\) # ((!\VGA0|SYNC|pixel_row\(5))))) # (!\VGA0|Mux29~6_combout\ & (((\VGA0|SYNC|pixel_row\(5) & \VGA0|Mux29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux29~8_combout\,
	datab => \VGA0|Mux29~6_combout\,
	datac => \VGA0|SYNC|pixel_row\(5),
	datad => \VGA0|Mux29~1_combout\,
	combout => \VGA0|Mux29~9_combout\);

-- Location: LCCOMB_X57_Y40_N26
\VGA0|Mux29~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux29~10_combout\ = (!\VGA0|SYNC|pixel_row\(6) & \VGA0|Mux29~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|SYNC|pixel_row\(6),
	datac => \VGA0|Mux29~9_combout\,
	combout => \VGA0|Mux29~10_combout\);

-- Location: LCCOMB_X54_Y39_N6
\VGA0|Mux40~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~27_combout\ = (\VGA0|Mux40~25_combout\ & ((\VGA0|Mux40~26_combout\) # ((!\VGA0|SYNC|pixel_row\(8))))) # (!\VGA0|Mux40~25_combout\ & (((\VGA0|SYNC|pixel_row\(8) & \VGA0|Mux29~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux40~25_combout\,
	datab => \VGA0|Mux40~26_combout\,
	datac => \VGA0|SYNC|pixel_row\(8),
	datad => \VGA0|Mux29~10_combout\,
	combout => \VGA0|Mux40~27_combout\);

-- Location: LCCOMB_X54_Y39_N4
\VGA0|char_address~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|char_address~11_combout\ = (\VGA0|Mux40~27_combout\ & ((\VGA0|char_address~6_combout\) # ((\VGA0|char_address~5_combout\ & \VGA0|format_rom|auto_generated|q_a\(2))))) # (!\VGA0|Mux40~27_combout\ & (\VGA0|char_address~5_combout\ & 
-- (\VGA0|format_rom|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux40~27_combout\,
	datab => \VGA0|char_address~5_combout\,
	datac => \VGA0|format_rom|auto_generated|q_a\(2),
	datad => \VGA0|char_address~6_combout\,
	combout => \VGA0|char_address~11_combout\);

-- Location: FF_X54_Y39_N5
\VGA0|char_address[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|char_address~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|char_address\(2));

-- Location: LCCOMB_X55_Y41_N30
\VGA0|Mux40~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~38_combout\ = (\VGA0|SYNC|pixel_row\(5) & ((\VGA0|SYNC|pixel_column\(4) & (Instr(11))) # (!\VGA0|SYNC|pixel_column\(4) & ((Instr(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(4),
	datab => Instr(11),
	datac => Instr(15),
	datad => \VGA0|SYNC|pixel_row\(5),
	combout => \VGA0|Mux40~38_combout\);

-- Location: LCCOMB_X57_Y42_N0
\VGA0|Mux40~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~37_combout\ = (!\VGA0|SYNC|pixel_row\(5) & ((\VGA0|SYNC|pixel_column\(4) & ((PC(11)))) # (!\VGA0|SYNC|pixel_column\(4) & (PC(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(15),
	datab => \VGA0|SYNC|pixel_column\(4),
	datac => PC(11),
	datad => \VGA0|SYNC|pixel_row\(5),
	combout => \VGA0|Mux40~37_combout\);

-- Location: LCCOMB_X55_Y41_N20
\VGA0|Mux40~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~39_combout\ = (\VGA0|Mux27~2_combout\ & (\VGA0|SYNC|pixel_row\(6) & ((\VGA0|Mux40~38_combout\) # (\VGA0|Mux40~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux40~38_combout\,
	datab => \VGA0|Mux27~2_combout\,
	datac => \VGA0|Mux40~37_combout\,
	datad => \VGA0|SYNC|pixel_row\(6),
	combout => \VGA0|Mux40~39_combout\);

-- Location: LCCOMB_X55_Y40_N10
\VGA0|Mux40~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~40_combout\ = (\VGA0|Mux40~39_combout\) # ((\VGA0|Mux40~17_combout\ & (\VGA0|char_address\(3) & \VGA0|Mux42~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux40~17_combout\,
	datab => \VGA0|Mux40~39_combout\,
	datac => \VGA0|char_address\(3),
	datad => \VGA0|Mux42~4_combout\,
	combout => \VGA0|Mux40~40_combout\);

-- Location: LCCOMB_X55_Y40_N16
\VGA0|Mux40~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~45_combout\ = (\VGA0|SYNC|pixel_column\(5) & (\VGA0|SYNC|pixel_row\(5) & (\VGA0|SYNC|pixel_column\(4) & !\VGA0|SYNC|pixel_row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(5),
	datab => \VGA0|SYNC|pixel_row\(5),
	datac => \VGA0|SYNC|pixel_column\(4),
	datad => \VGA0|SYNC|pixel_row\(6),
	combout => \VGA0|Mux40~45_combout\);

-- Location: LCCOMB_X55_Y40_N28
\VGA0|Mux40~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~43_combout\ = (\VGA0|SYNC|pixel_row\(5) & ((\VGA0|SYNC|pixel_column\(4) & (Instr(3))) # (!\VGA0|SYNC|pixel_column\(4) & ((Instr(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(4),
	datab => \VGA0|SYNC|pixel_row\(5),
	datac => Instr(3),
	datad => Instr(7),
	combout => \VGA0|Mux40~43_combout\);

-- Location: LCCOMB_X61_Y43_N16
\VGA0|Mux40~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~42_combout\ = (!\VGA0|SYNC|pixel_row\(5) & ((\VGA0|SYNC|pixel_column\(4) & ((PC(3)))) # (!\VGA0|SYNC|pixel_column\(4) & (PC(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => PC(7),
	datab => \VGA0|SYNC|pixel_column\(4),
	datac => PC(3),
	datad => \VGA0|SYNC|pixel_row\(5),
	combout => \VGA0|Mux40~42_combout\);

-- Location: LCCOMB_X55_Y40_N22
\VGA0|Mux40~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~44_combout\ = (\VGA0|SYNC|pixel_row\(6) & (!\VGA0|SYNC|pixel_column\(5) & ((\VGA0|Mux40~43_combout\) # (\VGA0|Mux40~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_row\(6),
	datab => \VGA0|Mux40~43_combout\,
	datac => \VGA0|Mux40~42_combout\,
	datad => \VGA0|SYNC|pixel_column\(5),
	combout => \VGA0|Mux40~44_combout\);

-- Location: LCCOMB_X55_Y39_N0
\VGA0|Mux40~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~41_combout\ = (!\VGA0|SYNC|pixel_column\(6) & (!\VGA0|SYNC|pixel_column\(7) & \VGA0|SYNC|pixel_column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(6),
	datac => \VGA0|SYNC|pixel_column\(7),
	datad => \VGA0|SYNC|pixel_column\(8),
	combout => \VGA0|Mux40~41_combout\);

-- Location: LCCOMB_X55_Y40_N26
\VGA0|Mux40~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~46_combout\ = (\VGA0|Mux40~40_combout\) # ((\VGA0|Mux40~41_combout\ & ((\VGA0|Mux40~45_combout\) # (\VGA0|Mux40~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux40~40_combout\,
	datab => \VGA0|Mux40~45_combout\,
	datac => \VGA0|Mux40~44_combout\,
	datad => \VGA0|Mux40~41_combout\,
	combout => \VGA0|Mux40~46_combout\);

-- Location: LCCOMB_X54_Y41_N20
\VGA0|Mux40~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~32_combout\ = (\VGA0|Mux27~2_combout\ & \VGA0|Mux40~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VGA0|Mux27~2_combout\,
	datad => \VGA0|Mux40~7_combout\,
	combout => \VGA0|Mux40~32_combout\);

-- Location: LCCOMB_X57_Y43_N4
\ALU0|m2|m1|m3|out[15]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ALU0|m2|m1|m3|out[15]~55_combout\ = (\FSM0|aludecod|WideOr1~0_combout\ & ((Instr(14) & ((\ALU0|m2|m1|m3|out[15]~28_combout\))) # (!Instr(14) & (\ALU0|Sum[15]~30_combout\)))) # (!\FSM0|aludecod|WideOr1~0_combout\ & (\ALU0|Sum[15]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|aludecod|WideOr1~0_combout\,
	datab => \ALU0|Sum[15]~30_combout\,
	datac => Instr(14),
	datad => \ALU0|m2|m1|m3|out[15]~28_combout\,
	combout => \ALU0|m2|m1|m3|out[15]~55_combout\);

-- Location: LCCOMB_X54_Y41_N30
\VGA0|Mux40~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~33_combout\ = (\VGA0|Mux40~32_combout\ & ((\VGA0|SYNC|pixel_column\(4) & (\ALU0|m2|m1|m3|out[11]~45_combout\)) # (!\VGA0|SYNC|pixel_column\(4) & ((\ALU0|m2|m1|m3|out[15]~55_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(4),
	datab => \VGA0|Mux40~32_combout\,
	datac => \ALU0|m2|m1|m3|out[11]~45_combout\,
	datad => \ALU0|m2|m1|m3|out[15]~55_combout\,
	combout => \VGA0|Mux40~33_combout\);

-- Location: LCCOMB_X54_Y41_N14
\VGA0|Mux40~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~29_combout\ = (\VGA0|Mux42~4_combout\ & ((\VGA0|SYNC|pixel_column\(4) & ((\Memory0|altsyncram_component|auto_generated|q_a\(3)))) # (!\VGA0|SYNC|pixel_column\(4) & (\Memory0|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memory0|altsyncram_component|auto_generated|q_a\(7),
	datab => \Memory0|altsyncram_component|auto_generated|q_a\(3),
	datac => \VGA0|Mux42~4_combout\,
	datad => \VGA0|SYNC|pixel_column\(4),
	combout => \VGA0|Mux40~29_combout\);

-- Location: LCCOMB_X54_Y41_N28
\VGA0|Mux40~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~28_combout\ = (\VGA0|Mux40~7_combout\ & ((\VGA0|SYNC|pixel_column\(4) & ((\ALU0|m2|m1|m3|out[3]~52_combout\))) # (!\VGA0|SYNC|pixel_column\(4) & (\ALU0|m2|m1|m3|out[7]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU0|m2|m1|m3|out[7]~49_combout\,
	datab => \VGA0|Mux40~7_combout\,
	datac => \ALU0|m2|m1|m3|out[3]~52_combout\,
	datad => \VGA0|SYNC|pixel_column\(4),
	combout => \VGA0|Mux40~28_combout\);

-- Location: LCCOMB_X54_Y41_N0
\VGA0|Mux40~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~30_combout\ = (\VGA0|VIDEO_DISPLAY_DATA~6_combout\ & ((\VGA0|SYNC|pixel_column\(4) & ((\Adr[3]~2_combout\))) # (!\VGA0|SYNC|pixel_column\(4) & (\Adr[7]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(4),
	datab => \VGA0|VIDEO_DISPLAY_DATA~6_combout\,
	datac => \Adr[7]~6_combout\,
	datad => \Adr[3]~2_combout\,
	combout => \VGA0|Mux40~30_combout\);

-- Location: LCCOMB_X54_Y41_N26
\VGA0|Mux40~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~31_combout\ = (\VGA0|Mux40~6_combout\ & ((\VGA0|Mux40~29_combout\) # ((\VGA0|Mux40~28_combout\) # (\VGA0|Mux40~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux40~29_combout\,
	datab => \VGA0|Mux40~28_combout\,
	datac => \VGA0|Mux40~6_combout\,
	datad => \VGA0|Mux40~30_combout\,
	combout => \VGA0|Mux40~31_combout\);

-- Location: LCCOMB_X57_Y42_N26
\VGA0|Mux14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux14~0_combout\ = (\FSM0|cu_decoder|Mux0~0_combout\ & (\VGA0|SYNC|pixel_column\(4))) # (!\FSM0|cu_decoder|Mux0~0_combout\ & ((\VGA0|SYNC|pixel_column\(4) & ((PC(11)))) # (!\VGA0|SYNC|pixel_column\(4) & (PC(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FSM0|cu_decoder|Mux0~0_combout\,
	datab => \VGA0|SYNC|pixel_column\(4),
	datac => PC(15),
	datad => PC(11),
	combout => \VGA0|Mux14~0_combout\);

-- Location: LCCOMB_X57_Y42_N6
\VGA0|Mux14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux14~1_combout\ = (\VGA0|Mux14~0_combout\ & ((\Result[11]~9_combout\) # ((!\FSM0|cu_decoder|Mux0~0_combout\)))) # (!\VGA0|Mux14~0_combout\ & (((\Result[15]~1_combout\ & \FSM0|cu_decoder|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Result[11]~9_combout\,
	datab => \VGA0|Mux14~0_combout\,
	datac => \Result[15]~1_combout\,
	datad => \FSM0|cu_decoder|Mux0~0_combout\,
	combout => \VGA0|Mux14~1_combout\);

-- Location: LCCOMB_X55_Y41_N10
\VGA0|Mux40~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~34_combout\ = (\VGA0|Mux42~4_combout\ & ((\VGA0|SYNC|pixel_column\(4) & (\Memory0|altsyncram_component|auto_generated|q_a\(11))) # (!\VGA0|SYNC|pixel_column\(4) & ((\Memory0|altsyncram_component|auto_generated|q_a\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Memory0|altsyncram_component|auto_generated|q_a\(11),
	datab => \Memory0|altsyncram_component|auto_generated|q_a\(15),
	datac => \VGA0|SYNC|pixel_column\(4),
	datad => \VGA0|Mux42~4_combout\,
	combout => \VGA0|Mux40~34_combout\);

-- Location: LCCOMB_X54_Y41_N16
\VGA0|Mux40~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~35_combout\ = (\VGA0|Mux27~2_combout\ & ((\VGA0|Mux40~34_combout\) # ((\VGA0|Mux14~1_combout\ & \VGA0|VIDEO_DISPLAY_DATA~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux14~1_combout\,
	datab => \VGA0|Mux27~2_combout\,
	datac => \VGA0|Mux40~34_combout\,
	datad => \VGA0|VIDEO_DISPLAY_DATA~6_combout\,
	combout => \VGA0|Mux40~35_combout\);

-- Location: LCCOMB_X54_Y41_N18
\VGA0|Mux40~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~36_combout\ = (\VGA0|Mux40~33_combout\) # ((\VGA0|Mux40~31_combout\) # (\VGA0|Mux40~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux40~33_combout\,
	datac => \VGA0|Mux40~31_combout\,
	datad => \VGA0|Mux40~35_combout\,
	combout => \VGA0|Mux40~36_combout\);

-- Location: LCCOMB_X54_Y39_N10
\VGA0|Mux39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux39~0_combout\ = (\VGA0|SYNC|pixel_row\(7) & ((\VGA0|SYNC|pixel_row\(8)) # ((\VGA0|Mux40~36_combout\)))) # (!\VGA0|SYNC|pixel_row\(7) & (!\VGA0|SYNC|pixel_row\(8) & (\VGA0|Mux40~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_row\(7),
	datab => \VGA0|SYNC|pixel_row\(8),
	datac => \VGA0|Mux40~46_combout\,
	datad => \VGA0|Mux40~36_combout\,
	combout => \VGA0|Mux39~0_combout\);

-- Location: LCCOMB_X59_Y41_N12
\VGA0|Mux28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux28~0_combout\ = (\VGA0|Mux29~0_combout\ & ((\VGA0|SYNC|pixel_column\(4) & ((\RegBank0|RD2[11]~53_combout\))) # (!\VGA0|SYNC|pixel_column\(4) & (\RegBank0|RD2[15]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(4),
	datab => \VGA0|Mux29~0_combout\,
	datac => \RegBank0|RD2[15]~37_combout\,
	datad => \RegBank0|RD2[11]~53_combout\,
	combout => \VGA0|Mux28~0_combout\);

-- Location: LCCOMB_X59_Y41_N22
\VGA0|Mux28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux28~2_combout\ = (\VGA0|Mux29~4_combout\ & ((\VGA0|SYNC|pixel_column\(4) & ((\RegBank0|RD1[11]~53_combout\))) # (!\VGA0|SYNC|pixel_column\(4) & (\RegBank0|RD1[15]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(4),
	datab => \VGA0|Mux29~4_combout\,
	datac => \RegBank0|RD1[15]~37_combout\,
	datad => \RegBank0|RD1[11]~53_combout\,
	combout => \VGA0|Mux28~2_combout\);

-- Location: LCCOMB_X61_Y42_N24
\VGA0|Mux28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux28~1_combout\ = (\VGA0|Mux29~2_combout\ & ((\VGA0|SYNC|pixel_column\(4) & ((\RegBank0|RD1[3]~85_combout\))) # (!\VGA0|SYNC|pixel_column\(4) & (\RegBank0|RD1[7]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegBank0|RD1[7]~69_combout\,
	datab => \VGA0|SYNC|pixel_column\(4),
	datac => \RegBank0|RD1[3]~85_combout\,
	datad => \VGA0|Mux29~2_combout\,
	combout => \VGA0|Mux28~1_combout\);

-- Location: LCCOMB_X59_Y41_N8
\VGA0|Mux28~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux28~3_combout\ = (\VGA0|SYNC|pixel_column\(8) & (((\VGA0|SYNC|pixel_row\(5)) # (\VGA0|Mux28~1_combout\)))) # (!\VGA0|SYNC|pixel_column\(8) & (\VGA0|Mux28~2_combout\ & (!\VGA0|SYNC|pixel_row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux28~2_combout\,
	datab => \VGA0|SYNC|pixel_column\(8),
	datac => \VGA0|SYNC|pixel_row\(5),
	datad => \VGA0|Mux28~1_combout\,
	combout => \VGA0|Mux28~3_combout\);

-- Location: LCCOMB_X59_Y41_N18
\VGA0|Mux28~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux28~4_combout\ = (\VGA0|Mux29~7_combout\ & ((\VGA0|SYNC|pixel_column\(4) & ((\RegBank0|RD2[3]~85_combout\))) # (!\VGA0|SYNC|pixel_column\(4) & (\RegBank0|RD2[7]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux29~7_combout\,
	datab => \RegBank0|RD2[7]~69_combout\,
	datac => \VGA0|SYNC|pixel_column\(4),
	datad => \RegBank0|RD2[3]~85_combout\,
	combout => \VGA0|Mux28~4_combout\);

-- Location: LCCOMB_X59_Y41_N28
\VGA0|Mux28~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux28~5_combout\ = (\VGA0|Mux28~3_combout\ & (((\VGA0|Mux28~4_combout\) # (!\VGA0|SYNC|pixel_row\(5))))) # (!\VGA0|Mux28~3_combout\ & (\VGA0|Mux28~0_combout\ & (\VGA0|SYNC|pixel_row\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux28~0_combout\,
	datab => \VGA0|Mux28~3_combout\,
	datac => \VGA0|SYNC|pixel_row\(5),
	datad => \VGA0|Mux28~4_combout\,
	combout => \VGA0|Mux28~5_combout\);

-- Location: LCCOMB_X54_Y39_N0
\VGA0|Mux28~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux28~6_combout\ = (!\VGA0|SYNC|pixel_row\(6) & \VGA0|Mux28~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|SYNC|pixel_row\(6),
	datad => \VGA0|Mux28~5_combout\,
	combout => \VGA0|Mux28~6_combout\);

-- Location: LCCOMB_X54_Y39_N12
\VGA0|Mux39~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux39~1_combout\ = (\VGA0|Mux39~0_combout\ & (((\VGA0|Mux40~26_combout\) # (!\VGA0|SYNC|pixel_row\(8))))) # (!\VGA0|Mux39~0_combout\ & (\VGA0|Mux28~6_combout\ & (\VGA0|SYNC|pixel_row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux39~0_combout\,
	datab => \VGA0|Mux28~6_combout\,
	datac => \VGA0|SYNC|pixel_row\(8),
	datad => \VGA0|Mux40~26_combout\,
	combout => \VGA0|Mux39~1_combout\);

-- Location: LCCOMB_X54_Y39_N22
\VGA0|char_address~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|char_address~12_combout\ = (\VGA0|Mux39~1_combout\ & ((\VGA0|char_address~6_combout\) # ((\VGA0|char_address~5_combout\ & \VGA0|format_rom|auto_generated|q_a\(3))))) # (!\VGA0|Mux39~1_combout\ & (\VGA0|char_address~5_combout\ & 
-- (\VGA0|format_rom|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux39~1_combout\,
	datab => \VGA0|char_address~5_combout\,
	datac => \VGA0|format_rom|auto_generated|q_a\(3),
	datad => \VGA0|char_address~6_combout\,
	combout => \VGA0|char_address~12_combout\);

-- Location: FF_X54_Y39_N23
\VGA0|char_address[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|char_address~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|char_address\(3));

-- Location: LCCOMB_X55_Y39_N8
\VGA0|Mux40~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~47_combout\ = (\VGA0|SYNC|pixel_column\(5) & (!\VGA0|SYNC|pixel_column\(8) & (\VGA0|SYNC|pixel_column\(7) & \VGA0|SYNC|pixel_column\(6)))) # (!\VGA0|SYNC|pixel_column\(5) & (\VGA0|SYNC|pixel_column\(8) & (!\VGA0|SYNC|pixel_column\(7) & 
-- !\VGA0|SYNC|pixel_column\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(5),
	datab => \VGA0|SYNC|pixel_column\(8),
	datac => \VGA0|SYNC|pixel_column\(7),
	datad => \VGA0|SYNC|pixel_column\(6),
	combout => \VGA0|Mux40~47_combout\);

-- Location: LCCOMB_X56_Y39_N2
\VGA0|Mux40~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~49_combout\ = (!\VGA0|SYNC|pixel_column\(9) & \VGA0|Mux40~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|SYNC|pixel_column\(9),
	datad => \VGA0|Mux40~47_combout\,
	combout => \VGA0|Mux40~49_combout\);

-- Location: LCCOMB_X55_Y39_N12
\VGA0|Mux27~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux27~3_combout\ = (!\VGA0|SYNC|pixel_column\(9) & (!\VGA0|SYNC|pixel_column\(4) & \VGA0|Mux27~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA0|SYNC|pixel_column\(9),
	datac => \VGA0|SYNC|pixel_column\(4),
	datad => \VGA0|Mux27~2_combout\,
	combout => \VGA0|Mux27~3_combout\);

-- Location: LCCOMB_X56_Y39_N12
\VGA0|Mux40~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~50_combout\ = (\VGA0|SYNC|pixel_row\(6) & ((\VGA0|SYNC|pixel_row\(5) & ((\VGA0|Mux27~3_combout\))) # (!\VGA0|SYNC|pixel_row\(5) & (\VGA0|Mux40~49_combout\)))) # (!\VGA0|SYNC|pixel_row\(6) & (\VGA0|Mux40~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_row\(6),
	datab => \VGA0|Mux40~49_combout\,
	datac => \VGA0|SYNC|pixel_row\(5),
	datad => \VGA0|Mux27~3_combout\,
	combout => \VGA0|Mux40~50_combout\);

-- Location: LCCOMB_X55_Y39_N18
\VGA0|Mux40~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~51_combout\ = (\VGA0|SYNC|pixel_column\(6) & (\VGA0|SYNC|pixel_column\(7) & (\VGA0|SYNC|pixel_column\(5) & !\VGA0|SYNC|pixel_column\(8)))) # (!\VGA0|SYNC|pixel_column\(6) & (!\VGA0|SYNC|pixel_column\(7) & (!\VGA0|SYNC|pixel_column\(5) & 
-- \VGA0|SYNC|pixel_column\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(6),
	datab => \VGA0|SYNC|pixel_column\(7),
	datac => \VGA0|SYNC|pixel_column\(5),
	datad => \VGA0|SYNC|pixel_column\(8),
	combout => \VGA0|Mux40~51_combout\);

-- Location: LCCOMB_X55_Y39_N10
\VGA0|Mux40~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~52_combout\ = (!\VGA0|SYNC|pixel_column\(7) & (\VGA0|SYNC|pixel_column\(8) & (\VGA0|SYNC|pixel_column\(6) $ (\VGA0|SYNC|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(6),
	datab => \VGA0|SYNC|pixel_column\(7),
	datac => \VGA0|SYNC|pixel_column\(5),
	datad => \VGA0|SYNC|pixel_column\(8),
	combout => \VGA0|Mux40~52_combout\);

-- Location: LCCOMB_X55_Y39_N24
\VGA0|Mux40~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~55_combout\ = (\VGA0|SYNC|pixel_row\(6) & (((!\VGA0|SYNC|pixel_column\(9))))) # (!\VGA0|SYNC|pixel_row\(6) & (\VGA0|SYNC|pixel_row\(5) & ((\VGA0|char_address\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_row\(5),
	datab => \VGA0|SYNC|pixel_row\(6),
	datac => \VGA0|SYNC|pixel_column\(9),
	datad => \VGA0|char_address\(4),
	combout => \VGA0|Mux40~55_combout\);

-- Location: LCCOMB_X55_Y39_N28
\VGA0|Mux40~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~53_combout\ = (\VGA0|Mux42~4_combout\ & ((\VGA0|Mux40~51_combout\ & ((\VGA0|Mux40~55_combout\) # (!\VGA0|Mux40~52_combout\))) # (!\VGA0|Mux40~51_combout\ & (!\VGA0|Mux40~52_combout\ & \VGA0|Mux40~55_combout\)))) # (!\VGA0|Mux42~4_combout\ & 
-- (\VGA0|Mux40~51_combout\ & (!\VGA0|Mux40~52_combout\ & \VGA0|Mux40~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux42~4_combout\,
	datab => \VGA0|Mux40~51_combout\,
	datac => \VGA0|Mux40~52_combout\,
	datad => \VGA0|Mux40~55_combout\,
	combout => \VGA0|Mux40~53_combout\);

-- Location: LCCOMB_X56_Y39_N30
\VGA0|Mux38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux38~0_combout\ = (\VGA0|SYNC|pixel_row\(7) & ((\VGA0|Mux40~50_combout\) # ((\VGA0|SYNC|pixel_row\(8))))) # (!\VGA0|SYNC|pixel_row\(7) & (((\VGA0|Mux40~53_combout\ & !\VGA0|SYNC|pixel_row\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux40~50_combout\,
	datab => \VGA0|Mux40~53_combout\,
	datac => \VGA0|SYNC|pixel_row\(7),
	datad => \VGA0|SYNC|pixel_row\(8),
	combout => \VGA0|Mux38~0_combout\);

-- Location: LCCOMB_X56_Y39_N24
\VGA0|Mux40~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux40~48_combout\ = (\VGA0|SYNC|pixel_row\(6) & (\VGA0|Mux27~3_combout\)) # (!\VGA0|SYNC|pixel_row\(6) & (((!\VGA0|SYNC|pixel_column\(9) & \VGA0|Mux40~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux27~3_combout\,
	datab => \VGA0|SYNC|pixel_column\(9),
	datac => \VGA0|Mux40~47_combout\,
	datad => \VGA0|SYNC|pixel_row\(6),
	combout => \VGA0|Mux40~48_combout\);

-- Location: LCCOMB_X56_Y39_N16
\VGA0|Mux38~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux38~1_combout\ = (\VGA0|Mux38~0_combout\ & (((\VGA0|Mux40~26_combout\) # (!\VGA0|SYNC|pixel_row\(8))))) # (!\VGA0|Mux38~0_combout\ & (\VGA0|Mux40~48_combout\ & ((\VGA0|SYNC|pixel_row\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux38~0_combout\,
	datab => \VGA0|Mux40~48_combout\,
	datac => \VGA0|Mux40~26_combout\,
	datad => \VGA0|SYNC|pixel_row\(8),
	combout => \VGA0|Mux38~1_combout\);

-- Location: LCCOMB_X56_Y39_N26
\VGA0|char_address~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|char_address~13_combout\ = (\VGA0|VIDEO_DISPLAY_DATA~0_combout\ & (((!\VGA0|VIDEO_DISPLAY_DATA~4_combout\ & \VGA0|Mux38~1_combout\)))) # (!\VGA0|VIDEO_DISPLAY_DATA~0_combout\ & (\VGA0|format_rom|auto_generated|q_a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|format_rom|auto_generated|q_a\(4),
	datab => \VGA0|VIDEO_DISPLAY_DATA~0_combout\,
	datac => \VGA0|VIDEO_DISPLAY_DATA~4_combout\,
	datad => \VGA0|Mux38~1_combout\,
	combout => \VGA0|char_address~13_combout\);

-- Location: LCCOMB_X56_Y39_N18
\VGA0|char_address~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|char_address~16_combout\ = (!\VGA0|SYNC|pixel_column\(9) & (\VGA0|SYNC|pixel_row\(4) & (\VGA0|char_address~13_combout\ & !\VGA0|VIDEO_DISPLAY_DATA~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(9),
	datab => \VGA0|SYNC|pixel_row\(4),
	datac => \VGA0|char_address~13_combout\,
	datad => \VGA0|VIDEO_DISPLAY_DATA~1_combout\,
	combout => \VGA0|char_address~16_combout\);

-- Location: FF_X56_Y39_N19
\VGA0|char_address[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|char_address~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|char_address\(4));

-- Location: LCCOMB_X55_Y39_N20
\VGA0|Mux37~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux37~2_combout\ = ((!\VGA0|SYNC|pixel_column\(5) & (!\VGA0|SYNC|pixel_column\(7) & \VGA0|SYNC|pixel_column\(8)))) # (!\VGA0|SYNC|pixel_row\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_column\(5),
	datab => \VGA0|SYNC|pixel_column\(7),
	datac => \VGA0|SYNC|pixel_column\(8),
	datad => \VGA0|SYNC|pixel_row\(5),
	combout => \VGA0|Mux37~2_combout\);

-- Location: LCCOMB_X56_Y39_N14
\VGA0|Mux37~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux37~3_combout\ = (\VGA0|Mux37~2_combout\) # ((\VGA0|SYNC|pixel_row\(7)) # ((!\VGA0|Mux37~0_combout\ & \VGA0|char_address\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux37~0_combout\,
	datab => \VGA0|Mux37~2_combout\,
	datac => \VGA0|SYNC|pixel_row\(7),
	datad => \VGA0|char_address\(5),
	combout => \VGA0|Mux37~3_combout\);

-- Location: LCCOMB_X56_Y39_N28
\VGA0|Mux37~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux37~1_combout\ = (\VGA0|VIDEO_DISPLAY_DATA~4_combout\) # ((\VGA0|SYNC|pixel_row\(8) & ((!\VGA0|SYNC|pixel_row\(7)) # (!\VGA0|Mux27~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|Mux27~3_combout\,
	datab => \VGA0|VIDEO_DISPLAY_DATA~4_combout\,
	datac => \VGA0|SYNC|pixel_row\(7),
	datad => \VGA0|SYNC|pixel_row\(8),
	combout => \VGA0|Mux37~1_combout\);

-- Location: LCCOMB_X56_Y39_N0
\VGA0|Mux37~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Mux37~4_combout\ = (\VGA0|SYNC|pixel_row\(6)) # ((\VGA0|Mux37~1_combout\) # ((\VGA0|Mux37~3_combout\ & !\VGA0|SYNC|pixel_row\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_row\(6),
	datab => \VGA0|Mux37~3_combout\,
	datac => \VGA0|SYNC|pixel_row\(8),
	datad => \VGA0|Mux37~1_combout\,
	combout => \VGA0|Mux37~4_combout\);

-- Location: LCCOMB_X56_Y39_N20
\VGA0|char_address~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|char_address~14_combout\ = (\VGA0|VIDEO_DISPLAY_DATA~5_combout\) # ((\VGA0|VIDEO_DISPLAY_DATA~0_combout\ & ((\VGA0|Mux37~4_combout\))) # (!\VGA0|VIDEO_DISPLAY_DATA~0_combout\ & (\VGA0|format_rom|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|format_rom|auto_generated|q_a\(5),
	datab => \VGA0|Mux37~4_combout\,
	datac => \VGA0|VIDEO_DISPLAY_DATA~0_combout\,
	datad => \VGA0|VIDEO_DISPLAY_DATA~5_combout\,
	combout => \VGA0|char_address~14_combout\);

-- Location: FF_X56_Y39_N21
\VGA0|char_address[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|char_address~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|char_address\(5));

-- Location: M9K_X53_Y38_N0
\VGA0|CGROM|char_gen_rom|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => X"000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001980006000F8006600198003C0000",
	mem_init3 => X"0003C001980066000F0006600198003C00000001800060001800060000C00198007E00000003C001980066001F0006000198003C00000003C00198000600018007C00180007E00000000600018007F00198001E00038000600000003C00198000600070000600198003C00000007E00180003000030000600198003C00000007E00060001800060003800060001800000003C001980066001D8006E00198003C000000060000C000180003000060000C0000000000018000600000000000000000000000000000000000000000001F80000000000000000C00018000600000000000000000000000000000000000600018001F80018000600000000000000001",
	mem_init2 => X"98003C003FC003C00198000000000003000060000C00030000C00060003000000000C000600030000C0003000060000C00000000000000000000000001800030000600000003F001980067000E0003C00198003C00000004600198003000060000C001980062000000018001F00006000F00060000F800180000000660019800FF0019800FF001980066000000000000000000000000066001980066000000018000000000000600018000600018000000000000000000000000000000000000000000010000C0007F001FC0030000400000000600018000600018001F8003C00060000000000003C00030000C00030000C00030003C000000018000F0007E00",
	mem_init1 => X"060001800060001800000003C000C00030000C00030000C0003C00000007E00180003000060000C00018007E000000018000600018000F0006600198006600000006600198003C00060003C001980066000000063001DC007F001AC00630018C0063000000018000F0006600198006600198006600000003C00198006600198006600198006600000001800060001800060001800060007E00000003C001980006000F0006000198003C000000066001B00078001F0006600198007C00000000E000F0006600198006600198003C000000060001800060001F0006600198007C00000003C00198006600198006600198003C00000006600198006E001F8007E0",
	mem_init0 => X"01D800660000000630018C0063001AC007F001DC006300000007E001800060001800060001800060000000066001B00078001C00078001B00066000000038001B0000C00030000C00030001E00000003C00060001800060001800060003C000000066001980066001F8006600198006600000003C001980066001B8006000198003C000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001880060001B8006E00198003C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../src/TCGROM.MIF",
	init_file_layout => "port_a",
	logical_ram_name => "DE10_LITE_VGA_Generator:VGA0|Char_ROM:CGROM|altsyncram:char_gen_rom|altsyncram_8or3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 9,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \VGA0|ALT_INV_clock_25MHz~clkctrl_outclk\,
	portaaddr => \VGA0|CGROM|char_gen_rom|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \VGA0|CGROM|char_gen_rom|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X54_Y38_N17
\VGA0|SYNC|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	asdata => \VGA0|SYNC|h_count\(2),
	sload => VCC,
	ena => \VGA0|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|pixel_column\(2));

-- Location: FF_X54_Y38_N27
\VGA0|SYNC|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	asdata => \VGA0|SYNC|h_count\(1),
	sload => VCC,
	ena => \VGA0|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|pixel_column\(1));

-- Location: LCCOMB_X54_Y38_N16
\VGA0|CGROM|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|CGROM|Mux0~2_combout\ = (\VGA0|SYNC|pixel_column\(2) & (((\VGA0|CGROM|char_gen_rom|auto_generated|q_a\(1)) # (\VGA0|SYNC|pixel_column\(1))))) # (!\VGA0|SYNC|pixel_column\(2) & (\VGA0|CGROM|char_gen_rom|auto_generated|q_a\(3) & 
-- ((!\VGA0|SYNC|pixel_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|CGROM|char_gen_rom|auto_generated|q_a\(3),
	datab => \VGA0|CGROM|char_gen_rom|auto_generated|q_a\(1),
	datac => \VGA0|SYNC|pixel_column\(2),
	datad => \VGA0|SYNC|pixel_column\(1),
	combout => \VGA0|CGROM|Mux0~2_combout\);

-- Location: LCCOMB_X54_Y38_N26
\VGA0|CGROM|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|CGROM|Mux0~3_combout\ = (\VGA0|CGROM|Mux0~2_combout\ & (((\VGA0|CGROM|char_gen_rom|auto_generated|q_a\(0)) # (!\VGA0|SYNC|pixel_column\(1))))) # (!\VGA0|CGROM|Mux0~2_combout\ & (\VGA0|CGROM|char_gen_rom|auto_generated|q_a\(2) & 
-- (\VGA0|SYNC|pixel_column\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|CGROM|char_gen_rom|auto_generated|q_a\(2),
	datab => \VGA0|CGROM|Mux0~2_combout\,
	datac => \VGA0|SYNC|pixel_column\(1),
	datad => \VGA0|CGROM|char_gen_rom|auto_generated|q_a\(0),
	combout => \VGA0|CGROM|Mux0~3_combout\);

-- Location: LCCOMB_X52_Y38_N24
\VGA0|CGROM|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|CGROM|Mux0~0_combout\ = (\VGA0|SYNC|pixel_column\(1) & (((\VGA0|CGROM|char_gen_rom|auto_generated|q_a\(6)) # (\VGA0|SYNC|pixel_column\(2))))) # (!\VGA0|SYNC|pixel_column\(1) & (\VGA0|CGROM|char_gen_rom|auto_generated|q_a\(7) & 
-- ((!\VGA0|SYNC|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|CGROM|char_gen_rom|auto_generated|q_a\(7),
	datab => \VGA0|CGROM|char_gen_rom|auto_generated|q_a\(6),
	datac => \VGA0|SYNC|pixel_column\(1),
	datad => \VGA0|SYNC|pixel_column\(2),
	combout => \VGA0|CGROM|Mux0~0_combout\);

-- Location: LCCOMB_X52_Y38_N2
\VGA0|CGROM|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|CGROM|Mux0~1_combout\ = (\VGA0|CGROM|Mux0~0_combout\ & ((\VGA0|CGROM|char_gen_rom|auto_generated|q_a\(4)) # ((!\VGA0|SYNC|pixel_column\(2))))) # (!\VGA0|CGROM|Mux0~0_combout\ & (((\VGA0|CGROM|char_gen_rom|auto_generated|q_a\(5) & 
-- \VGA0|SYNC|pixel_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|CGROM|char_gen_rom|auto_generated|q_a\(4),
	datab => \VGA0|CGROM|char_gen_rom|auto_generated|q_a\(5),
	datac => \VGA0|CGROM|Mux0~0_combout\,
	datad => \VGA0|SYNC|pixel_column\(2),
	combout => \VGA0|CGROM|Mux0~1_combout\);

-- Location: IOIBUF_X51_Y54_N1
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X54_Y38_N5
\VGA0|switch_sync[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|switch_sync\(2));

-- Location: FF_X54_Y38_N7
\VGA0|SYNC|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	asdata => \VGA0|SYNC|h_count\(3),
	sload => VCC,
	ena => \VGA0|SYNC|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|pixel_column\(3));

-- Location: LCCOMB_X54_Y38_N4
\VGA0|Green_Data~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|Green_Data~0_combout\ = \VGA0|switch_sync\(2) $ (((\VGA0|SYNC|pixel_column\(3) & (\VGA0|CGROM|Mux0~3_combout\)) # (!\VGA0|SYNC|pixel_column\(3) & ((\VGA0|CGROM|Mux0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|CGROM|Mux0~3_combout\,
	datab => \VGA0|CGROM|Mux0~1_combout\,
	datac => \VGA0|switch_sync\(2),
	datad => \VGA0|SYNC|pixel_column\(3),
	combout => \VGA0|Green_Data~0_combout\);

-- Location: LCCOMB_X54_Y38_N12
\VGA0|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|LessThan0~0_combout\ = (!\VGA0|SYNC|pixel_row\(6) & (!\VGA0|SYNC|pixel_row\(7) & !\VGA0|SYNC|pixel_row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|pixel_row\(6),
	datab => \VGA0|SYNC|pixel_row\(7),
	datad => \VGA0|SYNC|pixel_row\(8),
	combout => \VGA0|LessThan0~0_combout\);

-- Location: FF_X54_Y38_N13
\VGA0|Rev_video\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|Rev_video~q\);

-- Location: FF_X54_Y38_N25
\VGA0|SYNC|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|video_on_v~q\);

-- Location: LCCOMB_X54_Y38_N18
\VGA0|SYNC|green_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|green_out~0_combout\ = (\VGA0|SYNC|video_on_h~q\ & (\VGA0|SYNC|video_on_v~q\ & (\VGA0|Green_Data~0_combout\ $ (!\VGA0|Rev_video~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|video_on_h~q\,
	datab => \VGA0|Green_Data~0_combout\,
	datac => \VGA0|Rev_video~q\,
	datad => \VGA0|SYNC|video_on_v~q\,
	combout => \VGA0|SYNC|green_out~0_combout\);

-- Location: FF_X54_Y38_N19
\VGA0|SYNC|green_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|green_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|green_out~q\);

-- Location: LCCOMB_X54_Y38_N28
\VGA0|SYNC|video_on\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VGA0|SYNC|video_on~combout\ = (\VGA0|SYNC|video_on_h~q\ & \VGA0|SYNC|video_on_v~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA0|SYNC|video_on_h~q\,
	datad => \VGA0|SYNC|video_on_v~q\,
	combout => \VGA0|SYNC|video_on~combout\);

-- Location: FF_X54_Y38_N29
\VGA0|SYNC|blue_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \VGA0|clock_25MHz~clkctrl_outclk\,
	d => \VGA0|SYNC|video_on~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA0|SYNC|blue_out~q\);

-- Location: IOIBUF_X46_Y54_N29
\KEY[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\SW[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\SW[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\SW[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\SW[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\SW[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\SW[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(7) <= \HEX0[7]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(7) <= \HEX1[7]~output_o\;

ww_VGA_HS <= \VGA_HS~output_o\;

ww_VGA_VS <= \VGA_VS~output_o\;

ww_VGA_R(0) <= \VGA_R[0]~output_o\;

ww_VGA_R(1) <= \VGA_R[1]~output_o\;

ww_VGA_R(2) <= \VGA_R[2]~output_o\;

ww_VGA_R(3) <= \VGA_R[3]~output_o\;

ww_VGA_G(0) <= \VGA_G[0]~output_o\;

ww_VGA_G(1) <= \VGA_G[1]~output_o\;

ww_VGA_G(2) <= \VGA_G[2]~output_o\;

ww_VGA_G(3) <= \VGA_G[3]~output_o\;

ww_VGA_B(0) <= \VGA_B[0]~output_o\;

ww_VGA_B(1) <= \VGA_B[1]~output_o\;

ww_VGA_B(2) <= \VGA_B[2]~output_o\;

ww_VGA_B(3) <= \VGA_B[3]~output_o\;
END structure;


