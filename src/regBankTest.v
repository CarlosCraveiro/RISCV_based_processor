module ssgDecoder
#(parameter WIDTH = 4)
(
	input clock_50Mhz, 
	input [WIDTH-1:0] RD1,
	input [WIDTH-1:0] RD2,
	input reset,
	output reg [7:0] LED_out,
	output reg [3:0] Anode_Activate
);

	wire [13:0] displayed_number;
	assign displayed_number = RD1 * 100 + RD2;
	reg [3:0] LED_BCD;
	wire [1:0] LED_activating_counter;
	reg [19:0] refresh_counter;

	always @(posedge clock_50Mhz or posedge reset)
    begin 
        if(reset==1)
            refresh_counter <= 0;
        else
            refresh_counter <= refresh_counter + 1;
    end 
    assign LED_activating_counter = refresh_counter[19:18];
	
	always @(*)
    begin
        case(LED_activating_counter)
        2'b00: begin
            Anode_Activate = 4'b0111; 
            // activate LED1 and Deactivate LED2, LED3, LED4
            LED_BCD = displayed_number/1000;
            // the first digit of the 16-bit number
              end
        2'b01: begin
            Anode_Activate = 4'b1011; 
            // activate LED2 and Deactivate LED1, LED3, LED4
            LED_BCD = (displayed_number % 1000)/100;
            // the second digit of the 16-bit number
              end
        2'b10: begin
            Anode_Activate = 4'b1101; 
            // activate LED3 and Deactivate LED2, LED1, LED4
            LED_BCD = ((displayed_number % 1000)%100)/10;
            // the third digit of the 16-bit number
                end
        2'b11: begin
            Anode_Activate = 4'b1110; 
            // activate LED4 and Deactivate LED2, LED3, LED1
            LED_BCD = ((displayed_number % 1000)%100)%10;
            // the fourth digit of the 16-bit number    
               end
        endcase
    end
    // Cathode patterns of the 7-segment LED display 
    always @(*)
    begin
        case(LED_BCD)
        4'b0000: LED_out = 8'b00000011; // "0"     
        4'b0001: LED_out = 8'b10011111; // "1" 
        4'b0010: LED_out = 8'b00100101; // "2" 
        4'b0011: LED_out = 8'b00001101; // "3" 
        4'b0100: LED_out = 8'b10011001; // "4" 
        4'b0101: LED_out = 8'b01001001; // "5" 
        4'b0110: LED_out = 8'b01000001; // "6" 
        4'b0111: LED_out = 8'b00011111; // "7" 
        4'b1000: LED_out = 8'b00000001; // "8"     
        4'b1001: LED_out = 8'b00001001; // "9" 
        default: LED_out = 8'b00000011; // "0"
        endcase
    end
endmodule

module regBankTest
#(parameter WIDTH = 3, SIZE = 2)
(
 input                  clk,
 input                  we3,
 input [SIZE-1:0]       A1,
 input [SIZE-1:0]       A2,
 input [SIZE-1:0]       A3,
 input [WIDTH-1:0]      WD3,
 output [7:0] ssg,
 output [3:0] selector,
 output [SIZE-1:0] A1H,
 output [SIZE-1:0] A2H,
 output [SIZE-1:0] A3H
);

	wire n_we3;
	assign n_we3 = ~we3;

 wire [WIDTH-1:0] RD1;
 wire [WIDTH-1:0] RD2;

assign A1H = 2'b10;
assign A2H = 2'b11;
assign A3H = 2'b11;


RegBank #(.WIDTH(WIDTH), .SIZE(SIZE)) banco(clk, n_we3, A1, A2, A3, WD3, RD1, RD2);
ssgDecoder #(.WIDTH(WIDTH)) (clk, RD1, RD2, n_we3, ssg, selector);

endmodule