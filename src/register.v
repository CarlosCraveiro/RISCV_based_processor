module register
#( parameter WIDTH = 1 )
   (
    input clk,
    input [WIDTH-1:0] in_data,
    input enable,
    output reg [WIDTH-1:0] ou_data
    );

   always @(posedge clk) begin
      if(enable)
        ou_data <= in_data;
      else
        ou_data <= ou_data;
   end
endmodule
