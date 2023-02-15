`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:37:36 10/07/2022
// Design Name:   intcheck
// Module Name:   C:/Users/1/Desktop/P1/intcheck/tb.v
// Project Name:  intcheck
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: intcheck
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
	reg [7:0] in;
	reg reset;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	intcheck uut (
		.clk(clk), 
		.in(in), 
		.reset(reset), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		in = "i";
		#10 in = "n";
		#10 in = "t";
		#10 in = " ";
		#10 in = "i";
		#10 in = ",";
		#10 in = "n";
		#10 in = "t";
		#10 in = ",";
		#10 in = " ";
		#10 in = "A";
		#10 in = ";";
		#10 in = ";";
		#10 in = "i";
		#10 in = "n";
		#10 in = "t";
		#10 in = " ";
		#10 in = "b";
		#10 in = "_";
		#10 in = "1";
		#10 in = ",";
		#10 in = "c";
		#10 in = ";";
	end
	always #5 clk = ~clk;
     //int  A;int b_1,c; int i,in,intd;int e[2];;int f,int,g;i 
endmodule

