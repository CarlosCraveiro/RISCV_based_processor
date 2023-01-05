module two_complement #(parameter N = 1)
( input [(N - 1):0] in,
  output [(N - 1):0] out);

  assign out = 1 + ~in;

endmodule
