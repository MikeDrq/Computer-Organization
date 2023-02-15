`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:55:36 10/27/2022 
// Design Name: 
// Module Name:    Controller 
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
module Controller(Ins,Op,Func,RegDst,AluSrc,MemtoReg,RegWrite,MemRead,MemWrite,AluControl,Sign,branch,jump,MemWriteOp,MemReadOp,Con1,Con2);
	input [31:0] Ins;
	input [5:0] Op;
	input [5:0] Func;
	output [2:0] RegDst; // 000 Rt,001 Rd, 010 $31
	output AluSrc; 
	output MemtoReg;
	output RegWrite;
	output MemRead;
	output MemWrite;
	output [3:0] AluControl;
	output [1:0] Sign;
	output branch;
	output [2:0] jump; //000 no;001 J; 010 Jal; 011 Jr;
	output [2:0] MemWriteOp;
	output [2:0] MemReadOp;
	output Con1;
	output Con2;
	reg [25:0] control;// RegDst(3)_AluSrc_MemtoReg_RegWrite_MemRead_MemWrite_AluContol(4)_Sign(2)_branch_jump_MemWriteOp(3)_MemReadOp(3)_Con1_Con2
	always@(*) begin
		if (Ins == 0) begin
			control = 0;
		end
		else begin
			case(Op) 
				6'b000000: begin
					case(Func) 
						6'b100000:begin
							control = 26'b001_0_0_1_0_0_0000_00_0_000_000_000_0_0; //add
						end
						6'b100010: begin
							control = 26'b001_0_0_1_0_0_0001_00_0_000_000_000_0_0; //sub
						end
						6'b001000: begin
							control = 26'b000_0_0_0_0_0_0000_00_0_011_000_000_0_0; // Jr
						end
						6'b000000: begin
							control = 26'b001_0_0_1_0_0_0100_00_0_000_000_000_0_0; //sll
						end
					endcase
				end
				6'b001101: begin
					control = 26'b000_1_0_1_0_0_0010_00_0_000_000_000_0_0; //ori
				end
				6'b100011: begin
					control = 26'b000_1_1_1_1_0_0000_01_0_000_000_000_0_0;//Lw
				end
				6'b101011: begin
					control = 26'b000_1_0_0_0_1_0000_01_0_000_000_000_0_0;//Sw
				end
				6'b001111: begin
					control = 26'b000_1_0_1_0_0_0000_10_0_000_000_000_0_0;//Lui
				end
				6'b000100: begin
					control = 26'b000_0_0_0_0_0_0011_01_1_000_000_000_0_0;//Beq
				end
				6'b000010: begin
					control = 26'b000_0_0_0_0_0_0000_00_0_001_000_000_0_0;//J
				end
				6'b000011: begin
					control = 26'b010_0_0_1_0_0_0000_00_0_010_000_000_0_0;//Jal
				end
				6'b101000: begin
					control = 26'b000_1_0_0_0_1_0000_01_0_000_001_000_0_0;//sb
				end
				6'b101001: begin
					control = 26'b000_1_0_0_0_1_0000_01_0_000_010_000_0_0;//sh
				end
				6'b100000: begin
					control = 26'b000_1_1_1_1_0_0000_01_0_000_000_001_0_0;//lb
				end
				6'b100001: begin
					control = 26'b000_1_1_1_1_0_0000_01_0_000_000_010_0_0;//lh
				end
				6'b111110: begin
					control = 26'b000_1_1_1_1_0_0000_01_0_000_000_011_0_0;//
				end
			endcase
		end
	end
	assign {RegDst,AluSrc,MemtoReg,RegWrite,MemRead,MemWrite,AluControl,Sign,branch,jump,MemWriteOp,MemReadOp,Con1,Con2} = control;
endmodule
