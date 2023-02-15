`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:15:45 11/06/2022 
// Design Name: 
// Module Name:    E 
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
module E(
    input clk,
    input reset,
    input clr,
	 input [31:0] E_Ins,
    input [4:0] E_TargetReg,
    input [2:0] E_T_new,
    input [31:0] E_ALUAns,
    input [31:0] E_NextB,
	 input [31:0] E_PCAddr,
	 input [4:0] E_ExcCode,
	 input E_ExcDmOv,
	 input E_mtc0,
	 input E_mfc0,
	 input E_eret,
	 input req,
	 input E_BD,
	 input E_ExcOvDm,
	 output reg [31:0] M_Ins,
    output reg [4:0] M_TargetReg,
    output reg [2:0] M_T_new,
    output reg [31:0] M_ALUAns,
    output reg [31:0] M_WriteData,
	 output reg [31:0] M_PCAddr,
	 output reg [4:0] M_ExcCode,
	 output reg M_ExcDmOv,
	 output reg M_mtc0,
	 output reg M_mfc0,
	 output reg M_eret,
	 output reg M_BD,
	 output reg M_ExcOvDm
    );
	always@(posedge clk) begin
		if (reset == 1) begin
		   M_Ins <= 0;
			M_TargetReg <= 0;
		   M_T_new <= 0;
		   M_ALUAns <= 0;
		   M_WriteData <= 0;
			M_PCAddr <= 0;
			M_ExcCode <= 0;
			M_ExcDmOv <= 0;
			M_mtc0 <= 0;
			M_mfc0 <= 0;
			M_eret <= 0;
			M_BD <= 0;
			M_ExcOvDm <= 0;
		end
		else if (req == 1) begin
			M_Ins <= 0;
			M_TargetReg <= 0;
		   M_T_new <= 0;
		   M_ALUAns <= 0;
		   M_WriteData <= 0;
			M_PCAddr <= 32'h00004180;
			M_ExcCode <= 0;
			M_ExcDmOv <= 0;
			M_mtc0 <= 0;
			M_mfc0 <= 0;
			M_eret <= 0;
			M_BD <= 0;
			M_ExcOvDm <= 0;
		end
		else begin
			M_Ins <= E_Ins;
			M_TargetReg <= E_TargetReg;
			M_T_new <= (E_T_new >= 1)?E_T_new - 1:0;
			M_ALUAns <= E_ALUAns;
			M_WriteData <= E_NextB;
			M_PCAddr <= E_PCAddr;
			M_ExcCode <= E_ExcCode;
			M_ExcDmOv <= E_ExcDmOv;
			M_mtc0 <= E_mtc0;
			M_mfc0 <= E_mfc0;
			M_eret <= E_eret;
			M_BD <= E_BD;
			M_ExcOvDm <= E_ExcOvDm;
		end
	end

endmodule
