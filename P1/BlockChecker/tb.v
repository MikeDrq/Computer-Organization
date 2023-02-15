`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:49:54 10/05/2022
// Design Name:   BlockChecker
// Module Name:   C:/Users/1/Desktop/P1/BlockChecker/tb.v
// Project Name:  BlockChecker
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BlockChecker
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
	reg [7:0] in;

	// Outputs
	wire result;

	// Instantiate the Unit Under Test (UUT)
	BlockChecker uut (
		.clk(clk), 
		.reset(reset), 
		.in(in), 
		.result(result)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		in = "b";
		#10;
		in = "e";
		#10;
		in= " ";
		#10;
		in = "b";
		#10;
		in = "e";
		#10;
		in = "g";
		#10;
		in = "I";
		#10;
		in = "n";
		#10;
		in = " ";
		#10;
		in = "B";
		#10;
		in = "E";
		#10;
		in = "g";
		#10;
		in = "I";
		#10;
		in = "n";
		#10;
		in = "n";
		#10;
		in = "n";
		#10;
		in = " ";
		#10;
		in = "B";
		#10;
		in = "B";
		#10;
		in = "E";
		#10;
		in = "g";
		#10;
		in = "I";
		#10;
		in = "n";
		#10;
		in = " ";
		#10;
		in = "B";
		#10;
		in = "E";
		#10;
		in = "g";
		#10;
		in = "I";
		#10;
		in = "n";
		#10;
		in = " ";
		#10;
		in = "E";
		#10;
		in = "n";
		#10;
		in = "d";
		#10;
		in = " ";
		#10;
		in = "E";
		#10;
		in = "n";
		#10;
		in = "d";
		#10;
		in = "d";
		#10;
		in = "a";
		#10;
		reset = 1;
		#10;
		reset = 0;
		in = " ";
		#10;
		in = "E";
		#10;
		in = "n";
		#10;
		in = "d";
		#10;
		in = " ";
		#10;
		in = "E";
		#10;
		in = "n";
		#10;
		in = "d";
		#10;
		reset = 1;
		#10;
		reset = 0;
		in = " ";
		#10;
		in = "B";
		#10;
		in = "E";
		#10;
		in = "g";
		#10;
		in = "I";
		#10;
		in = "n";
		#10;
		in = "Z";
		#10;
		in = " ";
		#10;
		in = "B";
		#10;
		in = "E";
		#10;
		in = "g";
		#10;
		in = "I";
		#10;
		in = "n";
		#10;
		in = " ";
		#10;
		in = "E";
		#10;
		in = "n";
		#10;
		in = "d";
		#10;
		in = "c";
		#10;
		in = " ";
		#10;
		in = "e";
		#10;
		in = "n";
		#10;
		in = "d";
		#10;
		in = " ";
		#10;
		in = "a";
		#10;
		in = "e";
		#10;
		in = "n";
		#10;
		in = "d";
		#10;
		in = " ";
		#10;
		in = "b";
		#10;
		in = "e";
		#10;
		in = "g";
		#10;
		in = "i";
		#10;
		in = "n";
		#10;
		in = " ";
		#10;
		in = "o";
		#10;
		in = "r";
		#10;
		in = "G";
		#10;
		in = "A";
		#10;
		in = "N";
		#10;
		in = "i";
		#10;
		in = "z";
		#10;
		in = "a";
		#10;
		in = "t";
		#10;
		in = "i";
		#10;
		in = "o";
		#10;
		in = "n";
		#10;
		in = " ";
		#10;
		in = "E";
		#10;
		in = "n";
		#10;
		in = "d";
		#10;
		in = " ";
		#10;
		in = "r";
		#10;
		in = "l";
		#10;
		in = "d";
		#10;
		in = ",";


	end
      always #5 clk = ~clk;
endmodule

