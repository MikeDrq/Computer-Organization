`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:53:42 10/16/2022 
// Design Name: 
// Module Name:    FloatType 
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
`define t0 5'b00001
`define t1 5'b00010
`define t2 5'b00100
`define t3 5'b01000
`define t4 5'b10000
module FloatType(
    input [31:0] num,
    output [4:0] float_type
    );
	 reg [4:0] out;
	always@(num) begin
		if (num[30:23] == 0 && num[22:0] == 0) begin
			out = `t0;
		end
		else if (num[30:23]!=0 && num[30:23]!=8'b11111111) begin
			out = `t1;
		end
		else if (num[30:23]==0 && num[22:0]!=0) begin
			out = `t2;
		end
		else if (num[30:23]==8'b11111111 && num[22:0] == 0) begin
			out = `t3;
		end
		else if (num[30:23]==8'b11111111 && num[22:0] != 0) begin
			out = `t4;
		end
	end
	assign float_type = out; 
endmodule
