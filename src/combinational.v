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

module combinational(
  input [3:0] curr_state,
  output pc_up,
  output adr_src,
  output mem_wr,
  output ir_rd,
  output [1:0] result_src,
  output [1:0] alu_src_b,
  output [1:0] alu_src_a,
  output [1:0] imm_src,
  output reg_wr
);
  
  reg [12:0] buffer_out;
  assign {
    	pc_up, 
        adr_src,
        mem_wr,
        ir_rd,
        result_src,
        alu_src_b,
        alu_src_a,
        imm_src,
        reg_wr
  } = buffer_out;
  
  always @(curr_state) begin
    case(curr_state)
    	`FETCH:			buffer_out = 13'b1001101000000;
    	`DECODE:		buffer_out = 13'b0000000000000;
      `MEM_ADR: 	buffer_out = 13'b0000000101010;
      `MEM_READ:	buffer_out = 13'b0100000000000;
      `MEM_WB:		buffer_out = 13'b0000010000001;
      `MEM_WRITE:	buffer_out = 13'b0110000000000;
      `EXECUTE_R:	buffer_out = 13'b0000000010000;
      `ALU_WB:		buffer_out = 13'b0000000000001;
      `EXECUTE_I:	buffer_out = 13'b0000000110000;
      `BNEZ:			buffer_out = 13'b0000100101110;
      default:		buffer_out = 13'b0000000000000;
    endcase
  end
endmodule
