`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:26:04 11/05/2022 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input clk,
    input reset
    );
	/*取址阶段*/
	wire [31:0] IAddr;  //当前指令的地址，进入IM取指令
	wire [31:0] RomAddr; //地址减去00003000 
	wire [31:0] F_Ins;     //指令
	wire [31:0] F_PCPlus4;  //PC + 4
	wire [31:0] NextAddr; //下一条指令地址
	
	/*F级流水线寄存器*/
	wire [31:0] D_Ins;
	wire [31:0] D_PCPlus4;
	wire [31:0] D_PCAddr;
	wire [31:0] D_NextAddr;
	
   wire [2:0] D_Sign;   //译码
   wire [2:0] D_Branch;
   wire [2:0] D_Rs_T_use;
   wire [2:0] D_Rt_T_use;
   wire [2:0] D_T_new;
	
	wire [31:0] D_RsD;  //Grf
	wire [31:0] D_RtD;
	
	wire [31:0] D_Imme32; // Ext
	
	wire [31:0] B_Rs;
	wire [31:0] B_Rt;
	wire equal;  //判断是否相等
	
	wire D_con1;
	wire D_con2;
	/*D级流水线寄存器*/
	wire [31:0] E_Imme;
   wire [2:0] E_T_new;
	wire [31:0] E_A;
	wire [31:0] E_B;
	wire [31:0] E_PCAddr;
	wire E_con1;
	wire E_con2;
	/*执行阶段*/
	wire [31:0] E_Ins;   //译码
   wire [3:0] E_ALUOp;
   wire E_ALUSrc;
   wire [2:0] E_RegDst;
	
	wire [31:0] E_ALUA; //ALU
	wire [31:0] E_ALUB;
	wire [31:0] E_NextB;
	wire [31:0] E_ALUAns;
	wire [4:0] E_TargetReg;
	wire E_RegWrite;
	
	
	/*E级流水线寄存器*/
	wire [31:0] M_Ins;
	wire [31:0] M_ALUAns;
   wire [2:0] M_T_new;
	wire [31:0] M_PCAddr;
	wire [4:0] M_TargetReg;
	wire [31:0] M_WriteDataOrigin;
	wire M_con1;
	wire M_con2;
	
	/*存储阶段*/ 
	wire M_RegWrite;        //译码     
   wire M_MemRead;
   wire M_MemWrite;
   wire [2:0] M_MemWriteOp;
   wire [2:0] M_MemReadOp;
	wire [31:0] M_WriteData;
	wire [2:0] M_RegDst;
	
	wire [31:0] M_MemOut;
	wire [31:0] M_MemReadData;
	
	/*M级流水线寄存器*/
	wire [31:0] W_Ins;
	wire [4:0] W_TargetReg;
	wire [31:0] W_BackData;
   wire [2:0] W_T_new;
	wire [31:0] W_MemReadData;
	wire [31:0] W_ALUData;
	wire [2:0] W_RegDst;
	wire W_con1;
	wire W_con2;
	
	/*写回阶段*/
	wire W_RegWrite;
	wire [2:0] W_MemToReg;
	wire [31:0] W_PCAddr;
	
	/*HARZARD*/
	wire [2:0] CDRs;        //Control D Rs
   wire [2:0] CDRt;        //Control D Rt
	wire [2:0] CEA;         //Control E A
	wire [2:0] CEB;         //Control E B
	wire [2:0] CMI;         //COntrol M In
	wire stall;          //停止
	/*****************************************************************************************/
	
	/*取址阶段*/
	assign RomAddr = IAddr - 32'h00003000;
	assign F_PCPlus4 = (stall == 1) ? IAddr :IAddr + 4;
	PC pc(.clk(clk),.reset(reset),.In(NextAddr),.Out(IAddr),.stall(stall));
	IM im(.Addr(RomAddr[13:2]),.Ins(F_Ins));
	MUX muxpc(.PCPlus4(F_PCPlus4),.branch(D_Branch),.PCfromNPC(D_NextAddr),.PCAddr(NextAddr));
	/*F级流水线寄存器*/
	F f(.clk(clk),.reset(reset),.stall(stall),.F_Ins(F_Ins),.F_PCPlus4(F_PCPlus4),.F_PCAddr(IAddr),
		 .D_Ins(D_Ins),.D_PCPlus4(D_PCPlus4),.D_PCAddr(D_PCAddr));

	/*译码阶段*/
	Control d_control(.Ins(D_Ins),.Sign(D_Sign),.Branch(D_Branch),
						 .Rs_T_use(D_Rs_T_use),.Rt_T_use(D_Rt_T_use),.T_new(D_T_new));
	
	GRF grf(.clk(clk),.reset(reset),.D_Rs(D_Ins[`rs]),.D_Rt(D_Ins[`rt]),.W_TargetReg(W_TargetReg),.W_Data(W_BackData),.W_RegWrite(W_RegWrite),.WPC(W_PCAddr),
			  .D_RsD(D_RsD),.D_RtD(D_RtD)); //D和W阶段共用
	
	EXT ext(.D_Imme16(D_Ins[`imme]),.D_Sign(D_Sign),.D_Imme32(D_Imme32));
	
	NPC npc(.Addr(D_PCPlus4),.NAddr(D_NextAddr),.Branch(D_Branch),.equal(equal),.D_Imme(D_Imme32),.D_Ins(D_Ins),.JumpAddr(D_Ins[`jaddr]),.D_RaData(B_Rs));
	
	MUX mux_da(.D_RsD(D_RsD),.M_ALUAns(M_ALUAns),.W_MemData(W_BackData),.CDRs(CDRs),.B_Rs(B_Rs),.M_PCPlus8(M_PCAddr + 8),.W_PCPlus8(W_PCAddr + 8),.M_RegDst(M_RegDst),.W_RegDst(W_RegDst));
	
	MUX mux_db(.D_RtD(D_RtD),.M_ALUAns(M_ALUAns),.W_MemData(W_BackData),.CDRt(CDRt),.B_Rt(B_Rt),.M_PCPlus8(M_PCAddr + 8),.W_PCPlus8(W_PCAddr + 8),.M_RegDst(M_RegDst),.W_RegDst(W_RegDst));
	
	CMP cmp(.B_Rs(B_Rs),.B_Rt(B_Rt),.equal(equal));
	
	/*D级流水线寄存器*/
	D d(.clk(clk),.reset(reset),.stall(stall),
	    .D_Imme(D_Imme32),.D_T_new(D_T_new),.D_A(D_RsD),.D_B(D_RtD),.D_PCAddr(D_PCAddr),.D_Ins(D_Ins),.D_con1(D_con1),.D_con2(D_con2),
		 .E_Imme(E_Imme),.E_T_new(E_T_new),.E_A(E_A),.E_B(E_B),.E_PCAddr(E_PCAddr),.E_Ins(E_Ins),.E_con1(E_con1),.E_con2(E_con2));
	
	/*执行阶段*/

	/*译码*/
	Control e_control(.Ins(E_Ins),.ALUOp(E_ALUOp),.RegDst(E_RegDst),.ALUSrc(E_ALUSrc),.RegWrite(E_RegWrite));
		 
	MUX mux_ea(.E_A(E_A),.M_ALUAns(M_ALUAns),.W_MemData(W_BackData),.CEA(CEA),.E_ALUA(E_ALUA),.M_PCPlus8(M_PCAddr + 8),.W_PCPlus8(W_PCAddr + 8),.M_RegDst(M_RegDst),.W_RegDst(W_RegDst)); 
	
	MUX mux_eb(.E_B(E_B),.M_ALUAns(M_ALUAns),.W_MemData(W_BackData),.CEB(CEB),.E_NextB(E_NextB),.M_PCPlus8(M_PCAddr + 8),.W_PCPlus8(W_PCAddr + 8),.M_RegDst(M_RegDst),.W_RegDst(W_RegDst));
	
	MUX mux_eimmereg(.E_Imme(E_Imme),.E_InB(E_NextB),.E_ALUSrc(E_ALUSrc),.E_ALUB(E_ALUB));
	
	MUX mux_etarget(.E_Rt(E_Ins[`rt]),.E_Rd(E_Ins[`rd]),.E_RegDst(E_RegDst),.E_TargetReg(E_TargetReg));
	
	ALU alu(.E_ALUA(E_ALUA),.E_ALUB(E_ALUB),.E_ALUOp(E_ALUOp),.E_ALUAns(E_ALUAns));
	
	/*E级流水线寄存器*/
	E e(.clk(clk),.reset(reset),
       .E_TargetReg(E_TargetReg),.E_T_new(E_T_new),
		 .E_PCAddr(E_PCAddr),.E_ALUAns(E_ALUAns),.E_NextB(E_NextB),.E_Ins(E_Ins),.E_con1(E_con1),.E_con2(E_con2),
		 .M_TargetReg(M_TargetReg),.M_T_new(M_T_new),
		 .M_PCAddr(M_PCAddr),.M_ALUAns(M_ALUAns),.M_WriteData(M_WriteDataOrigin),.M_Ins(M_Ins),.M_con1(M_con1),.M_con2(M_con2));
		 
	/*存储阶段*/
	
	Control m_control(.Ins(M_Ins),.MemRead(M_MemRead),.MemWrite(M_MemWrite),.MemWriteOp(M_MemWriteOp),.MemReadOp(M_MemReadOp),.RegWrite(M_RegWrite),.RegDst(M_RegDst));
	MUX mux_dmin(.M_Write(M_WriteDataOrigin),.W_Write(W_BackData),.CMI(CMI),.M_WriteData(M_WriteData));
	DM dm(.clk(clk),.reset(reset),.M_ALUAns(M_ALUAns),.M_WriteData(M_WriteData),.M_MemWrite(M_MemWrite),.M_MemRead(M_MemRead),
			.M_MemWriteOp(M_MemWriteOp),.M_MemReadOp(M_MemReadOp),.PC(M_PCAddr),.M_MemReadData(M_MemOut));
	BH bh(.M_MemOut(M_MemOut),.M_MemRead(M_MemRead),.M_MemReadOp(M_MemReadOp),.M_MemAddr(M_ALUAns),.BHOut(M_MemReadData));		
	/*M级流水线寄存器*/
	M m(.clk(clk),.reset(reset),.M_TargetReg(M_TargetReg),.M_T_new(M_T_new),.M_ReadData(M_MemReadData),.M_WriteData(M_ALUAns),.M_Ins(M_Ins),.M_PCAddr(M_PCAddr),.M_con1(M_con1),.M_con2(M_con2),
		 .W_TargetReg(W_TargetReg),.W_T_new(W_T_new),.W_ReadData(W_MemReadData),.W_ALUData(W_ALUData),.W_Ins(W_Ins),.W_PCAddr(W_PCAddr),.W_con1(W_con1),.W_con2(W_con2));
	
   /*写回阶段*/	
	Control w_control(.Ins(W_Ins),.RegWrite(W_RegWrite),.MemToReg(W_MemToReg),.RegDst(W_RegDst));
	
	MUX mux_wbackdata(.W_RegToWrite(W_MemToReg),.W_ReadData(W_MemReadData),.W_ALUData(W_ALUData),.W_PCPlus8(W_PCAddr + 8),.W_BackData(W_BackData));
	
	/*冲突处理*/
	HARZARD harzard(.D_Rs_T_use(D_Rs_T_use),.D_Rt_T_use(D_Rt_T_use),.D_Rs(D_Ins[`rs]),.D_Rt(D_Ins[`rt]),
						 .E_Rs(E_Ins[`rs]),.E_Rt(E_Ins[`rt]),.M_Rt(M_Ins[`rt]),.E_TargetReg(E_TargetReg),.M_TargetReg(M_TargetReg),.W_TargetReg(W_TargetReg),
			          .E_T_new(E_T_new),.M_T_new(M_T_new),.W_T_new(W_T_new),.E_RegWrite(E_RegWrite),.M_RegWrite(M_RegWrite),.W_RegWrite(W_RegWrite),
						 .CDRs(CDRs),.CDRt(CDRt),.CEA(CEA),.CEB(CEB),.CMI(CMI),.Stall(stall));
endmodule
