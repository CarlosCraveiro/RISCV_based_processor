package RV16Cm_pkg is

	-- Component Declaration
	
	component DE10_LITE_ALU
		generic
		(
			WIDTH : integer := 4
		);
		port
		(
			A, B		: in  bit_vector(WIDTH-1 downto 0);
			ALUControl	: in  bit_vector(2 downto 0);

			Result		: out bit_vector(WIDTH-1 downto 0);
			Zero		: out bit
		);
	end component;

	component DE10_LITE_RegBank is
		generic
		(
			WIDTH : integer := 4;
			SIZE: integer := 2
		);
		port
		(
			CLK, WE3		: in  bit;
			A1, A2, A3	: in  bit_vector(SIZE-1 downto 0);
			WD3		: in  bit_vector(WIDTH-1 downto 0);
			RD1, RD2	: out bit_vector(WIDTH-1 downto 0)
		);
	end component;

	component DE10_LITE_FSM
		port
		(
			-- Entrada(s)
			clk			: in  bit;
			reset			: in  bit;
			Zero			: in  bit;
			Op				: in  bit_vector(1 downto 0);
			Funct3		: in  bit_vector(2 downto 0);
			-- Saida(s)
			PCWrite		: out  bit;
			AdrSrc		: out  bit;
			MemWrite		: out  bit;
			IRWrite		: out  bit;
			RegWrite		: out  bit;
			ResultSrc	: out  bit_vector(1 downto 0);
			ALUControl	: out  bit_vector(2 downto 0);
			ALUSrcA		: out  bit_vector(1 downto 0);
			ALUSrcB		: out  bit_vector(1 downto 0);
			ImmSrc		: out  bit_vector(1 downto 0);
			num_state	: out  bit_vector(3 downto 0);
			ZFlag_debug	: out	 bit
		);
	end component;

	component DE10_LITE_decod
		port
		(
			-- Entrada(s)
			b3	: in  bit;	-- Signal b0 do MODO de entrada (in) e do TIPO bit
			b2	: in  bit;	-- Signal b1 do MODO de entrada (in) e do TIPO bit
			b1	: in  bit;	-- Signal b2 do MODO de entrada (in) e do TIPO bit
			b0	: in  bit;	-- Signal b3 do MODO de entrada (in) e do TIPO bit
			-- Saida(s)
			seg_a : out bit;	-- Signal seg_a do MODO de saida (out) e do TIPO bit
			seg_b : out bit;	-- Signal seg_b do MODO de saida (out) e do TIPO bit
			seg_c : out bit;	-- Signal seg_c do MODO de saida (out) e do TIPO bit
			seg_d : out bit;	-- Signal seg_d do MODO de saida (out) e do TIPO bit
			seg_e : out bit;	-- Signal seg_e do MODO de saida (out) e do TIPO bit
			seg_f : out bit;	-- Signal seg_f do MODO de saida (out) e do TIPO bit
			seg_g : out bit;	-- Signal seg_g do MODO de saida (out) e do TIPO bit
			seg_dp : out bit	-- Signal seg_dp do MODO de saida (out) e do TIPO bit
		);
	end component;

	component DE10_LITE_counter
	generic
		(
			WIDTH : integer := 4
		);
		port
		(
			-- Portas
			clk	: in  bit;
			clr	: in  bit;
			-- Saida(s)
			q : out bit_vector(WIDTH-1 downto 0);
			cout: out bit
		);
	end component;

--	component DE10_LITE_Memory IS
--		PORT
--		(
--			address		: IN STD_LOGIC_VECTOR (10 DOWNTO 0);
--			clock		: IN STD_LOGIC  := '1';
--			data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
--			wren		: IN STD_LOGIC ;
--			q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
--		);
--	END component;

--	component DE10_LITE_LCD_ROM IS
--		PORT
--		(
--			address		: IN STD_LOGIC_VECTOR (8 DOWNTO 0);
--			clock		: IN STD_LOGIC  := '1';
--			q		: OUT STD_LOGIC_VECTOR (8 DOWNTO 0)
--		);
--	END component;

	component DE10_LITE_VGA_Generator IS

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
			
	END component;

end RV16Cm_pkg;
