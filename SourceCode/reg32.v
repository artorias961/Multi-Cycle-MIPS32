module reg32(di, ctrl, do);
    input [31:0] di;
    input        ctrl;
    
    output [31:0] do;
    
    reg [31:0] do;
    
    always @ (*) begin
        if (ctrl == 1'b1) begin
            do = di;
        
        end 
    end
endmodule


