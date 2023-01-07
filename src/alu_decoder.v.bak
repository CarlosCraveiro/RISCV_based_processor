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

// this module is the alu decoder for defining its behavior
module alu_decoder(
  input [3:0] curr_state,
  input [2:0] func,
  output [2:0] alu_control
);

  always @(curr_state) begin
    case(curr_state)
      // x means 'unknown value' - it is used to set a dont-care
      `FETCH:		alu_control = 3'b000;
      `DECODE:		alu_control = 3'bxxx;
      `MEM_ADR: 	alu_control = 3'b000;
      `MEM_READ:	alu_control = 3'bxxx;
      `MEM_WB:		alu_control = 3'bxxx;
      `MEM_WRITE:	alu_control = 3'bxxx;
      `EXECUTE_R:	alu_control = func;
      `ALU_WB:		alu_control = func;
      `EXECUTE_I:	alu_control = func;
      `BNEZ:		alu_control = 3'b000;
      default:		alu_control = 3'b000; // the default case sets all to 0 (does nothing, equivalent to decode)
    endcase
  end
endmodule
