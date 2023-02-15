`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:15:09 10/27/2022 
// Design Name: 
// Module Name:    EXT 
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
module EXT(Imme,Sign,EImme);
	input [15:0] Imme;
	input [1:0] Sign;
	output reg [31:0] EImme;
	always@(*) begin
		if (Sign == 0) begin
			EImme = {{16{1'b0}},Imme};
		end
		else if (Sign == 1) begin
			EImme = {{16{Imme[15]}},Imme};
		end
		else if (Sign == 2) begin
			EImme = {Imme,{16{1'b0}}};
		end
	end
endmodule
