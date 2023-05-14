transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode {C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode/decoder3to8.v}
vlog -vlog01compat -work work +incdir+C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode {C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode/MyDefines.v}
vlog -vlog01compat -work work +incdir+C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode {C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode/signext.v}
vlog -vlog01compat -work work +incdir+C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode {C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode/shiftLeft2.v}
vlog -vlog01compat -work work +incdir+C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode {C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode/RegisterFile.v}
vlog -vlog01compat -work work +incdir+C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode {C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode/PC.v}
vlog -vlog01compat -work work +incdir+C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode {C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode/mux2to1_32.v}
vlog -vlog01compat -work work +incdir+C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode {C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode/ID.v}
vlog -vlog01compat -work work +incdir+C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode {C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode/MCycMIPS32_top.v}
vlog -vlog01compat -work work +incdir+C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode {C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode/zeroExtImm.v}
vlog -vlog01compat -work work +incdir+C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode {C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode/mux8to1_32.v}
vlog -vlog01compat -work work +incdir+C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode {C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode/bit_extender_4.v}
vlog -vlog01compat -work work +incdir+C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode {C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode/shiftleft2_26.v}
vlog -vlog01compat -work work +incdir+C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode {C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode/outputModule.v}
vlog -vlog01compat -work work +incdir+C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode {C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode/real_reg32.v}
vlog -vlog01compat -work work +incdir+C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode {C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode/MIPS32.v}
vlog -vlog01compat -work work +incdir+C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode {C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode/sram.v}
vlog -vlog01compat -work work +incdir+C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode {C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode/ALU.v}
vlog -vlog01compat -work work +incdir+C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode {C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode/control.v}
vlog -vlog01compat -work work +incdir+C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode {C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode/rom.v}

vlog -vlog01compat -work work +incdir+C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode {C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/SourceCode/MCycMIPS32_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  MCycMIPS32_tb

do C:/Users/scodm/Desktop/School/Spring_2023/4480/Project_Git/Multi-Cycle-MIPS32/simulation/questa/wave.do
