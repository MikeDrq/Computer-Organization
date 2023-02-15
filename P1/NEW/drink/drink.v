`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:05:32 10/16/2022 
// Design Name: 
// Module Name:    drink 
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
`define s0 3'b00
`define s1 3'b01
`define s2 3'b10
`define s3 3'b11
module drink(
    input clk,
    input reset,
    input [1:0] coin,
    output drink,
    output [1:0] back
    );
	reg [1:0] status;
	reg [1:0] b;
	reg [1:0] d;
	initial begin
		status = `s0;
		b = 0;
		d = 0;
	end
	always@(posedge clk or posedge reset) begin
		if (reset == 1) begin
			status <= `s0;
			b <= 0;
			d <= 0;
		end
		else begin
		case(status) 
			`s0: begin
				b <= 2'b00;
				d <= 0;
				if (coin == 2'b00) begin
					status <= `s0;
				end
				else if (coin == 2'b01) begin
					status <= `s1;
				end
				else if (coin == 2'b10) begin
					status <= `s2;
				end
				else if (coin == 2'b11) begin
					status <= `s0;
				end
			end
			`s1:begin
				b <= 2'b00;
				d <= 0;
				if (coin == 2'b00) begin
					status <= `s1;
				end
				else if (coin == 2'b01) begin
					status <= `s2;
				end
				else if (coin == 2'b10) begin
					status <= `s3;
				end
				else if (coin == 2'b11) begin
					status <= `s0;
					b <= 2'b01;
				end
			end
			`s2:begin
				d <= 0;
				b <= 0;
				if (coin == 2'b00) begin
					status <= `s2;
				end
				else if (coin == 2'b01) begin
					status <= `s3;
				end
				else if (coin == 2'b10) begin
					status <= `s0;
					b <= 2'b00;
					d <= 1;
				end
				else if (coin == 2'b11) begin
					status <= `s0;
					b <= 2'b10;
				end
				end
				`s3:begin
				d <= 0;
				b <= 0;
				if (coin == 2'b00) begin
					status <= `s3;
					b <= 2'b00;
				end
				else if (coin == 2'b01) begin
					status <= `s0;
					b <= 2'b00;
					d <= 1;
				end
				else if (coin == 2'b10) begin
					status <= `s0;
					b <= 2'b01;
					d <= 1;
				end
				else if (coin == 2'b11) begin
					status <= `s0;
					b <= 2'b11;
				end
			end
		endcase
		end
	end
	assign back = b;
	assign drink = d;
endmodule

	