module N_to_16_sig_extend #(parameter N = 1)
( input [0:(N-1)] in,
  output [0:15] out
);

  wire signal = in[N-1];
  assign out[0:(N-1)] = in;
  assign out[N:15] = signal;
endmodule