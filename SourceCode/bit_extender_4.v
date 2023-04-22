module bit_extender_4(di_28, pc, do_32);
    input [27:0] di_28;
    input [31:0] pc;
    
    output [31:0] do_32;
    
    assign do_32 = {pc[31:28], di_28};
    
    



endmodule

