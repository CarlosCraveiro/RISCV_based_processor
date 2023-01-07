module MAX6816 
(
	input clk,
	input key_in,
	output key_out
);
	
	wire counter_reset, counter_clk, counter_q, dff_d;
	reg dff_q;

	assign dff_d = ~key_in;
	assign key_out = ~dff_q;
	
	assign counter_reset = dff_d ^ dff_q;
	
	always @ (posedge counter_q)
	begin
		dff_q <= dff_d;
	end
	
	MercurioIV_counter #(.WIDTH(5)) counter 
		(
			.clk(counter_clk),
			.clr(counter_reset),
			//.q(EeadData_std),
			.cout(counter_q)
		);
	
	MercurioIV_counter #(.WIDTH(15)) clk_divider
		(
			.clk(clk),
			.clr(1'b0),
			.cout(counter_clk)
		);
	
endmodule
