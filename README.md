# Multi-Cycle MIPS32 Processor (Verilog / Quartus)

## Overview
This repository contains a **complete implementation of a multi-cycle MIPS32 processor** written in **Verilog**, designed for **FPGA synthesis using Intel Quartus** and verified through **Questa/ModelSim simulation**.

The project follows the **classic multi-cycle datapath architecture** described in standard computer architecture texts (e.g., Patterson & Hennessy). It is intended as an **educational yet fully functional CPU design**, demonstrating control FSM design, datapath sequencing, and instruction execution over multiple cycles.

<img width="988" height="544" alt="image" src="https://github.com/user-attachments/assets/3ca330ab-326f-4809-b141-05c4197a594d" />


## Key Features
- Full **multi-cycle MIPS32 datapath**
- **FSM-based control unit**
- Instruction fetch, decode, execute, memory, write-back stages
- Arithmetic, logical, load/store, branch, and jump operations
- 32 × 32-bit register file
- ALU with control logic
- Instruction ROM and data RAM
- FPGA-ready **Quartus project**
- Testbench and **Questa simulation flow**
- Accompanying architecture and project documentation



## Architecture Summary
Unlike pipelined processors, this CPU:
- Executes **one instruction over multiple clock cycles**
- Reuses hardware resources (ALU, memory, registers)
- Uses a **finite state machine (FSM)** to control execution flow
- Prioritizes clarity and correctness over throughput

### Core Blocks
- Program Counter (PC)
- Instruction Memory (ROM)
- Data Memory (RAM)
- Register File
- Arithmetic Logic Unit (ALU)
- Sign/Zero Extension Units
- Shift Units
- Control FSM



## Repository Structure

Multi-Cycle-MIPS32/
│
├── SourceCode/                # Verilog CPU implementation
│   ├── MIPS32.v               # Main CPU (datapath + FSM control)
│   ├── MCycMIPS32_top.v       # FPGA top-level module
│   ├── ALU.v                  # Arithmetic Logic Unit
│   ├── PC.v                   # Program Counter
│   ├── RegisterFile.v         # 32x32 register file
│   ├── ram.v / rom.v          # Data & instruction memory
│   ├── signext.v              # Sign extension
│   ├── zeroExtImm.v           # Zero extension
│   ├── shift*.v               # Shift logic
│   └── MyDefines.v            # Opcode and control definitions
│
├── TestBench/
│   └── MCycMIPS32_tb.v        # Simulation testbench
│
├── simulation/questa/         # Questa/ModelSim simulation artifacts
│
├── Notes/                     # Documentation & references
│   ├── 21_Architecture_MultiCycle.pdf
│   ├── Project_MultiCycleMIPS32.pdf
│   └── MIPS CHEAT SHEET.pdf
│
├── db/                        # Quartus generated files
├── incremental_db/            # Quartus incremental build data
├── output_files/              # Synthesis outputs
│
├── MCycMIPS32.qpf             # Quartus project file
├── MCycMIPS32_top.qsf         # Quartus settings & pin assignments
└── README.md

---

## Simulation
- Testbench provided for functional verification
- Designed to run in **Questa/ModelSim**
- Quartus NativeLink simulation supported



## FPGA Synthesis
- Project configured for **Intel Quartus**
- Includes all required project files (.qpf, .qsf)
- Suitable for educational FPGA boards



## Educational Context
This project was developed as part of a **computer architecture course**, focusing on:
- Multi-cycle CPU design
- Control FSM modeling
- Datapath reuse and sequencing
- Hardware description in Verilog

It closely mirrors the **canonical multi-cycle MIPS design** taught in university curricula.



## Limitations
- Not pipelined
- Not superscalar
- Not out-of-order
- Performance optimizations intentionally omitted

The design prioritizes **clarity, correctness, and architectural understanding**.



## Possible Extensions
- Add a **pipelined datapath**
- Implement **hazard detection**
- Expand instruction set
- Integrate caches
- Port to a different ISA (e.g., RISC-V)



## Author
**Christopher Morales**
**Daniel Del Rio**

