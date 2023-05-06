`timescale 1ns/1ps

module sram_tb();

    reg     clk, nce, re, we;
    reg [10:0] addr;
    reg [7:0]  wdata;
    tri [7:0] data;
    
    assign data = (we == 1'b1)? wdata : 8'bz;

    sram    DUT(.clk(clk), .nce(nce), .re(re), .we(we), .addr(addr), .data(data));
    
    initial begin 
                clk = 1'b0;
        forever # 5  clk = ~clk;
    end
    
    integer i;
    
    initial begin
            nce = 1'b1; we = 1'b0; re = 1'b0;
        #10 
        //making a for loop to handle what is stored in mem
        //"here we are going to write the data"
        
        //This for loop is to Write to SRAM
        for (i = 0; i < 2048; i = i + 1) begin
            #10 //at every falling edge
            nce = 1'b0; we = 1'b1; 
            addr = i; //address is i
            wdata = i; //grab info from addre i, to the Reg pretty much
            
        end
        
        //This for loop is to read from SRAM
        //#10
        we = 1'b0;
        #10
        for(i = 0; i < 2048; i = i + 1) begin
            
            nce = 1'b0; re = 1'b1; 
            addr = i;
            #7
            if (data != i[7:0]) begin
                $display("SRAM Error at address %d. \n", addr);
                $stop;
            end
            #3;
        end
        
        #20 $display("SRAM no error. \n");
            $stop;
    end

endmodule