module ALU #(WIDTH = 1)
( input [(WIDTH - 1):0] SrcA,
  input [(WIDTH - 1):0] SrcB,
  input [2:0] ALUControl,
  output reg [(WIDTH - 1):0] ALUResult,
  output zero);

  wire [(WIDTH - 1):0] SrcB_2comp; 
  wire [(WIDTH - 1):0] SrcB_var;
  wire [(WIDTH-1):0] Sum;
  wire [(WIDTH-1):0] zExtended;
  wire [(WIDTH-1):0] OrOperation;
  wire [(WIDTH-1):0] AndOperation;

  two_complement #(.N(WIDTH)) twc (SrcB, SrcB_2comp);
  
  mux_2NxN #(.N(WIDTH)) m1({SrcB_2comp, SrcB}, ALUControl[0], SrcB_var);

  assign Sum = SrcA + SrcB_var;
  N_zero_extend #(.N(WIDTH)) zExt1(Sum[WIDTH-1], zExtended);

  assign OrOperation = A | B;
  assign AndOperation = A & B;

  mux_8NxN #(.N(WIDTH)) m2({0,0,zExtended,0,OrOperation,AndOperation,Sum,Sum},ALUControl,ALUResult);
  assign zero = ~ALUResult[WIDTH-1];
  // More code goes here...

endmodule
