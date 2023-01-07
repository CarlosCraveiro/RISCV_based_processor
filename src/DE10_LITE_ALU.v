module DE10_LITE_ALU
#(parameter	WIDTH=4)
(
	input [WIDTH-1:0] A,
	input [WIDTH-1:0] B,
	input [2:0] ALUControl,
	output [WIDTH-1:0] Result,
	output Zero
);

	wire [WIDTH-1:0] Sum;
	wire [WIDTH-1:0] ZeroExt;
	wire [WIDTH-1:0] Result_tmp;
	
	assign Sum = ALUControl[0] ? A - B : A + B;

	assign ZeroExt = {{(WIDTH-1){1'b0}},Sum[WIDTH-1]};
	
	assign Result_tmp = 
						ALUControl == 3'b000 ? Sum :
						ALUControl == 3'b001 ? Sum :
						ALUControl == 3'b010 ? A & B :
						ALUControl == 3'b011 ? A | B :
						ALUControl == 3'b101 ? ZeroExt :
						{(WIDTH){1'b0}};

	assign Zero = (Result_tmp == {(WIDTH){1'b0}});
		
	assign Result = Result_tmp;

endmodule
