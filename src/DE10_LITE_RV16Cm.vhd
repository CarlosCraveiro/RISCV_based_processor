library ieee;
use ieee.std_logic_1164.all;

use work.RV16Cm_pkg.all;

entity DE10_LITE_RV16Cm is
	port
	(
		clk, clr	: in bit;
		DATAin	: in bit_vector(15 downto 0);
		WE 		: out bit;
		ADDRESS	: out bit_vector(10 downto 0);
		DATAout	: out bit_vector(15 downto 0)

	);

end DE10_LITE_RV16Cm;

architecture rtl of DE10_LITE_RV16Cm is
	
	signal clk_cnt		: bit_vector(25 downto 0);

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

begin

	--Unit Control
	FSM0: MercurioIV_FSM
		port map
		(
			--Entradas
			clk => clk, 
			reset => clr,
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
			ImmSrc => ImmSrc
		);

	--PC Register
	PC0: process (clk)
	begin
		if (clk'event and clk='1') then
			if (clr = '1') then
				PC <= (others => '0');
			elsif (PCWrite='1') then
				PC <= Result;--PCNext;
			end if;
		end if;
	end process;
	
	--Memory Address source selection
	AdrSrc0: with AdrSrc select
		Adr <= PC when '0',
				 Result when '1';

	--Program/Data Memory Interface
	ADDRESS <= '0' & Adr(10 downto 1);
	DATAout <= WriteData;
	WE <= MemWrite;
	ReadData <= DATAin;

	--IR Register
	IR0: process (clk)
	begin
		if (clk'event and clk='1') then
			if (IRWrite='1') then
				Instr <= ReadData;
			end if;
		end if;
	end process;

	--Data Register
	DR0: process (clk)
	begin
		if (clk'event and clk='1') then
				Data <= ReadData;
		end if;
	end process;
	
	--Register Bank
	RegBank0: MercurioIV_RegBank
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
	ImmSrc0: with ImmSrc select
		ImmExt <= (7 downto 0 => Imm8U(4)) & Imm8U & Imm8D when "01",	-- Signal extended
				    (7 downto 0 => Imm8U(4)) & Imm8U & Imm8D when "10",	-- Signal extended
				    "00000" & Addr11U & Imm8U & Imm8D when "11",			-- Zero extended
				    ZeroCnst when others;
	
	--Reg Data
	Reg0: process (clk)
	begin
		if (clk'event and clk='1') then
				WriteData <= RD1;
				B <= RD2;
		end if;
	end process;

	--ALU A source selection
	ALUSrcA0: with ALUSrcA select
		SrcA <= PC when "00",
				  ZeroCnst when "01",
				  WriteData when "10",
				  ZeroCnst when others;
	
	--ALU B source selection
	ALUSrcB0: with ALUSrcB select
		SrcB <= B when "00",
				  ImmExt when "01",
				  DoisCnst when "10",
				  ZeroCnst when others;
	
	ALU0: MercurioIV_ALU
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
	ALUOut0: process (clk)
	begin
		if (clk'event and clk='1') then
				ALUOut <= ALUResult;
		end if;
	end process;

	--ALU Ouput source selection
	ResultSrc0: with ResultSrc select
		Result <= ALUOut when "00",
				    Data when "01",
				    ALUResult when "10",
				    ZeroCnst when others;

end rtl;
