module DE10_LITE_FSM
	(
		//Entradas
		input clk,
		input reset,
		input Zero,
		input [1:0] Op,
		input [2:0]	Funct3,
		// Saidas
		output PCWrite,
		output reg AdrSrc,
		output reg MemWrite,
		output reg IRWrite,
		output reg RegWrite,
		output reg [1:0] ResultSrc,
		output reg [2:0] ALUControl,
		output reg [1:0] ALUSrcA,
		output reg [1:0] ALUSrcB,
		output reg [1:0] ImmSrc,
		output reg [3:0] num_state,
		output ZFlag_debug
	);

	localparam [3:0] S0=4'b0000, S1=4'b0001, S2=4'b0010, S3=4'b0011, S4=4'b0100, S5=4'b0101, S6=4'b0110, S7=4'b0111, S8=4'b1000, S9=4'b1001; 

	// Register to hold the current state and the next state
	reg [3:0] state, next_state;

	reg PCUpdate, Branch, ZFlag;

	// A Moore machine's outputs are dependent only on the current state.
	// The output is written only when the state changes.  (State
	// transitions are synchronous.)

	// Logic to advance to the next state
	always @ (posedge clk or posedge reset)
		if (reset)
		begin
			state <= S0;
//			ZFlag <= 1'b0;
		end
		else
			state <= next_state;

	// Logic to advance to the next state
	always @ (state, Op, Funct3, Zero)
	begin
		case (state)
			S0:
				next_state <= S1;
			S1:
				case (Op)
					2'b00:				// CRm type
						next_state <= S6;
					2'b01:				// CIm type
						next_state <= S8;
					2'b10:				// CLm/CSm type
						next_state <= S2;
					2'b11:				// CBm type
						next_state <= S9;
				endcase
			S2:
				if (Funct3[0] == 1'b0)
					next_state <= S3;
				else
					next_state <= S5;
			S3:
					next_state <= S4;
			S4:
					next_state <= S0;
			S5:
					next_state <= S0;
			S6:
				begin
					next_state <= S7;
					ZFlag <= Zero;
				end
			S7:
					next_state <= S0;
			S8:
				begin
					next_state <= S7;
					ZFlag <= Zero;
				end
			S9:
					next_state <= S0;
			default:
					next_state <= S0;
		endcase
	end

	// Output depends solely on the current state
	always @ (state)
	begin
		case (state)
			S0:
			begin
				PCUpdate		<= 1'b1;
				Branch		<= 1'b0;
				AdrSrc		<= 1'b0;
				MemWrite		<= 1'b0;
				IRWrite		<= 1'b1;
				RegWrite		<= 1'b0;
				ResultSrc	<= 2'b10;
				ALUControl	<= 3'b000;
				ALUSrcA		<= 2'b00;
				ALUSrcB		<= 2'b10;
				ImmSrc		<= 2'b00;//
				num_state	<= 4'b0000;
			end
			S1:
			begin
				PCUpdate		<= 1'b0;
				Branch		<= 1'b0;
				AdrSrc		<= 1'b0;//
				MemWrite		<= 1'b0;
				IRWrite		<= 1'b0;
				RegWrite		<= 1'b0;
				ResultSrc	<= 2'b10;//
				ALUControl	<= 3'b000;//
				ALUSrcA		<= 2'b00;//
				ALUSrcB		<= 2'b10;//
				ImmSrc		<= 2'b00;//
				num_state	<= 4'b0001;
			end
			S2:
			begin
				PCUpdate		<= 1'b0;
				Branch		<= 1'b0;
				AdrSrc		<= 1'b0;//
				MemWrite		<= 1'b0;
				IRWrite		<= 1'b0;
				RegWrite		<= 1'b0;
				ResultSrc	<= 2'b10;//
				ALUControl	<= 3'b000;
				ALUSrcA		<= 2'b01;
				ALUSrcB		<= 2'b01;
				ImmSrc		<= 2'b01;
				num_state	<= 4'b0010;
			end
			S3:
			begin
				PCUpdate		<= 1'b0;
				Branch		<= 1'b0;
				AdrSrc		<= 1'b1;
				MemWrite		<= 1'b0;
				IRWrite		<= 1'b0;
				RegWrite		<= 1'b0;
				ResultSrc	<= 2'b00;
				ALUControl	<= 3'b000;//
				ALUSrcA		<= 2'b01;//
				ALUSrcB		<= 2'b01;//
				ImmSrc		<= 2'b01;//
				num_state	<= 4'b0011;
			end
			S4:
			begin
				PCUpdate		<= 1'b0;
				Branch		<= 1'b0;
				AdrSrc		<= 1'b0;
				MemWrite		<= 1'b0;
				IRWrite		<= 1'b0;
				RegWrite		<= 1'b1;
				ResultSrc	<= 2'b01;
				ALUControl	<= 3'b000;//
				ALUSrcA		<= 2'b01;//
				ALUSrcB		<= 2'b01;//
				ImmSrc		<= 2'b01;//
				num_state	<= 4'b0100;
			end
			S5:
			begin
				PCUpdate		<= 1'b0;
				Branch		<= 1'b0;
				AdrSrc		<= 1'b1;
				MemWrite		<= 1'b1;
				IRWrite		<= 1'b0;
				RegWrite		<= 1'b0;
				ResultSrc	<= 2'b00;
				ALUControl	<= 3'b000;//
				ALUSrcA		<= 2'b01;//
				ALUSrcB		<= 2'b01;//
				ImmSrc		<= 2'b01;//
				num_state	<= 4'b0101;
			end
			S6:
			begin
				PCUpdate		<= 1'b0;
				Branch		<= 1'b0;
				AdrSrc		<= 1'b0;//
				MemWrite		<= 1'b0;
				IRWrite		<= 1'b0;
				RegWrite		<= 1'b0;
				ResultSrc	<= 2'b00;//
				ALUControl	<= Funct3;
				ALUSrcA		<= 2'b10;
				ALUSrcB		<= 2'b00;
				ImmSrc		<= 2'b01;//
				num_state	<= 4'b0110;
			end
			S7:
			begin
				PCUpdate		<= 1'b0;
				Branch		<= 1'b0;
				AdrSrc		<= 1'b0;//
				MemWrite		<= 1'b0;
				IRWrite		<= 1'b0;
				RegWrite		<= 1'b1;
				ResultSrc	<= 2'b00;
				ALUControl	<= Funct3;
				ALUSrcA		<= 2'b10;//
				ALUSrcB		<= 2'b00;//
				ImmSrc		<= 2'b01;//
				num_state	<= 4'b0111;
			end
			S8:
			begin
				PCUpdate		<= 1'b0;
				Branch		<= 1'b0;
				AdrSrc		<= 1'b0;//
				MemWrite		<= 1'b0;
				IRWrite		<= 1'b0;
				RegWrite		<= 1'b0;
				ResultSrc	<= 2'b00;//
				ALUControl	<= Funct3;
				ALUSrcA		<= 2'b10;
				ALUSrcB		<= 2'b01;
				ImmSrc		<= 2'b00;
				num_state	<= 4'b1000;
			end
			S9:
			begin
				PCUpdate		<= 1'b0;
				Branch		<= 1'b1;
				AdrSrc		<= 1'b0;//
				MemWrite		<= 1'b0;
				IRWrite		<= 1'b0;
				RegWrite		<= 1'b0;
				ResultSrc	<= 2'b10;
				ALUControl	<= 3'b000;
				ALUSrcA		<= 2'b01;
				ALUSrcB		<= 2'b01;
				ImmSrc		<= 2'b10;
				num_state	<= 4'b1001;
			end
			default:
			begin
				PCUpdate		<= 1'b0;
				Branch		<= 1'b0;
				AdrSrc		<= 1'b0;
				MemWrite		<= 1'b0;
				IRWrite		<= 1'b0;
				RegWrite		<= 1'b0;
				ResultSrc	<= 2'b00;
				ALUControl	<= 3'b000;
				ALUSrcA		<= 2'b00;
				ALUSrcB		<= 2'b00;
				ImmSrc		<= 2'b00;//
				num_state	<= 4'b0000;
			end
		endcase
	end

	assign PCWrite = (~ZFlag & Branch) | PCUpdate;
	
	assign ZFlag_debug = ~ZFlag;

endmodule
