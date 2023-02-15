`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:44:38 10/27/2022 
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
module DM(clk,reset,MemWrite,MemRead,MemData,MemAddr,MemOut,pc,MemWriteOp);
	input [31:0] pc;
	input clk;
	input reset;
	input MemWrite;
	input MemRead;
	input [31:0] MemData;
	input [31:0] MemAddr;
	input [2:0] MemWriteOp;
	output [31:0] MemOut;
	reg [31:0] RAM [0:3071];
	integer i;
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
			if (MemWrite == 1) begin
				case(MemWriteOp)
					0: begin
						RAM[MemAddr[13:2]] <= MemData;
						$display("@%h: *%h <= %h", pc, MemAddr, MemData);
					end
					3'b001: begin
						case(MemAddr[1:0]) 
							2'b00: begin
								RAM[MemAddr[13:2]] <= {RAM[MemAddr[13:2]][31:8],MemData[7:0]};
								$display("@%h: *%h <= %h", pc, MemAddr/4*4,{RAM[MemAddr[13:2]][31:8],MemData[7:0]});
							end
							2'b01: begin
								RAM[MemAddr[13:2]] <= {RAM[MemAddr[13:2]][31:16],MemData[7:0],RAM[MemAddr[13:2]][7:0]};
								$display("@%h: *%h <= %h", pc, MemAddr/4*4,{RAM[MemAddr[13:2]][31:16],MemData[7:0],RAM[MemAddr[13:2]][7:0]});
							end
							2'b10: begin
								RAM[MemAddr[13:2]] <= {RAM[MemAddr[13:2]][31:24],MemData[7:0],RAM[MemAddr[13:2]][15:0]};
								$display("@%h: *%h <= %h", pc, MemAddr/4*4,{RAM[MemAddr[13:2]][31:24],MemData[7:0],RAM[MemAddr[13:2]][15:0]});
							end
							2'b11: begin
								RAM[MemAddr[13:2]] <= {MemData[7:0],RAM[MemAddr[13:2]][23:0]};
								$display("@%h: *%h <= %h", pc, MemAddr/4*4,{MemData[7:0],RAM[MemAddr[13:2]][23:0]});
							end
						endcase
					end
					3'b010: begin
						case(MemAddr[1])
							1'b0: begin
								RAM[MemAddr[13:2]] <= {RAM[MemAddr[13:2]][31:16],MemData[15:0]};
								$display("@%h: *%h <= %h", pc, MemAddr/2*2,{RAM[MemAddr[13:2]][31:16],MemData[15:0]});
							end
							1'b1: begin
								RAM[MemAddr[13:2]] <= {MemData[15:0],RAM[MemAddr[13:2]][15:0]};	
								$display("@%h: *%h <= %h", pc, MemAddr/2*2,{MemData[15:0],RAM[MemAddr[13:2]][15:0]});
							end
						endcase
					end	
				endcase
			end
		end
	end
	assign MemOut = (MemRead == 1)? RAM[MemAddr[13:2]]:0;
endmodule
