onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /MCycMIPS32_tb/clk
add wave -noupdate /MCycMIPS32_tb/nrst
add wave -noupdate -divider ID
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M3/instr
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M3/op
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M3/rs
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M3/rt
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M3/rd
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M3/shamt
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M3/imm16
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M3/address
add wave -noupdate -divider ALU
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M16/ALUop
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M16/A
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M16/B
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M16/ALUResult
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M16/zero
add wave -noupdate -divider PC
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M19/newPc
add wave -noupdate -radix hexadecimal /MCycMIPS32_tb/DUT/M1/M19/pc
add wave -noupdate -divider REGISTER
add wave -noupdate -radix decimal -childformat {{{/MCycMIPS32_tb/DUT/M1/M6/registers[0]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[1]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[2]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[3]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[4]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[5]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[6]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[7]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[8]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[9]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[10]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[11]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[12]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[13]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[14]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[15]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[16]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[17]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[18]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[19]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[20]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[21]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[22]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[23]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[24]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[25]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[26]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[27]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[28]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[29]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[30]} -radix decimal} {{/MCycMIPS32_tb/DUT/M1/M6/registers[31]} -radix decimal}} -expand -subitemconfig {{/MCycMIPS32_tb/DUT/M1/M6/registers[0]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[1]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[2]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[3]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[4]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[5]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[6]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[7]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[8]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[9]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[10]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[11]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[12]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[13]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[14]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[15]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[16]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[17]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[18]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[19]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[20]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[21]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[22]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[23]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[24]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[25]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[26]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[27]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[28]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[29]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[30]} {-height 15 -radix decimal} {/MCycMIPS32_tb/DUT/M1/M6/registers[31]} {-height 15 -radix decimal}} /MCycMIPS32_tb/DUT/M1/M6/registers
add wave -noupdate -divider ROM
add wave -noupdate /MCycMIPS32_tb/DUT/M2/d_out
add wave -noupdate /MCycMIPS32_tb/DUT/M2/mem
add wave -noupdate -divider SRAM
add wave -noupdate /MCycMIPS32_tb/DUT/M3/addr
add wave -noupdate /MCycMIPS32_tb/DUT/M3/mem
add wave -noupdate -divider OUTPUTMODULE
add wave -noupdate /MCycMIPS32_tb/DUT/M4/d_in
add wave -noupdate -radix binary /MCycMIPS32_tb/DUT/M4/pins
add wave -noupdate -divider DECODER
add wave -noupdate /MCycMIPS32_tb/DUT/M5/a2
add wave -noupdate /MCycMIPS32_tb/DUT/M5/a1
add wave -noupdate /MCycMIPS32_tb/DUT/M5/a0
add wave -noupdate /MCycMIPS32_tb/DUT/M5/y0
add wave -noupdate /MCycMIPS32_tb/DUT/M5/y1
add wave -noupdate /MCycMIPS32_tb/DUT/M5/y2
add wave -noupdate -divider {DEBUG - SFTLFT26}
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M13/d_i
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M13/d_o
add wave -noupdate -divider {DEBUG - MIPS}
add wave -noupdate /MCycMIPS32_tb/DUT/M1/address
add wave -noupdate /MCycMIPS32_tb/DUT/M1/data_out
add wave -noupdate -divider {DEBUG - Reg32 IR}
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M1/en
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M1/d_in
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M1/d_out
add wave -noupdate -divider {DEBUG - Control}
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M21/currState
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M21/nextState
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M21/IR
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M21/MDR
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M21/MemtoReg
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M21/RegDst
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M21/RegWrite
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M21/RegA
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M21/RegB
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M21/AluSrcA
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M21/ALUResult
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M21/IorD
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M21/PCWrite
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M21/MemRead
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M21/MemWrite
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M21/ALUop
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M21/AluSrcB
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M21/PCSrc
add wave -noupdate -divider {DEBUG - Mux PCSrc}
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M18/sel
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M18/out
add wave -noupdate -divider {DEBUG - Mux AluSrcB}
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M12/sel
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M12/out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {59401092 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {59309703 ps} {59473 ns}
