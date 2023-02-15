`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:54:20 10/16/2022 
// Design Name: 
// Module Name:    VoterPlus 
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
module VoterPlus(
    input [31:0] np,
    input reset,
    input [7:0] vip,
    input vvip,
    output [7:0] result,
    input clk
    );
	 reg [7:0] pvip;
	 reg pvvip;
	 reg [31:0] pnp;
	 reg [31:0] o;
	 integer i;
	 initial begin
		pvip = 0;
		pvvip = 0;
		pnp = 0;
		o = 0;
	 end
	always@(posedge clk or posedge reset) begin
		if (reset == 1) begin
			o = 0;
			pvip = 0;
			pvvip = 0;
			pnp = 0;
		end
		else begin
			o = 0;
			pvip = pvip | vip;
			pnp = pnp | np;
			pvvip = pvvip | vvip;
			for (i = 0;i < 32;i = i+1) begin
				if (pnp[i] == 1) begin
					o = o + 1;
				end
			end
			for (i = 0;i < 8;i=i+1) begin
				if (pvip[i] == 1) begin
					o = o + 4;
				end
			end
			if (pvvip == 1) begin
				o = o + 16;
			end
		end
	end
	assign result = o;
endmodule
