module DE10_LITE_counter
#(parameter WIDTH=4)
(
	// Entrada(s)
	input clk,
	input clr,
	// Saida(s)
	output reg [WIDTH-1:0] q,
	output cout
);

	always @ (posedge clk or posedge clr)
	begin
		if (clr)
			q <= {(WIDTH){1'b0}};
		else
			q <= q + {{(WIDTH-1){1'b0}},1'b1};
	end

	assign cout = q[WIDTH-1];

endmodule
