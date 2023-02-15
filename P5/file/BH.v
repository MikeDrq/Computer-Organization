`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:34:27 11/27/2022 
// Design Name: 
// Module Name:    BH 
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
module BH(
		input M_MemRead,
		input [31:0] M_MemAddr,
		input [31:0] M_MemOut,
		input [2:0] M_MemReadOp,
		output reg [31:0] BHOut
    );
		always@(*) begin
			if (M_MemRead == 1) begin
				case(M_MemReadOp)
					3'b000: begin
						BHOut = M_MemOut;
					end
					3'b001: begin
						case(M_MemAddr[1:0]) 
							2'b00: begin
								BHOut = {{24{M_MemOut[7]}},M_MemOut[7:0]};
							end
							2'b01: begin
								BHOut = {{24{M_MemOut[15]}},M_MemOut[15:8]};
							end
							2'b10: begin
								BHOut = {{24{M_MemOut[23]}},M_MemOut[23:16]};
							end
							2'b11: begin
								BHOut = {{24{M_MemOut[31]}},M_MemOut[31:24]};
							end
						endcase
					end
					3'b010: begin
						case(M_MemAddr[1])
							1'b0: begin
								BHOut = {{16{M_MemOut[15]}},M_MemOut[15:0]};
							end
							1'b1: begin
								BHOut = {{16{M_MemOut[31]}},M_MemOut[31:16]};
							end
						endcase
					end
				endcase
			end
		end
endmodule
