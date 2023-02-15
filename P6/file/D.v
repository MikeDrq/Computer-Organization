`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:54:11 11/06/2022 
// Design Name: 
// Module Name:    D 
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
module D(
    input clk,
    input reset,
    input stall,
	 input [31:0] D_Ins,
    input [31:0] D_Imme,
    input [2:0] D_T_new,
    input [31:0] D_A,
    input [31:0] D_B,
	 input [31:0] D_PCAddr,
	 input [4:0] D_Rs,
	 input [4:0] D_Rt,
	 input [4:0] D_Rd,
	 output reg [31:0] E_Ins,
    output reg [31:0] E_Imme,
    output reg [2:0]  E_T_new,
	 output reg [31:0] E_A,
	 output reg [31:0] E_B,
	 output reg [31:0] E_PCAddr,
	 output reg [4:0] E_Rs,
	 output reg [4:0] E_Rt,
	 output reg [4:0] E_Rd
    );
	always@(posedge clk) begin
		if (reset == 1) begin
		   E_Ins <= 0;
			E_Imme <= 0;
			E_T_new <= 0;
			E_Rs <= 0;
			E_Rt <= 0;
			E_Rd <= 0;
			E_A <= 0;
			E_B <= 0;
			E_PCAddr <= 0;
		end
		else begin
			if (stall == 1) begin
				E_Ins <= 0;
				E_Imme <= 0;
				E_T_new <= 0;
				E_Rs <= 0;
				E_Rt <= 0;
				E_Rd <= 0;
				E_A <= 0;
				E_B <= 0;
				E_PCAddr <= 0;
			end
			else begin
			   E_Ins <= D_Ins; 
				E_Imme <= D_Imme;
				E_T_new <= (D_T_new >= 1)?D_T_new - 1:0;
				E_Rs <= D_Rs;
				E_Rt <= D_Rt;
				E_Rd <= D_Rd;
				E_A <= D_A;
				E_B <= D_B;
				E_PCAddr <= D_PCAddr;
			end
		end
	end

endmodule
