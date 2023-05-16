module MIPS32(clk, nrst, MemWrite, MemRead, address, data_out);
    input         clk, nrst; 
    output        MemWrite, MemRead;
    output [31:0] address;
    output [31:0] data_out;
    
    //reg    [31:0] address;
    //reg    [31:0] data_out;
    
    wire        IR, MDR, MemToReg, RegDst, RegA, RegB, 
                AluSrcA, AluResult, IorD, RegWrite, 
                PCWrite;
                
    wire [2:0]  PCSrc;
    wire [2:0]  AluSrcB;
    wire        zeroflag;
    
    wire [31:0] r_id;
    wire [31:0] mdr_r;
    wire [31:0] w_data;
    
    wire [5:0] op;
    wire [5:0] func;
    wire [4:0] rs;
    wire [4:0] rt;
    wire [4:0] rd;
    wire [31:0] shamt;
    wire [15:0] imm16;
    wire [25:0] addr26;
    
    wire [4:0] w_reg;
    wire [31:0] r_data1;
    wire [31:0] r_data1_r;
    wire [31:0] r_data2;
    wire [31:0] r_data2_r;
    wire [31:0] imm32;
    wire [31:0] shift_imm32;
    wire [31:0] zero_imm32;
    wire [31:0] alu_A;
    wire [31:0] alu_B;
    wire [31:0] alu_result;
    wire [31:0] alu_result_r;
    wire [31:0] alu_result_pc;
    wire [31:0] pc;
    wire [31:0] PCSrc_out;
    wire [31:0] addr32;
    
    
    wire [3:0] aluop;
    wire [27:0] addr28;
    wire [31:0] wire_data_out;
    
    //reg32           M1 (.di(d_in), .ctrl(IR), .do(r_id));
    real_reg32      M1(.clk(clk), .nrst(nrst), .en(IR), .d_in(data_out), .d_out(r_id));
    
    //reg32           M2(.di(d_in), .ctrl(MDR), .do(mdr_r));
    real_reg32      M2(.clk(clk), .nrst(nrst), .en(MDR), .d_in(data_out), .d_out(mdr_r));
    
    ID              M3(.instr(r_id), .op(op), .rs(rs), .rt(rt), .rd(rd), .shamt(shamt), .func(func), .imm16(imm16), .address(addr26));
    
    mux2to1_32      M4(.in0(alu_result_r), .in1(mdr_r), .sel(MemToReg), .out(w_data));
    
    mux2to1_32      M5(.in0(rt), .in1(rd), .sel(RegDst), .out(w_reg));
    
    RegisterFile    M6(.clk(clk), .ReadReg1(rs), .ReadReg2(rt), .WriteReg(w_reg), .WriteData(w_data), .ReadData1(r_data1), .ReadData2(r_data2), .RegWrite(RegWrite));
    
    signext         M7(.imm16(imm16), .imm32(imm32));
    
    zeroExtImm      M8(.in(imm16), .out(zero_imm32));
    
    //reg32           M9(.di(r_data1), .ctrl(RegA), .do(r_data1_r));
    real_reg32      M9(.clk(clk), .nrst(nrst), .en(RegA), .d_in(r_data1), .d_out(r_data1_r));
    
    //reg32          M10(.di(r_data2), .ctrl(RegB), .do(r_data2_r));
    real_reg32     M10(.clk(clk), .nrst(nrst), .en(RegB), .d_in(r_data2), .d_out(wire_data_out));
    
    shiftLeft2     M11(.in(imm32), .out(shift_imm32));
    
    mux8to1_32     M12(.in0(wire_data_out), .in1(shamt), .in2(imm32), .in3(shift_imm32), .in4(32'd4), .in5(zero_imm32), .in6(), .in7(), .sel(AluSrcB), .out(alu_B));
    
    shiftleft2_26  M13(.d_i(addr26), .d_o(addr28));
    
    bit_extender_4 M14(.di_28(addr28), .pc(pc), .do_32(addr32));
    
    mux2to1_32     M15(.in0(pc), .in1(r_data1_r), .sel(AluSrcA), .out(alu_A));
    
    ALU            M16(.ALUop(aluop), .A(alu_A), .B(alu_B), .ALUResult(alu_result), .zero(zeroflag));
    
    assign alu_result_pc = (zeroflag == 1'b0) ? alu_result_r : 32'bz;
    
    //reg32          M17(.di(alu_result), .ctrl(AluResult), .do(alu_result_r));
    real_reg32     M17(.clk(clk), .nrst(nrst), .en(AluResult), .d_in(alu_result), .d_out(alu_result_r));
    
    mux8to1_32     M18(.in0(alu_result), .in1(alu_result_pc), .in2(addr32), .in3(r_data1_r), .in4(), .in5(), .in6(), .in7(), .sel(PCSrc), .out(PCSrc_out));
    
                   //I changed clk input from "PCWrite" to "clk"
    PC             M19(.clk(clk), .nrst(nrst), .PCWrite(PCWrite), .newPc(PCSrc_out), .pc(pc));
    
    mux2to1_32     M20(.in0(pc), .in1(alu_result_r), .sel(IorD), .out(address));
    
    control        M21(.clk(clk), .nrst(nrst), .op(op), .func(func), .zero(zeroflag),
                    .IR(IR), .MDR(MDR), .MemtoReg(MemToReg), .RegDst(RegDst), .RegWrite(RegWrite), .RegA(RegA), .RegB(RegB), .AluSrcA(AluSrcA),
                    .AluSrcB(AluSrcB), .ALUop(aluop), .ALUResult(AluResult), .PCSrc(PCSrc), .IorD(IorD), .PCWrite(PCWrite), .MemRead(MemRead), .MemWrite(MemWrite));
    
    assign data_out = (MemWrite == 1'b1) ? wire_data_out : 32'bz;
    
    //bufif1         M22(data_in, data_out, MemWrite); 
    //assign data = (data_read == 1'b0) ? 8'bz : m_out;



endmodule



