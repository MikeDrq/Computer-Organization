`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:39:12 10/16/2022 
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
`define s0 3'b000
`define s1 3'b001
`define s2 3'b010
`define s3 3'b011
`define s4 3'b100
`define s5 3'b101
`define s6 3'b110
module fsm(
    input clk,
    input in,
    input reset,
    output out
    );
	reg [2:0] status;
	reg o;
	initial begin
		status = `s0;
		o = 0;
	end
	always@(posedge clk or posedge reset) begin
		if (reset == 1) begin
			status <= `s0;
			o <= 0;
		end
		else begin
			case(status)
				`s0: begin
					if (in ==1) begin
						status <= `s1;
					end
					else begin
						status <= `s0;
					end
				end
				`s1: begin
					if (in ==1) begin
						status <= `s2;
					end
					else begin
						status <= `s0;
					end
				end
				`s2: begin
					if (in ==1) begin
						status <= `s2;
					end
					else if (in == 0)begin
						status <= `s3;
					end
					else begin
						status <= `s0;
					end
				end
				`s3:begin
					if (in ==1) begin
						status <= `s1;
					end
					else if (in == 0)begin
						status <= `s4;
					end
					else begin
						status <= `s0;
					end
				end
				`s4:begin
					if (in ==1) begin
						status <= `s5;
					end
					else if (in == 0)begin
						status <= `s0;
					end
					else begin
						status <= `s0;
					end
				end
				`s5:begin
					if (in ==1) begin
						status <= `s6;
						o <= 1;
					end
					else if (in == 0)begin
						status <= `s0;
					end
					else begin
						status <= `s0;
					end
				end
				`s6:begin
					o <= 0;
					if (in ==1) begin
						status <= `s2;
					end
					else if (in == 0)begin
						status <= `s3;
					end
					else begin
						status <= `s0;
					end
				end
			endcase
		end
	end
	assign out = o;
endmodule
