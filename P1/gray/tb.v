`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:58:16 10/05/2022
// Design Name:   gray
// Module Name:   C:/Users/1/Desktop/P1/gray/tb.v
// Project Name:  gray
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gray
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
	reg Clk;
	reg Reset;
	reg En;

	// Outputs
	wire [2:0] Output;
	wire Overflow;

	// Instantiate the Unit Under Test (UUT)
	gray uut (
		.Clk(Clk), 
		.Reset(Reset), 
		.En(En), 
		.Output(Output), 
		.Overflow(Overflow)
	);

	initial begin
		// Initialize Inputs
		Clk = 0;
		Reset = 0;
		En = 0;

		// Wait 100 ns for global reset to finish
		#100;
		En = 1;
		#20;
		Reset = 1;
		#20;
		Reset = 0;
		// Add stimulus here

	end
   always #10 Clk = ~Clk;   
endmodule

