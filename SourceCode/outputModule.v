module outputModule(clk, nce, we, d_in, pins); //output module only needs to write
    input           clk, nce, we;
    //input  [8:0]    addr; 
    input  [31:0]   d_in;
    output [ 9:0]   pins;
    
    reg    [ 9:0]   pins;
    
    
    
    //on falling edge write the data to the pins
    always @ (negedge clk) begin
        if ((nce == 1'b0) && (we == 1'b1)) begin
            pins <= d_in;
        end else begin
            pins <= 10'd0;
        end
        
    end
    
    
    
endmodule



