`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:42:55 10/05/2022 
// Design Name: 
// Module Name:    BlockChecker 
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
`define s0 4'b0000
`define s1 4'b0001
`define s2 4'b0010
`define s3 4'b0011
`define s4 4'b0100
`define s5 4'b0101
`define s6 4'b0110
`define s7 4'b0111
`define s8 4'b1000
`define s9 4'b1001
`define s10 4'b1010
`define s11 4'b1011
module BlockChecker(
    input clk,
    input reset,
    input [7:0] in,
    output result
    );
	 reg [3:0] status;
	 reg [31:0] cnt;
	initial begin
		status = `s11;
		cnt = 0;
	end
	always@(posedge clk or posedge reset) begin
		if (reset == 1) begin
			cnt <= 0;
			status <= `s11;
		end
		else begin
			case(status)
				`s11: begin
					if(in == "b"||in == "B") begin
						status <= `s1;
					end
					else if (in == "e"||in == "E") begin
						status <= `s6;
					end
					else if (in == " ") begin
						status <= `s10;
					end
					else begin
						status <= `s0;
					end
				end
				`s0:begin
					if(in == " ") begin
						status = `s10;
					end
					else begin
						status = `s0;
					end
				end
				`s10:begin
					if(in == "b"||in == "B") begin
						status <= `s1;
					end
					else if(in == "e"||in == "E") begin
						status <= `s6;
					end
					else if (in == " ") begin
						status <= `s10;
					end
					else begin
						status <= `s0;
					end
				end
				`s1:begin
					if(in=="e"||in=="E") begin
						status <= `s2;
					end
					else if (in == " ") begin
						status <= `s10;
					end
					else begin
						status <= `s0;
					end
				end
				`s2:begin
					if(in=="g"||in=="G") begin
						status <= `s3;
					end
					else if (in == " ") begin
						status <= `s10;
					end
					else begin
						status <= `s0;
					end
				end
				`s3:begin
					if(in=="i"||in=="I") begin
						status <= `s4;
					end
					else if (in == " ") begin
						status <= `s10;
					end
					else begin
						status <= `s0;
					end
				end
				`s4:begin
					if(in=="n"||in=="N") begin
						status <= `s5;
						cnt <= cnt + 1;
					end
					else if (in == " ") begin
						status <= `s10;
					end
					else begin
						status <= `s0;
					end
				end
				`s5:begin
					if(in == " ") begin
						status <= `s10;
					end
					else begin
						cnt <= cnt - 1;
						status <= `s0;
					end
				end
				`s6:begin
					if(in == "n"||in == "N")begin
						status = `s7;
					end
					else if (in == " ") begin
						status <= `s10;
					end
					else begin
						status <= `s0;
					end
				end
				`s7:begin
					if(in == "d" || in == "D") begin
						status <= `s8;
						cnt <= cnt - 1;
					end
					else if (in == " ") begin
						status <= `s10;
					end
					else begin
						status <= `s0;
					end
				end
				`s8:begin
					if(in == " ") begin
						if($signed(cnt) < 0) begin
							status <= `s9;
						end
						else begin
							status <= `s10;
						end
					end
					else begin
						cnt <= cnt + 1;
						status <= `s0;
					end
				end
				`s9:begin
					status <= `s9;
				end
			endcase
		end
	end
	/*always@(posedge clk)begin
		if((in == "n" ||in == "N") && status == `s4) begin
			ans = 0;
		end
		if (in != " "&& status == `s5 &&cnt == 1) begin
			ans = 1;
		end
		if((in == "d"||in == "D") &&status == `s7) begin
			if (cnt == 1) begin
				ans = 1;
			end
			else begin
				ans = 0;
			end
		end
		if (in != " "&&status == `s8) begin
			if($signed(cnt) == -1) begin
				ans = 1;
			end
			else begin
				ans = 0;
			end
		end
	end*///why???
	assign result =(cnt == 0)? 1: 0;
endmodule
