// Importing a file
`include "MyDefines.v"

module outputControl(op, 
							zero, // Very sure of this, from the AluResult
							PCWriteCond,
							PCWrite,
							IorD,
							MemRead,
							MemWrite,
							MemtoReg,
							IRWrite,
							PCSource,
							ALUop,
							AluSrcA,
							AluSrcB,
							RegWrite,
							RegDst);

	// Input of the module
	input 		[5:0] 	op;
	input 					zero;
	
	
	// Output of the module
	output 					PCWriteCond; // Need to verify how many bits
	output 		   		PCWrite; 	 // Pretty sure it is one bit, 0 and 1
	output		    		IorD;			 // Pretty sure it is one bit, 0 and 1
	output					MemRead;		 // Pretty sure it is one bit
	output					MemWrite;	 
	output		    		MemtoReg;
	output 					IRWrite;		// Unsure about bits
	output		[1:0]		PCSource;	// Pretty sure 2 bits
	output		[1:0]		ALUop;		// Pretty sure 2 bits
	output					AluSrcA;		// Pretty sure 1 bit
	output 		[2:0]		AluSrcB;		//	Pretty sure 3 bits but finite state is two bits?????
	output 					RegWrite;	// Pretty sure 1 bit
	output					RegDst;		// Pretty sure 1 bit
	
	// Creating the registers for the input/output since they are considered wires
	//reg			[5:0] 	op;
	//reg						zero;

    
	reg		   			PCWriteCond;
	reg		      		PCWrite; 	
	reg		       		IorD;			
	reg		   			MemRead;		
	reg		   			MemWrite;	
	reg		       		MemtoReg;
	reg		   			IRWrite;		
	reg		   [1:0]		PCSource;	
	reg		   [3:0]		ALUop;	// May conflict with MyDefines bits (they are different)	change from [1:0] to [3:0]
	reg		   			AluSrcA;		
	reg		   [2:0]		AluSrcB;		
	reg		   			RegWrite;	
	reg		   			RegDst;	
	
	
	// Creating a behavior model
	always @ (*) begin
		// Creating case condition to determine the finite state machine control of the mips
		case(op)
			// Instruction Fetch Cycle
			6'd0: begin
				MemRead  		= 1'b1;
				AluSrcA  		= 1'b0;
				IorD 	   		= 1'b0;
				IRWrite  		= 1'b1;	
				AluSrcB  		= 3'b001;
				ALUop    		= `_ALUOP_ADD; // 2'b00; // NEED TO UPDATE TO MyDefines ALOUP FUNCTIONS (I think this is ADD)
				PCWrite  		= 1'b1;
				PCSource 		= 2'b00;
            end
			
			// Instruction Decode/Register Fetch Cycle
			6'd1: begin
				AluSrcA 		= 1'b0;
				AluSrcB 		= 3'b011;
				ALUop	  		= `_ALUOP_ADD; // 2'b00;	// NEED TO UPDATE
            end
			
			// Execution Cycle (OP = R Type)
			6'd2: begin
				AluSrcA 		= 1'b1;
				AluSrcB 		= 3'b000;
				ALUop	  		= `_ALUOP_ADD;
            end
			
			// Write Back Cycle (OP = R Type)
			6'd3: begin
				RegDst 			= 1'b1;
				RegWrite 		= 1'b1;
				MemtoReg 		= 1'b1;
            end
				
			// Branch Completion Cycle (OP = BEQ)
			6'd4: begin
				AluSrcA 		= 1'b1;
				AluSrcB 		= 3'b000;
				ALUop	  		= `_ALUOP_SUB;
				PCWriteCond 	= 1'b1;
				PCSource 		= 2'b01;
            end
				
			// Effective Address Computation Cycle (OP = LW/SW)
			6'd5:  begin
				AluSrcA 		= 1'b1;
				AluSrcB			= 3'b010;
				ALUop			= `_ALUOP_ADD;
            end
				
			// Memory Write Cycle (OP = SW)
			6'd6: begin
				MemWrite 		= 1'b1;
				IorD			= 1'b1;
            end
				
			// Memory Read Cycle (OP = LW)
			6'd7: begin
				MemRead 		= 1'b1;
				IorD			= 1'b1;
            end
				
			// Register Write Cycle (OP = LW)
			6'd8: begin
				RegDst 			= 1'b0;
				RegWrite		= 1'b1;
				MemtoReg		= 1'b1;
            end
                
			// Jump Completion Cycle (OP = J)
			6'd9: begin
				PCWrite			= 1'b1;
				PCSource		= 2'b01;
			end
                
			// The default Cycle 
			default: begin
				PCWriteCond		= 1'b0;
				PCWrite			= 1'b0; 
				IorD			= 1'b0;		
				MemRead			= 1'b0;	
				MemWrite		= 1'b0;
				MemtoReg		= 1'b0;
				IRWrite			= 1'b0;	
				PCSource		= 2'b00;
				ALUop			= 4'b0000;	
				AluSrcA			= 1'b0;	
				AluSrcB			= 3'b000;	
				RegWrite		= 1'b0;
			   RegDst			= 1'b0;	
			end
		endcase
	end
endmodule	
	
	