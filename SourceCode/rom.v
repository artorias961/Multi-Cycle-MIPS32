`include "MyDefines.v"


module rom(nrst, nce, re, addr, d_out); //re - read enable
    input           nrst, nce, re;
  //input  [10:2]   addr; this is an error
    input  [8:0]    addr; //lower two bits we don't need to connect
    output [31:0]   d_out;
    
    //make d_out a tristate wire
    tri [31:0]      d_out;
    
    reg [31:0] mem[0:511]; //FAT memory
    
    assign d_out = ((nce == 1'b0) && (re == 1'b1))? mem[addr] : 32'bz;
    
    always @ (*) begin
        if (nrst == 1'b0) begin
            mem[9'd0] = {`_OP_ADDI, `_R0, `_R1, 16'd8}; // addi R1, R0, 08;
            
            //this instruction is for beq r6, r0, DONE1
            mem[9'h2C] = {`_OP_BEQ, `_R6, `_R1, 16'd7};
            
            //this instruction is for j  LOOP1
            mem[9'h44] = {`_OP_J, 26'h08};
        
        
        
        /* this isn't needed anymore because it won't work the way we wanted it to work
        end else begin
            if ((nce == 1'b0) && (re == 1'b1)) begin
                d_out = mem[addr];
            end else begin
                d_out = 32'bz;
            end
        */
        end
    
    
    end





endmodule

