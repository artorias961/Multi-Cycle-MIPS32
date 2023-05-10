module mux8to1_32(in0, in1, in2, in3, in4, in5, in6, in7, sel, out);
	// The input of the module
	input 	[31:0]	in0;
	input 	[31:0]	in1;
	input 	[31:0]	in2;
	input 	[31:0]	in3;
	input 	[31:0]	in4;
	input 	[31:0]	in5;
	input 	[31:0]	in6;
	input 	[31:0]	in7;
	input  	[2:0] 	sel;
	
	// The output of the module
	output 	[31:0]	out;
	
	// Creating a register for the out since it does not carry information
	//reg 		[31:0]	out;
	
	assign out = (sel == 3'b000) ? in0 :
                 (sel == 3'b001) ? in1 :
                 (sel == 3'b010) ? in2 :
                 (sel == 3'b011) ? in3 :
                 (sel == 3'b100) ? in4 :
                 (sel == 3'b101) ? in5 :
                 (sel == 3'b110) ? in6 : in7;
                 
    
    /*
	always @ (*) begin
		// Creating the case condition
		case(sel) 
			// First input (rs)
			3'b000:
				out = in0;
			
			// Second input (shift amountsion)
			3'b001:
				out = in1;
				
			// Third input (sign extension)
			3'b010:
				out = in2;
		
			// Fourth input (sign extension + shift left 2)
			3'b011:
				out = in3;
			
			// Fifth input (+ 4)
			3'b100:
				out = 3'd4;
			
			// Sixth input (zero extension)
			3'b101:
				out = in5;
		
		endcase
	end
    */
	
	

endmodule