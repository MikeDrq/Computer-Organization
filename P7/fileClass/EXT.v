`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:45:58 11/06/2022 
// Design Name: 
// Module Name:    EXT 
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
module EXT(
    input [15:0] D_Imme16,
    input [2:0] D_Sign,
    output reg [31:0] D_Imme32
    );
	always@(*) begin
		case(D_Sign) 
			3'b000: begin
				D_Imme32 = {{16{1'b0}},D_Imme16};
			end
			3'b001: begin
				D_Imme32 = {{16{D_Imme16[15]}},D_Imme16};
			end
			3'b010: begin
				D_Imme32 = {D_Imme16,{16{1'b0}}};
			end
		endcase
	end
	
endmodule
