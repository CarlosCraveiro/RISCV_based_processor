library ieee;
use ieee.std_logic_1164.all;

use work.RV16Cm_pkg.all;

entity DE10_LITE_LCD is
	port
	(
		clk	: in bit;
		
		Instr			: in bit_vector(15 downto 0);
		IRWrite		: in bit;
		PC				: in bit_vector(15 downto 0);
		PCWrite		: in bit;

		LCD_EN		: out bit;
		LCD_RW		: out bit;
		LCD_RS		: out bit;
		LCD_D			: inout bit_vector(7 downto 0)
	);

end DE10_LITE_LCD;


architecture rtl of DE10_LITE_LCD is

	-- Funcao auxiliar para incrementar o contador
	function "+" (a, b: bit_vector) return bit_vector is
		variable s : bit_vector(a'range) := (others => '0');
		variable cin : bit := '0';
	begin
		abc: for i in a'reverse_range loop
			s(i) := a(i) xor b(i) xor cin;
			cin := (a(i) and b(i)) or (cin and (a(i) or b(i)));
		end loop abc;
		return s;
	end function "+";
	
	-- Funcao auxiliar para converter binário para decimal
	function to_integer (arg: bit_vector) return natural is
		variable result: natural := 0;
	begin
		for i in arg'range loop
			result := result+result;
				if arg(i) = '1' then
					result := result + 1;
				end if;
			end loop;
		return result;
	end to_integer;

	alias rd : bit_vector(2 downto 0) is Instr(7 downto 5);
	alias rs2 : bit_vector(2 downto 0) is Instr(4 downto 2);
	alias opcode : bit_vector(1 downto 0) is Instr(1 downto 0);
	alias funct3 : bit_vector(2 downto 0) is Instr(15 downto 13);
	alias Addr11 : bit_vector(10 downto 0) is Instr(12 downto 2);
	alias Imm8u : bit_vector(7 downto 3) is Instr(12 downto 8);
	alias Imm8d : bit_vector(2 downto 0) is Instr(4 downto 2);

	signal clk_763Hz_cnt : bit_vector(15 downto 0);
	signal clk_LCD : bit;
	
	signal ROM_out : std_logic_vector(8 downto 0);
	signal ROM_addr : bit_vector(8 downto 0);
	
	signal flag : bit := '0';
	
	type str is array (natural range <>) of bit_vector(7 downto 0);
	
	signal Imm8 : bit_vector(7 downto 0);
	signal Addr : bit_vector(10 downto 0);
	signal str_rd : str(1 downto 1);
	signal str_rs2 : str(1 downto 1);
	signal str_Imm8 : str(2 downto 1);
	signal str_PC : str(3 downto 1);
	signal str_Addr11 : str(3 downto 1);
	
	signal reg_PC : bit_vector(15 downto 0);

begin

	-- Component Instantiation Statement
	
	clk_1Hz0: DE10_LITE_counter
		generic map (
				WIDTH => 16
				)
		port map (
				clk => clk, clr => '0', 
				q => clk_763Hz_cnt
				);

	clk_LCD <= clk_763Hz_cnt(15);

	Imm8 <= Imm8u & Imm8d;

	process (clk, PCWrite)
	begin
		if (PCWrite = '1') then
			if (clk'event and clk='1') then
				reg_PC <= PC;
			end if;
		end if;
	end process;
			
	process (IRWrite)
	begin
--		if to_integer(reg_PC(12 downto 10)) > 9 then
--			str_PC(3) <= "00110111" + ("0000" & reg_PC(10 downto 8));
--		else
			str_PC(3) <= "00110" & reg_PC(10 downto 8);
--		end if;
		if to_integer(reg_PC(7 downto 4)) > 9 then
			str_PC(2) <= "00110111" + ("0000" & reg_PC(7 downto 4));
		else
			str_PC(2) <= "0011" & reg_PC(7 downto 4);
		end if;
		if to_integer(reg_PC(3 downto 0)) > 9 then
			str_PC(1) <= "00110111" + ("0000" & reg_PC(3 downto 0));
		else
			str_PC(1) <= "0011" & reg_PC(3 downto 0);
		end if;
		str_rd(1) <= "00110" & rd;
		str_rs2(1) <= "00110" & rs2;
		if to_integer(Imm8(7 downto 4)) > 9 then
			str_Imm8(2) <= "00110111" + ("0000" & Imm8(7 downto 4));
		else
			str_Imm8(2) <= "0011" & Imm8(7 downto 4);
		end if;
		if to_integer(Imm8(3 downto 0)) > 9 then
			str_Imm8(1) <= "00110111" + ("0000" & Imm8(3 downto 0));
		else
			str_Imm8(1) <= "0011" & Imm8(3 downto 0);
		end if;
--		if to_integer(Addr11(5 downto 3)) > 9 then
--			str_Addr11(3) <= "00110111" + ("0000" & Addr11(5 downto 3));
--		else
			str_Addr11(3) <= "00110" & Addr11(5 downto 3);
--		end if;
		if to_integer(Addr11(10 downto 7)) > 9 then
			str_Addr11(2) <= "00110111" + ("0000" & Addr11(10 downto 7));
		else
			str_Addr11(2) <= "0011" & Addr11(10 downto 7);
		end if;
		if to_integer(Addr11(6) & Addr11(2 downto 0)) > 9 then
			str_Addr11(1) <= "00110111" + ("0000" & Addr11(6) & Addr11(2 downto 0));
		else
			str_Addr11(1) <= "0011" & Addr11(6) & Addr11(2 downto 0);
		end if;
	end process;
	
	process(clk_LCD, IRWrite)
		constant zero : bit_vector(4 downto 0) := (others => '0');
		constant um : bit_vector(4 downto 0) := (0 => '1', others => '0');
		variable ROM_counter : bit_vector(4 downto 0);
	begin
		if (IRWrite = '1') then
			ROM_counter := zero;
		elsif (clk_LCD'event and clk_LCD ='1') then
			if (ROM_counter(4) = '0') then 
				ROM_counter := ROM_counter + um;
			end if;
		end if;
		ROM_addr(3 downto 0) <= ROM_counter(3 downto 0);
		flag <= ROM_counter(4);
		case ROM_counter is
			when "00001" =>						--Addr(3)
				LCD_D <= str_PC(3);
			when "00010" =>						--Addr(2)
				LCD_D <= str_PC(2);
			when "00011" =>						--Addr(1)
				LCD_D <= str_PC(1);
			when "01011" => 						--rd/rs1
				case opcode is
					when "00" => LCD_D <= str_rd(1);
					when "01" => LCD_D <= str_rd(1);
					when "10" => LCD_D <= str_rd(1);
					when "11" => LCD_D <= to_bitvector(ROM_out(7 downto 0));
				end case;
			when "01101" =>						--Addr11(3)
				case opcode is
					when "00" => LCD_D <= to_bitvector(ROM_out(7 downto 0));
					when "01" => LCD_D <= to_bitvector(ROM_out(7 downto 0));
					when "10" => LCD_D <= to_bitvector(ROM_out(7 downto 0));
					when "11" => LCD_D <= str_Addr11(3);
				end case;
			when "01110" =>						--Imm8(2)/Addr11(2)
				case opcode is
					when "00" => LCD_D <= to_bitvector(ROM_out(7 downto 0));
					when "01" => LCD_D <= str_Imm8(2);
					when "10" => LCD_D <= str_Imm8(2);
					when "11" => LCD_D <= str_Addr11(2);
				end case;
			when "01111" =>						--rs2/Imm8(1)/Addr11(1)
				case opcode is
					when "00" => LCD_D <= str_rs2(1);
					when "01" => LCD_D <= str_Imm8(1);
					when "10" => LCD_D <= str_Imm8(1);
					when "11" => LCD_D <= str_Addr11(1);
				end case;
			when others => LCD_D <= to_bitvector(ROM_out(7 downto 0));
		end case;
		
	end process;
	
	-- Component Instantiation Statement

	DE10_LITE_LCD_ROM_inst : work.DE10_LITE_LCD_ROM PORT MAP (
			address	 => to_stdlogicvector(ROM_addr),
			clock	 => to_stdulogic(clk),
			q	 => ROM_out
	);

	ROM_addr(8 downto 4) <= opcode & funct3;

	LCD_RW <= '0';	-- Always Write mode
	LCD_RS <= not to_bit(ROM_out(8));
	LCD_EN <= not clk_LCD and not flag;
	
end rtl;
