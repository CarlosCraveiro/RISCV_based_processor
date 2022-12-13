// the use of macros make the cases inside case more legible
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

// this module is the main decoder of the control unit
// it sets most of the output according to the current state provided from the FSM 
module CU_main_decoder(
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
  
  // a buffer is created to hold all the outputs on a single 13-bit signal
  //  that will follow the order written on assign
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
      // x means 'unknown value' - it is used to set a dont-care
      `FETCH:		buffer_out = 13'b1001101000xx0;
      `DECODE:		buffer_out = 13'b0x00xxxxxxxx0;
      `MEM_ADR: 	buffer_out = 13'b0x00xx0101010;
      `MEM_READ:	buffer_out = 13'b010000xxxxxx0;
      `MEM_WB:		buffer_out = 13'b0x0001xxxxxx1;
      `MEM_WRITE:	buffer_out = 13'b011000xxxxxx0;
      `EXECUTE_R:	buffer_out = 13'b0x00xx0010xx0;
      `ALU_WB:		buffer_out = 13'b0x0000xxxxxx1;
      `EXECUTE_I:	buffer_out = 13'b0x00xx0110000;
      `BNEZ:		buffer_out = 13'b0x00100101110;
      default:		buffer_out = 13'b0000000000000; // the default case sets all to 0 (does nothing, equivalent to decode)
    endcase
  end
endmodule
