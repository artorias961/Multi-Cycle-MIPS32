module ram(clk, nce, re, we, addr, d_in, d_out); //re - read enable, we - write enable
    input           clk, nce, re, we;
    input  [8:0]    addr; 
    input  [31:0]   d_in;
    inout  [31:0]   d_out;
    
    tri [31:0]      d_out;
    
    reg [31:0] mem [0:511];
    
    //on falling edge of clk I'm going to check this statement
    always @ (negedge clk) begin 
        if ((nce == 1'b0) && (we == 1'b1)) begin
            mem[addr] <= d_in;
        end else begin
            //verify the current moment of value
            mem[addr] <= mem[addr];
        end
    end
    
    assign d_out = ((nce == 1'b0) && (re == 1'b1)) ? mem[addr] : 32'hz;
    
    
    
endmodule


