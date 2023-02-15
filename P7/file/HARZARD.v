`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:54:01 11/06/2022 
// Design Name: 
// Module Name:    HARZARD 
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
`define od 3'b000    //origine data
`define md 3'b001    //data from m
`define wd 3'b010    //data from w
module HARZARD(
	 input busy,
	 input start,
	 input [31:0] D_Ins,
    input [2:0] D_Rs_T_use,
    input [2:0] D_Rt_T_use,
	 input [4:0] D_Rs,
	 input [4:0] D_Rt,
	 input [4:0] E_Rs,
	 input [4:0] E_Rt,
	 input [4:0] M_Rt,
    input [4:0] E_TargetReg,
    input [4:0] M_TargetReg,
    input [4:0] W_TargetReg,
    input [2:0] E_T_new,
    input [2:0] M_T_new,
    input [2:0] W_T_new,
    input E_RegWrite,
    input M_RegWrite,
    input W_RegWrite,
	 input D_eret,
	 input E_mtc0,
	 input M_mtc0,
    output [2:0] CDRs,        //Control D Rs
    output [2:0] CDRt,        //Control D Rt
    output [2:0] CEA,         //Control E A
    output [2:0] CEB,         //Control E B
	 output [2:0] CMI,         //Control M InData
    output Stall
    );
	 /*判断是否插气泡*/
	 wire Stall_RS0_E2;  //E_T_new = 2,T_use = 0
	 wire Stall_RS0_E1;	//E_T_new = 1,T_use = 0
	 wire Stall_RS1_E2;  //E_T_new = 2,T_use = 1
	 wire Stall_RS0_M1;  //M_T_new = 1,T_use = 0
	 wire Stall_RS;
	 wire Stall_RT0_E2;  //E_T_new = 2,T_use = 0
	 wire Stall_RT0_E1;	//E_T_new = 1,T_use = 0
	 wire Stall_RT1_E2;  //E_T_new = 2,T_use = 1
	 wire Stall_RT0_M1;  //M_T_new = 1,T_use = 0
	 wire Stall_RT;
	 wire Mult;
	 wire Multu;
	 wire Div;
	 wire Divu;
	 wire md;
	 wire Mfhi;
	 wire Mflo;
	 wire Mthi;
	 wire Mtlo;
	 
	 assign Mult = (D_Ins[31:26] == 6'b000000) & (D_Ins[5:0] == 6'b011000);
	 assign Multu = (D_Ins[31:26] == 6'b000000) & (D_Ins[5:0] == 6'b011001);
	 assign Div = (D_Ins[31:26] == 6'b000000) & (D_Ins[5:0] == 6'b011010);
	 assign Divu = (D_Ins[31:26] == 6'b000000) & (D_Ins[5:0] == 6'b011011);
	 assign Mfhi = (D_Ins[31:26] == 6'b000000) & (D_Ins[5:0] == 6'b010000);
	 assign Mflo = (D_Ins[31:26] == 6'b000000) & (D_Ins[5:0] == 6'b010010);
	 assign Mthi = (D_Ins[31:26] == 6'b000000) & (D_Ins[5:0] == 6'b010001);
	 assign Mtlo = (D_Ins[31:26] == 6'b000000) & (D_Ins[5:0] == 6'b010011);
	 assign md = Mult | Multu | Div | Divu | Mfhi | Mflo | Mthi | Mtlo;
	 
	 assign Stall_RS0_E2 = (D_Rs_T_use == 0) & (E_T_new == 2) & (D_Rs == E_TargetReg) & (D_Rs != 5'b00000) & (E_RegWrite == 1);
	 assign Stall_RS0_E1 = (D_Rs_T_use == 0) & (E_T_new == 1) & (D_Rs == E_TargetReg) & (D_Rs != 5'b00000) & (E_RegWrite == 1);
	 assign Stall_RS1_E2 = (D_Rs_T_use == 1) & (E_T_new == 2) & (D_Rs == E_TargetReg) & (D_Rs != 5'b00000) & (E_RegWrite == 1);
	 assign Stall_RS0_M1 = (D_Rs_T_use == 0) & (M_T_new == 1) & (D_Rs == M_TargetReg) & (D_Rs != 5'b00000) & (M_RegWrite == 1);
	 assign Stall_RS = Stall_RS0_E2 | Stall_RS0_E1 | Stall_RS1_E2 | Stall_RS0_M1;
	 
	 assign Stall_RT0_E2 = (D_Rt_T_use == 0) & (E_T_new == 2) & (D_Rt == E_TargetReg) & (D_Rt != 5'b00000) & (E_RegWrite == 1);
	 assign Stall_RT0_E1 = (D_Rt_T_use == 0) & (E_T_new == 1) & (D_Rt == E_TargetReg) & (D_Rt != 5'b00000) & (E_RegWrite == 1);
	 assign Stall_RT1_E2 = (D_Rt_T_use == 1) & (E_T_new == 2) & (D_Rt == E_TargetReg) & (D_Rt != 5'b00000) & (E_RegWrite == 1);
	 assign Stall_RT0_M1 = (D_Rt_T_use == 0) & (M_T_new == 1) & (D_Rt == M_TargetReg) & (D_Rt != 5'b00000) & (M_RegWrite == 1);
	 assign Stall_RT = Stall_RT0_E2 | Stall_RT0_E1 | Stall_RT1_E2 | Stall_RT0_M1;
	 
	 assign Stall_Eret = D_eret & ((E_mtc0 & (E_TargetReg == 5'd14)) || (M_mtc0 & (M_TargetReg == 5'd14)));
	 
	 assign Stall = Stall_RS | Stall_RT | (md & ((busy ==1)|(start == 1))) | Stall_Eret;
	 
	 
	 /*判断E阶段进入ALU的值的来源*/
	 assign CEA = (E_Rs == 5'b00000) ? 3'b000 :
					  (E_Rs == M_TargetReg & M_RegWrite == 1'd1)? `md :
					  (E_Rs == W_TargetReg & W_RegWrite == 1'd1)? `wd : `od;
	 assign CEB = (E_Rt == 5'b00000) ? 3'b000 :
					  (E_Rt == M_TargetReg & M_RegWrite == 1'd1)? `md :
			        (E_Rt == W_TargetReg & W_RegWrite == 1'd1)? `wd : `od;
	 assign CMI = (M_Rt == 5'b00000) ? 3'b000 :
					  (M_Rt == W_TargetReg & W_RegWrite == 1'd1) ? 3'b001 : `od;
					  
	 assign CDRs = (D_Rs == 5'b00000) ? 3'b000:
						(D_Rs == M_TargetReg & M_RegWrite == 1'd1)? `md:
						(D_Rs == W_TargetReg & W_RegWrite == 1'd1)? `wd : `od;
	 assign CDRt = (D_Rt == 5'b00000) ? 3'b000:
						(D_Rt == M_TargetReg & M_RegWrite == 1'd1)? `md:
						(D_Rt == W_TargetReg & W_RegWrite == 1'd1)? `wd : `od;
endmodule
