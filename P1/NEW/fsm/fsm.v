`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:18:13 10/16/2022 
// Design Name: 
// Module Name:    fsm 
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
module fsm(
    input clk,
    input reset,
    input in,
    output out
    );
	reg [5:0] str;
	reg o;
	initial begin
		o = 0;
		str = 0;
	end
	always@(posedge clk or posedge reset) begin
		if (reset == 1) begin
			o <= 0;
			str <= 0;
		end
		else begin
			o <= 0;
			str = (str << 1)|in;
			if (str == 6'b110011) begin
				o <= 1;
			end
		end
	end
	assign out = o;
endmodule
