`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:42:59 10/05/2022 
// Design Name: 
// Module Name:    gray 
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
`define s2 3'b011
`define s3 3'b010
`define s4 3'b110
`define s5 3'b111
`define s6 3'b101
`define s7 3'b100
module gray(
    input Clk,
    input Reset,
    input En,
    output [2:0] Output,
    output Overflow
    );
	 reg [2:0] status;
	 reg [2:0] ans;
	 reg mark;
	 reg over;
	 initial begin
		status = `s0;
		ans = 3'b000;
		over = 0;
	 end
	always@(posedge Clk) begin
		if(En == 0)begin
		end
		else begin
			if(Reset == 1)begin
				status <= `s0;
				ans <= 3'b000;
				over <=0;
			end
			else begin
				case(status)
					`s0:begin
						status <= `s1;
						ans <=`s1;
					end
					`s1:begin
						status <= `s2;
						ans <=`s2;
					end
					`s2:begin
						status <= `s3;
						ans <=`s3;
					end
					`s3:begin
						status <= `s4;
						ans <=`s4;
					end
					`s4:begin
						status <= `s5;
						ans <=`s5;
					end
					`s5:begin
						status <= `s6;
						ans <=`s6;
					end
					`s6:begin
						status <= `s7;
						ans <=`s7;
					end
					`s7:begin
						status <= `s0;
						ans <=`s0;
						over <= 1;
					end
				endcase
			end
		end
	end
	assign Output = ans;
	assign Overflow = over;
endmodule
