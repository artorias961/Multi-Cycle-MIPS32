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
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M3/imm16
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M3/address
add wave -noupdate -divider ALU
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M16/ALUop
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M16/A
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M16/B
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M16/ALUResult
add wave -noupdate -divider PC
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M19/newPc
add wave -noupdate /MCycMIPS32_tb/DUT/M1/M19/pc
add wave -noupdate -divider ROM
add wave -noupdate /MCycMIPS32_tb/DUT/M2/d_out
add wave -noupdate /MCycMIPS32_tb/DUT/M2/mem
add wave -noupdate -divider RAM
add wave -noupdate /MCycMIPS32_tb/DUT/M3/addr
add wave -noupdate /MCycMIPS32_tb/DUT/M3/d_in
add wave -noupdate /MCycMIPS32_tb/DUT/M3/d_out
add wave -noupdate -divider OUTPUTMODULE
add wave -noupdate /MCycMIPS32_tb/DUT/M4/d_in
add wave -noupdate /MCycMIPS32_tb/DUT/M4/pins
add wave -noupdate -divider DECODER
add wave -noupdate /MCycMIPS32_tb/DUT/M5/a2
add wave -noupdate /MCycMIPS32_tb/DUT/M5/a1
add wave -noupdate /MCycMIPS32_tb/DUT/M5/a0
add wave -noupdate /MCycMIPS32_tb/DUT/M5/y0
add wave -noupdate /MCycMIPS32_tb/DUT/M5/y1
add wave -noupdate /MCycMIPS32_tb/DUT/M5/y2
add wave -noupdate -divider {DEBUG - MIPS}
add wave -noupdate /MCycMIPS32_tb/DUT/M1/address
add wave -noupdate /MCycMIPS32_tb/DUT/M1/data_out
add wave -noupdate -divider {DEBUG - Reg32 1}
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
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {18275 ps} 0}
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
WaveRestoreZoom {0 ps} {325504 ps}
