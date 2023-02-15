`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:37:21 10/27/2022 
// Design Name: 
// Module Name:    OpSplitter 
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
module OpSplitter(Ins,Op,Rs,Rt,Rd,Shamt,Func,Imme,Address);
	input [31:0] Ins;
	output [5:0] Op;
	output [4:0] Rs;
	output [4:0] Rt;
	output [4:0] Rd;
	output [4:0] Shamt;
	output [5:0] Func;
	output [15:0] Imme;
	output [25:0] Address;
	assign Op = Ins[31:26];
	assign Rs = Ins[25:21];
	assign Rt = Ins[20:16];
	assign Rd = Ins[15:11];
	assign Shamt = Ins[10:6];
	assign Func = Ins[5:0];
	assign Imme = Ins[15:0];
	assign Address = Ins[25:0];
endmodule
