-- This file shows an example of using the up1core package in VHDL
-- This saves time since component declarations are made in the package
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

PACKAGE up1core IS
	COMPONENT vga_sync
 		PORT(clock_25Mhz, red, green, blue		: IN	bit;
         	 red_out, green_out, blue_out 		: OUT 	bit;
			 horiz_sync_out, vert_sync_out		: OUT 	bit;
			 pixel_row, pixel_column	: OUT bit_VECTOR(9 DOWNTO 0));
	END COMPONENT;
	COMPONENT char_rom
		PORT(clk								: IN bit;
			 character_address			: IN bit_VECTOR(5 DOWNTO 0);
			 font_row, font_col			: IN bit_VECTOR(2 DOWNTO 0);
			 rom_mux_output				: OUT	bit);
	END COMPONENT;
END up1core;

