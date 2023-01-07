module DE10_LITE_decod
(
	// Entrada(s)
	input b3,	// Signal b0 do MODO de entrada (in) e do TIPO bit
	input b2,	// Signal b1 do MODO de entrada (in) e do TIPO bit
	input b1,	// Signal b2 do MODO de entrada (in) e do TIPO bit
	input b0,	// Signal b3 do MODO de entrada (in) e do TIPO bit
	// Saida(s)
	output seg_a,	// Signal seg_a do MODO de saida (out) e do TIPO bit
	output seg_b,	// Signal seg_b do MODO de saida (out) e do TIPO bit
	output seg_c,	// Signal seg_c do MODO de saida (out) e do TIPO bit
	output seg_d,	// Signal seg_d do MODO de saida (out) e do TIPO bit
	output seg_e,	// Signal seg_e do MODO de saida (out) e do TIPO bit
	output seg_f,	// Signal seg_f do MODO de saida (out) e do TIPO bit
	output seg_g,	// Signal seg_g do MODO de saida (out) e do TIPO bit
	output seg_dp	// Signal seg_dp do MODO de saida (out) e do TIPO bit
);
	
	wire nb3, nb2, nb1, nb0;

	// A atribuicao do valor para cada saida eh realizada por meio do operador atribuicao de sinal (<=)
	assign nb3 = ~b3;
	assign nb2 = ~b2;
	assign nb1 = ~b1;
	assign nb0 = ~b0;

	// Para cada uma das saidas sera atribuida uma expressao booleana baseada nos operadores logicos E (and) OU (or) e NAO (not).
	assign seg_a = ~((b3 | b2 | b1 | nb0) & (b3 | nb2 | b1 | b0) & (nb3 | nb2 | b1 | nb0) & (nb3 | b2 | nb1 | nb0)); // Escrita na forma de produto de somas
	assign seg_b = ~((nb3 & nb2) | (nb2 & nb0) | (nb3 & nb1 & nb0) | (nb3 & b1 & b0) | (b3 & nb1 & b0));
	assign seg_c = ~((b3 | b2 | nb1 | b0) & (nb3 | nb2 | b1 | b0) & (nb3 | nb2 | nb1));
	assign seg_d = ~((b3 | b2 | b1 | nb0) & (b3 | nb2 | b1 | b0) & (nb3 | b2 | nb1 | b0) & (nb2 | nb1 | nb0));
	assign seg_e = ~((nb2 & nb0) | (b3 & b2) | (b1 & nb0) | (b3 & b1));
	assign seg_f = ~((nb1 & nb0) | (b3 & nb2) | (b3 & b1) | (nb3 & b2 & nb1) | (nb3 & b2 & nb0));
	assign seg_g = ~((b3 | b2 | b1) & (nb3 | nb2 | b1 | b0) & (b3 | nb2 | nb1 | nb0));
	assign seg_dp = 1;	// Sempre desligado;
	
endmodule
