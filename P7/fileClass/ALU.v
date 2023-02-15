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
	 input [31:0] Ins,
    input [31:0] E_ALUA,
    input [31:0] E_ALUB,
    input [3:0] E_ALUOp,
    output reg [31:0] E_ALUAns,
	 output OV,
	 output OVDM
    );
	 wire [32:0] OA = {E_ALUA[31],E_ALUA};
	 wire [32:0] OB = {E_ALUB[31],E_ALUB};
	 wire [32:0] sum = OA + OB;
	 wire [32:0] subt = OA - OB;
	 wire RI = (Ins[`op] == 6'b000000 && Ins[`func] == 6'b100000) | 
				  (Ins[`op] == 6'b001000) | 
				  (Ins[`op] == 6'b000000 && Ins[`func] == 6'b100010);
	 wire DM = (Ins[`op] == 6'b101000) | (Ins[`op] == 6'b101001) | (Ins[`op] == 6'b101011) |
				  (Ins[`op] == 6'b100000) | (Ins[`op] == 6'b100001) | (Ins[`op] == 6'b100011);
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
			`And: begin
				E_ALUAns = E_ALUA & E_ALUB;
			end
			`Slt: begin
				if ($signed(E_ALUA) < $signed(E_ALUB)) begin
					E_ALUAns = {{31{1'b0}},{1'b1}};
				end
				else begin
					E_ALUAns = 32'b0;
				end
			end
			`Sltu: begin
				if (E_ALUA < E_ALUB) begin
					E_ALUAns = {{31{1'b0}},{1'b1}};
				end
				else begin
					E_ALUAns = 32'b0;
				end
			end
		endcase	
	end
		assign OV = RI && 
						(((E_ALUOp == `Add) && (sum[32] != sum[31])) ||
						 ((E_ALUOp == `Sub) && (subt[32] != subt[31])));
		assign OVDM = DM && 
						(((E_ALUOp == `Add) && (sum[32] != sum[31])) ||
						 ((E_ALUOp == `Sub) && (subt[32] != subt[31])));
endmodule
