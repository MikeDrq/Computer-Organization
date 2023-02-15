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
		input [31:0] Addr_In, //��д�����赥Ԫ��ַ��CPU������
		input [31:0] WD_In, //д�����������
 		input [3:0] Byteen_In, //д�����赥Ԫ��ʹ�ܣ�CPU������
		input IRQ0,                //TC0�ж�λ
		input IRQ1,                //TC1�ж�λ
		input [31:0] DM_Rd,        //DM�Ķ�ȡֵ
		input [31:0] TC0_Rd,       //TC0��ȡֵ
		input [31:0] TC1_Rd,       //TC1��ȡֵ
 		output TC0WE,              //TC0дʹ��
		output TC1WE,              //TC1дʹ��
		output [3:0] DMWE,         //DMд��ʹ��
		output [31:0] RdOut,       //���赥Ԫ��ȡֵ
		output [5:0] HWINT,        //�ж��ź�
		output [31:0] DMAddr_Out,       //д�����赥ԪDM�Ķ�ȡֵ
		output [31:0] DMWD_Out,          //д�����赥ԪDM����
		output [31:2] TC0Addr_Out,       //д�����赥ԪTC0�Ķ�ȡֵ
		output [31:0] TC0WD_Out,          //д�����赥ԪTC0����
		output [31:2] TC1Addr_Out,       //д�����赥ԪTC1�Ķ�ȡֵ
		output [31:0] TC1WD_Out,          //д�����赥ԪTC1����
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
