module MCycMIPS32_top(clk, nrst, MAX10_CLK1_50, KEY, SW, LEDR, 
                      HEX0, HEX1, HEX2, HEX3, HEX4, HEX5);
                      
    input clk, nrst;
                      
    input MAX10_CLK1_50;
    input  [1:0] KEY; //two keys, so two bits
    input  [9:0] SW;
    output [9:0] LEDR;
    output [7:0] HEX0;
    output [7:0] HEX1;
    output [7:0] HEX2;
    output [7:0] HEX3;
    output [7:0] HEX4;
    output [7:0] HEX5;
    
    wire MemWrite, MemRead;
    wire nce_rom, nce_ram, nce_outputModule;
    
    wire [31:0] addr;
    wire [31:0] dataOut;
    wire [31:0] dataIn;
    
    
    
    MIPS32          M1(.clk(clk), .nrst(nrst), .MemWrite(MemWrite), .MemRead(MemRead), .data_in(dataIn), .address(addr), .data_out(dataOut));
    
    rom             M2(.nrst(nrst), .nce(nce_rom), .re(MemRead), .addr(addr[10:2]), .d_out(dataIn));
    
    ram             M3(.clk(clk), .nce(nce_ram), .re(MemRead), .we(MemWrite), .addr(addr[10:2]), .d_in(dataOut), .d_out(dataIn));
    
    outputModule    M4(.clk(clk), .nce(nce_outputModule), .we(MemWrite), .d_in(dataOut), .pins(LEDR));
    
    decoder3to8     M5(.a2(addr[13]), .a1(addr[12]), .a0(addr[11]), .e1(1'b1), .ne2(1'b0), .ne3(1'b0), .y0(nce_rom), .y1(nce_ram), .y2(nce_outputModule), .y3(), .y4(), .y5(), .y6(), .y7());
    


endmodule


