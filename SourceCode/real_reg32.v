module real_reg32(clk, nrst, en, d_in, d_out);
    input clk, nrst, en;
    input [31:0] d_in;
    output [31:0] d_out;
    
    reg [31:0] d_out;
    
    //on falling edge, we write the data to the output
    always @ (negedge clk or negedge nrst) begin
        if (nrst == 1'b0) begin
            d_out <= 32'd0;
            
            //look up how to implement i/o module to save the data to the register
        end else begin
            if (en == 1'b1) begin
                d_out <= d_in;
            end else begin
                d_out <= d_out;
            end
        end
    
    end

endmodule




