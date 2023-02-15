`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:33:26 11/05/2022 
// Design Name: 
// Module Name:    IM 
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
module IM(
    input [11:0] Addr,
    output [31:0] Ins
    );
	reg [31:0] ROM [0:4095];
	integer i;
	initial begin
		for (i = 0;i < 4096;i = i + 1) begin
			ROM[i] = 0;
 		end
		$readmemh("code.txt",ROM,0);
	end
	assign Ins = ROM[Addr];
endmodule
