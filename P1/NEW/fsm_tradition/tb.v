`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:51:06 10/16/2022
// Design Name:   fsm
// Module Name:   C:/Users/1/Desktop/CO/P1/NEW/fsm_tradition/tb.v
// Project Name:  fsm_tradition
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fsm
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
	reg in;
	reg reset;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	fsm uut (
		.clk(clk), 
		.in(in), 
		.reset(reset), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		in = 1;
		#10;
		in = 1;
		#10;
		in = 0;
		#10;
		in = 0;
		#10;
		in = 1;
		#10;
		in = 1;
		#10;
		in = 1;
		#10;
		in = 0;
		#10;
		in = 0;
		#10;
		in = 1;
		#10;
		in = 1;
	end
      always #5 clk = ~clk;
endmodule
