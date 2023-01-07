module DE10_LITE_RegBank
#(parameter WIDTH=4, SIZE=2)
(
	input CLK, WE3,
	input [SIZE-1:0] A1, A2, A3,
	input [WIDTH-1:0] WD3,
	output [WIDTH-1:0] RD1, RD2
);

	reg [WIDTH-1:0] RegFile [2**SIZE-1:0];
	
	always @ (posedge CLK)
	begin
		if (WE3)
			if (A3 == 0)
				RegFile[A3] <= 0;
			else
				RegFile[A3] <= WD3;
	end
	
	assign RD1 = RegFile[A1];
	assign RD2 = RegFile[A2];
	
endmodule
