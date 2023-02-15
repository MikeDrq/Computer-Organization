`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:01:25 10/16/2022
// Design Name:   VoterPlus
// Module Name:   C:/Users/1/Desktop/CO/P1/NEW/VoterPlus/tb.v
// Project Name:  VoterPlus
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: VoterPlus
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
	reg [31:0] np;
	reg reset;
	reg [7:0] vip;
	reg vvip;
	reg clk;

	// Outputs
	wire [7:0] result;

	// Instantiate the Unit Under Test (UUT)
	VoterPlus uut (
		.np(np), 
		.reset(reset), 
		.vip(vip), 
		.vvip(vvip), 
		.result(result), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		np = 0;
		reset = 0;
		vip = 0;
		vvip = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#10;
		vvip = 1;
		np = 32'b10001000100010001000100010001000;
      vip =  8'b10001000;
		#10;
		vvip = 0;
		np = 0;
		vip = 0;
	end
   always #5 clk = ~clk;  
endmodule

