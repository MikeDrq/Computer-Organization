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
    input reset,
	 input [31:0] i_inst_rdata,
	 output [31:0] i_inst_addr,
	 input [31:0] m_data_rdata,  //数据存储器存储的相应数据
	 output [31:0] m_data_addr,  //待写入/读出的数据存储器相应地址
	 output [31:0] m_data_wdata, //待写入数据存储器相应数据
	 output [3:0] m_data_byteen,  //四位字节使能
	 output [31:0] m_inst_addr,   //M 级 PC
    output w_grf_we,
	 output [4:0] w_grf_addr,
	 output [31:0] w_grf_wdata,
	 output [31:0] w_inst_addr
	 );
	/*取址阶段*/
	wire [31:0] IAddr;  //当前指令的地址，进入IM取指令
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
	
	/*D级流水线寄存器*/
	wire [31:0] E_Imme;
   wire [2:0] E_T_new;
	wire [31:0] E_A;
	wire [31:0] E_B;
	wire [31:0] E_PCAddr;
	
	/*执行阶段*/
	wire [31:0] E_Ins;   //译码
   wire [3:0] E_ALUOp;
   wire [2:0] E_ALUSrc;
   wire [2:0] E_RegDst;
	
	wire [31:0] E_ALUA; //ALU
	wire [31:0] E_ALUB;
	wire [31:0] E_NextB;
	wire [31:0] E_ALUAns;
	wire [4:0] E_TargetReg;
	wire E_RegWrite;
	
	wire [31:0] HI;
	wire [31:0] LO;
	
	/*E级流水线寄存器*/
	wire [31:0] M_Ins;
	wire [31:0] M_ALUAns;
   wire [2:0] M_T_new;
	wire [31:0] M_PCAddr;
	wire [4:0] M_TargetReg;
	wire [31:0] M_WriteDataOrigin;
	
	/*存储阶段*/ 
	wire M_RegWrite;        //译码     
   wire M_MemRead;
	wire [3:0] M_DataByteen;
	wire [31:0] M_WriteData;
	wire [2:0] M_RegDst;
	
	wire [31:0] M_MemSData;  //通过bes加工后的M_WriteData
	wire [31:0] M_MemOutData;
	wire [31:0] M_MemReadData;
	
	/*M级流水线寄存器*/
	wire [31:0] W_Ins;
	wire [4:0] W_TargetReg;
	wire [31:0] W_BackData;
   wire [2:0] W_T_new;
	wire [31:0] W_MemReadData;
	wire [31:0] W_ALUData;
	wire [2:0] W_RegDst;
	
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
	wire start;
	wire busy;
	/*****************************************************************************************/
	
	/*取址阶段*/
	assign F_PCPlus4 = (stall == 1) ? IAddr :IAddr + 4;
	assign i_inst_addr = IAddr;
	assign F_Ins = i_inst_rdata;
	PC pc(.clk(clk),.reset(reset),.In(NextAddr),.Out(IAddr),.stall(stall));
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
	
	NPC npc(.Addr(D_PCPlus4),.NAddr(D_NextAddr),.Branch(D_Branch),.equal(equal),.D_Imme(D_Imme32),.D_Ins(D_Ins),.JumpAddr(D_Ins[`jaddr]),.D_RaData(B_Rs),.PC(D_PCAddr));
	
	MUX mux_da(.D_RsD(D_RsD),.M_ALUAns(M_ALUAns),.W_MemData(W_BackData),.CDRs(CDRs),.B_Rs(B_Rs),.M_PCPlus8(M_PCAddr + 8),.W_PCPlus8(W_PCAddr + 8),.M_RegDst(M_RegDst),.W_RegDst(W_RegDst));
	
	MUX mux_db(.D_RtD(D_RtD),.M_ALUAns(M_ALUAns),.W_MemData(W_BackData),.CDRt(CDRt),.B_Rt(B_Rt),.M_PCPlus8(M_PCAddr + 8),.W_PCPlus8(W_PCAddr + 8),.M_RegDst(M_RegDst),.W_RegDst(W_RegDst));
	
	CMP cmp(.B_Rs(B_Rs),.B_Rt(B_Rt),.equal(equal));
	
	/*D级流水线寄存器*/
	D d(.clk(clk),.reset(reset),.stall(stall),
	    .D_Imme(D_Imme32),.D_T_new(D_T_new),.D_A(D_RsD),.D_B(D_RtD),.D_PCAddr(D_PCAddr),.D_Ins(D_Ins),
		 .E_Imme(E_Imme),.E_T_new(E_T_new),.E_A(E_A),.E_B(E_B),.E_PCAddr(E_PCAddr),.E_Ins(E_Ins));
	
	/*执行阶段*/

	/*译码*/
	Control e_control(.Ins(E_Ins),.ALUOp(E_ALUOp),.RegDst(E_RegDst),.ALUSrc(E_ALUSrc),.RegWrite(E_RegWrite),.start(start));
		 
	MUX mux_ea(.E_A(E_A),.M_ALUAns(M_ALUAns),.W_MemData(W_BackData),.CEA(CEA),.E_ALUA(E_ALUA),.M_PCPlus8(M_PCAddr + 8),.W_PCPlus8(W_PCAddr + 8),.M_RegDst(M_RegDst),.W_RegDst(W_RegDst)); 
	
	MUX mux_eb(.E_B(E_B),.M_ALUAns(M_ALUAns),.W_MemData(W_BackData),.CEB(CEB),.E_NextB(E_NextB),.M_PCPlus8(M_PCAddr + 8),.W_PCPlus8(W_PCAddr + 8),.M_RegDst(M_RegDst),.W_RegDst(W_RegDst));
	
	MUX mux_eimmereg(.E_Imme(E_Imme),.E_InB(E_NextB),.E_ALUSrc(E_ALUSrc),.E_ALUB(E_ALUB),.HI(HI),.LO(LO));
	
	MUX mux_etarget(.E_Rt(E_Ins[`rt]),.E_Rd(E_Ins[`rd]),.E_RegDst(E_RegDst),.E_TargetReg(E_TargetReg));
	
	ALU alu(.E_ALUA(E_ALUA),.E_ALUB(E_ALUB),.E_ALUOp(E_ALUOp),.E_ALUAns(E_ALUAns));
	
	MULT_DIV mult_div(.clk(clk),.reset(reset),.start(start),.ALUA(E_ALUA),.ALUB(E_ALUB),.Ins(E_Ins),.HI(HI),.LO(LO),.busy(busy));
	
	
	/*E级流水线寄存器*/
	E e(.clk(clk),.reset(reset),
       .E_TargetReg(E_TargetReg),.E_T_new(E_T_new),
		 .E_PCAddr(E_PCAddr),.E_ALUAns(E_ALUAns),.E_NextB(E_NextB),.E_Ins(E_Ins),
		 .M_TargetReg(M_TargetReg),.M_T_new(M_T_new),
		 .M_PCAddr(M_PCAddr),.M_ALUAns(M_ALUAns),.M_WriteData(M_WriteDataOrigin),.M_Ins(M_Ins));
		 
	/*存储阶段*/
	
	Control m_control(.Ins(M_Ins),.MemRead(M_MemRead),.RegWrite(M_RegWrite),.RegDst(M_RegDst));
	MUX mux_dmin(.M_Write(M_WriteDataOrigin),.W_Write(W_BackData),.CMI(CMI),.M_WriteData(M_WriteData));
	
	BE bes(.M_Ins(M_Ins),.M_MemWrite(M_WriteData),.M_ALUAns(M_ALUAns),.M_DataByteen(M_DataByteen),.M_MemSData(M_MemSData));

	assign m_data_byteen = M_DataByteen;
	assign m_data_addr = M_ALUAns;
	assign m_data_wdata = M_MemSData;
	assign m_inst_addr = M_PCAddr;
	assign M_MemOutData = m_data_rdata;
	
	BE bel(.M_Ins(M_Ins),.M_ALUAns(M_ALUAns),.MemRead(M_MemOutData),.M_LT(M_MemReadData));
	
	/*M级流水线寄存器*/
	M m(.clk(clk),.reset(reset),.M_TargetReg(M_TargetReg),.M_T_new(M_T_new),.M_ReadData(M_MemReadData),.M_WriteData(M_ALUAns),.M_Ins(M_Ins),.M_PCAddr(M_PCAddr),
		 .W_TargetReg(W_TargetReg),.W_T_new(W_T_new),.W_ReadData(W_MemReadData),.W_ALUData(W_ALUData),.W_Ins(W_Ins),.W_PCAddr(W_PCAddr));
	
   /*写回阶段*/	
	Control w_control(.Ins(W_Ins),.RegWrite(W_RegWrite),.MemToReg(W_MemToReg),.RegDst(W_RegDst));
	
	MUX mux_wbackdata(.W_RegToWrite(W_MemToReg),.W_ReadData(W_MemReadData),.W_ALUData(W_ALUData),.W_PCPlus8(W_PCAddr + 8),.W_BackData(W_BackData));
	assign w_grf_we = W_RegWrite;
	assign w_grf_addr = W_TargetReg;
	assign w_grf_wdata = W_BackData;
	assign w_inst_addr = W_PCAddr;
	/*冲突处理*/
	HARZARD harzard(.D_Ins(D_Ins),.busy(busy),.start(start),.D_Rs_T_use(D_Rs_T_use),.D_Rt_T_use(D_Rt_T_use),.D_Rs(D_Ins[`rs]),.D_Rt(D_Ins[`rt]),
						 .E_Rs(E_Ins[`rs]),.E_Rt(E_Ins[`rt]),.M_Rt(M_Ins[`rt]),.E_TargetReg(E_TargetReg),.M_TargetReg(M_TargetReg),.W_TargetReg(W_TargetReg),
			          .E_T_new(E_T_new),.M_T_new(M_T_new),.W_T_new(W_T_new),.E_RegWrite(E_RegWrite),.M_RegWrite(M_RegWrite),.W_RegWrite(W_RegWrite),
						 .CDRs(CDRs),.CDRt(CDRt),.CEA(CEA),.CEB(CEB),.CMI(CMI),.Stall(stall));
endmodule
