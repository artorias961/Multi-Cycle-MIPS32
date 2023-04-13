module RegisterFile(ReadReg1, ReadReg2, WriteReg, WriteData, ReadData1, ReadData2, RegWrite);

    input   [4:0]   ReadReg1;
    input   [4:0]   ReadReg2;
    input   [4:0]   WriteReg;
    input   [31:0]  WriteData;
    output  [31:0]  ReadData1;
    output  [31:0]  ReadData2;
    input           RegWrite;
    
    reg [31:0] registers [0:31]; //i thought we would write "mem" instead of "registers"
    
    initial begin
        registers[0] = 32'd00;
        registers[1] = 32'd11;
        registers[2] = 32'd22;
        registers[3] = 32'd33;
        registers[4] = 32'd44; //this stuff will help us in the simulation
        registers[5] = 32'd55;
        registers[6] = 32'd66;
        registers[7] = 32'd77;
        registers[8] = 32'd88;
        registers[9] = 32'd99;
        registers[10] = 32'd00;
        registers[11] = 32'd11;
        registers[12] = 32'd22;
        registers[13] = 32'd33;
        registers[14] = 32'd44;
        registers[15] = 32'd55;
        registers[16] = 32'd66;
        registers[17] = 32'd77;
        registers[18] = 32'd88;
        registers[19] = 32'd99;
        registers[20] = 32'd00;
        registers[21] = 32'd11;
        registers[22] = 32'd22;
        registers[23] = 32'd33;
        registers[24] = 32'd44;
        registers[25] = 32'd55;
        registers[26] = 32'd66;
        registers[27] = 32'd77;
        registers[28] = 32'd88;
        registers[29] = 32'd99;
        registers[30] = 32'd00;
        registers[31] = 32'd11;
        
        
    end
    
    assign ReadData1 = (ReadReg1 == 5'd0) ? 32'd0 : registers[ReadReg1];
    assign ReadData2 = (ReadReg2 == 5'd0) ? 32'd0 : registers[ReadReg2]; 
    
    //assign registers[WriteReg] = (RegWrite == 1'b1)? WriteData: registers[WriteReg]; //another problem here that we'll fix later
    always @ (*) begin
        if ((RegWrite == 1'b1) && (WriteReg != 5'd0)) begin
        registers[WriteReg] = WriteData;
        
        end
    
    end
    
    
    


endmodule