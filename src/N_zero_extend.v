module N_zero_extend #(parameter N = 1)
( input in,
  output [(N - 1):0] out
);

  generate
  	if (N > 1)
      assign out[(N - 1):1] = 0;
  endgenerate

  assign out[0] = in;
endmodule
