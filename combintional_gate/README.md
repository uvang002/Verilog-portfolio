# Verilog Portfolio

This Verilog portfolio covers the fundamental of digital logic design concepts, simulation, synthesis, and FPGA development.

## Toolchain

This portfolio uses the following tools:

- Visual Studio Code 
- OSS CAD Suite
    - Icarus Verilog (iverilog)
    - VVP Simulator (vvp)
    - GTKWave
- GNU Make
- Git Bash (optional)

## Environment Setup

### Install VS Code

Recommended extensions:

- Verilog-HDL/SystemVerilog

### Install OSS CAD Suite

Download and extract OSS CAD Suite.

Verify the installation and location:

Open cmd and run:

```cmd
where yosys
where iverilog
where vvp
where gtkwave
```
Expected output:

```text
...\oss-cad-suite\bin\yosys.exe
...\oss-cad-suite\bin\iverilog.exe
...\oss-cad-suite\bin\vvp.exe
...\oss-cad-suite\bin\gtkwave.exe
```
Verify version

```cmd
yosys -V
iverilog -V
gtkwave --version
```

### Install Git (optional)

Verify installation:

```bash
git --version
```

## Project Structure

```text
project_name/
├── constraints/
├── src/
├── tb/
├── sim/
├── Makefile
└── README.md
```

### Directory Description

|   Directory   |              Purpose               |
|---------------|------------------------------------|
| src           | Verilog source code                |
| tb            | Testbenches                        |
| sim           | Generated simulation artifacts     |
| constraints   | FPGA pin constraints               |
| Makefile      | Build and simulation automation    |

### Standard Makefile

```make
TOP = project_name

SRC = src/$(TOP).v
TB  = tb/$(TOP)_tb.v

OUT = sim/sim.out
VCD = sim/wave.vcd

all: run

compile:
	iverilog -g2012 -o $(OUT) $(SRC) $(TB)

run: compile
	vvp $(OUT)

wave:
	gtkwave $(VCD)

clean:
	if exist sim del /Q sim\*
```

### Build Artifacts

The following generated files are excluded from version control:

.gitignore

```text
sim/
*.out
*.vvp
*.vcd
*.gtkw
*.vscode/
```

## Running Simulations

Compile and run:

Clean generated files:

```cmd
make clean
```

```cmd
make run
```

Open waveforms:

```cmd
make wave
```

## Simulation Workflow

```text
Verilog Source
      │
      ▼
   iverilog
      │
      ▼
    sim.out
      │
      ▼
      vvp
      │
      ▼
   wave.vcd
      │
      ▼
   GTKWave
```

*/## Learning Objectives

The projects in this portfolio demonstrate:

- Combinational Logic
- Multiplexers
- Decoders and Encoders
- Arithmetic Logic Units (ALUs)
- Sequential Logic
- Registers and Counters
- Finite State Machines (FSMs)
- FPGA Pin Constraints
- Simulation and Verification
- Digital Design Best Practices

/*