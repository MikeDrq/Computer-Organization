`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:57 10/27/2022 
// Design Name: 
// Module Name:    PC 
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
module PC(clk,reset,InPC,OutPC);
	input clk;
	input reset;
	input [31:0] InPC;
	output reg [31:0] OutPC = 32'h00003000;
	always@(posedge clk) begin
		if (reset == 1) begin
			OutPC <= 32'h00003000;
		end
		else begin
			OutPC <= InPC; 
		end
	end
endmodule
