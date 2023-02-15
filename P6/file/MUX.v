`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:09:45 11/06/2022 
// Design Name: 
// Module Name:    MUX 
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
module MUX(
		input [31:0] PCPlus4,	/*MUX_PC F 判断写入PC的数*/
		input [31:0] PCfromNPC,
		input [2:0] branch,
		output reg [31:0] PCAddr,
		input [31:0] D_RsD,     /*MUX_DA D 判断branch时RS的冲突*/
		input [2:0] CDRs,
		output reg [31:0] B_Rs,
		input [31:0] D_RtD,    /*MUX_DB D 判断branch时Rt的冲突*/
		input [2:0] CDRt,
		output reg [31:0] B_Rt,
		input [31:0] E_A,        /* MUX_EA E 判断RS的冲突*/
		input [31:0] M_ALUAns,
		input [31:0] W_MemData,
		input [31:0] M_PCPlus8,
		input [31:0] W_PCPlus8,
		input [2:0] M_RegDst,
		input [2:0] W_RegDst,
		input [2:0] CEA,
		output reg [31:0] E_ALUA,
		input [31:0] E_B,      /* MUX_EB E 判断RT的冲突*/
		input [2:0] CEB,
		//input [31:0] M_ALUAns,
		//input [31:0] W_MemData,
		output reg [31:0] E_NextB, 
		input [31:0] E_InB,   /* MUX_EImmeReg E 判断进入ALU的数来自RT还是IMME*/
		input [31:0] E_Imme,
		input [2:0] E_ALUSrc,  //0: rt 1: imme 2: hi 3: lo
		input [31:0] HI,
		input [31:0] LO,
		output reg [31:0] E_ALUB,
		input [4:0] E_Rt,     /*MUX_ETarget E 判断写入的寄存器*/
		input [4:0] E_Rd,
		input [2:0] E_RegDst,
		output reg [4:0] E_TargetReg,
		input [31:0] W_Write,  /*MUX_DMIN M 判断写入寄存器的数是否有冲突*/
		input [31:0] M_Write,
		input [2:0] CMI,
		//input [31:0] W_PCPlus8, 
		output reg [31:0] M_WriteData,
		input [2:0] W_RegToWrite,   /* MUX_BackData W 判断写回寄存器的数来自ALU还是MEM还是PC+8*/
		input [31:0] W_ReadData,
		input [31:0] W_ALUData,
		output reg [31:0] W_BackData
    );
		always@(*) begin
			
			/*MUX_PC F 判断写入PC的数*/
			case(branch)
				3'b000 : begin
					PCAddr = PCPlus4;
				end
				default : begin
					PCAddr = PCfromNPC;
				end
			endcase
			
			/*MUX_DA A 判断branch时Rs的冲突*/
			case(CDRs) 
				3'b000: begin
					B_Rs = D_RsD;
				end
				3'b001: begin
					if (M_RegDst == 2) begin
						B_Rs = M_PCPlus8;
					end
					else begin
						B_Rs = M_ALUAns;
					end
				end
				3'b010: begin
					if (W_RegDst == 2) begin
						B_Rs = W_PCPlus8;
					end
					else begin
						B_Rs = W_MemData;
					end
				end
			endcase
			
			/*MUX_DA A 判断branch时Rs的冲突*/
			case(CDRt)
				3'b000: begin
					B_Rt = D_RtD;
				end
				3'b001: begin
					if (M_RegDst == 2) begin
						B_Rt = M_PCPlus8;
					end
					else begin
						B_Rt = M_ALUAns;
					end
				end
				3'b010: begin
					if (W_RegDst == 2) begin
						B_Rt = W_PCPlus8;
					end
					else begin
						B_Rt = W_MemData;
					end
				end
			endcase
			/* MUX_EA E 判断RS的冲突*/
			case(CEA) 
				3'b000: begin
					E_ALUA = E_A;
				end
				3'b001: begin
					if (M_RegDst == 2) begin
						E_ALUA= M_PCPlus8;
					end
					else begin
						E_ALUA = M_ALUAns;
					end
				end
				3'b010: begin
					if (W_RegDst == 2) begin
						E_ALUA = W_PCPlus8;
					end
					else begin
						E_ALUA = W_MemData;
					end
				end
			endcase
			
			/* MUX_EB E 判断RT的冲突*/
			case(CEB)
				3'b000: begin
					E_NextB = E_B;
				end
				3'b001: begin
					if (M_RegDst == 2) begin
						E_NextB = M_PCPlus8;
					end
					else begin
						E_NextB = M_ALUAns;
					end
				end
				3'b010: begin
					if (W_RegDst == 2) begin
						E_NextB= W_PCPlus8;
					end
					else begin
						E_NextB = W_MemData;
					end
				end
		   endcase
			
			/* MUX_EImmeReg E 判断进入ALU的数来自RT还是IMME*/
			case(E_ALUSrc)
				3'b000: begin
					E_ALUB = E_InB;
				end
				3'b001: begin
					E_ALUB = E_Imme;
				end
				3'b010: begin
					E_ALUB = HI;
				end
				3'b011: begin
					E_ALUB = LO;
				end
			endcase
			
			/*MUX_ETarget E 判断写入的寄存器*/
			case(E_RegDst)
				3'b000: begin
					E_TargetReg = E_Rt;
				end
				3'b001: begin
					E_TargetReg = E_Rd;
				end
				3'b010: begin
					E_TargetReg = 5'b11111;
				end
			endcase
			
			/*MUX_DMIN M 判断写入寄存器的数是否有冲突*/
			case(CMI)
				3'b000: begin
					M_WriteData = M_Write;
				end
				3'b001: begin
					if (W_RegDst == 2) begin
						M_WriteData = W_PCPlus8;
					end
					else begin
						M_WriteData = W_Write;
					end
				end
			endcase
			
			/* MUX_WBackData W 判断写回寄存器的数来自ALU还是MEM*/
			case(W_RegToWrite)
				3'b000: begin
					W_BackData = W_ALUData;
				end
				3'b001: begin
					W_BackData = W_ReadData;
				end
				3'b010: begin
					W_BackData = W_PCPlus8;
				end
			endcase
			
		end
endmodule
