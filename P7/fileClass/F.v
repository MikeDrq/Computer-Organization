`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:41:14 11/05/2022 
// Design Name: 
// Module Name:    F 
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
module F(
    input clk,
    input reset,
    input stall,
    input [31:0] F_Ins,
    input [31:0] F_PCPlus4,
	 input [31:0] F_PCAddr,
	 input [4:0] F_ExcCode,
	 input req,
	 input F_BD,
    output reg [31:0] D_Ins,
    output reg [31:0] D_PCPlus4,  //PC + 4
	 output reg [31:0] D_PCAddr,
	 output reg D_BD,
	 output reg [4:0] D_ExcCode
    );
	always@(posedge clk) begin
		if (reset == 1) begin
			D_Ins <= 0;
			D_PCPlus4 <= 0;
			D_PCAddr <= 0;
			D_ExcCode <= 0;
			D_BD <= 0;
		end
		else if (req == 1) begin
			D_Ins <= 0;
			D_PCPlus4 <= 0;
			D_PCAddr <=32'h00004180;
			D_ExcCode <= 0;
			D_BD <= 0;
		end
		else begin
			if (stall == 1) begin
				D_Ins <= D_Ins;
				D_PCPlus4 <= D_PCPlus4;
				D_PCAddr <= D_PCAddr;
				D_ExcCode <= D_ExcCode;
				D_BD <= D_BD;
			end
			else begin
				D_Ins <= F_Ins;
				D_PCPlus4 <= F_PCPlus4;
				D_PCAddr <= F_PCAddr;
				D_ExcCode <= F_ExcCode;
				D_BD <= F_BD;
			end
		end
	end

endmodule
