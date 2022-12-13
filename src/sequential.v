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

module sequential(
  input		 [3:0]	curr_state,
  input		 [1:0]	op,
  input 	 [2:0]	func_3,
  output reg [3:0]	next_state
);

  always @(curr_state) begin
    case(curr_state)
      `FETCH:		next_state = `DECODE;
      `DECODE:		begin
        if(op == 2'b00)	next_state = `EXECUTE_R;
        else if(op == 2'b01) next_state = `EXECUTE_I;
        else if(op == 2'b10) next_state = `MEM_ADR;
        else next_state = `BNEZ; 
      end
      `MEM_ADR: 	begin
        if(func_3 == 3'b000)		next_state = `MEM_READ;
        else if(func_3 == 3'b001)	next_state = `MEM_WRITE;
        else 						next_state = `DECODE;
      end
      	`MEM_READ:	next_state = `MEM_WB;
  	    `MEM_WB:		next_state = `FETCH;
   		`MEM_WRITE:	next_state = `FETCH;
     	`EXECUTE_R:	next_state = `ALU_WB;
     	`ALU_WB:		next_state = `FETCH;
		`EXECUTE_I:	next_state = `ALU_WB;
     	`BNEZ:		next_state = `FETCH;
      	default:		next_state = `DECODE; // the default case sets all to 0 (does nothing, equivalent to decode)
    endcase
  end
endmodule
