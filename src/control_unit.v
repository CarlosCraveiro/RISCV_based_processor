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
  input 			reset,
  output	pc_write,
  output			adr_src,
  output			mem_wr,
  output			ir_wr,
  output			reg_wr,
  output	[1:0]	result_src,
  output	[2:0]	alu_control,
  output	[1:0]	alu_src_b,
  output	[1:0]	alu_src_a,
  output	[1:0]	imm_src,
  output reg [3:0] curr_state
);

  // parsing the inputs
  wire [1:0] op;
  assign op = instruction[1:0];
  wire [2:0] func_3;
  assign func_3 = instruction[15:13];
  //reg [3:0] curr_state;
  wire [3:0] next_state;
  wire pc_update;
  
   // main decoder gets most of outputs  
  CU_main_decoder cu_decoder(
		.curr_state(curr_state) ,
		.pc_up(pc_update),
		.adr_src(adr_src),
		.mem_wr(mem_wr) ,
		.ir_rd(ir_wr),
		.result_src(result_src),
		.alu_src_b(alu_src_b),
		.alu_src_a(alu_src_a),
		.imm_src(imm_src),
		.reg_wr(reg_wr)
	);

    // alu decoder gets output for alu_control	
	alu_decoder aludecod(.curr_state(curr_state) , .func(func_3), .alu_control(alu_control));
	
	// swtiching circuit to define pc_write
	assign pc_write = pc_update || ((~zero_flag) && (curr_state == `BNEZ)); 
   
	// gets next state
	CU_sequential cseq(.curr_state(curr_state), .op(op), .func_3(func_3), .next_state(next_state));
	
	always @(posedge clk) begin
	    // updates the state
		if (reset == 1'b1) curr_state = `FETCH;
		else curr_state = next_state;    
	end
  
endmodule

