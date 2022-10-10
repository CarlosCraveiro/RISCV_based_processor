module mux_2x1(
  input [1:0] in,
  input selection,
  output out);
  
  assign out = (in[0] & ~selection)| (selection & in[1]);
  
endmodule

module mux_4x1(
  input [3:0] in,
  input [1:0] selection,
  output out);
  
  wire out1;
  wire out2;
  
  mux_2x1 m1(in[1:0], selection[0], out1);
  mux_2x1 m2(in[3:2], selection[0], out2);
  mux_2x1 m3({out2, out1}, selection[1], out);

endmodule

module mux_8x1(
  input [7:0] in,
  input [2:0] selection,
  output out);

  wire out1;
  wire out2;

  mux_4x1 m1(in[3:0], selection[1:0], out1);
  mux_4x1 m2(in[7:4], selection[1:0], out2);
  mux_2x1 m3({out2, out1}, selection[2], out);
  
endmodule
