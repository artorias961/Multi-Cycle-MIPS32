module ID(instr, op, rs, rt, rd, shamt, func, imm16, address);

    input   [31:0]  instr;
    output  [5:0]   op;
    output  [4:0]   rs;
    output  [4:0]   rt;
    output  [4:0]   rd;
    output  [4:0]   shamt;
    output  [5:0]   func;
    output  [15:0]  imm16;
    output  [25:0]  address;
    
    //easy to implement this in hardware, we don't need to do any shiftment
    
    assign op = instr[31:26];
    assign rs = instr[25:21];
    assign rt = instr[20:16];
    assign rd = instr[15:11];
    assign shamt = instr[10:6];
    assign func = instr[5:0];
    
    assign imm16 = instr[15:0];
    assign address = instr[25:0];
    
    
    
    
    


endmodule