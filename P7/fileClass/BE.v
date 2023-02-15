`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:26:21 11/13/2022 
// Design Name: 
// Module Name:    BE 
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
module BE(
		input [31:0] M_Ins,
		input [31:0] M_MemWrite,
		input [31:0] MemRead,
		input [31:0] M_ALUAns,
		output reg [3:0] M_DataByteen,
		output reg [31:0] M_LT,
		output reg [31:0] M_MemSData
    );
	 always@(*) begin
		case(M_Ins[`op]) 
			6'b101011: begin   //sw
				M_DataByteen = 4'b1111;
				M_MemSData = M_MemWrite;
			end
			6'b101001: begin  //sh
				case(M_ALUAns[1]) 
					1'b0: begin
						M_DataByteen = 4'b0011;
						M_MemSData = M_MemWrite;
					end
					1'b1: begin
						M_DataByteen = 4'b1100;
						M_MemSData = M_MemWrite;
						M_MemSData[31:16] = M_MemWrite[15:0];
					end
				endcase
			end
			6'b101000: begin //sb
				case(M_ALUAns[1:0])
					2'b00: begin
						M_DataByteen = 4'b0001;
						M_MemSData = M_MemWrite;
					end
					2'b01: begin
						M_DataByteen = 4'b0010;
						M_MemSData = M_MemWrite;
						M_MemSData[15:8] = M_MemWrite[7:0];
					end
					2'b10: begin
						M_DataByteen = 4'b0100;
						M_MemSData = M_MemWrite;
						M_MemSData[23:16] = M_MemWrite[7:0];
					end
					2'b11: begin
						M_DataByteen = 4'b1000;
						M_MemSData = M_MemWrite;
						M_MemSData[31:24] = M_MemWrite[7:0];
					end
				endcase
			end
			6'b100000: begin
				case(M_ALUAns[1:0])
					2'b00: begin
						M_LT = {{24{MemRead[7]}},MemRead[7:0]};
						M_DataByteen = 4'b0000;
					end
					2'b01: begin
						M_LT = {{24{MemRead[15]}},MemRead[15:8]};
						M_DataByteen = 4'b0000;
					end
					2'b10: begin
						M_LT = {{24{MemRead[23]}},MemRead[23:16]};
						M_DataByteen = 4'b0000;
					end
					2'b11: begin
						M_LT = {{24{MemRead[31]}},MemRead[31:24]};
						M_DataByteen = 4'b0000;
					end
				endcase
			end
			6'b100001: begin
				case(M_ALUAns[1]) 
					0: begin
						M_LT = {{16{MemRead[15]}},MemRead[15:0]};
						M_DataByteen = 4'b0000;
					end
					1: begin
						M_LT = {{16{MemRead[31]}},MemRead[31:16]};
						M_DataByteen = 4'b0000;
					end
				endcase
			end
			6'b100011: begin
				M_LT = MemRead;
				M_DataByteen = 4'b0000;
			end
			default: begin
				M_DataByteen = 4'b0000;
			end
		endcase
	 end
endmodule
