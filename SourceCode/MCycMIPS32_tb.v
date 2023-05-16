`timescale 1ns/100ps

module MCycMIPS32_tb();
    reg clk, nrst;
    
    MCycMIPS32_top   DUT(.clk(clk), .nrst(nrst));
    
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    
    
    end
    
    initial begin
            nrst = 1'b0;
        #10 nrst = 1'b1;
        
        #600000 
        #600000  
        #600000 $stop;
    end



endmodule




