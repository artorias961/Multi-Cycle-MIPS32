// MyDefines.v

// Define Registers
`define _R0				5'd0
`define _R1				5'd1
`define _R2				5'd2
`define _R3				5'd3
`define _R4				5'd4
`define _R5				5'd5
`define _R6				5'd6
`define _R7				5'd7	
`define _R8				5'd8	
`define _R9				5'd9	
`define _R10			5'd10
`define _R11			5'd11
`define _R12			5'd12
`define _R13			5'd13
`define _R14			5'd14
`define _R15			5'd15
`define _R16			5'd16
`define _R17			5'd17
`define _R18			5'd18
`define _R19			5'd19
`define _R20			5'd20
`define _R21			5'd21
`define _R22			5'd22
`define _R23			5'd23
`define _R24			5'd24
`define _R25			5'd25
`define _R26			5'd26
`define _R27			5'd27
`define _R28			5'd28
`define _R29			5'd29
`define _R30			5'd30
`define _R31			5'd31

/*
REGISTERS ALLOWED FOR USE:
AT 						(UNSAFE)
V0 ~ V1					(UNPRESERVED)
A0 ~ A3					(UNPRESERVED)
T0 ~ T7					(UNPRESERVED)
S0 ~ S7					(PRESERVED)
T8 ~ T9					(UNPRESERVED)
GP							(UNSAFE)
SP							(PRESERVED)
RA							(UNSAFE)
*/
// Zero value register
`define _ZERO			5'd0

// Assembly Temp register
`define _AT				5'd1

// V0 ~ V1 registers
`define _V0				5'd2
`define _V1				5'd3

// A0 ~ A3 registers
`define _A0				5'd4
`define _A1				5'd5
`define _A2				5'd6
`define _A3				5'd7

// T0 ~ T7 registers
`define _T0				5'd8
`define _T1				5'd9
`define _T2				5'd10
`define _T3				5'd11
`define _T4				5'd12
`define _T5				5'd13
`define _T6				5'd14
`define _T7				5'd15

// S0 ~ S7 registers
`define _S0				5'd16
`define _S1				5'd17
`define _S2				5'd18
`define _S3				5'd19
`define _S4				5'd20
`define _S5				5'd21
`define _S6				5'd22
`define _S7				5'd23

// T8 ~ T9 registers
`define _T8				5'd24
`define _T9				5'd25

// K0 ~ K1 registers (RESERVED)
`define _K0				5'd26
`define _K1				5'd27

// Global pointer register
`define _GP				5'd28

// Stack pointer register
`define _SP				5'd29

// Frame pointer register (RESERVED)
`define _FP				5'd30
`define _S8				5'd30

// Return address register
`define _RA				5'd31


`define _ALUOP_BITS		4
`define _ALUOP_BUS		`_ALUOP_BITS-1:0

// Operation code
`define _OP_RTYPE		6'b000000
`define _OP_ITYPE       6'b000001
`define _OP_ADDI		6'b001000
`define _OP_LW			6'b100011
`define _OP_SW			6'b101011
`define _OP_BEQ			6'b000100
`define _OP_ANDI		6'b001100
`define _OP_ORI			6'b001101
`define _OP_XORI		6'b001110
`define _OP_BNE			6'd05 //Check
`define _OP_SLTI		6'd10 //Check
`define _OP_J			6'd08 //Check
`define _OP_JR			6'd02 //Check 

// Function code		
`define _FUNC_ADD		6'd32
`define _FUNC_ADDU		6'd33
`define _FUNC_SUB		6'd34
`define _FUNC_SUBU		6'd35
`define _FUNC_AND		6'd36
`define _FUNC_OR		6'd37
`define _FUNC_XOR		6'd38
`define _FUNC_NOR		6'd39
`define _FUNC_SLT		6'd42
`define _FUNC_SRL		6'd00  // Check
`define _FUNC_SLL		6'd02  // Check


// ALU Operation code
`define _ALUOP_AND		`_ALUOP_BITS'b0000
`define _ALUOP_OR		`_ALUOP_BITS'b0001
`define _ALUOP_ADD		`_ALUOP_BITS'b0010
`define _ALUOP_SUB		`_ALUOP_BITS'b0110
`define _ALUOP_SLT		`_ALUOP_BITS'b0111
`define _ALUOP_NOR		`_ALUOP_BITS'b1100
`define _ALUOP_XOR		`_ALUOP_BITS'b1101 // FIXME: Check this value in textbook
// FIX LATER ON
