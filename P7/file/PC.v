`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:30:40 11/05/2022 
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
module PC(
    input clk,
    input reset,
    input [31:0] In,
	input stall,
	input req,
    output reg [31:0] Out
    );
	always@(posedge clk) begin
		if (reset == 1) begin
			Out <= 32'h00003000;
		end
		else begin
			if (req == 1) begin
				Out <= 32'h0004180;
			end 
			else if (stall == 1) begin
				Out <= Out;
			end
			else begin
				Out <= In;
			end
		end
	end	
endmodule
