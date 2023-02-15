`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:36:41 11/05/2022 
// Design Name: 
// Module Name:    NPC 
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
module NPC(
    input [31:0] Addr,
	 input [2:0] Branch,
	 input [31:0] D_Imme,
	 input equal,
	 input [31:0] D_Ins,
	 input [25:0] JumpAddr,
	 input [31:0] D_RaData,
	 input [31:0] PC,
    output reg [31:0] NAddr
    );
	always@(*) begin
		case(Branch)
			3'b000: begin
				NAddr = Addr;
			end
			3'b001: begin
				if (equal == 1) begin
					NAddr = Addr + {D_Imme[29:0],{2{1'b0}}}; //注意此处应为1'b0,否则不正确
				end
				else begin
					NAddr = Addr + 4;
				end
			end
			3'b010: begin
				NAddr = {D_Ins[31:28],JumpAddr,{2{1'b0}}};
			end
			3'b011: begin
				NAddr = D_RaData;
			end
			3'b100: begin
				if (equal == 0) begin
					NAddr = Addr + {D_Imme[29:0],{2{1'b0}}}; //bne
				end
				else begin
					NAddr = Addr + 4;
				end
			end
			3'b101: begin
				NAddr = {PC[31:28],JumpAddr,{2{1'b0}}};
			end
		endcase
	end
endmodule
