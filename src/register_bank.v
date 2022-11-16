module RegBank
#(parameter WIDTH = 4, SIZE = 3)
(
 input                  clk,
 input                  we3,
 input [SIZE-1:0]       A1,
 input [SIZE-1:0]       A2,
 input [SIZE-1:0]       A3,
 input [WIDTH-1:0]      WD3,
 output [WIDTH-1:0] RD1,
 output [WIDTH-1:0] RD2
);

  reg [WIDTH-1:0]    register_array [1:2**SIZE-1];
  assign RD1 = (A1 == 0)? 0 : register_array[A1];
  assign RD2 = (A2 == 0)? 0 : register_array[A2];

  always @(posedge clk) begin
     if(we3 == 1'b1 && A3 != 0)
       register_array[A3] <= WD3;
  end
endmodule
