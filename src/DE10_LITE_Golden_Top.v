module DE10_LITE_Golden_Top
(
		input MAX10_CLK1_50,
		
		input [1:0] KEY,

		input [9:0] SW,

		output [9:0] LEDR,
		
		output [7:0] HEX0,
		output [7:0] HEX1,

		output VGA_HS,
		output VGA_VS,
		output [3:0] VGA_R,
		output [3:0] VGA_G,
		output [3:0] VGA_B
);

	wire clk;
	wire reset;
	wire clkn;
	wire [25:0] clk_cnt;
	
	wire [3:0] num_state;

	//Internal signals
	reg [15:0] PC;
	//wire [15:0] PCNext;
	wire [15:0] Adr;
	reg [15:0] Instr;
	wire [15:0] ReadData;
	reg [15:0] Data;
	wire [15:0] ImmExt;
	wire [15:0] RD1;
	wire [15:0] RD2;
	reg [15:0] WriteData;
	reg [15:0] B;
	wire [15:0] SrcA;
	wire [15:0] SrcB;
	wire [15:0] ALUResult;
	reg [15:0] ALUOut;
	wire [15:0] Result;
	wire  Zero;
	wire [1:0] Op;
	wire [2:0] Funct3;
	wire PCWrite;
	wire AdrSrc;
	wire MemWrite;
	wire IRWrite;
	wire RegWrite;
	wire [1:0] ResultSrc;
	wire [2:0] ALUControl;
	wire [1:0] ALUSrcA;
	wire [1:0] ALUSrcB;
	wire [1:0] ImmSrc;
	wire [2:0] Rs1;
	wire [2:0] Rs2;
	wire [2:0] Rd;
	wire [4:0] Imm8U;
	wire [2:0] Imm8D;
	wire [2:0] Addr11U;
	
	assign Op = Instr[1:0];
	assign Funct3 = Instr[15:13];
	assign Rs1 = Instr[7:5];
	assign Rs2 = Instr[4:2];
	assign Rd = Instr[7:5];
	assign Imm8U = Instr[12:8];
	assign Imm8D = Instr[4:2];
	assign Addr11U = Instr[7:5];
		
	//Unit Control
	control_unit FSM0
	(
			//Entradas
			.clk(clk), 
			.reset(reset),
			.zero_flag(Zero),
			.instruction(Instr),
			// Saidas
			.pc_write(PCWrite),
			.adr_src(AdrSrc),
			.mem_wr(MemWrite),
			.ir_wr(IRWrite),
			.reg_wr(RegWrite),
			.result_src(ResultSrc),
			.alu_control(ALUControl),
			.alu_src_a(ALUSrcA),
			.alu_src_b(ALUSrcB),
			.imm_src(ImmSrc),
			.curr_state(num_state),
		);

		assign LEDR[1] = Zero;
		
	//PC Register
	always @ (posedge clk or posedge reset)
	begin
		if (reset)
			PC <= 0;
		else
			if (PCWrite) 
				PC <= Result;
	end
	
	//Memory Address source selection
	assign Adr = AdrSrc ? Result : PC ;
	
	//Program/Data Memory
	DE10_LITE_Memory Memory0(
			.address({1'b0, Adr[10:1]}),
			.clock(clkn),
			.data(WriteData),
			.wren(MemWrite),
			.q(ReadData)
	);

	//IR Register
	always @ (posedge clk)
	begin
		if (IRWrite)
			Instr <= ReadData;
	end

	//Data Register
	always @ (clk)
	begin
			Data <= ReadData;

	end
	
	//Register Bank
	RegBank #(.WIDTH(16),.SIZE(3)) RegBank0(
			//Entradas
			.clk(clk),
			.we3(RegWrite),
			.A1(Rs1),
			.A2(Rs2),
			.A3(Rd),
			.WD3(Result),
			// Saidas
			.RD1(RD1),
			.RD2(RD2)
	);

	
	
	//Imm source selection
	assign ImmExt = (ImmSrc == 2'b00) ? 
		{
			{
				Imm8U[4], Imm8U[4], Imm8U[4], Imm8U[4], 
				Imm8U[4], Imm8U[4], Imm8U[4], Imm8U[4]
			}
			, Imm8U
			, Imm8D
		} :	// Signal extended
		
		(ImmSrc == 2'b01) ?
		{
			{
				Imm8U[4], Imm8U[4], Imm8U[4], Imm8U[4], 
				Imm8U[4], Imm8U[4], Imm8U[4], Imm8U[4]
			}
			, Imm8U
			, Imm8D 
		} :		// Signal extended
		
		(ImmSrc == 2'b10) ? 
		{
			{4'b0000},
			Addr11U, 
			Imm8U, 
			Imm8D
		} :		// Zero extended
		
		16'b0;
	
	//Reg Data
	always @ (posedge clk)
	begin
				WriteData <= RD1;
				B <= RD2;
	end

	//ALU A source selection
	assign SrcA =	(ALUSrcA == 2'b00) ? PC :
				(ALUSrcA == 2'b01) ? 16'b0 :
				(ALUSrcA == 2'b10) ? WriteData :
				16'b0;
	
	//ALU B source selection
	assign SrcB =	(ALUSrcB == 2'b00) ? B :
				(ALUSrcB == 2'b01) ? ImmExt :
				(ALUSrcB == 2'b10) ? 16'd2 :
				16'b0;
	
	ALU #(.WIDTH(16)) ALU0
	(
			//Entradas
			.SrcA(SrcA),
			.SrcB(SrcB),
			.ALUControl(ALUControl),
			//Saidas
			.ALUResult(ALUResult),
			.zero(Zero)
	);
	
	//ALUOut
	always @ (posedge clk)
	begin
				ALUOut <= ALUResult;
	end

	//ALU Ouput source selection
	assign Result =	(ResultSrc == 2'b00) ? ALUOut :
					(ResultSrc == 2'b01) ? Data :
					(ResultSrc == 2'b10) ? ALUResult :
					16'b0;
	
	// Component Instantiation Statement
	
	DE10_LITE_counter #(.WIDTH(26)) CNT0
	(
			.clk(MAX10_CLK1_50),
			.clr(1'b0),				//Free running
			.q(clk_cnt)
	);
	
	assign clk = clk_cnt[25];
	assign clkn = ~clk;
	
	assign reset = ~KEY[1];
		
	DE10_LITE_decod display1
	(
				PC[3], PC[2], PC[1], PC[0],
				HEX1[0], HEX1[1], HEX1[2], HEX1[3], HEX1[4], HEX1[5], HEX1[6]//, //HEX1(7)
	);

	DE10_LITE_decod display0
	(
				num_state[3], num_state[2], num_state[1], num_state[0], 
				HEX0[0], HEX0[1], HEX0[2], HEX0[3], HEX0[4], HEX0[5], HEX0[6]//, //HEX0(7)
	);

	assign LEDR[0] = clk;
	assign HEX1[7] = ~PCWrite;
	assign HEX0[7] = ~IRWrite;

	DE10_LITE_VGA_Generator VGA0
	(
			.MAX10_CLK1_50(MAX10_CLK1_50),
         .KEY(KEY),
			.SW(SW),
         .VGA_R(VGA_R),
			.VGA_G(VGA_G),
			.VGA_B(VGA_B),
         .VGA_HS(VGA_HS),
			.VGA_VS(VGA_VS),
			//Debug signals
			.clk(clk),
			.reset(reset),
			.PC(PC),
			.Adr(Adr),
			.Instr(Instr),
			.ReadData(ReadData),
			.RD1(RD1),
			.RD2(RD2),
			.ALUResult(ALUResult),
			.Zero(Zero),
			.PCWrite(PCWrite),
			.RegWrite(RegWrite)
	);

endmodule
