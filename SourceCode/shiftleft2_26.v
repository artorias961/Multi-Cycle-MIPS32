module shiftleft2_26(di, do);
    input [25:0] di;
    output [27:0] do;
    
    assign do = {2'b00, di} << 2;



endmodule


