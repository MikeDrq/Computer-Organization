`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:56:59 10/08/2022
// Design Name:   fsm_1010
// Module Name:   C:/Users/1/Desktop/P1/fsm_1010/tb.v
// Project Name:  fsm_1010
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fsm_1010
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb;
	reg clk;
	reg in;
	// Outputs
	wire out ;

	// Instantiate the Unit Under Test (UUT)
	fsm_1010 uut (
		.clk(clk),
		.in(in),
		.out(out)
	);

	initial begin
		clk = 0;
		in = 1;
		#10; in = 0;
		#10; in = 1;
		#10; in = 0;
		#10; in = 1;
		#10; in = 0;

	end
     always #5 clk = ~clk; 
endmodule

