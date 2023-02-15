`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:02:58 11/25/2022 
// Design Name: 
// Module Name:    CP0 
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
module CP0(
		input clk,
		input reset,
		input en,             //CP0寄存器写使能
		input [4:0] A1,		 //读CP0寄存器编号，执行MFC0产生
		input [4:0] A2,       //写CP0寄存器编号，执行MTC0产生
		input [31:0] CP0In,   //CP0的写入数据，来自MTCO指令，数据来自GRF
		output [31:0] CP0Out, //CP0寄存器输出的数据，执行MFCO产生，输出数据至GRF
		input [31:0] VPC,     //中断/异常时的PC
		input BDIn,           //延迟槽
		input [4:0] ExcCodeIn, //中断异常类型
		input [5:0] HWint,    //输入中断信号
		input EXLSet,        //用于置位SR的EXL，WB阶段产生
		input EXLClr,        //清除SR的EXL，执行ERET指令产生
		output [31:0] EPCOut, //输出至NPC
		output Req,            //中断请求，输出值CPU控制器
		output CU0,
		output EXL
    );
		reg [31:0] SR;
		//reg [15:10] SRIM; //6个中断屏蔽位，1允许中断，0禁止中断
		//reg SREXL;   //1进入异常不允许中断，0允许中断
		//reg SRIE;    //1 允许中断，0不允许中断
		//SR为{16'b0,SRIM,8'b0,SREXL,SRIE}
		reg [31:0] Cause;
		//reg CauseBD;  //延迟槽标记
		//reg [15:10] CauseIP;  //待判断发生中断的位置
		//reg [6:2] CauseExcCode;  //异常原因
		//Cause为{BD,15'b0,IP,4'b0,ExcCode,2'b0}
		reg [31:0] EPC;
		reg [31:0] PRID;
		wire IntReq; //中断条件
		wire ExcReq; //异常条件
		
		//assign IntReq = (|(HWint & SRIM)) & SRIE & !SREXL;
		assign IntReq = (|(HWint & SR[15:10])) & SR[0] & !SR[1];
		assign ExcReq = (ExcCodeIn != 0);
		assign Req = IntReq | ExcReq; 
		
		assign CP0Out = (A1 == 12) ? SR :
							 (A1 == 13) ? Cause :
							 (A1 == 14) ? EPC :
							 (A1 == 15) ? PRID : 32'hffffffff;
		always@(posedge clk) begin
			if (reset == 1) begin
				SR <= 32'h1000_0000;
				Cause <= 32'b0;
				/*SRIM <= 5'b0;
				SREXL <= 0;
				SRIE <= 0;
				CauseBD <= 0;
				CauseIP <= 6'b0;
				CauseExcCode <= 5'b0;*/
				EPC <= 32'b0;
				PRID <= 32'h20030407;
			end
			else begin
				Cause[15:10] <= HWint;
				if(en == 1) begin
					case(A2)
						12: begin
							SR <= CP0In;
							//SRIM <= CP0In[15:10];
							//SREXL <= CP0In[1];
							//SRIE <= CP0In[0];
						end
						14: begin
							EPC <= CP0In;
						end
					endcase
				end
				/*if (EXLSet == 1) begin
					//SREXL <= 1;
					SR[1] <= 1;
				end*/
				if (EXLClr == 1) begin
					//SREXL <= 0;
					SR[1] <= 0;
				end	
				if (Req == 1) begin
					Cause[6:2] <= IntReq ? 0 : ExcCodeIn;
					Cause[31] <= BDIn;
					EPC <= BDIn ? (VPC - 4): VPC;
					SR[1] <= 1;
				end
			end
		end
		assign EPCOut = EPC; 
		assign CU0 = SR[28];
		assign EXL = SR[1];
endmodule
