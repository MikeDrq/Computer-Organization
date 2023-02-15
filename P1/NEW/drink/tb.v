`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:30:20 10/16/2022
// Design Name:   drink
// Module Name:   C:/Users/1/Desktop/CO/P1/NEW/drink/tb.v
// Project Name:  drink
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: drink
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;

	// Inputs
	reg clk;
	reg reset;
	reg [1:0] coin;

	// Outputs
	wire drink;
	wire [1:0] back;

	// Instantiate the Unit Under Test (UUT)
	drink uut (
		.clk(clk), 
		.reset(reset), 
		.coin(coin), 
		.drink(drink), 
		.back(back)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		coin = 0;
		coin = 0;
		#10 coin = 0;
		#10 coin = 1;
		#10 coin = 2;
		#10 coin = 1;
		#10 coin = 2;
		#10 coin = 1;
		#10 coin = 2;
		#10 coin = 3;
		#10 coin = 2;
		#10 coin = 2;
		reset = 1;
	end
    always #5 clk = ~clk;  
endmodule

