`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:59:10 10/05/2022 
// Design Name: 
// Module Name:    string 
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
`define s0 2'b00
`define s1 2'b01
`define s2 2'b10
`define s3 2'b11
module string(
    input clk,
    input clr,
    input [7:0] in,
    output out
    );
	 reg ans;
	 reg [1:0] status;
	 initial begin
		ans = 0;
		status = `s0;
	 end
	always@(posedge clk or posedge clr) begin
		if(clr == 1) begin
			status <= `s0;
			ans <= 0;
		end
		else begin
			case(status)
				`s0: begin
					if(in >= "0" && in <= "9") begin
						status <= `s1;
						ans <= 1;
					end
					else if(in == "+"|| in == "*")begin
						status <= `s3;
						ans <= 0;
					end
					else begin
						status <= `s0;
						ans <= 0;
					end
				end
				`s1: begin
					ans <= 0;
					if(in >= "0" && in <= "9") begin
						status <= `s3;
					end
					else if(in == "+"||in == "*") begin
						status <= `s2;
					end
					else begin
						status <= `s3;
					end
				end
				`s2: begin
					if(in >= "0" && in <= "9") begin
						status <= `s1;
						ans <= 1;
					end
					else if(in == "+"||in == "*") begin
						status <= `s3;
						ans <= 0;
					end
					else begin
						status <= `s3;
						ans <= 0;
					end
				end
				`s3: begin
					ans <= 0;
					status <= `s3;
				end
			endcase
		end
	end
	assign out = ans;
endmodule
