`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:34:32 10/27/2022 
// Design Name: 
// Module Name:    GRF 
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
module GRF(clk,reset,We,Rs,Rt,Rd,Wd,RdRs,RdRt,WPC);
	input clk;
	input reset;
	input We;
	input [31:0] WPC;
	input [31:0] Wd;
	input [4:0] Rs;
	input [4:0] Rt;
	input [4:0] Rd;
	output [31:0] RdRs;
	output [31:0] RdRt;
	integer i;
	reg [31:0] register [0:31];
	initial begin
		for (i = 0;i < 32;i = i + 1) begin
				register[i] = 0;
		end
	end
	always@(posedge clk) begin
		if (reset == 1) begin
			for (i = 0;i < 32;i = i + 1) begin
				register[i] = 0;
			end
		end 
		else begin
			if (We == 1) begin
				if (Rd > 0) begin
					register[Rd] <= Wd;
					$display("@%h: $%d <= %h", WPC, Rd, Wd);
				end
			end
		end
	end
	assign RdRs = register[Rs];
	assign RdRt = register[Rt];
endmodule
