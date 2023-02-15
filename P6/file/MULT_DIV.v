`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:23:53 11/13/2022 
// Design Name: 
// Module Name:    MULT_DIV 
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
`include "Constants.v"
module MULT_DIV(
	input clk,
	input reset,
	input [31:0] Ins,
	input [31:0] ALUA,
	input [31:0] ALUB,
	input start,
	output reg [31:0] HI,
	output reg [31:0] LO,
	output reg busy
    );
	reg [3:0] cnt;
	reg [31:0] A;
	reg [31:0] B;
	reg [31:0] NIns;
	always@(posedge clk) begin
		if (reset == 1) begin
			cnt <= 0;
			HI <= 0;
			LO <= 0;
			busy <= 0;
			A <= 0;
			B <= 0;
			NIns <= 0;
		end
		else begin
			if (start == 1) begin
				busy <= 1;
				cnt <= 1;
				A <= ALUA;
				B <= ALUB;
				NIns <= Ins;
			end
			else begin
				if (busy == 1) begin
					cnt <= cnt + 1;
					if (cnt == 5) begin
						if (NIns[`op] == 6'b0 && NIns[`func] == 6'b011000 ) begin
							cnt <= 0;
							busy <= 0;
							{HI,LO} <= ($signed(A)) * ($signed(B));
						end
						if (NIns[`op] == 6'b0 && NIns[`func] == 6'b011001) begin
							cnt <= 0;
							busy <= 0;
							{HI,LO} <= A * B;
						end
						if (NIns[`op] == 6'b011100 && NIns[`func] == 6'b000000) begin //madd
							cnt <= 0;
							busy <= 0;
							{HI,LO} <= $signed({HI,LO}) + $signed(A)*$signed(B);
						end
						if (NIns[`op] == 6'b011100 && NIns[`func] == 6'b000100) begin //msub
							cnt <= 0;
							busy <= 0;
							{HI,LO} <= $signed({HI,LO}) - $signed(A)*$signed(B);
						end
						if (NIns[`op] == 6'b011100 && NIns[`func] == 6'b000001) begin //maddu
							cnt <= 0;
							busy <= 0;
							{HI,LO} <= {HI,LO} + A*B;
						end
						if (NIns[`op] == 6'b011100 && NIns[`func] == 6'b000101) begin //msubu
							cnt <= 0;
							busy <= 0;
							{HI,LO} <= {HI,LO} - A*B;
						end
					end
					if (cnt == 10) begin
						if (NIns[`op] == 6'b0 && NIns[`func] == 6'b011010) begin
							cnt <= 0;
							busy <= 0;
							HI <= ($signed(A)) % ($signed(B));
							LO <= ($signed(A)) / ($signed(B));
						end
						if (NIns[`op] == 6'b0 && NIns[`func] == 6'b011011) begin
							cnt <= 0;
							busy <= 0;
							HI <= A % B;
							LO <= A / B;
						end
					end
				end
				else begin
					if (Ins[`op] == 6'b0 && Ins[`func] == 6'b010001) begin
						HI <= ALUA;
					end
					if (Ins[`op] == 6'b0 && Ins[`func] == 6'b010011) begin
						LO <= ALUA;
					end
				end	
			end
		end
	end

endmodule
