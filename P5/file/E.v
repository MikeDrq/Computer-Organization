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
	 input E_con1,
	 input E_con2,
	 output reg [31:0] M_Ins,
    output reg [4:0] M_TargetReg,
    output reg [2:0] M_T_new,
    output reg [31:0] M_ALUAns,
    output reg [31:0] M_WriteData,
	 output reg [31:0] M_PCAddr,
	 output reg M_con1,
	 output reg M_con2

    );
	always@(posedge clk) begin
		if (reset == 1) begin
		   M_Ins <= 0;
			M_TargetReg <= 0;
		   M_T_new <= 0;
		   M_ALUAns <= 0;
		   M_WriteData <= 0;
			M_PCAddr <= 0;
			M_con1 <= 0;
			M_con2 <= 0;
		end
		else begin
			M_Ins <= E_Ins;
			M_TargetReg <= E_TargetReg;
			M_T_new <= (E_T_new >= 1)?E_T_new - 1:0;
			M_ALUAns <= E_ALUAns;
			M_WriteData <= E_NextB;
			M_PCAddr <= E_PCAddr;
			M_con1 <= E_con1;
			M_con2 <= E_con2;
		end
	end

endmodule
