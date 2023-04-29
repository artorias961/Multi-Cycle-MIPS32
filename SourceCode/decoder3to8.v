module decoder3to8(a2, a1, a0, e1, ne2, ne3, y0, y1, y2, y3, y4, y5, y6, y7);
    input   a2, a1, a0, e1, ne2, ne3;
    output  y0, y1, y2, y3, y4, y5, y6, y7;
    
    wire enable;
    
    assign enable = e1 & (~ne2) & (~ne3);
    
    reg     y0, y1, y2, y3, y4, y5, y6, y7;
    
    
    always @ (*) begin
        if (enable == 1'b1) begin
            if ({a2, a1, a0} == 3'b000) begin
                y0 = 1'b0;
                y1 = 1'b1;
                y2 = 1'b1;
                y3 = 1'b1;
                y4 = 1'b1;
                y5 = 1'b1;
                y6 = 1'b1;
                y7 = 1'b1;
            end 
            
            if ({a2, a1, a0} == 3'b001) begin
                y0 = 1'b1;
                y1 = 1'b0;
                y2 = 1'b1;
                y3 = 1'b1;
                y4 = 1'b1;
                y5 = 1'b1;
                y6 = 1'b1;
                y7 = 1'b1;
            end
            if ({a2, a1, a0} == 3'b010) begin
                y0 = 1'b1;
                y1 = 1'b1;
                y2 = 1'b0;
                y3 = 1'b1;
                y4 = 1'b1;
                y5 = 1'b1;
                y6 = 1'b1;
                y7 = 1'b1;
            end
            if ({a2, a1, a0} == 3'b011) begin
                y0 = 1'b1;
                y1 = 1'b1;
                y2 = 1'b1;
                y3 = 1'b0;
                y4 = 1'b1;
                y5 = 1'b1;
                y6 = 1'b1;
                y7 = 1'b1;
            end
            if ({a2, a1, a0} == 3'b100) begin
                y0 = 1'b1;
                y1 = 1'b1;
                y2 = 1'b1;
                y3 = 1'b1;
                y4 = 1'b0;
                y5 = 1'b1;
                y6 = 1'b1;
                y7 = 1'b1;
            end
            if ({a2, a1, a0} == 3'b101) begin
                y0 = 1'b1;
                y1 = 1'b1;
                y2 = 1'b1;
                y3 = 1'b1;
                y4 = 1'b1;
                y5 = 1'b0;
                y6 = 1'b1;
                y7 = 1'b1;
            end
            if ({a2, a1, a0} == 3'b110) begin
                y0 = 1'b1;
                y1 = 1'b1;
                y2 = 1'b1;
                y3 = 1'b1;
                y4 = 1'b1;
                y5 = 1'b1;
                y6 = 1'b0;
                y7 = 1'b1;
            end
            if ({a2, a1, a0} == 3'b111) begin
                y0 = 1'b1;
                y1 = 1'b1;
                y2 = 1'b1;
                y3 = 1'b1;
                y4 = 1'b1;
                y5 = 1'b1;
                y6 = 1'b1;
                y7 = 1'b0;
            end
        end
    end

endmodule


