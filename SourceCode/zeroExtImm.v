module zeroExtImm(in, out);
	// The input of the module
	input 		[15:0] in;
	
	// The output of the module
	output 		[31:0] out;
	
	// Assigning the zero extended immediate 
	assign out = {{16{1'b0}}, in[15:0]};
	
endmodule