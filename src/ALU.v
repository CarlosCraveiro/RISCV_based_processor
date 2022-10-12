module ALU #(WIDTH = 1)
( input [(WIDTH - 1):0] SrcA,
  input [(WIDTH - 1):0] SrcB,
  input [2:0] ALUControl,
  input reg [(WIDTH - 1):0] ALUResult,
  output zero);

  wire [(WIDTH - 1):0] SrcB_2comp; 
  wire [(WIDTH - 1):0] SrcB_var;

  two_complement #(.N(WIDTH)) twc (SrcB, SrcB_2comp);
  
  mux_2NxN #(.N(WIDTH)) m1({SrcB_2comp, SrcB}, ALUControl[0], SrcB_var);
  
  // More code goes here...

endmodule
