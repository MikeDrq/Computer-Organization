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
	 input clk,                    // 时钟信号
    input reset,                  // 同步复位信号
    input interrupt,              // 外部中断信号
    output [31:0] macroscopic_pc, // 宏观 PC
    output [31:0] i_inst_addr,    // IM 读取地址（取指 PC）
    input  [31:0] i_inst_rdata,   // IM 读取数据
    output [31:0] m_data_addr,    // DM 读写地址
    input  [31:0] m_data_rdata,   // DM 读取数据
    output [31:0] m_data_wdata,   // DM 待写入数据
    output [3 :0] m_data_byteen,  // DM 字节使能信号
    output [31:0] m_int_addr,     // 中断发生器待写入地址
    output [3 :0] m_int_byteen,   // 中断发生器字节使能信号
    output [31:0] m_inst_addr,    // M 级 PC
    output w_grf_we,              // GRF 写使能信号
    output [4 :0] w_grf_addr,     // GRF 待写入寄存器编号
    output [31:0] w_grf_wdata,    // GRF 待写入数据
    output [31:0] w_inst_addr     // W 级 PC
    );
	 
	 wire [3:0] m_data_byteen_cpu; //CPU的字节信号
	 wire [31:0] m_data_addr_cpu; //CPU的读写地址
	 wire [31:0] m_data_rdata_cpu; //CPU读的数据
	 wire [31:0] m_data_wdata_cpu; //CPU写的数据
	 wire IRQ0; 
	 wire IRQ1;
	 wire [31:0] TC0_Rd; //TC0读取数据
	 wire [31:0] TC1_Rd; //TC1读取数据
	 wire TC0WE; //写TC0
	 wire TC1WE; //写TC1 
	 wire [5:0] HWINT; //中断
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
