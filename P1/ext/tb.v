`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:45:01 10/05/2022
// Design Name:   ext
// Module Name:   C:/Users/1/Desktop/P1/ext/tb.v
// Project Name:  ext
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ext
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
	reg [15:0] imm;
	reg [1:0] EOp;

	// Outputs
	wire [31:0] ext;

	// Instantiate the Unit Under Test (UUT)
	ext uut (
		.imm(imm), 
		.EOp(EOp), 
		.ext(ext)
	);

	initial begin
		// Initialize Inputs
		imm = 16'b1000111101011010;
		EOp = 2'b10;

		// Wait 100 ns for global reset to finish
		#10;
		EOp = 2'b11;
		#10;
		imm = 16'b0000111101011010;
		EOp = 2'b00;
      #10;
		EOp = 2'b01;
		#10;  
		EOp = 2'b10;
		#10;
		EOp = 2'b11;
		// Add stimulus here

	end
      
endmodule

