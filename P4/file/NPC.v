`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:13:21 10/27/2022 
// Design Name: 
// Module Name:    NPC 
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
module NPC(Ins,NextIns,Address,Jump,Beq,Ext,Ra);
	input [31:0] Ins;
	output reg [31:0] NextIns;
	input [25:0] Address;
	input [2:0] Jump;
	input Beq;
	input [31:0] Ra;
	input [31:0] Ext;
	always@(*) begin
		if (Beq == 1) begin
			NextIns = Ins + 4 + (Ext<<2);
		end
		else begin
			case(Jump) 
				0: begin
					NextIns = Ins + 4;
				end
				1: begin
					NextIns = {Ins[31:28],Address,{2{1'b0}}};
				end
				2: begin
					NextIns = {Ins[31:28],Address,{2{1'b0}}};
				end
				3: begin
					NextIns = Ra;
				end
			endcase
		end
	end
endmodule
