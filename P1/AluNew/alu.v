`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:54:19 10/05/2022 
// Design Name: 
// Module Name:    Alu 
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
module alu(
    input [31:0] A,
    input [31:0] B,
    input [2:0] ALUOp,
    output [31:0] C
    );
	reg [2:0] op;
	reg [31:0] ans;
	initial begin
		ans = 0;
	end
	always@(*) begin
		op  = ALUOp;
		case(op) 
			3'b000: begin
				ans = A+B;
			end
			3'b001:begin
				ans = A-B;
			end
			3'b010: begin
				ans = A&B;
			end
			3'b011:begin
				ans = A|B;
			end
			3'b100:begin
				ans = A>>B;
			end
			3'b101:begin
				ans = $signed(A)>>>B;
			end
		endcase
	end
	assign C = ans;
endmodule
