module shiftleft2_26(d_i, d_o);
    input [25:0] d_i;
    output [27:0] d_o;
    
    assign d_o = {2'b00, d_i} << 2;



endmodule


