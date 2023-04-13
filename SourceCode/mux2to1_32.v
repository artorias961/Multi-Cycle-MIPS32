module mux2to1_32(in0, in1, sel, out);
    input  [31:0] in0;
    input  [31:0] in1;
    input         sel;
    output [31:0] out;
    
    reg [31:0] out;

    // Use dataflow to implement 2-to-1 MUX
    
    //Finish this later, it has been done before
    //(one statement)
    always @ (*) begin
    
        out = (sel == 1'b0) ? in0  : in1;
    
    end

endmodule