//------------------------------------------------------------------------------
// MIPS register file
//   width: 32 bits
//   depth: 32 words (reg[0] is static zero register)
//   2 asynchronous read ports
//   1 synchronous, positive edge triggered write port
//------------------------------------------------------------------------------

`include "decoders.v"
`include "mux.v"
`include "register.v"

module regfile
(
output[31:0]	ReadData1,	// Contents of first register read
output[31:0]	ReadData2,	// Contents of second register read
input[31:0]	WriteData,	// Contents to write to register
input[4:0]	ReadRegister1,	// Address of first register to read
input[4:0]	ReadRegister2,	// Address of second register to read
input[4:0]	WriteRegister,	// Address of register to write
input		RegWrite,	// Enable writing of register when High
input		Clk		// Clock (Positive Edge Triggered)
);

decoder1to32 decodetime(DecodeOut, RegWrite, WriteRegister);

register32zero r0(ROut_0, WriteData, DecodeOut[0], Clk);
register32 r1(ROut_1,  WriteData, DecodeOut[1], Clk); 
register32 r2(ROut_2,  WriteData, DecodeOut[2], Clk); 
register32 r3(ROut_3,  WriteData, DecodeOut[3], Clk); 
register32 r4(ROut_4,  WriteData, DecodeOut[4], Clk); 
register32 r5(ROut_5,  WriteData, DecodeOut[5], Clk); 
register32 r6(ROut_6,  WriteData, DecodeOut[6], Clk); 
register32 r7(ROut_7,  WriteData, DecodeOut[7], Clk); 
register32 r8(ROut_8,  WriteData, DecodeOut[8], Clk); 
register32 r9(ROut_9,  WriteData, DecodeOut[9], Clk); 
register32 r10(ROut_10, WriteData, DecodeOut[10], Clk); 
register32 r11(ROut_11, WriteData, DecodeOut[11], Clk); 
register32 r12(ROut_12, WriteData, DecodeOut[12], Clk); 
register32 r13(ROut_13, WriteData, DecodeOut[13], Clk); 
register32 r14(ROut_14, WriteData, DecodeOut[14], Clk); 
register32 r15(ROut_15, WriteData, DecodeOut[15], Clk); 
register32 r16(ROut_16, WriteData, DecodeOut[16], Clk); 
register32 r17(ROut_17, WriteData, DecodeOut[17], Clk); 
register32 r18(ROut_18, WriteData, DecodeOut[18], Clk); 
register32 r19(ROut_19, WriteData, DecodeOut[19], Clk); 
register32 r20(ROut_20, WriteData, DecodeOut[20], Clk); 
register32 r21(ROut_21, WriteData, DecodeOut[21], Clk); 
register32 r22(ROut_22, WriteData, DecodeOut[22], Clk); 
register32 r23(ROut_23, WriteData, DecodeOut[23], Clk); 
register32 r24(ROut_24, WriteData, DecodeOut[24], Clk); 
register32 r25(ROut_25, WriteData, DecodeOut[25], Clk); 
register32 r26(ROut_26, WriteData, DecodeOut[26], Clk); 
register32 r27(ROut_27, WriteData, DecodeOut[27], Clk); 
register32 r28(ROut_28, WriteData, DecodeOut[28], Clk); 
register32 r29(ROut_29, WriteData, DecodeOut[29], Clk); 
register32 r30(ROut_30, WriteData, DecodeOut[30], Clk); 
register32 r31(ROut_31, WriteData, DecodeOut[31], Clk); 

mux32to1by32 M1(XX, ReadRegister1, DecodeOut[0], DecodeOut[1], DecodeOut[2], DecodeOut[3], DecodeOut[4], DecodeOut[5], DecodeOut[6], DecodeOut[7], DecodeOut[8], DecodeOut[9], DecodeOut[10], DecodeOut[11], DecodeOut[12], DecodeOut[13], DecodeOut[14], DecodeOut[15], DecodeOut[16], DecodeOut[17], DecodeOut[18], DecodeOut[19], DecodeOut[20], DecodeOut[21], DecodeOut[22], DecodeOut[23], DecodeOut[24], DecodeOut[25], DecodeOut[26], DecodeOut[27], DecodeOut[28], DecodeOut[29], DecodeOut[30], DecodeOut[31]); 

mux32to1by32 M2(ZZ, ReadRegister2, DecodeOut[0], DecodeOut[1], DecodeOut[2], DecodeOut[3], DecodeOut[4], DecodeOut[5], DecodeOut[6], DecodeOut[7], DecodeOut[8], DecodeOut[9], DecodeOut[10], DecodeOut[11], DecodeOut[12], DecodeOut[13], DecodeOut[14], DecodeOut[15], DecodeOut[16], DecodeOut[17], DecodeOut[18], DecodeOut[19], DecodeOut[20], DecodeOut[21], DecodeOut[22], DecodeOut[23], DecodeOut[24], DecodeOut[25], DecodeOut[26], DecodeOut[27], DecodeOut[28], DecodeOut[29], DecodeOut[30], DecodeOut[31]); 

endmodule

//assign ReadData1 = 42; 
//assign ReadData2 = 42; 


