`include "MyDefines.v"

module rom(nrst, nce, re, addr, d_out); //re - read enable
    input           nrst, nce, re;
  //input  [10:2]   addr; this is an error
    input  [8:0]    addr; //lower two bits we don't need to connect
    inout  [31:0]   d_out;
    
    //make d_out a tristate wire
    tri [31:0]      d_out;
    
    reg [31:0] mem[0:511]; //FAT memory
    
    assign d_out = ((nce == 1'b0) && (re == 1'b1))? mem[addr] : 32'bz;
    
    always @ (*) begin
        if (nrst == 1'b0) begin
            mem[9'd0 ] = {`_OP_ADDI,    `_R0, `_R1, 16'd8}; // addi R1, R0, 08;
            mem[9'h04] = {`_OP_RTYPE,   `_R0, `_R1, `_R1, 5'd8, `_FUNC_SLL}; //5'd16
            mem[9'h08] = {`_OP_ADDI,    `_R0, `_R5, 16'd1};
            mem[9'h0C] = {`_OP_SW,      `_R1, `_R5, 16'd0};
            mem[9'h10] = {`_OP_ADDI,    `_R0, `_R2, 16'h10};
            mem[9'h14] = {`_OP_RTYPE,   `_R0, `_R2, `_R2, 5'd8, `_FUNC_SLL}; //5'd16
            mem[9'h18] = {`_OP_SW,      `_R0, `_R2, 16'd12};
            mem[9'h1C] = {`_OP_SW,      `_R1, `_R0, 16'd4};
            mem[9'h20] = {`_OP_LW,      `_R1, `_R5, 16'd4};
            mem[9'h24] = {`_OP_ADDI,    `_R0, `_R6, 16'd10};
            mem[9'h28] = {`_OP_RTYPE,   `_R5, `_R6, `_R6, 5'd0, `_FUNC_SLT};
            //this instruction is for beq r6, r0, DONE1
            mem[9'h2C] = {`_OP_BEQ,     `_R0, `_R6, 16'd8};
            mem[9'h30] = {`_OP_LW,      `_R1, `_R6, 16'd0};
            mem[9'h34] = {`_OP_LW,      `_R1, `_R7, 16'd12};
            mem[9'h38] = {`_OP_SW,      `_R7, `_R6, 16'd0};
            mem[9'h3C] = {`_OP_RTYPE,   `_R0, `_R6, `_R6, 5'd1, `_FUNC_SLL};
            mem[9'h40] = {`_OP_SW,      `_R7, `_R6, 16'd0};
            //this instruction is for j  LOOP1
            mem[9'h44] = {`_OP_ADDI,    `_R5, `_R5, 16'd1};
            mem[9'h48] = {`_OP_SW,      `_R1, `_R5, 16'd4};
            mem[9'h4C] = {`_OP_J, 26'h08};
            mem[9'h50] = {`_OP_ADDI,    `_R0, `_R5, 16'd10};
            mem[9'h54] = {`_OP_SW,      `_R1, `_R5, 16'd4};
            mem[9'h58] = {`_OP_LW,      `_R1, `_R6, 16'd4};
            mem[9'h5C] = {`_OP_RTYPE,   `_R0, `_R5, `_R6, 5'd0, `_FUNC_SLT};
            mem[9'h60] = {`_OP_BEQ,     `_R0, `_R6, 16'd8};
            mem[9'h64] = {`_OP_LW,      `_R1, `_R6, 16'd0};
            mem[9'h68] = {`_OP_RTYPE,   `_R0, `_R6, `_R6, 5'd1, `_FUNC_SRL};
            mem[9'h6C] = {`_OP_SW,      `_R1, `_R6, 16'd0};
            mem[9'h70] = {`_OP_LW,      `_R1, `_R7, 16'd12};
            mem[9'h74] = {`_OP_SW,      `_R7, `_R6, 16'd0};
            mem[9'h78] = {`_OP_ADDI,    `_R5, `_R5, -16'd1};
            mem[9'h7C] = {`_OP_SW,      `_R1, `_R5, 16'd4};
            mem[9'h80] = {`_OP_J, 26'h16};
            mem[9'h84] = {`_OP_SW,      `_R1, `_R0, 16'd4};
            mem[9'h88] = {`_OP_LW,      `_R1, `_R5, 16'd4};
            mem[9'h8C] = {`_OP_ADDI,    `_R0, `_R6, 16'd6000};
            mem[9'h90] = {`_OP_RTYPE,   `_R5, `_R6, `_R6, 5'd0, `_FUNC_SLT};
            mem[9'h94] = {`_OP_BEQ,     `_R0, `_R6, 16'd11};
            mem[9'h98] = {`_OP_SW,      `_R1, `_R0, 16'd8};
            mem[9'h9C] = {`_OP_LW,      `_R1, `_R8, 16'd8};
            mem[9'hA0] = {`_OP_ADDI,    `_R0, `_R6, 16'd10};
            mem[9'hA4] = {`_OP_RTYPE,   `_R8, `_R6, `_R6, 5'd0, `_FUNC_SLT};
            mem[9'hA8] = {`_OP_BEQ,     `_R0, `_R6, 16'd3};
            mem[9'hAC] = {`_OP_ADDI,    `_R8, `_R8, 16'd1};
            mem[9'hB0] = {`_OP_SW,      `_R1, `_R8, 16'd8};
            mem[9'hB4] = {`_OP_J, 26'h27};
            mem[9'hB8] = {`_OP_ADDI,    `_R5, `_R5, 16'd1};
            mem[9'hBC] = {`_OP_SW,      `_R1, `_R5, 16'd4};
            mem[9'hC0] = {`_OP_J, 26'h22};
            mem[9'hC4] = {`_OP_J, 26'h07};
            
            
        
        
        
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

