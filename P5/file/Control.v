`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:00:16 11/06/2022 
// Design Name: 
// Module Name:    Control 
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
module Control(
	 input [31:0] Ins,
    output reg RegWrite,
    output reg [2:0] MemToReg,
    output reg MemRead,
    output reg MemWrite,
    output reg [2:0] MemWriteOp,
    output reg [2:0] MemReadOp,
    output reg [3:0] ALUOp,
    output reg ALUSrc,
    output reg [2:0] RegDst,
    output reg [2:0] Sign,
    output reg [2:0] Branch,
    output reg [2:0] Rs_T_use,
    output reg [2:0] Rt_T_use, //3'b111 不需要新数据
    output reg [2:0] T_new    //3'b000 不产生新数据或立刻产生
    );
	always@(*) begin
		case(Ins[`op]) 
			6'b000000 : begin
				case(Ins[`func]) 
					6'b000000: begin
						RegWrite = 0;
						MemToReg = 0;
						MemRead = 0;
						MemWrite = 0;
						MemWriteOp = 0;
						MemReadOp = 0;
						ALUOp = `Add;
						ALUSrc = 0;
						RegDst = 0;
						Sign = 0;
						Branch = 0;
						Rs_T_use = 3'b111;
						Rt_T_use = 3'b111;
						T_new = 3'b000;
					end
					6'b100000 : begin    //add
						RegWrite = 1;
						MemToReg = 0;
						MemRead = 0;
						MemWrite = 0;
						MemWriteOp = 0;
						MemReadOp = 0;
						ALUOp = `Add;
						ALUSrc = 0;
						RegDst = 1;
						Sign = 0;
						Branch = 0;
						Rs_T_use = 1;
						Rt_T_use = 1;
						T_new = 2;
					end
					6'b100010 : begin    //sub
						RegWrite = 1;
						MemToReg = 0;
						MemRead = 0;
						MemWrite = 0;
						MemWriteOp = 0;
						MemReadOp = 0;
						ALUOp = `Sub;
						ALUSrc = 0;
						RegDst = 1;
						Sign = 0;
						Branch = 0;
						Rs_T_use = 1;
						Rt_T_use = 1;
						T_new = 2;
					end
					6'b001000: begin  //jr
						RegWrite = 1;
						MemToReg = 0;
						MemRead = 0;
						MemWrite = 0;
						MemWriteOp = 0;
						MemReadOp = 0;
						ALUOp = `Sub;
						ALUSrc = 0;
						RegDst = 1;
						Sign = 0;
						Branch = 3'b011;
						Rs_T_use = 0;
						Rt_T_use = 3'b111;
						T_new = 0;
					end
				endcase
			end
			6'b001101: begin  //ori
				RegWrite = 1;
				MemToReg = 0;
				MemRead = 0;
				MemWrite = 0;
				MemWriteOp = 0;
				MemReadOp = 0;
				ALUOp = `Or;
				ALUSrc = 1;
				RegDst = 0;
				Sign = 0;
				Branch = 0;
				Rs_T_use = 1;
				Rt_T_use = 3'b111;
				T_new = 2;
			end	
			6'b001111: begin  //lui
				RegWrite = 1;
				MemToReg = 0;
				MemRead = 0;
				MemWrite = 0;
				MemWriteOp = 0;
				MemReadOp = 0;
				ALUOp = `Add;
				ALUSrc = 1;
				RegDst = 0;
				Sign = 2;
				Branch = 0;
				Rs_T_use = 3'b111;
				Rt_T_use = 3'b111;
				T_new = 2;
			end
			6'b100011: begin //lw
				RegWrite = 1;
				MemToReg = 1;
				MemRead = 1;
				MemWrite = 0;
				MemWriteOp = 0;
				MemReadOp = 0;
				ALUOp = `Add;
				ALUSrc = 1;
				RegDst = 0;
				Sign = 1;
				Branch = 0;
				Rs_T_use = 3'b001;
				Rt_T_use = 3'b111;
				T_new = 3;
			end
			6'b100000: begin //lb
				RegWrite = 1;
				MemToReg = 1;
				MemRead = 1;
				MemWrite = 0;
				MemWriteOp = 0;
				MemReadOp = 1;
				ALUOp = `Add;
				ALUSrc = 1;
				RegDst = 0;
				Sign = 1;
				Branch = 0;
				Rs_T_use = 3'b001;
				Rt_T_use = 3'b111;
				T_new = 3;
			end
			6'b100001: begin //lh
				RegWrite = 1;
				MemToReg = 1;
				MemRead = 1;
				MemWrite = 0;
				MemWriteOp = 0;
				MemReadOp = 2;
				ALUOp = `Add;
				ALUSrc = 1;
				RegDst = 0;
				Sign = 1;
				Branch = 0;
				Rs_T_use = 3'b001;
				Rt_T_use = 3'b111;
				T_new = 3;
			end
			6'b101011: begin //sw 
				RegWrite = 0;
				MemToReg = 0;
				MemRead = 0;
				MemWrite = 1;
				MemWriteOp = 0;
				MemReadOp = 0;
				ALUOp = `Add;
				ALUSrc = 1;
				RegDst = 0;
				Sign = 1;
				Branch = 0;
				Rs_T_use = 3'b001;
				Rt_T_use = 3'b010;
				T_new = 3'b000;
			end
			6'b101000: begin //sb
				RegWrite = 0;
				MemToReg = 0;
				MemRead = 0;
				MemWrite = 1;
				MemWriteOp = 1;
				MemReadOp = 0;
				ALUOp = `Add;
				ALUSrc = 1;
				RegDst = 0;
				Sign = 1;
				Branch = 0;
				Rs_T_use = 3'b001;
				Rt_T_use = 3'b010;
				T_new = 3'b000;
			end
			6'b101001: begin //sh
				RegWrite = 0;
				MemToReg = 0;
				MemRead = 0;
				MemWrite = 1;
				MemWriteOp = 2;
				MemReadOp = 0;
				ALUOp = `Add;
				ALUSrc = 1;
				RegDst = 0;
				Sign = 1;
				Branch = 0;
				Rs_T_use = 3'b001;
				Rt_T_use = 3'b010;
				T_new = 3'b000;
			end
			6'b000100: begin  //beq
				RegWrite = 0;
				MemToReg = 0;
				MemRead = 0;
				MemWrite = 0;
				MemWriteOp = 0;
				MemReadOp = 0;
				ALUOp = `Add;
				ALUSrc = 0;
				RegDst = 0;
				Sign = 1;
				Branch = 3'b001;
				Rs_T_use = 3'b000;
				Rt_T_use = 3'b000;
				T_new = 3'b000;
			end
			6'b000011: begin    //jal
				RegWrite = 1;
				MemToReg = 2;
				MemRead = 0;
				MemWrite = 0;
				MemWriteOp = 0;
				MemReadOp = 0;
				ALUOp = `Add;
				ALUSrc = 0;
				RegDst = 2;  // regdst = 2当且仅当写入的数是pc+8
				Sign = 0;
				Branch = 3'b010;
				Rs_T_use = 3'b111;
				Rt_T_use = 3'b111;
				T_new = 3'b000;
			end	
		endcase 
	end
endmodule

