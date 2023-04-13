module shiftLeft2(in, out);
    input  [31:0] in;
    output [31:0] out;
    
    //reg [31:0] out;
    
    assign out = in << 2;
    
    // Using Dataflow to implement shift left by 2 bits  ( << 2)
    // grab input, shift it by 2 bits, assign new value to the output
    // change data type into registers
    // one statement

endmodule