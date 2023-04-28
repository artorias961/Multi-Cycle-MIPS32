`include "MyDefines.v"

module control(clk, nrst, 
                op, func, 
                IR, MDR, MemtoReg, RegDst, RegWrite, RegA, RegB, AluSrcA,
                AluSrcB, ALUop, ALUResult, PCSrc, IorD, PCWrite, MemRead, MemWrite);
    //initialize the inputs and the outputs
    input       clk, nrst;
    input [5:0] op;
    input [5:0] func;
    
    output       IR, MDR, MemtoReg, RegDst, RegWrite, RegA, RegB, AluSrcA,
                 ALUResult, IorD, PCWrite, MemRead, MemWrite;
    output [3:0] ALUop;
    output [2:0] AluSrcB;
    output [1:0] PCSrc;
    
    //outputs must be turned to registers to store the data
    reg         IR, MDR, MemtoReg, RegDst, RegWrite, RegA, RegB, AluSrcA,
                ALUResult, IorD, PCWrite, MemRead, MemWrite;
    reg [3:0]   ALUop;
    reg [2:0]   AluSrcB;
    reg [1:0]   PCSrc;
    
    //4 bit parameter for all the states that will be used
	parameter [3:0] 
                S_IF        = 4'd0,
                S_ID        = 4'd1,
                S_EXE_R     = 4'd2,
                S_EXE_I     = 4'd3,
                S_EXE_BEQ   = 4'd4,
                S_EXE_LW    = 4'd5,
                S_MEM_LW    = 4'd6,
                S_MEM_SW    = 4'd7,
                S_WB_R      = 4'd8,
                S_WB_I      = 4'd9,
                S_WB_LW     = 4'd10;  
                
                
    //implementation using 3 always blocks
    //Next comb. logic
    //local variables
    reg [3:0] currState;
    reg [3:0] nextState;
    
    
    always @ (*) begin
        case(currState) 
            S_IF: begin
                nextState = S_ID;
            end
            
            S_ID: begin
                if (op == `_OP_RTYPE) begin
                    nextState = S_EXE_R;
                
                end else if (op == `_OP_ITYPE) begin
                    nextState = S_EXE_I;
                
                end else if (op == `_OP_BEQ) begin
                    nextState = S_EXE_BEQ;
                
                end else if ((op == `_OP_LW) || (op == `_OP_SW)) begin 
                    nextState = S_EXE_LW;
                    
                end
            end
            S_EXE_R: begin
                nextState = S_WB_R;
            
            end
            S_EXE_I: begin
                nextState = S_WB_I;
            
            end
            S_EXE_BEQ: begin
                nextState = S_IF;
            
            end
            S_EXE_LW: begin
                if (op == `_OP_LW) begin
                    nextState = S_MEM_LW;
                end else if (op == `_OP_SW) begin
                    nextState = S_MEM_SW;
                end
            end
            S_MEM_LW: begin
                nextState = S_WB_LW;
            end
            S_MEM_SW: begin
                nextState = S_IF;
            end
            S_WB_R: begin
                nextState = S_IF;
            end
            S_WB_I: begin
                nextState = S_IF;
            end
            S_WB_LW: begin
                nextState = S_IF;
            end
            default: begin
                nextState = S_IF;
            end
        endcase
    end
    
    //STATE Register
    always @ (posedge clk or negedge nrst) begin 
            // Checking if the reset was hit or not
            if (nrst == 1'b0) begin
                // Go back to the first statement
                currState = S_IF;
            end 
            else begin
                // Else go to the next state
                currState = nextState;
            end
        end
    
    // Output comb. circuit
    
    //Not 100% yet, this is just what Daniel has so far
    //We'll need to make changes later
    
    always @ (*) begin
        case (currState)
            S_IF: begin
                IR          = 1'b1;
                MDR         = 1'b0;
                MemtoReg    = 1'b0;
                RegDst      = 1'b0;
                RegWrite    = 1'b0;
                RegA        = 1'b0;
                RegB        = 1'b0;
                AluSrcA     = 1'b0;
                AluSrcB     = 3'b100;
                ALUResult   = 1'b0;
                ALUop       = `_ALUOP_ADD;
                PCSrc       = 2'b00;
                IorD        = 1'b0;
                PCWrite     = 1'b1;
                MemRead     = 1'b1;
                MemWrite    = 1'b0;
            
            end
            S_ID: begin
                IR          = 1'b0;
                MDR         = 1'b0;
                MemtoReg    = 1'b0;
                RegDst      = 1'b0;
                RegWrite    = 1'b0;
                RegA        = 1'b1;
                RegB        = 1'b1;
                AluSrcA     = 1'b0;
                AluSrcB     = 3'b011;
                ALUResult   = 1'b1;
                ALUop       = `_ALUOP_ADD;
                PCSrc       = 2'b00;
                IorD        = 1'b0;
                PCWrite     = 1'b0;
                MemRead     = 1'b0;
                MemWrite    = 1'b0;
            
            end
            S_EXE_R: begin
                IR          = 1'b0;
                MDR         = 1'b0;
                MemtoReg    = 1'b0;
                RegDst      = 1'b0;
                RegWrite    = 1'b0;
                RegA        = 1'b0;
                RegB        = 1'b0;
                AluSrcA     = 1'b1;
                AluSrcB     = 3'b000;
                ALUResult   = 1'b1;
                ALUop       = `_ALUOP_ADD;
                PCSrc       = 2'b00;
                IorD        = 1'b0;
                PCWrite     = 1'b0;
                MemRead     = 1'b0;
                MemWrite    = 1'b0;
            
            end
            S_EXE_I: begin
                IR          = 1'b0;
                MDR         = 1'b0;
                MemtoReg    = 1'b0;
                RegDst      = 1'b0;
                RegWrite    = 1'b0;
                RegA        = 1'b0;
                RegB        = 1'b0;
                AluSrcA     = 1'b1;
                AluSrcB     = 3'b010;
                ALUResult   = 1'b1;
                ALUop       = `_ALUOP_ADD;
                PCSrc       = 2'b00;
                IorD        = 1'b0;
                PCWrite     = 1'b0;
                MemRead     = 1'b0;
                MemWrite    = 1'b0;
            
            end
            S_EXE_BEQ: begin
                IR          = 1'b0;
                MDR         = 1'b0;
                MemtoReg    = 1'b0;
                RegDst      = 1'b0;
                RegWrite    = 1'b0;
                RegA        = 1'b0;
                RegB        = 1'b0;
                AluSrcA     = 1'b1;
                AluSrcB     = 3'b100;
                ALUResult   = 1'b1;
                ALUop       = `_ALUOP_ADD;
                PCSrc       = 2'b01;
                IorD        = 1'b0;
                PCWrite     = 1'b1;
                MemRead     = 1'b0;
                MemWrite    = 1'b1;
            
            end
            S_EXE_LW: begin
                IR          = 1'b0;
                MDR         = 1'b0;
                MemtoReg    = 1'b0;
                RegDst      = 1'b0;
                RegWrite    = 1'b0;
                RegA        = 1'b0;
                RegB        = 1'b0;
                AluSrcA     = 1'b1;
                AluSrcB     = 3'b010;
                ALUResult   = 1'b1;
                ALUop       = `_ALUOP_ADD;
                PCSrc       = 2'b00;
                IorD        = 1'b0;
                PCWrite     = 1'b0;
                MemRead     = 1'b0;
                MemWrite    = 1'b0;
            
            end
            S_MEM_LW: begin
                IR          = 1'b0;
                MDR         = 1'b1;
                MemtoReg    = 1'b0;
                RegDst      = 1'b0;
                RegWrite    = 1'b0;
                RegA        = 1'b0;
                RegB        = 1'b0;
                AluSrcA     = 1'b0;
                AluSrcB     = 3'b100;
                ALUResult   = 1'b0;
                ALUop       = `_ALUOP_ADD;
                PCSrc       = 2'b00;
                IorD        = 1'b1;
                PCWrite     = 1'b1;
                MemRead     = 1'b1;
                MemWrite    = 1'b0;
            
            end
            S_MEM_SW: begin
                IR          = 1'b0;
                MDR         = 1'b0;
                MemtoReg    = 1'b0;
                RegDst      = 1'b0;
                RegWrite    = 1'b0;
                RegA        = 1'b0;
                RegB        = 1'b0;
                AluSrcA     = 1'b0;
                AluSrcB     = 3'b100;
                ALUResult   = 1'b0;
                ALUop       = `_ALUOP_ADD;
                PCSrc       = 2'b00;
                IorD        = 1'b1;
                PCWrite     = 1'b1;
                MemRead     = 1'b0;
                MemWrite    = 1'b1;
            
            end
            S_WB_R: begin
                IR          = 1'b0;
                MDR         = 1'b0;
                MemtoReg    = 1'b0;
                RegDst      = 1'b1;
                RegWrite    = 1'b1;
                RegA        = 1'b0;
                RegB        = 1'b0;
                AluSrcA     = 1'b0;
                AluSrcB     = 3'b100;
                ALUResult   = 1'b0;
                ALUop       = `_ALUOP_ADD;
                PCSrc       = 2'b00;
                IorD        = 1'b0;
                PCWrite     = 1'b0;
                MemRead     = 1'b0;
                MemWrite    = 1'b0;
            
            end
            S_WB_I: begin
                IR          = 1'b0;
                MDR         = 1'b1;
                MemtoReg    = 1'b1;
                RegDst      = 1'b0;
                RegWrite    = 1'b1;
                RegA        = 1'b0;
                RegB        = 1'b0;
                AluSrcA     = 1'b0;
                AluSrcB     = 3'b100;
                ALUResult   = 1'b0;
                ALUop       = `_ALUOP_ADD;
                PCSrc       = 2'b00;
                IorD        = 1'b1;
                PCWrite     = 1'b0;
                MemRead     = 1'b0;
                MemWrite    = 1'b0;
            
            end
            S_WB_LW: begin
                IR          = 1'b0;
                MDR         = 1'b0;
                MemtoReg    = 1'b1;
                RegDst      = 1'b0;
                RegWrite    = 1'b1;
                RegA        = 1'b0;
                RegB        = 1'b0;
                AluSrcA     = 1'b0;
                AluSrcB     = 3'b100;
                ALUResult   = 1'b0;
                ALUop       = `_ALUOP_ADD;
                PCSrc       = 2'b00;
                IorD        = 1'b0;
                PCWrite     = 1'b1;
                MemRead     = 1'b0;
                MemWrite    = 1'b0;
            
            end
            default: begin
                IR          = 1'b0;
                MDR         = 1'b0;
                MemtoReg    = 1'b0;
                RegDst      = 1'b0;
                RegWrite    = 1'b0;
                RegA        = 1'b0;
                RegB        = 1'b0;
                AluSrcA     = 1'b0;
                AluSrcB     = 3'b000;
                ALUResult   = 1'b0;
                ALUop       = `_ALUOP_ADD;
                PCSrc       = 2'b00;
                IorD        = 1'b0;
                PCWrite     = 1'b0;
                MemRead     = 1'b0;
                MemWrite    = 1'b0;
                
            end
        endcase
    end
endmodule


