//keep this for future reference, no how to use regular RAM

module old_sram(clk, nce, re, we, addr, data);
    input clk, nce, re, we;
    input [10:0] addr;
    inout [7:0] data;
    
    reg [7:0] mem [0:2047];
    
    wire [7:0] m_out;
    //wire       ce; for gatelevel modeling
    wire       data_read;
    tri [7:0]  data;
    
    /*
    //gatelevel modeling solution
    
    bufif1  U0(data[0], m_data[0], data_read);
    bufif1  U1(data[1], m_data[1], data_read);
    bufif1  U2(data[2], m_data[2], data_read);
    bufif1  U3(data[3], m_data[3], data_read);
    bufif1  U4(data[4], m_data[4], data_read);
    bufif1  U5(data[5], m_data[5], data_read);
    bufif1  U6(data[6], m_data[6], data_read);
    bufif1  U7(data[7], m_data[7], data_read);
    
    not     U8(ce, nce);
    and     U9(data_read, re, ce);
    */
    
    
    // Dataflow modeling for data read
    
    //assign data_read = ((nce == 1'b0) && (re == 1'b1)) ? 1'b1 : 1'b0;
    assign data_read = re & (~nce);
    assign data = (data_read == 1'b0) ? 8'bz : m_out;
    
    /*
    // Behavioral modeling for data read
    always @ (*) begin // read enable
        if ((nce == 1'b0) && (re == 1'b1)) begin
            data = m_out;
        end else begin
            data = 8'bz;
        end 
    end
    
    Behavioral modeling SUCKS for this, cause data needs to be declared as a register, 0 or 1
    */
    assign m_out = mem[addr];
    
    always @ (posedge clk) begin
        //if ((nce == 1'b0) && (re == 1'b1)) begin
            //m_out <= mem[addr]; //this causes an error, where data is loaded too fast
            // lets make this into an assign 
            
        //end else 
        if ((nce == 1'b0) && (we == 1'b1)) begin
            mem[addr] <= data;
        end
    
    end
    

endmodule