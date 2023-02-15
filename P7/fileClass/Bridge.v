`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:25:04 12/04/2022 
// Design Name: 
// Module Name:    Bridge 
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
module Bridge(
		input interrupt,
		input [31:0] Addr_In, //读写的外设单元地址（CPU读出）
		input [31:0] WD_In, //写入外设的数据
 		input [3:0] Byteen_In, //写入外设单元的使能（CPU读出）
		input IRQ0,                //TC0中断位
		input IRQ1,                //TC1中断位
		input [31:0] DM_Rd,        //DM的读取值
		input [31:0] TC0_Rd,       //TC0读取值
		input [31:0] TC1_Rd,       //TC1读取值
 		output TC0WE,              //TC0写使能
		output TC1WE,              //TC1写使能
		output [3:0] DMWE,         //DM写入使能
		output [31:0] RdOut,       //外设单元读取值
		output [5:0] HWINT,        //中断信号
		output [31:0] DMAddr_Out,       //写入外设单元DM的读取值
		output [31:0] DMWD_Out,          //写入外设单元DM数据
		output [31:2] TC0Addr_Out,       //写入外设单元TC0的读取值
		output [31:0] TC0WD_Out,          //写入外设单元TC0数据
		output [31:2] TC1Addr_Out,       //写入外设单元TC1的读取值
		output [31:0] TC1WD_Out,          //写入外设单元TC1数据
		output [31:0] m_int_addr,
		output [3:0]  m_int_byteen
    );
		wire dm;
		wire tc0;
		wire tc1;
		assign dm = (Addr_In >= 32'h00000000 && Addr_In <= 32'h00002FFF);
		assign tc0 = (Addr_In >= 32'h00007F00 && Addr_In <= 32'h00007F0B);
		assign tc1 = (Addr_In >= 32'h00007F10 && Addr_In <= 32'h00007F1B);
		assign intex = (Addr_In >= 32'h00007F20 && Addr_In <= 32'h00007F23);
		assign DMWE = dm ? Byteen_In : 4'd0;
		assign TC0WE = (&Byteen_In) & tc0;
		assign TC1WE = (&Byteen_In) & tc1;
		assign HWINT = {3'b0,interrupt,IRQ1,IRQ0};
		assign RdOut = dm ? DM_Rd :
						  tc0 ?  TC0_Rd :
						  tc1 ?  TC1_Rd :
						  32'd0;
	
		assign DMAddr_Out = dm ? Addr_In : 32'd0;
		assign DMWD_Out = dm ? WD_In : 32'd0;
		
		assign TC0Addr_Out = tc0 ? Addr_In[31:2] : 30'd0;
		assign TC0WD_Out = tc0 ? WD_In : 32'd0;
		
		assign TC1Addr_Out = tc1 ? Addr_In[31:2] : 30'd0;
		assign TC1WD_Out = tc1 ? WD_In : 32'd0;
		
		assign m_int_addr	= intex ? Addr_In : 0;
		assign m_int_byteen = intex ? Byteen_In : 0;
endmodule
