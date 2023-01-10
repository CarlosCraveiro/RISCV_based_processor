module mux_2NxN #( parameter N = 1 )

  ( input [(2*N - 1):0] in,
  input selection,
  output [(N - 1):0]out);
  
  wire [(N - 1):0] selection_wires;
  
  genvar i;
	generate
		for (i = 0; i < N; i = i + 1) begin
          assign selection_wires[i] = (selection)? 1 : 0;
		end
	endgenerate
  
  assign out = (in[(N - 1):0] & ~selection_wires)| (selection_wires & in[(2*N - 1):N]);
  
endmodule

module mux_4NxN #( parameter N = 1 )

( input [(4*N - 1):0] in,
  input [1:0] selection,
  output [(N - 1):0] out);
 
  wire [(2*N - 1):0] selection_wires;

  wire [(N - 1):0] out1;
  wire [(N - 1):0] out2;
 
  genvar i;
	generate
		for (i = 0; i < N; i = i + 1) begin
          assign selection_wires[i] = (selection[0])? 1 : 0;
		end
	endgenerate

  generate
		for (i = N; i < 2*N; i = i + 1) begin
          assign selection_wires[i] = (selection[1])? 1 : 0;
		end
	endgenerate

  mux_2NxN #(.N(N)) m1(in[(2*N - 1):0], selection[0], out1);
  mux_2NxN #(.N(N)) m2(in[(4*N - 1):(2*N)], selection[0], out2);
  mux_2NxN #(.N(N)) m3({out2, out1}, selection[1], out);

endmodule

module mux_8NxN #( parameter N = 1 )

( input [(8*N - 1):0] in,
  input [2:0] selection,
  output [(N - 1):0]out);

  wire [(3*N - 1):0] selection_wires;

  wire [(N - 1):0] out1;
  wire [(N - 1):0] out2;

  genvar i;
	generate
		for (i = 0; i < N; i = i + 1) begin
          assign selection_wires[i] = (selection[0])? 1 : 0;
		end
	endgenerate

  generate
		for (i = N; i < 2*N; i = i + 1) begin
          assign selection_wires[i] = (selection[1])? 1 : 0;
		end
	endgenerate

  generate
		for (i = 2*N; i < 3*N; i = i + 1) begin
          assign selection_wires[i] = (selection[2])? 1 : 0;
		end
	endgenerate

  mux_4NxN #(.N(N)) m1(in[(4*N - 1):0], selection[1:0], out1);
  mux_4NxN #(.N(N)) m2(in[(8*N - 1):(4*N)], selection[1:0], out2);
  mux_2NxN #(.N(N)) m3({out2, out1}, selection[2], out);
  
endmodule
