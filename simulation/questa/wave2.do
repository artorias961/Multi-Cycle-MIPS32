onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /sram_tb/clk
add wave -noupdate /sram_tb/nce
add wave -noupdate /sram_tb/re
add wave -noupdate /sram_tb/we
add wave -noupdate /sram_tb/addr
add wave -noupdate /sram_tb/wdata
add wave -noupdate /sram_tb/data
add wave -noupdate -radix unsigned /sram_tb/i
add wave -noupdate -divider SRAM
add wave -noupdate /sram_tb/DUT/mem
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
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
WaveRestoreZoom {0 ps} {128 ns}
