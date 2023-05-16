`include "MyDefines.v"

module ALU(ALUop, A, B, ALUResult, zero); //add a zeroflag element
    input   [3:0]   ALUop;
    input   [31:0]  A;
    input   [31:0]  B;
    output  [31:0]  ALUResult;
    output          zero;
    
    reg [31:0] ALUResult;
    
    assign zero = ((ALUop == `_ALUOP_SUB) && (ALUResult == 32'd0)) ? 1'b0: 1'b1;
    
    always @ (*) begin //combinational circuit, so use all inputs
        
        case (ALUop) 
            `_ALUOP_ADD: begin
                ALUResult = A + B;
            end
            `_ALUOP_SUB: begin
                ALUResult = A - B;
            end
            `_ALUOP_OR: begin
                ALUResult = A | B;
            end
            `_ALUOP_AND: begin
                ALUResult = A & B;
            end
            `_ALUOP_NOR: begin
                ALUResult = ~ (A | B);
            end 
            `_ALUOP_XOR: begin
                ALUResult = A ^ B;
            end
            `_ALUOP_SLT: begin  //less than
                ALUResult = (A < B) ? 32'd1 : 32'd0;
            end
            `_ALUOP_SLL: begin
                ALUResult = A << B;
            end
            `_ALUOP_SRL: begin
                ALUResult = A >> B;
            end
            default: begin
                ALUResult = 32'd0;
            end
        endcase
    end
    
endmodule

