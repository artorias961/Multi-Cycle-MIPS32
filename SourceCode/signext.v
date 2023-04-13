module signext(imm16, imm32);
    input  [15:0] imm16;
    output [31:0] imm32;
    
    //reg [31:0] imm32;
    
    // use conditional statement to do this in one line
    //imm32 = {16'd0, imm16};
    assign imm32 = {{16{imm16[15]}}, imm16};


endmodule