`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:16:51 11/06/2022 
// Design Name: 
// Module Name:    Constants 
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
`define Add 4'b0000
`define Sub 4'b0001
`define Or 4'b0010
`define And 4'b0011
`define Slt 4'b0100
`define Sltu 4'b0101

`define op 31:26
`define rs 25:21
`define rt 20:16
`define rd 15:11
`define shamt 10:6
`define func 5:0
`define imme 15:0
`define jaddr 25:0