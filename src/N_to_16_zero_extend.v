module N_to_16_zero_extend #(parameter N = 1)
( input [0:(N-1)] in,
  output [0:15] out
);

  assign out[0:(N-1)] = in;
  assign out[N:15] = 0;
endmodule