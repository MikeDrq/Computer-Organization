`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:07:59 10/16/2022
// Design Name:   FloatType
// Module Name:   C:/Users/1/Desktop/CO/P1/NEW/FloatType/tb.v
// Project Name:  FloatType
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FloatType
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
	reg [31:0] num;

	// Outputs
	wire [4:0] float_type;

	// Instantiate the Unit Under Test (UUT)
	FloatType uut (
		.num(num), 
		.float_type(float_type)
	);

	initial begin
		// Initialize Inputs
		num = 32'b11111111100000000000000000000000;

		// Wait 100 ns for global reset to finish

        
		// Add stimulus here

	end
      
endmodule

