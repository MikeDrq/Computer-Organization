`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:35:23 11/06/2022 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
    input clk,
    input reset,
    input [4:0] D_Rs,
    input [4:0] D_Rt,
    input [4:0] W_TargetReg,
    input [31:0] W_Data,
    input W_RegWrite,
	 input [31:0] WPC,  //当前指令地址
    output [31:0] D_RsD,
    output [31:0] D_RtD
    );
	integer i;
	reg [31:0] register [31:0];
	initial begin
		for (i = 0;i < 32;i = i + 1) begin
			register[i] = 0;
		end
	end
	always@(posedge clk) begin
		if (reset == 1) begin
			for (i = 0;i < 32;i = i + 1) begin
				register[i] = 0;
			end
		end
		else begin
			if (W_RegWrite == 1) begin
				if (W_TargetReg > 0) begin
					register[W_TargetReg] <= W_Data;
					$display("%d@%h: $%d <= %h", $time,WPC, W_TargetReg, W_Data);
				end
			end
		end
	end
	assign D_RsD = (W_TargetReg == D_Rs == 1 && D_Rs != 0 == 1 && W_RegWrite == 1) ? W_Data : register[D_Rs];
	assign D_RtD = (W_TargetReg == D_Rt == 1 && D_Rt != 0 == 1 && W_RegWrite == 1) ? W_Data : register[D_Rt];
endmodule
