module control_unit(
  input 			zero_flag,
  input				clk,
  input		[1:0]	op,
  input 	[2:0]	func_3,
  output			pc_write,
  output			adr_src,
  output			mem_wr,
  output			ir_wr,
  output			reg_wr,
  output	[1:0]	result_src,
  output	[2:0]	alu_control,
  output	[1:0]	alu_src_b,
  output	[1:0]	alu_src_a,
  output	[1:0]	imm_src
);

// TO DO!!
  
endmodule
