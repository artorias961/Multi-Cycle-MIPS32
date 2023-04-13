module PC(clk, nrst, ce, newPc, pc); //removed PCUpdate, changed to ce
    input          clk, nrst;
    input  [31:0]  newPc;
    output [31:0]  pc;
    output         ce; //ce - chip enable
    
    
    reg [31:0] pc;
    reg        ce;
    
    always @ (posedge clk) begin
        if (ce == 1'b0) begin//active high
            pc <= 32'd0;
        end else begin
            pc <= newPc;
        end
    end
    
    //need another always for the reset signal
    always @ (posedge clk) begin
        if (nrst == 1'b0) begin
            ce <= 1'b0;
        end else begin  
            ce <= 1'b1;
        end
    
    end
    
    
    
    /* removing all this code to make the system a single cycle
    always @ (*) begin // all this code is combination, so we use blocking assignment
        if (nrst == 1'b0) begin //if reset active, set pc value to 0
            pc = 32'd0;
        end else begin
            if (PCUpdate == 1'b1) begin
                pc = newPc;
            end else begin
                pc = pc;
            end
        
        end
    
    
    end
    
    */


endmodule