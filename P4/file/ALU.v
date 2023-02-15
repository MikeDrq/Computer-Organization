`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:48:25 10/27/2022 
// Design Name: 
// Module Name:    ALU 
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
module ALU(A,B,Result,Aluop,Shamt);
	input [31:0] A;
	input [31:0] B;
	input [3:0] Aluop;
	input [4:0] Shamt;
	output [31:0] Result;
	reg [31:0] ans;
	always@(*) begin
		case(Aluop) 
			4'b0000: begin
				ans = A + B;
			end
			4'b0001: begin
				ans = A - B;
			end
			4'b0010: begin
				ans =  A|B;
			end
			4'b0011: begin
				if (A == B) begin
					ans = {{31{1'b0}},1'b1};
				end
				else begin
					ans = 0;
				end
			end
			4'b0100: begin
				ans = B << Shamt;
			end
		endcase
	end
	assign Result = ans;
endmodule
