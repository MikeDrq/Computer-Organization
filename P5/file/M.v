`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:34:59 11/06/2022 
// Design Name: 
// Module Name:    M 
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
module M(
    input clk,
    input reset,
    input [4:0] M_TargetReg,
    input [2:0] M_T_new,
    input [31:0] M_ReadData,
    input [31:0] M_WriteData,
	 input [31:0] M_Ins,
	 input [31:0] M_PCAddr,
	 input M_con1,
	 input M_con2,
    output reg [31:0] W_ReadData, //来源于MEM
    output reg [31:0] W_ALUData,  //来源于ALU
    output reg [4:0] W_TargetReg,
    output reg [2:0] W_T_new,
	 output reg [31:0] W_Ins,
	 output reg [31:0] W_PCAddr,
	 output reg W_con1,
	 output reg W_con2
    );
	always@(posedge clk) begin
		if (reset == 1) begin
			W_ReadData <= 0;
			W_ALUData <= 0;
			W_TargetReg <= 0;
			W_T_new <= 0;
			W_Ins <= 0;
			W_PCAddr <= 0;
			W_con1 <= 0;
			W_con2 <= 0;
		end
		else begin
			W_ReadData <= M_ReadData;
			W_ALUData <= M_WriteData;
			W_TargetReg <= M_TargetReg;
			W_T_new <= (M_T_new >= 1)?M_T_new - 1:0;
			W_Ins <= M_Ins;
			W_PCAddr <= M_PCAddr;
			W_con1 <= M_con1;
			W_con2 <= M_con2;
		end
	end
	
endmodule
