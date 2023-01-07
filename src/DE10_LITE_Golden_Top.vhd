library ieee;
use ieee.std_logic_1164.all;

use work.RV16Cm_pkg.all;

entity DE10_LITE_Golden_Topzera is
	port
	(
		MAX10_CLK1_50	: in bit;
		
		KEY				: in bit_vector(1 downto 0);

		SW					: in bit_vector(9 downto 0);

		LEDR 				: out bit_vector(9 downto 0);
		
		HEX0				: out bit_vector(7 downto 0);
		HEX1				: out bit_vector(7 downto 0);

		VGA_HS			: out bit;
		VGA_VS			: out bit;
		VGA_R				: out bit_vector(3 downto 0);
		VGA_G				: out bit_vector(3 downto 0);
		VGA_B				: out bit_vector(3 downto 0)
	);

end DE10_LITE_Golden_Topzera;






architecture rtl of DE10_LITE_Golden_Topzera is

	signal clk			: bit;
	signal reset		: bit;
	signal clkn			: bit;
	signal clk_cnt		: bit_vector(25 downto 0);
	
	signal num_state	: bit_vector(3 downto 0);

	constant ZeroCnst	: bit_vector(15 downto 0) := (others => '0');
	constant DoisCnst	: bit_vector(15 downto 0) := (1 => '1', others => '0');

	--Internal signals
	signal PC			: bit_vector(15 downto 0);
	signal PCNext		: bit_vector(15 downto 0);
	signal Adr			: bit_vector(15 downto 0);
	signal Instr		: bit_vector(15 downto 0);
	signal ReadData	: bit_vector(15 downto 0);
	signal Data			: bit_vector(15 downto 0);
	signal ImmExt		: bit_vector(15 downto 0);
	signal RD1			: bit_vector(15 downto 0);
	signal RD2			: bit_vector(15 downto 0);
	signal WriteData	: bit_vector(15 downto 0);
	signal B				: bit_vector(15 downto 0);
	signal SrcA			: bit_vector(15 downto 0);
	signal SrcB			: bit_vector(15 downto 0);
	signal ALUResult	: bit_vector(15 downto 0);
	signal ALUOut		: bit_vector(15 downto 0);
	signal Result		: bit_vector(15 downto 0);
	signal Zero			: bit;
--	signal Op			: bit_vector(1 downto 0);
--	signal Funct3		: bit_vector(2 downto 0);
	signal PCWrite		: bit;
	signal AdrSrc		: bit;
	signal MemWrite	: bit;
	signal IRWrite		: bit;
	signal RegWrite	: bit;
	signal ResultSrc	: bit_vector(1 downto 0);
	signal ALUControl	: bit_vector(2 downto 0);
	signal ALUSrcA		: bit_vector(1 downto 0);
	signal ALUSrcB		: bit_vector(1 downto 0);
	signal ImmSrc		: bit_vector(1 downto 0);
	
	alias Op: bit_vector(1 downto 0) is Instr(1 downto 0);
	alias Funct3: bit_vector(2 downto 0) is Instr(15 downto 13);
	alias Rs1: bit_vector(2 downto 0) is Instr(7 downto 5);
	alias Rs2: bit_vector(2 downto 0) is Instr(4 downto 2);
	alias Rd: bit_vector(2 downto 0) is Instr(7 downto 5);
	alias Imm8U: bit_vector(4 downto 0) is Instr(12 downto 8);
	alias Imm8D: bit_vector(2 downto 0) is Instr(4 downto 2);
--	alias Addr11: bit_vector(10 downto 0) is Instr(12 downto 2);
	alias Addr11U: bit_vector(2 downto 0) is Instr(7 downto 5);
	
	signal ReadData_std: std_logic_vector(15 downto 0);
	
begin	
	--Unit Control
	FSM0: DE10_LITE_FSM
		port map
		(
			--Entradas
			clk => clk, 
			reset => reset,
			Zero => Zero,
			Op => Op,
			Funct3 => Funct3,
			-- Saidas
			PCWrite => PCWrite,
			AdrSrc => AdrSrc,
			MemWrite => MemWrite,
			IRWrite => IRWrite,
			RegWrite => RegWrite,
			ResultSrc => ResultSrc,
			ALUControl => ALUControl,
			ALUSrcA => ALUSrcA,
			ALUSrcB => ALUSrcB,
			ImmSrc => ImmSrc,
			num_state => num_state,
			ZFlag_debug => LEDR(1)
		);

	--PC Register
	process (clk, reset)
	begin
		if (reset = '1') then
			PC <= (others => '0');
		elsif (clk'event and clk='1') then
			if (PCWrite='1') then
				PC <= Result;
			end if;
		end if;
	end process;
	
	--Memory Address source selection
	with AdrSrc select
		Adr <= PC when '0',
				 Result when '1';
	
	--Program/Data Memory
	Memory0 : work.DE10_LITE_Memory
		port map
		(
			address	 => to_stdlogicvector('0' & Adr(10 downto 1)),
			clock	 => to_stdUlogic(clkn),
			data	 => to_stdlogicvector(WriteData),
			wren	 => to_stdUlogic(MemWrite),
			q	 => ReadData_std
		);
	ReadData <= to_bitvector(ReadData_std);

	--IR Register
	process (clk)
	begin
		if (clk'event and clk='1') then
			if (IRWrite='1') then
				Instr <= ReadData;
			end if;
		end if;
	end process;

	--Data Register
	process (clk)
	begin
		if (clk'event and clk='1') then
				Data <= ReadData;
		end if;
	end process;
	
	--Register Bank
	RegBank0: DE10_LITE_RegBank
		generic map
		(
			WIDTH => 16,
			SIZE => 3
		)
		port map
		(
			--Entradas
			CLK => clk,
			WE3 => RegWrite,
			A1 => Rs1,
			A2 => Rs2,
			A3 => Rd,
			WD3 => Result,
			
			-- Saidas
			RD1 => RD1,
			RD2 => RD2
		);

	--Imm source selection
	with ImmSrc select
		ImmExt <= (7 downto 0 => Imm8U(4)) & Imm8U & Imm8D when "00",	-- Signal extended
				    (7 downto 0 => Imm8U(4)) & Imm8U & Imm8D when "01",	-- Signal extended
				    "00000" & Addr11U & Imm8U & Imm8D when "10",			-- Zero extended
				    ZeroCnst when others;
	
	--Reg Data
	process (clk)
	begin
		if (clk'event and clk='1') then
				WriteData <= RD1;
				B <= RD2;
		end if;
	end process;

	--ALU A source selection
	with ALUSrcA select
		SrcA <= PC when "00",
				  ZeroCnst when "01",
				  WriteData when "10",
				  ZeroCnst when others;
	
	--ALU B source selection
	with ALUSrcB select
		SrcB <= B when "00",
				  ImmExt when "01",
				  DoisCnst when "10",
				  ZeroCnst when others;
	
	ALU0: DE10_LITE_ALU
		generic map
		(
			WIDTH => 16
		)
		port map
		(
			--Entradas
			A => SrcA,
			B => SrcB,
			ALUControl => ALUControl,
			--Saidas
			Result => ALUResult,
			Zero => Zero
		);
	
	--ALUOut
	process (clk)
	begin
		if (clk'event and clk='1') then
				ALUOut <= ALUResult;
		end if;
	end process;

	--ALU Ouput source selection
	with ResultSrc select
		Result <= ALUOut when "00",
				    Data when "01",
				    ALUResult when "10",
				    ZeroCnst when others;
	
	-- Component Instantiation Statement
	
	CLK0: DE10_LITE_counter
		generic map
		(
			WIDTH => 26
		)
		port map
		(
			clk => MAX10_CLK1_50,
			clr => '0',				--Free running
			q => clk_cnt
		);
	
	clk <= clk_cnt(25);
	clkn <= not clk;
	
	reset <= not KEY(1);
		
	display1: DE10_LITE_decod
		port map (
				PC(3), PC(2), PC(1), PC(0),
				HEX1(0), HEX1(1), HEX1(2), HEX1(3), HEX1(4), HEX1(5), HEX1(6)--, --HEX1(7)
				);

	display0: DE10_LITE_decod
		port map (
				num_state(3), num_state(2), num_state(1), num_state(0), 
				HEX0(0), HEX0(1), HEX0(2), HEX0(3), HEX0(4), HEX0(5), HEX0(6)--, --HEX0(7)
				);

	LEDR(0) <= clk;
	HEX1(7) <= not PCWrite;
	HEX0(7) <= not IRWrite;

	VGA0: DE10_LITE_VGA_Generator
		port map (
			MAX10_CLK1_50 => MAX10_CLK1_50,
         KEY => KEY,
			SW => SW,
         VGA_R => VGA_R,
			VGA_G => VGA_G,
			VGA_B => VGA_B,
         VGA_HS => VGA_HS,
			VGA_VS => VGA_VS,
			--Debug signals
			clk => clk,
			reset => reset,
			PC => PC,
			Adr => Adr,
			Instr => Instr,
			ReadData => ReadData,
			RD1 => RD1,
			RD2 => RD2,
			ALUResult => ALUResult,
			Zero => Zero,
			PCWrite => PCWrite,
			RegWrite => RegWrite
		);

end rtl;
