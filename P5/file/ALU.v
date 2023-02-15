`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:03:04 11/06/2022 
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
`include "Constants.v"
module ALU(
    input [31:0] E_ALUA,
    input [31:0] E_ALUB,
    input [3:0] E_ALUOp,
    output reg [31:0] E_ALUAns
    );
	always@(*) begin
		case(E_ALUOp)
			`Add: begin
				E_ALUAns = E_ALUA + E_ALUB;
			end
			`Sub: begin
				E_ALUAns = E_ALUA - E_ALUB;
			end
			`Or: begin
				E_ALUAns = E_ALUA | E_ALUB;
			end
		endcase	
	end

endmodule
