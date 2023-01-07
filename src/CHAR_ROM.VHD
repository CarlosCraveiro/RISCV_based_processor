LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

ENTITY Char_ROM IS
	PORT(	clk : in bit;
			character_address		: IN	bit_VECTOR(5 DOWNTO 0);
			font_row, font_col		: IN 	bit_VECTOR(2 DOWNTO 0);
			rom_mux_output			: OUT	bit);
END Char_ROM;

ARCHITECTURE a OF Char_ROM IS
	signal	clkn : bit;
	SIGNAL	rom_data			: std_logic_VECTOR(7 DOWNTO 0);
	SIGNAL	rom_address			: bit_VECTOR(8 DOWNTO 0);
BEGIN
				-- Small 8 by 8 Character Generator ROM for Video Display
				-- Each character is eight 8-bits words of pixel data
 char_gen_rom: altsyncram
	GENERIC MAP (
		address_aclr_a => "NONE",
		clock_enable_input_a => "BYPASS",
		clock_enable_output_a => "BYPASS",
		init_file => "../src/TCGROM.MIF",
		intended_device_family => "MAX 10",
		lpm_hint => "ENABLE_RUNTIME_MOD=NO",
		lpm_type => "altsyncram",
		numwords_a => 512,
		operation_mode => "ROM",
		outdata_aclr_a => "NONE",
		outdata_reg_a => "UNREGISTERED",
		widthad_a => 9,
		width_a => 8,
		width_byteena_a => 1
	)
	PORT MAP (
		address_a => to_stdlogicvector(rom_address), q_a => rom_data, clock0 => to_stdulogic(clkn));

clkn <= not clk;

rom_address <= character_address & font_row;

				-- Mux to pick off correct rom data bit from 8-bit word
				-- for on screen character generation
rom_mux_output <= to_bit(rom_data ( (CONV_INTEGER(NOT to_stdlogicvector(font_col(2 DOWNTO 0))))));

END a;

