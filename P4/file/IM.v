`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:03:35 10/27/2022 
// Design Name: 
// Module Name:    IM 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module IM(RAddr,RData);
	input [11:0] RAddr;
	output [31:0] RData;
	reg [31:0] ROM [0:4095];
	integer i;
	initial begin
		for (i = 0;i < 4096;i = i + 1) begin
			ROM[i] = 0;
		end
		$readmemh("code.txt",ROM,0);
	end
	assign RData = ROM[RAddr];
endmodule
