`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:04:36 10/07/2022 
// Design Name: 
// Module Name:    intcheck 
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
`define s15 4'b1111
module intcheck(
    input clk,
    input [7:0] in,
    input reset,
    output out
    );
	reg [1:0] flag;
	reg [3:0] status;
	reg right;
	initial begin
		flag = 0;
		status = `s0;
		right = 0;
	end
	always@(posedge clk) begin
		if (reset == 1) begin
			status <= `s0;
			flag <= 0;
			right <= 0;
		end
		else begin
			case(status)
				`s0: begin
					if (in == " " || in == "\t") begin
						status <= `s1;
					end
					else if (in == "i") begin
						status <= `s2;
					end
					else if (in == ";") begin
						status <= `s0;
					end
					else begin
						status <= `s15;
					end
				end
				`s1: begin
					right <= 0;
					if(in == "i") begin
						status <= `s2;
					end
					else if (in == " "||in == "\t") begin
						status <= `s1;
					end
					else if (in == ";") begin
						status <= `s1;
					end
					else begin
						status <= `s15;
					end
				end
				`s2: begin
					if(in == "n") begin
						status <= `s3;
					end
					else if (in == ";") begin
						status <= `s1;
					end
					else begin
						status <= `s15;
					end
				end
				`s3: begin
					if(in == "t") begin
						status <= `s4;
					end
					else if (in == ";") begin
						status <= `s1;
					end
					else begin
						status <= `s15;
					end
				end
				`s4: begin
					if(in == " "||in == "\t") begin
						status <= `s5;
					end
					else if (in == ";") begin
						status <= `s1;
					end
					else begin
						status <= `s15;
					end
				end
				`s5: begin
					if (in == " "||in == "\t") begin
						status <= `s5;
					end
					else if((in >= "a"&&in<= "z")||(in >= "A"&&in <= "Z")||in == "_")begin
						status <= `s6;
						if (in == "i") begin
							flag <= 1;
						end
						else begin
							flag <= 0;
						end
					end
					else if (in == ";") begin
						status <= `s1;
					end
					else begin
						status <= `s15;
					end
				end
				`s6: begin
					if(in == "n") begin
						if(flag == 1) begin
							flag <= 2;
							status <= `s6;
						end
						else begin
							flag <= 0;
							status <= `s6;
						end
					end
					else if(in == "t") begin
						if(flag == 2) begin
							flag <= 3;
							status <= `s6;
						end
						else begin
							flag <= 0;
							status <= `s6;
						end
					end
					else if ((in >= "a"&&in<= "z")||(in >= "A"&&in <= "Z")||(in >= "0"&&in<= "9")||in == "_") begin
						status <= `s6;
						flag <= 0;
					end
					else if (in == " "||in == "\t") begin
						if(flag == 3) begin
							status <= `s15;
							flag <= 0;
						end
						else begin
							status <= `s7;
							flag <= 0;
						end
					end
					else if(in == ",")begin
						if(flag == 3) begin
							status <= `s15;
							flag <= 0;
						end
						else begin
							status <= `s5;
							flag <= 0;
						end
					end
					else if(in == ";")begin
						if(flag == 3) begin
							status <= `s15;
							flag <= 0;
						end
						else begin
							right <= 1;
							status <= `s1;
							flag <= 0;
						end
					end
					else begin
						status <= `s15;
						flag <= 0;
					end
				end
				`s7: begin
					if(in == " "||in == "\t") begin
						if(flag == 3) begin
							status <= `s15;
						end
						else begin
							status <= `s7;
							flag <= 0;
						end
					end
					else if(in == ",") begin
						if(flag == 3) begin
							status <= `s15;
						end
						else begin
							status <= `s5;
							flag <= 0;
						end
					end
					else if (in ==";") begin
						if(flag == 3) begin
							status <= `s15;
						end
						else begin
							status <= `s1;
							flag <= 0;
							right <= 1;
						end
					end
					else begin
						status <= `s15;
						flag <= 0;
					end 
				end
				`s15: begin
					if (in == ";") begin
						status <= `s1;
					end
					else begin
						status <= `s15;
					end
				end
			endcase
		end
	end
	assign out = right;
endmodule
