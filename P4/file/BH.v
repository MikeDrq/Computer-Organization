`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:34:54 11/17/2022 
// Design Name: 
// Module Name:    BH 
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
module BH(MemOut,MemRead,MemAddr,MemReadOp,BHOut);
	input [31:0] MemOut;
	input MemRead;
	input [2:0] MemReadOp;
	input [31:0] MemAddr;
	output reg [31:0] BHOut;
	integer i;
	reg [4:0] cnt;
	reg [7:0] Mid;
	always@(*) begin
		if (MemRead == 1) begin
			case(MemReadOp)
				3'b000: begin
					BHOut = MemOut;
				end
				3'b001: begin
					case(MemAddr[1:0]) 
						2'b00: begin
							BHOut = {{24{MemOut[7]}},MemOut[7:0]};
						end
						2'b01: begin
							BHOut = {{24{MemOut[15]}},MemOut[15:8]};
						end
						2'b10: begin
							BHOut = {{24{MemOut[23]}},MemOut[23:16]};
						end
						2'b11: begin
							BHOut = {{24{MemOut[31]}},MemOut[31:24]};
						end
					endcase
				end
				3'b010: begin
					case(MemAddr[1])
						1'b0: begin
							BHOut = {{16{MemOut[15]}},MemOut[15:0]};
						end
						1'b1: begin
							BHOut = {{16{MemOut[31]}},MemOut[31:16]};
						end
					endcase
				end
				3'b011: begin
					cnt = 5'b00000;
					case(MemAddr[1:0]) 
						2'b00: begin
							Mid = MemOut[7:0];
						end
						2'b01: begin
							Mid = MemOut[15:8];
						end
						2'b10: begin
							Mid = MemOut[23:16];
						end
						2'b11: begin
							Mid = MemOut[31:24];
						end
					endcase
					for (i = 0; i < 8;i = i + 1) begin
						if (Mid[i] == 1) begin
							cnt = cnt + 1;
						end
					end
					if (cnt == 4) begin
						BHOut = {{24{Mid[7]}},Mid};
					end
					else begin
						BHOut = 0;
					end
				end
			endcase
		end
	end
endmodule
