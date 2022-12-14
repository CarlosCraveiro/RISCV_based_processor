`define FETCH 		4'b0000
`define DECODE 		4'b0001
`define MEM_ADR 	4'b0010
`define MEM_READ 	4'b0011
`define MEM_WB 		4'b0100
`define MEM_WRITE	4'b0101
`define EXECUTE_R	4'b0110
`define ALU_WB		4'b0111
`define EXECUTE_I	4'b1000
`define BNEZ		4'b1001


module control_unit(
  input 			zero_flag,
  input				clk,
  input		[15:0] instruction,
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

  // parsing the inputs
  reg op[1:0] = instruction[1:0];
  reg func_3[2:0] = instruction[15:13];
  reg curr_state[3:0] =`FETCH; // start the state at fetch
  reg next_state[3:0];

  wire pc_update;

  always@(posedge clock){
    // main decoder gets most of outputs
    CU_main_decoder cu_decoder(.curr_state(curr_state) , .pc_up(pc_update), .adr_src(adr_src), .mem_wr(mem_wr) , .ir_rd(ir_wr), .result_src(result_src), .alu_src_b(alu_src_b), .alu_src_a(alu_src_a), .imm_src(imm_src), .reg_wr(reg_wr) )
    
    // alu decoder gets output for alu_control
    alu_decoder aludecod(.curr_state(curr_state) , .func(func_3), .alu_control(alu_control));

    // swtiching circuit to define pc_write
    pc_write = pc_update or (zero_flag and (curr_state == `BNEZ));

    // gets next state
    CU_sequential cseq(.curr_state(curr_state), .op(op), .func_3(func_3), .next_state(next_state));

    // updates the state
    curr_state = next_state;
  }
  
endmodule

