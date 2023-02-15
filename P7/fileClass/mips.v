`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:36:57 11/27/2022 
// Design Name: 
// Module Name:    mips 
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
module mips(
	 input clk,                    // ʱ���ź�
    input reset,                  // ͬ����λ�ź�
    input interrupt,              // �ⲿ�ж��ź�
    output [31:0] macroscopic_pc, // ��� PC
    output [31:0] i_inst_addr,    // IM ��ȡ��ַ��ȡָ PC��
    input  [31:0] i_inst_rdata,   // IM ��ȡ����
    output [31:0] m_data_addr,    // DM ��д��ַ
    input  [31:0] m_data_rdata,   // DM ��ȡ����
    output [31:0] m_data_wdata,   // DM ��д������
    output [3 :0] m_data_byteen,  // DM �ֽ�ʹ���ź�
    output [31:0] m_int_addr,     // �жϷ�������д���ַ
    output [3 :0] m_int_byteen,   // �жϷ������ֽ�ʹ���ź�
    output [31:0] m_inst_addr,    // M �� PC
    output w_grf_we,              // GRF дʹ���ź�
    output [4 :0] w_grf_addr,     // GRF ��д��Ĵ������
    output [31:0] w_grf_wdata,    // GRF ��д������
    output [31:0] w_inst_addr     // W �� PC
    );
	 
	 wire [3:0] m_data_byteen_cpu; //CPU���ֽ��ź�
	 wire [31:0] m_data_addr_cpu; //CPU�Ķ�д��ַ
	 wire [31:0] m_data_rdata_cpu; //CPU��������
	 wire [31:0] m_data_wdata_cpu; //CPUд������
	 wire IRQ0; 
	 wire IRQ1;
	 wire [31:0] TC0_Rd; //TC0��ȡ����
	 wire [31:0] TC1_Rd; //TC1��ȡ����
	 wire TC0WE; //дTC0
	 wire TC1WE; //дTC1 
	 wire [5:0] HWINT; //�ж�
	 wire [31:2] TC0Addr;
	 wire [31:0] TC0Wd;
	 wire [31:2] TC1Addr;
	 wire [31:0] TC1Wd;
	CPU cpu(.clk(clk),.reset(reset),.i_inst_addr(i_inst_addr),.i_inst_rdata(i_inst_rdata),
			 .m_data_addr(m_data_addr_cpu),.m_data_rdata(m_data_rdata_cpu),.m_data_wdata(m_data_wdata_cpu),.m_data_byteen(m_data_byteen_cpu), .m_inst_addr(m_inst_addr),
			  .w_grf_we(w_grf_we),.w_grf_addr(w_grf_addr),.w_grf_wdata(w_grf_wdata),.w_inst_addr(w_inst_addr),
			  .HWINT(HWINT),.macroscopic_pc(macroscopic_pc));
	
	TC timer0(.clk(clk),.reset(reset),.Addr(TC0Addr),.WE(TC0WE),.Din(TC0Wd),.Dout(TC0_Rd),.IRQ(IRQ0));
	
	TC timer1(.clk(clk),.reset(reset),.Addr(TC1Addr),.WE(TC1WE),.Din(TC1Wd),.Dout(TC1_Rd),.IRQ(IRQ1));
	
	Bridge bridge(.interrupt(interrupt),.Addr_In(m_data_addr_cpu),.WD_In(m_data_wdata_cpu),.Byteen_In(m_data_byteen_cpu),
					  .IRQ0(IRQ0),.IRQ1(IRQ1),.DM_Rd(m_data_rdata),.TC0_Rd(TC0_Rd),.TC1_Rd(TC1_Rd),.TC0WE(TC0WE),.TC1WE(TC1WE),
					  .DMWE(m_data_byteen),.RdOut(m_data_rdata_cpu),.HWINT(HWINT),
					  .DMAddr_Out(m_data_addr),.DMWD_Out(m_data_wdata),
					  .TC0Addr_Out(TC0Addr),.TC0WD_Out(TC0Wd),.TC1Addr_Out(TC1Addr),.TC1WD_Out(TC1Wd),
					  .m_int_addr(m_int_addr),.m_int_byteen(m_int_byteen));
endmodule
