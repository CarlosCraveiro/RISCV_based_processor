-- DE10_LITE_VGA_Generator module
--
-- VGA Generator Implementation
-- Uses VGA to Display Data
--
-- Based on Introduction to Computing Systems
-- by Yale Patt and Sanjay Patel
--
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

LIBRARY work;
USE work.up1core.all;

ENTITY DE10_LITE_VGA_Generator IS

   PORT( MAX10_CLK1_50			: IN bit;
         KEY						: IN bit_vector(1 downto 0);
			SW							: IN bit_vector(9 downto 0);
         VGA_R,VGA_G,VGA_B 	: OUT bit_vector(3 downto 0);
         VGA_HS,VGA_VS 			: OUT bit;
			--Debug signals
			clk, reset				: in bit;
			PC							: in bit_vector(15 downto 0) := (others => '0');
			Adr						: in bit_vector(15 downto 0) := (others => '0');
			Instr						: in bit_vector(15 downto 0) := (others => '0');
			ReadData					: in bit_vector(15 downto 0) := (others => '0');
			RD1						: in bit_vector(15 downto 0) := (others => '0');
			RD2						: in bit_vector(15 downto 0) := (others => '0');
			ALUResult				: in bit_vector(15 downto 0) := (others => '0');
			Zero						: in bit := '0';
			PCWrite					: in bit := '0';
			RegWrite					: in bit := '0'
		);
		
END DE10_LITE_VGA_Generator;

ARCHITECTURE behavior OF DE10_LITE_VGA_Generator IS

	SIGNAL Vert_sync_in : bit;

	-- Video Display Signals
	SIGNAL Red_Data, Green_Data, Blue_Data, Power_On, Rev_video : bit;

	-- Signals for Video ROM Memory for Pixel Data
	SIGNAL char_address					: bit_vector(5 DOWNTO 0);
	SIGNAL sum_address					: bit_vector(6 DOWNTO 0);
	SIGNAL col_address, row_address	: std_logic_vector(5 DOWNTO 0);
	SIGNAL pixel_col, pixel_row		: bit_vector(9 DOWNTO 0);
	SIGNAL rom_mux_output				: bit;
	SIGNAL format_address				: std_logic_vector(5 DOWNTO 0);
	SIGNAL format_data					: std_logic_vector(5 DOWNTO 0);

	-- Signals for Push buttons
	SIGNAL switch_sync					: bit_vector(9 DOWNTO 0);

	signal Red, Green, Blue: bit;
	signal clock_25MHz: bit;
	
BEGIN

-- Character Format ROM for Video Display
-- Displays constant format character data
-- on left side of Display area
	format_rom: altsyncram
	GENERIC MAP (
		address_aclr_a => "NONE",
		clock_enable_input_a => "BYPASS",
		clock_enable_output_a => "BYPASS",
		init_file => "../src/format.mif",
		intended_device_family => "MAX 10",
		lpm_hint => "ENABLE_RUNTIME_MOD=NO",
		lpm_type => "altsyncram",
		numwords_a => 60,
		operation_mode => "ROM",
		outdata_aclr_a => "NONE",
		outdata_reg_a => "UNREGISTERED",
		widthad_a => 6,
		width_a => 6,
		width_byteena_a => 1
	)
	PORT MAP (
		address_a => format_address,
		clock0 => to_stdulogic(clock_25MHz),
		q_a => format_data
	);

---------------------------------------------------------------------------------------
	-- Generate VGA sync signals for display
   SYNC: vga_sync
 	PORT MAP(	clock_25Mhz => clock_25MHz, 
					red => red_data, green => green_data, blue => blue_data,	
					red_out => red, green_out => green, blue_out => blue,
					horiz_sync_out => VGA_HS, vert_sync_out => vert_sync_in,
					pixel_row => pixel_row, pixel_column => pixel_col);

	-- Character Font ROM for Video Display
	CGROM: char_rom
	PORT MAP(	clk => clock_25MHz,				--25MHz
					character_address => char_address,
					font_row => pixel_row(3 DOWNTO 1), font_col => pixel_col(3 DOWNTO 1),	
					rom_mux_output => rom_mux_output);

------------------------------------------------------------------------------

	VGA_VS <= vert_sync_in;

	-- Colors for pixel data on video signal
	-- address video_rom for pixel color data
	-- Switch 2 xor Rev_Video will reverse video
	Red_Data <= not ((rom_mux_output xor Switch_Sync(2)) xor Rev_video);
	Green_Data <= not ((rom_mux_output xor Switch_Sync(2)) xor Rev_video);
	Blue_Data <= '1';

	-- current character row and column being displayed
	row_address(5 DOWNTO 0) <= to_stdlogicvector(pixel_row(9 DOWNTO 4));
	col_address(5 DOWNTO 0) <= to_stdlogicvector(pixel_col(9 DOWNTO 4));

	-- Address for Constant Character Data Format ROM
	format_address(1 DOWNTO 0) <= Col_address(1 DOWNTO 0);
	format_address(5 DOWNTO 2) <= Row_address(4 DOWNTO 1);

	-- This Process Provides Character Data for Video Display
	-- by generating addresses for the Character Generator ROM
	-- using the character row address and col address provided by the Video 
	-- Sync process  - 40 characters by 30 lines of display area
	VIDEO_DISPLAY_DATA: PROCESS
	BEGIN
		WAIT UNTIL (clock_25MHz'event) AND (clock_25MHz='1');
				-- Reverse Video for Title at top of screen
		IF (row_address <= "00011") THEN
			rev_video <= '1'; 
		ELSE
			rev_video <= '0';
		END IF;
				-- Blank characters on edge of screen and on alternating lines
		IF (row_address(0)='0') OR (col_address < "001000") OR (col_address >"010101") THEN
			char_address <= "100000";
		ELSE 
				-- Constant Character Area - use data from format ROM
			IF ((col_address >= "001000") AND (col_address <= "001011")) THEN
				char_address <= to_bitvector(format_data);
			ELSE
				-- Couple of Spaces
				IF (col_address = "001100") OR (col_address = "001101") 
				-- Blanks on Top and Bottom line of Display Area  
					OR (row_address < "00010") OR (row_address > "11011")  THEN 
					char_address <= "100000";
				ELSE
					-- Numeric Data From Simulation
					-- Display Values in Hex
					CASE  row_address(4 DOWNTO 1) IS
						WHEN  "0001"  =>
							CASE col_address IS
							-- Print "RV16CM" on first line of data display area
								WHEN "001110" => 
									char_address <= "010010" ;--R
								WHEN "001111" => 
									char_address <= "010110" ;--V
								WHEN "010000" => 
									char_address <= "110001" ;--1
								WHEN "010001" => 
									char_address <= "110110" ;--6
								WHEN "010010" => 
									char_address <= "000011" ;--C
								WHEN "010011" => 
									char_address <= "001101" ;--M
								WHEN "010100" => 
									char_address <= "100000" ;--
								WHEN "010101" => 
									char_address <= "100000" ;--
								WHEN OTHERS =>
									char_address <= char_address;
							END CASE;
						WHEN  "0010" =>
							CASE col_address IS
								WHEN "001110" => 
									-- Selects Hex Character Address with 4-bit value from signal
									char_address <= "11" & PC(15 DOWNTO 12);
								WHEN "001111" => 
									char_address <= "11" & PC(11 DOWNTO 8);
								WHEN "010000" => 
									-- Selects Hex Character Address with 4-bit value from signal
									char_address <= "11" & PC(7 DOWNTO 4);
								WHEN "010001" =>
									-- Selects Hex Character Address with 4-bit value from signal
									char_address <= "11" & PC(3 DOWNTO 0);
								WHEN OTHERS =>
									char_address <= "100000";
							END CASE;
						WHEN  "0011"  =>
								-- Selects Hex Character Address with 4-bit value from signal
							CASE col_address IS
								WHEN "001110" => 
									char_address <= "11" & Instr(15 DOWNTO 12);
								WHEN "001111" => 
									char_address <= "11" & Instr(11 DOWNTO 8);
								WHEN "010000" => 
									char_address <= "11" & Instr(7 DOWNTO 4);
								WHEN "010001" => 
									char_address <= "11" & Instr(3 DOWNTO 0);
								WHEN OTHERS =>
									char_address <= "100000";
							END CASE;
						WHEN   "0100"  =>
								-- Selects Hex Character Address with 4-bit value from signal
							CASE col_address IS
								WHEN "001110" => 
									char_address <= "11" & Adr(15 DOWNTO 12);
								WHEN "001111" => 
									char_address <= "11" & Adr(11 DOWNTO 8);
								WHEN "010000" =>
									char_address <= "11" & Adr(7 DOWNTO 4);
								WHEN "010001" =>
									char_address <= "11" & Adr(3 DOWNTO 0);
								WHEN OTHERS =>
									char_address <= "100000";
							END CASE;
						WHEN   "0101"  =>
							CASE col_address IS
								-- Selects Hex Character Address with 4-bit value from signal
								WHEN "001110" => 
									char_address <= "11" & ReadData(15 DOWNTO 12);
								WHEN "001111" => 
									char_address <= "11" & ReadData(11 DOWNTO 8);
								WHEN "010000" => 
									char_address <= "11" & ReadData(7 DOWNTO 4);
								WHEN "010001" =>
									char_address <= "11" & ReadData(3 DOWNTO 0);
								WHEN OTHERS =>
									char_address <= "100000";
							END CASE;
						WHEN   "0110"  =>
							CASE col_address IS
								WHEN "001110" => 
									-- Selects Hex Character Address with 4-bit value from signal
									char_address <= "11" & ALUResult(15 DOWNTO 12);
								WHEN "001111" => 
									char_address <= "11" & ALUResult(11 DOWNTO 8);
								WHEN "010000" => 
									char_address <= "11" & ALUResult(7 DOWNTO 4);
								WHEN "010001" => 
									char_address <= "11" & ALUResult(3 DOWNTO 0);
								WHEN OTHERS =>
									char_address <= "100000";
							END CASE;
						WHEN   "0111"  =>
							CASE col_address IS
								WHEN "001110" => 
									-- Selects Hex Character Address with 4-bit value from signal
									char_address <= "11000" & Zero;
								WHEN OTHERS =>
									char_address <= "100000";
								END CASE;
						WHEN   "1000"  =>
							CASE col_address IS
								WHEN "001110" => 
									-- Selects Hex Character Address with 4-bit value from signal
									char_address <= "11" & RD1(15 DOWNTO 12);
								WHEN "001111" => 
									char_address <= "11" & RD1(11 DOWNTO 8);
								WHEN "010000" => 
									char_address <= "11" & RD1(7 DOWNTO 4);
								WHEN "010001" => 
									char_address <= "11" & RD1(3 DOWNTO 0);
								WHEN OTHERS =>
									char_address <= "100000";
							END CASE;
						WHEN   "1001"  =>
							CASE col_address IS
								WHEN "001110" => 
									-- Selects Hex Character Address with 4-bit value from signal
									char_address <= "11" & RD2(15 DOWNTO 12);
								WHEN "001111" => 
									char_address <= "11" & RD2(11 DOWNTO 8);
								WHEN "010000" => 
									char_address <= "11" & RD2(7 DOWNTO 4);
								WHEN "010001" => 
									char_address <= "11" & RD2(3 DOWNTO 0);
								WHEN OTHERS =>
									char_address <= "100000";
							END CASE;
						WHEN   "1010"  =>
								IF col_address = "001110" THEN
									-- Select "0" OR "1" character address
									char_address <= "11000" & RegWrite;
								ELSE
									char_address <= "100000";
								END IF;
						WHEN   "1011"  =>
								IF col_address = "001110" THEN
									-- Select "0" OR "1" character address
									char_address <= "11000" & PCWrite;
								ELSE
									char_address <= "100000";
								END IF;
						WHEN   "1100"  =>
								IF col_address = "001110" THEN
									-- Select Up arrow or Down arrow character address
									char_address <= "0111" & clk & "0";
								ELSE
									char_address <= "100000";
								END IF;
						WHEN   "1101"  =>
								IF col_address = "001110" THEN
									-- Select Up arrow or Down arrow character address
									char_address <= "0111" & reset & "0";
								ELSE
									char_address <= "100000";
								END IF;
						WHEN OTHERS =>
									char_address <= "100000";
					END CASE;
				END IF;
			END IF;
		END IF;
	END PROCESS VIDEO_DISPLAY_DATA;

	VGA_R <= Red & Red & Red & Red;
	VGA_G <= Green & Green & Green & Green;
	VGA_B <= Blue & Blue & Blue & Blue;
	
	--Generate 25MHz
	process(MAX10_CLK1_50)
	begin
		if (MAX10_CLK1_50'event and MAX10_CLK1_50='1') then
			clock_25MHz <= not clock_25MHz;
		end if;
	end process;
	
	-- Sync extenal pushbutton inputs to chip clock
	PUSH_BUTTON_SYNC: PROCESS
	BEGIN
		WAIT UNTIL (clock_25MHz'event) AND (clock_25MHz='1');
		Switch_Sync <= SW;
	END PROCESS PUSH_BUTTON_SYNC;

END behavior;

