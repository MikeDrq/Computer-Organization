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
		input en,             //CP0�Ĵ���дʹ��
		input [4:0] A1,		 //��CP0�Ĵ�����ţ�ִ��MFC0����
		input [4:0] A2,       //дCP0�Ĵ�����ţ�ִ��MTC0����
		input [31:0] CP0In,   //CP0��д�����ݣ�����MTCOָ���������GRF
		output [31:0] CP0Out, //CP0�Ĵ�����������ݣ�ִ��MFCO���������������GRF
		input [31:0] VPC,     //�ж�/�쳣ʱ��PC
		input BDIn,           //�ӳٲ�
		input [4:0] ExcCodeIn, //�ж��쳣����
		input [5:0] HWint,    //�����ж��ź�
		input EXLSet,        //������λSR��EXL��WB�׶β���
		input EXLClr,        //���SR��EXL��ִ��ERETָ�����
		output [31:0] EPCOut, //�����NPC
		output Req,            //�ж��������ֵCPU������
		output CU0,
		output EXL
    );
		reg [31:0] SR;
		//reg [15:10] SRIM; //6���ж�����λ��1�����жϣ�0��ֹ�ж�
		//reg SREXL;   //1�����쳣�������жϣ�0�����ж�
		//reg SRIE;    //1 �����жϣ�0�������ж�
		//SRΪ{16'b0,SRIM,8'b0,SREXL,SRIE}
		reg [31:0] Cause;
		//reg CauseBD;  //�ӳٲ۱��
		//reg [15:10] CauseIP;  //���жϷ����жϵ�λ��
		//reg [6:2] CauseExcCode;  //�쳣ԭ��
		//CauseΪ{BD,15'b0,IP,4'b0,ExcCode,2'b0}
		reg [31:0] EPC;
		reg [31:0] PRID;
		wire IntReq; //�ж�����
		wire ExcReq; //�쳣����
		
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
