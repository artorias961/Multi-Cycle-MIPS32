module shiftRight2(in, out);
	 // The input of the module
    input  [31:0] in;
	 
	 // The output of the module
    output [31:0] out;
    
	 // Grab the input and shift the bits to the right for (SRL)
    assign out = in >> 2;
	 
endmodule