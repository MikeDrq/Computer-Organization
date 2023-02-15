`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:02:52 10/27/2022 
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
    input clk,
    input reset
    );
	 wire [31:0] Ins;
	 wire [31:0] NextIns;
	 wire [31:0] RData;
	 wire [5:0] SplitterOp;
	 wire [4:0] Rs;
	 wire [4:0] Rt;
	 wire [4:0] Rd;
	 wire [4:0] Shamt;
	 wire [5:0] Func;
	 wire [15:0] Imme;
	 wire [25:0] Address;
	 wire [2:0] RegDst;
	 wire AluSrc;
	 wire MemtoReg;
	 wire RegWrite;
	 wire MemRead;
	 wire MemWrite;
	 wire [3:0] AluOp;
	 wire [1:0] sign;
	 wire branch;
	 wire [2:0] jump;
	 wire [4:0] RdAddr;
	 wire [31:0] WriteGrfData;
	 wire [31:0] RdRs;
	 wire [31:0] RdRt;
	 wire [31:0] EImme;
	 wire [31:0] ALUB;
	 wire [31:0] AluResult;
	 wire [31:0] MemOut;
	 wire [31:0] RomIns;
	 wire [2:0] MemWriteOp;
	 wire [2:0] MemReadOp;
	 wire [31:0] BHOut;
	 
	 wire Con1;
	 wire Con2;
	 
	 assign RdAddr = ((RegDst == 2)?5'b11111:(RegDst == 1)?Rd:Rt);
	 assign ALUB = AluSrc?EImme:RdRt;
	 assign WriteGrfData = (jump == 2)?(Ins+4):(MemtoReg?BHOut:AluResult);
	 assign RomIns = Ins - 32'h00003000;
	
	PC pc(.clk(clk) , .reset(reset) , .InPC(NextIns) , .OutPC(Ins));
	NPC npc(.Ins(Ins) , .NextIns(NextIns) ,.Address(Address), .Jump(jump), .Beq(branch & AluResult[0]), .Ext(EImme) , .Ra(RdRs));
	IM im(.RAddr(RomIns[13:2]) , .RData(RData));
	OpSplitter opsplitter(.Ins(RData), .Op(SplitterOp) , .Rs(Rs) , .Rt(Rt) , .Rd(Rd) , .Shamt(Shamt), .Func(Func) , .Imme(Imme) , .Address(Address));
	Controller controller(.Ins(RData) , .Op(SplitterOp),.Func(Func), .RegDst(RegDst), .AluSrc(AluSrc) , .MemtoReg(MemtoReg) , .RegWrite(RegWrite) , .MemRead(MemRead) , .MemWrite(MemWrite) , .AluControl(AluOp), .Sign(sign) , .branch(branch) , .jump(jump) , .MemWriteOp(MemWriteOp) , .MemReadOp(MemReadOp),.Con1(Con1),.Con2(Con2));
	EXT ext( .Imme(Imme), .Sign(sign), .EImme(EImme));
	GRF grf( .clk(clk), .reset(reset) , .We(RegWrite), .Rs(Rs), .Rt(Rt), .Rd(RdAddr) , .Wd(WriteGrfData), .RdRs(RdRs), .RdRt(RdRt), .WPC(Ins));
	ALU alu( .A(RdRs), .B(ALUB), .Result(AluResult), .Aluop(AluOp), .Shamt(Shamt));
	DM dm( .clk(clk), .reset(reset), .MemWrite(MemWrite), .MemRead(MemRead), .MemData(RdRt), .MemAddr(AluResult), .MemOut(MemOut), .pc(Ins) , .MemWriteOp(MemWriteOp));
	BH bh(.MemOut(MemOut),.MemRead(MemRead),.MemReadOp(MemReadOp),.MemAddr(AluResult),.BHOut(BHOut));
endmodule
