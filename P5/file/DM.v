`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:30:10 11/06/2022 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input [31:0] M_ALUAns,
    input [31:0] M_WriteData,
    input clk,
    input reset,
    input M_MemWrite,
    input M_MemRead,
    input [2:0] M_MemWriteOp,
    input [2:0] M_MemReadOp,
	 input [31:0] PC,
    output [31:0] M_MemReadData
    );
	integer i;
	reg [31:0] RAM [0:3071];
	initial begin
		for (i = 0;i < 3072;i = i + 1) begin
			RAM[i] = 0;
		end
	end
	always@(posedge clk) begin
		if (reset == 1) begin
			for (i = 0;i < 3072;i = i + 1) begin
				RAM[i] = 0;
			end
		end
		else begin
			if (M_MemWrite == 1) begin
				case(M_MemWriteOp) 
					3'b000: begin
						RAM[M_ALUAns[13:2]] <= M_WriteData; 
						$display("%d@%h: *%h <= %h", $time, PC, M_ALUAns, M_WriteData);
					end
					3'b001: begin
						case(M_ALUAns[1:0]) 
							2'b00: begin
								RAM[M_ALUAns[13:2]] <= {RAM[M_ALUAns[13:2]][31:8],M_WriteData[7:0]};
								$display("%d@%h: *%h <= %h", $time, PC, M_ALUAns/4*4,{RAM[M_ALUAns[13:2]][31:8],M_WriteData[7:0]});
							end
							2'b01: begin
								RAM[M_ALUAns[13:2]] <= {RAM[M_ALUAns[13:2]][31:16],M_WriteData[7:0],RAM[M_ALUAns[13:2]][7:0]};
								$display("%d@%h: *%h <= %h", $time, PC, M_ALUAns/4*4,{RAM[M_ALUAns[13:2]][31:16],M_WriteData[7:0],RAM[M_ALUAns[13:2]][7:0]});
							end
							2'b10: begin
								RAM[M_ALUAns[13:2]] <= {RAM[M_ALUAns[13:2]][31:24],M_WriteData[7:0],RAM[M_ALUAns[13:2]][15:0]};
								$display("%d@%h: *%h <= %h", $time, PC, M_ALUAns/4*4,{RAM[M_ALUAns[13:2]][31:24],M_WriteData[7:0],RAM[M_ALUAns[13:2]][15:0]});
							end
							2'b11: begin
								RAM[M_ALUAns[13:2]] <= {M_WriteData[7:0],RAM[M_ALUAns[13:2]][23:0]};
								$display("%d@%h: *%h <= %h", $time, PC, M_ALUAns/4*4,{M_WriteData[7:0],RAM[M_ALUAns[13:2]][23:0]});
							end
						endcase
					end
					3'b010: begin
						case(M_ALUAns[1])
							1'b0: begin
								RAM[M_ALUAns[13:2]] <= {RAM[M_ALUAns[13:2]][31:16],M_WriteData[15:0]};
								$display("%d@%h: *%h <= %h", $time, PC, M_ALUAns/4*4,{RAM[M_ALUAns[13:2]][31:16],M_WriteData[15:0]});
							end
							1'b1: begin
								RAM[M_ALUAns[13:2]] <= {M_WriteData[15:0],RAM[M_ALUAns[13:2]][15:0]};	
								$display("%d@%h: *%h <= %h", $time, PC, M_ALUAns/4*4,{M_WriteData[15:0],RAM[M_ALUAns[13:2]][15:0]});
							end
						endcase
					end	
				endcase
			end
		end
	end
	assign M_MemReadData = (M_MemRead == 0) ? 0 : RAM[M_ALUAns[13:2]];
endmodule
